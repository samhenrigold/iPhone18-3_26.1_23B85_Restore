id AllTrendsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA380478()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore));

  return result;
}

id AllTrendsViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AllTrendsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA3805C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA380690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA3806D8(uint64_t a1)
{
  if (!qword_1EBBEC790)
  {
    sub_1B9F0CE40(255, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1B9F0D9AC(255, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC790);
    }
  }
}

uint64_t sub_1BA380774(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA380808(255, a2, &qword_1EDC6E200, MEMORY[0x1E69A3108], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA3807D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA37EBEC(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_1BA380808(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3805C4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1BA380894(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA380808(255, a2, &qword_1EBBEA318, MEMORY[0x1E69A3430], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA3808F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA380958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_5Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA380A04@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BA37E6C0(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

void sub_1BA380A48(uint64_t a1, unsigned __int8 a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v4 = "accept";
    }

    else
    {
      v4 = "invite";
    }

    v3 = sub_1BA4A77C8(v4, 6, 2);
  }

  else if (a2 == 2)
  {
    v3 = sub_1BA4A77C8("decline", 7, 2);
  }

  else if (a2 == 3)
  {
    v3 = sub_1BA4A77C8("modifyPending", 13, 2);
  }

  else
  {
    v3 = sub_1BA4A77C8("modifyAccepted", 14, 2);
  }

  v5 = v3;
  sub_1BA4A77A8();
}

void sub_1BA380B30(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    v2 = sub_1BA4A7758();
    sub_1BA4A84A8();
    v3 = v2;
    sub_1BA4A77A8();
  }

  else
  {
    sub_1BA4A84A8();
  }
}

uint64_t sub_1BA380C00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BA44454C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BA386390(v6);
  return sub_1BA4A7EE8();
}

void *sub_1BA380C7C()
{
  v0 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_18;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = sub_1B9FF611C(MEMORY[0x1E69E7CC0]))
  {
    v16[4] = i;
    v16[5] = 0;
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v18 = v0;
    v3 = HKAllFeatureIdentifiers();
    type metadata accessor for HKFeatureIdentifier(0);
    v4 = sub_1BA4A6B08();

    v0 = v2;
    sub_1BA38730C(v4, v0, &v18);

    v17[0] = sub_1BA030530(v6, v5);
    sub_1BA380C00(v17);

    v7 = v17[0];
    v8 = v18;
    v16[2] = v17[0];
    v16[3] = v8;
    v15 = v0;
    if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
    {
      v0 = v8;
      v9 = sub_1BA4A7CC8();
    }

    else
    {
      v9 = *(v7 + 16);
    }

    if (!v9)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFAF2860](v10, v7);
      }

      else
      {
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for InternalSettingsFeatureStateModel(0);
      sub_1BA38793C(&qword_1EBBF15C8, 255, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
      v0 = sub_1BA4A4D78();
      v17[0] = v0;
      swift_allocObject();
      swift_weakInit();
      sub_1BA4A4E28();
      sub_1BA4A5148();

      swift_beginAccess();
      sub_1BA4A4D28();
      swift_endAccess();

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }
  }

LABEL_15:

  return v16;
}

char *sub_1BA380FB0@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char **a4@<X8>)
{
  v8 = *a1;
  objc_allocWithZone(type metadata accessor for InternalSettingsFeatureStateModel(0));
  v9 = v8;
  result = sub_1BA3818AC(v9, a2);
  if (v4)
  {
    v11 = *a3;
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1BA280EAC(0, v11[2] + 1, 1, v11);
      *a3 = v11;
    }

    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1BA280EAC((v14 > 1), v15 + 1, 1, v11);
      *a3 = v11;
    }

    v11[2] = v15 + 1;
    v11[v15 + 4] = v12;
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v16, qword_1EBC09940);
    v17 = v12;
    v18 = v4;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315394;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = sub_1B9F0B82C(v23, v24, &v29);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_1BA4A8418();
      v28 = sub_1B9F0B82C(v26, v27, &v29);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[Internal Settings] Failed to create FeatureStateModel for %s: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1BA38125C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = NSStringFromHKFeatureIdentifier();
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  v8 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v9 = NSStringFromHKFeatureIdentifier();
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1BA4A8338();
  }

  return v14 & 1;
}

double sub_1BA38136C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for InternalSettingsFeatureListModel();
    sub_1BA38793C(&unk_1EBBF15F0, v3, type metadata accessor for InternalSettingsFeatureListModel, &unk_1BA4D52E8);
    sub_1BA4A4D78();

    sub_1BA4A4E08();
  }

  return result;
}

id sub_1BA38141C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD08]) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1BA381488()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1BA38141C();
  v3 = *(v1 + 16);
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B9F468EC(0, v3, 0);
    v4 = v22;
    v5 = (v1 + 32);
    v6 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *v5;
      v8 = NSStringFromHKFeatureIdentifier();
      v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v11 = v10;

      v21 = v6;
      *&v20 = v9;
      *(&v20 + 1) = v11;
      v22 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B9F468EC((v12 > 1), v13 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v13 + 1;
      sub_1B9F46920(&v20, (v4 + 32 * v13 + 32));
      ++v5;
      --v3;
    }

    while (v3);
  }

  v14 = sub_1BA4A6AE8();

  v15 = [v2 stringFromItems_];

  if (!v15)
  {
    return 0;
  }

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;

  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v20 = 0x742064656C696146;
  *(&v20 + 1) = 0xEF2064616F6C206FLL;
  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA503A10);
  return v20;
}

uint64_t sub_1BA381690()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA381704@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InternalSettingsFeatureListModel();
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

uint64_t sub_1BA381740@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1798();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_1BA3817C4()
{
  swift_getObjectType();
  v0 = [swift_getObjCClassFromMetadata() requirementIdentifier];

  return v0;
}

double sub_1BA38183C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return result;
}

char *sub_1BA3818AC(void *a1, void *a2)
{
  v101 = a2;
  v102 = a1;
  sub_1B9F3E26C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v89 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0B9C58(0);
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v90 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for InternalSettingsFeatureState(0);
  MEMORY[0x1EEE9AC00](v83, v8);
  v82 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v97 = v80 - v12;
  v13 = MEMORY[0x1E695C070];
  sub_1BA38781C(0, &qword_1EBBF1528, sub_1BA385CB0, MEMORY[0x1E695C070]);
  v103 = *(v14 - 8);
  v104 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v95 = v80 - v17;
  sub_1BA385CB0(0, v16);
  v94 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v80 - v24;
  sub_1BA38781C(0, &qword_1EBBF1518, sub_1BA385C7C, v13);
  v27 = v26;
  v28 = *(v26 - 8);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = v80 - v31;
  sub_1BA385C7C(0, v30);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33, v35);
  v81 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v80 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v80 - v43;
  v45 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel__featureStatus;
  v46 = sub_1BA4A3938();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v86 = v46;
  v85 = v48;
  v84 = v47 + 56;
  (v48)(v44, 1, 1);
  sub_1BA38770C(v44, v40, sub_1BA385C7C);
  v80[1] = v40;
  v88 = v34;
  v49 = v96;
  sub_1BA4A4EE8();
  v87 = v44;
  sub_1BA3878D4(v44, sub_1BA385C7C);
  v98 = v45;
  v99 = v28;
  v50 = *(v28 + 32);
  v100 = v27;
  v50(&v49[v45], v32, v27);
  v51 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel__errorMessage;
  v52 = type metadata accessor for ErrorMessage(0);
  (*(*(v52 - 8) + 56))(v25, 1, 1, v52);
  sub_1BA38770C(v25, v21, sub_1BA385CB0);
  v53 = v95;
  sub_1BA4A4EE8();
  sub_1BA3878D4(v25, sub_1BA385CB0);
  (v103)[4](&v49[v51], v53, v104);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v54 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CD0];
  }

  v55 = v101;
  v56 = v102;
  v57 = v97;
  *&v49[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_subscriptions] = v54;
  v58 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter;
  *&v49[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter] = 0;
  v59 = [v55 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v59)
  {
    v97 = v51;
    *&v49[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] = v59;
    v60 = v59;
    v61 = objc_allocWithZone(MEMORY[0x1E696C178]);
    swift_unknownObjectRetain();
    v62 = [v61 initWithFeatureIdentifier:v56 healthStore:v55];
    v63 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager;
    *&v49[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager] = v62;
    swift_getObjectType();
    v64 = v93;
    sub_1BA2DD58C(v57);
    if (!v64)
    {
      v103 = v60;
      swift_beginAccess();
      sub_1BA38770C(v57, v82, type metadata accessor for InternalSettingsFeatureState);
      sub_1BA4A4EE8();
      sub_1BA3878D4(v57, type metadata accessor for InternalSettingsFeatureState);
      swift_endAccess();
      v65 = *&v49[v63];
      sub_1B9F0ADF8(0, &qword_1EBBF15E0, 0x1E696C178);
      v66 = v65;
      v67 = v81;
      sub_1BA4A39B8();
      v104 = 0;

      v85(v67, 0, 1, v86);
      v68 = v98;
      swift_beginAccess();
      (*(v99 + 8))(&v49[v68], v100);
      sub_1BA38770C(v67, v87, sub_1BA385C7C);
      sub_1BA4A4EE8();
      sub_1BA3878D4(v67, sub_1BA385C7C);
      swift_endAccess();
      v69 = type metadata accessor for InternalSettingsFeatureStateModel(0);
      v105.receiver = v49;
      v105.super_class = v69;
      v70 = objc_msgSendSuper2(&v105, sel_init);
      sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
      v58 = v70;
      v71 = sub_1BA4A7308();
      [v103 registerObserver:v58 queue:v71];

      v72 = *&v58[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureStatusManager];
      v73 = sub_1BA4A39C8();

      v106 = v73;
      v74 = sub_1BA4A7308();
      v107 = v74;
      v75 = sub_1BA4A72A8();
      v76 = v89;
      (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
      sub_1BA0B9D44(0);
      sub_1BA38793C(&qword_1EDC5F500, 255, sub_1BA0B9D44, MEMORY[0x1E695BED8]);
      sub_1B9F3DC80();
      v77 = v90;
      sub_1BA4A50A8();
      sub_1BA3878D4(v76, sub_1B9F3E26C);

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1BA38793C(&qword_1EBBEB670, 255, sub_1BA0B9C58, MEMORY[0x1E695BE98]);
      v78 = v92;
      sub_1BA4A5148();

      (*(v91 + 8))(v77, v78);
      swift_beginAccess();
      sub_1BA4A4D28();
      swift_endAccess();

      swift_unknownObjectRelease();

      return v58;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v55 = *&v49[v63];
    v51 = v97;
  }

  else
  {
    sub_1BA387880();
    swift_allocError();
    swift_willThrow();
  }

  (*(v99 + 8))(&v49[v98], v100);
  (v103[1])(&v49[v51], v104);

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  swift_deallocPartialClassInstance();
  return v58;
}

uint64_t sub_1BA382688(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1BA385C7C(0, a3);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = sub_1BA4A3938();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, a1, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA38770C(v11, v7, sub_1BA385C7C);
    sub_1BA4A4F38();
    return sub_1BA3878D4(v11, sub_1BA385C7C);
  }

  return result;
}

uint64_t sub_1BA382848(__n128 a1)
{
  sub_1BA385CB0(0, a1);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BA385C7C(0, v6);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for InternalSettingsFeatureState(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v30 - v24;
  swift_getObjectType();
  sub_1BA2DD58C(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v25, v21, type metadata accessor for InternalSettingsFeatureState);
  v26 = v1;
  sub_1BA4A4F38();
  sub_1BA3878D4(v25, type metadata accessor for InternalSettingsFeatureState);
  sub_1B9F0ADF8(0, &qword_1EBBF15E0, 0x1E696C178);
  sub_1BA4A39B8();
  v27 = sub_1BA4A3938();
  (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v17, v13, sub_1BA385C7C);
  v28 = v1;
  sub_1BA4A4F38();
  return sub_1BA3878D4(v17, sub_1BA385C7C);
}

id sub_1BA382EC0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v4 setDateStyle_];
    [v4 setTimeStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA382F5C(__n128 a1)
{
  sub_1BA385C7C(0, a1);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A38E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v10 = sub_1BA4A3938();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1BA3878D4(v4, sub_1BA385C7C);
  }

  else
  {
    if ((*(v11 + 88))(v4, v10) == *MEMORY[0x1E69A3888])
    {
      (*(v11 + 96))(v4, v10);
      (*(v6 + 32))(v9, v4, v5);
      v12 = sub_1BA4A38D8();
      (*(v6 + 8))(v9, v5);
      v13 = *(v12 + 16);

      return v13;
    }

    (*(v11 + 8))(v4, v10);
  }

  return 0;
}

void sub_1BA3831CC(__n128 a1)
{
  sub_1BA385C7C(0, a1);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A38E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v10 = sub_1BA4A3938();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1BA3878D4(v4, sub_1BA385C7C);
    return;
  }

  if ((*(v11 + 88))(v4, v10) != *MEMORY[0x1E69A3888])
  {
    (*(v11 + 8))(v4, v10);
    return;
  }

  (*(v11 + 96))(v4, v10);
  (*(v6 + 32))(v9, v4, v5);
  v12 = sub_1BA4A38D8();
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v18 = v6;
  v14 = sub_1BA021990(v13, 0);
  v19 = sub_1BA0238B0(&v20, v14 + 4, v13, v12);
  v15 = v20;

  sub_1B9F52E48(v15);
  if (v19 == v13)
  {
    v6 = v18;
LABEL_9:
    v20 = v14;
    sub_1BA0B7F58(&v20);

    v16 = MEMORY[0x1E69E6158];
    sub_1BA387A94(0, &qword_1EDC6B670, MEMORY[0x1E69E6158]);
    sub_1BA3877D0(&qword_1EDC6B660, &qword_1EDC6B670, v16, MEMORY[0x1E69E6310], v17);
    sub_1BA4A66D8();

    (*(v6 + 8))(v9, v5);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1BA383574()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for InternalSettingsFeatureState(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  sub_1BA38770C(&v17[*(v14 + 32)], v12, sub_1B9F7B6A0);
  sub_1BA3878D4(v17, type metadata accessor for InternalSettingsFeatureState);
  sub_1BA38770C(v12, v8, sub_1B9F7B6A0);
  if ((*(v1 + 48))(v8, 1, v0) == 1)
  {
    v18 = 7104878;
  }

  else
  {
    (*(v1 + 32))(v4, v8, v0);
    v19 = sub_1BA382EC0();
    v20 = sub_1BA4A16B8();
    v21 = [v19 stringFromDate_];

    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    (*(v1 + 8))(v4, v0);
  }

  sub_1BA3878D4(v12, sub_1B9F7B6A0);
  return v18;
}

void *sub_1BA383854()
{
  v0 = type metadata accessor for InternalSettingsFeatureState(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v5 = *&v4[*(v1 + 52)];

  sub_1BA3878D4(v4, type metadata accessor for InternalSettingsFeatureState);
  if (v5)
  {
    sub_1BA387774();
    result = sub_1BA4A8068();
    v7 = result;
    v8 = 0;
    v9 = v5 + 64;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v34 = result + 8;
    v35 = result;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_11:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v5 + 56);
        v20 = v5;
        v21 = (*(v5 + 48) + 16 * v17);
        v22 = v21[1];
        v36 = *v21;
        sub_1B9F0AD9C(v19 + 32 * v17, v38);
        sub_1B9F0AD9C(v38, v37);

        v23 = sub_1BA4A6808();
        v25 = v24;
        result = __swift_destroy_boxed_opaque_existential_1(v38);
        v26 = (v17 >> 3) & 0x1FFFFFFFFFFFFFF8;
        v27 = 1 << v17;
        v7 = v35;
        *(v34 + v26) |= v27;
        v28 = (v7[6] + v18);
        *v28 = v36;
        v28[1] = v22;
        v29 = (v7[7] + v18);
        *v29 = v23;
        v29[1] = v25;
        v30 = v7[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v7[2] = v32;
        v5 = v20;
        if (!v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
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

          return v7;
        }

        v16 = *(v9 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v12 = (v16 - 1) & v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void *sub_1BA383AC4()
{
  v1 = v0;
  v2 = sub_1BA4A3908();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BA4A3938();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA385C7C(0, v10);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  if ((*(v8 + 48))(v16, 1, v7))
  {
    sub_1BA3878D4(v16, sub_1BA385C7C);
    return sub_1B9FDC120(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v8 + 16))(v12, v16, v7);
    sub_1BA3878D4(v16, sub_1BA385C7C);
    sub_1BA383DB0(v6);
    (*(v8 + 8))(v12, v7);
    v18 = sub_1BA4A38F8();
    v19 = (*(v3 + 8))(v6, v2);
    MEMORY[0x1EEE9AC00](v19, v20);
    *&v22[-16] = v1;
    v21 = sub_1BA387420(v18, sub_1BA387304);

    return v21;
  }
}

uint64_t sub_1BA383DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_1BA4A38B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A38E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3938();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v2, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x1E69A3888])
  {
    (*(v14 + 96))(v18, v13);
    (*(v9 + 32))(v12, v18, v8);
    sub_1BA4A38A8();
    return (*(v9 + 8))(v12, v8);
  }

  else if (v19 == *MEMORY[0x1E69A3880])
  {
    (*(v14 + 96))(v18, v13);
    (*(v4 + 32))(v7, v18, v3);
    sub_1BA4A38A8();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3840D8(uint64_t a1)
{
  v1 = sub_1BA4A76A8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v3 = v1;
    sub_1BA067158(0, v2, 0);
    result = v3;
    v5 = 0;
    v6 = v18;
    v7 = (v3 + 40);
    v16 = v3;
    while (v5 < *(result + 16))
    {
      v8 = v2;
      v9 = *v7;
      v10 = *(v7 - 1);
      v11 = sub_1BA3850EC(v10, a1);
      v12 = sub_1BA385658(v10);

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BA067158((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      ++v5;
      *(v15 + 40) = v9;
      *(v15 + 41) = v12;
      v7 += 2;
      v2 = v8;
      result = v16;
      if (v8 == v5)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1BA384224()
{
  v0 = sub_1BA383AC4()[2];

  result = sub_1BA383AC4();
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & result[8];
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(result[7] + ((v7 << 9) | (8 * v8))) + 16))
    {

      return (v0 != 0);
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return 0;
    }

    v5 = result[v7 + 8];
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1BA3842F4()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
  v2 = sub_1BA4A6758();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1BA386344;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BA454240;
  v6[3] = &block_descriptor_54_0;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v1 setCurrentOnboardingVersionCompletedForCountryCode:v2 countryCodeProvenance:101 date:0 settings:0 completion:v4];
  _Block_release(v4);
}

void sub_1BA384400(char a1, void *a2, void *a3, __n128 a4)
{
  sub_1BA385CB0(0, a4);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  if (a1)
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v15 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v15, qword_1EBC09940);
    v16 = a2;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315138;
      v21 = [*&v16[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v23;

      v25 = sub_1B9F0B82C(v22, v24, &v51);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[Internal Settings] Completed onboarding for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    sub_1BA382848(v26);
  }

  else
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v27 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v27, qword_1EBC09940);
    v28 = a2;
    v29 = a3;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();

    v32 = os_log_type_enabled(v30, v31);
    v49 = v28;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315394;
      v35 = [*&v28[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v38 = v37;

      v39 = sub_1B9F0B82C(v36, v38, &v51);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      v50 = a3;
      sub_1BA38781C(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v40 = sub_1BA4A7A98();
      v42 = sub_1B9F0B82C(v40, v41, &v51);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[Internal Settings] Failed to complete onboarding for %s: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    if (a3)
    {
      v43 = a3;
      v44 = a3;
      sub_1BA4A1788();
      v45 = type metadata accessor for ErrorMessage(0);
      *&v14[*(v45 + 20)] = a3;
      v46 = &v14[*(v45 + 24)];
      *v46 = 0xD00000000000001BLL;
      *(v46 + 1) = 0x80000001BA503990;
      (*(*(v45 - 8) + 56))(v14, 0, 1, v45);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA38770C(v14, v10, sub_1BA385CB0);
      v47 = v49;
      sub_1BA4A4F38();

      sub_1BA3878D4(v14, sub_1BA385CB0);
    }
  }
}

uint64_t sub_1BA38490C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v9 = sub_1BA4A6478();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BA4A64C8();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v17 = sub_1BA4A7308();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a2;
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  v21 = a2;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA38793C(&qword_1EDC5E8E0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1BA38793C(&qword_1EDC5E6A0, 255, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v16, v12, v19);
  _Block_release(v19);

  (*(v26 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v25);
}

void sub_1BA384C08(char a1, void *a2, void *a3, __n128 a4)
{
  sub_1BA385CB0(0, a4);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  if (a1)
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v15 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v15, qword_1EBC09940);
    v16 = a2;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315138;
      v21 = [*&v16[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v23;

      v25 = sub_1B9F0B82C(v22, v24, &v51);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[Internal Settings] Reset onboarding for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    sub_1BA382848(v26);
  }

  else
  {
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v27 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v27, qword_1EBC09940);
    v28 = a2;
    v29 = a3;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();

    v32 = os_log_type_enabled(v30, v31);
    v49 = v28;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315394;
      v35 = [*&v28[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v38 = v37;

      v39 = sub_1B9F0B82C(v36, v38, &v51);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      v50 = a3;
      sub_1BA38781C(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v40 = sub_1BA4A7A98();
      v42 = sub_1B9F0B82C(v40, v41, &v51);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[Internal Settings] Failed to reset onboarding for %s: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    if (a3)
    {
      v43 = a3;
      v44 = a3;
      sub_1BA4A1788();
      v45 = type metadata accessor for ErrorMessage(0);
      *&v14[*(v45 + 20)] = a3;
      v46 = &v14[*(v45 + 24)];
      *v46 = 0xD00000000000001ALL;
      *(v46 + 1) = 0x80000001BA503860;
      (*(*(v45 - 8) + 56))(v14, 0, 1, v45);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA38770C(v14, v10, sub_1BA385CB0);
      v47 = v49;
      sub_1BA4A4F38();

      sub_1BA3878D4(v14, sub_1BA385CB0);
    }
  }
}

uint64_t sub_1BA3850EC(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for InternalSettingsFeatureState(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v9 = *&v8[*(v5 + 56)];
  v10 = v9;
  sub_1BA3878D4(v8, type metadata accessor for InternalSettingsFeatureState);
  if (!v9)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
    v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v31);

    MEMORY[0x1BFAF1350](0xD000000000000024, 0x80000001BA503900);
    while (1)
    {
LABEL_26:
      sub_1BA4A8018();
      __break(1u);
LABEL_27:

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      MEMORY[0x1BFAF1350](v29);

      MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA503930);
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      MEMORY[0x1BFAF1350](v30);

      MEMORY[0x1BFAF1350](0x6F66206572657720, 0xEB00000000646E75);
    }
  }

  v11 = [v10 requirementsByContext];
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1BA38781C(0, &qword_1EBBF15D0, sub_1BA3862E0, MEMORY[0x1E69E62F8]);
  sub_1BA38793C(&qword_1EBBE9420, 255, type metadata accessor for HKFeatureAvailabilityContext, &unk_1BA4B50C0);
  v12 = sub_1BA4A6628();

  if (!*(v12 + 16))
  {
    goto LABEL_27;
  }

  v13 = sub_1B9F4E588(a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  if (v15 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = a2;
  v33 = v10;
  if (!v16)
  {
LABEL_25:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA5038E0);
    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v27);

    MEMORY[0x1BFAF1350](0xD00000000000002BLL, 0x80000001BA503960);
    v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    MEMORY[0x1BFAF1350](v28);

    goto LABEL_26;
  }

LABEL_6:
  v17 = 0;
  v35 = v15 & 0xC000000000000001;
  a2 = v15 & 0xFFFFFFFFFFFFFF8;
  while (!v35)
  {
    if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_24:
      v16 = sub_1BA4A7CC8();
      v32 = a2;
      v33 = v10;
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }

    v18 = *(v15 + 8 * v17 + 32);
    swift_unknownObjectRetain();
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      goto LABEL_19;
    }

LABEL_10:
    v10 = v16;
    swift_getObjectType();
    v2 = [swift_getObjCClassFromMetadata() requirementIdentifier];
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;
    if (v20 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v22 == v23)
    {
      goto LABEL_20;
    }

    v25 = sub_1BA4A8338();

    if (v25)
    {

      return v18;
    }

    swift_unknownObjectRelease();
    ++v17;
    v16 = v10;
    if (v19 == v10)
    {
      goto LABEL_25;
    }
  }

  v18 = MEMORY[0x1BFAF2860](v17, v15);
  v19 = (v17 + 1);
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  return v18;
}

uint64_t sub_1BA385658(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = [objc_allocWithZone(MEMORY[0x1E696C148]) initWithFeatureIdentifier_];

  v5 = [v4 overriddenSatisfactionOfRequirementWithIdentifier_];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 BOOLValue];

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1BA385724(uint64_t a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v6 = [objc_allocWithZone(MEMORY[0x1E696C148]) initWithFeatureIdentifier_];

  type metadata accessor for InternalSettingsFeatureStateModel(0);
  sub_1BA38793C(&qword_1EBBF15C8, 255, type metadata accessor for InternalSettingsFeatureStateModel, &unk_1BA4D5320);
  sub_1BA4A4D78();
  sub_1BA4A4E08();

  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    v7 = sub_1BA4A7758();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 overrideSatisfactionOfRequirementWithIdentifier:a1 isSatisfied:?];
}

id sub_1BA3858B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsFeatureStateModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA385AB8(uint64_t a1, __n128 a2)
{
  sub_1BA38781C(319, &qword_1EBBF1510, type metadata accessor for InternalSettingsFeatureState, MEMORY[0x1E695C070]);
  if (v2 <= 0x3F)
  {
    sub_1BA38781C(319, &qword_1EBBF1518, sub_1BA385C7C, MEMORY[0x1E695C070]);
    if (v3 <= 0x3F)
    {
      sub_1BA38781C(319, &qword_1EBBF1528, sub_1BA385CB0, MEMORY[0x1E695C070]);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BA385D04@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InternalSettingsFeatureStateModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

void sub_1BA385D44(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_1BA385DD0(uint64_t a1)
{
  result = sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    result = sub_1B9FED358();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BA385EA8(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 BOOLValue];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1BA385F08@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    result = sub_1BA4A7758();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1BA385F68()
{
  v1 = *v0;
  sub_1BA4A8488();
  sub_1BA380B30(v3, v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA385FB8(uint64_t a1)
{
  v2 = *v1;
  sub_1BA4A8488();
  sub_1BA380B30(v4, v2);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA385FFC()
{
  v1 = 0x5920646563726F46;
  if (*v0 != 1)
  {
    v1 = 0x4E20646563726F46;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574614ELL;
  }
}

unint64_t sub_1BA386064()
{
  result = qword_1EBBF15C0;
  if (!qword_1EBBF15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF15C0);
  }

  return result;
}

uint64_t sub_1BA3860C4()
{
  v0 = sub_1BA4A3EA8();
  __swift_allocate_value_buffer(v0, qword_1EBC09940);
  __swift_project_value_buffer(v0, qword_1EBC09940);
  return sub_1BA4A3E98();
}

double sub_1BA38613C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return result;
}

uint64_t sub_1BA3861B8(uint64_t a1, void **a2, __n128 a3)
{
  sub_1BA385C7C(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BA38770C(a1, &v16 - v11, sub_1BA385C7C);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA38770C(v12, v8, sub_1BA385C7C);
  v14 = v13;
  sub_1BA4A4F38();
  return sub_1BA3878D4(v12, sub_1BA385C7C);
}

unint64_t sub_1BA3862E0()
{
  result = qword_1EBBF15D8;
  if (!qword_1EBBF15D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBF15D8);
  }

  return result;
}

void sub_1BA386390(uint64_t *a1)
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
        type metadata accessor for InternalSettingsFeatureStateModel(0);
        v6 = sub_1BA4A6B98();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BA386648(v8, v9, a1, v4);
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
    sub_1BA386494(0, v2, 1, a1);
  }
}

void sub_1BA386494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
      v9 = v6;
      v10 = v7;
      v11 = [v8 featureIdentifier];
      v12 = NSStringFromHKFeatureIdentifier();
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v14 = v13;

      v15 = [*&v10[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
      v16 = NSStringFromHKFeatureIdentifier();
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v19 = v18;

      if (v29 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v21 = sub_1BA4A8338();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BA386648(unint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v8 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v104 = v4;
LABEL_109:
      v105 = v6;
      v129 = v104;
      v4 = *(v104 + 2);
      if (v4 >= 2)
      {
        while (*v8)
        {
          v6 = v4 - 1;
          v106 = *&v104[16 * v4];
          v107 = v104;
          v108 = *&v104[16 * v4 + 24];
          sub_1BA386E98((*v8 + 8 * v106), (*v8 + 8 * *&v104[16 * v4 + 16]), (*v8 + 8 * v108), v7);
          if (v105)
          {
            goto LABEL_117;
          }

          if (v108 < v106)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1BA442D80(v107);
          }

          if (v4 - 2 >= *(v107 + 2))
          {
            goto LABEL_134;
          }

          v109 = &v107[16 * v4];
          *v109 = v106;
          *(v109 + 1) = v108;
          v129 = v107;
          sub_1BA442CF4(v4 - 1);
          v104 = v129;
          v4 = *(v129 + 2);
          if (v4 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v104 = sub_1BA442D80(v4);
    goto LABEL_109;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v121 = v12;
    }

    else
    {
      v114 = v10;
      v4 = *v7;
      v128 = *(*v7 + 8 * v12);
      v127 = *(v4 + 8 * v11);
      v13 = v127;
      v14 = v6;
      v15 = v128;
      v16 = v13;
      v125 = sub_1BA38125C(&v128, &v127);
      if (v14)
      {

        return;
      }

      v17 = v11 + 2;
      if (v11 + 2 >= v8)
      {
        v121 = v11 + 2;
        v10 = v114;
      }

      else
      {
        v110 = v11;
        v18 = (v4 + 8 * v11 + 16);
        v123 = v8;
        do
        {
          v121 = v17;
          v19 = *(v18 - 1);
          v20 = *(*v18 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore);
          v21 = *v18;
          v8 = v19;
          v22 = [v20 featureIdentifier];
          v23 = NSStringFromHKFeatureIdentifier();
          v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v26 = v25;

          v27 = [*(v8 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore) featureIdentifier];
          v4 = NSStringFromHKFeatureIdentifier();
          v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v30 = v29;

          if (v24 == v28 && v26 == v30)
          {

            if (v125)
            {
              v10 = v114;
              v6 = 0;
              v7 = a3;
              v11 = v110;
              goto LABEL_22;
            }
          }

          else
          {
            v4 = sub_1BA4A8338();

            if ((v125 ^ v4))
            {
              goto LABEL_20;
            }
          }

          v8 = v123;
          v17 = v121 + 1;
          ++v18;
        }

        while (v123 != v121 + 1);
        v121 = v123;
LABEL_20:
        v10 = v114;
        v11 = v110;
      }

      v6 = 0;
      v7 = a3;
      if (v125)
      {
LABEL_22:
        v32 = v121;
        if (v121 < v11)
        {
          goto LABEL_137;
        }

        if (v11 < v121)
        {
          v33 = 8 * v121 - 8;
          v34 = 8 * v11;
          v35 = v11;
          do
          {
            if (v35 != --v32)
            {
              v37 = *v7;
              if (!*v7)
              {
                goto LABEL_143;
              }

              v36 = *&v37[v34];
              *&v37[v34] = *&v37[v33];
              *&v37[v33] = v36;
            }

            ++v35;
            v33 -= 8;
            v34 += 8;
          }

          while (v35 < v32);
        }
      }
    }

    v38 = *(v7 + 8);
    if (v121 < v38)
    {
      if (__OFSUB__(v121, v11))
      {
        goto LABEL_136;
      }

      if (v121 - v11 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v121 < v11)
    {
      goto LABEL_135;
    }

    v58 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v58;
    }

    else
    {
      v10 = sub_1BA27F470(0, *(v58 + 2) + 1, 1, v58);
    }

    v4 = *(v10 + 2);
    v59 = *(v10 + 3);
    v60 = v4 + 1;
    if (v4 >= v59 >> 1)
    {
      v10 = sub_1BA27F470((v59 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v60;
    v61 = &v10[16 * v4];
    *(v61 + 4) = v11;
    *(v61 + 5) = v121;
    v62 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v8 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v10 + 4);
          v64 = *(v10 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_73:
          if (v66)
          {
            goto LABEL_124;
          }

          v79 = &v10[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_127;
          }

          v85 = &v10[16 * v8 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_131;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v8 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v89 = &v10[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_87:
        if (v84)
        {
          goto LABEL_126;
        }

        v92 = &v10[16 * v8];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_129;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_94:
        v4 = v8 - 1;
        if (v8 - 1 >= v60)
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

        if (!*v7)
        {
          goto LABEL_142;
        }

        v100 = v10;
        v101 = *&v10[16 * v4 + 32];
        v102 = *&v10[16 * v8 + 40];
        sub_1BA386E98((*v7 + 8 * v101), (*v7 + 8 * *&v10[16 * v8 + 32]), (*v7 + 8 * v102), v62);
        if (v6)
        {
          goto LABEL_117;
        }

        if (v102 < v101)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1BA442D80(v100);
        }

        if (v4 >= *(v100 + 2))
        {
          goto LABEL_121;
        }

        v103 = &v100[16 * v4];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        v129 = v100;
        sub_1BA442CF4(v8);
        v10 = v129;
        v60 = *(v129 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v10[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_122;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_123;
      }

      v74 = &v10[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_125;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_128;
      }

      if (v78 >= v70)
      {
        v96 = &v10[16 * v8 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_132;
        }

        if (v65 < v99)
        {
          v8 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v121;
    if (v121 >= v8)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_138;
  }

  if (v11 + a4 >= v38)
  {
    v39 = *(v7 + 8);
  }

  else
  {
    v39 = v11 + a4;
  }

  if (v39 < v11)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v121 == v39)
  {
    goto LABEL_53;
  }

  v115 = v10;
  v116 = v6;
  v124 = *v7;
  v40 = *v7 + 8 * v121 - 8;
  v111 = v11;
  v41 = v11 - v121;
  v42 = v121;
  v118 = v39;
LABEL_42:
  v120 = v40;
  v122 = v42;
  v43 = v124[v42];
  v119 = v41;
  while (1)
  {
    v44 = *v40;
    v45 = *&v43[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
    v8 = v43;
    v46 = v44;
    v47 = [v45 featureIdentifier];
    v48 = NSStringFromHKFeatureIdentifier();
    v126 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v50 = v49;

    v4 = [*&v46[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
    v51 = NSStringFromHKFeatureIdentifier();
    v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v54 = v53;

    if (v126 == v52 && v50 == v54)
    {

LABEL_41:
      v42 = v122 + 1;
      v40 = v120 + 8;
      v41 = v119 - 1;
      if (v122 + 1 == v118)
      {
        v121 = v118;
        v10 = v115;
        v6 = v116;
        v7 = a3;
        v11 = v111;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v4 = sub_1BA4A8338();

    if ((v4 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v124)
    {
      break;
    }

    v56 = *v40;
    v43 = *(v40 + 8);
    *v40 = v43;
    *(v40 + 8) = v56;
    v40 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_41;
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

uint64_t sub_1BA386E98(id *__dst, id *__src, id *a3, id *a4)
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
      v33 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v33;
    }

    v62 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v55 = a4;
      v59 = v6;
LABEL_31:
      v61 = v5;
      v34 = v5 - 1;
      v35 = v4;
      v36 = v62;
      v54 = v5 - 1;
      do
      {
        v37 = *--v36;
        v38 = *v34;
        v39 = *&v37[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore];
        v57 = v37;
        v40 = v38;
        v41 = [v39 featureIdentifier];
        v42 = NSStringFromHKFeatureIdentifier();
        v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v45 = v44;

        v46 = [*&v40[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
        v47 = NSStringFromHKFeatureIdentifier();
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = v35 - 1;
        }

        else
        {
          v52 = sub_1BA4A8338();

          v4 = v35 - 1;
          if (v52)
          {
            if (v35 != v61)
            {
              *v4 = *v54;
            }

            v13 = v55;
            if (v62 <= v55 || (v5 = v54, v54 <= v59))
            {
              v5 = v54;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v54;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v55);
      v62 = v36;
      v13 = v55;
      v5 = v61;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v62 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v56 = v4;
      while (1)
      {
        v58 = v6;
        v60 = v5;
        v14 = *v13;
        v15 = *(*v5 + OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore);
        v16 = *v5;
        v17 = v14;
        v18 = [v15 featureIdentifier];
        v19 = NSStringFromHKFeatureIdentifier();
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = v21;

        v23 = [*&v17[OBJC_IVAR____TtC18HealthExperienceUI33InternalSettingsFeatureStateModel_featureAvailabilityStore] featureIdentifier];
        v24 = NSStringFromHKFeatureIdentifier();
        v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v27 = v26;

        v28 = v20 == v25 && v22 == v27;
        if (v28)
        {
          break;
        }

        v29 = sub_1BA4A8338();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v58;
        v31 = v60;
        v5 = v60 + 1;
        v32 = v56;
        if (v58 != v60)
        {
          goto LABEL_21;
        }

LABEL_22:
        v6 = v30 + 1;
        if (v13 >= v62 || v5 >= v32)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v31 = v13;
      v30 = v58;
      v5 = v60;
      v28 = v58 == v13++;
      v32 = v56;
      if (v28)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v30 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v62 - v13));
  }

  return 1;
}

uint64_t sub_1BA38730C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v12 = *i;
      v9 = v12;
      sub_1BA380FB0(&v12, a2, a3, &v11);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_1BA387420(uint64_t a1, uint64_t (*a2)(id, id))
{
  v3 = *(a1 + 16);
  type metadata accessor for HKFeatureAvailabilityContext(0);
  v5 = v4;
  sub_1BA387A94(0, &qword_1EBBEA690, &type metadata for FeatureRequirementEvaluation);
  v7 = v6;
  v8 = sub_1BA38793C(&qword_1EBBE9420, 255, type metadata accessor for HKFeatureAvailabilityContext, &unk_1BA4B50C0);
  v9 = MEMORY[0x1BFAF1080](v3, v5, v7, v8);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v42 = a1;

  v15 = 0;
  v39 = v14;
  v40 = a1 + 64;
  while (v13)
  {
    v16 = v15;
LABEL_11:
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v13)));
    v18 = *(*(v42 + 48) + v17);
    v19 = *(*(v42 + 56) + v17);
    v20 = v18;
    v21 = v19;
    if (!v18)
    {
LABEL_21:

      return v9;
    }

    v22 = v21;
    v23 = v20;
    v24 = v22;
    v25 = a2(v23, v24);

    v43 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1B9F4E588(v23);
    v29 = v9[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v9[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BA0F32D8();
      }
    }

    else
    {
      sub_1BA0F5D7C(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1B9F4E588(v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_25;
      }

      v28 = v33;
    }

    v13 &= v13 - 1;
    if (v32)
    {
      *(v9[7] + 8 * v28) = v25;
    }

    else
    {
      v9[(v28 >> 6) + 8] |= 1 << v28;
      *(v9[6] + 8 * v28) = v23;
      *(v9[7] + 8 * v28) = v25;

      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_24;
      }

      v9[2] = v37;
    }

    v15 = v16;
    v14 = v39;
    v10 = v40;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_21;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA38770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA387774()
{
  if (!qword_1EDC5E000)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E000);
    }
  }
}

uint64_t sub_1BA3877D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1BA387A94(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA38781C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA387880()
{
  result = qword_1EBBF1610;
  if (!qword_1EBBF1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1610);
  }

  return result;
}

uint64_t sub_1BA3878D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA38793C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1BA3879A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1BA3879F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA387A94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA387AE4()
{
  result = qword_1EBBF1630;
  if (!qword_1EBBF1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1630);
  }

  return result;
}

id static ProfileViewController.makeProfileViewController(healthStore:pinnedContentManager:)(void *a1, uint64_t a2)
{
  sub_1B9F0A534(a2, v15);
  v3 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = a1;
  v12 = sub_1BA38A128(v11, v9, v3, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id static ProfileViewController.makeProfileNavigationController(healthStore:pinnedContentManager:configurator:)(void *a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);

  return sub_1BA389F58(a1, v10, a3, a4, v4, v8, v9);
}

double ProfileViewController.handleRestoration(restorationType:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  if ([v1 isViewLoaded])
  {
    v13 = sub_1B9F23FB0();
    type metadata accessor for CompoundSectionedDataSource(0);
    sub_1B9F0D950(0, &qword_1EBBF1648, &protocol descriptor for ProfileDeepLinkHandling);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v10, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      *&v10 = v3;
      *(&v10 + 1) = v2;
      LOBYTE(v11) = v4;
      sub_1BA1A8818(&v10, v1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return result;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1BA38A268(&v10);
  }

  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  v8 = *(v6 + 1);
  *v6 = v3;
  *(v6 + 1) = v2;
  v9 = v6[16];
  v6[16] = v4;
  sub_1BA38A23C(v3, v2, v4);
  return sub_1BA38A254(v7, v8, v9);
}

id ProfileViewController.__allocating_init(healthStore:pinnedContentManager:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1BA38A2DC(a1, v7, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1BA387EF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA387F54()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA387FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA388058()
{
  sub_1BA142B40(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_1BA3882E8() + OBJC_IVAR____TtC18HealthExperienceUI25ProfileCompoundDataSource_profileHeaderDataSource);

  v13 = *(v6 + qword_1EDC6A560);
  v7 = MEMORY[0x1E695BF98];
  sub_1BA38A3D0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA38A45C(&qword_1EDC6B730, &qword_1EDC6B720, v7, MEMORY[0x1E695BFB0]);

  v8 = sub_1BA4A4F98();

  v13 = v8;
  v9 = MEMORY[0x1E695BED0];
  sub_1BA38A3D0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F0CDE8(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
  sub_1BA38A45C(&qword_1EDC6B740, &qword_1EDC6B738, v9, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();
  sub_1B9F46FD8(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v10 = sub_1BA4A4F98();

  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_1BA3882E8()
{
  swift_getObjectType();
  sub_1B9F23FB0();
  type metadata accessor for ProfileCompoundDataSource(0);
  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_1BA4A7DF8();
    sub_1BA4A85D8();

    MEMORY[0x1BFAF1350](0xD00000000000001FLL, 0x80000001BA503BB0);
    type metadata accessor for CompoundSectionedDataSource(0);
    sub_1B9F46FD8(&qword_1EBBF09F0, type metadata accessor for CompoundSectionedDataSource, &protocol conformance descriptor for CompoundSectionedDataSource);

    v1 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v1);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA388464()
{
  sub_1BA3304E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  *&v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2).n128_u64[0];
  v5 = &v12 - v4;
  v6 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore) profileIdentifier];
  v7 = [v6 type];

  result = 0;
  if (v7 != 1)
  {
    sub_1BA3882E8();

    sub_1BA1F8E68(v5);

    v9 = sub_1BA4A2888();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_1BA330538(v5, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
      return 0;
    }

    else
    {
      v11 = sub_1BA4A2AE8();
      (*(v10 + 8))(v5, v9);
      return v11;
    }
  }

  return result;
}

id ProfileViewController.init(healthStore:pinnedContentManager:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1BA38A128(a1, v10, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

void sub_1BA3888C0()
{
  v1 = type metadata accessor for ProfileViewController();
  v14[3] = v1;
  v14[4] = &protocol witness table for ProfileViewController;
  v14[0] = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  v3 = v0;
  sub_1B9F10C48(v14, v0 + v2);
  swift_endAccess();
  v13.receiver = v3;
  v13.super_class = v1;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v4 = [v3 collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemGroupedBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = [v3 collectionView];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 setContentInset_];

  v9 = [v3 collectionView];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BA4A6AE8();
    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
    sub_1BA389444();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA388AB0()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  sub_1B9FF515C();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  sub_1B9FF5190();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  sub_1B9FF5260();

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  sub_1B9FF5D70();

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  sub_1B9FF5688();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  sub_1B9FF5DA4();

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  sub_1B9F39D20();

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F3C(v18, v19);
}

void sub_1BA388D14()
{
  v1 = v0;
  v2 = sub_1BA4A3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  (*(v3 + 104))(v6, *MEMORY[0x1E69A2C28], v2);
  v7 = sub_1BA4A35B8();

  (*(v3 + 8))(v6, v2);
  v8 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] profileIdentifier];
  sub_1BA4A7098();

  [v1 setUserActivity_];
}

void sub_1BA388F08(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7F8(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C5F4();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA090900;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_103;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3891A8(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileViewController();
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F7F8(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C5F4();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_7_0;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA389444()
{
  v1 = [v0 navigationItem];
  v2 = [v0 presentingViewController];
  if (v2)
  {

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_dismissProfile_];
  }

  else
  {
    v3 = 0;
  }

  [v1 setLeftBarButtonItem_];

  v4 = [v0 navigationItem];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v5 = sub_1BA4A6758();

  [v4 setBackButtonTitle_];

  v6 = [v0 navigationItem];
  [v6 setBackButtonDisplayMode_];

  sub_1BA17B88C();
}

id ProfileViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA389788()
{
  sub_1BA38A254(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad + 8), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView);
}

id ProfileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProfileViewController.dataSource(for:)()
{
  UIViewController.resolvedHealthExperienceStore.getter(v6);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v1 = sub_1BA4A1B68();
  __swift_destroy_boxed_opaque_existential_1(v6);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore);
  type metadata accessor for ProfileCompoundDataSource(0);
  swift_allocObject();
  v3 = v2;
  v4 = sub_1BA1A9848(v3, v1);

  return v4;
}

uint64_t sub_1BA389A88()
{
  v1 = *v0;
  UIViewController.resolvedHealthExperienceStore.getter(v7);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v2 = sub_1BA4A1B68();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore);
  type metadata accessor for ProfileCompoundDataSource(0);
  swift_allocObject();
  v4 = v3;
  v5 = sub_1BA1A9848(v4, v2);

  return v5;
}

Swift::Void __swiftcall ProfileViewController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  v3 = sub_1BA4A3EA8();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1BA4A3678();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = type metadata accessor for ProfileViewController();
  v31.receiver = v1;
  v31.super_class = v20;
  objc_msgSendSuper2(&v31, sel_restoreUserActivityState_, a1.super.isa);
  v21 = [(objc_class *)a1.super.isa activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BA330538(v10, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    sub_1BA4A3E48();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6F98();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Cannot handle this activity type", v24, 2u);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v27 + 8))(v6, v28);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    (*(v12 + 16))(v15, v19, v11);
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E69A2C70])
    {
      v29 = xmmword_1BA4C92B0;
      v30 = 2;
      v25 = ProfileViewController.handleRestoration(restorationType:)(&v29);
      (*(v12 + 8))(v19, v11, v25);
    }

    else
    {
      v26 = *(v12 + 8);
      v26(v19, v11);
      v26(v15, v11);
    }
  }
}

id sub_1BA389F58(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a4;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v26 - v17;
  v19 = *(v11 + 16);
  v19(v26 - v17, v16);
  v20 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  (v19)(v13, v18, a6);
  v21 = a1;
  v22 = sub_1BA38A128(v21, v13, v20, a6, a7);

  v23 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v24 = [v23 navigationBar];
  [v24 setPrefersLargeTitles_];

  a3(v22);
  (*(v11 + 8))(v18, a6);
  return v23;
}

id sub_1BA38A128(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_restorationRowToLoad];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView] = 0;
  *&a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_providedHealthStore] = a1;
  sub_1B9F0A534(v17, &a3[OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_pinnedContentManager]);
  v11 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v12 = a1;
  v13 = [v11 init];
  v16.receiver = a3;
  v16.super_class = type metadata accessor for ProfileViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithCollectionViewLayout_, v13);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

double sub_1BA38A23C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_1BA38A254(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BA24A460(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1BA38A268(uint64_t a1)
{
  sub_1B9F0CDE8(0, &qword_1EBBF1650, &qword_1EBBF1648, &protocol descriptor for ProfileDeepLinkHandling);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA38A2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  (*(v9 + 16))(v11, a2, a4);
  return sub_1BA38A128(a1, v11, v12, a4, a5);
}

void sub_1BA38A3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3304E4(255, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA38A45C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA38A3D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI18ProfileDeepLinkRowO(uint64_t a1)
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

uint64_t sub_1BA38A600(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_1BA38A7B4(sub_1BA38B5A8);
}

double sub_1BA38A680()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1BA38A6C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t (*sub_1BA38A738(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38A79C;
}

uint64_t sub_1BA38A7B4(uint64_t a1)
{
  v26 = a1;
  v2 = v1;
  v3 = sub_1BA4A1798();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v25 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v25;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = type metadata accessor for SegmentedControlItem();
  v15 = swift_allocObject();
  v29 = type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();

  v15[2] = sub_1BA4A6808();
  v15[3] = v16;
  v15[4] = v10;
  v15[5] = v12;
  v15[6] = v26;
  v15[7] = v13;

  *(v8 + 56) = v14;
  *(v8 + 64) = sub_1BA3785E8(v17, v18);
  *(v8 + 32) = v15;
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v27 + 8))(v6, v28);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v23 = Array<A>.identifierToIndexDict()(v22);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v8;
  *(inited + 56) = v23;
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA38AA2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA38AA70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1BA38A7B4(sub_1BA38B5A8);
}

uint64_t (*sub_1BA38AAD8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38A79C;
}

uint64_t sub_1BA38AB3C(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA38A7B4(a3);
  }

  return result;
}

uint64_t SegmentedControlDataSource.init(segments:initiallySelectedSegmentIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A1798();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments) = a1;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex) = a2;
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v50[4] = xmmword_1EDC67D78;
  v50[5] = *&qword_1EDC67D88;
  v50[6] = xmmword_1EDC67D98;
  v50[7] = unk_1EDC67DA8;
  v50[0] = xmmword_1EDC67D38;
  v50[1] = *&qword_1EDC67D48;
  v50[2] = xmmword_1EDC67D58;
  v50[3] = *&qword_1EDC67D68;
  v46 = xmmword_1EDC67D38;
  v47 = qword_1EDC67D48;
  v8 = unk_1EDC67D50;
  v10 = xmmword_1EDC67D58;
  v9 = qword_1EDC67D68;
  v42 = *(&xmmword_1EDC67D78 + 8);
  v43 = unk_1EDC67D90;
  v44 = *(&xmmword_1EDC67D98 + 8);
  v45 = qword_1EDC67DB0;
  v41 = unk_1EDC67D70;
  sub_1B9F1D9A4(v50, &v48);
  sub_1B9F1DA18(v8, v10, *(&v10 + 1), v9);
  v48 = v46;
  *(v49 + 8) = 0u;
  *(&v49[1] + 8) = 0u;
  *(&v49[3] + 8) = v42;
  *(&v49[4] + 8) = v43;
  *(&v49[5] + 8) = v44;
  *&v49[0] = v47;
  *(&v49[6] + 1) = v45;
  *(&v49[2] + 8) = v41;
  v11 = swift_allocObject();
  v12 = v49[4];
  v11[5] = v49[3];
  v11[6] = v12;
  v13 = v49[6];
  v11[7] = v49[5];
  v11[8] = v13;
  v14 = v49[0];
  v11[1] = v48;
  v11[2] = v14;
  v15 = v49[2];
  v11[3] = v49[1];
  v11[4] = v15;
  sub_1B9F1D9A4(&v48, &v41);
  v16 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA38B068, v11);

  sub_1B9FF6758();
  inited = swift_initStackObject();
  v36 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_segments;
  swift_beginAccess();
  v20 = *(v16 + v19);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
  swift_beginAccess();
  v22 = *(v16 + v21);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = type metadata accessor for SegmentedControlItem();
  v25 = swift_allocObject();
  v40 = type metadata accessor for SegmentedControlCell();
  sub_1BA3785A0();

  v25[2] = sub_1BA4A6808();
  v25[3] = v26;
  v25[4] = v20;
  v25[5] = v22;
  v25[6] = sub_1BA38B378;
  v25[7] = v23;

  *(v18 + 56) = v24;
  *(v18 + 64) = sub_1BA3785E8(v27, v28);
  *(v18 + 32) = v25;
  v29 = v37;
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  (*(v38 + 8))(v29, v39);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v34 = Array<A>.identifierToIndexDict()(v33);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v18;
  *(inited + 56) = v34;
  *(inited + 64) = v30;
  *(inited + 72) = v32;
  sub_1BA0E7F10(inited, 1);
  sub_1B9F1DA58(&v48);

  swift_setDeallocating();
  sub_1B9FF7224(inited + 32);
  return v16;
}

id sub_1BA38AFF8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_1BA0117AC();
  v4 = a3[5];
  v10[4] = a3[4];
  v10[5] = v4;
  v5 = a3[7];
  v10[6] = a3[6];
  v10[7] = v5;
  v6 = a3[1];
  v10[0] = *a3;
  v10[1] = v6;
  v7 = a3[3];
  v10[2] = a3[2];
  v10[3] = v7;
  sub_1B9F1D9A4(a3, &v9);
  return sub_1B9F293A8(v10);
}

double sub_1BA38B094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC18HealthExperienceUI26SegmentedControlDataSource_selectedSegmentIndex;
    swift_beginAccess();
    *(v5 + v6) = a1;
    sub_1BA38A7B4(sub_1BA38B5A8);
  }

  return result;
}

uint64_t SegmentedControlDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SegmentedControlDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SegmentedControlDataSource(uint64_t a1)
{
  result = qword_1EBBF1670;
  if (!qword_1EBBF1670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA38B5C0(uint64_t a1)
{
  sub_1BA38B61C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA38B61C(uint64_t a1)
{
  if (!qword_1EDC6C148)
  {
    sub_1B9F66B64();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6C148);
    }
  }
}

void sub_1BA38B674(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = sub_1BA4A1798();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69A3C08];
  sub_1B9F66454(0, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  sub_1BA38C18C(a1, &v27 - v11, &qword_1EDC6ADF8, v8);
  v13 = sub_1BA4A1C68();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BA38C1F8(v12, &qword_1EDC6ADF8, MEMORY[0x1E69A3C08]);
  }

  else
  {
    v15 = sub_1BA38C668();
    v17 = v16;
    (*(v14 + 8))(v12, v13);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v15 = sub_1BA4A1318();
  v17 = v18;

LABEL_7:
  v29 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA38CB34();
  v19 = sub_1BA4A6808();
  v21 = v20;
  v29 = 0xD00000000000001FLL;
  v30 = 0x80000001BA4EF020;
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  (*(v4 + 8))(v7, v28);
  MEMORY[0x1BFAF1350](v22, v24);

  v25 = v29;
  v26 = v30;
  *a2 = v19;
  a2[1] = v21;
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v15;
  a2[5] = v17;
  a2[6] = 0;
  a2[7] = 0;
}

id sub_1BA38B994@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF1628(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1EBBE88E0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EBBF16A0;
    v14 = *algn_1EBBF16A8;

    sub_1BA10E1EC(v13);
  }

  else
  {
    if (qword_1EBBE88D8 != -1)
    {
      swift_once();
    }

    v15 = qword_1EBBF1690;
    v14 = *algn_1EBBF1698;
  }

  v28 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA38CB34();
  v16 = sub_1BA4A6808();
  v18 = v17;
  v28 = 0xD00000000000001FLL;
  v29 = 0x80000001BA4EF020;
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x1BFAF1350](v19, v21);

  v22 = v28;
  v23 = v29;
  *a3 = v16;
  a3[1] = v18;
  a3[2] = v22;
  a3[3] = v23;
  a3[4] = v15;
  a3[5] = v14;
  v24 = v27;
  a3[6] = 0;
  a3[7] = v24;

  return v24;
}

uint64_t sub_1BA38BC10()
{
  sub_1B9F66454(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15[-1] - v6;
  sub_1BA31D5B4();
  sub_1BA4A4158();
  v8 = sub_1BA4A4168();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = MEMORY[0x1BFAF1F10](v7);
  MEMORY[0x1BFAF1F00](v10);
  if ((*(v9 + 48))(v3, 1, v8))
  {
    v11 = MEMORY[0x1E69DC0D8];
    sub_1BA38C18C(v3, v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v7);
    sub_1BA38C1F8(v3, &qword_1EDC6B770, v11);
  }

  else
  {
    v12 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v3);
  }

  v15[3] = sub_1BA4A4428();
  v15[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v15);
  MEMORY[0x1BFAF2040]();
  return MEMORY[0x1BFAF1EF0](v15);
}

uint64_t sub_1BA38BE10()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA38C18C(v0 + v6, v28, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v29)
  {
    return sub_1BA38C1F8(v28, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    v21 = v23[1];
    v8 = v26;
    v19 = v27;
    v22 = v0;
    MEMORY[0x1BFAF2040]();
    v9 = [objc_opt_self() secondaryLabelColor];
    v10 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v10(v23, 0);

    sub_1BA4A43B8();
    sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v11 = sub_1BA4A4238();
    sub_1BA4A41E8();
    v11(v23, 0);
    if (v8)
    {
      v12 = v8;
      sub_1BA4A43D8();
      v13 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v13(v23, 0);
      v14 = v19;
      v15 = [v19 color];
      v16 = sub_1BA4A42D8();
      sub_1BA4A42B8();
      v16(v23, 0);
    }

    else
    {
      sub_1BA4A43D8();
      v12 = 0;
      v14 = v19;
    }

    v24 = v1;
    v25 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
    MEMORY[0x1BFAF1EF0](v23);

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1BA38C18C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F66454(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA38C1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F66454(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id SummarySharingIconWithNameCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummarySharingIconWithNameCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id SummarySharingIconWithNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingIconWithNameCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SummarySharingIconWithNameCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingIconWithNameCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SummarySharingIconWithNameItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void SummarySharingIconWithNameItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SummarySharingIconWithNameItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SummarySharingIconWithNameItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *SummarySharingIconWithNameItem.category.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA38C668()
{
  v1 = v0;
  v2 = sub_1BA4A1C68();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69A3B68] || v8 == *MEMORY[0x1E69A3B90])
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

void *sub_1BA38C828()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA38C87C(uint64_t a1)
{
  v2 = sub_1BA38CB78();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA38C8C8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1680 = result;
  *algn_1EBBF1688 = v1;
  return result;
}

uint64_t sub_1BA38C984()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF1690 = result;
  *algn_1EBBF1698 = v1;
  return result;
}

uint64_t sub_1BA38CA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF16A0 = result;
  *algn_1EBBF16A8 = v1;
  return result;
}

unint64_t sub_1BA38CB34()
{
  result = qword_1EBBE9DF0;
  if (!qword_1EBBE9DF0)
  {
    type metadata accessor for SummarySharingIconWithNameCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DF0);
  }

  return result;
}

unint64_t sub_1BA38CB78()
{
  result = qword_1EBBF16B0;
  if (!qword_1EBBF16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF16B0);
  }

  return result;
}

uint64_t UIViewController.providedRestorationUserActivity.getter()
{
  sub_1B9F21ADC();
  sub_1BA38CC9C();
  v1 = v0;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v6, v8);
    v2 = v9;
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1BA38CD00(v6);
    return 0;
  }
}

unint64_t sub_1BA38CC9C()
{
  result = qword_1EDC62278[0];
  if (!qword_1EDC62278[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC62278);
  }

  return result;
}

uint64_t sub_1BA38CD00(uint64_t a1)
{
  sub_1BA38CD5C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA38CD5C(uint64_t a1)
{
  if (!qword_1EDC62270)
  {
    sub_1BA38CC9C();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC62270);
    }
  }
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(displayType:detailText:)(void *a1, uint64_t a2)
{
  v59 = a2;
  v63 = a1;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v64 = &v53 - v6;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - v20;
  v22 = sub_1BA4A2F98();
  v23 = *(v22 - 8);
  v61 = v22;
  v62 = v23;
  *&v25 = MEMORY[0x1EEE9AC00](v22, v24).n128_u64[0];
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a1 objectType];
  v60 = v27;
  sub_1BA4A2FA8();
  v29 = [a1 displayCategory];
  v30 = [v29 systemImageName];

  v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v57 = v32;
  v58 = v31;

  v33 = [a1 localization];
  v34 = [v33 displayName];

  v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v53 = v36;
  v54 = v35;

  v37 = v21;
  v56 = v21;
  sub_1B9F42CEC(a2, v21, sub_1BA2C0448);
  (*(v23 + 16))(v14, v27, v22);
  v38 = *MEMORY[0x1E69A3250];
  v39 = sub_1BA4A2B98();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v14, v38, v39);
  v41 = *(v40 + 56);
  v41(v14, 0, 1, v39);
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  v42 = swift_allocObject();
  v43 = v55;
  sub_1B9F42CEC(v37, v55, sub_1BA2C0448);
  v44 = v10;
  sub_1B9F42CEC(v14, v10, sub_1B9F20584);
  *(v42 + 5) = 0;
  *(v42 + 4) = 0;
  v45 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v46 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v46 - 8) + 56))(&v42[v45], 1, 1, v46);
  v47 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v41(&v42[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor], 1, 1, v39);
  v48 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v68 = 0;
  v69 = 0;
  v49 = v64;
  sub_1BA4A4EE8();
  (*(v65 + 32))(&v42[v48], v49, v66);
  *&v42[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v50 = v53;
  *(v42 + 2) = v54;
  *(v42 + 3) = v50;
  swift_beginAccess();
  v51 = v57;
  *(v42 + 4) = v58;
  *(v42 + 5) = v51;

  swift_beginAccess();
  sub_1BA2C047C(v43, &v42[v45], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v44, &v42[v47], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v67 = 0;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();

  sub_1B9F4C230(v59, sub_1BA2C0448);
  sub_1B9F4C230(v44, sub_1B9F20584);
  sub_1B9F4C230(v43, sub_1BA2C0448);
  sub_1B9F4C230(v14, sub_1B9F20584);
  sub_1B9F4C230(v56, sub_1BA2C0448);
  (*(v62 + 8))(v60, v61);
  return v42;
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v33 = a6;
  v34 = a1;
  v37 = a5;
  v38 = a4;
  v35 = a2;
  v36 = a3;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v32 - v14;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v32 = *a7;
  sub_1B9F42CEC(a5, v23, sub_1BA2C0448);
  sub_1B9F42CEC(a6, v19, sub_1B9F20584);
  *(v24 + 5) = 0;
  *(v24 + 4) = 0;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v26 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v28 = sub_1BA4A2B98();
  (*(*(v28 - 8) + 56))(&v24[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v40 = 0;
  v41 = 0;
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v24[v29], v15, v11);
  *&v24[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v30 = v35;
  *(v24 + 2) = v34;
  *(v24 + 3) = v30;
  swift_beginAccess();
  *(v24 + 4) = v36;
  *(v24 + 5) = v38;

  swift_beginAccess();
  sub_1BA2C047C(v23, &v24[v25], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v19, &v24[v27], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v39 = v32;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C230(v33, sub_1B9F20584);
  sub_1B9F4C230(v37, sub_1BA2C0448);
  sub_1B9F4C230(v19, sub_1B9F20584);
  sub_1B9F4C230(v23, sub_1BA2C0448);
  return v24;
}

char *DisclosureCellHeaderView.ViewModel.init(titleText:systemImageName:detailText:foregroundColor:detailsVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v36 = a6;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v33 = a1;
  v34 = a2;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v33 - v15;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2C0448(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a7;
  sub_1B9F42CEC(a5, v24, sub_1BA2C0448);
  sub_1B9F42CEC(a6, v20, sub_1B9F20584);
  *(v7 + 5) = 0;
  *(v7 + 4) = 0;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v26 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v26 - 8) + 56))(&v7[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v28 = sub_1BA4A2B98();
  (*(*(v28 - 8) + 56))(&v7[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F640E8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v41 = 0;
  v42 = 0;
  sub_1BA4A4EE8();
  (*(v13 + 32))(&v7[v29], v16, v12);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v30 = v34;
  *(v7 + 2) = v33;
  *(v7 + 3) = v30;
  swift_beginAccess();
  v31 = v38;
  *(v7 + 4) = v37;
  *(v7 + 5) = v31;

  swift_beginAccess();
  sub_1BA2C047C(v24, &v7[v25], sub_1BA2C0448);
  swift_endAccess();
  swift_beginAccess();
  sub_1BA2C047C(v20, &v7[v27], sub_1B9F20584);
  swift_endAccess();
  swift_beginAccess();
  v40 = v35;
  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F418E4();
  sub_1B9F4C230(v36, sub_1B9F20584);
  sub_1B9F4C230(v39, sub_1BA2C0448);
  sub_1B9F4C230(v20, sub_1B9F20584);
  sub_1B9F4C230(v24, sub_1BA2C0448);
  return v7;
}

char *DisclosureCellHeaderView.ViewModel.init(from:)(void *a1)
{
  sub_1B9F0A534(a1, v4);
  v2 = CellHeaderViewModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DisclosureCellHeaderView.ViewModel.deinit()
{

  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F640E8(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t DisclosureCellHeaderView.ViewModel.__deallocating_deinit()
{

  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText, sub_1BA2C0448);
  sub_1B9F4C230(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor, sub_1B9F20584);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailsVisibility;
  sub_1B9F640E8(0, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F874E0(0, &qword_1EDC6B6F8, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void DisclosureCellHeaderView.init(viewModel:hideDisclosureInDetail:)(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  DisclosureCellHeaderView.init(_:)(a3);
  v5 = a3 + *(type metadata accessor for DisclosureCellHeaderView(0) + 36);
  sub_1BA4A61A8();

  *v5 = v6;
  *(v5 + 8) = v7;
}

void DisclosureCellHeaderView.init(_:)(uint64_t a2@<X8>)
{
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;
  v3 = type metadata accessor for DisclosureCellHeaderView(0);
  v4 = *(v3 + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_1B9F82218(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 36);
  sub_1BA4A61A8();
  *v5 = v9;
  *(v5 + 8) = v10;
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F80C3C(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);

  v6 = sub_1BA4A5348();
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8;
}

uint64_t DisclosureCellHeaderView.$viewModel.getter()
{
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F80C3C(qword_1EDC663C8, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);

  return sub_1BA4A5358();
}

id sub_1BA38E2F4()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {

    return v6;
  }

  else
  {
    v10[0] = *(v0 + 40);

    sub_1BA4A6FB8();
    v8 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    v9 = sub_1BA232F2C(v10[0], 0);
    (*(v2 + 8))(v5, v1, v9);
    return v10[1];
  }
}

uint64_t sub_1BA38E460@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A5718();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F82218(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DisclosureCellHeaderView(0);
  sub_1B9F42CEC(v1 + *(v12 + 32), v11, sub_1B9F82218);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BA4A53C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1BA4A6FB8();
    v15 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BA38E664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = sub_1BA4A5778();
  LOBYTE(v30) = 0;
  sub_1BA38EA08(a1, a2, &v32);
  v25 = v38;
  v26 = v39;
  *v27 = v40[0];
  *&v27[9] = *(v40 + 9);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v19 = v32;
  v20 = v33;
  v28[6] = v38;
  v28[7] = v39;
  v29[0] = v40[0];
  *(v29 + 9) = *(v40 + 9);
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v28[0] = v32;
  v28[1] = v33;
  sub_1B9F42CEC(&v19, v43, sub_1B9F8132C);
  sub_1B9F4C230(v28, sub_1B9F8132C);
  *&v18[103] = v25;
  *&v18[119] = v26;
  *&v18[135] = *v27;
  *&v18[144] = *&v27[9];
  *&v18[39] = v21;
  *&v18[55] = v22;
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[7] = v19;
  *&v18[23] = v20;
  v6 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v7 = v32;
  v8 = sub_1B9F8474C();
  KeyPath = swift_getKeyPath();
  *&v30 = v17;
  *(&v30 + 1) = 0x4020000000000000;
  v31[0] = v6;
  *&v31[97] = *&v18[96];
  *&v31[113] = *&v18[112];
  *&v31[129] = *&v18[128];
  *&v31[145] = *&v18[144];
  *&v31[33] = *&v18[32];
  *&v31[49] = *&v18[48];
  *&v31[65] = *&v18[64];
  *&v31[81] = *&v18[80];
  *&v31[1] = *v18;
  *&v31[17] = *&v18[16];
  v40[0] = *&v31[112];
  v40[1] = *&v31[128];
  v41 = *&v31[144];
  LOBYTE(v42) = v18[159];
  v36 = *&v31[48];
  v37 = *&v31[64];
  v38 = *&v31[80];
  v39 = *&v31[96];
  v32 = v30;
  v33 = *v31;
  v34 = *&v31[16];
  v35 = *&v31[32];
  v10 = *&v31[128];
  *(a3 + 128) = *&v31[112];
  *(a3 + 144) = v10;
  *(a3 + 160) = v41;
  v11 = v42;
  v12 = v37;
  *(a3 + 64) = v36;
  *(a3 + 80) = v12;
  v13 = v39;
  *(a3 + 96) = v38;
  *(a3 + 112) = v13;
  v14 = v33;
  *a3 = v32;
  *(a3 + 16) = v14;
  v15 = v35;
  *(a3 + 32) = v34;
  *(a3 + 48) = v15;
  *(a3 + 176) = v11;
  *(a3 + 184) = v7;
  *(a3 + 200) = v8;
  *(a3 + 208) = KeyPath;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  sub_1B9F42CEC(&v30, v43, sub_1B9F811D0);

  sub_1B9F84D0C(KeyPath, 0, 0);

  sub_1B9F84D1C(KeyPath, 0, 0);
  v51 = *&v18[96];
  v52 = *&v18[112];
  v53 = *&v18[128];
  v54 = *&v18[144];
  v47 = *&v18[32];
  v48 = *&v18[48];
  v49 = *&v18[64];
  v50 = *&v18[80];
  v45 = *v18;
  v43[0] = v17;
  v43[1] = 0x4020000000000000;
  v44 = v6;
  v46 = *&v18[16];
  return sub_1B9F4C230(v43, sub_1B9F811D0);
}

uint64_t sub_1BA38EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  swift_beginAccess();
  v7 = v5[2];
  v6 = v5[3];
  swift_beginAccess();
  v9 = v5[4];
  v8 = v5[5];
  KeyPath = swift_getKeyPath();
  v29 = 0;

  v11 = sub_1B9F84ADC();
  v12 = swift_getKeyPath();
  v13 = sub_1BA4A5BA8();
  sub_1BA4A5188();
  *&v30 = v7;
  *(&v30 + 1) = v6;
  *&v31 = v9;
  *(&v31 + 1) = v8;
  *v32 = a2;
  *&v32[8] = KeyPath;
  *&v32[16] = 0;
  v33 = 0;
  *&v40[9] = *&v32[9];
  v39 = v31;
  *v40 = *v32;
  v38 = v30;
  v28 = 1;
  LOBYTE(v34) = v11;
  *(&v34 + 1) = v12;
  *&v35 = 0;
  BYTE8(v35) = 0;
  LOBYTE(v36) = v13;
  *(&v36 + 1) = v14;
  *v37 = v15;
  *&v37[8] = v16;
  *&v37[16] = v17;
  v37[24] = 0;
  *&v27[7] = v34;
  *&v27[64] = *&v37[9];
  *&v27[55] = *v37;
  *&v27[39] = v36;
  *&v27[23] = v35;
  v18 = v30;
  v19 = v31;
  v20 = *&v40[16];
  *(a3 + 32) = *v32;
  *(a3 + 48) = v20;
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  v21 = *&v27[16];
  *(a3 + 73) = *v27;
  v22 = *&v27[32];
  v23 = *&v27[48];
  *(a3 + 137) = *&v27[64];
  *(a3 + 121) = v23;
  *(a3 + 105) = v22;
  *(a3 + 89) = v21;
  v41[0] = v11;
  v42 = v12;
  v43 = 0;
  v44 = 0;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = 0;
  sub_1B9F84D2C(&v30, v25);
  sub_1B9F42CEC(&v34, v25, sub_1B9F813BC);
  sub_1B9F4C230(v41, sub_1B9F813BC);
  v25[0] = v7;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = a2;
  v25[5] = KeyPath;
  v25[6] = 0;
  v26 = 0;
  return sub_1B9F84D64(v25);
}

uint64_t sub_1BA38EC24()
{
  v1 = sub_1BA4A5718();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 56);
  v10 = *(v0 + 40);
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v7 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v10);
    (*(v2 + 8))(v5, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BA38ED90(uint64_t a1)
{
  result = sub_1B9F80C3C(qword_1EDC66200, type metadata accessor for DisclosureCellHeaderView, &protocol conformance descriptor for DisclosureCellHeaderView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA38EE18()
{
  result = qword_1EDC5ED40;
  if (!qword_1EDC5ED40)
  {
    sub_1BA38F12C(255, &qword_1EDC5ED38, sub_1B9F80FDC, sub_1B9F81298, MEMORY[0x1E697F960]);
    sub_1B9F80C3C(&qword_1EDC5EB30, sub_1B9F80FDC, MEMORY[0x1E69817F8]);
    sub_1B9F80C3C(&qword_1EDC5EA78, sub_1B9F81298, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED40);
  }

  return result;
}

uint64_t sub_1BA38EF3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BA38EF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BA38EFD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BA38F034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BA38F094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BA38F0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BA38F12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA38F1B0()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  objc_msgSendSuper2(&v9, sel_didMoveToSuperview);
  v2 = [v0 viewController];
  v3 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v2)
  {
    v4 = v2;
    UIViewController.resolvedPresentation.getter(&v8);

    if (((v8 - 4) & 0xF7) == 0)
    {
      v3 = &selRef_tertiarySystemBackgroundColor;
    }
  }

  v5 = [v1 selectedBackgroundView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() *v3];
    [v6 setBackgroundColor_];
  }
}

id CollectionViewListDisclosureCellNonSelectable.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewListDisclosureCellNonSelectable.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id CollectionViewListDisclosureCellNonSelectable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollectionViewListDisclosureCellNonSelectable.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CollectionViewListDisclosureCellNonSelectable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewListDisclosureCellNonSelectable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA38F5A0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
    swift_beginAccess();
    result = sub_1BA04B338(v0 + v3, v4);
    if (v4[3])
    {
      sub_1BA33FB50(v4);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1BA38F658()
{
  v1 = [v0 setAccessibilityTraits_];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v1);
  (*((*v2 & *v0) + 0xD0))(v3);

  return result;
}

void sub_1BA38F710(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(a1, a2);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = a1;
    v10.value._object = a2;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA38F7F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA38F848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v4);
  return sub_1BA0BD670(a1);
}

uint64_t (*sub_1BA38F8E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA38F948;
}

uint64_t sub_1BA38F948(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xC0))(result);
  }

  return result;
}

uint64_t sub_1BA38F9AC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA38FA04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_1BA38FAC4(uint64_t a1, void **a2)
{
  sub_1BA04B338(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC0))(v5);
  return sub_1BA0BD670(v7);
}

void *sub_1BA38FB64()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA38FBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA38FC68()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CellWithAccessoryViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  result = v4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [v2 addSubview_];

  result = v4();
  if (result)
  {
    v6 = result;
    v7 = [v0 view];
    [v6 hk:v7 alignConstraintsWithView:?];

    return (*((*v3 & *v0) + 0xC8))();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1BA38FE88()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA390038();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  v2 = MEMORY[0x1BFAF1350](0x6574496C6C654320, 0xEB00000000203A6DLL);
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))(v2);
  if (result)
  {
    v4 = result;
    v5 = [result accessibilityLabel];

    if (v5)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    sub_1B9F2F388();
    v6 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA390038()
{
  result = qword_1EBBF16D0;
  if (!qword_1EBBF16D0)
  {
    type metadata accessor for CellWithAccessoryViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF16D0);
  }

  return result;
}

id CellWithAccessoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CellWithAccessoryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView] = 0;
  v6 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CellWithAccessoryViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id CellWithAccessoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CellWithAccessoryViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_contentView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_baseIdentifier];
  v5 = type metadata accessor for CellWithAccessoryViewController();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id CellWithAccessoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CellWithAccessoryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA3904A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xA8))();
  return sub_1B9FCDD98;
}

void *sub_1BA3907CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD00000000000001ELL;
  v22 = 0x80000001BA503EA0;
  sub_1BA4A1788();
  sub_1BA390D20(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v5 + 8))(v8, v4);
  v10 = v22;
  *(v1 + 16) = v21;
  *(v1 + 24) = v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v11;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v21 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 72) = sub_1BA4A6808();
  *(v1 + 80) = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD000000000000011;
  *(v13 + 56) = 0x80000001BA503F20;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v2[11] = v17;
  v2[12] = v19;
  v2[13] = a1;
  return v2;
}

uint64_t sub_1BA390AA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA390B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA390BB4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA390D20(&qword_1EBBEFF08, a2, type metadata accessor for CharacteristicsDataSourceItem, &unk_1BA4D5F8C);
  *(a1 + 8) = result;
  return result;
}

void sub_1BA390C54(void *a1)
{
  v3 = *(v1 + 104);
  UIViewController.resolvedHealthExperienceStore.getter(v8);
  v4 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
  v7 = sub_1BA06F854(v3, v8);

  [v7 setAccessType_];
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }
}

uint64_t sub_1BA390D20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1BA390D68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_1BA390E60()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView);
  }

  else
  {
    v4 = sub_1BA390EC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA390EC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [v0 textContainer];
  [v2 setLineFragmentPadding_];

  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  [v0 setTextContainerInset_];
  [v0 _setInteractiveTextSelectionDisabled_];
  v7 = v0;
  [v7 setContentInset_];
  [v7 setScrollEnabled_];

  v8 = [v7 textContainer];
  [v8 setHeightTracksTextView_];

  return v7;
}

char *sub_1BA39105C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v10 setColor_];

  *&v4[v9] = v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  *&v4[v12] = sub_1BA390D68();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView] = 0;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  v14 = type metadata accessor for CloudSyncAction(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor] = 0;
  v45.receiver = v4;
  v45.super_class = type metadata accessor for ActivityIndicatorDetailView(0);
  v15 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
  v18 = v15;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  [v18 addSubview_];
  v20 = sub_1BA390E60();
  [v18 addSubview_];

  v21 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView;
  v22 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView];
  [v22 setDelegate_];

  v44 = objc_opt_self();
  sub_1B9F109F8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BA4B79E0;
  v24 = [*&v15[v16] leadingAnchor];
  v25 = [v18 &selRef__totalDistance + 1];

  v26 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v23 + 40) = v29;
  v30 = [v18 trailingAnchor];

  v31 = [*&v18[v19] trailingAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor_];

  *(v23 + 48) = v32;
  v33 = [*&v18[v21] leadingAnchor];
  v34 = [v18 leadingAnchor];

  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];
  *(v23 + 56) = v35;
  v36 = [v18 trailingAnchor];

  v37 = [*&v18[v21] trailingAnchor];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v23 + 64) = v38;
  v39 = [v18 bottomAnchor];

  v40 = [*&v18[v21] bottomAnchor];
  v41 = [v39 &selRef:v40 numberWithInteger:? + 5];

  *(v23 + 72) = v41;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v42 = sub_1BA4A6AE8();

  [v44 activateConstraints_];

  return v18;
}

id sub_1BA3915A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  *&v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14).n128_u64[0];
  v17 = &v62 - v16;
  v18 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v18 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v19 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel];
  if (v18)
  {
    v20 = sub_1BA4A6758();
    [v19 setText_];

    v21 = sub_1BA390E60();
    v22 = a3;
    v23 = a4;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel] setText_];
    v21 = sub_1BA390E60();
    v22 = a1;
    v23 = a2;
  }

  v24 = sub_1BA392040(v22, v23, a5);
  [v21 setAttributedText_];

  sub_1BA0613E4(a5, v17);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  swift_beginAccess();
  sub_1BA05D8D4(v17, &v6[v25]);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor;
  v27 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor];
  if (v27)
  {
    [v27 setActive_];
  }

  v28 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor;
  v29 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor];
  if (v29)
  {
    [v29 setActive_];
  }

  v30 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor;
  v31 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor];
  if (v31)
  {
    [v31 setActive_];
  }

  v32 = [v19 leadingAnchor];
  if (a6)
  {
    v33 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:5.0];

    v36 = *&v6[v26];
    *&v6[v26] = v35;

    v37 = [v19 centerYAnchor];
    v38 = [v33 centerYAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    v40 = *&v6[v28];
    *&v6[v28] = v39;

    v41 = sub_1BA390E60();
    v42 = [v41 topAnchor];

    v43 = [v33 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    v45 = *&v6[v30];
    *&v6[v30] = v44;

    [v33 setHidden_];
    v46 = &selRef_startAnimating;
  }

  else
  {
    v47 = [v6 leadingAnchor];
    v48 = [v32 constraintEqualToAnchor_];

    v49 = *&v6[v26];
    *&v6[v26] = v48;

    v50 = [v19 topAnchor];
    v51 = [v6 topAnchor];
    v52 = [v50 constraintEqualToAnchor_];

    v53 = *&v6[v28];
    *&v6[v28] = v52;

    v54 = sub_1BA390E60();
    v55 = [v54 topAnchor];

    v56 = [v19 bottomAnchor];
    v57 = [v55 constraintEqualToAnchor_];

    v58 = *&v6[v30];
    *&v6[v30] = v57;

    v33 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView];
    [v33 setHidden_];
    v46 = &selRef_stopAnimating;
  }

  [v33 *v46];
  v59 = *&v6[v28];
  if (v59)
  {
    [v59 setActive_];
  }

  v60 = *&v6[v26];
  if (v60)
  {
    [v60 setActive_];
  }

  result = *&v6[v30];
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

id sub_1BA391AB8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActivityIndicatorDetailView(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BA391BB4(uint64_t a1)
{
  sub_1BA393478(319, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA391DFC(uint64_t a1)
{
  result = type metadata accessor for CloudSyncTarget(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BA391E78(uint64_t a1)
{
  result = sub_1BA4A15D8();
  if (v2 <= 0x3F)
  {
    result = sub_1B9F37BB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA391EEC()
{
  sub_1BA393478(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = sub_1BA4A15D8();
  __swift_allocate_value_buffer(v4, qword_1EBBF16E0);
  v5 = __swift_project_value_buffer(v4, qword_1EBBF16E0);
  sub_1BA4A15C8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id sub_1BA392040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v91 = a1;
  v92 = a2;
  v82 = type metadata accessor for CloudSyncTarget(0);
  MEMORY[0x1EEE9AC00](v82, v3);
  v83 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BA4A15D8();
  v85 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v5);
  v84 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v76 - v9;
  v93 = type metadata accessor for CloudSyncAction(0);
  v89 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v11);
  v87 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA393478(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v19 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v86 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  v20 = *MEMORY[0x1E69DDD28];
  v21 = objc_opt_self();
  v22 = v19;
  v23 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
  }

  else
  {
    v81 = v14;
    sub_1BA4A3DD8();
    v26 = v20;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v78 = v28;
      v30 = v29;
      v77 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v96 = v79;
      *v30 = 136315906;
      v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v80 = v26;
      v33 = sub_1B9F0B82C(v31, v32, &v96);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v94 = 0;
      v95 = 1;
      sub_1BA393478(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v96);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      LODWORD(v94) = 0;
      type metadata accessor for SymbolicTraits(0);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v96);
      v26 = v80;

      *(v30 + 24) = v39;
      *(v30 + 32) = 2112;
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v30 + 34) = v40;
      v41 = v77;
      *v77 = v40;
      _os_log_impl(&dword_1B9F07000, v27, v78, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
      sub_1BA393524(v41, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      v42 = v79;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v81 + 8))(v17, v13);
    v24 = [v21 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];
  }

  v43 = v25;

  v44 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v43;
  v45 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v44;
  *(inited + 72) = v45;
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 secondaryLabelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v48;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  sub_1BA0613E4(v90, v10);
  if ((*(v89 + 48))(v10, 1, v93) == 1)
  {
    sub_1BA061448(v10);
    v49 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v50 = sub_1BA4A6758();
    type metadata accessor for Key(0);
    sub_1BA3934DC(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
    v51 = sub_1BA4A6618();

    v52 = [v49 initWithString:v50 attributes:v51];
  }

  else
  {
    v53 = v87;
    sub_1BA3933B0(v10, v87);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA393478(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v54 = swift_allocObject();
    *(v54 + 16) = v86;
    v55 = MEMORY[0x1E69E6158];
    *(v54 + 56) = MEMORY[0x1E69E6158];
    v56 = sub_1B9F1BE20();
    v57 = v92;
    *(v54 + 32) = v91;
    *(v54 + 40) = v57;
    v58 = *v53;
    v59 = v53[1];
    *(v54 + 96) = v55;
    *(v54 + 104) = v56;
    *(v54 + 64) = v56;
    *(v54 + 72) = v58;
    *(v54 + 80) = v59;

    sub_1BA4A6768();

    v60 = sub_1BA4A6758();
    v61 = sub_1BA4A6758();
    v62 = [v60 rangeOfString_];
    v64 = v63;

    v65 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v66 = sub_1BA4A6758();

    type metadata accessor for Key(0);
    sub_1BA3934DC(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
    v67 = sub_1BA4A6618();

    v52 = [v65 initWithString:v66 attributes:v67];

    if (v62 != sub_1BA4A0E88())
    {
      v68 = *MEMORY[0x1E69DB670];
      v69 = v83;
      sub_1BA393414(v53 + *(v93 + 20), v83);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BA393524(v69, type metadata accessor for CloudSyncTarget);
        v70 = v85;
        v71 = v84;
        if (qword_1EBBE88E8 != -1)
        {
          swift_once();
        }

        v72 = v88;
        v73 = __swift_project_value_buffer(v88, qword_1EBBF16E0);
        (*(v70 + 16))(v71, v73, v72);
      }

      else
      {
        v70 = v85;
        v71 = v84;
        (*(v85 + 32))(v84, v69, v88);
      }

      v74 = sub_1BA4A1548();
      (*(v70 + 8))(v71, v88);
      [v52 addAttribute:v68 value:v74 range:{v62, v64}];
    }

    sub_1BA393524(v53, type metadata accessor for CloudSyncAction);
  }

  return v52;
}

void sub_1BA392BDC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_activityIndicatorView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setColor_];

  *(v0 + v1) = v2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLabel;
  *(v0 + v4) = sub_1BA390D68();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView____lazy_storage___detailTextView) = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  v6 = type metadata accessor for CloudSyncAction(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleLeadingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_titleTopOrCenterAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_detailTextViewTopAnchor) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA392D40(uint64_t a1)
{
  v53 = a1;
  v2 = sub_1BA4A3EA8();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CloudSyncTarget(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v48 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - v10;
  v12 = sub_1BA4A15D8();
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v47 - v17;
  sub_1BA393478(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for CloudSyncAction(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI27ActivityIndicatorDetailView_action;
  swift_beginAccess();
  sub_1BA0613E4(v1 + v28, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1BA061448(v22);
    v29 = v53;
    v30 = v54;
    v31 = v52;
LABEL_12:
    v36 = v49;
    sub_1BA4A3DD8();
    (*(v31 + 16))(v30, v29, v12);
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v31;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55 = v41;
      *v40 = 136446210;
      sub_1BA3934DC(&qword_1EBBF0B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v42 = sub_1BA4A82D8();
      v44 = v43;
      (*(v39 + 8))(v30, v12);
      v45 = sub_1B9F0B82C(v42, v44, &v55);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1B9F07000, v37, v38, "Unexpected URL received in text view delegate: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v30, v12);
    }

    (*(v50 + 8))(v36, v51);
    return 0;
  }

  sub_1BA3933B0(v22, v27);
  v32 = *(v23 + 20);
  sub_1BA393414(&v27[v32], v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA393524(v11, type metadata accessor for CloudSyncTarget);
    v31 = v52;
    v29 = v53;
    if (qword_1EBBE88E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v12, qword_1EBBF16E0);
    (*(v31 + 16))(v18, v33, v12);
    v30 = v54;
  }

  else
  {
    v31 = v52;
    (*(v52 + 32))(v18, v11, v12);
    v29 = v53;
    v30 = v54;
  }

  v34 = sub_1BA4A1578();
  (*(v31 + 8))(v18, v12);
  if ((v34 & 1) == 0)
  {
    sub_1BA393524(v27, type metadata accessor for CloudSyncAction);
    goto LABEL_12;
  }

  v35 = v48;
  sub_1BA393414(&v27[v32], v48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v35)(v27);

    sub_1BA393524(v27, type metadata accessor for CloudSyncAction);
    return 0;
  }

  sub_1BA393524(v27, type metadata accessor for CloudSyncAction);
  sub_1BA393524(v35, type metadata accessor for CloudSyncTarget);
  return 1;
}

uint64_t sub_1BA3933B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA393414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSyncTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA393478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA3934DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA393524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgePreferencesHeaderView.init(specifier:)(void *a1)
{
  v72.receiver = v1;
  v72.super_class = type metadata accessor for BridgePreferencesHeaderView();
  v3 = objc_msgSendSuper2(&v72, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setPreservesSuperviewLayoutMargins_];
  v66 = a1;
  if ([a1 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  if (*(&v69 + 1))
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    if (swift_dynamicCast())
    {
      v4 = v67;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1B9F23224(&v70);
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];
  [v3 addSubview_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  v65 = objc_opt_self();
  v7 = [v65 hk:*MEMORY[0x1E69DDD58] preferredFontForTextStyle:32770 symbolicTraits:?];
  [v6 setFont_];

  if ([v66 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  v64 = v4;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = sub_1BA4A6758();

      goto LABEL_17;
    }
  }

  else
  {
    sub_1B9F23224(&v70);
  }

  v8 = 0;
LABEL_17:
  [v6 setText_];

  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  [v6 setTextColor_];

  [v6 setTextAlignment_];
  [v6 setNumberOfLines_];
  [v3 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v62 = *MEMORY[0x1E69DDCF8];
  v12 = [v65 hk_preferredFontForTextStyle_];
  [v11 setFont_];

  if ([v66 propertyForKey_])
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70 = v68;
  v71 = v69;
  if (!*(&v69 + 1))
  {
    sub_1B9F23224(&v70);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v13 = sub_1BA4A6758();

LABEL_25:
  [v11 setText_];

  v14 = [v9 whiteColor];
  [v11 setTextColor_];

  [v11 setTextAlignment_];
  [v11 setNumberOfLines_];
  [v3 &selRef_centerXAnchor];
  v63 = objc_opt_self();
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B79D0;
  v16 = [v5 topAnchor];
  v17 = [v3 layoutMarginsGuide];
  v18 = [v17 topAnchor];

  v19 = [v65 hk:*MEMORY[0x1E69DDDB8] preferredFontForTextStyle:0x8000 symbolicTraits:?];
  [v19 _scaledValueForValue_];
  v21 = v20;

  v22 = [v16 constraintEqualToAnchor:v18 constant:v21];
  *(v15 + 32) = v22;
  v23 = [v5 centerXAnchor];
  v24 = [v3 &selRef__createTableFooterView + 1];
  v25 = [v24 centerXAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v15 + 40) = v26;
  v27 = [v5 widthAnchor];
  v28 = [v5 heightAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v15 + 48) = v29;
  v30 = [v5 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v15 + 56) = v31;
  v32 = [v6 firstBaselineAnchor];
  v33 = [v5 bottomAnchor];

  v34 = [v32 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:0.72];
  *(v15 + 64) = v34;
  v35 = [v6 leadingAnchor];
  v36 = [v3 layoutMarginsGuide];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v15 + 72) = v38;
  v39 = [v6 trailingAnchor];
  v40 = [v3 layoutMarginsGuide];
  v41 = [v40 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v42 = [v39 constraintEqualToAnchor_];
  *(v15 + 80) = v42;
  v43 = [v11 firstBaselineAnchor];
  v44 = [v6 lastBaselineAnchor];

  v45 = [v65 hk:v62 preferredFontForTextStyle:?];
  [v45 _scaledValueForValue_];
  v47 = v46;

  v48 = [v43 constraintEqualToAnchor:v44 constant:v47];
  *(v15 + 88) = v48;
  v49 = [v11 leadingAnchor];
  v50 = [v3 layoutMarginsGuide];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v15 + 96) = v52;
  v53 = [v11 trailingAnchor];
  v54 = [v3 layoutMarginsGuide];
  v55 = [v54 trailingAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v15 + 104) = v56;
  v57 = [v3 bottomAnchor];

  v58 = [v11 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v15 + 112) = v59;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v60 = sub_1BA4A6AE8();

  [v63 activateConstraints_];

  return v3;
}

id BridgePreferencesHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BridgePreferencesHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgePreferencesHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double BridgePreferencesHeaderView.preferredHeight(forWidth:)(double a1)
{
  [v1 directionalLayoutMargins];
  v4 = a1 - v3;
  [v1 directionalLayoutMargins];
  v6 = v4 - v5;
  LODWORD(v7) = 1148846080;
  LODWORD(v5) = 1112014848;
  [v1 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v7, v5}];
  return v8;
}

uint64_t UICollectionViewCompositionalLayoutSectionProviding.layout(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v8 + 16))(*v9, v9[1], a2, v5);
  if (!result)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v16 = 91;
    v17 = 0xE100000000000000;
    v11 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v11);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    (*(v4 + 16))(v7, v2, a2);
    v12 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v12);

    v13 = v16;
    v14 = v17;
    sub_1B9FF806C();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA3945E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a1;
  sub_1B9F57F34(a1, a2, a4);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  LOBYTE(v4) = (*(v6 + 16))(v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4 & 1;
}

uint64_t DataSourceWithSectionItemLimit<>.layout(for:)(Swift::Int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(*v4 + 80);
  type metadata accessor for DataSourceWithSectionItemLimit(0, v8, *(*v4 + 88), a4);
  swift_unknownObjectRetain();
  v9 = SnapshotDataSource.numberOfItems(in:)(v6);
  v12[4] = sub_1B9F264D0();
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v9;
  v10 = (*(a2 + 8))(v12, v8, a2);
  swift_unknownObjectRelease();
  return v10;
}

id sub_1BA39498C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrganDonationButtonCell();
  v66.receiver = v1;
  v66.super_class = v7;
  objc_msgSendSuper2(&v66, sel_awakeFromNib);
  v8 = objc_opt_self();
  v9 = [v8 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v10 = &selRef_preferredContentSizeCategory;
  v11 = [v1 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [v8 labelColor];
    [v12 setTextColor_];
  }

  v14 = [v1 textLabel];
  if (v14)
  {
    v15 = v14;
    v16 = *MEMORY[0x1E69DDCF8];
    v17 = objc_opt_self();
    v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
    }

    else
    {
      v62 = v17;
      sub_1BA4A3DD8();
      v21 = v16;
      v22 = sub_1BA4A3E88();
      v23 = sub_1BA4A6FB8();

      v61 = v23;
      v24 = v23;
      v25 = v22;
      if (os_log_type_enabled(v22, v24))
      {
        v26 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v65 = v59;
        *v26 = 136315906;
        v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v60 = v21;
        v29 = sub_1B9F0B82C(v27, v28, &v65);
        v58 = v3;
        v30 = v29;

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v63 = 0;
        v64 = 1;
        sub_1BA1508E8(0);
        v31 = sub_1BA4A6808();
        v33 = sub_1B9F0B82C(v31, v32, &v65);

        *(v26 + 14) = v33;
        *(v26 + 22) = 2080;
        LODWORD(v63) = 0;
        type metadata accessor for SymbolicTraits(0);
        v34 = sub_1BA4A6808();
        v36 = sub_1B9F0B82C(v34, v35, &v65);
        v21 = v60;

        *(v26 + 24) = v36;
        *(v26 + 32) = 2112;
        v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v26 + 34) = v37;
        v38 = v57;
        *v57 = v37;
        _os_log_impl(&dword_1B9F07000, v25, v61, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
        sub_1B9F44534(v38, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        v39 = v59;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        v40 = v26;
        v10 = &selRef_preferredContentSizeCategory;
        MEMORY[0x1BFAF43A0](v40, -1, -1);

        (*(v58 + 8))(v6, v2);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      v19 = [v62 preferredFontDescriptorWithTextStyle_];
      v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
    }

    v41 = v20;

    [v15 setFont_];
  }

  v42 = [v1 v10[226]];
  if (v42)
  {
    v43 = v42;
    [v42 setNumberOfLines_];
  }

  v44 = [v1 v10[226]];
  if (v44)
  {
    v45 = v44;
    [v44 setAdjustsFontForContentSizeCategory_];
  }

  v46 = [objc_opt_self() isRunningStoreDemoMode];
  v47 = [v1 v10[226]];
  v48 = v47;
  if (v46)
  {
    if (v47)
    {
      v49 = [v8 systemGrayColor];
      [v48 setTextColor_];
    }

    [v1 setUserInteractionEnabled_];
  }

  else
  {
    if (v47)
    {
      v50 = [v8 systemBlueColor];
      [v48 setTextColor_];
    }

    v51 = [v1 v10[226]];
    if (v51)
    {
      v52 = v51;
      v53 = [v8 systemBlueColor];
      v54 = [v53 colorWithAlphaComponent_];

      [v52 setHighlightedTextColor_];
    }
  }

  return [v1 setSelectionStyle_];
}

uint64_t sub_1BA39502C()
{
  if ([objc_opt_self() isRunningStoreDemoMode])
  {
    v1 = [v0 textLabel];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_opt_self() systemGrayColor];
      [v2 setTextColor_];
    }

    [v0 setUserInteractionEnabled_];
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v4, v14);
  if (!v15)
  {
    sub_1B9F44534(v14, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  if (!*(&v12 + 1))
  {
    return sub_1B9F44534(&v11, &qword_1EBBF1778, &qword_1EBBF1780, &protocol descriptor for SectionedDataSourceItemTitleProviding, sub_1B9F0D950);
  }

  sub_1B9F1134C(&v11, v14);
  v5 = [v0 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v8 + 8))(v7, v8);
    v9 = sub_1BA4A6758();

    [v6 setText_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_1BA3952AC(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, SEL *a6)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58, 0x1E69DD190);
  sub_1BA3955EC();
  sub_1BA4A6D78();
  v10 = a1;
  v11 = a4;
  v12 = [v10 textLabel];
  if (v12)
  {
    v13 = a5 & 1;
    v14 = v12;
    [v12 setHighlighted_];
  }

  v15 = sub_1BA4A6D68();

  v16.receiver = v10;
  v16.super_class = type metadata accessor for OrganDonationButtonCell();
  objc_msgSendSuper2(&v16, *a6, v15, v11);
}

id sub_1BA3953BC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OrganDonationButtonCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA395464@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA3954BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23OrganDonationButtonCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA39502C();
  return sub_1B9F44534(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA395554(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3955B8;
}

uint64_t sub_1BA3955B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA39502C();
  }

  return result;
}

unint64_t sub_1BA3955EC()
{
  result = qword_1EBBF1788;
  if (!qword_1EBBF1788)
  {
    sub_1B9F0ADF8(255, &qword_1EBBECB58, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF1788);
  }

  return result;
}

uint64_t ResearchStudySourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1BA395684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD000000000000023;
  v22 = 0x80000001BA504210;
  sub_1BA4A1788();
  sub_1BA396138(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  (*(v5 + 8))(v8, v4);
  v10 = v22;
  *(v1 + 16) = v21;
  *(v1 + 24) = v10;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v11;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v21 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v12;
  sub_1B9F25350();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD000000000000018;
  *(v13 + 56) = 0x80000001BA5042D0;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v2[12] = v17;
  v2[13] = v19;
  v2[9] = a1;
  return v2;
}

void sub_1BA395958(uint64_t a1, void *a2)
{
  v4 = [*(v2 + 72) viewControllerFactory];
  v5 = [v4 createResearchStudySourcesViewControllerUsingInsetStyling:1 restorationStudyBundleIdentifier:0];

  type metadata accessor for ProfileViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v11 = a2;
    v8 = [v7 navigationController];
    [v8 pushViewController:v5 animated:1];
  }

  else
  {
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      [a2 showAdaptively:v9 sender:a2];
    }

    else
    {
      v10 = [a2 navigationController];
      [v10 pushViewController:v5 animated:1];
    }
  }
}

void sub_1BA395AC0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [*(v4 + 72) viewControllerFactory];
  if (a3)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 createResearchStudySourcesViewControllerUsingInsetStyling:1 restorationStudyBundleIdentifier:v9];

  type metadata accessor for ProfileViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v16 = a1;
    v13 = [v12 navigationController];
    [v13 pushViewController:v10 animated:a4 & 1];
  }

  else
  {
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      [a1 showAdaptively:v14 sender:a1];
    }

    else
    {
      v15 = [a1 navigationController];
      [v15 pushViewController:v10 animated:a4 & 1];
    }
  }
}

uint64_t ResearchStudySourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t ResearchStudySourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA395DAC(uint64_t a1, uint64_t a2)
{
  result = sub_1BA396138(&qword_1EDC61AC0, a2, type metadata accessor for ResearchStudySourcesDataSourceItem, &protocol conformance descriptor for ResearchStudySourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA395E04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA396138(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s18HealthExperienceUI31SearchSectionDataSourceProviderC38makeCategoriesFetchedResultsController7context14sourceProfilesSo09NSFetchedlM0Cy0A8Platform8FeedItemCGSo22NSManagedObjectContextC_SayAI0G7ProfileOGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - v5;
  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B8B60;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v7 + 40) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1 selector:sel_localizedStandardCompare_];

  *(v7 + 48) = v16;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BE8], v17);
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = MEMORY[0x1BFAED020](v20, 0, v6, a2);

  sub_1B9F1C1B0(v6);
  v23 = sub_1BA4A7558();

  return v23;
}

uint64_t CellSwipeConfigurationProviding<>.leadingSwipeActionsConfigurationProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE98F8, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
  return 0;
}

uint64_t CellSwipeConfigurationProviding<>.trailingSwipeActionsConfigurationProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  if (v7[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
    if (swift_dynamicCast())
    {
      v3 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v4 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        v5 = (*(v4 + 16))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(&v8);
        return v5;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_1B9F43A50(&v8, &qword_1EBBE98F8, &qword_1EBBE9900, &protocol descriptor for CellSwipeConfigurationProviding);
  return 0;
}

id sub_1BA3967F8(void *a1)
{
  v1 = a1;
  v2 = UIViewController.resolvedHealthToolbox.getter();

  return v2;
}

id UIViewController.resolvedHealthToolbox.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA396A9C();
  if (!result)
  {
    sub_1BA4A3DD8();
    v8 = v0;
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22[0] = v12;
      v22[1] = ObjectType;
      *v11 = 136446466;
      swift_getMetatypeMetadata();
      v13 = sub_1BA4A6808();
      v15 = sub_1B9F0B82C(v13, v14, v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = UIViewController.resolutionDebugDescription.getter();
      v18 = sub_1B9F0B82C(v16, v17, v22);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s]: No HealthToolbox could be resolved in hierarchy: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v19 = objc_opt_self();
    v20 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v21 = [v19 sharedInstanceForHealthStore_];

    return v21;
  }

  return result;
}

id sub_1BA396A9C()
{
  v1 = sub_1B9F21ADC();
  v22 = v1;
  v21[0] = v0;
  sub_1B9F0AD9C(v21, v17);
  sub_1BA396D64();
  v2 = v0;
  if (swift_dynamicCast())
  {
    v3 = *(&v19 + 1);
    v4 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v5;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BA396DC8(&v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v6 = sub_1BA096838();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v22 = v1;
      v21[0] = v10;
      sub_1B9F0AD9C(v21, v17);
      if (swift_dynamicCast())
      {
        v13 = *(&v19 + 1);
        v14 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        v5 = (*(v14 + 8))(v13, v14);
        __swift_destroy_boxed_opaque_existential_1(&v18);
        __swift_destroy_boxed_opaque_existential_1(v21);

        return v5;
      }

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      sub_1BA396DC8(&v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      ++v9;
    }

    while (v11 != v8);
  }

  v12 = [v2 parentViewController];
  if (!v12)
  {
    v12 = [v2 presentingViewController];
    if (!v12)
    {
      return 0;
    }
  }

  v15 = v12;
  v5 = [v12 resolvedHealthToolbox];

  return v5;
}

unint64_t sub_1BA396D64()
{
  result = qword_1EDC6DE78;
  if (!qword_1EDC6DE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6DE78);
  }

  return result;
}

uint64_t sub_1BA396DC8(uint64_t a1)
{
  sub_1BA396E24(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA396E24(uint64_t a1)
{
  if (!qword_1EDC6DE70)
  {
    sub_1BA396D64();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6DE70);
    }
  }
}

uint64_t DataTypeDetailFeatureStatusDataSource.init(healthStore:pinnedContentManager:managedObjectContext:hkType:container:)(void *a1, void *a2, void *a3, void *a4, char *a5, __n128 a6)
{
  v7 = v6;
  v32 = *v6;
  v12 = *a5;
  v13 = sub_1BA39B568(a3, a4, a6);
  sub_1B9F0A534(a2, v35);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_1B9F1134C(v35, v14 + 24);
  *(v14 + 64) = v12;
  *(v14 + 72) = v32;
  sub_1BA1F2BF8(0);
  swift_allocObject();
  v15 = v13;
  v16 = a1;
  v17 = sub_1B9F17A68(v15, sub_1BA39B9A8, v14, 0);

  v18 = OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_mainDataSource;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_mainDataSource) = v17;
  v20 = sub_1BA39B568(a3, a4, v19);
  sub_1B9F0A534(a2, v35);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  sub_1B9F1134C(v35, v21 + 24);
  *(v21 + 64) = v12;
  *(v21 + 72) = v32;
  swift_allocObject();
  v22 = v16;
  v23 = sub_1B9F17A68(v20, sub_1BA39B9BC, v21, 0);
  sub_1BA39B9D0(0, v24);
  swift_allocObject();
  v25 = sub_1BA048508(v23, 1);

  sub_1BA39BA0C(0, &qword_1EDC69048, sub_1BA39B9D0, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for CellRegistering);
  v26 = swift_allocObject();
  v26[4] = v25;
  v26[5] = sub_1BA39971C;
  v26[6] = 0;
  v27 = v25[5];
  v28 = v25[6];
  v26[2] = v27;
  v26[3] = v28;
  *(v7 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_footerDataSource) = v26;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5460;
  *(v29 + 32) = *(v7 + v18);
  *(v29 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v29 + 48) = v26;
  *(v29 + 56) = &protocol witness table for CellRegistering<A>;

  v30 = CompoundSectionedDataSource.init(_:)(v29);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v30;
}

uint64_t sub_1BA397214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v26 = a4;
  v8 = type metadata accessor for ContentConfigurationItem(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39BAF8(0, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v25 - v14;
  v16 = sub_1BA4A30B8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3975A0(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BA39BE98(v15, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720], sub_1BA39BAF8);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_1B9F0A534(a1, v28);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v21 = v27;
      v28[0] = a5 & 1;
      sub_1BA397CD0(v20, v27, a3, v26, v28, v11);
      sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BA4B5480;
      *(v22 + 56) = v8;
      *(v22 + 64) = sub_1B9F25508(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
      sub_1BA39BDE8(v11, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);

      (*(v17 + 8))(v20, v16);
      return v22;
    }

    (*(v17 + 8))(v20, v16);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BA3975A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v49[-v8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49[-v12];
  sub_1B9F0A534(a1, v54);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v14 = v52[0];
    v15 = [v52[0] userData];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BA4A1608();
      v19 = v18;

      sub_1B9F206D4(v17, v19);
      sub_1BA4A3088();
      v47 = sub_1BA4A30B8();
      (*(*(v47 - 8) + 56))(v51, 0, 1, v47);
      sub_1B9F2BB4C(v17, v19);

      return;
    }

    sub_1BA4A3E28();
    v34 = v14;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54[0] = v50;
      *v37 = 136446466;
      v38 = sub_1BA4A85D8();
      v40 = sub_1B9F0B82C(v38, v39, v54);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      v41 = [v34 uniqueIdentifier];
      v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v44 = v43;

      v45 = sub_1B9F0B82C(v42, v44, v54);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1B9F07000, v35, v36, "%{public}s Invalid Model. Could not access feed item user data: %{public}s", v37, 0x16u);
      v46 = v50;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    else
    {
    }

    v32 = *(v4 + 8);
    v33 = v13;
    goto LABEL_11;
  }

  sub_1BA4A3E28();
  sub_1B9F0A534(a1, v54);
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FB8();
  if (!os_log_type_enabled(v20, v21))
  {

    __swift_destroy_boxed_opaque_existential_1(v54);
    v32 = *(v4 + 8);
    v33 = v9;
LABEL_11:
    v32(v33, v3);
    goto LABEL_12;
  }

  v22 = swift_slowAlloc();
  v23 = v3;
  v24 = swift_slowAlloc();
  v53 = v24;
  *v22 = 136446466;
  v25 = sub_1BA4A85D8();
  v27 = sub_1B9F0B82C(v25, v26, &v53);

  *(v22 + 4) = v27;
  *(v22 + 12) = 2082;
  sub_1B9F0A534(v54, v52);
  v28 = sub_1BA4A6808();
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_1(v54);
  v31 = sub_1B9F0B82C(v28, v30, &v53);

  *(v22 + 14) = v31;
  _os_log_impl(&dword_1B9F07000, v20, v21, "%{public}s: Invalid Model. Expected feed item, received: %{public}s", v22, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1BFAF43A0](v24, -1, -1);
  MEMORY[0x1BFAF43A0](v22, -1, -1);

  (*(v4 + 8))(v9, v23);
LABEL_12:
  v48 = sub_1BA4A30B8();
  (*(*(v48 - 8) + 56))(v51, 1, 1, v48);
}

id sub_1BA397CD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v144 = a4;
  v145 = a3;
  v158 = a2;
  v153 = a6;
  v9 = MEMORY[0x1E69E6720];
  sub_1BA39BAF8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v146 = &v130 - v12;
  v156 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v156, v13);
  v155 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v148 = &v130 - v17;
  sub_1BA39BAF8(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v9);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v138 = &v130 - v20;
  v140 = sub_1BA4A3FB8();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v21);
  v136 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BA4A3F18();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v23);
  v134 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1BA4A4428();
  v162 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v25);
  v27 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A2A88();
  v29 = *(v28 - 8);
  v30 = v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v147 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v154 = &v130 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v163 = &v130 - v38;
  *&v164 = 0;
  v152 = *a5;
  *(&v164 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v164 = 0xD00000000000001DLL;
  *(&v164 + 1) = 0x80000001BA504460;
  v39 = sub_1BA4A30A8();
  MEMORY[0x1BFAF1350](v39);

  v150 = *(&v164 + 1);
  v151 = v164;
  sub_1BA4A3018();
  sub_1BA4A4418();
  v132 = a1;
  sub_1BA4A30A8();
  sub_1BA4A43B8();
  v40 = objc_opt_self();
  v41 = [v40 labelColor];
  v42 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v42(&v164, 0);
  v131 = v40;
  v43 = [v40 secondaryLabelColor];
  v44 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v44(&v164, 0);
  v159 = v27;
  sub_1BA4A4188();
  sub_1BA39BAF8(0, &qword_1EBBF1798, MEMORY[0x1E69A31E0], MEMORY[0x1E69E6F90]);
  v45 = *(v29 + 72);
  v46 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1BA4B9FD0;
  v48 = v47 + v46;
  LODWORD(v44) = *MEMORY[0x1E69A31D0];
  v49 = *(v30 + 104);
  v49((v47 + v46), *MEMORY[0x1E69A31D0], v28);
  v50 = *MEMORY[0x1E69A31D8];
  v49((v48 + v45), *MEMORY[0x1E69A31D8], v28);
  v51 = *MEMORY[0x1E69A31B8];
  v142 = v30 + 104;
  v141 = v49;
  v49((v48 + 2 * v45), v51, v28);
  v52 = sub_1B9FF75CC(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v53 = v163;
  v149 = v52;
  v54 = sub_1BA3D33B0(v163, v52);
  v55 = v30;
  v56 = *(v30 + 16);
  v57 = v154;
  v56(v154, v53, v28);
  v160 = v55;
  v161 = v28;
  v58 = (*(v55 + 88))(v57, v28);
  v143 = v44;
  if (v58 == v44)
  {
    v59 = v54;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v60 = v159;
    sub_1BA4A41A8();
    sub_1BA39BAF8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1BA4B5480;
    v62 = v135;
    v63 = v134;
    v64 = v137;
    (*(v135 + 104))(v134, *MEMORY[0x1E69DBF28], v137);
    v65 = sub_1BA4A3F48();
    (*(*(v65 - 8) + 56))(v138, 1, 1, v65);
    v66 = v136;
    sub_1BA4A3FA8();
    v154 = v61;
    sub_1BA4A3F78();
    (*(v139 + 8))(v66, v140);
    (*(v62 + 8))(v63, v64);
    v67 = v158;
    v69 = v155;
    v68 = v156;
    if (v59)
    {
      goto LABEL_16;
    }

LABEL_12:

    v73 = 0;
    v74 = v157;
    goto LABEL_37;
  }

  if (v58 == v50)
  {
    sub_1BA4A3028();
    v60 = v159;
    sub_1BA4A41A8();
    v70 = [v131 systemBlueColor];
    v71 = v54;
    v72 = sub_1BA4A4318();
    sub_1BA4A41F8();
    (v72)(&v164, 0);
    LOBYTE(v72) = v71;
    v154 = MEMORY[0x1E69E7CC0];
    v67 = v158;
    v69 = v155;
    v68 = v156;
    if ((v72 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v67 = v158;
    v69 = v155;
    v68 = v156;
    if (v58 == *MEMORY[0x1E69A31C8] || v58 == *MEMORY[0x1E69A31C0])
    {
      v60 = v159;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      sub_1BA4A41A8();
      v154 = MEMORY[0x1E69E7CC0];
      if (v54)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    (*(v160 + 8))(v57, v161);
    v154 = MEMORY[0x1E69E7CC0];
    v60 = v159;
    if ((v54 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_16:
  sub_1B9F0A534(v144, &v164);
  *v69 = xmmword_1BA4B7EA0;
  *(v69 + 16) = xmmword_1BA4B7EA0;
  v75 = v68[11];
  v76 = sub_1BA4A22F8();
  (*(*(v76 - 8) + 56))(v69 + v75, 1, 1, v76);
  v77 = (v69 + v68[13]);
  *v77 = 0;
  v77[1] = 0;
  v78 = [v67 userData];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1BA4A1608();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*v69, *(v69 + 8));
  *v69 = v80;
  *(v69 + 8) = v82;
  v83 = [v67 actionHandlerUserData];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1BA4A1608();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*(v69 + 16), *(v69 + 24));
  *(v69 + 16) = v85;
  *(v69 + 24) = v87;
  v88 = v145;
  *(v69 + 32) = v145;
  sub_1B9F0A534(&v164, v69 + 48);
  v89 = v88;
  v90 = [v67 uniqueIdentifier];
  v91 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v93 = v92;

  *(v69 + 88) = v91;
  *(v69 + 96) = v93;
  sub_1BA4A26B8();
  v94 = v146;
  sub_1BA4A2788();
  sub_1B9F6ACA0(v94, v69 + v75);
  *(v69 + 40) = 4;
  v95 = [v67 baseAutomationIdentifier];
  if (v95)
  {
    v96 = v95;
    v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v99 = v98;
  }

  else
  {
    v97 = 0;
    v99 = 0;
  }

  v100 = v148;
  v101 = (v69 + v68[12]);
  *v101 = v97;
  v101[1] = v99;
  if (FeedItem.pluginInfo.getter())
  {
    v102 = sub_1BA4A3AD8();

    v103 = [v67 actionHandlerClassName];
    if (v103)
    {
      v104 = v103;
      v105 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v107 = v106;

      __swift_destroy_boxed_opaque_existential_1(&v164);
      v108 = swift_allocObject();
      *(v108 + 2) = v102;
      *(v108 + 3) = v105;
      *(v108 + 4) = v107;
      v100 = v148;
      *v77 = sub_1BA39BEF8;
      v77[1] = v108;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v164);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v164);
  }

  sub_1BA39BDE8(v69, v100, type metadata accessor for BasicFeedItemViewControllerContext);
  v109 = v147;
  v110 = v161;
  v141(v147, v143, v161);
  sub_1B9F25508(&qword_1EBBE9D90, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F8]);
  v111 = sub_1BA4A6728();
  (*(v160 + 8))(v109, v110);
  v60 = v159;
  if (v111)
  {
    result = [objc_opt_self() sharedBehavior];
    v74 = v157;
    if (!result)
    {
      __break(1u);
      return result;
    }

    v113 = result;

    v114 = [v113 isiPad];

    if (v114)
    {
      v115 = 1;
    }

    else
    {
      v115 = 2;
    }
  }

  else
  {

    v115 = 1;
    v74 = v157;
  }

  v116 = swift_allocObject();
  *(v116 + 16) = v133;
  v165 = v68;
  v166 = &protocol witness table for BasicFeedItemViewControllerContext;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v164);
  sub_1BA39BDE8(v100, boxed_opaque_existential_1, type metadata accessor for BasicFeedItemViewControllerContext);
  type metadata accessor for PlatformActionCellSelectionHandler();
  v73 = swift_allocObject();
  *(v73 + 80) = 0;
  sub_1B9F1134C(&v164, v73 + 16);
  *(v73 + 56) = sub_1BA39BE50;
  *(v73 + 64) = v116;
  *(v73 + 72) = v115;
LABEL_37:
  v165 = v74;
  v166 = MEMORY[0x1E69DC110];
  v118 = __swift_allocate_boxed_opaque_existential_1(&v164);
  (*(v162 + 16))(v118, v60, v74);
  if (v73)
  {
    v119 = type metadata accessor for PlatformActionCellSelectionHandler();
    v120 = &off_1F381BC78;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v121 = type metadata accessor for ContentConfigurationItem(0);
  v122 = v121[10];
  v123 = sub_1BA4A4168();
  v124 = v153;
  (*(*(v123 - 8) + 56))(v153 + v122, 1, 1, v123);

  v125 = sub_1BA39BB5C(v67);
  v127 = v126;

  (*(v162 + 8))(v60, v74);
  (*(v160 + 8))(v163, v161);
  *(v124 + v121[12]) = 0;
  *(v124 + v121[13]) = 0;
  v128 = v150;
  *v124 = v151;
  *(v124 + 8) = v128;
  result = sub_1B9F1134C(&v164, v124 + 72);
  *(v124 + 112) = v152;
  *(v124 + 120) = v154;
  *(v124 + 16) = v73;
  *(v124 + 24) = 0;
  *(v124 + 32) = 0;
  *(v124 + 40) = v119;
  *(v124 + 48) = v120;
  *(v124 + 56) = v125;
  *(v124 + 64) = v127;
  v129 = (v124 + v121[11]);
  *v129 = 0;
  v129[1] = 0;
  return result;
}

void *sub_1BA398D28(uint64_t a1, __n128 a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  sub_1BA39BAF8(0, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v41 - v12;
  v14 = sub_1BA4A30B8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3975A0(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BA39BE98(v13, &qword_1EDC6AD18, MEMORY[0x1E69A3398], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_1B9F0A534(a1, v62);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v15 + 8))(v18, v14);
    return MEMORY[0x1E69E7CC0];
  }

  v19 = v61;
  LOBYTE(v48) = a6 & 1;
  sub_1BA39929C(v18, v61, a4, a5, &v48, &v52);
  v20 = v53;
  if (v53)
  {
    v21 = v52;
    v22 = sub_1BA0712A8();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v20;
    v24 = v59;
    *(v23 + 96) = v58;
    *(v23 + 112) = v24;
    *(v23 + 128) = v60;
    v25 = v55;
    *(v23 + 32) = v54;
    *(v23 + 48) = v25;
    v26 = v57;
    *(v23 + 64) = v56;
    *(v23 + 80) = v26;
    v27 = &type metadata for TextViewItem;
  }

  else
  {
    v23 = 0;
    v27 = 0;
    v22 = 0;
    v51[1] = 0;
    v51[2] = 0;
  }

  v51[0] = v23;
  v51[3] = v27;
  v51[4] = v22;
  sub_1BA39BD0C(&v52, &v48, &unk_1EBBF1790, &type metadata for TextViewItem, MEMORY[0x1E69E6720], sub_1B9F232F8);
  sub_1BA39BD80(v51, &v48, sub_1B9FCD694);
  v43[0] = v48;
  v43[1] = v49;
  v44 = v50;
  if (*(&v49 + 1))
  {
    sub_1B9F1134C(v43, v45);
    v29 = MEMORY[0x1E69E7CC0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v29;
    *&v43[0] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1B9F281E8(0, v29[2] + 1, 1, v29);
      *&v43[0] = v31;
    }

    v33 = v31[2];
    v32 = v31[3];
    v41 = v19;
    if (v33 >= v32 >> 1)
    {
      v42 = sub_1B9F281E8((v32 > 1), v33 + 1, 1, v31);
      *&v43[0] = v42;
    }

    else
    {
      v42 = v31;
    }

    v34 = v46;
    v35 = v47;
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v37 = MEMORY[0x1EEE9AC00](v36, v36);
    v39 = &v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    sub_1B9F1C4F4(v33, v39, v43, v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v19 = v41;
  }

  else
  {
    sub_1B9F5AD44(v43, sub_1B9FCD694);
    v42 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F5AD44(v51, sub_1B9FCD694);
  sub_1BA39BE98(&v52, &unk_1EBBF1790, &type metadata for TextViewItem, MEMORY[0x1E69E6720], sub_1B9F232F8);
  (*(v15 + 8))(v18, v14);
  return v42;
}

void sub_1BA39929C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a4;
  v49 = a3;
  v54 = a2;
  v9 = sub_1BA4A1798();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1BA4A30B8();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v53, v14);
  v15 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A2A88();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a5;
  v21 = sub_1BA4A3038();
  if (v22)
  {
    v45 = v21;
    v46 = v22;
    sub_1BA4A3018();
    v23 = (*(v17 + 88))(v20, v16);
    if (v23 == *MEMORY[0x1E69A31C8] || v23 == *MEMORY[0x1E69A31C0])
    {
      *&v56[0] = sub_1BA39BB5C(v54);
      *(&v56[0] + 1) = v25;
      MEMORY[0x1BFAF1350](0x7265746F6F462ELL, 0xE700000000000000);
      v43 = *(&v56[0] + 1);
      v44 = *&v56[0];
      (*(v12 + 16))(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v53);
      sub_1B9F0A534(v47, v56);
      v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
      v47 = v9;
      v31 = swift_allocObject();
      (*(v12 + 32))(v31 + v26, v15, v53);
      v33 = v48;
      v32 = v49;
      *(v31 + v27) = v48;
      *(v31 + v28) = v32;
      sub_1B9F1134C(v56, v31 + v29);
      v34 = v54;
      *(v31 + v30) = v54;
      *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
      strcpy(v55, "TextViewItem_");
      HIWORD(v55[1]) = -4864;
      v35 = v32;
      v36 = v34;

      v37 = v51;
      sub_1BA4A1788();
      sub_1B9F25508(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v38 = v47;
      v39 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v39);

      (*(v52 + 8))(v37, v38);

      v40 = v55[1];
      *a6 = v55[0];
      *(a6 + 8) = v40;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      *(a6 + 40) = 0;
      *(a6 + 48) = 0;
      *(a6 + 32) = -1;
      *(a6 + 56) = -1;
      v41 = v46;
      *(a6 + 64) = v45;
      *(a6 + 72) = v41;
      *(a6 + 80) = sub_1BA39BC30;
      *(a6 + 88) = v31;
      *(a6 + 96) = v50;
      v42 = v43;
      *(a6 + 104) = v44;
      *(a6 + 112) = v42;
    }

    else
    {

      *(a6 + 112) = 0;
      *(a6 + 80) = 0u;
      *(a6 + 96) = 0u;
      *(a6 + 48) = 0u;
      *(a6 + 64) = 0u;
      *(a6 + 16) = 0u;
      *(a6 + 32) = 0u;
      *a6 = 0u;
      (*(v17 + 8))(v20, v16);
    }
  }

  else
  {
    *(a6 + 112) = 0;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
  }
}

void *sub_1BA399740(uint64_t *a1)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  if (qword_1EDC6CB88 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  v16 = __swift_project_value_buffer(v11, qword_1EDC6CB90);
  sub_1BA39BD80(v16, v13, type metadata accessor for ListLayoutConfiguration);
  if (!v15)
  {
    v17 = *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI37DataTypeDetailFeatureStatusDataSource_footerDataSource) + 32);
    v18 = qword_1EDC84B68;
    swift_beginAccess();
    (*(v5 + 16))(v8, v17 + v18, v4);
    v19 = sub_1BA4A4538();
    (*(v5 + 8))(v8, v4);
    v20 = *(v19 + 16);

    if (v20)
    {
      *(v13 + 8) = 0;
    }
  }

  v21 = ListLayoutConfiguration.layout(for:)(v14);
  sub_1B9F5AD44(v13, type metadata accessor for ListLayoutConfiguration);
  return v21;
}

void sub_1BA399978(void *a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8 && a1)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    v27 = a1;
    v11(ObjectType, v9);
    v12 = v27;
  }

  else
  {
    sub_1BA4A3E28();
    v13 = a1;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136315394;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v28);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = v13;
      v21 = [v20 description];
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v23;

      v25 = sub_1B9F0B82C(v22, v24, &v28);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v14, v15, "%s Unexpected action handler! %s", v16, 0x16u);
      v26 = v27;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_1BA399C30(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9)
{
  v54 = a2;
  sub_1BA39BAF8(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v52 - v16;
  v18 = sub_1BA4A3EA8();
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - v24;
  if ((sub_1BA4A3008() & 1) == 0 || HKImproveHealthAndActivityAnalyticsAllowed())
  {
    sub_1BA39A1A0(a3, a1);
  }

  v26 = sub_1BA39ACE0(a6, a7, a8, a1);
  if (v26 && (swift_getObjectType(), (v27 = swift_conformsToProtocol2()) != 0))
  {
    v28 = v27;
    sub_1BA4A3E28();
    v29 = a8;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55 = v33;
      *v32 = 136315395;
      v34 = sub_1BA4A85D8();
      v36 = sub_1B9F0B82C(v34, v35, &v55);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2081;
      v37 = [v29 uniqueIdentifier];
      v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v40 = v39;

      v41 = sub_1B9F0B82C(v38, v40, &v55);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B9F07000, v30, v31, "%s Action handler for feed item %{private}s supports footer link tapping, will let action handler handle action", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    (*(v52 + 8))(v25, v53);
    ObjectType = swift_getObjectType();
    (*(v28 + 16))(v54, ObjectType, v28);
  }

  else
  {
    sub_1BA4A3E28();
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315138;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, &v55);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B9F07000, v43, v44, "%s Action handler does not support footer link tapping, will open URL normally", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    (*(v52 + 8))(v21, v53);
    sub_1BA39BD0C(v54, v17, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    v50 = sub_1BA4A15D8();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v17, 1, v50) == 1)
    {

      sub_1BA39BE98(v17, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA39BAF8);
    }

    else
    {
      sub_1BA4A1538();

      (*(v51 + 8))(v17, v50);
    }
  }
}

uint64_t sub_1BA39A1A0(uint64_t a1, uint64_t a2)
{
  v118 = a1;
  v114 = sub_1BA4A30B8();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v2);
  v4 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v101 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v112 = &v101 - v14;
  v116 = sub_1BA4A3EA8();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v15);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v101 - v20;
  v22 = sub_1BA4A2A88();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v101 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v101 - v33;
  type metadata accessor for DataTypeDetailViewController();
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    v37 = v35;
    swift_beginAccess();
    sub_1B9F0A534(v37 + v36, &v121);
    v111 = v21;
    v38 = *(&v122 + 1);
    v39 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    v108 = (*(v39 + 24))(v38, v39);
    v104 = v40;
    __swift_destroy_boxed_opaque_existential_1(&v121);
    v106 = sub_1BA4A3048();
    sub_1BA4A3018();
    sub_1BA4A2F48();
    v109 = sub_1BA4A2F38();
    LOBYTE(v38) = sub_1BA4A2F28();
    v41 = *(v23 + 16);
    v41(v30, v34, v22);
    v41(v26, v34, v22);

    sub_1BA4A2A68();
    v107 = sub_1BA4A6758();

    sub_1BA4A2A68();
    v105 = sub_1BA4A6758();

    sub_1B9F25508(&qword_1EBBE9D90, MEMORY[0x1E69A31E0], MEMORY[0x1E69A31F8]);
    v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v102 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v42 = sub_1BA4A6758();

    v43 = v108;
    v44 = v104;
    *&v121 = v108;
    *(&v121 + 1) = v104;
    sub_1BA1DB8CC(v38 & 1);

    v45 = sub_1BA4A6758();

    v46 = *(v23 + 8);
    v46(v26, v22);
    v46(v30, v22);
    v46(v34, v22);
    *&v121 = v42;
    *(&v121 + 1) = v45;
    v47 = v111;
    *&v122 = v107;
    *(&v122 + 1) = v105;
    *&v123 = v103;
    *(&v123 + 1) = v102;
    *&v124 = v43;
    *(&v124 + 1) = v44;
    sub_1BA4A3E58();
    v48 = v113;
    v49 = *(v113 + 16);
    v50 = v112;
    v51 = v118;
    v52 = v114;
    v49(v112, v118, v114);
    v49(v117, v51, v52);
    v53 = sub_1BA4A3E88();
    v54 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v119[0] = v56;
      *v55 = 136446979;
      *&v120[0] = v110;
      swift_getMetatypeMetadata();
      v57 = sub_1BA4A6808();
      v59 = sub_1B9F0B82C(v57, v58, v119);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      swift_beginAccess();
      v61 = qword_1EBBEDEA0;
      v60 = off_1EBBEDEA8;

      v62 = sub_1B9F0B82C(v61, v60, v119);

      *(v55 + 14) = v62;
      *(v55 + 22) = 2081;
      v63 = sub_1BA4A3048();
      v65 = v64;
      v66 = *(v48 + 8);
      v66(v50, v52);
      v67 = sub_1B9F0B82C(v63, v65, v119);

      *(v55 + 24) = v67;
      *(v55 + 32) = 2081;
      v68 = v117;
      v69 = sub_1BA4A30A8();
      v71 = v70;
      v66(v68, v52);
      v72 = sub_1B9F0B82C(v69, v71, v119);

      *(v55 + 34) = v72;
      _os_log_impl(&dword_1B9F07000, v53, v54, "[%{public}s]: Submitting %s analytics event %{private}s (unavailable) for %{private}s", v55, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      MEMORY[0x1BFAF43A0](v55, -1, -1);

      (*(v115 + 8))(v111, v116);
    }

    else
    {

      v96 = *(v48 + 8);
      v96(v117, v52);
      v96(v50, v52);
      (*(v115 + 8))(v47, v116);
    }

    v120[0] = v121;
    v120[1] = v122;
    v120[2] = v123;
    v120[3] = v124;
    v97 = sub_1BA4A29B8();
    v98 = sub_1BA4A29A8();
    v119[3] = v97;
    v119[4] = MEMORY[0x1E69A3198];
    v119[0] = v98;
    sub_1BA0C33E0();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v119);
    return sub_1BA0C3434(&v121);
  }

  else
  {
    sub_1BA4A3E58();
    v73 = v113;
    v74 = *(v113 + 16);
    v75 = v118;
    v76 = v114;
    v74(v8, v118, v114);
    v74(v4, v75, v76);
    v77 = sub_1BA4A3E88();
    v78 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v120[0] = v118;
      *v79 = 136446979;
      *&v121 = v110;
      swift_getMetatypeMetadata();
      v80 = sub_1BA4A6808();
      LODWORD(v117) = v78;
      v82 = sub_1B9F0B82C(v80, v81, v120);

      *(v79 + 4) = v82;
      *(v79 + 12) = 2080;
      swift_beginAccess();
      v84 = qword_1EBBEDEA0;
      v83 = off_1EBBEDEA8;

      v85 = sub_1B9F0B82C(v84, v83, v120);

      *(v79 + 14) = v85;
      *(v79 + 22) = 2081;
      v86 = sub_1BA4A3048();
      v88 = v87;
      v89 = *(v73 + 8);
      v89(v8, v76);
      v90 = sub_1B9F0B82C(v86, v88, v120);

      *(v79 + 24) = v90;
      *(v79 + 32) = 2081;
      v91 = sub_1BA4A30A8();
      v93 = v92;
      v89(v4, v76);
      v94 = sub_1B9F0B82C(v91, v93, v120);

      *(v79 + 34) = v94;
      _os_log_impl(&dword_1B9F07000, v77, v117, "[%{public}s]: Could not %s analytics event %{private}s (unavailable) for %{private}s", v79, 0x2Au);
      v95 = v118;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v95, -1, -1);
      MEMORY[0x1BFAF43A0](v79, -1, -1);
    }

    else
    {

      v100 = *(v73 + 8);
      v100(v4, v76);
      v100(v8, v76);
    }

    return (*(v115 + 8))(v17, v116);
  }
}

id sub_1BA39ACE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v81 = a4;
  v7 = sub_1BA4A3EA8();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA39BAF8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v82 = &v77 - v20;
  sub_1B9F0A534(a2, v84);
  *v17 = xmmword_1BA4B7EA0;
  *(v17 + 1) = xmmword_1BA4B7EA0;
  v21 = v14[11];
  v22 = sub_1BA4A22F8();
  (*(*(v22 - 8) + 56))(&v17[v21], 1, 1, v22);
  v23 = &v17[v14[13]];
  *v23 = 0;
  v23[1] = 0;
  v24 = [a3 userData];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1BA4A1608();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*v17, *(v17 + 1));
  *v17 = v26;
  *(v17 + 1) = v28;
  v29 = [a3 actionHandlerUserData];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BA4A1608();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xF000000000000000;
  }

  sub_1B9F6AC8C(*(v17 + 2), *(v17 + 3));
  *(v17 + 2) = v31;
  *(v17 + 3) = v33;
  *(v17 + 4) = a1;
  sub_1B9F0A534(v84, (v17 + 48));
  v34 = a1;
  v35 = [a3 uniqueIdentifier];
  v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v38 = v37;

  *(v17 + 11) = v36;
  *(v17 + 12) = v38;
  sub_1BA4A26B8();
  sub_1BA4A2788();
  sub_1B9F6ACA0(v13, &v17[v21]);
  v17[40] = 4;
  v39 = [a3 baseAutomationIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = &v17[v14[12]];
  *v44 = v41;
  v44[1] = v43;
  if (FeedItem.pluginInfo.getter())
  {
    v45 = sub_1BA4A3AD8();

    v46 = [a3 actionHandlerClassName];
    if (v46)
    {
      v47 = v46;
      v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v50 = v49;

      __swift_destroy_boxed_opaque_existential_1(v84);
      v51 = swift_allocObject();
      *(v51 + 2) = v45;
      *(v51 + 3) = v48;
      *(v51 + 4) = v50;
      *v23 = sub_1BA028D88;
      v23[1] = v51;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v84);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v52 = v17;
  v53 = v82;
  sub_1BA39BDE8(v52, v82, type metadata accessor for BasicFeedItemViewControllerContext);
  v54 = v81;
  result = [v81 view];
  if (result)
  {
    v56 = result;
    v85[3] = v14;
    v85[4] = &protocol witness table for BasicFeedItemViewControllerContext;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
    sub_1BA39BD80(v53, boxed_opaque_existential_1, type metadata accessor for BasicFeedItemViewControllerContext);
    v84[0] = v56;
    v84[1] = v54;
    v58 = *(v53 + v14[13]);
    v59 = v80;
    if (v58)
    {
      if (v58(v54))
      {
        type metadata accessor for AnyPlatformFeedItemViewActionHandler();
        v60 = swift_dynamicCastMetatype();
        if (v60)
        {
          v61 = v60;
          sub_1BA02909C(v84, v83);
          v62 = (*(v61 + 88))(v83);
          swift_getObjectType();
          if (swift_conformsToProtocol2() && v62)
          {
            sub_1BA0C3344(v84);
            sub_1B9F5AD44(v53, type metadata accessor for BasicFeedItemViewControllerContext);
            return v62;
          }
        }
      }
    }

    else
    {
      v63 = v54;
    }

    sub_1BA4A3E28();
    v64 = a3;
    v65 = sub_1BA4A3E88();
    v66 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v67 = 136315394;
      v69 = sub_1BA4A85D8();
      v71 = sub_1B9F0B82C(v69, v70, v83);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2082;
      v72 = [v64 uniqueIdentifier];
      v73 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v75 = v74;

      v76 = sub_1B9F0B82C(v73, v75, v83);

      *(v67 + 14) = v76;
      _os_log_impl(&dword_1B9F07000, v65, v66, "%s Could not create actionHandler for %{public}s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v68, -1, -1);
      MEMORY[0x1BFAF43A0](v67, -1, -1);
    }

    (*(v78 + 8))(v59, v79);
    sub_1BA0C3344(v84);
    sub_1B9F5AD44(v53, type metadata accessor for BasicFeedItemViewControllerContext);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BA39B400()
{

  return result;
}

uint64_t DataTypeDetailFeatureStatusDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataTypeDetailFeatureStatusDataSource.__deallocating_deinit()
{
  DataTypeDetailFeatureStatusDataSource.deinit();

  return swift_deallocClassInstance();
}

char *sub_1BA39B568(uint64_t a1, void *a2, __n128 a3)
{
  v37 = a1;
  v4 = MEMORY[0x1E6968130];
  v5 = MEMORY[0x1E69E6720];
  sub_1BA39BAF8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - v8;
  sub_1BA4A27B8();
  sub_1BA39BAF8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v10 = sub_1BA4A1C68();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5480;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69A3B78], v10);
  v14 = sub_1BA4A0FA8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = MEMORY[0x1E69E6F90];
  sub_1B9F232F8(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5460;
  *(v16 + 32) = sub_1BA4A1D78();
  *(v16 + 40) = 0;
  v17 = MEMORY[0x1BFAED020](v13, 0, v9, v16);

  sub_1BA39BE98(v9, &qword_1EDC6E2A0, v4, v5, sub_1BA39BAF8);
  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v15);
  v18 = swift_allocObject();
  v36 = xmmword_1BA4B5470;
  *(v18 + 16) = xmmword_1BA4B5470;
  *(v18 + 32) = a2;
  v19 = a2;
  v20 = MEMORY[0x1BFAED000](v18);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B7510;
  *(v21 + 32) = v17;
  *(v21 + 40) = v20;
  sub_1B9F1BFFC();
  v22 = v17;
  v23 = v20;
  v24 = sub_1BA4A6AE8();

  v25 = [objc_opt_self() andPredicateWithSubpredicates_];

  v26 = swift_allocObject();
  *(v26 + 16) = v36;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:0];

  *(v26 + 32) = v29;
  v30 = v25;
  v31 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v33 = objc_allocWithZone(v32);
  v34 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v31);

  return v34;
}

void sub_1BA39BA0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for DataTypeDetailFeatureStatusDataSource(uint64_t a1)
{
  result = qword_1EDC69FD8;
  if (!qword_1EDC69FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA39BAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA39BB5C(void *a1)
{
  sub_1BA4A7DF8();
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v8 = v2;
  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA504430);
  v3 = [a1 uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v8;
}

void sub_1BA39BC30(void *a1, uint64_t a2)
{
  v5 = *(sub_1BA4A30B8() - 8);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v8);
  v13 = *(v2 + v9);
  v14 = *(v2 + v11);
  v15 = *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA399C30(a1, a2, v2 + v7, v6, v12, v13, v2 + v10, v14, v15);
}

uint64_t sub_1BA39BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA39BD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA39BDE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_18Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA39BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA39C070()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v2 = [v0 contentView];
  v18 = v1;
  [v2 addSubview_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B8B60;
  v5 = [v18 topAnchor];

  v6 = [v0 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:13.0];
  *(v4 + 32) = v8;
  v9 = [v18 bottomAnchor];

  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-13.0];
  *(v4 + 40) = v12;
  v13 = [v18 centerXAnchor];

  v14 = [v0 contentView];
  v15 = [v14 centerXAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  sub_1B9F740B0();
  v17 = sub_1BA4A6AE8();

  [v3 activateConstraints_];

  [v18 startAnimating];
}

id sub_1BA39C344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadingDataCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA39C3AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA39C404(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA39C4E8()
{
  type metadata accessor for DownloadingDataCell();
  sub_1BA39C5DC();
  return sub_1BA4A6808();
}

uint64_t sub_1BA39C520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA39C588()
{
  result = qword_1EBBF17A8;
  if (!qword_1EBBF17A8)
  {
    type metadata accessor for DownloadingDataItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF17A8);
  }

  return result;
}

unint64_t sub_1BA39C5DC()
{
  result = qword_1EBBE9E18;
  if (!qword_1EBBE9E18)
  {
    type metadata accessor for DownloadingDataCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E18);
  }

  return result;
}

uint64_t sub_1BA39C624(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Categories metadata stream finished", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}
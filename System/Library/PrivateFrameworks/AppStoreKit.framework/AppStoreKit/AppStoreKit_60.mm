AppStoreKit::PurchasesDecorationIntent __swiftcall PurchasesDecorationIntent.init(purchaseIntents:)(Swift::OpaquePointer purchaseIntents)
{
  v1->_rawValue = 0xD000000000000019;
  v1[1]._rawValue = 0x80000001E1B3F5B0;
  v1[2]._rawValue = purchaseIntents._rawValue;
  result.kind._countAndFlagsBits = purchaseIntents._rawValue;
  return result;
}

uint64_t PurchasesDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchasesDecorationIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1E135C048(0, v7, 0);
      v8 = v15;
      v9 = v3 + 32;
      do
      {
        sub_1E16190EC(v9, v14);
        v10 = sub_1E1626328();
        sub_1E16194D4(v14);
        v15 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1E135C048((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v9 += 160;
        --v7;
      }

      while (v7);
    }

    v14[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738, &unk_1E1B17220);
    v13 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E18D385C()
{
  result = qword_1ECEBB018;
  if (!qword_1ECEBB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB018);
  }

  return result;
}

unint64_t sub_1E18D38B8()
{
  result = qword_1ECEBB020;
  if (!qword_1ECEBB020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6D50, &unk_1E1B1F900);
    sub_1E162F220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB020);
  }

  return result;
}

uint64_t UpdateGranularNotificationSettingsAction.__allocating_init(settingIDs:)(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = a1;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1E1AF3DFC();
  v7 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v8 = sub_1E1AF46DC();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v20, &v17);
  if (*(&v18 + 1))
  {
    v11 = v18;
    *v10 = v17;
    *(v10 + 16) = v11;
    *(v10 + 32) = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v16[1] = v12;
    v16[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(&v17, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v20, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  return v6;
}

uint64_t UpdateGranularNotificationSettingsAction.init(settingIDs:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = a1;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_1E1AF3DFC();
  v15 = sub_1E1AF46DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v16 = 0u;
  v16[1] = 0u;
  sub_1E138853C(v30, &v24);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v23[1] = v17;
    v23[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  v20 = v2 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v20 + 32) = v29;
  v21 = v28;
  *v20 = v27;
  *(v20 + 16) = v21;
  sub_1E134B7C8(v10, v2 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  return v2;
}

char *UpdateGranularNotificationSettingsAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v30 = a2;
  v29 = sub_1E1AF39DC();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v31 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v25 = *(v5 + 8);
  v25(v10, v4);
  v14 = sub_1E1AF5A6C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB1F90, &qword_1E1B00D30);
    v16 = 0;
  }

  else
  {
    v16 = sub_1E1AF5A0C();
    (*(v15 + 8))(v13, v14);
  }

  *(v28 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = v16;
  v17 = v31;
  (*(v5 + 16))(v7, v31, v4);
  v18 = v26;
  v19 = v27;
  v21 = v29;
  v20 = v30;
  (*(v27 + 16))(v26, v30, v29);
  v22 = Action.init(deserializing:using:)(v7, v18);
  (*(v19 + 8))(v20, v21);
  v25(v17, v4);
  return v22;
}

uint64_t UpdateGranularNotificationSettingsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t UpdateGranularNotificationSettingsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdateGranularNotificationSettingsAction(uint64_t a1)
{
  result = qword_1EE1E66D0;
  if (!qword_1EE1E66D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18D45A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E1AF3C1C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1E1AF3BFC();
}

uint64_t sub_1E18D462C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF3C1C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

Swift::Void __swiftcall PageGridCaching.invalidateCache()()
{
  v1 = (*(v0 + 8))();
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v131 = a7;
  v138 = a5;
  v108 = a4;
  v135 = a14;
  v136 = a15;
  v134 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v110 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v106 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v113 = *(v34 - 8);
  v114 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v137 = &v106 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = &v106 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v106 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v123 = &v106 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v115 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v139 = &v106 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v106 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v106 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v106 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v106 - v58;
  sub_1E134FD1C(a2, &v106 - v58, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(a3, &v59[*(v36 + 48)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  v60 = a6;
  v61 = *(a6 + 8);
  v62 = v130;
  v63 = v138;
  v126 = v61(v138, v60);
  v128 = v59;
  sub_1E134FD1C(v59, v56, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v64 = *(v36 + 48);
  v106 = sub_1E18D545C(v62, v63, v60);
  v125 = v65;
  sub_1E134FD1C(v56, v53, &qword_1ECEB75A0, &qword_1E1B2AE10);
  v66 = *(v36 + 48);
  v130 = v56;
  v127 = v64;
  v67 = &v56[v64];
  v68 = v36;
  v69 = v113;
  sub_1E134FD1C(v67, &v53[v66], &qword_1ECEB75A0, &qword_1E1B2AE10);
  v70 = v114;
  (*(v69 + 16))(v137, v134, v114);
  v129 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v71 = *(v68 + 48);
  v72 = v139;
  sub_1E16EFA40(v50, v139);
  sub_1E16EFA40(&v50[v71], v72 + *(v68 + 48));
  swift_getKeyPath("hp:\v");
  sub_1E1AF3DAC();

  v124 = v141[0];
  swift_getKeyPath("Pp:\v");
  sub_1E1AF3DAC();

  v122 = v141[0];
  swift_getKeyPath("8p:\v");
  sub_1E1AF3DAC();

  v121 = v141[0];
  swift_getKeyPath(" p:\v");
  v73 = v132;
  sub_1E1AF3DAC();

  v120 = *&v141[16];
  v116 = *v141;
  v118 = *&v141[40];
  v119 = *&v141[32];
  v117 = *&v141[48];
  v74 = v72;
  v75 = v70;
  v76 = v115;
  sub_1E134FD1C(v74, v115, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v138 = v68;
  v77 = *(v68 + 48);
  v78 = v76;
  sub_1E16EFA40(v76, v73);
  v79 = *(v69 + 48);
  if (v79(v73, 1, v75) == 1)
  {
    sub_1E1308058(v76 + v77, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v73, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v80 = v133;
    v81 = v139;
  }

  else
  {
    swift_getKeyPath("Pp:\v");
    sub_1E1AF3DAC();

    v82 = v141[0];
    (*(v69 + 8))(v73, v75);
    sub_1E1308058(v78 + v77, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LODWORD(v132) = v82;
    v80 = v133;
    v81 = v139;
    if (v82 != 100)
    {
      goto LABEL_8;
    }
  }

  v83 = v109;
  sub_1E134FD1C(v81, v109, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v84 = v83 + *(v138 + 48);
  v85 = v83;
  v86 = v110;
  sub_1E16EFA40(v85, v110);
  if (v79(v86, 1, v75) == 1)
  {
    sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LODWORD(v132) = 100;
    v84 = v86;
  }

  else
  {
    swift_getKeyPath("hp:\v");
    sub_1E1AF3DAC();
    v81 = v139;
    v80 = v133;

    LODWORD(v132) = v141[0];
    (*(v69 + 8))(v86, v75);
  }

  sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
LABEL_8:
  v87 = v81;
  v88 = v123;
  sub_1E134FD1C(v87, v123, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E16EFA40(v88 + *(v138 + 48), v80);
  if (v79(v80, 1, v75) == 1)
  {
    sub_1E1308058(v88, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v80, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

  else
  {
    swift_getKeyPath("Pp:\v");
    sub_1E1AF3DAC();

    v89 = v141[0];
    v90 = v80;
    v91 = *(v69 + 8);
    v91(v90, v75);
    sub_1E1308058(v88, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (v89 != 100)
    {
      sub_1E1308058(v139, &unk_1ECEB7E70, &unk_1E1B23CB0);
      v91(v137, v75);
      goto LABEL_15;
    }
  }

  v92 = v139;
  v93 = v111;
  sub_1E134FD1C(v139, v111, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v94 = v112;
  sub_1E16EFA40(v93 + *(v138 + 48), v112);
  if (v79(v94, 1, v75) == 1)
  {
    sub_1E1308058(v92, &unk_1ECEB7E70, &unk_1E1B23CB0);
    (*(v69 + 8))(v137, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v94, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LOBYTE(v89) = 100;
  }

  else
  {
    swift_getKeyPath("hp:\v");
    sub_1E1AF3DAC();

    sub_1E1308058(v92, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v95 = *(v69 + 8);
    v95(v137, v75);
    LOBYTE(v89) = v141[0];
    v95(v94, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

LABEL_15:
  v142[0] = v124;
  v142[1] = v122;
  v142[2] = v121;
  v143 = v140[0];
  v144 = BYTE4(v140[0]);
  v145 = v116;
  v146 = v120;
  v147 = v119;
  v148 = v118;
  v149 = v117;
  v150 = v132;
  v151 = v89;
  v152 = *v141;
  v153 = *&v141[4];
  v154 = a8;
  v155 = a9;
  v156 = a10;
  v157 = a11;
  v158 = a12;
  v159 = a13;
  v160 = v135;
  v161 = v136;
  v162 = a16;
  v163 = a17;
  v96 = v126;
  swift_beginAccess();
  v97 = *(v96 + 16);
  if (!*(v97 + 16))
  {
LABEL_19:
    v100 = v129;
    v101 = v107;
    sub_1E134FD1C(v129, v107, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v102 = *(v138 + 48);
    (v106)(v140, v134, v101, v101 + v102, v108, a8, a9, a10, a11, a12, a13, v135, v136, a16, a17);
    sub_1E1308058(v101 + v102, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v101, &qword_1ECEB75A0, &qword_1E1B2AE10);
    memcpy(v141, v140, sizeof(v141));
    swift_beginAccess();
    sub_1E141D08C(v141, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = *(v96 + 16);
    *(v96 + 16) = 0x8000000000000000;
    sub_1E159C2C8(v141, v142, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v142);
    *(v96 + 16) = v140[0];
    swift_endAccess();

    sub_1E1308058(v100, &unk_1ECEB7E70, &unk_1E1B23CB0);
    sub_1E1308058(v128, &unk_1ECEB7E70, &unk_1E1B23CB0);
    goto LABEL_20;
  }

  v98 = sub_1E1595EB8(v142);
  if ((v99 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v141, (*(v97 + 56) + 392 * v98), sizeof(v141));
  sub_1E141D08C(v141, v140);
  sub_1E15A43AC(v142);

  sub_1E1308058(v129, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E1308058(v128, &unk_1ECEB7E70, &unk_1E1B23CB0);

LABEL_20:
  memcpy(v131, v141, 0x188uLL);
  v104 = v130;
  sub_1E1308058(&v130[v127], &qword_1ECEB75A0, &qword_1E1B2AE10);
  return sub_1E1308058(v104, &qword_1ECEB75A0, &qword_1E1B2AE10);
}

uint64_t (*sub_1E18D545C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1E18D6808;
}

uint64_t sub_1E18D557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v35 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v35 - v31;
  sub_1E134FD1C(a2, &v35 - v31, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(a3, &v32[*(v27 + 56)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(v32, v29, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v33 = *(v27 + 56);
  (*(a7 + 24))(v35, v29, &v29[v33], v38, v40, a7, a8, a9, a10, a11, a12, a13, v36, v37, a16, a17);
  sub_1E1308058(v32, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E1308058(&v29[v33], &qword_1ECEB75A0, &qword_1E1B2AE10);
  return sub_1E1308058(v29, &qword_1ECEB75A0, &qword_1E1B2AE10);
}

uint64_t PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v131 = a7;
  v138 = a5;
  v108 = a4;
  v135 = a14;
  v136 = a15;
  v134 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v110 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v106 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v113 = *(v34 - 8);
  v114 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v137 = &v106 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = &v106 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v106 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v123 = &v106 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v115 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v139 = &v106 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v106 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v106 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v106 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v106 - v58;
  sub_1E134FD1C(a2, &v106 - v58, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(a3, &v59[*(v36 + 48)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  v60 = a6;
  v61 = *(a6 + 8);
  v62 = v130;
  v63 = v138;
  v126 = v61(v138, v60);
  v128 = v59;
  sub_1E134FD1C(v59, v56, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v64 = *(v36 + 48);
  v106 = sub_1E18D6470(v62, v63, v60);
  v125 = v65;
  sub_1E134FD1C(v56, v53, &qword_1ECEB75A0, &qword_1E1B2AE10);
  v66 = *(v36 + 48);
  v130 = v56;
  v127 = v64;
  v67 = &v56[v64];
  v68 = v36;
  v69 = v113;
  sub_1E134FD1C(v67, &v53[v66], &qword_1ECEB75A0, &qword_1E1B2AE10);
  v70 = v114;
  (*(v69 + 16))(v137, v134, v114);
  v129 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v71 = *(v68 + 48);
  v72 = v139;
  sub_1E16EFA40(v50, v139);
  sub_1E16EFA40(&v50[v71], v72 + *(v68 + 48));
  swift_getKeyPath("hp:\v");
  sub_1E1AF3DAC();

  v124 = v141[0];
  swift_getKeyPath("Pp:\v");
  sub_1E1AF3DAC();

  v122 = v141[0];
  swift_getKeyPath("8p:\v");
  sub_1E1AF3DAC();

  v121 = v141[0];
  swift_getKeyPath(" p:\v");
  v73 = v132;
  sub_1E1AF3DAC();

  v120 = *&v141[16];
  v116 = *v141;
  v118 = *&v141[40];
  v119 = *&v141[32];
  v117 = *&v141[48];
  v74 = v72;
  v75 = v70;
  v76 = v115;
  sub_1E134FD1C(v74, v115, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v138 = v68;
  v77 = *(v68 + 48);
  v78 = v76;
  sub_1E16EFA40(v76, v73);
  v79 = *(v69 + 48);
  if (v79(v73, 1, v75) == 1)
  {
    sub_1E1308058(v76 + v77, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v73, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v80 = v133;
    v81 = v139;
  }

  else
  {
    swift_getKeyPath("Pp:\v");
    sub_1E1AF3DAC();

    v82 = v141[0];
    (*(v69 + 8))(v73, v75);
    sub_1E1308058(v78 + v77, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LODWORD(v132) = v82;
    v80 = v133;
    v81 = v139;
    if (v82 != 100)
    {
      goto LABEL_8;
    }
  }

  v83 = v109;
  sub_1E134FD1C(v81, v109, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v84 = v83 + *(v138 + 48);
  v85 = v83;
  v86 = v110;
  sub_1E16EFA40(v85, v110);
  if (v79(v86, 1, v75) == 1)
  {
    sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LODWORD(v132) = 100;
    v84 = v86;
  }

  else
  {
    swift_getKeyPath("hp:\v");
    sub_1E1AF3DAC();
    v81 = v139;
    v80 = v133;

    LODWORD(v132) = v141[0];
    (*(v69 + 8))(v86, v75);
  }

  sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
LABEL_8:
  v87 = v81;
  v88 = v123;
  sub_1E134FD1C(v87, v123, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E16EFA40(v88 + *(v138 + 48), v80);
  if (v79(v80, 1, v75) == 1)
  {
    sub_1E1308058(v88, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v80, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

  else
  {
    swift_getKeyPath("Pp:\v");
    sub_1E1AF3DAC();

    v89 = v141[0];
    v90 = v80;
    v91 = *(v69 + 8);
    v91(v90, v75);
    sub_1E1308058(v88, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (v89 != 100)
    {
      sub_1E1308058(v139, &unk_1ECEB7E70, &unk_1E1B23CB0);
      v91(v137, v75);
      goto LABEL_15;
    }
  }

  v92 = v139;
  v93 = v111;
  sub_1E134FD1C(v139, v111, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v94 = v112;
  sub_1E16EFA40(v93 + *(v138 + 48), v112);
  if (v79(v94, 1, v75) == 1)
  {
    sub_1E1308058(v92, &unk_1ECEB7E70, &unk_1E1B23CB0);
    (*(v69 + 8))(v137, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v94, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LOBYTE(v89) = 100;
  }

  else
  {
    swift_getKeyPath("hp:\v");
    sub_1E1AF3DAC();

    sub_1E1308058(v92, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v95 = *(v69 + 8);
    v95(v137, v75);
    LOBYTE(v89) = v141[0];
    v95(v94, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

LABEL_15:
  v142[0] = v124;
  v142[1] = v122;
  v142[2] = v121;
  v143 = v140[0];
  v144 = BYTE4(v140[0]);
  v145 = v116;
  v146 = v120;
  v147 = v119;
  v148 = v118;
  v149 = v117;
  v150 = v132;
  v151 = v89;
  v152 = *v141;
  v153 = *&v141[4];
  v154 = a8;
  v155 = a9;
  v156 = a10;
  v157 = a11;
  v158 = a12;
  v159 = a13;
  v160 = v135;
  v161 = v136;
  v162 = a16;
  v163 = a17;
  v96 = v126;
  swift_beginAccess();
  v97 = *(v96 + 24);
  if (!*(v97 + 16))
  {
LABEL_19:
    v100 = v129;
    v101 = v107;
    sub_1E134FD1C(v129, v107, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v102 = *(v138 + 48);
    (v106)(v140, v134, v101, v101 + v102, v108, a8, a9, a10, a11, a12, a13, v135, v136, a16, a17);
    sub_1E1308058(v101 + v102, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v101, &qword_1ECEB75A0, &qword_1E1B2AE10);
    memcpy(v141, v140, sizeof(v141));
    swift_beginAccess();
    sub_1E141D08C(v141, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = *(v96 + 24);
    *(v96 + 24) = 0x8000000000000000;
    sub_1E159C2C8(v141, v142, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v142);
    *(v96 + 24) = v140[0];
    swift_endAccess();

    sub_1E1308058(v100, &unk_1ECEB7E70, &unk_1E1B23CB0);
    sub_1E1308058(v128, &unk_1ECEB7E70, &unk_1E1B23CB0);
    goto LABEL_20;
  }

  v98 = sub_1E1595EB8(v142);
  if ((v99 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v141, (*(v97 + 56) + 392 * v98), sizeof(v141));
  sub_1E141D08C(v141, v140);
  sub_1E15A43AC(v142);

  sub_1E1308058(v129, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E1308058(v128, &unk_1ECEB7E70, &unk_1E1B23CB0);

LABEL_20:
  memcpy(v131, v141, 0x188uLL);
  v104 = v130;
  sub_1E1308058(&v130[v127], &qword_1ECEB75A0, &qword_1E1B2AE10);
  return sub_1E1308058(v104, &qword_1ECEB75A0, &qword_1E1B2AE10);
}

uint64_t (*sub_1E18D6470(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1E18D67E8;
}

uint64_t sub_1E18D6590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v35 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v35 - v31;
  sub_1E134FD1C(a2, &v35 - v31, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(a3, &v32[*(v27 + 56)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(v32, v29, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v33 = *(v27 + 56);
  (*(a7 + 32))(v35, v29, &v29[v33], v38, v40, a7, a8, a9, a10, a11, a12, a13, v36, v37, a16, a17);
  sub_1E1308058(v32, &unk_1ECEB7E70, &unk_1E1B23CB0);
  sub_1E1308058(&v29[v33], &qword_1ECEB75A0, &qword_1E1B2AE10);
  return sub_1E1308058(v29, &qword_1ECEB75A0, &qword_1E1B2AE10);
}

uint64_t InAppPurchaseAction.productIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productIdentifier);

  return v1;
}

double InAppPurchaseAction.appAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId);
  a1[1] = v2;

  return result;
}

uint64_t InAppPurchaseAction.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appBundleId);

  return v1;
}

uint64_t InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow);

  return v1;
}

uint64_t InAppPurchaseAction.appTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appTitle);

  return v1;
}

uint64_t InAppPurchaseAction.productTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productTitle);

  return v1;
}

uint64_t InAppPurchaseAction.additionalBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_additionalBuyParams);

  return v1;
}

char *InAppPurchaseAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v79 = a2;
  v77 = v4;
  v6 = *v4;
  v75 = v3;
  v76 = v6;
  v78 = sub_1E1AF39DC();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v83 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v72 = v9;
  v81 = *(v9 + 8);
  v82 = v9 + 8;
  v81(v22, v8);
  if (!v25)
  {
    v65 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v66 = 0xD000000000000011;
    v66[1] = 0x80000001E1B63FB0;
    v66[2] = v76;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x1E69AB690], v65);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v83, v8);
    v27 = v77;
LABEL_12:
    swift_deallocPartialClassInstance();
    return v27;
  }

  v26 = 0x496D616441707061;
  v27 = v77;
  v28 = &v77[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productIdentifier];
  *v28 = v23;
  v28[1] = v25;
  v71 = v28;
  v29 = 0xE900000000000064;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v81(v19, v8);
  if (!v32)
  {
    v67 = v83;
    v37 = v8;
    goto LABEL_10;
  }

  v26 = 0x6C646E7542707061;
  v33 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId];
  *v33 = v30;
  v33[1] = v32;
  v29 = 0xEB00000000644965;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v36 = v35;
  v81(v16, v8);
  v37 = v8;
  if (!v36)
  {
    v67 = v83;
LABEL_10:
    v68 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v69 = v26;
    v69[1] = v29;
    v69[2] = v76;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x1E69AB690], v68);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v67, v37);

    if (v32)
    {
    }

    goto LABEL_12;
  }

  v38 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appBundleId];
  *v38 = v34;
  v38[1] = v36;
  type metadata accessor for Action(0);
  v39 = v83;
  sub_1E1AF381C();
  v40 = v79;
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v79);
  v42 = v81;
  v81(v13, v37);
  *&v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_installRequiredAction] = v41;
  sub_1E1AF381C();
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v40);
  v42(v13, v37);
  *&v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_streamlineBuyAction] = v43;
  sub_1E1AF381C();
  v44 = sub_1E1AF37CC();
  v46 = v45;
  v42(v13, v37);
  v47 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow];
  *v47 = v44;
  v47[1] = v46;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v50 = v49;
  v42(v13, v37);
  v51 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appTitle];
  *v51 = v48;
  v51[1] = v50;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v42(v13, v37);
  v55 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productTitle];
  *v55 = v52;
  v55[1] = v54;
  sub_1E1AF381C();
  v56 = sub_1E1AF37CC();
  v58 = v57;
  v42(v13, v37);
  v59 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_additionalBuyParams];
  *v59 = v56;
  v59[1] = v58;
  v60 = v73;
  (*(v72 + 16))(v73, v39, v37);
  v61 = v74;
  v62 = v78;
  (*(v80 + 16))(v74, v40, v78);
  v63 = v75;
  v64 = Action.init(deserializing:using:)(v60, v61);
  if (!v63)
  {
    v27 = v64;
  }

  (*(v80 + 8))(v40, v62);
  v42(v39, v37);
  return v27;
}

double sub_1E18D72C0()
{

  return result;
}

uint64_t InAppPurchaseAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t InAppPurchaseAction.__deallocating_deinit()
{
  InAppPurchaseAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InAppPurchaseAction(uint64_t a1)
{
  result = qword_1EE1FAC60;
  if (!qword_1EE1FAC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double LinkableText.asMarkdownAttributedString()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 32) == 1)
  {
    v4 = objc_opt_self();

    v5 = [v4 systemFontOfSize_];
    v6 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v7 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v8 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v28 = 10;
    *(&v28 + 1) = 0xE100000000000000;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    *&v30 = 161644770;
    *(&v30 + 1) = 0xA400000000000000;
    *&v31 = v7;
    *(&v31 + 1) = 606245;
    *&v32 = 0xE300000000000000;
    *(&v32 + 1) = v8;
    v9 = type metadata accessor for MarkdownStringGenerator();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_accumulator];
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_didParseEverything] = 1;
    v12 = objc_allocWithZone(ASKNQMLParser);
    sub_1E13E3AC8(&v28, v27);
    v13 = sub_1E1AF5DBC();

    v14 = [v12 initWithString_];

    *&v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser] = v14;
    v15 = &v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_configuration];
    *v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v32;
    v15[3] = v31;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v26.receiver = v10;
    v26.super_class = v9;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    [*&v19[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser] setDelegate_];
    v20 = sub_1E161E058();
    v22 = v21;

    sub_1E14A7E28(&v28);
    sub_1E18D7884(v20, v22, a1);
  }

  else
  {
    v24 = *(v3 + 16);
    v25 = *(v3 + 24);

    sub_1E18D7884(v24, v25, a1);
  }

  return result;
}

void sub_1E18D7884(void (**a1)(void *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a1;
  v106 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB028, qword_1E1B3F890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v93 - v6;
  v124 = sub_1E1AEF7EC();
  v102 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0, qword_1E1B1ADF0);
  MEMORY[0x1EEE9AC00](v116);
  v122 = &v93 - v8;
  v105 = sub_1E1AEFCCC();
  v101 = *(v105 - 8);
  v117 = v101;
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1E1AEF88C();
  v100 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E1AEF86C();
  v99 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v139 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v93 - v13;
  v135 = sub_1E1AEF89C();
  v98 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v97 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB46C0, &qword_1E1B0DE58);
  MEMORY[0x1EEE9AC00](v96);
  v16 = &v93 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v114 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = (&v93 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v25 - 8);
  v129 = (&v93 - v26);
  v110 = sub_1E1AEF91C();
  v111 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1E1AEF81C();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = (&v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_1E1AEF82C();
  v104 = *(v118 - 1);
  MEMORY[0x1EEE9AC00](v118);
  v112 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E1AEF84C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v93 - v33;
  v146 = MEMORY[0x1E69E7CD0];
  v34 = *(v3 + 24);
  v37 = *(v34 + 64);
  v36 = v34 + 64;
  v35 = v37;
  v38 = 1 << *(*(v3 + 24) + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v41 = (v38 + 63) >> 6;
  v130 = *(v3 + 24);

  v42 = a2;

  v43 = 0;
  v138 = v16;
  v127 = v28;
  if (v40)
  {
    while (1)
    {
      v44 = v42;
      v45 = v43;
LABEL_9:
      v46 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v47 = v46 | (v45 << 6);
      v48 = (*(v130 + 48) + 16 * v47);
      v49 = *v48;
      v50 = v48[1];
      v131 = *(*(v130 + 56) + 8 * v47);
      v140 = 0x2F3A6E6F69746361;
      v141 = 0xE90000000000002FLL;

      v51 = sub_1E1AF6F1C();
      MEMORY[0x1E68FECA0](v51);

      v53 = v140;
      v52 = v141;
      v140 = v49;
      v141 = v50;

      MEMORY[0x1E68FECA0](45, 0xE100000000000000);
      MEMORY[0x1E68FECA0](v53, v52);
      sub_1E189496C(&v140, v140, v141);

      v140 = v132;
      v141 = v44;
      v144 = v49;
      v145 = v50;
      v142 = 91;
      v143 = 0xE100000000000000;
      MEMORY[0x1E68FECA0](v49, v50);
      MEMORY[0x1E68FECA0](10333, 0xE200000000000000);
      MEMORY[0x1E68FECA0](v53, v52);

      MEMORY[0x1E68FECA0](41, 0xE100000000000000);
      sub_1E13B8AA4();
      v132 = sub_1E1AF6E2C();
      v42 = v54;

      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v45 >= v41)
    {
      break;
    }

    v40 = *(v36 + 8 * v45);
    ++v43;
    if (v40)
    {
      v44 = v42;
      v43 = v45;
      goto LABEL_9;
    }
  }

  (*(v104 + 104))(v112, *MEMORY[0x1E6968748], v118);
  v120[13](v119, *MEMORY[0x1E6968728], v121);
  v55 = v107;
  sub_1E1AEF83C();
  (*(v108 + 16))(v113, v55, v109);
  v56 = v117 + 56;
  v57 = *(v117 + 56);
  v58 = v105;
  v57(v128, 1, 1, v105);
  v59 = v129;
  sub_1E1AEF8EC();
  v113 = v57;
  v117 = v56;
  v60 = v111;
  v61 = *(v111 + 56);
  v62 = v110;
  v104 = v111 + 56;
  v95 = v61;
  v61(v59, 0, 1, v110);
  v63 = *(v60 + 32);
  v111 = v60 + 32;
  v94 = v63;
  v63(v127, v59, v62);
  v64 = v97;
  sub_1E1AEF8AC();
  v65 = v98;
  v66 = v135;
  (*(v98 + 16))(v138, v64, v135);
  v67 = *(v96 + 36);
  v68 = sub_1E18D8AE8(&qword_1ECEB46C8, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  sub_1E1AF665C();
  (*(v65 + 8))(v64, v66);
  v132 = (v100 + 8);
  v130 = v99 + 32;
  v131 = (v99 + 16);
  v129 = (v101 + 48);
  v120 = (v101 + 32);
  v119 = (v102 + 8);
  v118 = (v101 + 8);
  v128 = (v99 + 8);
  v69 = v103;
  v70 = v126;
  v121 = v67;
  v112 = v68;
  while (1)
  {
    v71 = v136;
    v72 = v138;
    sub_1E1AF668C();
    sub_1E18D8AE8(&qword_1ECEB46D0, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v73 = v137;
    v74 = sub_1E1AF5DAC();
    (*v132)(v71, v73);
    if (v74)
    {
      break;
    }

    v75 = sub_1E1AF66FC();
    v76 = v134;
    (*v131)(v134);
    v75(&v140, 0);
    sub_1E1AF669C();
    v77 = v139;
    (*v130)(v139, v76, v70);
    sub_1E148D370();
    v78 = v133;
    sub_1E1AEF87C();
    if ((*v129)(v78, 1, v58) == 1)
    {
      (*v128)(v77, v70);
      sub_1E1308058(v78, &unk_1ECEB4B60, &unk_1E1B02620);
    }

    else
    {
      (*v120)(v69, v78, v58);
      v79 = v122;
      sub_1E1AEF85C();
      v80 = v123;
      sub_1E1AEF7CC();
      sub_1E1AEF7FC();
      (*v119)(v80, v124);
      sub_1E1308058(v79, &qword_1ECEB62E0, qword_1E1B1ADF0);
      v81 = sub_1E1AF5E7C();
      v82 = v146;
      v140 = v81;
      v141 = v83;
      MEMORY[0x1E68FECA0](45, 0xE100000000000000);
      sub_1E18D8AE8(&qword_1ECEB7B88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v84 = sub_1E1AF742C();
      MEMORY[0x1E68FECA0](v84);

      LOBYTE(v82) = sub_1E14AACA8(v140, v141, v82);

      if (v82)
      {
        (*v118)(v69, v58);
        v85 = *v128;
        v86 = v139;
      }

      else
      {
        v87 = v139;
        sub_1E1AEF85C();
        v88 = v114;
        (v113)(v114, 1, 1, v58);
        sub_1E148D3C4();
        v89 = sub_1E1AEF94C();
        sub_1E1307FE8(v88, v115);
        sub_1E1AEF9CC();
        sub_1E1308058(v88, &unk_1ECEB4B60, &unk_1E1B02620);
        v89(&v140, 0);
        sub_1E1308058(v79, &qword_1ECEB62E0, qword_1E1B1ADF0);
        (*v118)(v69, v58);
        v85 = *v128;
        v86 = v87;
      }

      v90 = v126;
      v85(v86, v126);
      v70 = v90;
    }
  }

  sub_1E1308058(v72, &qword_1ECEB46C0, &qword_1E1B0DE58);
  (*(v108 + 8))(v107, v109);

  v91 = v106;
  v92 = v110;
  v94(v106, v127, v110);
  v95(v91, 0, 1, v92);
}

uint64_t sub_1E18D8AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AppStoreOnDeviceRecommendationsManager.__allocating_init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1E18D8BD0(__int128 *a1)
{
  v2 = sub_1E1AF0F7C();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_1E18E018C(a1, &v40);
  sub_1E1AF38BC();
  sub_1E1308058(v42, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790, &qword_1E1B3F900);
  v39 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v9 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_1E158778C();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_1E1AF470C();
  *&v41[16] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v40);
  v14 = v13;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050, &qword_1E1B3F908);
  sub_1E18E02C4();
  v36 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E18E018C(v10, &v40);

  sub_1E18E018C(v10, &v40);

  v30 = sub_1E1AF68EC();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x1E69AB720];
  *&v40 = v30;
  sub_1E1AF57FC();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

uint64_t sub_1E18D9194(__int128 *a1)
{
  v2 = sub_1E1AF0F7C();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_1E18E018C(a1, &v40);
  sub_1E1AF38BC();
  sub_1E1308058(v42, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790, &qword_1E1B3F900);
  v39 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v9 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_1E158778C();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_1E1AF470C();
  *&v41[16] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v40);
  v14 = v13;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050, &qword_1E1B3F908);
  sub_1E18E02C4();
  v36 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E18E018C(v10, &v40);

  sub_1E18E018C(v10, &v40);

  v30 = sub_1E1AF68EC();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x1E69AB720];
  *&v40 = v30;
  sub_1E1AF57FC();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

void sub_1E18D9758(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v5 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v6 = [a1 data];
  if (v6 && (v7 = v6, v8 = sub_1E1AF5C7C(), v7, sub_1E14AD4CC(v8), v10 = v9, , v10))
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v24 = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v23[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v20);
    sub_1E1AF38BC();
    sub_1E1308058(v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v20[0] = v10;

    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    v20[0] = v10;
    sub_1E1AF586C();
  }

  else
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    sub_1E1300B24(qword_1EE215EE0, v23);
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v22[3] = &type metadata for AppStoreAMSEngagementRequest;
    v13 = swift_allocObject();
    v22[0] = v13;
    v14 = a2[1];
    v13[1] = *a2;
    v13[2] = v14;
    *(v13 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v20);
    sub_1E1AF38BC();
    sub_1E1308058(v22, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v15 = [a1 data];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1E1AF5C7C();

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    }

    else
    {
      v17 = 0;
      v20[1] = 0;
      v20[2] = 0;
    }

    v20[0] = v17;
    v21 = v15;
    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1E18E0358();
    v18 = swift_allocError();
    *v19 = 1;
    sub_1E1AF584C();
  }
}

void sub_1E18D9D30(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v5 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v6 = [a1 data];
  if (v6 && (v7 = v6, v8 = sub_1E1AF5C7C(), v7, sub_1E14AD4CC(v8), v10 = v9, , v10))
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v24 = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v23[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v20);
    sub_1E1AF38BC();
    sub_1E1308058(v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v20[0] = v10;

    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    v20[0] = v10;
    sub_1E1AF586C();
  }

  else
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    sub_1E1300B24(qword_1EE216538, v23);
    __swift_project_boxed_opaque_existential_1Tm(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v22[3] = &type metadata for AppStoreAMSEngagementRequest;
    v13 = swift_allocObject();
    v22[0] = v13;
    v14 = a2[1];
    v13[1] = *a2;
    v13[2] = v14;
    *(v13 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v20);
    sub_1E1AF38BC();
    sub_1E1308058(v22, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    v15 = [a1 data];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1E1AF5C7C();

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    }

    else
    {
      v17 = 0;
      v20[1] = 0;
      v20[2] = 0;
    }

    v20[0] = v17;
    v21 = v15;
    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1E18E0358();
    v18 = swift_allocError();
    *v19 = 1;
    sub_1E1AF584C();
  }
}

void sub_1E18DA308(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v5 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v14[3] = &type metadata for AppStoreAMSEngagementRequest;
  v6 = swift_allocObject();
  v14[0] = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  *(v6 + 41) = *(a2 + 25);
  sub_1E18E018C(a2, v13);
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v13[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  sub_1E18E0358();
  v9 = swift_allocError();
  *v10 = a1;
  v11 = a1;
  sub_1E1AF584C();
}

void sub_1E18DA65C(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v5 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v14[3] = &type metadata for AppStoreAMSEngagementRequest;
  v6 = swift_allocObject();
  v14[0] = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  *(v6 + 41) = *(a2 + 25);
  sub_1E18E018C(a2, v13);
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v13[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  sub_1E18E0358();
  v9 = swift_allocError();
  *v10 = a1;
  v11 = a1;
  sub_1E1AF584C();
}

uint64_t sub_1E18DA9B0()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE215EF8 = sub_1E1AF591C();
  unk_1EE215F00 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE215EE0);
  return sub_1E1AF590C();
}

id AppStoreOnDeviceRecommendationsManager.init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1E18DABB0(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF0F7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = *a1;
  if (v15 <= 3)
  {
    if (*a1 > 1u)
    {
      v61 = v3;
      v62 = v4;
    }

    else
    {
      if (!*a1)
      {
LABEL_13:

        return;
      }

      v61 = v3;
      v62 = v4;
    }
  }

  else
  {
    v61 = v3;
    v62 = v4;
  }

  v16 = 0x7265666E69;
  v17 = sub_1E1AF74AC();

  if (v17)
  {
    return;
  }

  if (v15 == 1)
  {
    goto LABEL_13;
  }

  v18 = sub_1E1AF74AC();

  if (v18)
  {
    return;
  }

  if (v15 >= 8)
  {
    goto LABEL_13;
  }

  v19 = sub_1E1AF74AC();

  if (v19)
  {
    return;
  }

  v60 = v1;
  if (qword_1EE1E2EE8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v12 + 8))(v14, v11);
  if (v70 != 1)
  {
    if (qword_1EE1E0ED0 == -1)
    {
LABEL_24:
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();
LABEL_40:

      return;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v20 = sub_1E1AF594C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    sub_1E1308058(v10, &qword_1ECEBBA70, &qword_1E1B1AE80);
    if (qword_1EE1E0ED0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v22 = sub_1E1AF593C();
  (*(v21 + 8))(v10, v20);
  if ([v22 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v23 = v62;
  v70 = v66;
  v71 = v67;
  if (!*(&v67 + 1))
  {
    sub_1E1308058(&v70, &qword_1ECEB2DF0, &unk_1E1B02CE0);
LABEL_36:
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0 || v69 != 1)
  {
    goto LABEL_36;
  }

  v24 = [v22 ams_DSID];
  if (!v24)
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 == 6)
        {
          v34 = 0xE700000000000000;
          v16 = 0x73657461647075;
        }

        else
        {
          v34 = 0xE600000000000000;
          v16 = 0x656461637261;
        }
      }

      else if (v15 == 4)
      {
        v34 = 0xE500000000000000;
        v16 = 0x73656D6167;
      }

      else
      {
        v34 = 0xE600000000000000;
        v16 = 0x686372616573;
      }
    }

    else if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v34 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    *(&v71 + 1) = MEMORY[0x1E69E6158];
    *&v70 = v16;
    *(&v70 + 1) = v34;
    sub_1E1AF38BC();
    sub_1E1308058(&v70, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
LABEL_39:
    sub_1E1AF548C();

    goto LABEL_40;
  }

  v25 = v24;
  v26 = [v24 stringValue];

  v27 = sub_1E1AF5DFC();
  v29 = v28;

  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v30 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v58 = v22;
  if (v15 > 3)
  {
    v31 = v61;
    v32 = v29;
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v33 = 0xE700000000000000;
        v16 = 0x73657461647075;
      }

      else
      {
        v33 = 0xE600000000000000;
        v16 = 0x656461637261;
      }
    }

    else if (v15 == 4)
    {
      v33 = 0xE500000000000000;
      v16 = 0x73656D6167;
    }

    else
    {
      v33 = 0xE600000000000000;
      v16 = 0x686372616573;
    }
  }

  else
  {
    v31 = v61;
    v32 = v29;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v33 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v33 = 0xE500000000000000;
    }
  }

  *&v70 = v16;
  *(&v70 + 1) = v33;
  *&v71 = v27;
  *(&v71 + 1) = v32;
  v72 = 0;
  v73 = 0;
  v56 = v32;

  v57 = sub_1E18D8BD0(&v70);

  v55 = swift_allocObject();
  v35 = swift_unknownObjectWeakInit();
  v54 = *(v23 + 16);
  v36 = v63;
  v54(v63, v65, v31, v35);
  v37 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v59 = v37 + v5;
  v52 = v27;
  v53 = (v37 + v5) & 0xFFFFFFFFFFFFFFF8;
  v60 = v53 + 8;
  v62 = v23;
  v38 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v51 = *(v23 + 32);
  v51(v40 + v37, v36);
  v41 = v60;
  *(v40 + v59) = v15;
  *(v40 + v41) = v55;
  v42 = (v40 + v38);
  v43 = v56;
  *v42 = v52;
  v42[1] = v43;
  v45 = ObjectType;
  v44 = v65;
  *(v40 + v39) = ObjectType;
  (v54)(v36, v44, v31);
  v46 = swift_allocObject();
  (v51)(v46 + v37, v36, v31);
  v47 = v60;
  *(v46 + v59) = v15;
  *(v46 + v47) = v45;
  v48 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v49 = sub_1E1AF68EC();
  *(&v67 + 1) = v48;
  v68 = MEMORY[0x1E69AB720];
  *&v66 = v49;
  sub_1E1AF57FC();

  (*(v62 + 8))(v65, v31);
  __swift_destroy_boxed_opaque_existential_1(&v66);
}

double sub_1E18DBC0C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (*(v7 + 16))
  {
    v10 = sub_1E13018F8(0x7365736143657375, 0xE800000000000000);
    if (v11)
    {
      sub_1E137A5C4(*(v7 + 56) + 32 * v10, &v25);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
      if (swift_dynamicCast())
      {
        v13 = v24[0];
        if (qword_1EE1E0ED0 != -1)
        {
          swift_once();
        }

        __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B05090;
        sub_1E1AF382C();
        if (a3 <= 3u)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              v14 = 0xE500000000000000;
              v15 = 0x7961646F74;
            }

            else
            {
              v14 = 0xE400000000000000;
              v15 = 1936748641;
            }
          }

          else if (a3)
          {
            v14 = 0xE800000000000000;
            v15 = 0x64657463656C6573;
          }

          else
          {
            v14 = 0xE500000000000000;
            v15 = 0x7265666E69;
          }
        }

        else if (a3 <= 5u)
        {
          if (a3 == 4)
          {
            v14 = 0xE500000000000000;
            v15 = 0x73656D6167;
          }

          else
          {
            v14 = 0xE600000000000000;
            v15 = 0x686372616573;
          }
        }

        else if (a3 == 6)
        {
          v14 = 0xE700000000000000;
          v15 = 0x73657461647075;
        }

        else if (a3 == 7)
        {
          v14 = 0xE600000000000000;
          v15 = 0x656461637261;
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x676E6964616F6CLL;
        }

        v27 = MEMORY[0x1E69E6158];
        *&v25 = v15;
        *(&v25 + 1) = v14;
        sub_1E1AF38BC();
        sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF382C();
        v27 = v12;
        *&v25 = v13;

        sub_1E1AF38BC();
        sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF548C();

        v16 = *(v13 + 16);
        if (v16)
        {
          swift_beginAccess();
          v17 = (v13 + 40);
          do
          {
            v19 = *(v17 - 1);
            v20 = *v17;
            __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
            *(swift_allocObject() + 16) = xmmword_1E1B02CD0;

            sub_1E1AF382C();
            v24[3] = MEMORY[0x1E69E6158];
            v24[0] = v19;
            v24[1] = v20;

            sub_1E1AF38BC();
            sub_1E1308058(v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            sub_1E1AF548C();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v18 = Strong;
              *&v25 = v19;
              *(&v25 + 1) = v20;
              v26 = a5;
              v27 = a6;
              v28 = 0;
              v29 = 32;

              sub_1E18D8BD0(&v25);
            }

            else
            {
            }

            v17 += 2;
            --v16;
          }

          while (v16);
        }
      }
    }
  }

  return result;
}

double sub_1E18DC158(uint64_t *a1)
{
  v3 = *(sub_1E1AF0F7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v5);

  return sub_1E18DBC0C(a1, v1 + v4, v10, v7, v8, v9);
}

double sub_1E18DC214(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 0xE500000000000000;
        v6 = 0x7961646F74;
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1936748641;
      }
    }

    else if (a3)
    {
      v5 = 0xE800000000000000;
      v6 = 0x64657463656C6573;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x7265666E69;
    }
  }

  else if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      v5 = 0xE500000000000000;
      v6 = 0x73656D6167;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x686372616573;
    }
  }

  else if (a3 == 6)
  {
    v5 = 0xE700000000000000;
    v6 = 0x73657461647075;
  }

  else if (a3 == 7)
  {
    v5 = 0xE600000000000000;
    v6 = 0x656461637261;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E6964616F6CLL;
  }

  v11 = MEMORY[0x1E69E6158];
  v10[0] = v6;
  v10[1] = v5;
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  return result;
}

double sub_1E18DC580(uint64_t a1)
{
  v3 = *(sub_1E1AF0F7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_1E18DC214(a1, v1 + v4, v5);
}

uint64_t sub_1E18DC620(uint64_t a1)
{
  v36 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v11, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v12 = sub_1E1AF0F8C();
  v13 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v12, v13, v16, "RecommendationPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x1E6901640](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_1E1AF0FEC();
  swift_allocObject();
  v33 = sub_1E1AF0FDC();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v34 = v19;
  v20(v10, v1);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v21 = sub_1E1AF0F8C();
  v22 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v23 = swift_slowAlloc();
    v32 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v21, v22, v25, "Recommendation", "", v24, 2u);
    v26 = v24;
    v1 = v32;
    MEMORY[0x1E6901640](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_1E1AF0FDC();
  v20(v4, v1);
  sub_1E13006E4(0, &qword_1EE1E2DB8, 0x1E696EB40);
  v28 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v28);
  *(&v32 - 6) = v33;
  *(&v32 - 5) = v27;
  v29 = v37;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v29;
  *(&v32 - 2) = ObjectType;
  v30 = sub_1E1AF6D5C();

  return v30;
}

void *sub_1E18DC9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v62 = a6;
  v55 = a5;
  v63 = a4;
  v67 = a3;
  v68 = a2;
  v66 = a1;
  v60 = sub_1E1AF0FBC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF0F7C();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E1AF5AAC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v54 - v13;
  v14 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  sub_1E1AF490C();
  v65 = MEMORY[0x1E68FD610]();
  if (v65)
  {
    v24 = v64;
    sub_1E1AF6C0C();
    v25 = v24;
    if (v24)
    {
      v64 = 0;
      if (qword_1EE1E0ED0 != -1)
      {
        swift_once();
      }

      v63 = unk_1EE215F00;
      v60 = __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      *&v70[8] = MEMORY[0x1E69E6158];
      *&v69 = 0xD000000000000043;
      *(&v69 + 1) = 0x80000001E1B7CF80;
      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      swift_getErrorValue();
      v26 = v71;
      v27 = v72;
      *&v70[8] = v72;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v26, v27);
      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54AC();

      v53 = swift_allocObject();
      v29 = v67;
      v53[2] = v65;
      v53[3] = v29;
      v30 = v62;
      v53[4] = v24;
      v53[5] = v30;
      v31 = v66;

      v32 = v24;
      v33 = v61;
      v34 = v64;
      sub_1E1AF5A8C();
      if (v34)
      {
      }

      else
      {
        v53 = sub_1E1AF5A9C();

        (*(v56 + 8))(v33, v57);
      }
    }

    else
    {
      (*(v18 + 16))(v20, v23, v17);
      sub_1E1AF39CC();
      AppStoreAMSEngagementRequest.init(deserializing:using:)(v20, v16, &v69);
      (*(v18 + 8))(v23, v17);
      v73 = v69;
      v74[0] = *v70;
      *(v74 + 9) = *&v70[9];
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v47 = swift_allocObject();
      v48 = v74[0];
      *(v47 + 16) = v73;
      *(v47 + 32) = v48;
      *(v47 + 41) = *(v74 + 9);
      *(v47 + 64) = v65;
      *(v47 + 72) = v46;
      v49 = v55;
      *(v47 + 80) = v67;
      *(v47 + 88) = v49;
      v50 = v66;

      v51 = v49;
      v52 = v54;
      sub_1E1AF5A8C();
      v53 = sub_1E1AF5A9C();

      (*(v56 + 8))(v52, v57);
    }
  }

  else
  {
    v66 = v10;
    v35 = v59;
    v36 = v60;
    v37 = v58;
    v38 = v8;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v39 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v39, qword_1EE1F7BE8);
    v40 = sub_1E1AF0F8C();
    v41 = v66;
    sub_1E1AF0FCC();
    LODWORD(v65) = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v35 + 88))(v7, v36) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v7, v36);
        v42 = "";
      }

      v41 = v66;
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v40, v65, v44, "Recommendation", v42, v43, 2u);
      MEMORY[0x1E6901640](v43, -1, -1);
    }

    (*(v37 + 8))(v41, v38);
    v53 = sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  sub_1E18DD378(v68);
  return v53;
}

uint64_t sub_1E18DD378(uint64_t a1)
{
  v1 = sub_1E1AF0FBC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF0F7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v9 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v9, qword_1EE1F7BE8);
  v10 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v11 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v10, v11, v14, "RecommendationPromise", v12, v13, 2u);
    MEMORY[0x1E6901640](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1E18DD604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v20[0] = a7;
  v20[1] = a4;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a6;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20[0];

  v18 = a6;
  sub_1E1AF48FC();

  return result;
}

void sub_1E18DD794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v3 = sub_1E1AF0FBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF0F7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v11, qword_1EE1F7BE8);
  v12 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v13 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "success=false";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v12, v13, v16, "Recommendation", v14, v15, 2u);
    MEMORY[0x1E6901640](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;
  v19[6] = 0;
  v19[7] = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B7D0D0);
  MEMORY[0x1E68FECA0](0xD000000000000035, 0x80000001E1B7D0F0);
  v19[11] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](46, 0xE100000000000000);
  *(v17 + 56) = sub_1E1AF56FC();
  __swift_allocate_boxed_opaque_existential_0((v17 + 32));
  sub_1E1AF569C();
  v18 = sub_1E1AF363C();
}

uint64_t sub_1E18DDCF8(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t))
{
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v51 = a3;
  v52 = a1;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v13;
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF48CC();
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a4 + 40) & 0xE0) == 0x40 && (*(a4 + 40) & 1) == 0)
  {
    v21 = *(v12 + 16);
    v45 = v17;
    v46 = v16;
    v21(v14, v51, v11, v18);
    v22 = *(v12 + 80);
    v47 = a8;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v48 = a2;
    v49 = v12;
    v25 = v54;
    *(v24 + 16) = v53;
    *(v24 + 24) = v25;
    (*(v49 + 32))(v24 + v23, v14, v11);
    a2 = v48;

    sub_1E1AF48DC();
    v12 = v49;

    (*(v45 + 8))(v20, v46);
  }

  v26 = sub_1E18D8BD0(a4);
  v48 = *(v12 + 16);
  v49 = v26;
  v27 = v14;
  v48(v14, a2, v11);
  v28 = *(v12 + 80);
  v29 = v50;
  v30 = swift_allocObject();
  v32 = v52;
  v31 = v53;
  *(v30 + 2) = v55;
  *(v30 + 3) = v31;
  v33 = v54;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  v47 = *(v12 + 32);
  v47(&v30[(v28 + 48) & ~v28], v27, v11);
  v48(v27, v51, v11);
  v34 = (v28 + 40) & ~v28;
  v35 = (v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v54;
  v38 = v53;
  *(v36 + 2) = v55;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  v47(&v36[v34], v27, v11);
  v39 = v52;
  *&v36[v35] = v52;
  v40 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v41 = v39;
  v42 = sub_1E1AF68EC();
  v56[3] = v40;
  v56[4] = MEMORY[0x1E69AB720];
  v56[0] = v42;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

void sub_1E18DE110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF0FBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v14, qword_1EE1F7BE8);
    v15 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    v16 = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v16, v19, "Recommendation", v17, v18, 2u);
      MEMORY[0x1E6901640](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E1B02CC0;
    *(v20 + 56) = sub_1E1AF56FC();
    __swift_allocate_boxed_opaque_existential_0((v20 + 32));
    sub_1E1AF569C();
    v21 = sub_1E1AF363C();
  }
}

double sub_1E18DE744(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = *a1;
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11, v14);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = v15;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v18 = a4;

  sub_1E1AF48FC();

  return result;
}

void sub_1E18DE8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_1E1AF0FBC();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = sub_1E1AF0F7C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v39 = v17;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v44[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v22 = sub_1E1AF755C();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:a3];
    swift_unknownObjectRelease();
    if (v23)
    {
      v40 = v9;
      if (qword_1EE1F7BE0 != -1)
      {
        swift_once();
      }

      v24 = sub_1E1AF0FAC();
      v37[1] = __swift_project_value_buffer(v24, qword_1EE1F7BE8);
      v25 = sub_1E1AF0F8C();
      sub_1E1AF0FCC();
      v26 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        sub_1E1AF0FFC();
        v38 = a4;

        v27 = v42;
        v28 = v40;
        v29 = v14;
        if ((*(v42 + 88))(v13, v40) == *MEMORY[0x1E69E93E8])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v27 + 8))(v13, v28);
          v30 = "success=true";
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v25, v26, v32, "Recommendation", v30, v31, 2u);
        MEMORY[0x1E6901640](v31, -1, -1);
        v14 = v29;
      }

      v33 = *(v15 + 8);
      v38 = v15 + 8;
      v33(v20, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1E1B02CC0;
      *(v34 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8, 0x1E696EB58);
      *(v34 + 32) = v23;
      v35 = v23;
      v36 = sub_1E1AF363C();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1E18DF10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v22[1] = a2;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a5, v10, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a1;
  v18 = v22[0];
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22[0];

  v19 = a1;
  v20 = v18;
  sub_1E1AF48FC();

  return result;
}

void sub_1E18DF2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_1E1AF0FBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF0F7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v17, qword_1EE1F7BE8);
    v18 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    v19 = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69E93E8])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v18, v19, v22, "Recommendation", v20, v21, 2u);
      MEMORY[0x1E6901640](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B02CC0;
    v24 = sub_1E13006E4(0, &qword_1EE1E32A8, 0x1E696EB58);
    v25 = MEMORY[0x1E68FF960](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_1E1AF363C();
  }
}

void sub_1E18DF920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v3 = sub_1E1AF594C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &qword_1ECEBBA70, &qword_1E1B1AE80);
  }

  else
  {
    v5 = sub_1E1AF593C();
    (*(v4 + 8))(v2, v3);
    v6 = [v5 ams_DSID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];

      v9 = sub_1E1AF5DFC();
      v11 = v10;

      *&v12 = v9;
      *(&v12 + 1) = v11;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0x80;
      sub_1E18D8BD0(&v12);
    }
  }
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreOnDeviceRecommendationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E18DFCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a6 >> 5;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {

LABEL_4:

    return result;
  }

  if (v9 < 2)
  {

    goto LABEL_4;
  }

  return result;
}

double sub_1E18DFD80(uint64_t *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1E18DE744(a1, v4, v5, v6, v7, v8);
}

double sub_1E18DFDF8(void *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E18DF10C(a1, v5, v6, v7, v1 + v4, v8);
}

void sub_1E18DFE9C()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1E18DE110(v2, v3, v4);
}

void sub_1E18DFF00()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_1E18DF2A4(v6, v7, v0 + v2, v4, v5);
}

uint64_t objectdestroy_24Tm_0(void (*a1)(void, __n128))
{
  v3 = sub_1E1AF364C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);

  (a1)(*(v1 + 24));

  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

void sub_1E18E0088()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1E18DE8C8(v2, v3, v4, v5, v6);
}

void sub_1E18E00F0()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E18DD794(v3, v0 + v2, v4);
}

uint64_t sub_1E18E01E8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050, &qword_1E1B3F908);
  v6 = *(v5 + *a3);
  sub_1E14C65A8(v4);
  v7 = sub_1E1AF5C6C();

  v8 = [v6 enqueueData_];

  return sub_1E1AF587C();
}

unint64_t sub_1E18E02C4()
{
  result = qword_1EE1E35F8;
  if (!qword_1EE1E35F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB050, &qword_1E1B3F908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E35F8);
  }

  return result;
}

unint64_t sub_1E18E0358()
{
  result = qword_1EE1D43D0;
  if (!qword_1EE1D43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D43D0);
  }

  return result;
}

uint64_t sub_1E18E03E8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E1AF0F7C() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return a2(v7, v2 + 16, v2 + v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = sub_1E18DFCF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v3, v1, v4);

  return swift_deallocObject();
}

uint64_t sub_1E18E0598(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E1AF0F7C() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + 16, v2 + v5, v6);
}

uint64_t LinkableText.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LinkableText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LinkableText.__allocating_init(id:text:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E134FD1C(a1, v14, &unk_1ECEB5670, qword_1E1B03EC0);
  type metadata accessor for StyledText(0);
  v8 = swift_allocObject();
  *(v8 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v10 = sub_1E1AEF91C();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = (v8 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v11 = 0;
  v11[1] = 0;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = 0;
  v12 = swift_allocObject();
  LinkableText.init(id:styledText:linkedSubstrings:)(v14, v8, a4);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  return v12;
}

uint64_t LinkableText.__allocating_init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E134FD1C(a1, &v17, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v18 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v17, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t LinkableText.init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v18, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v19 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v18, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t *LinkableText.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = v2;
  v67 = a2;
  v57 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v7 = sub_1E1AF40DC();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E1AF39DC();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEFEAC();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v64 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v63 = v15;
  if (v22)
  {
    v68 = v21;
    v69 = v22;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v11;
    v28 = v14;
    v29 = v7;
    v30 = v9;
    v32 = v31;
    v65[1](v13, v27);
    v68 = v26;
    v69 = v32;
    v9 = v30;
    v7 = v29;
    v14 = v28;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v65 = v23;
  (v23)(v24, v25);
  v33 = v71;
  v34 = v66;
  *(v66 + 2) = v70;
  *(v34 + 3) = v33;
  v34[8] = v72;
  type metadata accessor for StyledText(0);
  v35 = v64;
  sub_1E1AF381C();
  v36 = v67;
  v9[2](v62, v67, v73);
  sub_1E18E16D0(&qword_1EE1F7BC0, 255, type metadata accessor for StyledText, &protocol conformance descriptor for StyledText);
  sub_1E1AF464C();
  v37 = v70;
  if (!v70)
  {
    v45 = sub_1E1AF5A7C();
    sub_1E18E16D0(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v46 = 0x655464656C797473;
    v47 = v57;
    v46[1] = 0xEA00000000007478;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    (v65)(v35, v14);
    sub_1E134B88C((v34 + 4));
    swift_deallocPartialClassInstance();
    (v9[1])(v36, v73);
    return v34;
  }

  v62 = v9;
  v38 = v58;
  sub_1E1AF381C();
  v39 = v59;
  sub_1E1AF368C();
  v40 = v38;
  v41 = v65;
  (v65)(v40, v14);
  v42 = v60;
  if ((*(v60 + 48))(v39, 1, v7) == 1)
  {
    sub_1E1308058(v39, &qword_1ECEB2B28, qword_1E1B03BE0);
    v43 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
    (v41)(v35, v14);
    v44 = v67;
LABEL_10:
    v34[2] = v37;
    v34[3] = v43;
    (*(v62 + 1))(v44, v73);
    return v34;
  }

  v63 = v14;
  v48 = v39;
  v49 = v56;
  v50 = (*(v42 + 32))(v56, v48, v7);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v42;
  v59 = v7;
  v44 = v67;
  *(&v55 - 2) = v67;
  type metadata accessor for Action(0);
  v52 = v61;
  v53 = sub_1E1AF40AC();
  if (!v52)
  {
    v43 = v53;
    (v65)(v35, v63);
    (*(v51 + 8))(v49, v59);
    v34 = v66;
    goto LABEL_10;
  }

  sub_1E134B88C((v66 + 4));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_1E18E136C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8, &unk_1E1B0C6B0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  type metadata accessor for Action(0);
  v15 = static Action.makeInstance(byDeserializing:using:)(a3, a4);
  if (v5)
  {
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0, &unk_1E1B1AB20);
    sub_1E1AF39FC();
    (*(v12 + 8))(v14, v11);
    sub_1E134FD1C(v18, v16, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    if (v17)
    {
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      type metadata accessor for LinkableText();
      sub_1E1AF4EBC();

      sub_1E1308058(v18, &qword_1ECEB43C8, &unk_1E1B0C6C0);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_1E1308058(v18, &qword_1ECEB43C8, &unk_1E1B0C6C0);

      sub_1E1308058(v16, &qword_1ECEB43C8, &unk_1E1B0C6C0);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = a1;
    a5[1] = a2;
    a5[2] = v15;
  }
}

uint64_t LinkableText.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t LinkableText.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t *sub_1E18E1604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LinkableText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18E16D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

NSAttributedString __swiftcall NSAttributedString.init(text:hyphenationFactor:)(Swift::String text, Swift::Float hyphenationFactor)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  *&v4 = hyphenationFactor;
  [v3 setHyphenationFactor_];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1E1AF5DBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0, &qword_1E1B0EE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  *(inited + 64) = sub_1E18E1908();
  *(inited + 40) = v3;
  v9 = v8;
  v10 = v3;
  sub_1E159D27C(inited);
  swift_setDeallocating();
  sub_1E16FAC1C(inited + 32);
  type metadata accessor for Key(0);
  sub_1E16FAC84();
  v11 = sub_1E1AF5C6C();

  v12 = [v5 initWithString:v6 attributes:v11];

  return v12;
}

unint64_t sub_1E18E1908()
{
  result = qword_1EE1E3380;
  if (!qword_1EE1E3380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3380);
  }

  return result;
}

uint64_t LockupMediaLayout.DisplayType.numberOfViews.getter()
{
  v1 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E18E21A8(v0, v3, type metadata accessor for LockupMediaLayout.DisplayType);
  v4 = sub_1E1AF127C();
  LODWORD(result) = (*(*(v4 - 8) + 48))(v3, 6, v4);
  if (result <= 2)
  {
    if (!result)
    {
      sub_1E18E1A94(v3);
      return 1;
    }

    if (result != 1)
    {
      return 2;
    }

    return 1;
  }

  if (result > 4)
  {
    return result == 5;
  }

  if (result == 3)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1E18E1A94(uint64_t a1)
{
  v2 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockupMediaLayout.init(metrics:mediaViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LockupMediaLayout(0);
  result = sub_1E18E1CB8(a1, a3 + *(v6 + 20), type metadata accessor for LockupMediaLayout.Metrics);
  *a3 = a2;
  return result;
}

uint64_t LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v11 = v10[7];
  v12 = sub_1E1AF127C();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a5 + v11, 1, 1, v12);
  sub_1E1308EC0(a1, a5);
  sub_1E18E1CB8(a2, a5 + v10[5], type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v13 + 32))(a5 + v10[6], a3, v12);

  return sub_1E144E7D4(a4, a5 + v11);
}

uint64_t sub_1E18E1CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.interItemSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t LockupMediaLayout.Metrics.displayType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);

  return sub_1E18E1E10(a1, v3);
}

uint64_t sub_1E18E1E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_1E17789F0(v3, a1);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_1E144E7D4(a1, v3);
}

uint64_t sub_1E18E21A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void LockupMediaLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = (v3 + *(type metadata accessor for LockupMediaLayout(0) + 20));

  _s11AppStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v7, a1, a2, a3);
}

void LockupMediaLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v72 = a1;
  v58[3] = a2;
  v12 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E1AF745C();
  v14 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8, &unk_1E1B0AB10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v58 - v17;
  v19 = sub_1E1AF127C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v58 - v24;
  v26 = (v7 + *(type metadata accessor for LockupMediaLayout(0) + 20));
  v64 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_1E17789F0(v26 + *(v64 + 28), v18);
  v27 = *(v20 + 48);
  v63 = v20 + 48;
  v62 = v27;
  if (v27(v18, 1, v19) == 1)
  {
    sub_1E18E2FA8(v18);
    v28 = a5;
    v29 = a6;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v31 = v30;
    sub_1E1AF121C();
    if (v32 >= v31)
    {
      sub_1E1AF123C();
      v29 = v34;
      v28 = a5;
    }

    else
    {
      sub_1E1AF122C();
      v28 = v33;
      v29 = a6;
    }

    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
  }

  v36 = [v72 traitCollection];
  *&v58[2] = v28;
  *&v58[1] = v29;
  v37 = _s11AppStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(v26, v36, v28, v29);
  v70 = v38;

  v39 = 0;
  v40 = *v7;
  v67 = *(*v7 + 16);
  v60 = v40;
  v59 = v40 + 32;
  v61 = (v14 + 8);
  *&v58[7] = v37 * 4.0;
  *&v58[6] = v37 * 3.0;
  *&v58[5] = v37 + v37;
  *&v58[4] = v37 * 0.5;
  while (1)
  {
    v41 = 0uLL;
    v42 = v67;
    v43 = 0uLL;
    v44 = 0uLL;
    if (v39 == v67)
    {
      goto LABEL_13;
    }

    if (v39 >= *(v60 + 16))
    {
      break;
    }

    v42 = v39 + 1;
    *&v73 = v39;
    sub_1E1300B24(v59 + 40 * v39, &v73 + 8);
    v41 = v73;
    v43 = v74;
    v44 = v75;
LABEL_13:
    v76[0] = v41;
    v76[1] = v43;
    v76[2] = v44;
    if (!v44)
    {
      sub_1E1AF106C();
      return;
    }

    v39 = v42;
    v69 = v41;
    v45 = v19;
    sub_1E1308EC0((v76 + 8), &v73);
    v71 = __swift_project_boxed_opaque_existential_1Tm(&v73, *(&v74 + 1));
    v46 = v26[3];
    __swift_project_boxed_opaque_existential_1Tm(v26, v46);
    v47 = v65;
    sub_1E13BC274(v46);
    v48 = v72;
    sub_1E1AF12DC();
    (*v61)(v47, v66);
    v49 = [v48 traitCollection];
    v50 = [v49 horizontalSizeClass];

    if (v50 == 1)
    {
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = a6;
      v51 = v70 < CGRectGetHeight(v77);
    }

    else
    {
      v51 = 0;
    }

    v19 = v45;
    v52 = v68;
    sub_1E18E21A8(v26 + *(v64 + 20), v68, type metadata accessor for LockupMediaLayout.DisplayType);
    v53 = v62(v52, 6, v45);
    if (v53 <= 2)
    {
      v54 = a3;
      v55 = a4;
      v56 = a5;
      v57 = a6;
      if (!v53)
      {
        CGRectGetWidth(*&v54);
        sub_1E18E1A94(v68);
        goto LABEL_9;
      }

      if (v53 == 1)
      {
        CGRectGetMidX(*&v54);
        if (!v51)
        {
          goto LABEL_9;
        }

LABEL_27:
        v79.origin.x = a3;
        v79.origin.y = a4;
        v79.size.width = a5;
        v79.size.height = a6;
        CGRectGetHeight(v79);
        goto LABEL_9;
      }

LABEL_26:
      CGRectGetWidth(*&v54);
      if (!v51)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (v53 <= 4)
    {
      v54 = a3;
      v55 = a4;
      v56 = a5;
      v57 = a6;
      goto LABEL_26;
    }

    if (v53 == 5)
    {
      v78.origin.x = a3;
      v78.origin.y = a4;
      v78.size.width = a5;
      v78.size.height = a6;
      CGRectGetWidth(v78);
    }

LABEL_9:
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  __break(1u);
}

void _s11AppStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v44 = a2;
  v45 = sub_1E1AF745C();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8, &unk_1E1B0AB10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_1E1AF127C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v25 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_1E17789F0(a1 + *(v25 + 28), v13);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    sub_1E18E2FA8(v13);
    v27 = *(v25 + 20);
    sub_1E18E21A8(a1 + v27, v10, type metadata accessor for LockupMediaLayout.DisplayType);
    v28 = v26(v10, 6, v14);
    if (v28 > 4)
    {
      if (v28 != 5)
      {
        return;
      }

      goto LABEL_18;
    }

    if ((v28 - 1) < 4)
    {
      v29 = a1 + v27;
      v30 = v41;
      sub_1E18E21A8(v29, v41, type metadata accessor for LockupMediaLayout.DisplayType);
      v31 = v26(v30, 6, v14);
      if (v31 <= 2 && !v31)
      {
        sub_1E18E1A94(v30);
      }

      v36 = a1[3];
      __swift_project_boxed_opaque_existential_1Tm(a1, v36);
      v37 = v42;
      sub_1E13BC274(v36);
      sub_1E1AF12DC();
      (*(v43 + 8))(v37, v45);
LABEL_18:
      sub_1E1AF123C();
      return;
    }

    v24 = v39;
    (*(v15 + 32))(v39, v10, v14);
    v21 = v40;
  }

  else
  {
    (*(v15 + 32))(v24, v13, v14);
  }

  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_1E1AF121C();
  v33 = v32;
  sub_1E1AF121C();
  if (v34 >= v33)
  {
    sub_1E1AF123C();
  }

  else
  {
    sub_1E1AF122C();
  }

  v35 = *(v15 + 8);
  v35(v21, v14);
  v35(v24, v14);
}

uint64_t sub_1E18E2FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8, &unk_1E1B0AB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s11AppStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v47 = a2;
  v7 = sub_1E1AF127C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);
  sub_1E18E21A8(a1 + v22, v21, type metadata accessor for LockupMediaLayout.DisplayType);
  v46 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v21, 6, v7);
  if (v24 > 4)
  {
    v27 = 0.0;
    if (v24 != 5)
    {
      return v27;
    }

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v29 = v28;
    sub_1E1AF121C();
    if (v30 >= v29)
    {
      sub_1E1AF123C();
    }

    else
    {
      sub_1E1AF122C();
      a3 = v31;
    }

    (*(v46 + 8))(v15, v7);
    return a3;
  }

  if ((v24 - 1) >= 4)
  {
    v32 = v46;
    (*(v46 + 32))(v12, v21, v7);
    v33 = v45;
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v35 = v34;
    sub_1E1AF121C();
    if (v36 >= v35)
    {
      sub_1E1AF123C();
    }

    else
    {
      sub_1E1AF122C();
      a3 = v37;
    }

    v42 = *(v32 + 8);
    v42(v33, v7);
    v42(v12, v7);
    return a3;
  }

  sub_1E18E21A8(a1 + v22, v18, type metadata accessor for LockupMediaLayout.DisplayType);
  v25 = v23(v18, 6, v7);
  if (v25 > 2)
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 4.0;
      if (v25 == 3)
      {
        v26 = 3.0;
      }
    }

    goto LABEL_20;
  }

  if (!v25)
  {
    sub_1E18E1A94(v18);
    goto LABEL_18;
  }

  if (v25 == 1)
  {
LABEL_18:
    v26 = 1.0;
    goto LABEL_20;
  }

  v26 = 2.0;
LABEL_20:
  if (v26 + -1.0 > 0.0)
  {
    v38 = v26 + -1.0;
  }

  else
  {
    v38 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF12EC();
  v27 = (a3 - v38 * v39) / v26;
  sub_1E1AF123C();
  if (v40 > a4)
  {
    sub_1E1AF122C();
    return v41;
  }

  return v27;
}

unint64_t sub_1E18E3448()
{
  result = qword_1EE1DE8D8[0];
  if (!qword_1EE1DE8D8[0])
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DE8D8);
  }

  return result;
}

void sub_1E18E34C8(uint64_t a1)
{
  sub_1E15025D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.Metrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E18E3574(uint64_t a1)
{
  v1 = sub_1E1AF127C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E18E35F4(uint64_t a1)
{
  sub_1E16DBBF0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.DisplayType(319);
    if (v2 <= 0x3F)
    {
      sub_1E1AF127C();
      if (v3 <= 0x3F)
      {
        sub_1E17796C8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E18E370C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20JSLegacyPackageIndex_scriptURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18E37F0(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E18E38E0(unint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_1E1AF40DC();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v57 = a1;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v19, v10);
  v51 = v21;
  if (!v21)
  {
    v27 = sub_1E1AF5A7C();
    sub_1E18E433C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v28 = 0x79654B6568636163;
    v29 = v54;
    v28[1] = 0xE800000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v30 = sub_1E1AEFCCC();
    (*(*(v30 - 8) + 8))(v55, v30);
    return (v22)(v57, v10);
  }

  v56 = v22;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v47 = v10;
  v56(v16, v10);
  v23 = v53;
  v24 = *(v53 + 48);
  v25 = v24(v9, 1, v3);
  v48 = v3;
  if (v25 == 1)
  {
    sub_1E146F8C4(v9);
    v26 = v50;
LABEL_6:
    v34 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }

  v32 = sub_1E1AF40BC();
  v33 = v9;
  v34 = v32;
  (*(v23 + 8))(v33, v3);
  v26 = v50;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v57;
  v36 = v47;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v37 = v56;
  v56(v13, v36);
  v38 = v48;
  if (v24(v26, 1, v48) == 1)
  {
    sub_1E146F8C4(v26);
    v39 = sub_1E15A28EC(MEMORY[0x1E69E7CC0]);
    v37(v35, v36);
  }

  else
  {
    v57 = v34;
    v40 = v53;
    v41 = v49;
    (*(v53 + 32))(v49, v26, v38);
    type metadata accessor for AMSBagKey(0);
    sub_1E1AF52CC();
    sub_1E18E433C(&qword_1ECEB1EB0, type metadata accessor for AMSBagKey, &unk_1E1B0091C);
    v39 = sub_1E1AF40AC();
    v56(v35, v36);
    (*(v40 + 8))(v41, v38);
    v34 = v57;
  }

  v42 = swift_allocObject();
  v43 = v51;
  *(v42 + 16) = v52;
  *(v42 + 24) = v43;
  v44 = OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_scriptURL;
  v45 = sub_1E1AEFCCC();
  (*(*(v45 - 8) + 32))(v42 + v44, v55, v45);
  result = v42;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_properties) = v34;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_bagOverrides) = v39;
  return result;
}

uint64_t sub_1E18E3F34@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a3;
  v5 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5CF8, &unk_1E1B3FC20);
  v11 = sub_1E1AF5DBC();
  *a4 = v11;
  (*(v7 + 16))(v9, v16, v6);
  sub_1E1AF39CC();
  v12 = v17;
  sub_1E1AF52BC();
  if (v12)
  {

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return (*(*(v10 - 8) + 56))(a4, v13, 1, v10);
}

uint64_t sub_1E18E410C()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_scriptURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18E41F8(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E18E42B0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1E1AEFCCC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1E18E433C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ArcadeSubscriptionDecorator.decorate()()
{
  v19 = sub_1E1AF4C2C();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v18 = v21[0];
  sub_1E137A5C4((v0 + 1), v22);
  v4 = v0[6];
  v17 = v0[5];
  v5 = v0[7];
  v6 = v0[8];
  v7 = qword_1EE1F3430;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1E16D0204();
  MetricsSystemInfo.init()(&v23);
  v20 = v23;
  v9 = MetricsSystemInfo.dictionaryRepresentation.getter();
  sub_1E1626978(&v23);
  sub_1E14C6330(v9);
  v11 = v10;

  v21[0] = 0xD000000000000022;
  v21[1] = 0x80000001E1B7D630;
  v22[4] = v17;
  v22[5] = v4;
  v22[6] = v5;
  v22[7] = v6;
  v22[8] = v8;
  v22[9] = v11;
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  v12 = v19;
  (*(v1 + 104))(v3, *MEMORY[0x1E69AB2E0], v19);
  v13 = sub_1E1AF4BCC();

  (*(v1 + 8))(v3, v12);
  v14 = sub_1E1369F08(v21, v13, "AppStoreKit/ArcadeSubscriptionDecorator.swift", 45, 2);

  sub_1E18E461C(v21);
  return v14;
}

_OWORD *ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = a4[1];
  *a6 = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v6;
  *(a6 + 64) = v7;
  return sub_1E1301CF0(a5, (a6 + 8));
}

uint64_t ProductNoRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  return v25;
}

uint64_t ProductNoRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v21);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  return v25;
}

uint64_t ProductNoRatings.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t ProductNoRatings.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductNoRatings(uint64_t a1)
{
  result = qword_1ECEBB068;
  if (!qword_1ECEBB068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18E4C00@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080, &qword_1E1B3FD20);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088, &qword_1E1B3FD28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v43 = v16;
  sub_1E134FD1C(v16, v12, &qword_1ECEB24A0, &qword_1E1B48170);
  v44 = v10;
  if (a1 < 0 || (v17 = *&v12[*(v10 + 36)], *(v17 + 16) <= a1))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  else
  {
    sub_1E141CF00(v17 + 40 * a1 + 32, &v49);
    v18 = *&v12[*(v10 + 40)];
    if (*(v18 + 16) && (v19 = sub_1E15952E8(&v49), (v20 & 1) != 0))
    {
      v48 = *(*(v18 + 56) + 8 * v19);
      type metadata accessor for Shelf(0);

      sub_1E1AF3DDC();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    (*(*(v23 - 8) + 56))(v15, v21, 1, v23);
    sub_1E138867C(&v49);
  }

  sub_1E1308058(v12, &qword_1ECEB24A0, &qword_1E1B48170);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    v37 = v7;
    v38 = v3;
    v41 = v5;
    v42 = a1;
    sub_1E1308058(v15, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v40 = sub_1E1AF591C();
    v39 = __swift_project_value_buffer(v40, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v26 = MEMORY[0x1E69E6158];
    v51 = MEMORY[0x1E69E6158];
    v49 = 0xD00000000000002ELL;
    v50 = 0x80000001E1B60720;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v51 = MEMORY[0x1E69E6530];
    v49 = v42;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v51 = v26;
    v49 = 0xD000000000000033;
    v50 = 0x80000001E1B60750;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v27 = (v43 + *(v44 + 52));
    v29 = *v27;
    v28 = v27[1];
    v51 = v26;
    v49 = v29;
    v50 = v28;

    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v30 = v38;
    v31 = *((*MEMORY[0x1E69E7D40] & *v38) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v32 = v45;
    sub_1E134FD1C(v30 + v31, v45, &qword_1ECEBB088, &qword_1E1B3FD28);
    if ((*(v46 + 48))(v32, 1, v41))
    {
      sub_1E1308058(v32, &qword_1ECEBB088, &qword_1E1B3FD28);
      return (*(v25 + 56))(v47, 1, 1, v24);
    }

    else
    {
      v35 = v37;
      sub_1E134FD1C(v32, v37, &qword_1ECEBB080, &qword_1E1B3FD20);
      sub_1E1308058(v32, &qword_1ECEBB088, &qword_1E1B3FD28);
      sub_1E18E5378(v42, v47);
      return sub_1E1308058(v35, &qword_1ECEBB080, &qword_1E1B3FD20);
    }
  }

  else
  {
    v34 = v47;
    (*(v25 + 32))(v47, v15, v24);
    return (*(v25 + 56))(v34, 0, 1, v24);
  }
}

uint64_t sub_1E18E5378@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  v9 = v8;
  if (a1 < 0 || (v10 = *(v2 + *(v8 + 36)), *(v10 + 16) <= a1))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  else
  {
    sub_1E141CF00(v10 + 40 * a1 + 32, &v24);
    sub_1E19949E0(&v24, v7);
    sub_1E138867C(&v24);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      (*(v12 + 32))(a2, v7, v11);
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  v22 = v9;
  v23 = a2;
  sub_1E1308058(v7, &qword_1ECEB75A0, &qword_1E1B2AE10);
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v21 = sub_1E1AF591C();
  v20[1] = __swift_project_value_buffer(v21, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B04930;
  v15 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v24 = 0xD000000000000019;
  v25 = 0x80000001E1B60970;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v16 = (v2 + *(v22 + 52));
  v18 = *v16;
  v17 = v16[1];
  v26 = v15;
  v24 = v18;
  v25 = v17;

  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v26 = v15;
  v24 = 0xD00000000000002FLL;
  v25 = 0x80000001E1B60A80;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v26 = MEMORY[0x1E69E6530];
  v24 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v26 = v15;
  v24 = 0xD00000000000001CLL;
  v25 = 0x80000001E1B60A60;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54BC();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  return (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
}

uint64_t sub_1E18E57F8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080, &qword_1E1B3FD20);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088, &qword_1E1B3FD28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v56 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  sub_1E134FD1C(v21, v20, &qword_1ECEB24A0, &qword_1E1B48170);
  v68 = v15;
  if (a3 < 0)
  {
    sub_1E1308058(v20, &qword_1ECEB24A0, &qword_1E1B48170);
  }

  else
  {
    v22 = *(*&v20[*(v15 + 36)] + 16);
    sub_1E1308058(v20, &qword_1ECEB24A0, &qword_1E1B48170);
    if (v22 > a3)
    {
      sub_1E134FD1C(v21, v17, &qword_1ECEB24A0, &qword_1E1B48170);
      v23 = v68;
      v24 = *&v17[*(v68 + 36)];
      if (a3 && *(v24 + 16) >= a3)
      {
        sub_1E141CF00(v24 + 40 * a3 - 8, &v71);
        v25 = *&v17[*(v23 + 40)];
        if (*(v25 + 16) && (v26 = sub_1E15952E8(&v71), (v27 & 1) != 0))
        {
          v70 = *(*(v25 + 56) + 8 * v26);
          type metadata accessor for Shelf(0);

          sub_1E1AF3DDC();
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
        (*(*(v48 - 8) + 56))(a1, v28, 1, v48);
        sub_1E138867C(&v71);
      }

      else
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
        (*(*(v47 - 8) + 56))(a1, 1, 1, v47);
      }

      if (a3 + 1 >= *(v24 + 16))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
        (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
      }

      else
      {
        sub_1E141CF00(v24 + 40 * (a3 + 1) + 32, &v71);
        v49 = *&v17[*(v23 + 40)];
        if (*(v49 + 16))
        {
          v50 = sub_1E15952E8(&v71);
          v51 = v69;
          if (v52)
          {
            v70 = *(*(v49 + 56) + 8 * v50);
            type metadata accessor for Shelf(0);

            sub_1E1AF3DDC();
            v53 = 0;
          }

          else
          {
            v53 = 1;
          }
        }

        else
        {
          v53 = 1;
          v51 = v69;
        }

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
        (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
        sub_1E138867C(&v71);
      }

      return sub_1E1308058(v17, &qword_1ECEB24A0, &qword_1E1B48170);
    }
  }

  v58 = v9;
  v62 = a1;
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v61 = sub_1E1AF591C();
  v60 = __swift_project_value_buffer(v61, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  v29 = MEMORY[0x1E69E6158];
  v73 = MEMORY[0x1E69E6158];
  v71 = 0xD000000000000033;
  v72 = 0x80000001E1B7D720;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v73 = MEMORY[0x1E69E6530];
  v57 = a3;
  v71 = a3;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v73 = v29;
  v71 = 0xD00000000000003DLL;
  v72 = 0x80000001E1B7D760;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v30 = (v21 + *(v68 + 52));
  v32 = *v30;
  v31 = v30[1];
  v73 = v29;
  v71 = v32;
  v72 = v31;

  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54BC();

  v33 = *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  v34 = v63;
  sub_1E134FD1C(v4 + v33, v63, &qword_1ECEBB088, &qword_1E1B3FD28);
  if ((*(v64 + 48))(v34, 1, v65))
  {
    sub_1E1308058(v34, &qword_1ECEBB088, &qword_1E1B3FD28);
    v35 = v67;
    v36 = *(v67 + 48);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    v38 = *(*(v37 - 8) + 56);
    v39 = v66;
    v38(v66, 1, 1, v37);
    v38(v39 + v36, 1, 1, v37);
  }

  else
  {
    v35 = v67;
    v40 = *(v67 + 48);
    v41 = v58;
    sub_1E134FD1C(v34, v58, &qword_1ECEBB080, &qword_1E1B3FD20);
    sub_1E1308058(v34, &qword_1ECEBB088, &qword_1E1B3FD28);
    v42 = v59;
    sub_1E18E6170(v59, v59 + v40, v57);
    sub_1E1308058(v41, &qword_1ECEBB080, &qword_1E1B3FD20);
    v43 = v42;
    v39 = v66;
    sub_1E137F600(v43, v66, &unk_1ECEB7E70, &unk_1E1B23CB0);
  }

  v44 = v69;
  v45 = *(v35 + 48);
  sub_1E137F600(v39, v62, &qword_1ECEB75A0, &qword_1E1B2AE10);
  return sub_1E137F600(v39 + v45, v44, &qword_1ECEB75A0, &qword_1E1B2AE10);
}

uint64_t sub_1E18E6170(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  v9 = *(v4 + *(v8 + 36));
  if ((a3 & 0x8000000000000000) == 0 && *(v9 + 16) > a3)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = *(v4 + *(v8 + 36));
  v21 = v4;
  v22 = a2;
  if (qword_1EE1E35E8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B070F0;
    v10 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69E6158];
    v23 = 0xD000000000000019;
    v24 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v11 = (v21 + *(v8 + 52));
    v8 = v11[1];
    v17 = *v11;
    v25 = v10;
    v23 = v17;
    v24 = v8;
    swift_bridgeObjectRetain_n();
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v25 = v10;
    v23 = 0xD000000000000035;
    v24 = 0x80000001E1B7D7A0;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v25 = MEMORY[0x1E69E6530];
    v23 = a3;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v25 = v10;
    v23 = 0xD000000000000026;
    v24 = 0x80000001E1B7D7E0;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v25 = v10;
    v23 = v17;
    v24 = v8;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    a2 = v22;
    a1 = v19;
    v9 = v20;
LABEL_5:
    v12 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      break;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  if (v12 < 0 || v12 >= *(v9 + 16))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1E141CF00(v9 + 40 * v12 + 32, &v23);
    sub_1E19949E0(&v23, a1);
    sub_1E138867C(&v23);
  }

  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_16;
  }

  if (v14 < 0 || v14 >= *(v9 + 16))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_1E141CF00(v9 + 40 * v14 + 32, &v23);
    sub_1E19949E0(&v23, a2);
    return sub_1E138867C(&v23);
  }
}

uint64_t sub_1E18E65B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080, &qword_1E1B3FD20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088, &qword_1E1B3FD28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - v16;
  sub_1E1AF1FAC();
  if (*(&v44 + 1))
  {
    v38 = a1;
    v39 = v12;
    v40 = v7;
    v41 = v6;
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    v18 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    swift_beginAccess();
    sub_1E134FD1C(v18, v14, &qword_1ECEB24A0, &qword_1E1B48170);
    sub_1E199454C(v46, v17);
    sub_1E1308058(v14, &qword_1ECEB24A0, &qword_1E1B48170);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v17, 1, v19) == 1)
    {
      v34 = v19;
      v33 = v9;
      v37 = a2;
      sub_1E1308058(v17, &qword_1ECEB4718, &qword_1E1B0E080);
      if (qword_1EE1E35E8 != -1)
      {
        swift_once();
      }

      v36 = sub_1E1AF591C();
      v35 = __swift_project_value_buffer(v36, qword_1EE216188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B070F0;
      *(&v44 + 1) = MEMORY[0x1E69E6158];
      v21 = MEMORY[0x1E69E6158];
      *&v43 = 0xD000000000000034;
      *(&v43 + 1) = 0x80000001E1B60800;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      *(&v44 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v43 = swift_allocObject();
      sub_1E141CF00(v46, v43 + 16);
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      *(&v44 + 1) = v21;
      strcpy(&v43, "at indexPath:");
      HIWORD(v43) = -4864;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v22 = sub_1E1AF01FC();
      *(&v44 + 1) = v22;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v43);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v38, v22);
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v24 = MEMORY[0x1E69E6158];
      *(&v44 + 1) = MEMORY[0x1E69E6158];
      *&v43 = 0xD00000000000002BLL;
      *(&v43 + 1) = 0x80000001E1B60840;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v25 = (v18 + *(v42 + 52));
      v27 = *v25;
      v26 = v25[1];
      *(&v44 + 1) = v24;
      *&v43 = v27;
      *(&v43 + 1) = v26;

      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54BC();

      v28 = *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
      swift_beginAccess();
      v29 = v39;
      sub_1E134FD1C(v3 + v28, v39, &qword_1ECEBB088, &qword_1E1B3FD28);
      if ((*(v40 + 48))(v29, 1, v41))
      {
        sub_1E138867C(v46);
        sub_1E1308058(v29, &qword_1ECEBB088, &qword_1E1B3FD28);
        return (*(v20 + 56))(v37, 1, 1, v34);
      }

      else
      {
        v32 = v33;
        sub_1E134FD1C(v29, v33, &qword_1ECEBB080, &qword_1E1B3FD20);
        sub_1E1308058(v29, &qword_1ECEBB088, &qword_1E1B3FD28);
        sub_1E18E6DB0(v46, v37);
        sub_1E1308058(v32, &qword_1ECEBB080, &qword_1E1B3FD20);
        return sub_1E138867C(v46);
      }
    }

    else
    {
      sub_1E138867C(v46);
      (*(v20 + 32))(a2, v17, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    sub_1E1308058(&v43, &qword_1ECEB4720, &unk_1E1B257D0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_1E18E6DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  sub_1E199454C(a1, v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v18 = a2;
    sub_1E1308058(v7, &qword_1ECEB4718, &qword_1E1B0E080);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    v16[1] = __swift_project_value_buffer(v17, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v16[0] = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v10 = MEMORY[0x1E69E6158];
    v21 = MEMORY[0x1E69E6158];
    v19 = 0xD000000000000019;
    v20 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v11 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170) + 52));
    v13 = *v11;
    v12 = v11[1];
    v21 = v10;
    v19 = v13;
    v20 = v12;

    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v21 = v10;
    v19 = 0xD000000000000031;
    v20 = 0x80000001E1B609C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v21 = &type metadata for DiffablePageContentIdentifier;
    v19 = swift_allocObject();
    sub_1E141CF00(a1, v19 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v21 = v10;
    v19 = 0xD000000000000019;
    v20 = 0x80000001E1B60A00;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v14 = 1;
    a2 = v18;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

char *sub_1E18E7198(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080, &qword_1E1B3FD20);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088, &qword_1E1B3FD28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v46 = v1;
  v18 = v1 + v17;
  swift_beginAccess();
  v51 = v18;
  sub_1E134FD1C(v18, v16, &qword_1ECEB24A0, &qword_1E1B48170);
  v19 = *(v8 + 16);
  v52 = a1;
  v44 = v19;
  v19(v10, a1, v7);
  v20 = type metadata accessor for Shelf(0);
  v53[0] = v20;
  v45 = sub_1E18E99D0(&qword_1EE1E5478, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v53[1] = v45;
  swift_getKeyPath(byte_1E1B3FD30, v53);
  sub_1E1AF3DAC();

  v21 = *(v8 + 8);
  v21(v10, v7);
  v47 = v11;
  if (*(*&v16[*(v11 + 36) + 8] + 16) && (sub_1E15952E8(&v54), (v22 & 1) != 0))
  {
    sub_1E138867C(&v54);
    sub_1E1308058(v16, &qword_1ECEB24A0, &qword_1E1B48170);
    sub_1E134FD1C(v51, v13, &qword_1ECEB24A0, &qword_1E1B48170);
    v23 = sub_1E19946F4(v52);
    v24 = v13;
    v25 = &qword_1ECEB24A0;
    v26 = &qword_1E1B48170;
  }

  else
  {
    v41 = v21;
    sub_1E138867C(&v54);
    sub_1E1308058(v16, &qword_1ECEB24A0, &qword_1E1B48170);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v43 = sub_1E1AF591C();
    v42 = __swift_project_value_buffer(v43, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v56 = MEMORY[0x1E69E6158];
    v54 = 0xD00000000000003BLL;
    v55 = 0x80000001E1B608C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v44(v10, v52, v7);
    v56 = &type metadata for DiffablePageContentIdentifier;
    v54 = swift_allocObject();
    v27 = MEMORY[0x1EEE9AC00](v54);
    v28 = v45;
    *(&v39 - 2) = v20;
    *(&v39 - 1) = v28;
    swift_getKeyPath(byte_1E1B3FD30, v27);
    sub_1E1AF3DAC();

    v41(v10, v7);
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v29 = MEMORY[0x1E69E6158];
    v56 = MEMORY[0x1E69E6158];
    v54 = 0xD000000000000044;
    v55 = 0x80000001E1B60900;
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v30 = (v51 + *(v47 + 52));
    v32 = *v30;
    v31 = v30[1];
    v56 = v29;
    v54 = v32;
    v55 = v31;

    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v33 = v46;
    v34 = *((*MEMORY[0x1E69E7D40] & *v46) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v48;
    sub_1E134FD1C(v35, v48, &qword_1ECEBB088, &qword_1E1B3FD28);
    if ((*(v49 + 48))(v36, 1, v50))
    {
      sub_1E1308058(v36, &qword_1ECEBB088, &qword_1E1B3FD28);
      return 0;
    }

    v38 = v40;
    sub_1E134FD1C(v36, v40, &qword_1ECEBB080, &qword_1E1B3FD20);
    sub_1E1308058(v36, &qword_1ECEBB088, &qword_1E1B3FD28);
    v23 = sub_1E18E7978(v52);
    v24 = v38;
    v25 = &qword_1ECEBB080;
    v26 = &qword_1E1B3FD20;
  }

  sub_1E1308058(v24, v25, v26);
  return v23;
}

char *sub_1E18E7978(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v31 = *(v4 + 16);
  v29 = v4 + 16;
  v31(&v21 - v6, a1, v3, v5);
  v8 = type metadata accessor for Shelf(0);
  v33[0] = v8;
  v9 = sub_1E18E99D0(&qword_1EE1E5478, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v33[1] = v9;
  swift_getKeyPath(byte_1E1B3FD30, v33);
  sub_1E1AF3DAC();

  v10 = *(v4 + 8);
  v30 = v4 + 8;
  v10(v7, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  v12 = *(v11 + 36);
  v32 = v1;
  if (*(*(v1 + v12 + 8) + 16) && (sub_1E15952E8(&v34), (v13 & 1) != 0))
  {
    sub_1E138867C(&v34);
    return sub_1E19946F4(a1);
  }

  else
  {
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = a1;
    sub_1E138867C(&v34);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    v24 = __swift_project_value_buffer(v22, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v23 = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v36 = MEMORY[0x1E69E6158];
    v15 = MEMORY[0x1E69E6158];
    v34 = 0xD000000000000019;
    v35 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v16 = (v32 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v36 = v15;
    v34 = v18;
    v35 = v17;

    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v36 = v15;
    v34 = 0xD00000000000003BLL;
    v35 = 0x80000001E1B608C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    (v31)(v7, v28, v3);
    v36 = &type metadata for DiffablePageContentIdentifier;
    v34 = swift_allocObject();
    v19 = MEMORY[0x1EEE9AC00](v34);
    v20 = v26;
    *(&v21 - 2) = v27;
    *(&v21 - 1) = v20;
    swift_getKeyPath(byte_1E1B3FD30, v19);
    sub_1E1AF3DAC();

    v25(v7, v3);
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v36 = MEMORY[0x1E69E6158];
    v34 = 0xD00000000000002DLL;
    v35 = 0x80000001E1B60990;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    return 0;
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(containing:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (sub_1E1AF01AC() < 1)
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1E1AF6FEC();
    v10 = sub_1E1AF772C();
    MEMORY[0x1E68FECA0](v10);

    MEMORY[0x1E68FECA0](0xD00000000000003CLL, 0x80000001E1B7D6C0);
    sub_1E1AF01FC();
    sub_1E18E99D0(&qword_1ECEB8588, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v11 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v11);

    MEMORY[0x1E68FECA0](0xD000000000000013, 0x80000001E1B7D700);
    v13[3] = MEMORY[0x1E69E6158];
    sub_1E1AF38BC();
    sub_1E1308058(v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF548C();

    v12 = type metadata accessor for ShelfLayoutContext(0);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }

  else
  {
    v7 = sub_1E1AF020C();

    return ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v7, a2, a3, a4);
  }
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContext(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0, &qword_1E1B075E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ShelfLayoutContext(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_1ECEB35C0;
    v21 = &qword_1E1B075E0;
    v22 = v15;
  }

  else
  {
    sub_1E18E9968(v15, v19, type metadata accessor for ShelfLayoutContext);
    v23 = (*(a3 + 56))(a2, a3);
    if (v23)
    {
      v24 = v23;
      sub_1E18E65B0(a1, v9);

      v26 = v37;
      v25 = v38;
      if ((*(v38 + 48))(v9, 1, v37) != 1)
      {
        v31 = v36;
        (*(v25 + 32))(v36, v9, v26);
        v32 = sub_1E159EAEC(MEMORY[0x1E69E7CC0]);
        v33 = sub_1E1AF018C();
        v40 = v32;
        v28 = v39;
        v34 = ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(v31, v33, &v40, v39);
        (*(v25 + 8))(v31, v26, v34);
        sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);

        v27 = 0;
        goto LABEL_9;
      }

      sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);
    }

    else
    {
      sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);
      (*(v38 + 56))(v9, 1, 1, v37);
    }

    v20 = &qword_1ECEB4718;
    v21 = &qword_1E1B0E080;
    v22 = v9;
  }

  sub_1E1308058(v22, v20, v21);
  v27 = 1;
  v28 = v39;
LABEL_9:
  v29 = type metadata accessor for ItemLayoutContext(0);
  return (*(*(v29 - 8) + 56))(v28, v27, 1, v29);
}

id ShelfBasedCollectionViewController.shelfLayoutContext(for:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v138 = a1;
  v8 = type metadata accessor for PageEnvironment(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = (&v116 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v116 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24);
  *&MinY = &v116 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v116 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v139 = *(v31 - 8);
  v140 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v137 = &v116 - v35;
  v36 = (*(a3 + 32))(a2, a3, v34);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  v124 = v17;
  v134 = a4;
  v38 = *(a3 + 56);
  v126 = a2;
  v127 = v4;
  v39 = v38(a2, a3);
  if (!v39)
  {

    (*(v139 + 56))(v30, 1, 1, v140);
    goto LABEL_6;
  }

  v40 = v39;
  v123 = v14;
  v125 = v12;
  sub_1E18E4C00(v138, v30);

  v42 = v139;
  v41 = v140;
  if ((*(v139 + 48))(v30, 1, v140) == 1)
  {

LABEL_6:
    a4 = v134;
    sub_1E1308058(v30, &qword_1ECEB75A0, &qword_1E1B2AE10);
LABEL_7:
    v43 = type metadata accessor for ShelfLayoutContext(0);
    return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
  }

  v45 = v137;
  (*(v42 + 32))(v137, v30, v41);
  v46 = v126;
  v47 = v38(v126, a3);
  if (!v47)
  {

    (*(v42 + 8))(v45, v41);
    a4 = v134;
    goto LABEL_7;
  }

  v48 = v47;
  v49 = v125;
  v50 = *&MinY;
  sub_1E18E57F8(*&MinY, *&MinY + *(v125 + 48), v138);

  v51 = v136;
  sub_1E137F600(v50, v136, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v52 = v37;
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v57 = [v52 readableContentGuide];
  v117 = v52;

  [v57 layoutFrame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v150.origin.x = v59;
  v150.origin.y = v61;
  v150.size.width = v63;
  v150.size.height = v65;
  MinY = CGRectGetMinY(v150);
  v151.origin.x = v59;
  v151.origin.y = v61;
  v151.size.width = v63;
  v151.size.height = v65;
  MinX = CGRectGetMinX(v151);
  v152.origin.x = v59;
  v152.origin.y = v61;
  v152.size.width = v63;
  v152.size.height = v65;
  MaxY = CGRectGetMaxY(v152);
  v153.origin.x = v59;
  v153.origin.y = v61;
  v153.size.width = v63;
  v153.size.height = v65;
  MaxX = CGRectGetMaxX(v153);
  v68 = v127;
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v147);
  v119 = v149;
  v120 = v148;
  v118 = __swift_project_boxed_opaque_existential_1Tm(v147, v148);
  v69 = v133;
  sub_1E134FD1C(v51, v133, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v121 = *(a3 + 104);
  v70 = v121(v46, a3);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  result = [v68 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v77 = result;
  v78 = v56 - MaxY;
  v79 = v54 - MaxX;
  v80 = *(v49 + 48);
  v81 = [result traitCollection];

  v82 = v130;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v81, 1, v130);
  (*(v119 + 8))(v146, v137, v69, v69 + v80, v82, v120, v54, v56, MinY, MinX, v78, v79, v70, v72, v74, v76);
  sub_1E18E9908(v82, type metadata accessor for PageEnvironment);
  sub_1E1308058(v69 + v80, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E1308058(v69, &qword_1ECEB75A0, &qword_1E1B2AE10);
  __swift_destroy_boxed_opaque_existential_1(v147);
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v143);
  v83 = v144;
  v84 = v145;
  v130 = __swift_project_boxed_opaque_existential_1Tm(v143, v144);
  v85 = a3;
  v86 = v131;
  sub_1E134FD1C(v136, v131, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v133 = v85;
  v87 = v121(v46, v85);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  result = [v68 view];
  v94 = v139;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v95 = result;
  v96 = *(v125 + 48);
  v97 = [result traitCollection];

  v98 = v128;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v97, 1, v128);
  v99 = v137;
  (*(v84 + 16))(v142, v137, v86, v86 + v96, v98, v83, v84, v54, v56, MinY, MinX, v78, v79, v87, v89, v91, v93);
  sub_1E18E9908(v98, type metadata accessor for PageEnvironment);
  sub_1E1308058(v86 + v96, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E1308058(v86, &qword_1ECEB75A0, &qword_1E1B2AE10);
  __swift_destroy_boxed_opaque_existential_1(v143);
  v100 = *(v94 + 16);
  v100(v135, v99, v140);
  v101 = v129;
  sub_1E134FD1C(v136, v129, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v133 = ShelfBasedCollectionViewController.stateStore.getter(v126, v133);
  result = [v68 view];
  if (result)
  {
    v102 = result;
    v103 = v125;
    v104 = *(v125 + 48);
    MinY = COERCE_DOUBLE([result traitCollection]);

    v105 = v124;
    sub_1E137F600(v101, v124, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E137F600(v101 + v104, v105 + *(v103 + 48), &qword_1ECEB75A0, &qword_1E1B2AE10);
    v106 = v134;
    v100(v134, v135, v140);
    v107 = type metadata accessor for ShelfLayoutContext(0);
    *&v106[v107[5]] = v138;
    v108 = v123;
    sub_1E134FD1C(v105, v123, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v109 = *(v103 + 48);
    v110 = &v106[v107[6]];
    sub_1E137F600(v108, v110, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E137F600(v108 + v109, v110 + *(v103 + 48), &qword_1ECEB75A0, &qword_1E1B2AE10);
    memcpy(&v106[v107[7]], v146, 0x188uLL);
    memcpy(&v106[v107[8]], v142, 0x188uLL);
    *&v106[v107[9]] = v133;
    v111 = type metadata accessor for LayoutContextTraitEnvironment();
    v112 = objc_allocWithZone(v111);
    *&v112[OBJC_IVAR____TtC11AppStoreKit29LayoutContextTraitEnvironment_traitCollection] = MinY;
    v141.receiver = v112;
    v141.super_class = v111;
    v113 = objc_msgSendSuper2(&v141, sel_init);

    sub_1E1308058(v105, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v114 = v140;
    v115 = *(v139 + 8);
    v115(v135, v140);
    sub_1E1308058(v136, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v115(v137, v114);
    *&v106[v107[10]] = v113;
    return (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContexts(for:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB078, &qword_1E1B3FCD8);
  MEMORY[0x1EEE9AC00](v62);
  v67 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v50 - v9;
  v60 = type metadata accessor for ItemLayoutContext(0);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0, &qword_1E1B075E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for ShelfLayoutContext(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)(a1, a2, a3, v14);
  v19 = *(v16 + 48);
  v50 = v15;
  if (v19(v14, 1, v15) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB35C0, &qword_1E1B075E0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E18E9968(v14, v18, type metadata accessor for ShelfLayoutContext);
  v20 = (*(a3 + 56))(a2, a3);
  if (!v20 || (v21 = v20, v22 = sub_1E18E7198(v18), v21, !v22))
  {
    sub_1E18E9908(v18, type metadata accessor for ShelfLayoutContext);
    return MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 2);
  if (!v23)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_29:
    sub_1E18E9908(v18, type metadata accessor for ShelfLayoutContext);
    return v27;
  }

  v74 = MEMORY[0x1E69E7CC0];
  sub_1E135C7EC(0, v23, 0);
  v58 = *(v22 + 2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v25 = 0;
  v66 = result;
  v26 = *(result - 8);
  v54 = &v22[(*(v26 + 80) + 32) & ~*(v26 + 80)];
  v27 = v74;
  v55 = v26;
  v52 = v26 + 32;
  v51 = *(v50 + 24);
  v57 = v22;
  v56 = v23;
  v53 = v26 + 16;
  while (v58 != v25)
  {
    if (v25 >= *(v22 + 2))
    {
      goto LABEL_31;
    }

    v28 = v62;
    v29 = *(v62 + 48);
    v30 = v18;
    v31 = v55;
    v32 = &v54[*(v55 + 72) * v25];
    v33 = v61;
    v34 = v66;
    v65 = *(v55 + 16);
    v65(&v61[v29], v32, v66);
    v35 = v67;
    *v67 = v25;
    v36 = *(v28 + 48);
    v37 = *(v31 + 32);
    v18 = v30;
    v37(v35 + v36, &v33[v29], v34);
    v38 = v63;
    sub_1E134FD1C(v30 + v51, v63, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
    LODWORD(v28) = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_1E1308058(v38 + *(v64 + 48), &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v38, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (v28 == 1)
    {
      v40 = 10;
    }

    else
    {
      v40 = 2;
    }

    swift_getKeyPath(byte_1E1B3FCE0);
    sub_1E1AF3DAC();

    v41 = v40 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v71 >> 1) & 1));
    swift_getKeyPath(byte_1E1B3FD00);
    sub_1E1AF3DAC();

    if (v71[0] == 1)
    {
      v41 |= 1uLL;
    }

    else
    {
      v42 = [*(v30 + *(v50 + 40)) traitCollection];
      v43 = sub_1E1AF695C();

      if (v43)
      {
        v41 |= 0x10uLL;
      }
    }

    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E90, &qword_1E1B2AE58);
    if (swift_dynamicCast())
    {
      sub_1E1308EC0(v68, v71);
      v44 = v72;
      v45 = v73;
      __swift_project_boxed_opaque_existential_1Tm(v71, v72);
      (*(v45 + 8))(v70, v44, v45);
      if (LOBYTE(v70[0]) != 4)
      {
        v41 |= 0x40uLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      sub_1E1308058(v68, &unk_1ECEB7E98, &qword_1E1B2AE60);
    }

    v46 = v60;
    v47 = v67;
    v65(v11 + *(v60 + 20), v67 + v36, v66);
    sub_1E13926F0(v30, v11 + v46[8]);
    *v11 = v25;
    *(v11 + v46[6]) = MEMORY[0x1E69E7CC8];
    *(v11 + v46[7]) = v41;
    sub_1E1308058(v47, &qword_1ECEBB078, &qword_1E1B3FCD8);
    v74 = v27;
    v49 = *(v27 + 16);
    v48 = *(v27 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1E135C7EC((v48 > 1), v49 + 1, 1);
      v27 = v74;
    }

    ++v25;
    *(v27 + 16) = v49 + 1;
    result = sub_1E18E9968(v11, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, type metadata accessor for ItemLayoutContext);
    v22 = v57;
    if (v56 == v25)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E18E9908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E18E9968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E18E99D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E18E9A54(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v6 = a2;
    v7 = sub_1E1AF1E8C();
    if (sub_1E1AF6AEC())
    {
      v6;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E1AF1E9C();
  }

  if (a3)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v9 = a3;
    v8 = sub_1E1AF1E8C();
    if (sub_1E1AF6ADC())
    {
      v9;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E1AF1E9C();
  }
}

BOOL CornerStyle.apply(withRadius:to:)(void *a1, double a2)
{
  v5 = *v2;
  v6 = sel__setCornerRadius_;
  if (v5)
  {
    v6 = sel__setContinuousCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setContinuousCornerRadius_];
  }

  else
  {
    [a1 v6];
  }

  v7 = sel__setContinuousCornerRadius_;
  if (v5)
  {
    v7 = sel__setCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setCornerRadius_];
  }

  else
  {
    [a1 v7];
  }

  v9 = [a1 layer];
  [v9 setAllowsEdgeAntialiasing_];

  return a2 >= COERCE_DOUBLE(1);
}

double sub_1E18E9D84(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v4);

  return MaxY;
}

CGFloat UIView.firstBaselineFromTop.getter()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double sub_1E18E9E10(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v6);
  [v1 lastBaselineFromBottom];
  v4 = v3;

  return MaxY - v4;
}

double UIView.lastBaselineMaxY.getter()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double sub_1E18E9EEC(void *a1)
{
  v1 = a1;
  v2 = UIButton.lastBaselineFromBottom.getter();

  return v2;
}

double UIButton.lastBaselineFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

double sub_1E18EA044(void *a1)
{
  v1 = a1;
  v2 = UIImageView.lastBaselineFromBottom.getter();

  return v2;
}

double UIImageView.lastBaselineFromBottom.getter()
{
  v1 = [v0 image];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 preferredSymbolConfiguration];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 traitCollection];
      v7 = [v5 configurationWithTraitCollection_];

      v8 = [v3 imageByApplyingSymbolConfiguration_];
      if (!v8)
      {

        return v2;
      }

      v9 = v8;
      v10 = sub_1E1AF6CCC();
      v12 = v11;

      if (v12)
      {
        return v2;
      }

      return *&v10;
    }

    v10 = sub_1E1AF6CCC();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return *&v10;
    }
  }

  return v2;
}

uint64_t sub_1E18EA1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680, qword_1E1B08020);
  result = swift_allocObject();
  *(result + 16) = sub_1E18EA20C;
  *(result + 24) = 0;
  qword_1ECEBB090 = result;
  return result;
}

void sub_1E18EA20C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_1E1AF6ABC())
  {

    v5 = 4.0;
    goto LABEL_12;
  }

  v6 = sub_1E1AF5DFC();
  v8 = v7;
  if (v6 != sub_1E1AF5DFC() || v8 != v9)
  {
    v11 = sub_1E1AF74AC();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_1E1AF6AFC();

  v5 = 0.0;
  if (v12)
  {
    v5 = 1.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECEB1598 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECEBB090;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  result = sub_1E1308EC0(a3, a5 + 80);
  *(a5 + 120) = v8;
  return result;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v30 = a2;
  v27 = sub_1E1AF745C();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
  sub_1E1AF11CC();
  v28 = v17;
  v29 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  v25[3] = a1;
  sub_1E1AF11CC();
  v26 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMidY(v33);
  sub_1E1AF116C();
  v19 = v6[13];
  v25[2] = v6[14];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v19);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1E1AF115C();
  CGRectGetMaxX(v34);
  v31 = v6[15];

  sub_1E1AF102C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150, qword_1E1B21020);
  sub_1E140CE44();
  sub_1E1AF12DC();
  v20 = v13 + 8;
  v21 = *(v13 + 8);
  v25[1] = v20;
  v22 = v27;
  v21(v15, v27);

  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMidY(v35);
  sub_1E1AF116C();
  v23 = v6[8];
  v26 = v6[9];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v23);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  sub_1E1AF115C();
  CGRectGetMaxX(v36);
  v31 = v6[15];

  sub_1E1AF102C();
  sub_1E1AF12DC();
  v21(v15, v22);

  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMidY(v37);
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

void MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  sub_1E1AF11CC();
  v11 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  sub_1E1AF11CC();
  v12 = v3[15];

  sub_1E1AF102C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150, qword_1E1B21020);
  sub_1E140CE44();
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);

  v12 = v3[15];

  sub_1E1AF102C();
  sub_1E1AF12DC();
  v10(v8, v5);
}

uint64_t sub_1E18EAA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E18EAAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E18EAB4C()
{
  result = qword_1ECEBA360;
  if (!qword_1ECEBA360)
  {
    type metadata accessor for CopyTextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA360);
  }

  return result;
}

uint64_t sub_1E18EABB0(uint64_t a1)
{
  v1 = sub_1E1AF3E2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() generalPasteboard];
  v6 = sub_1E1AF5DBC();
  [v5 setString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  (*(v2 + 104))(v4, *MEMORY[0x1E69AB010], v1);
  return sub_1E1AF582C();
}

BOOL sub_1E18EAD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_1F5C3F2E8;
  type metadata accessor for Restrictions();
  if (v6())
  {
    if (off_1F5C3F2D8() >= a3)
    {
      return 0;
    }

    v7 = ASKDeviceTypeGetCurrent();
    v8 = sub_1E1AF5DFC();
    v10 = v9;
    if (v8 == sub_1E1AF5DFC() && v10 == v11)
    {

      return 0;
    }

    v13 = sub_1E1AF74AC();

    if (v13)
    {
      return 0;
    }

    if (a2)
    {
      v15 = off_1F5C3F2E0();
      if (*(v15 + 16))
      {
        v16 = sub_1E13018F8(a1, a2);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          return v18 < a3;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1E18EAEB0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  type metadata accessor for Restrictions();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (off_1F5C3F2E8() & 1) != 0 && ((off_1F5C3F2F8() & 1) == 0 || (a4 & 0x100) != 0) && ((a4 & 1) != 0 || !sub_1E18EAD00(a1, a2, a3)) || (sub_1E1AF690C(), (v10))
  {

    return 0;
  }

  else
  {
    sub_1E1AF690C();

    if (v10)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t AppEventNotificationConfig.appEventId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppEventNotificationConfig.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppEventNotificationConfig.detail.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E18EB19C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *AppEventNotificationConfig.__allocating_init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  *(v23 + 5) = a5;
  *(v23 + 6) = a6;
  *(v23 + 7) = a7;
  sub_1E137F600(a8, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl], &unk_1ECEB4B60, &unk_1E1B02620);
  v24 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v25 = sub_1E1AEFE6C();
  (*(*(v25 - 8) + 32))(&v23[v24], a9, v25);
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v26 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v27 = sub_1E1AEFCCC();
  (*(*(v27 - 8) + 32))(&v23[v26], a13, v27);
  sub_1E137F600(a14, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_1ECEB36B0, &unk_1E1B08080);
  sub_1E137F600(a15, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_1ECEB36B0, &unk_1E1B08080);
  return v23;
}

char *AppEventNotificationConfig.init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  *(v15 + 7) = a7;
  sub_1E137F600(a8, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl], &unk_1ECEB4B60, &unk_1E1B02620);
  v23 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v24 = sub_1E1AEFE6C();
  (*(*(v24 - 8) + 32))(&v15[v23], a9, v24);
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v25 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v26 = sub_1E1AEFCCC();
  (*(*(v26 - 8) + 32))(&v15[v25], a13, v26);
  sub_1E137F600(a14, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_1ECEB36B0, &unk_1E1B08080);
  sub_1E137F600(a15, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_1ECEB36B0, &unk_1E1B08080);
  return v15;
}

uint64_t AppEventNotificationConfig.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v164 = a2;
  v134 = sub_1E1AEFEAC();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0, &unk_1E1B08080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v148 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v142 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v143 = (&v124 - v17);
  v18 = sub_1E1AEFCCC();
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = &v124 - v23;
  v24 = sub_1E1AEFE6C();
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v153 = &v124 - v27;
  v28 = sub_1E1AF380C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v124 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v124 - v45;
  v47 = a1;
  sub_1E1AF381C();
  v138 = sub_1E1AF37CC();
  v49 = v48;
  v52 = *(v29 + 8);
  v51 = v29 + 8;
  v50 = v52;
  v52(v46, v28);
  v156 = v49;
  if (!v49)
  {
    v62 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v64 = v63;
    *v63 = 0x746E657645707061;
    v65 = 0xEA00000000006449;
LABEL_7:
    v63[1] = v65;
    v63[2] = v158;
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69AB690], v62);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v28);
    return v50;
  }

  v157 = v50;
  sub_1E1AF381C();
  v53 = sub_1E1AF37CC();
  v50 = v157;
  v130 = v53;
  v55 = v54;
  v157(v43, v28);
  if (!v55)
  {

    v62 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v64 = v63;
    *v63 = 0x656C746974;
    v65 = 0xE500000000000000;
    goto LABEL_7;
  }

  sub_1E1AF381C();
  v56 = v152;
  sub_1E1AF371C();
  v50 = v157;
  v157(v40, v28);
  v131 = v28;
  v57 = v154;
  v58 = v155;
  v59 = (*(v154 + 48))(v56, 1, v155);
  v135 = v51;
  if (v59 == 1)
  {

    sub_1E1308058(v56, &unk_1ECEBB780, &unk_1E1B029A0);
    v60 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v61 = 0x5479616C70736964;
    v61[1] = 0xEB00000000656D69;
    v61[2] = v158;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x1E69AB690], v60);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v131);
  }

  else
  {
    v67 = *(v57 + 32);
    v129 = v57 + 32;
    v128 = v67;
    v67(v153, v56, v58);
    v68 = v50;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v70 = v69;
    v71 = v37;
    v72 = v131;
    v73 = v135;
    v68(v71, v131);
    if (v70)
    {
      v74 = v72;
      v152 = v47;
      v75 = v143;
      sub_1E1AEFCAC();

      v50 = v150;
      v76 = v151;
      v77 = *(v150 + 48);
      if (v77(v75, 1, v151) == 1)
      {

        sub_1E1308058(v75, &unk_1ECEB4B60, &unk_1E1B02620);
        v78 = sub_1E1AF5A7C();
        sub_1E1380704();
        swift_allocError();
        v79 = MEMORY[0x1E69E7CC0];
        strcpy(v80, "destinationUrl");
        v80[15] = -18;
        *(v80 + 2) = v158;
        *(v80 + 3) = v79;
        (*(*(v78 - 8) + 104))(v80, *MEMORY[0x1E69AB6A0], v78);
        swift_willThrow();
        (*(v159 + 8))(v164, v160);
        v157(v152, v72);
        (*(v154 + 8))(v153, v155);
      }

      else
      {
        v127 = v55;
        v83 = *(v50 + 32);
        v154 = v50 + 32;
        v143 = v83;
        v83(v145, v75, v76);
        v84 = v144;
        v85 = v50;
        sub_1E1AF381C();
        v126 = sub_1E1AF37CC();
        v125 = v86;
        v87 = v76;
        v88 = v157;
        v157(v84, v72);
        v89 = *(v85 + 56);
        v150 = v85 + 56;
        v89(v149, 1, 1, v87);
        v90 = v137;
        sub_1E1AF381C();
        sub_1E1AF37CC();
        v92 = v91;
        v88(v90, v74);
        v93 = v164;
        v94 = v159;
        if (v92)
        {
          v95 = v136;
          sub_1E1AEFCAC();

          v96 = v151;
          if (v77(v95, 1, v151) == 1)
          {
            sub_1E1308058(v95, &unk_1ECEB4B60, &unk_1E1B02620);
          }

          else
          {
            v97 = v149;
            sub_1E1308058(v149, &unk_1ECEB4B60, &unk_1E1B02620);
            v143(v97, v95, v96);
            v89(v97, 0, 1, v96);
          }
        }

        type metadata accessor for Action(0);
        v98 = v144;
        v99 = v152;
        sub_1E1AF381C();
        v150 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v93);
        v100 = v131;
        v101 = v157;
        v157(v98, v131);
        sub_1E1AF381C();
        v137 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_1E1AF381C();
        v136 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_1E1AF3ABC();
        sub_1E1AF381C();
        v102 = v94;
        v103 = *(v94 + 16);
        v104 = v140;
        v105 = v160;
        v103(v140, v164, v160);
        sub_1E1AF464C();
        sub_1E1AF381C();
        v103(v104, v164, v105);
        sub_1E1AF464C();
        v106 = v139;
        sub_1E1AF381C();
        v107 = sub_1E1AF37CC();
        if (v108)
        {
          v161 = v107;
          v162 = v108;
        }

        else
        {
          v109 = v132;
          sub_1E1AEFE9C();
          v110 = sub_1E1AEFE7C();
          v112 = v111;
          (*(v133 + 8))(v109, v134);
          v161 = v110;
          v162 = v112;
        }

        sub_1E1AF6F6C();
        (*(v102 + 8))(v164, v105);
        v113 = v131;
        v114 = v157;
        v157(v99, v131);
        v114(v106, v113);
        sub_1E134B88C(&v163);
        v115 = v142;
        sub_1E137F600(v149, v142, &unk_1ECEB4B60, &unk_1E1B02620);
        v116 = v141;
        v117 = v155;
        v118 = v128;
        v128(v141, v153, v155);
        v119 = v143;
        v143(v146, v145, v151);
        v50 = swift_allocObject();
        v120 = v156;
        *(v50 + 16) = v138;
        *(v50 + 24) = v120;
        v121 = v127;
        *(v50 + 32) = v130;
        *(v50 + 40) = v121;
        v122 = v125;
        *(v50 + 48) = v126;
        *(v50 + 56) = v122;
        sub_1E137F600(v115, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl, &unk_1ECEB4B60, &unk_1E1B02620);
        v118(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime, v116, v117);
        v123 = v151;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction) = v150;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction) = v137;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction) = v136;
        v119(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl, v146, v123);
        sub_1E137F600(v147, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_1ECEB36B0, &unk_1E1B08080);
        sub_1E137F600(v148, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_1ECEB36B0, &unk_1E1B08080);
      }
    }

    else
    {

      v81 = sub_1E1AF5A7C();
      sub_1E1380704();
      v50 = v73;
      swift_allocError();
      strcpy(v82, "destinationUrl");
      v82[15] = -18;
      *(v82 + 2) = v158;
      (*(*(v81 - 8) + 104))(v82, *MEMORY[0x1E69AB690], v81);
      swift_willThrow();
      (*(v159 + 8))(v164, v160);
      v68(v47, v72);
      (*(v57 + 8))(v153, v155);
    }
  }

  return v50;
}

char *AppEventNotificationConfig.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  v1 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_1ECEB36B0, &unk_1E1B08080);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_1ECEB36B0, &unk_1E1B08080);
  return v0;
}

uint64_t AppEventNotificationConfig.__deallocating_deinit()
{
  AppEventNotificationConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18ECA54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventNotificationConfig.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventNotificationConfig(uint64_t a1)
{
  result = qword_1EE1E1350;
  if (!qword_1EE1E1350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E18ECAD4(uint64_t a1)
{
  sub_1E18ECCEC(319, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1E1AEFE6C();
    if (v2 <= 0x3F)
    {
      sub_1E1AEFCCC();
      if (v3 <= 0x3F)
      {
        sub_1E18ECCEC(319, qword_1EE1E3B30, MEMORY[0x1E69AAF48]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E18ECCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

AppStoreKit::HttpActionMethod_optional __swiftcall HttpActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 5522759;
  v3 = 0x534E4F4954504FLL;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x4554454C4544;
  if (v1 != 4)
  {
    v4 = 0x5443454E4E4F43;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145128264;
  if (v1 != 2)
  {
    v5 = 5526864;
  }

  if (*v0)
  {
    v2 = 1414745936;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1E18ECEF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE700000000000000;
  v6 = 0x534E4F4954504FLL;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (v2 != 4)
  {
    v8 = 0x5443454E4E4F43;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145128264;
  if (v2 != 2)
  {
    v10 = 5526864;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 1414745936;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t HttpAction.__allocating_init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HttpAction.init(url:presentationStyle:actionMetrics:)(a1, a2, a3);
  return v6;
}

void *HttpAction.init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_1E1AEFEAC();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_method) = 0;
  v16 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  *(v4 + v16) = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v17 = (v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction) = 0;
  v18 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  v21 = v4 + v18;
  v22 = v15;
  v23 = a1;
  (*(v20 + 16))(v21, a1, v19);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  (*(v13 + 16))(v22, a3, v12);
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v25 = 0u;
  v25[1] = 0u;
  sub_1E138853C(v51, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    v26 = v39;
    sub_1E1AEFE9C();
    v38 = v11;
    v37 = a3;
    v27 = v23;
    v28 = v22;
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v40 + 8))(v26, v41);
    v43 = v29;
    v44 = v31;
    v22 = v28;
    v23 = v27;
    a3 = v37;
    v11 = v38;
    sub_1E1AF6F6C();
    sub_1E1308058(&v45, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v13 + 8))(a3, v12);
  (*(v20 + 8))(v23, v19);
  sub_1E1308058(v51, &unk_1ECEB5670, qword_1E1B03EC0);
  v32 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v32 + 4) = v50;
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  sub_1E134B7C8(v11, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v4[2] = 0;
  v4[3] = 0;
  v34 = v42;
  v4[4] = 0;
  v4[5] = v34;
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v22, v12);
  return v4;
}

uint64_t *HttpAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v108 = *v3;
  v125 = sub_1E1AF39DC();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v117 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v94 - v7;
  v107 = sub_1E1AF40DC();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v94 - v10;
  v128 = sub_1E1AF380C();
  v12 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v116 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v94 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  v31 = sub_1E1AEFCCC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v122 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_method) = 0;
  v34 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  v35 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v118 = v34;
  *(v3 + v34) = v35;
  v36 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  *v36 = 0;
  v36[1] = 0;
  v101 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest) = 0;
  v102 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication) = 0;
  v104 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken) = 0;
  v109 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount) = 0;
  v111 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache) = 0;
  v121 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction) = 0;
  v37 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction) = 0;
  v120 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v38 = v32;
  v115 = v12;
  v39 = (v12 + 8);
  v40 = *(v12 + 8);
  v40(v30, v128);
  if ((*(v38 + 48))(v11, 1, v31) == 1)
  {
    sub_1E1308058(v11, &unk_1ECEB4B60, &unk_1E1B02620);
    v41 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v42 = 7107189;
    v43 = v108;
    v42[1] = 0xE300000000000000;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E69AB690], v41);
    swift_willThrow();
    (*(v124 + 8))(v126, v125);
    v40(v120, v128);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v95 = v36;
    v96 = v37;
    v44 = v122;
    (*(v38 + 32))(v122, v11, v31);
    v97 = v38;
    v45 = *(v38 + 16);
    v108 = v31;
    v45(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_url, v44, v31);
    v46 = v119;
    v47 = v120;
    sub_1E1AF381C();
    sub_1E18EEFB0();
    sub_1E1AF36DC();
    v40(v46, v128);
    v48 = v127;
    v49 = v47;
    if (v127 != 8)
    {
      v50 = v98;
      swift_beginAccess();
      *(v3 + v50) = v48;
    }

    v51 = v100;
    v52 = v49;
    sub_1E1AF381C();
    v53 = v103;
    sub_1E1AF368C();
    v100 = v39;
    v40(v51, v128);
    v54 = v106;
    v55 = v107;
    v56 = (*(v106 + 48))(v53, 1, v107);
    v94 = v3;
    if (v56 == 1)
    {
      sub_1E1308058(v53, &qword_1ECEB2B28, qword_1E1B03BE0);
    }

    else
    {
      v57 = v99;
      (*(v54 + 32))(v99, v53, v55);
      v58 = v54;
      v59 = v123;
      v60 = sub_1E1AF40AC();
      v123 = v59;
      (*(v58 + 8))(v57, v55);
      v61 = v118;
      swift_beginAccess();
      *(v3 + v61) = v60;
    }

    v62 = v95;
    v63 = v119;
    sub_1E1AF381C();
    v64 = sub_1E1AF37CC();
    v66 = v65;
    v67 = v128;
    v68 = v40;
    v40(v63, v128);
    swift_beginAccess();
    *v62 = v64;
    v62[1] = v66;

    v69 = v105;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v69, v67);
    v70 = v101;
    swift_beginAccess();
    *v70 = v64 & 1;
    v71 = v110;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v71, v67);
    v72 = v102;
    swift_beginAccess();
    *v72 = v64 & 1;
    v73 = v112;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v73, v67);
    v74 = v104;
    swift_beginAccess();
    *v74 = v64 & 1;
    v75 = v113;
    sub_1E1AF381C();
    v76 = sub_1E1AF36EC();
    LOBYTE(v66) = v77;
    v40(v75, v67);
    if (v66)
    {
      v76 = 0;
    }

    v78 = v109;
    swift_beginAccess();
    *v78 = v76;
    v79 = v114;
    sub_1E1AF381C();
    v80 = sub_1E1AF370C();
    v40(v79, v67);
    v81 = v111;
    swift_beginAccess();
    *v81 = v80 & 1;
    type metadata accessor for Action(0);
    v3 = v63;
    sub_1E1AF381C();
    v82 = v126;
    v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v63, v126);
    v68(v63, v67);
    v84 = v121;
    swift_beginAccess();
    *v84 = v83;

    sub_1E1AF381C();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v3, v82);
    v121 = v68;
    v68(v3, v67);
    v86 = v96;
    swift_beginAccess();
    *v86 = v85;

    v87 = v116;
    (*(v115 + 16))(v116, v52, v67);
    v88 = v124;
    v89 = v117;
    v90 = v125;
    (*(v124 + 16))(v117, v82, v125);
    v91 = v123;
    v92 = Action.init(deserializing:using:)(v87, v89);
    if (!v91)
    {
      v3 = v92;
    }

    (*(v88 + 8))(v126, v90);
    (v121)(v52, v67);
    (*(v97 + 8))(v122, v108);
  }

  return v3;
}

void sub_1E18EE36C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1E1AF37CC();
  v8 = v7;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    a1 = 0;
    a2 = 0;
    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v8;
}

uint64_t HttpAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void HttpAction.method.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void HttpAction.method.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double HttpAction.headers.getter()
{
  swift_beginAccess();

  return result;
}

double HttpAction.headers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t HttpAction.body.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double HttpAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t HttpAction.isStoreRequest.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.isStoreRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.needsAuthentication.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.needsAuthentication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.needsMediaToken.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.needsMediaToken.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.retryCount.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.retryCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.disableCache.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.disableCache.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1E18EED58()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t HttpAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpAction.__deallocating_deinit()
{
  HttpAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E18EEFB0()
{
  result = qword_1EE1F2B38[0];
  if (!qword_1EE1F2B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F2B38);
  }

  return result;
}

unint64_t sub_1E18EF008()
{
  result = qword_1ECEBB118;
  if (!qword_1ECEBB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB118);
  }

  return result;
}

uint64_t type metadata accessor for HttpAction(uint64_t a1)
{
  result = qword_1EE1F8208;
  if (!qword_1EE1F8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18EF0C0(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E18EF1EC()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE216078);
  __swift_project_value_buffer(v4, qword_1EE216078);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

double RemotePersonalizationAppStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*RemotePersonalizationAppStateDataSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C3A20;
}

double RemotePersonalizationAppStateDataSource.expectedAppStates.getter()
{
  swift_beginAccess();

  return result;
}

double RemotePersonalizationAppStateDataSource.expectedAppStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)(uint64_t a1)
{
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3488, 0x1E698CBA8);
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3470, 0x1E698CAC8);
  sub_1E1AF55EC();
  v2 = objc_allocWithZone(v1);
  v3 = RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(v7, v6, v5);

  return v3;
}

id RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_1E1AF68DC();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v9);
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_accessQueue;
  v10 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v27[1] = "ccessAction";
  v27[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80, &unk_1E1B26740);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v35 = v11;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v29);
  *&v3[v28] = sub_1E1AF692C();
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds] = MEMORY[0x1E69E7CD0];
  v12 = v32;
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_bag] = v33;
  v13 = v31;
  *&v4[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_urlSession] = v31;
  *&v4[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_process] = v12;
  v34.receiver = v4;
  v34.super_class = ObjectType;

  v14 = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v34, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  if (qword_1EE1E6DB0 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v18 selector:? name:? object:?];

  v20 = [v17 defaultCenter];
  v21 = *MEMORY[0x1E69597D8];
  v22 = objc_opt_self();
  v23 = v18;
  v24 = [v22 ams_sharedAccountStore];
  [v20 addObserver:v23 selector:sel_storeAccountDidChange name:v21 object:v24];

  v25 = [v17 defaultCenter];
  if (qword_1EE1E66E0 != -1)
  {
    swift_once();
  }

  [v25 addObserver:v23 selector:? name:? object:?];

  return v23;
}

id RemotePersonalizationAppStateDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*RemotePersonalizationAppStateDataSource.refreshData(completion:)(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t RemotePersonalizationAppStateDataSource.refreshData(for:completion:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

Swift::String_optional __swiftcall RemotePersonalizationAppStateDataSource.betaAppBundleVersion(adamId:)(AppStoreKit::AdamId adamId)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1E18EFED8()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CC0;
  v7 = v0;
  sub_1E1AF31FC();
  v12 = v6;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  v10 = sub_1E18F3C18;
  v11 = v5;
  sub_1E1AF68FC();

  return (*(v2 + 8))(v4, v1);
}

double sub_1E18F0124(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x1E69E7CD0];

  v3 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x1E69E7CC8];

  return result;
}

void sub_1E18F01F4(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_1E1AEF54C();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  *&v28 = 0x6573616863727570;
  *(&v28 + 1) = 0xE800000000000000;
  sub_1E1AF6F6C();
  if (!*(v5 + 16) || (v6 = sub_1E135FCF4(v33), (v7 & 1) == 0))
  {

    sub_1E134B88C(v33);
LABEL_9:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v5 + 56) + 32 * v6, &v35);
  sub_1E134B88C(v33);

  if (!*(&v36 + 1))
  {
LABEL_10:
    sub_1E1308058(&v35, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    return;
  }

  sub_1E13006E4(0, &qword_1EE1D25C0, 0x1E698B518);
  if (swift_dynamicCast())
  {
    v8 = v34;
    v9 = [v34 itemID];
    v10 = [v9 stringValue];
    v11 = sub_1E1AF5DFC();
    v13 = v12;

    swift_beginAccess();
    sub_1E154E570(v11, v13, &v32);
    swift_endAccess();

    swift_beginAccess();

    sub_1E1496C84(&v28);

    v33[0] = v28;
    v33[1] = v29;
    v33[2] = v30;
    v33[3] = v31;
    sub_1E1308058(v33, &unk_1ECEB7B50, &qword_1E1B16990);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60, &qword_1E1B02A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = v11;
    v15 = inited + 32;
    *(inited + 40) = v13;
    sub_1E1498818(inited);
    swift_setDeallocating();
    sub_1E16C8A2C(v15);
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v17 = a3;

    v19 = sub_1E18F3808(v18, v17);
    if (*(v19 + 16))
    {
      sub_1E18F10A8(v19);

      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = sub_1E18F3BFC;
      v21[4] = v16;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1E18F3BFC;
      *(v22 + 24) = v16;
      v23 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
      swift_retain_n();
      v24 = sub_1E1AF68EC();
      *(&v29 + 1) = v23;
      *&v30 = MEMORY[0x1E69AB720];
      *&v28 = v24;
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {

      v25 = &v17[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v25 + 1);
        ObjectType = swift_getObjectType();
        (*(v26 + 16))(MEMORY[0x1E69E7CC0], ObjectType, v26);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1E18F06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1E1AF320C();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEF55C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v15 = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CC0;
  v17 = v4;
  sub_1E1AF31FC();
  v26 = v16;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  v18 = v21;
  sub_1E1AF6EEC();
  v24 = v22;
  v25 = v14;
  sub_1E1AF68FC();

  return (*(v15 + 8))(v8, v18);
}

void sub_1E18F09A8(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_1E1AEF54C();
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v40 = 0x7364496D616461;
  v41 = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v5 + 16) || (v6 = sub_1E135FCF4(v39), (v7 & 1) == 0))
  {

    sub_1E134B88C(v39);
LABEL_28:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_29;
  }

  sub_1E137A5C4(*(v5 + 56) + 32 * v6, &v42);
  sub_1E134B88C(v39);

  if (!*(&v43 + 1))
  {
LABEL_29:
    sub_1E1308058(&v42, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6970, &unk_1E1B40250);
  if (swift_dynamicCast())
  {
    v8 = v39[0];
    v9 = *(v39[0] + 16);
    v38 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
    swift_beginAccess();
    if (v9)
    {
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          return;
        }

        v12 = (v8 + 32 + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        ++v10;
        v15 = *&a3[v38];
        if (*(v15 + 16))
        {
          sub_1E1AF762C();

          sub_1E1AF5F0C();
          v16 = sub_1E1AF767C();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            while (1)
            {
              v20 = (*(v15 + 48) + 16 * v18);
              v21 = *v20 == v14 && v20[1] == v13;
              if (v21 || (sub_1E1AF74AC() & 1) != 0)
              {
                break;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_9;
          }

LABEL_20:
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C028(0, *(v11 + 16) + 1, 1);
          v11 = v40;
        }

        v24 = *(v11 + 16);
        v23 = *(v11 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1E135C028((v23 > 1), v24 + 1, 1);
          v11 = v40;
        }

        *(v11 + 16) = v24 + 1;
        v25 = v11 + 16 * v24;
        *(v25 + 32) = v14;
        *(v25 + 40) = v13;
LABEL_9:
        if (v10 == v9)
        {
          goto LABEL_32;
        }
      }
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_32:
    swift_beginAccess();
    sub_1E19B92CC(v8);
    swift_endAccess();

    sub_1E13C49CC(v11);

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    v27 = a3;

    v29 = sub_1E18F3808(v28, v27);
    if (*(v29 + 16))
    {
      sub_1E18F10A8(v29);

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = sub_1E18F3C28;
      v31[4] = v26;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_1E18F3C28;
      *(v32 + 24) = v26;
      v33 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
      swift_retain_n();
      v34 = sub_1E1AF68EC();
      v39[3] = v33;
      v39[4] = MEMORY[0x1E69AB720];
      v39[0] = v34;
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {

      v35 = &v27[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 1);
        ObjectType = swift_getObjectType();
        (*(v36 + 16))(MEMORY[0x1E69E7CC0], ObjectType, v36);
        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_1E18F0ED4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E18F0FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1E1AEF55C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  v14 = a1;
  sub_1E18F06A0(v13, a4, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E18F10A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8, &qword_1E1B270B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  if (qword_1EE1D2218 != -1)
  {
    swift_once();
  }

  sub_1E1AF52EC();
  sub_1E1AF531C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(a1 + 16);
    if (v16)
    {
      v27 = v13;
      v17 = sub_1E1545BF4(v16, 0);
      v18 = sub_1E1546A64(&v29, v17 + 4, v16, a1);
      v19 = v29;
      v26 = a1;

      result = sub_1E1337ECC(v19);
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v21 = v27;
      v20 = v28;
      sub_1E18F1EA8(v17, v27);

      v22 = *(v20 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_urlSession);
      *(swift_allocObject() + 16) = v22;
      v23 = sub_1E1AF470C();
      v30 = v23;
      v31 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(&v29);
      v24 = v22;
      sub_1E1AF46FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08, &qword_1E1B090A0);
      sub_1E1302CD4(&qword_1EE1D27E0, &qword_1ECEB3A08, &qword_1E1B090A0, MEMORY[0x1E69AB658]);
      sub_1E1AF585C();

      __swift_destroy_boxed_opaque_existential_1(&v29);
      *(swift_allocObject() + 16) = v26;
      v30 = v23;
      v31 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(&v29);

      sub_1E1AF46FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B38, &qword_1E1B28580);
      v25 = sub_1E1AF57DC();

      (*(v11 + 8))(v21, v10);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48, qword_1E1B40260);
      v29 = MEMORY[0x1E69E7CD0];
      v25 = sub_1E1AF582C();
      (*(v11 + 8))(v13, v10);
    }

    return v25;
  }

  sub_1E1308058(v9, &unk_1ECEB4B60, &unk_1E1B02620);
  if (qword_1ECEB15A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF591C();
  __swift_project_value_buffer(v14, qword_1EE216078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48, qword_1E1B40260);
  v29 = MEMORY[0x1E69E7CD0];
  return sub_1E1AF582C();
}

double sub_1E18F16DC(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v25 = a4;
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = a2;
    v23 = *&v13[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_accessQueue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
    v24 = v13;
    v15 = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v26 = v16;
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
    a3 = v15;
    v17 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v17);
    *(&v23 - 2) = sub_1E18F3B00;
    *(&v23 - 1) = v14;
    sub_1E1AF68FC();

    (*(v8 + 8))(v10, v7);
  }

  v18 = *(v11 + 16);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = sub_1E1545BF4(*(v11 + 16), 0);
  v20 = sub_1E1546A64(&v26, v19 + 4, v18, v11);
  v21 = v26;

  sub_1E1337ECC(v21);
  if (v20 != v18)
  {
    __break(1u);
LABEL_6:
    v19 = MEMORY[0x1E69E7CC0];
  }

  a3(v19);

  return result;
}

void sub_1E18F1A20(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);

  swift_beginAccess();
  v7 = 0;
  v8 = (v4 + 63) >> 6;
  v41 = v2;
  while (v6)
  {
LABEL_11:
    v16 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = (*(v2 + 48) + ((v7 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v18;
      v25 = isUniquelyReferenced_nonNull_native;
      v44 = *&v21[v22];
      v26 = v44;
      *&v21[v22] = 0x8000000000000000;
      v42 = v19;
      v27 = v24;
      v28 = sub_1E15A47D8();
      v30 = v26[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_24;
      }

      v34 = v29;
      if (v26[3] < v33)
      {
        sub_1E168C478(v33, v25);
        v28 = sub_1E15A47D8();
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v34)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (v25)
      {
        goto LABEL_17;
      }

      v40 = v28;
      sub_1E1417D08();
      v28 = v40;
      if (v34)
      {
LABEL_4:
        v9 = v28;

        v10 = v44;
        v11 = (v44[7] + (v9 << 6));
        v12 = v11[3];
        v14 = *v11;
        v13 = v11[1];
        v43[2] = v11[2];
        v43[3] = v12;
        v43[0] = v14;
        v43[1] = v13;
        *v11 = 0;
        *(v11 + 6) = 0x1000000000000000;
        sub_1E139CEA8(v43);
        goto LABEL_5;
      }

LABEL_18:
      v10 = v44;
      v44[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v10[6] + 16 * v28);
      *v36 = v42;
      v36[1] = v27;
      v37 = (v10[7] + (v28 << 6));
      *v37 = 0;
      v37[6] = 0x1000000000000000;
      v38 = v10[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v10[2] = v39;
LABEL_5:
      *&v21[v22] = v10;
      swift_endAccess();

      v2 = v41;
    }
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return;
    }

    v6 = *(v3 + 8 * v15);
    ++v7;
    if (v6)
    {
      v7 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1E1AF757C();
  __break(1u);
}

uint64_t sub_1E18F1CB8(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  if (qword_1ECEB15A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF591C();
  __swift_project_value_buffer(v3, qword_1EE216078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v7[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v7, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  return (a2)(0);
}

uint64_t sub_1E18F1EA8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43[0] = a1;
  v2 = sub_1E1AF5E5C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - v6;
  v8 = sub_1E1AF3D0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AEF3AC();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v44, v12, v17);
  sub_1E1AEF34C();
  sub_1E1AEF2EC();
  sub_1E1AEF2FC();
  v20 = *(v50 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_bag);
  v21 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  if (qword_1EE1E3130 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x1E69AAFD0], v8);
  v43[1] = v21;
  v44 = v20;
  sub_1E1AF52AC();
  (*(v9 + 8))(v11, v8);
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  sub_1E1AEF30C();
  sub_1E13017E4(&unk_1F5C2DC90);
  sub_1E1308058(&unk_1F5C2DCB0, &unk_1ECEB9500, &unk_1E1B05F60);
  sub_1E1AEF32C();
  v22 = *(v43[0] + 16);
  if (v22)
  {
    v23 = (v43[0] + 40);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1E130C06C(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_1E130C06C((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v51[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E1302CD4(&qword_1EE1E34E0, &unk_1ECEB2D10, &unk_1E1B04970, MEMORY[0x1E69E6310]);
  v30 = sub_1E1AF5D6C();
  v32 = v31;

  v51[0] = 1030972521;
  v51[1] = 0xE400000000000000;
  MEMORY[0x1E68FECA0](v30, v32);

  v33 = v45;
  sub_1E1AF5E4C();
  sub_1E1AF5E0C();

  (*(v46 + 8))(v33, v47);
  sub_1E1AEF38C();
  v34 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  swift_unknownObjectRelease();
  [v34 setIncludeClientVersions_];
  v35 = [objc_opt_self() ams_sharedAccountStore];
  v36 = [v35 ams_activeiTunesAccount];

  [v34 setAccount_];
  [v34 setClientInfo_];
  v37 = [objc_allocWithZone(MEMORY[0x1E698CB90]) init];
  [v34 setResponseDecoder_];

  [v34 setAnisetteType_];
  [v34 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A00, &qword_1E1B09098);
  v38 = sub_1E1AEF31C();
  v39 = [v34 requestByEncodingRequest:v38 parameters:0];

  sub_1E1AF587C();
  v51[3] = sub_1E1AF470C();
  v51[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v51);
  sub_1E1AF46FC();
  v40 = v49;
  v41 = sub_1E1AF57DC();

  (*(v48 + 8))(v19, v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v41;
}

uint64_t sub_1E18F2668(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08, &qword_1E1B090A0);
  v3 = sub_1E1AEF31C();
  v4 = [a2 dataTaskPromiseWithRequest_];

  return sub_1E1AF587C();
}

void sub_1E18F26E4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  sub_1E1AEFD3C();

  v13 = sub_1E1AF36CC();
  if (v3)
  {
    if (qword_1ECEB15A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE216078);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = v19[1];
    v16 = v20;
    v21[3] = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
    sub_1E1AF38DC();
    sub_1E1308058(v21, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    v18 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v19[-2] = v11;

    v18 = sub_1E18F3258(sub_1E18F3B24, &v19[-4], a2);
    (*(v8 + 8))(v11, v7);
  }

  *a3 = v18;
}

id RemotePersonalizationAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_1E18F2AE0()
{
  swift_beginAccess();

  return result;
}

double sub_1E18F2B88(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1E18F2BF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C8D6C;
}

uint64_t sub_1E18F2CFC(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1E1AF5A6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;

  sub_1E1AF381C();

  sub_1E1AF381C();
  sub_1E1AF374C();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E1308058(v3, &qword_1ECEB1F90, &qword_1E1B00D30);
    v15 = 0;
  }

  else
  {
    v16 = v19;
    (*(v5 + 32))(v19, v3, v4);
    v15 = sub_1E1AF5A5C();
    (*(v5 + 8))(v16, v4);
  }

  v14(v13, v7);
  return v15 & 1;
}

uint64_t sub_1E18F2FE0()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v4 = sub_1E1AF37CC();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    if (v4 == 0x6573616863727570 && v6 == 0xE900000000000064)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1E1AF74AC();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t *sub_1E18F3130(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1E18F3668(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_1E18F31C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1E18F34FC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1E18F3258(uint64_t (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v6;
    v26 = &v24;
    MEMORY[0x1EEE9AC00](a1);
    v25 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v7);
    v27 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = v17[1];
      v29[0] = *v17;
      v29[1] = v18;

      v19 = (v28)(v29);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_1E19B812C(v25, v24, v27, a3);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1E19B812C(v25, v24, v27, a3);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_1E18F31C8(v22, v6, a3, v28);

  result = MEMORY[0x1E6901640](v22, -1, -1);
  if (!v3)
  {
    return v23;
  }

  return result;
}

void sub_1E18F34FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, __n128))
{
  v24 = a4;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;

    v18 = (v24)(v23);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1E19B812C(a1, a2, v22, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1E18F3668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v14 = v11 | (v4 << 6);
    swift_beginAccess();
    v15 = *(*(a4 + v9) + 16);

    if (v15 && (sub_1E15A47D8(), (v16 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_17:

        sub_1E19B812C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}
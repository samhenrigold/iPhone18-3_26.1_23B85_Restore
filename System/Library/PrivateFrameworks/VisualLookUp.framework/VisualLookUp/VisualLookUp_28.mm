id VisualIntelligenceServiceCompatible.init(overrideTrialTypes:namespaces:factors:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9C7D8DC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0, &unk_1D9C93B70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for VisualIntelligenceService.Options(0);
  v14 = (v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v42 - v20;

  v48 = v4;
  *&v4[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_cancellables] = MEMORY[0x1E69E7CD0];
  v21 = sub_1D9C7B80C();
  v22 = *(*(v21 - 8) + 56);
  v22(v12, 1, 1, v21);
  v23 = sub_1D9C7DA1C();
  v24 = *(*(v23 - 8) + 56);
  v24(v9, 1, 1, v23);
  v22(v18, 1, 1, v21);
  v25 = v14[7];
  v24(&v18[v25], 1, 1, v23);
  v26 = v43;
  v27 = &v18[v14[8]];
  sub_1D9B33644(v12, v18, &qword_1ECB51FD0, &unk_1D9C862F0);
  sub_1D9B33644(v9, &v18[v25], &unk_1ECB540C0, &unk_1D9C93B70);
  *v27 = 0;
  *(v27 + 1) = 0;
  v18[v14[9]] = 2;
  static Logger.argos.getter(v26);
  v28 = sub_1D9C7D8BC();
  v29 = sub_1D9C7E09C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1D9A0E224(7104878, 0xE300000000000000, &v49);
    *(v30 + 12) = 2080;
    v32 = sub_1D9A0E224(13669, 0xE200000000000000, &v49);

    *(v30 + 14) = v32;
    _os_log_impl(&dword_1D9962000, v28, v29, "mlEngineType = %s -> %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v31, -1, -1);
    MEMORY[0x1DA7405F0](v30, -1, -1);
  }

  (*(v44 + 8))(v26, v45);
  sub_1D99A6AE0(v9, &unk_1ECB540C0, &unk_1D9C93B70);
  sub_1D99A6AE0(v12, &qword_1ECB51FD0, &unk_1D9C862F0);
  v33 = v47;
  sub_1D9BCCD70(v18, v47, type metadata accessor for VisualIntelligenceService.Options);
  v34 = sub_1D9A75D94();
  type metadata accessor for TrialWrapper();
  swift_allocObject();
  v35 = sub_1D9C04808((v34 & 1) == 0);
  v36 = v46;
  sub_1D9BCBDC4(v33, v46, type metadata accessor for VisualIntelligenceService.Options);

  v37 = sub_1D9B3370C(v36, v35);
  v38 = v48;
  *&v48[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service] = v37;
  v39 = type metadata accessor for VisualIntelligenceServiceCompatible();
  v50.receiver = v38;
  v50.super_class = v39;
  v40 = objc_msgSendSuper2(&v50, sel_init);

  sub_1D9BCCDD8(v33, type metadata accessor for VisualIntelligenceService.Options);
  return v40;
}

id sub_1D9BC3528()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + 32);
  v2 = type metadata accessor for OntologyGraphCompatible();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12VisualLookUp23OntologyGraphCompatible_ontologyGraph] = v1;
  v5.receiver = v3;
  v5.super_class = v2;

  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1D9BC359C(double a1, double a2)
{

  sub_1D9C1D594(a1, a2);
}

id sub_1D9BC36D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = VisualIntelligenceService.parse(query:cachedResults:completion:)(a1, 0, sub_1D9BCA384, v6);

  return v7;
}

void sub_1D9BC377C(uint64_t a1, void (*a2)(id, id))
{
  v4 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v21 - v8);
  sub_1D99AB100(a1, v21 - v8, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    a2(0, v10);
  }

  else
  {
    sub_1D9BCCD70(v9, v6, type metadata accessor for ParseResult);
    v12 = *(v6 + 9);
    v21[8] = *(v6 + 8);
    v21[9] = v12;
    v21[10] = *(v6 + 10);
    v22 = *(v6 + 22);
    v13 = *(v6 + 5);
    v21[4] = *(v6 + 4);
    v21[5] = v13;
    v14 = *(v6 + 7);
    v21[6] = *(v6 + 6);
    v21[7] = v14;
    v15 = *(v6 + 1);
    v21[0] = *v6;
    v16 = *(v6 + 2);
    v17 = *(v6 + 3);
    v21[1] = v15;
    v21[2] = v16;
    v21[3] = v17;
    v18 = sub_1D9A14E50();
    v19 = [objc_allocWithZone(VIParseResult) initWithVisualUnderstanding_];

    v20 = v19;
    a2(v19, 0);

    sub_1D9BCCDD8(v6, type metadata accessor for ParseResult);
  }
}

void sub_1D9BC3AC8(uint64_t a1, void (*a2)(id, void *, id))
{
  v4 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v22 - v8);
  sub_1D99AB100(a1, v22 - v8, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    a2(0, 0, v10);
  }

  else
  {
    sub_1D9BCCD70(v9, v6, type metadata accessor for ParseResult);
    v12 = *(v6 + 9);
    v22[8] = *(v6 + 8);
    v22[9] = v12;
    v22[10] = *(v6 + 10);
    v23 = *(v6 + 22);
    v13 = *(v6 + 5);
    v22[4] = *(v6 + 4);
    v22[5] = v13;
    v14 = *(v6 + 7);
    v22[6] = *(v6 + 6);
    v22[7] = v14;
    v15 = *(v6 + 1);
    v22[0] = *v6;
    v16 = *(v6 + 2);
    v17 = *(v6 + 3);
    v22[1] = v15;
    v22[2] = v16;
    v22[3] = v17;
    v18 = ParseResult.cachedResults.getter();
    v19 = sub_1D9A14E50();
    v20 = [objc_allocWithZone(VIParseResult) initWithVisualUnderstanding_];

    v21 = v20;
    a2(v20, v18, 0);

    sub_1D9BCCDD8(v6, type metadata accessor for ParseResult);
  }
}

void sub_1D9BC3D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_1D9C7B6FC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

id sub_1D9BC3DD4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v80 = a4;
  v81 = a5;
  v66 = a2;
  v63 = a1;
  v76 = sub_1D9C7DA2C();
  v79 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7DA4C();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v72 = *(v10 - 8);
  v70 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v68 = *(v15 - 8);
  v65 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  Context = type metadata accessor for VisualQueryContext(0);
  v21 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v24 = a3;
  VisualQueryContext.init(_:)(a3, v23);
  v25 = OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service;
  v26 = *(v5 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service);
  v62 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig;
  v83 = v19;
  sub_1D9BCBDC4(v26 + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v19, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v73 = v23;
  sub_1D9BCBDC4(v23, v14, type metadata accessor for VisualQueryContext);
  v27 = *(v21 + 56);
  v27(v14, 0, 1, Context);
  sub_1D9A3D06C(v14);
  sub_1D99A6AE0(v14, &unk_1ECB51B10, &qword_1D9C86550);
  v28 = *(*(v5 + v25) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  v29 = type metadata accessor for AnyVIImageContent();
  v30 = swift_allocObject();
  v31 = v63;
  *(v30 + 16) = v63;
  v88[3] = v29;
  v88[4] = &off_1F5530218;
  v88[0] = v30;

  v32 = v31;
  sub_1D9AF80E4(v89);
  sub_1D9BCBDC4(v23, v14, type metadata accessor for VisualQueryContext);
  v64 = v14;
  v27(v14, 0, 1, Context);
  v33 = swift_allocObject();
  v63 = v33;
  v34 = v81;
  *(v33 + 16) = v80;
  *(v33 + 24) = v34;
  type metadata accessor for MetricsBucket();
  v35 = swift_allocObject();
  *(v35 + 16) = MEMORY[0x1E69E7CC0];
  v80 = v35;
  strcpy(v91, "E2E - Search");
  BYTE5(v91[1]) = 0;
  HIWORD(v91[1]) = -5120;
  v91[2] = "Search Overall";
  v91[3] = 14;
  v92 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v61 = sub_1D9AFD4B8(v91, v35);

  v66 = *(v28 + 56);
  v67 = v28;
  v36 = swift_allocObject();
  v81 = v36;
  swift_weakInit();
  sub_1D99AB100(v88, v86, &qword_1ECB51B30, &qword_1D9C99390);
  v37 = v14;
  v38 = v69;
  sub_1D99AB100(v37, v69, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9BCBDC4(v83, v82, v62);
  v39 = (*(v72 + 80) + 248) & ~*(v72 + 80);
  v40 = (v70 + *(v68 + 80) + v39) & ~*(v68 + 80);
  v41 = (v65 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  v45 = v89[9];
  *(v44 + 152) = v89[8];
  *(v44 + 168) = v45;
  *(v44 + 184) = v89[10];
  *(v44 + 200) = v90;
  v46 = v89[5];
  *(v44 + 88) = v89[4];
  *(v44 + 104) = v46;
  v47 = v89[7];
  *(v44 + 120) = v89[6];
  *(v44 + 136) = v47;
  v48 = v89[1];
  *(v44 + 24) = v89[0];
  *(v44 + 40) = v48;
  v49 = v89[3];
  *(v44 + 56) = v89[2];
  *(v44 + 72) = v49;
  v50 = v86[1];
  *(v44 + 208) = v86[0];
  *(v44 + 224) = v50;
  *(v44 + 240) = v87;
  sub_1D9A0E758(v38, v44 + v39);
  sub_1D9BCCD70(v82, v44 + v40, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  *(v44 + v41) = v61;
  v51 = v71;
  *(v44 + v42) = v71;
  *(v44 + v43) = v80;
  v52 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  v53 = v63;
  *v52 = sub_1D9BCCE90;
  v52[1] = v53;
  v85[4] = sub_1D9A0ED28;
  v85[5] = v44;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 1107296256;
  v85[2] = sub_1D9A0A1E0;
  v85[3] = &block_descriptor_20;
  v54 = _Block_copy(v85);

  sub_1D99BB40C(v89, v84);

  v55 = v51;

  v56 = v74;
  sub_1D9C7DA3C();
  v84[0] = MEMORY[0x1E69E7CC0];
  sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v58 = v75;
  v57 = v76;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v56, v58, v54);
  _Block_release(v54);

  sub_1D9A0009C(v89);

  (*(v79 + 8))(v58, v57);
  (*(v77 + 8))(v56, v78);
  sub_1D99A6AE0(v64, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9BCCDD8(v83, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9BCCDD8(v73, type metadata accessor for VisualQueryContext);

  sub_1D99A6AE0(v88, &qword_1ECB51B30, &qword_1D9C99390);
  return v55;
}

void sub_1D9BC47AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D9C7B6FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1D9BC481C(void *a1, char *a2, void *a3, void *a4, void (*a5)(id, void *), uint64_t a6)
{
  v189 = a6;
  v183 = a5;
  v192 = a4;
  v181 = a1;
  v9 = sub_1D9C7DA2C();
  v177 = *(v9 - 8);
  v178 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v174 = v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7DA4C();
  v175 = *(v11 - 8);
  v176 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v173 = v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7D8DC();
  v162 = *(v13 - 8);
  v163 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v161[0] = v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v164 = v161 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v170 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v184 = v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v161 - v20;
  v22 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v168 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v172 = v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v161 - v25;
  Context = type metadata accessor for VisualQueryContext(0);
  v28 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v30 = v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v31 = a3;
  VisualQueryContext.init(_:)(a3, v30);
  v179 = OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service;
  v180 = v6;
  sub_1D9BCBDC4(*(v6 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v26, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v188 = v30;
  sub_1D9BCBDC4(v30, v21, type metadata accessor for VisualQueryContext);
  v32 = *(v28 + 56);
  v166 = v28 + 56;
  v167 = Context;
  v165 = v32;
  v32(v21, 0, 1, Context);
  v187 = v26;
  sub_1D9A3D06C(v21);
  v186 = v21;
  sub_1D99A6AE0(v21, &unk_1ECB51B10, &qword_1D9C86550);
  v182 = a2;
  v33 = [a2 imageRegions];
  v34 = sub_1D9A0835C(0, &qword_1EDD2A6B8, off_1E85897E8);
  v35 = sub_1D9C7DF2C();

  *&v208 = MEMORY[0x1E69E7CC0];
  if (v35 >> 62)
  {
LABEL_58:
    v36 = sub_1D9C7E50C();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = v189;
  if (v36)
  {
    v161[1] = v34;
    v39 = 0;
    v190 = v35 & 0xFFFFFFFFFFFFFF8;
    v191 = (v35 & 0xC000000000000001);
    while (1)
    {
      if (v191)
      {
        v40 = MEMORY[0x1DA73E610](v39, v35);
      }

      else
      {
        if (v39 >= *(v190 + 16))
        {
          goto LABEL_54;
        }

        v40 = *(v35 + 8 * v39 + 32);
      }

      v37 = v40;
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v34 = [v40 domainInfo];
      sub_1D9A0835C(0, &qword_1EDD2A680, off_1E85897F0);
      v33 = sub_1D9C7DF2C();

      if (v33 >> 62)
      {
        if (!sub_1D9C7E50C())
        {
LABEL_20:

          v45 = 0;
          v33 = 0xE000000000000000;
          goto LABEL_21;
        }
      }

      else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1DA73E610](0, v33);
      }

      else
      {
        if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v42 = *(v33 + 32);
      }

      v43 = v42;

      v44 = [(objc_class *)v43 domainKey];

      v45 = sub_1D9C7DC7C();
      v33 = v46;

LABEL_21:
      v47 = sub_1D9C7DC7C();
      v34 = v48;
      if (v45 == v47 && v33 == v48)
      {
      }

      else
      {
        v49 = sub_1D9C7E7DC();

        if ((v49 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      v33 = &v208;
      sub_1D9C7E49C();
LABEL_7:
      ++v39;
      if (v41 == v36)
      {
        v37 = v208;
        v38 = v189;
        break;
      }
    }
  }

  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    if (*(v37 + 16))
    {
      goto LABEL_30;
    }

LABEL_60:

    v146 = v164;
    static Logger.argos.getter(v164);
    v147 = v192;
    v148 = sub_1D9C7D8BC();
    v149 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v208 = v151;
      *v150 = 136315138;
      v152 = v147;
      v153 = [v152 description];
      v154 = sub_1D9C7DC7C();
      v156 = v155;

      v157 = sub_1D9A0E224(v154, v156, &v208);

      *(v150 + 4) = v157;
      _os_log_impl(&dword_1D9962000, v148, v149, "encryptedSearch(): no imageRegion matching domain %s", v150, 0xCu);
      v158 = __swift_destroy_boxed_opaque_existential_0Tm(v151);
      MEMORY[0x1DA7405F0](v151, -1, -1, v158);
      MEMORY[0x1DA7405F0](v150, -1, -1);

      (*(v162 + 8))(v164, v163);
    }

    else
    {

      (*(v162 + 8))(v146, v163);
    }

    v36 = v185;
    v143 = [objc_opt_self() empty];
    sub_1D9A0EEC0();
    v144 = swift_allocError();
    *v159 = 4;
    v183(v143, v144);
    goto LABEL_64;
  }

  if (!sub_1D9C7E50C())
  {
    goto LABEL_60;
  }

LABEL_30:
  v50 = v182;
  v51 = [v182 annotation];
  v52 = [v50 payload];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1D9C7B87C();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xF000000000000000;
  }

  v57 = sub_1D9C7DF1C();

  if (v56 >> 60 == 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_1D9C7B86C();
    sub_1D99B3C44(v54, v56);
  }

  v34 = [objc_allocWithZone(VIVisualUnderstanding) initWithImageRegions:v57 annotation:v51 payload:v58];

  v59 = sub_1D9C7DC7C();
  v61 = v60;
  v62 = sub_1D9C7DC7C();
  v191 = v34;
  if (v59 != v62 || v61 != v63)
  {
    v64 = sub_1D9C7E7DC();

    if (v64)
    {
      goto LABEL_40;
    }

    v92 = sub_1D9C7DC7C();
    v94 = v93;
    if (v92 == sub_1D9C7DC7C() && v94 == v95)
    {

LABEL_46:
      v97 = *(*(v180 + v179) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
      v98 = type metadata accessor for AnyVIImageContent();
      v99 = swift_allocObject();
      v100 = v181;
      *(v99 + 16) = v181;
      v203 = &off_1F5530218;
      v202 = v98;
      v201[0] = v99;
      v101 = v100;

      sub_1D9AF80E4(&v208);
      v102 = v186;
      sub_1D9BCBDC4(v188, v186, type metadata accessor for VisualQueryContext);
      v165(v102, 0, 1, v167);
      v103 = swift_allocObject();
      v189 = v103;
      *(v103 + 16) = v183;
      *(v103 + 24) = v38;
      strcpy(v204, "E2E - Search");
      BYTE5(v204[1]) = 0;
      HIWORD(v204[1]) = -5120;
      v205 = "Search Overall";
      v206 = 14;
      v207 = 2;
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      v183 = sub_1D9AFD4B8(v204, 0);
      v192 = v97;
      v190 = v97[7];
      v182 = swift_allocObject();
      swift_weakInit();
      sub_1D99A17C8(v201, v200);
      v104 = v184;
      sub_1D99AB100(v102, v184, &unk_1ECB51B10, &qword_1D9C86550);
      v105 = v172;
      sub_1D9BCBDC4(v187, v172, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v106 = (*(v170 + 80) + 248) & ~*(v170 + 80);
      v107 = (v171 + *(v168 + 80) + v106) & ~*(v168 + 80);
      v108 = (v169 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
      v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v110 = swift_allocObject();
      v111 = v217;
      *(v110 + 152) = v216;
      *(v110 + 168) = v111;
      *(v110 + 184) = v218;
      v112 = v213;
      *(v110 + 88) = v212;
      *(v110 + 104) = v112;
      v113 = v215;
      *(v110 + 120) = v214;
      *(v110 + 136) = v113;
      v114 = v209;
      *(v110 + 24) = v208;
      *(v110 + 40) = v114;
      v115 = v211;
      *(v110 + 56) = v210;
      *(v110 + 16) = v182;
      *(v110 + 200) = v219;
      *(v110 + 72) = v115;
      sub_1D9979B9C(v200, v110 + 208);
      sub_1D9A0E758(v104, v110 + v106);
      sub_1D9BCCD70(v105, v110 + v107, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      *(v110 + v108) = v183;
      v116 = v185;
      *(v110 + v109) = v185;
      v117 = (v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8));
      v118 = v189;
      *v117 = sub_1D9BCCE90;
      v117[1] = v118;
      v198 = sub_1D9BCBBF8;
      v199 = v110;
      v194 = MEMORY[0x1E69E9820];
      v195 = 1107296256;
      v196 = sub_1D9A0A1E0;
      v197 = &block_descriptor_22_0;
      v119 = _Block_copy(&v194);
      v120 = v116;

      sub_1D99BB40C(&v208, v193);

      v121 = v173;
      sub_1D9C7DA3C();
      v193[0] = MEMORY[0x1E69E7CC0];
      sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9A0E83C();
      v122 = v174;
      v123 = v178;
      v36 = v185;
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v121, v122, v119);

      _Block_release(v119);

      sub_1D9A0009C(&v208);
      (*(v177 + 8))(v122, v123);
      (*(v175 + 8))(v121, v176);
      sub_1D99A6AE0(v186, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9BCCDD8(v187, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9BCCDD8(v188, type metadata accessor for VisualQueryContext);

      goto LABEL_41;
    }

    v96 = sub_1D9C7E7DC();

    v36 = v185;
    if (v96)
    {
      goto LABEL_46;
    }

    if (qword_1EDD2C108[0] != -1)
    {
      swift_once();
    }

    v124 = qword_1EDD417C0;
    v125 = v192;
    *&v208 = sub_1D9C7DC7C();
    *(&v208 + 1) = v126;
    MEMORY[0x1EEE9AC00](v208);
    v161[-2] = &v208;
    LOBYTE(v124) = sub_1D9BC1698(sub_1D9BCA3AC, &v161[-4], v124);

    if (v124)
    {
      v127 = v181;

      sub_1D9AF80E4(&v208);

      v128 = v187;
      sub_1D9B17550(&v208, v187, v183, v38);

      sub_1D9A0009C(&v208);

      v129 = v128;
LABEL_65:
      sub_1D9BCCDD8(v129, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9BCCDD8(v188, type metadata accessor for VisualQueryContext);
      return v36;
    }

    v37 = v161[0];
    static Logger.argos.getter(v161[0]);
    v130 = v125;
    v33 = sub_1D9C7D8BC();
    v131 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v33, v131))
    {
      v132 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v208 = v192;
      *v132 = 136315138;
      v133 = v130;
      v134 = [v133 description];
      v135 = v34;
      v136 = sub_1D9C7DC7C();
      v138 = v137;

      v36 = v185;
      v139 = v136;
      v34 = v135;
      v140 = sub_1D9A0E224(v139, v138, &v208);

      *(v132 + 4) = v140;
      _os_log_impl(&dword_1D9962000, v33, v131, "encryptedSearch(): unsupported domain %s", v132, 0xCu);
      v141 = v192;
      v142 = __swift_destroy_boxed_opaque_existential_0Tm(v192);
      MEMORY[0x1DA7405F0](v141, -1, -1, v142);
      MEMORY[0x1DA7405F0](v132, -1, -1);

      (*(v162 + 8))(v161[0], v163);
    }

    else
    {
LABEL_55:

      (*(v162 + 8))(v37, v163);
    }

    v143 = [objc_opt_self() empty];
    sub_1D9A0EEC0();
    v144 = swift_allocError();
    *v145 = 3;
    v183(v143, v144);

LABEL_64:
    v129 = v187;
    goto LABEL_65;
  }

LABEL_40:
  v65 = *(*(v180 + v179) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  v66 = type metadata accessor for AnyVIImageContent();
  v67 = swift_allocObject();
  v68 = v181;
  *(v67 + 16) = v181;
  v203 = &off_1F5530218;
  v202 = v66;
  v201[0] = v67;

  v69 = v68;
  sub_1D9AF80E4(&v208);
  v70 = v186;
  sub_1D9BCBDC4(v188, v186, type metadata accessor for VisualQueryContext);
  v165(v70, 0, 1, v167);
  v71 = swift_allocObject();
  v189 = v71;
  *(v71 + 16) = v183;
  *(v71 + 24) = v38;
  strcpy(v204, "E2E - Search");
  BYTE5(v204[1]) = 0;
  HIWORD(v204[1]) = -5120;
  v205 = "Search Overall";
  v206 = 14;
  v207 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v182 = sub_1D9AFD4B8(v204, 0);
  v192 = v65;
  v190 = v65[7];
  v72 = swift_allocObject();
  swift_weakInit();
  sub_1D99A17C8(v201, v200);
  sub_1D99AB100(v70, v184, &unk_1ECB51B10, &qword_1D9C86550);
  v73 = v172;
  sub_1D9BCBDC4(v187, v172, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v74 = (*(v170 + 80) + 248) & ~*(v170 + 80);
  v75 = (v171 + *(v168 + 80) + v74) & ~*(v168 + 80);
  v76 = (v169 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v217;
  *(v78 + 152) = v216;
  *(v78 + 168) = v79;
  *(v78 + 184) = v218;
  v80 = v213;
  *(v78 + 88) = v212;
  *(v78 + 104) = v80;
  v81 = v215;
  *(v78 + 120) = v214;
  *(v78 + 136) = v81;
  v82 = v209;
  *(v78 + 24) = v208;
  *(v78 + 40) = v82;
  v83 = v211;
  *(v78 + 56) = v210;
  *(v78 + 16) = v72;
  *(v78 + 200) = v219;
  *(v78 + 72) = v83;
  sub_1D9979B9C(v200, v78 + 208);
  sub_1D9A0E758(v184, v78 + v74);
  sub_1D9BCCD70(v73, v78 + v75, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  *(v78 + v76) = v182;
  v84 = v185;
  *(v78 + v77) = v185;
  v85 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
  v86 = v189;
  *v85 = sub_1D9BCBC10;
  v85[1] = v86;
  v198 = sub_1D9BCBC2C;
  v199 = v78;
  v194 = MEMORY[0x1E69E9820];
  v195 = 1107296256;
  v196 = sub_1D9A0A1E0;
  v197 = &block_descriptor_32;
  v87 = _Block_copy(&v194);
  v183 = v72;

  sub_1D99BB40C(&v208, v193);

  v88 = v84;

  v89 = v173;
  sub_1D9C7DA3C();
  v193[0] = MEMORY[0x1E69E7CC0];
  sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v90 = v174;
  v91 = v178;
  v36 = v84;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v89, v90, v87);
  _Block_release(v87);

  sub_1D9A0009C(&v208);
  (*(v177 + 8))(v90, v91);
  (*(v175 + 8))(v89, v176);
  sub_1D99A6AE0(v186, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9BCCDD8(v187, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9BCCDD8(v188, type metadata accessor for VisualQueryContext);

LABEL_41:

  __swift_destroy_boxed_opaque_existential_0Tm(v201);
  return v36;
}

void sub_1D9BC5FCC(uint64_t a1, void (*a2)(id, void *))
{
  v4 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v22 - v8);
  sub_1D99AB100(a1, v22 - v8, &unk_1ECB53570, &unk_1D9C9C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = [objc_opt_self() empty];
    v12 = v10;
    a2(v11, v10);
  }

  else
  {
    sub_1D9BCCD70(v9, v6, type metadata accessor for VisualSearchResultInternal);
    v13 = *(v6 + 23);
    v34 = *(v6 + 22);
    v14 = *(v6 + 9);
    v31 = *(v6 + 8);
    v32 = v14;
    v33 = *(v6 + 10);
    v15 = *(v6 + 5);
    v27 = *(v6 + 4);
    v28 = v15;
    v16 = *(v6 + 7);
    v29 = *(v6 + 6);
    v30 = v16;
    v17 = *(v6 + 1);
    v23 = *v6;
    v24 = v17;
    v18 = *(v6 + 3);
    v25 = *(v6 + 2);
    v26 = v18;
    sub_1D99BB40C(&v23, v35);

    v19 = sub_1D99FC1B0();
    v35[8] = v31;
    v35[9] = v32;
    v35[10] = v33;
    v35[4] = v27;
    v35[5] = v28;
    v35[6] = v29;
    v35[7] = v30;
    v35[0] = v23;
    v35[1] = v24;
    v35[2] = v25;
    v35[3] = v26;
    *&v36 = v34;
    *(&v36 + 1) = v13;
    *&v37 = v19;
    *(&v37 + 1) = v20;
    v22[10] = v33;
    v22[11] = v36;
    v22[12] = v37;
    v22[6] = v29;
    v22[7] = v30;
    v22[8] = v31;
    v22[9] = v32;
    v22[2] = v25;
    v22[3] = v26;
    v22[4] = v27;
    v22[5] = v28;
    v22[0] = v23;
    v22[1] = v24;
    v21 = sub_1D9A159F4();
    sub_1D9B171FC(v35);
    a2(v21, 0);

    sub_1D9BCCDD8(v6, type metadata accessor for VisualSearchResultInternal);
  }
}

void sub_1D9BC6354(void (*a1)(void, __n128))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = sub_1D9C7DFBC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v6;
  v9[6] = v1;
  v10 = v7;

  v11 = v1;
  sub_1D9BC1E20(0, 0, v5, &unk_1D9C9C228, v9);

  sub_1D9C7E0DC();
  swift_beginAccess();
  (a1)(*(v6 + 16));
}

uint64_t sub_1D9BC64EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9BC6510, 0, 0);
}

uint64_t sub_1D9BC6510()
{
  v0[8] = *(*(v0[7] + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1D9BC65CC;

  return sub_1D99E56AC();
}

uint64_t sub_1D9BC65CC(char a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D9BC66EC, 0, 0);
}

uint64_t sub_1D9BC66EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  *(v3 + 16) = v1;
  dispatch_group_leave(v2);
  v4 = *(v0 + 8);

  return v4();
}

id sub_1D9BC6800(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = VisualIntelligenceService.parse(query:cachedResults:completion:)(a1, a2, a6, v11);

  return v12;
}

void sub_1D9BC68A8(uint64_t a1, void (*a2)(uint64_t, id, void *), uint64_t a3)
{
  v6 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v54 - v10);
  sub_1D99AB100(a1, &v54 - v10, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = v12;
    a2(0, 0, v12);

    return;
  }

  v56 = a3;
  v58 = a2;
  sub_1D9BCCD70(v11, v8, type metadata accessor for ParseResult);
  v14 = *(v8 + 9);
  v60[8] = *(v8 + 8);
  v60[9] = v14;
  v60[10] = *(v8 + 10);
  v61 = *(v8 + 22);
  v15 = *(v8 + 5);
  v60[4] = *(v8 + 4);
  v60[5] = v15;
  v16 = *(v8 + 7);
  v60[6] = *(v8 + 6);
  v60[7] = v16;
  v17 = *(v8 + 1);
  v60[0] = *v8;
  v18 = *(v8 + 2);
  v19 = *(v8 + 3);
  v60[1] = v17;
  v60[2] = v18;
  v60[3] = v19;
  v20 = sub_1D9A14E50();
  v21 = [objc_allocWithZone(VIParseResult) initWithVisualUnderstanding_];

  v55 = v21;
  v22 = [v21 visualUnderstanding];
  v23 = [v22 imageRegions];

  sub_1D9A0835C(0, &qword_1EDD2A6B8, off_1E85897E8);
  v24 = sub_1D9C7DF2C();

  if (v24 >> 62)
  {
LABEL_42:
    v25 = sub_1D9C7E50C();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v8;
  if (!v25)
  {
    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v8 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  do
  {
    v26 = v8;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA73E610](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v8 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v29 = [v27 domainInfo];
      sub_1D9A0835C(0, &qword_1EDD2A680, off_1E85897F0);
      v30 = sub_1D9C7DF2C();

      if (v30 >> 62)
      {
        break;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

LABEL_14:

      ++v26;
      if (v8 == v25)
      {
        goto LABEL_29;
      }
    }

    if (!sub_1D9C7E50C())
    {
      goto LABEL_14;
    }

LABEL_18:
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA73E610](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v31 = *(v30 + 32);
    }

    v32 = v31;

    v33 = [v32 domainKey];

    v34 = sub_1D9C7DC7C();
    v36 = v35;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1D9AF83AC(0, *(v59 + 2) + 1, 1, v59);
    }

    v38 = *(v59 + 2);
    v37 = *(v59 + 3);
    if (v38 >= v37 >> 1)
    {
      v59 = sub_1D9AF83AC((v37 > 1), v38 + 1, 1, v59);
    }

    v39 = v59;
    *(v59 + 2) = v38 + 1;
    v40 = &v39[16 * v38];
    *(v40 + 4) = v34;
    *(v40 + 5) = v36;
  }

  while (v8 != v25);
LABEL_29:

  v41 = sub_1D9B9E654(v59);

  if (qword_1EDD2C100 != -1)
  {
    swift_once();
  }

  v42 = sub_1D9BC9F88(qword_1EDD417B8, v41);
  v43 = v42;
  v44 = *(v42 + 16);
  v45 = v58;
  v46 = v57;
  if (!v44)
  {

    v47 = MEMORY[0x1E69E7CC0];
    v49 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v49)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v47 = sub_1D9B8E004(*(v42 + 16), 0);
  v48 = sub_1D9B8EA60(v60, v47 + 4, v44, v43);
  sub_1D99C74D4(*&v60[0]);
  if (v48 != v44)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v49 = v47[2];
  if (!v49)
  {
LABEL_38:

    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

LABEL_34:
  *&v60[0] = MEMORY[0x1E69E7CC0];
  sub_1D9C7E4AC();
  v50 = v47 + 5;
  do
  {

    sub_1D9C7DC4C();

    sub_1D9C7E48C();
    sub_1D9C7E4BC();
    sub_1D9C7E4CC();
    sub_1D9C7E49C();
    v50 += 2;
    --v49;
  }

  while (v49);

  v51 = *&v60[0];
LABEL_39:
  v52 = v55;
  v53 = v55;
  v45(v51, v52, 0);

  sub_1D9BCCDD8(v46, type metadata accessor for ParseResult);
}

id sub_1D9BC6F74(char *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a8;
  *(v15 + 24) = v14;
  v16 = a3;
  v17 = a4;
  v18 = a1;

  v19 = VisualIntelligenceService.parse(query:cachedResults:completion:)(v16, a4, a9, v15);

  return v19;
}

void sub_1D9BC7084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    sub_1D9A0835C(0, &unk_1EDD2A618, 0x1E696AEC0);
    v7 = sub_1D9C7DF1C();
  }

  if (a3)
  {
    v8 = sub_1D9C7B6FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

id sub_1D9BC7138(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;

  v12 = v5;

  v13 = VisualIntelligenceService.parse(query:cachedResults:completion:)(a1, a2, sub_1D9BCBD14, v11);

  return v13;
}

void sub_1D9BC7208(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *, id))
{
  v31 = a4;
  v6 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20, &qword_1D9C95AE0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v30 - v10);
  sub_1D99AB100(a1, &v30 - v10, &unk_1ECB51B20, &qword_1D9C95AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    v31(0, 0, v12);
  }

  else
  {
    sub_1D9BCCD70(v11, v8, type metadata accessor for ParseResult);
    v14 = ParseResult.cachedResults.getter();
    v15 = *(v8 + 5);
    v16 = *(v8 + 3);
    v37 = *(v8 + 4);
    v38 = v15;
    v17 = *(v8 + 1);
    v34[0] = *v8;
    v34[1] = v17;
    v18 = *(v8 + 3);
    v20 = *v8;
    v19 = *(v8 + 1);
    v35 = *(v8 + 2);
    v36 = v18;
    v21 = *(v8 + 9);
    v22 = *(v8 + 7);
    v41 = *(v8 + 8);
    v42 = v21;
    v23 = *(v8 + 9);
    v43 = *(v8 + 10);
    v24 = *(v8 + 5);
    v25 = *(v8 + 7);
    v39 = *(v8 + 6);
    v40 = v25;
    v55 = v41;
    v56 = v23;
    v57 = *(v8 + 10);
    v51 = v37;
    v52 = v24;
    v53 = v39;
    v54 = v22;
    v47 = v20;
    v48 = v19;
    v44 = *(v8 + 22);
    v58 = *(v8 + 22);
    v49 = v35;
    v50 = v16;

    sub_1D99BB40C(v34, v45);
    Set<>.toVisualDomains()(a3);
    sub_1D9B0B874(&v47, v26, v32);

    v45[8] = v55;
    v45[9] = v56;
    v45[10] = v57;
    v46 = v58;
    v45[4] = v51;
    v45[5] = v52;
    v45[6] = v53;
    v45[7] = v54;
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    v45[3] = v50;
    sub_1D9A0009C(v45);
    v55 = v32[8];
    v56 = v32[9];
    v57 = v32[10];
    v58 = v33;
    v51 = v32[4];
    v52 = v32[5];
    v53 = v32[6];
    v54 = v32[7];
    v47 = v32[0];
    v48 = v32[1];
    v49 = v32[2];
    v50 = v32[3];
    v27 = sub_1D9A14E50();
    sub_1D9A0009C(&v47);
    v28 = [objc_allocWithZone(VIParseResult) initWithVisualUnderstanding_];

    v29 = v28;
    v31(v28, v14, 0);

    sub_1D9BCCDD8(v8, type metadata accessor for ParseResult);
  }
}

id sub_1D9BC76D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  static Logger.argos.getter(v8);
  v10 = sub_1D9C7D8BC();
  v11 = sub_1D9C7E09C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D9962000, v10, v11, "VisualIntelligence submit user feedback", v12, 2u);
    MEMORY[0x1DA7405F0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);

  v13 = [a1 image];
  v14 = [a1 userFeedbackPayload];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D9C7B87C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = [a1 sfReportData];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D9C7B87C();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  v24 = [a1 reportIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D9C7DC7C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = VisualIntelligenceService.submitUserFeedback(image:request:report:reportIdentifier:environment:container:completion:)(v13, v16, v18, v21, v23, v26, v28, 0, 1, 0, 0, sub_1D9BCC904, v9);

  sub_1D99B3C44(v21, v23);
  sub_1D99B3C44(v16, v18);

  swift_unknownObjectRelease();
  return v29;
}

id sub_1D9BC79B4(void *a1, void (*a2)(void, __n128), uint64_t a3)
{
  v31 = a2;
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v8);
  v9 = sub_1D9C7D8BC();
  v10 = sub_1D9C7E09C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D9962000, v9, v10, "VisualIntelligence submit user feedback", v11, 2u);
    MEMORY[0x1DA7405F0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);

  v12 = [a1 image];
  v13 = [a1 userFeedbackPayload];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D9C7B87C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = [a1 sfReportData];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D9C7B87C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = [a1 reportIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D9C7DC7C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = VisualIntelligenceService.submitUserFeedback(image:request:report:reportIdentifier:environment:container:completion:)(v12, v15, v17, v20, v22, v25, v27, 0, 1, 0, 0, v31, a3);

  sub_1D99B3C44(v20, v22);
  sub_1D99B3C44(v15, v17);

  swift_unknownObjectRelease();
  return v28;
}

void sub_1D9BC7CF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D9C7B6FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *sub_1D9BC7D54(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9C7DA2C();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7DA4C();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v12 = *(Context - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](Context - 8);
  v69 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v62 - v15;
  v16 = sub_1D9C7D8DC();
  v66 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v3 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service);

  v70 = [a1 image];
  [a1 normalizedRegionOfInterest];
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = 1.0;
  v83.size.height = 1.0;
  v82 = CGRectIntersection(v81, v83);
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  v23 = [a1 domainsOfInterest];
  v24 = sub_1D9C7E03C();

  Set<>.toVisualDomains()(v24);
  v26 = v25;

  v67 = [a1 annotation];
  v27 = [a1 queryContext];
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  v68 = v28;

  static Logger.argos.getter(v18);

  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v64 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v65 = v13;
    v34 = v33;
    aBlock[0] = v33;
    *v32 = 134218242;
    *(v32 + 4) = *(v26 + 16);

    *(v32 + 12) = 2080;
    sub_1D99E3A84(v26);
    v35 = MEMORY[0x1DA73E110]();
    v63 = v18;
    v36 = v27;
    v37 = v12;
    v38 = v35;
    v40 = v39;

    v41 = v38;
    v12 = v37;
    v27 = v36;
    v42 = sub_1D9A0E224(v41, v40, aBlock);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1D9962000, v29, v30, "Parse and search domain count %ld, domains: %s", v32, 0x16u);
    v43 = __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v44 = v34;
    v13 = v65;
    MEMORY[0x1DA7405F0](v44, -1, -1, v43);
    MEMORY[0x1DA7405F0](v32, -1, -1);

    v66[1](v63, v64);
  }

  else
  {

    v66[1](v18, v16);
  }

  v45 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v66 = v27;
  v46 = v78;
  VisualQueryContext.init(_:)(v27, v78);
  v47 = v71;
  v65 = *(v71 + 24);
  v48 = v46;
  v49 = v69;
  sub_1D9BCBDC4(v48, v69, type metadata accessor for VisualQueryContext);
  v50 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v51 = (v13 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 2) = MEMORY[0x1E69E7CC0];
  *(v52 + 3) = v47;
  *(v52 + 4) = v70;
  v52[5] = x;
  v52[6] = y;
  v52[7] = width;
  v52[8] = height;
  v53 = v67;
  *(v52 + 9) = v26;
  *(v52 + 10) = v53;
  sub_1D9BCCD70(v49, v52 + v50, type metadata accessor for VisualQueryContext);
  *(v52 + v51) = v45;
  v54 = (v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8));
  v55 = v68;
  *v54 = sub_1D9BCBD20;
  v54[1] = v55;
  aBlock[4] = sub_1D9A0EA98;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = &block_descriptor_54;
  v56 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  v57 = v53;
  v69 = v45;

  v58 = v72;
  sub_1D9C7DA3C();
  v79 = MEMORY[0x1E69E7CC0];
  sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v59 = v75;
  v60 = v77;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v58, v59, v56);
  _Block_release(v56);
  swift_unknownObjectRelease();

  (*(v76 + 8))(v59, v60);
  (*(v73 + 8))(v58, v74);
  sub_1D9BCCDD8(v78, type metadata accessor for VisualQueryContext);

  return v69;
}

void sub_1D9BC8548(uint64_t a1, void (*a2)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v3 = *(a1 + 176);
  v30[10] = *(a1 + 160);
  v30[11] = v3;
  v30[12] = *(a1 + 192);
  v31 = *(a1 + 208);
  v4 = *(a1 + 112);
  v30[6] = *(a1 + 96);
  v30[7] = v4;
  v5 = *(a1 + 144);
  v30[8] = *(a1 + 128);
  v30[9] = v5;
  v6 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v6;
  v7 = *(a1 + 80);
  v30[4] = *(a1 + 64);
  v30[5] = v7;
  v8 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v8;
  if (sub_1D9B34F58(v30) == 1)
  {
    faiss::NormalizationTransform::~NormalizationTransform(v30);
    v10 = *v9;
    v11 = [objc_opt_self() empty];
    v18 = v11;
    v19 = v10;
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v30);
    v27 = v20[6];
    v28 = v20[7];
    v29 = v20[8];
    v23 = v20[2];
    v24 = v20[3];
    v25 = v20[4];
    v26 = v20[5];
    v21 = *v20;
    v22 = v20[1];
    v11 = sub_1D9A159F4();
    v18 = v11;
    v19 = 0;
  }

  a2(v11, v19, v12, v13, v14, v15, v16, v17, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
}

uint64_t sub_1D9BC8718(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v123 = a2;
  v5 = v4;
  v111 = a4;
  v122 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538, &unk_1D9C86560);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v103 - v12;
  v114 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v118 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v107 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = (&v103 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v103 - v17;
  v112 = sub_1D9C7CA3C();
  v109 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v119 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103 - v26;
  v104 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v104);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for VisualQueryContext(0);
  v31 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  VisualQueryContext.init(_:)(a3, v33);
  v35 = OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service;
  sub_1D9BCBDC4(*(v5 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v29, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v121 = type metadata accessor for VisualQueryContext;
  sub_1D9BCBDC4(v33, v27, type metadata accessor for VisualQueryContext);
  v115 = v31;
  v120 = *(v31 + 56);
  (v120)(v27, 0, 1, Context);
  v125 = v29;
  sub_1D9A3D06C(v27);
  sub_1D99A6AE0(v27, &unk_1ECB51B10, &qword_1D9C86550);
  v36 = *(*(v5 + v35) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  v37 = type metadata accessor for AnyVIImageContent();
  v38 = swift_allocObject();
  v39 = v122;
  *(v38 + 16) = v122;
  v141[4] = &off_1F5530218;
  v141[3] = v37;
  v141[0] = v38;

  v40 = v39;
  sub_1D9AF80E4(&v144);
  v41 = v126;
  sub_1D9BCBDC4(v33, v126, v121);
  v42 = Context;
  (v120)(v41, 0, 1, Context);
  v43 = *(v36 + 40);
  v44 = v124;
  sub_1D9A723CC(v141);
  if (v44)
  {
    sub_1D9A0009C(&v144);
    sub_1D9BCCDD8(v125, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9BCCDD8(v33, type metadata accessor for VisualQueryContext);

LABEL_11:
    sub_1D99A6AE0(v41, &unk_1ECB51B10, &qword_1D9C86550);
    __swift_destroy_boxed_opaque_existential_0Tm(v141);
    return v43;
  }

  v45 = v36;
  v46 = v118;
  v124 = v33;
  v122 = 0;
  v123 = v45;
  v120 = *(v45 + 16);
  v47 = v116;
  sub_1D99AB100(v41, v116, &unk_1ECB51B10, &qword_1D9C86550);
  v48 = *(v115 + 48);
  if (v48(v47, 1, Context) == 1)
  {
    sub_1D99A6AE0(v47, &unk_1ECB51B10, &qword_1D9C86550);
    v121 = 0;
  }

  else
  {
    v121 = *(v47 + *(Context + 48));
    swift_unknownObjectRetain();
    sub_1D9BCCDD8(v47, type metadata accessor for VisualQueryContext);
  }

  v49 = v119;
  sub_1D99AB100(v41, v119, &unk_1ECB51B10, &qword_1D9C86550);
  v50 = v48(v49, 1, v42);
  v51 = v117;
  if (v50 == 1)
  {
    sub_1D99A6AE0(v49, &unk_1ECB51B10, &qword_1D9C86550);
    v52 = 0;
  }

  else
  {
    v52 = *(v49 + 56);
    sub_1D9BCCDD8(v49, type metadata accessor for VisualQueryContext);
  }

  v53 = v122;
  v54 = v120;
  v55 = v120[2];
  sub_1D99A17C8(v141, v127);
  v56 = v54[3];
  type metadata accessor for SignalsExtractionProcessor();
  v57 = swift_allocObject();

  *(v57 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
  *(v57 + 112) = 0u;
  *(v57 + 128) = 0u;
  *(v57 + 144) = 0u;
  *(v57 + 40) = v55;
  sub_1D9979B9C(v127, v57 + 48);
  type metadata accessor for TextDetectionRequestFactory();
  *(v57 + 16) = swift_allocObject();
  type metadata accessor for BarcodeDetectionRequestFactory();
  *(v57 + 24) = swift_allocObject();
  *(v57 + 88) = v56;
  type metadata accessor for ImageFingerprintRequestFactory();
  v58 = swift_allocObject();
  *(v58 + 16) = v55;
  *(v57 + 32) = v58;
  *(v57 + 96) = v121;
  v127[8] = v152;
  v127[9] = v153;
  v127[10] = v154;
  v128 = v155;
  v127[4] = v148;
  v127[5] = v149;
  v127[6] = v150;
  v127[7] = v151;
  v127[0] = v144;
  v127[1] = v145;
  v127[2] = v146;
  v127[3] = v147;
  swift_unknownObjectRetain();

  v59 = v125;
  v60 = v52;
  v43 = v57;
  sub_1D99B54E0(v127, v125, 1, 1, 0, v60, 0, &v129);
  if (v53)
  {
    swift_unknownObjectRelease();

    sub_1D9BCCDD8(v59, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9BCCDD8(v124, type metadata accessor for VisualQueryContext);
    sub_1D9A0009C(&v144);

    v41 = v126;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v142[8] = v137;
  v142[9] = v138;
  v142[10] = v139;
  v143 = v140;
  v142[4] = v133;
  v142[5] = v134;
  v142[6] = v135;
  v142[7] = v136;
  v142[0] = v129;
  v142[1] = v130;
  v142[2] = v131;
  v142[3] = v132;
  v62 = *(v104 + 32);
  v63 = v113;
  sub_1D99AB100(v59 + v62, v113, &qword_1ECB51538, &unk_1D9C86560);
  v64 = *(v46 + 48);
  v65 = v114;
  if (v64(v63, 1, v114) == 1)
  {
    v66 = MEMORY[0x1E69E7CC0];
    *v51 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    *(v51 + 8) = v66;
    v67 = v113;
    *(v51 + 16) = 0;
    sub_1D9C7D3BC();
    if (v64(v67, 1, v65) != 1)
    {
      sub_1D99A6AE0(v67, &qword_1ECB51538, &unk_1D9C86560);
    }
  }

  else
  {
    sub_1D9BCCD70(v63, v51, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v122 = *(v51 + 16);
  sub_1D9BCCDD8(v51, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  v68 = v59 + v62;
  v69 = v105;
  sub_1D99AB100(v68, v105, &qword_1ECB51538, &unk_1D9C86560);
  if (v64(v69, 1, v65) == 1)
  {
    v70 = MEMORY[0x1E69E7CC0];
    v71 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    v72 = v106;
    *v106 = v71;
    v72[1] = v70;
    *(v72 + 4) = 0;
    sub_1D9C7D3BC();
    if (v64(v69, 1, v65) != 1)
    {
      sub_1D99A6AE0(v69, &qword_1ECB51538, &unk_1D9C86560);
    }
  }

  else
  {
    v72 = v106;
    sub_1D9BCCD70(v69, v106, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v137 = v152;
  v138 = v153;
  v139 = v154;
  v140 = v155;
  v133 = v148;
  v134 = v149;
  v135 = v150;
  v136 = v151;
  v129 = v144;
  v130 = v145;
  v131 = v146;
  v132 = v147;
  sub_1D9B67A68();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v73);
  *(&v103 - 2) = v72;
  v75 = sub_1D9BE8274(sub_1D99DEACC, (&v103 - 4), v74);

  v76 = *(v75 + 16);
  v121 = 0;
  if (v76)
  {
    v77 = *(v75 + 32);
    v78 = v76 - 1;
    v79 = v107;
    if (v76 != 1)
    {
      if (v76 < 9)
      {
        v80 = 1;
        goto LABEL_29;
      }

      v80 = v78 & 0xFFFFFFFFFFFFFFF8 | 1;
      v81 = vdupq_n_s32(v77);
      v82 = (v75 + 52);
      v83 = v78 & 0xFFFFFFFFFFFFFFF8;
      v84 = v81;
      do
      {
        v81 = vmaxq_s32(v81, v82[-1]);
        v84 = vmaxq_s32(v84, *v82);
        v82 += 2;
        v83 -= 8;
      }

      while (v83);
      v77 = vmaxvq_s32(vmaxq_s32(v81, v84));
      if (v78 != (v78 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_29:
        v85 = v76 - v80;
        v86 = (v75 + 4 * v80 + 32);
        do
        {
          v88 = *v86++;
          v87 = v88;
          if (v77 <= v88)
          {
            v77 = v87;
          }

          --v85;
        }

        while (v85);
      }
    }
  }

  else
  {
    v77 = 0;
    v79 = v107;
  }

  v89 = v76 == 0;

  sub_1D9BCCDD8(v72, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = v77;
  }

  v91 = v108;
  sub_1D99AB100(&v125[v62], v108, &qword_1ECB51538, &unk_1D9C86560);
  v92 = v114;
  if (v64(v91, 1, v114) == 1)
  {
    v93 = MEMORY[0x1E69E7CC0];
    *v79 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    *(v79 + 8) = v93;
    *(v79 + 16) = 0;
    sub_1D9C7D3BC();
    v94 = (v64)(v91, 1, v92);
    v95 = v109;
    v96 = v111;
    v97 = v79;
    if (v94 != 1)
    {
      v94 = sub_1D99A6AE0(v91, &qword_1ECB51538, &unk_1D9C86560);
    }
  }

  else
  {
    v94 = sub_1D9BCCD70(v91, v79, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    v95 = v109;
    v96 = v111;
    v97 = v79;
  }

  v120 = &v103;
  MEMORY[0x1EEE9AC00](v94);
  v98 = v126;
  *(&v103 - 8) = v126;
  *(&v103 - 7) = v97;
  *(&v103 - 6) = v142;
  *(&v103 - 5) = v122;
  *(&v103 - 32) = 0;
  *(&v103 - 3) = v90;
  *(&v103 - 16) = v89;
  *(&v103 - 1) = v96;
  sub_1D9BCBD28(&unk_1ECB540F0, MEMORY[0x1E69BD540], MEMORY[0x1E69BD538]);
  v99 = v110;
  v100 = v112;
  v101 = v121;
  sub_1D9C7D6BC();
  sub_1D9A0009C(&v144);

  sub_1D9A0009C(v142);
  sub_1D9BCCDD8(v97, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D99A6AE0(v98, &unk_1ECB51B10, &qword_1D9C86550);
  __swift_destroy_boxed_opaque_existential_0Tm(v141);
  v43 = v99;
  v102 = sub_1D9C7D66C();
  if (!v101)
  {
    v43 = v102;
  }

  (*(v95 + 8))(v99, v100);
  sub_1D9BCCDD8(v125, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9BCCDD8(v124, type metadata accessor for VisualQueryContext);
  return v43;
}

uint64_t sub_1D9BC96F0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v7 = v6;
  v12 = _s14DetectedResultVMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  sub_1D9AF6CF8(v47);
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = 1.0;
  v55.size.height = 1.0;
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  v48 = CGRectIntersection(v54, v55);
  v49 = 0;
  v50 = 0;
  v16 = *(*(*(v5 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + 40) + 16);

  if (v16)
  {
    if (v16 == 1)
    {
      v17 = v52;
      v18 = v7;
      sub_1D9ABEAA0(v47, 0, v52);
    }

    else
    {
      v17 = v53;
      v18 = v7;
      sub_1D9ABF260(COERCE_DOUBLE(v47), 0, v53);
    }
  }

  else
  {
    v17 = v51;
    v18 = v7;
    sub_1D9ABE470(v47, 0, v51);
  }

  if (v18)
  {
    return sub_1D9BCBD70(v47);
  }

  v20 = v17[7];
  v21 = v17[1];
  v22 = v17[2];
  v43[0] = *v17;
  v43[1] = v21;
  v43[2] = v22;
  v44 = *(v17 + 3);
  v45 = *(v17 + 5);
  v46 = v20;
  v23 = *(v22 + 16);
  if (v23)
  {
    v39 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D9C7E4AC();
    v24 = v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    do
    {
      v41 = v23;
      sub_1D9BCBDC4(v24, v15, _s14DetectedResultVMa);
      v25 = objc_allocWithZone(VIOntologyNode);
      v26 = sub_1D9C7DC4C();
      v27 = sub_1D9C7DC4C();
      v28 = [v25 initWithKnowledgeGraphID:v26 labelDebugDescription:v27];

      v29 = *v15;
      v30 = (v15 + *(v12 + 24));
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      v35 = *(v15 + *(v12 + 32));
      v36 = objc_allocWithZone(VIDetectedResult);
      LODWORD(v37) = v35;
      [v36 initWithOntologyNode:v28 position:v29 boundingBox:v31 score:{v32, v33, v34, v37}];

      sub_1D9BCCDD8(v15, _s14DetectedResultVMa);
      sub_1D9C7E48C();
      sub_1D9C7E4BC();
      v38 = v41;
      sub_1D9C7E4CC();
      sub_1D9C7E49C();
      v24 += v40;
      v23 = v38 - 1;
    }

    while (v23);
    sub_1D9BCBE2C(v43);
    sub_1D9BCBD70(v47);
    return v42;
  }

  else
  {
    sub_1D9BCBE2C(v43);
    sub_1D9BCBD70(v47);
    return MEMORY[0x1E69E7CC0];
  }
}

__objc2_class **sub_1D9BC9BE4(void *a1)
{

  v2 = sub_1D9AFF57C(a1);

  return v2;
}

id VisualIntelligenceServiceCompatible.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIntelligenceServiceCompatible();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9BC9D98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9BC9E90;

  return v6(a1);
}

uint64_t sub_1D9BC9E90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9BC9F88(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1D9BCA128(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D9BCCBCC(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1DA7405F0](v15, -1, -1);
  }

  return v11;
}

void sub_1D9BCA128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1D9C7E8DC();

          sub_1D9C7DD6C();
          v13 = sub_1D9C7E93C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1D9C7E7DC() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = a1[v16];
        a1[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_1D9B13ED4(a1, a2, v24, a4);
}

uint64_t sub_1D9BCA308(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9C7E7DC() & 1;
  }
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1D9BCA3C8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v196 = a4;
  v193 = a2;
  v185 = a1;
  v9 = sub_1D9C7DA2C();
  v181 = *(v9 - 8);
  v182 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v178 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7DA4C();
  v179 = *(v11 - 8);
  v180 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v177 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7D8DC();
  v167 = *(v13 - 8);
  v168 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v164 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v174 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v189 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v164 - v20;
  v22 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v172 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v176 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v164 - v25;
  Context = type metadata accessor for VisualQueryContext(0);
  v28 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v30 = (&v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = swift_allocObject();
  *(v194 + 16) = a6;
  v31 = objc_allocWithZone(type metadata accessor for CancelSession(0));
  _Block_copy(a6);
  v187 = a6;
  _Block_copy(a6);
  v188 = [v31 init];
  v32 = a3;
  VisualQueryContext.init(_:)(a3, v30);
  v183 = OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service;
  v184 = a5;
  sub_1D9BCBDC4(*(a5 + OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchConfig, v26, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v192 = v30;
  sub_1D9BCBDC4(v30, v21, type metadata accessor for VisualQueryContext);
  v34 = *(v28 + 56);
  v33 = v28 + 56;
  v170 = v33;
  v171 = Context;
  v169 = v34;
  v34(v21, 0, 1, Context);
  v191 = v26;
  sub_1D9A3D06C(v21);
  v190 = v21;
  sub_1D99A6AE0(v21, &unk_1ECB51B10, &qword_1D9C86550);
  v35 = [v193 imageRegions];
  v186 = sub_1D9A0835C(0, &qword_1EDD2A6B8, off_1E85897E8);
  v36 = sub_1D9C7DF2C();

  *&v212 = MEMORY[0x1E69E7CC0];
  if (v36 >> 62)
  {
LABEL_59:
    v37 = sub_1D9C7E50C();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v194;
  if (v37)
  {
    v39 = 0;
    v195 = (v36 & 0xC000000000000001);
    while (1)
    {
      if (v195)
      {
        v40 = MEMORY[0x1DA73E610](v39, v36);
      }

      else
      {
        if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v40 = *(v36 + 8 * v39 + 32);
      }

      v41 = v40;
      v30 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v33 = [v40 domainInfo];
      sub_1D9A0835C(0, &qword_1EDD2A680, off_1E85897F0);
      v35 = sub_1D9C7DF2C();

      if (v35 >> 62)
      {
        if (!sub_1D9C7E50C())
        {
LABEL_20:

          v45 = 0;
          v35 = 0xE000000000000000;
          goto LABEL_21;
        }
      }

      else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1DA73E610](0, v35);
      }

      else
      {
        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_59;
        }

        v42 = *(v35 + 32);
      }

      v43 = v42;

      v44 = [(objc_class *)v43 domainKey];

      v45 = sub_1D9C7DC7C();
      v35 = v46;

LABEL_21:
      if (v45 == sub_1D9C7DC7C() && v35 == v47)
      {
      }

      else
      {
        v33 = sub_1D9C7E7DC();

        if ((v33 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      sub_1D9C7E48C();
      v33 = *(v212 + 16);
      sub_1D9C7E4BC();
      sub_1D9C7E4CC();
      v35 = &v212;
      sub_1D9C7E49C();
LABEL_7:
      ++v39;
      if (v30 == v37)
      {
        v48 = v212;
        v38 = v194;
        goto LABEL_28;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_28:

  if ((v48 & 0x8000000000000000) == 0 && (v48 & 0x4000000000000000) == 0)
  {
    v49 = v196;
    if (*(v48 + 16))
    {
      goto LABEL_31;
    }

LABEL_61:

    v149 = v166;
    static Logger.argos.getter(v166);
    v150 = v49;
    v151 = sub_1D9C7D8BC();
    v152 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v212 = v196;
      *v153 = 136315138;
      v154 = v150;
      v155 = [v154 description];
      v156 = sub_1D9C7DC7C();
      v158 = v157;

      v159 = sub_1D9A0E224(v156, v158, &v212);

      *(v153 + 4) = v159;
      _os_log_impl(&dword_1D9962000, v151, v152, "encryptedSearch(): no imageRegion matching domain %s", v153, 0xCu);
      v160 = v196;
      v161 = __swift_destroy_boxed_opaque_existential_0Tm(v196);
      MEMORY[0x1DA7405F0](v160, -1, -1, v161);
      MEMORY[0x1DA7405F0](v153, -1, -1);
    }

    (*(v167 + 8))(v149, v168);
    v93 = v187;
    v36 = v188;
    v144 = [objc_opt_self() empty];
    sub_1D9A0EEC0();
    v145 = swift_allocError();
    *v162 = 4;
    v147 = sub_1D9C7B6FC();
    v93[2](v93, v144, v147);
    goto LABEL_64;
  }

  v148 = sub_1D9C7E50C();
  v49 = v196;
  if (!v148)
  {
    goto LABEL_61;
  }

LABEL_31:
  v50 = v193;
  v51 = [v193 annotation];
  v52 = [v50 payload];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1D9C7B87C();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xF000000000000000;
  }

  v57 = sub_1D9C7DF1C();

  if (v56 >> 60 == 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_1D9C7B86C();
    sub_1D99B3C44(v54, v56);
  }

  v30 = [objc_allocWithZone(VIVisualUnderstanding) initWithImageRegions:v57 annotation:v51 payload:v58];

  v59 = sub_1D9C7DC7C();
  v61 = v60;
  v62 = sub_1D9C7DC7C();
  v196 = v30;
  if (v59 != v62 || v61 != v63)
  {
    v64 = sub_1D9C7E7DC();

    if (v64)
    {
      goto LABEL_41;
    }

    v94 = sub_1D9C7DC7C();
    v96 = v95;
    if (v94 == sub_1D9C7DC7C() && v96 == v97)
    {

LABEL_47:
      v99 = *(*(v184 + v183) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
      v100 = type metadata accessor for AnyVIImageContent();
      v101 = swift_allocObject();
      v102 = v185;
      *(v101 + 16) = v185;
      v207 = &off_1F5530218;
      v206 = v100;
      v205[0] = v101;
      v103 = v102;

      sub_1D9AF80E4(&v212);
      v104 = v190;
      sub_1D9BCBDC4(v192, v190, type metadata accessor for VisualQueryContext);
      v169(v104, 0, 1, v171);
      v105 = swift_allocObject();
      v184 = v105;
      *(v105 + 16) = sub_1D9BCCE5C;
      *(v105 + 24) = v38;
      strcpy(v208, "E2E - Search");
      BYTE5(v208[1]) = 0;
      HIWORD(v208[1]) = -5120;
      v209 = "Search Overall";
      v210 = 14;
      v211 = 2;
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      v193 = sub_1D9AFD4B8(v208, 0);
      v185 = *(v99 + 56);
      v186 = v99;
      v195 = swift_allocObject();
      swift_weakInit();
      sub_1D99A17C8(v205, v204);
      v106 = v189;
      sub_1D99AB100(v104, v189, &unk_1ECB51B10, &qword_1D9C86550);
      v107 = v176;
      sub_1D9BCBDC4(v191, v176, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      v108 = (*(v174 + 80) + 248) & ~*(v174 + 80);
      v109 = (v175 + *(v172 + 80) + v108) & ~*(v172 + 80);
      v110 = (v173 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      v113 = v221;
      *(v112 + 152) = v220;
      *(v112 + 168) = v113;
      *(v112 + 184) = v222;
      v114 = v217;
      *(v112 + 88) = v216;
      *(v112 + 104) = v114;
      v115 = v219;
      *(v112 + 120) = v218;
      *(v112 + 136) = v115;
      v116 = v213;
      *(v112 + 24) = v212;
      *(v112 + 40) = v116;
      v117 = v215;
      *(v112 + 56) = v214;
      *(v112 + 16) = v195;
      *(v112 + 200) = v223;
      *(v112 + 72) = v117;
      sub_1D9979B9C(v204, v112 + 208);
      sub_1D9A0E758(v106, v112 + v108);
      sub_1D9BCCD70(v107, v112 + v109, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      *(v112 + v110) = v193;
      v118 = v188;
      *(v112 + v111) = v188;
      v119 = (v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8));
      v120 = v184;
      *v119 = sub_1D9BCCE90;
      v119[1] = v120;
      v202 = sub_1D9BCCE50;
      v203 = v112;
      v198 = MEMORY[0x1E69E9820];
      v199 = 1107296256;
      v200 = sub_1D9A0A1E0;
      v201 = &block_descriptor_104_0;
      v121 = _Block_copy(&v198);
      v122 = v118;

      sub_1D99BB40C(&v212, v197);

      v123 = v177;
      sub_1D9C7DA3C();
      v197[0] = MEMORY[0x1E69E7CC0];
      sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9A0E83C();
      v124 = v178;
      v125 = v182;
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v123, v124, v121);

      _Block_release(v121);

      sub_1D9A0009C(&v212);
      (*(v181 + 8))(v124, v125);
      v126 = v123;
      v36 = v118;
      (*(v179 + 8))(v126, v180);
      sub_1D99A6AE0(v190, &unk_1ECB51B10, &qword_1D9C86550);
      sub_1D9BCCDD8(v191, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9BCCDD8(v192, type metadata accessor for VisualQueryContext);

      goto LABEL_42;
    }

    v98 = sub_1D9C7E7DC();

    if (v98)
    {
      goto LABEL_47;
    }

    if (qword_1EDD2C108 != -1)
    {
      swift_once();
    }

    v127 = qword_1EDD417C0;
    *&v212 = sub_1D9C7DC7C();
    *(&v212 + 1) = v128;
    MEMORY[0x1EEE9AC00](v212);
    *(&v164 - 2) = &v212;
    LOBYTE(v127) = sub_1D9BC1698(sub_1D9BCCE74, (&v164 - 4), v127);

    v36 = v188;
    if (v127)
    {
      v129 = v185;

      sub_1D9AF80E4(&v212);
      v93 = v187;
      _Block_copy(v187);

      v130 = v191;
      sub_1D9B1630C(&v212, v191, v93);
      _Block_release(v93);

      sub_1D9A0009C(&v212);

      v131 = v130;
LABEL_65:
      sub_1D9BCCDD8(v131, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9BCCDD8(v192, type metadata accessor for VisualQueryContext);
      goto LABEL_66;
    }

    v33 = v165;
    static Logger.argos.getter(v165);
    v132 = v49;
    v35 = sub_1D9C7D8BC();
    v133 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v35, v133))
    {
      v134 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      *&v212 = v195;
      *v134 = 136315138;
      v135 = v132;
      v136 = v30;
      v137 = [v135 description];
      v138 = sub_1D9C7DC7C();
      v140 = v139;

      v30 = v136;
      v36 = v188;
      v141 = sub_1D9A0E224(v138, v140, &v212);

      *(v134 + 4) = v141;
      _os_log_impl(&dword_1D9962000, v35, v133, "encryptedSearch(): unsupported domain %s", v134, 0xCu);
      v142 = v195;
      v143 = __swift_destroy_boxed_opaque_existential_0Tm(v195);
      MEMORY[0x1DA7405F0](v142, -1, -1, v143);
      MEMORY[0x1DA7405F0](v134, -1, -1);

      (*(v167 + 8))(v165, v168);
    }

    else
    {
LABEL_56:

      (*(v167 + 8))(v33, v168);
    }

    v93 = v187;
    v144 = [objc_opt_self() empty];
    sub_1D9A0EEC0();
    v145 = swift_allocError();
    *v146 = 3;
    v147 = sub_1D9C7B6FC();
    v93[2](v93, v144, v147);

LABEL_64:
    v131 = v191;
    goto LABEL_65;
  }

LABEL_41:
  v65 = *(*(v184 + v183) + OBJC_IVAR____TtC12VisualLookUp25VisualIntelligenceService_searchFlow);
  v66 = type metadata accessor for AnyVIImageContent();
  v67 = swift_allocObject();
  v68 = v185;
  *(v67 + 16) = v185;
  v207 = &off_1F5530218;
  v206 = v66;
  v205[0] = v67;

  v69 = v68;
  sub_1D9AF80E4(&v212);
  v70 = v190;
  sub_1D9BCBDC4(v192, v190, type metadata accessor for VisualQueryContext);
  v169(v70, 0, 1, v171);
  v71 = swift_allocObject();
  v186 = v71;
  *(v71 + 16) = sub_1D9BCCE5C;
  *(v71 + 24) = v38;
  strcpy(v208, "E2E - Search");
  BYTE5(v208[1]) = 0;
  HIWORD(v208[1]) = -5120;
  v209 = "Search Overall";
  v210 = 14;
  v211 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v184 = sub_1D9AFD4B8(v208, 0);
  v195 = v65;
  v193 = v65[7];
  v72 = swift_allocObject();
  swift_weakInit();
  sub_1D99A17C8(v205, v204);
  sub_1D99AB100(v70, v189, &unk_1ECB51B10, &qword_1D9C86550);
  v73 = v176;
  sub_1D9BCBDC4(v191, v176, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  v74 = (*(v174 + 80) + 248) & ~*(v174 + 80);
  v75 = (v175 + *(v172 + 80) + v74) & ~*(v172 + 80);
  v76 = (v173 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v221;
  *(v78 + 152) = v220;
  *(v78 + 168) = v79;
  *(v78 + 184) = v222;
  v80 = v217;
  *(v78 + 88) = v216;
  *(v78 + 104) = v80;
  v81 = v219;
  *(v78 + 120) = v218;
  *(v78 + 136) = v81;
  v82 = v213;
  *(v78 + 24) = v212;
  *(v78 + 40) = v82;
  v83 = v215;
  *(v78 + 56) = v214;
  v185 = v72;
  *(v78 + 16) = v72;
  *(v78 + 200) = v223;
  *(v78 + 72) = v83;
  sub_1D9979B9C(v204, v78 + 208);
  sub_1D9A0E758(v189, v78 + v74);
  sub_1D9BCCD70(v73, v78 + v75, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  *(v78 + v76) = v184;
  v84 = v188;
  *(v78 + v77) = v188;
  v85 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
  v86 = v186;
  *v85 = sub_1D9BCCE90;
  v85[1] = v86;
  v202 = sub_1D9BCCE54;
  v203 = v78;
  v198 = MEMORY[0x1E69E9820];
  v199 = 1107296256;
  v200 = sub_1D9A0A1E0;
  v201 = &block_descriptor_116;
  v87 = _Block_copy(&v198);

  sub_1D99BB40C(&v212, v197);

  v88 = v84;

  v89 = v177;
  sub_1D9C7DA3C();
  v197[0] = MEMORY[0x1E69E7CC0];
  sub_1D9BCBD28(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9A0E83C();
  v90 = v178;
  v91 = v182;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v89, v90, v87);
  _Block_release(v87);

  sub_1D9A0009C(&v212);
  (*(v181 + 8))(v90, v91);
  v92 = v89;
  v36 = v84;
  (*(v179 + 8))(v92, v180);
  sub_1D99A6AE0(v190, &unk_1ECB51B10, &qword_1D9C86550);
  sub_1D9BCCDD8(v191, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
  sub_1D9BCCDD8(v192, type metadata accessor for VisualQueryContext);

LABEL_42:

  __swift_destroy_boxed_opaque_existential_0Tm(v205);
  v93 = v187;
LABEL_66:

  _Block_release(v93);
  return v36;
}

uint64_t sub_1D9BCBC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9ADD09C;

  return sub_1D9BC64EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9BCBD28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9BCBDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D9BCBE80(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v9 = sub_1D9C7DFBC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = v7;
  v10[6] = a1;
  v11 = v8;

  v12 = a1;
  sub_1D9BC1E20(0, 0, v6, &unk_1D9C9C278, v10);

  sub_1D9C7E0DC();
  swift_beginAccess();
  (*(a2 + 16))(a2, *(v7 + 16));
}

unint64_t _s12VisualLookUp0A29IntelligenceServiceCompatibleC21parseFlowCacheVersionSuyFZ_0()
{
  v0 = sub_1D9C7D8DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-v11];
  if ((sub_1D9A75D94() & 1) == 0)
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v13 = &qword_1EDD355A8;
    goto LABEL_7;
  }

  if (qword_1ECB50988 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v13 = &off_1ECB51BA8;
LABEL_7:
    v14 = *(*v13 + 32);

    v15 = sub_1D9C7DC4C();
    v16 = [v14 integerForKey_];

    if (!v16)
    {
      v20 = sub_1D9A75D94();
      type metadata accessor for TrialWrapper();
      swift_initStackObject();
      v21 = sub_1D9C04808((v20 & 1) == 0);
      MEMORY[0x1EEE9AC00](v21);
      *&v33[-16] = v22;
      *&v33[-8] = 3840;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E8, &unk_1D9C85D20);
      sub_1D9C7E11C();
      if (v35)
      {
        static Logger.argos.getter(v3);
        v23 = sub_1D9C7D8BC();
        v24 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1D9962000, v23, v24, "parseFlowCacheVersion(): missing version", v25, 2u);
          MEMORY[0x1DA7405F0](v25, -1, -1);
        }

        else
        {
        }

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        v16 = v34;
        if ((v34 & 0x8000000000000000) == 0)
        {
          static Logger.argos.getter(v9);
          v26 = sub_1D9C7D8BC();
          v27 = sub_1D9C7E09C();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 134217984;
            *(v28 + 4) = v16;
            _os_log_impl(&dword_1D9962000, v26, v27, "parseFlowCacheVersion(): %lu", v28, 0xCu);
            MEMORY[0x1DA7405F0](v28, -1, -1);
          }

          else
          {
          }

          (*(v1 + 8))(v9, v0);
          return v16;
        }

        static Logger.argos.getter(v6);
        v29 = sub_1D9C7D8BC();
        v30 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          *(v31 + 4) = v16;
          _os_log_impl(&dword_1D9962000, v29, v30, "parseFlowCacheVersion(): could not cast %lld to UInt", v31, 0xCu);
          MEMORY[0x1DA7405F0](v31, -1, -1);
        }

        else
        {
        }

        (*(v1 + 8))(v6, v0);
      }

      return 0;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  static Logger.argos.getter(v12);
  v17 = sub_1D9C7D8BC();
  v18 = sub_1D9C7E09C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&dword_1D9962000, v17, v18, "Parse flow cache version in internal setting %lu", v19, 0xCu);
    MEMORY[0x1DA7405F0](v19, -1, -1);
  }

  (*(v1 + 8))(v12, v0);
  return v16;
}

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9BCC9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9BC64EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9BCCA7C(uint64_t (*a1)(void, uint64_t, uint64_t, unint64_t, unint64_t, void, void, void, void))
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 248) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a1(*(v1 + 16), v1 + 24, v1 + 208, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D9BCCBCC(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D9BCA128(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t sub_1D9BCCC00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9ADD09C;

  return sub_1D9BC9D98(a1, v4);
}

uint64_t sub_1D9BCCCB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9AD9A18;

  return sub_1D9BC9D98(a1, v4);
}

uint64_t sub_1D9BCCD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BCCDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BCCEA0(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1D9BCE9F8(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1D9BCEAB0(v3, v4);
    }

    else
    {
      v6 = sub_1D9BCEB2C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_1D9BCCF5C(uint64_t a1, char a2)
{
  v4 = v2;
  *(v4 + 24) = 0;
  *(v4 + 72) = 0xD00000000000002DLL;
  *(v4 + 80) = 0x80000001D9CA60A0;
  sub_1D9BCED18(v24);
  if (!v3)
  {
    v20 = a2;
    v6 = v24[1];
    v25 = v24[0];
    v7 = v24[5];
    v8 = v24[7];
    v22 = v24[6];
    v23 = v24[4];
    v9 = *(v4 + 80);
    v21 = *(v4 + 72);
    v11 = v24[2];
    v10 = v24[3];
    type metadata accessor for FaissCodebook();
    swift_allocObject();

    v12 = sub_1D9A0693C(v25, v6, v23, v7, v22, v8, v21, v9, v11, v10);
    if (v20 & 1) == 0 || (v12[3])
    {
      *(v4 + 16) = v12;
      v14 = objc_allocWithZone(MEMORY[0x1E69945C0]);

      v15 = sub_1D9C7DC4C();
      v16 = [v14 initWithUseCase_];

      v17 = [objc_allocWithZone(MEMORY[0x1E69945E0]) initWithClientConfig_];

      v18 = v24[8];
      *(v4 + 32) = v17;
      *(v4 + 40) = v18;
      *(v4 + 48) = xmmword_1D9C87D50;
      sub_1D9BCF168(v24);
      *(v4 + 64) = v24[9];
      return v4;
    }

    sub_1D9BCF168(v24);
    sub_1D9A07C10();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  type metadata accessor for CipherMLSimilarityClient();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1D9BCD1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = objc_allocWithZone(MEMORY[0x1E69945D0]);
  v6 = sub_1D9C7B86C();
  v7 = sub_1D9C7B86C();
  v8 = [v5 initWithPECConfig:v6 keyStatus:v7];

  v9 = *(v4 + 24);
  *(v4 + 24) = v8;
  v10 = v8;

  if (v10)
  {
    v11 = *(v4 + 32);
    v19[0] = 0;
    v12 = [v11 setPECConfig:v10 error:v19];
    v13 = v12;
    if (v19[0])
    {
      v19[0];

      swift_willThrow();
    }

    else if (v12)
    {
      v15 = sub_1D9C7B87C();
      v17 = v16;

      sub_1D99A5748(v15, v17);
      return 1;
    }
  }

  else
  {
    sub_1D9BCEBB0();
    swift_allocError();
    *v14 = 74;
    swift_willThrow();
  }

  return 1;
}

void sub_1D9BCD370(uint64_t a1)
{
  v3 = v1;
  v125 = *MEMORY[0x1E69E9840];
  v113 = sub_1D9C7D8DC();
  v5 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7D97C();
  v9 = *(v8 - 8);
  v120 = v8;
  v121 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D9C7D99C();
  v13 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = sub_1D9C7C37C();
  v18 = *(v17 + 16);
  if (v18 >> 61)
  {
LABEL_44:
    __break(1u);
LABEL_45:
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
  }

  v119 = v13;
  v111 = v15;
  v114 = v7;
  v109 = v5;
  v115 = sub_1D9BCCEA0(v17 + 32, v17 + 32 + 4 * v18);
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51770, &unk_1D9C86E00);
  v21 = v3;
  v22 = sub_1D9C7C8DC();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v106 = xmmword_1D9C85660;
  *(v25 + 16) = xmmword_1D9C85660;
  (*(v23 + 16))(v25 + v24, v16, v22);
  sub_1D9BCE5BC(v25);
  if (v2)
  {
    swift_setDeallocating();
    (*(v23 + 8))(v25 + v24, v22);
    swift_deallocClassInstance();
    sub_1D99A5748(v115, v20);
    v28 = v113;
    v27 = v114;
    v29 = v2;
  }

  else
  {
    v30 = v26;
    v105 = v20;
    v97 = v21;
    swift_setDeallocating();
    (*(v23 + 8))(v25 + v24, v22);
    swift_deallocClassInstance();
    if (!*(v30 + 16))
    {

      __break(1u);
      return;
    }

    v31 = *(v30 + 32);

    v32 = v31;
    v33 = *(v31 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    v27 = v114;
    v35 = v115;
    v36 = v120;
    v37 = v105;
    v94 = v33;
    if (!v33)
    {
LABEL_37:

      sub_1D99A5748(v35, v37);
      return;
    }

    v38 = 0;
    v39 = v32 + 32;
    v117 = v121 + 16;
    v118 = (v121 + 8);
    v99 = (v119 + 8);
    v96 = v32;
    v93 = v32 + 32;
    while (1)
    {
      if (v38 >= *(v32 + 16))
      {
        goto LABEL_48;
      }

      v40 = v36;
      v110 = v34;
      v95 = v38;
      v41 = *(v39 + 4 * v38);
      v42 = v35;
      v43 = *(v97 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB516E0, &qword_1D9C86D70);
      v44 = swift_allocObject();
      *(v44 + 16) = v106;
      *(v44 + 32) = v42;
      *(v44 + 40) = v37;
      sub_1D99AF2FC(v42, v37);
      v45 = sub_1D9C7DF1C();

      *&v122[0] = 0;
      v46 = [v43 encryptDifferentiallyPrivateFakes:v45 shardIndex:v41 shardCount:50000 error:v122];

      v47 = *&v122[0];
      if (!v46)
      {
        break;
      }

      v48 = sub_1D9C7DF2C();
      v49 = v47;

      v50 = v48;
      v98 = *(v48 + 16);
      if (v98)
      {
        v51 = 0;
        v101 = v48 + 32;
        v36 = v40;
        v100 = v50;
        while (1)
        {
          if (v51 >= *(v50 + 16))
          {
            goto LABEL_45;
          }

          v102 = v51;
          v124 = *(v101 + 16 * v51);
          v123 = 0;
          memset(v122, 0, sizeof(v122));
          v52 = *(&v124 + 1);
          v53 = v124;
          sub_1D99AF2FC(v124, *(&v124 + 1));
          v103 = v53;
          v104 = v52;
          sub_1D99AF2FC(v53, v52);
          sub_1D9C7D43C();
          sub_1D9BCE91C(&qword_1ECB54120, MEMORY[0x1E69945A8], MEMORY[0x1E69945A0]);
          sub_1D9C7D67C();
          v54 = sub_1D9C7D98C();
          v55 = *(v54 + 16);
          if (v55)
          {
            break;
          }

          v66 = v36;

          v67 = MEMORY[0x1E69E7CC0];
LABEL_20:
          v68 = *(v67 + 16);
          v69 = *(v110 + 2);
          v70 = v69 + v68;
          if (__OFADD__(v69, v68))
          {
            goto LABEL_46;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v110;
          if (!isUniquelyReferenced_nonNull_native || (v73 = *(v110 + 3) >> 1, v73 < v70))
          {
            if (v69 <= v70)
            {
              v74 = v69 + v68;
            }

            else
            {
              v74 = v69;
            }

            v72 = sub_1D9AF9940(isUniquelyReferenced_nonNull_native, v74, 1, v110);
            v73 = *(v72 + 3) >> 1;
          }

          v75 = v102;
          v36 = v66;
          v76 = *(v67 + 16);
          v110 = v72;
          if (v76)
          {
            if (v73 - *(v72 + 2) < v68)
            {
              goto LABEL_49;
            }

            swift_arrayInitWithCopy();
            v36 = v66;

            v37 = v105;
            if (v68)
            {
              v77 = *(v110 + 2);
              v78 = __OFADD__(v77, v68);
              v79 = v77 + v68;
              if (v78)
              {
                goto LABEL_50;
              }

              *(v110 + 2) = v79;
            }
          }

          else
          {

            v37 = v105;
            if (v68)
            {
              goto LABEL_47;
            }
          }

          v51 = v75 + 1;
          v80 = sub_1D99A5748(v103, v104);
          (*v99)(v111, v112, v80);
          v35 = v115;
          v50 = v100;
          if (v51 == v98)
          {
            goto LABEL_36;
          }
        }

        *&v122[0] = MEMORY[0x1E69E7CC0];
        sub_1D99FE538(0, v55, 0);
        v56 = 0;
        v57 = *&v122[0];
        v119 = v54 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v58 = v107;
        v116 = v54;
        while (v56 < *(v54 + 16))
        {
          v59 = v57;
          (*(v121 + 16))(v58, v119 + *(v121 + 72) * v56, v36);
          sub_1D9BCE91C(&qword_1ECB51128, MEMORY[0x1E6994598], MEMORY[0x1E6994590]);
          v60 = sub_1D9C7D66C();
          v62 = v61;
          (*v118)(v58, v36);
          v57 = v59;
          *&v122[0] = v59;
          v64 = *(v59 + 16);
          v63 = *(v59 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_1D99FE538((v63 > 1), v64 + 1, 1);
            v58 = v107;
            v57 = *&v122[0];
          }

          ++v56;
          *(v57 + 16) = v64 + 1;
          v65 = v57 + 16 * v64;
          *(v65 + 32) = v60;
          *(v65 + 40) = v62;
          v36 = v120;
          v54 = v116;
          if (v55 == v56)
          {
            v66 = v120;
            v67 = v57;

            v27 = v114;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v35 = v115;
      v36 = v40;
LABEL_36:
      v38 = v95 + 1;

      v32 = v96;
      v34 = v110;
      v39 = v93;
      if (v38 == v94)
      {
        goto LABEL_37;
      }
    }

    v91 = *&v122[0];

    v29 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v115, v37);
    v28 = v113;
  }

  static Logger.argos.getter(v27);
  v81 = v29;
  v82 = sub_1D9C7D8BC();
  v83 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = v27;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v122[0] = v87;
    *v84 = 136315394;
    *(v84 + 4) = sub_1D9A0E224(0xD00000000000001CLL, 0x80000001D9CAC830, v122);
    *(v84 + 12) = 2112;
    v88 = v29;
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v89;
    *v86 = v89;
    _os_log_impl(&dword_1D9962000, v82, v83, "CipherMLSimilarityClient.%s failed: %@", v84, 0x16u);
    sub_1D99AF294(v86);
    MEMORY[0x1DA7405F0](v86, -1, -1);
    v90 = __swift_destroy_boxed_opaque_existential_0Tm(v87);
    MEMORY[0x1DA7405F0](v87, -1, -1, v90);
    MEMORY[0x1DA7405F0](v84, -1, -1);

    (*(v109 + 8))(v85, v28);
  }

  else
  {

    (*(v109 + 8))(v27, v28);
  }

  swift_willThrow();
}

NSObject *sub_1D9BCDFD4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v55 = *MEMORY[0x1E69E9840];
  v6 = sub_1D9C7D8DC();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1D9C7D9BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1D99AF2FC(a1, a2);
  sub_1D9C7D43C();
  sub_1D9BCE91C(&qword_1ECB51120, MEMORY[0x1E69945B8], MEMORY[0x1E69945B0]);
  sub_1D9C7D67C();
  if (v2)
  {
    v14 = v6;
LABEL_4:
    static Logger.argos.getter(v8);
    v17 = v3;
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v51[0] = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D9A0E224(0xD00000000000001BLL, 0x80000001D9CAC810, v51);
      *(v20 + 12) = 2112;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_1D9962000, v18, v19, "CipherMLSimilarityClient.%s failed: %@", v20, 0x16u);
      sub_1D99AF294(v21);
      MEMORY[0x1DA7405F0](v21, -1, -1);
      v25 = __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1DA7405F0](v22, -1, -1, v25);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v50 + 8))(v8, v14);
    swift_willThrow();
    return v18;
  }

  v48 = v11;
  v15 = *(v49 + 4);
  v16 = sub_1D9C7D66C();
  v49 = v13;
  v27 = v16;
  v29 = v28;
  v30 = sub_1D9C7B86C();
  v31 = sub_1D99A5748(v27, v29);
  *&v51[0] = 0;
  v32 = [v15 decryptSimilarityScores:v30 error:{v51, v31}];

  v33 = *&v51[0];
  if (!v32)
  {
    v14 = v6;
    v46 = *&v51[0];
    v3 = sub_1D9C7B70C();

    swift_willThrow();
    (*(v48 + 8))(v49, v10);
    goto LABEL_4;
  }

  sub_1D9BCE8D0();
  v34 = sub_1D9C7DF2C();
  v35 = v33;

  v36 = v49;
  if (v34 >> 62)
  {
    v37 = sub_1D9C7E50C();
    v38 = v48;
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_22:

    (*(v38 + 8))(v36, v10);
    return MEMORY[0x1E69E7CC0];
  }

  v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v38 = v48;
  if (!v37)
  {
    goto LABEL_22;
  }

LABEL_11:
  *&v51[0] = MEMORY[0x1E69E7CC0];
  sub_1D99FE218(0, v37 & ~(v37 >> 63), 0);
  if (v37 < 0)
  {
    __break(1u);
  }

  v39 = 0;
  v18 = *&v51[0];
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1DA73E610](v39, v34);
    }

    else
    {
      v40 = *(v34 + 8 * v39 + 32);
    }

    v41 = v40;
    [v40 score];
    v43 = v42;

    *&v51[0] = v18;
    isa = v18[2].isa;
    v44 = v18[3].isa;
    if (isa >= v44 >> 1)
    {
      sub_1D99FE218((v44 > 1), isa + 1, 1);
      v18 = *&v51[0];
    }

    ++v39;
    v18[2].isa = (isa + 1);
    *(&v18[4].isa + isa) = v43;
  }

  while (v37 != v39);
  (*(v48 + 8))(v49, v10);

  return v18;
}

void sub_1D9BCE5BC(uint64_t a1)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A070F8(a1, *(v1 + 40));
  if (v2)
  {
    v18[1] = v8;
    static Logger.argos.getter(v7);
    v9 = v2;
    v10 = sub_1D9C7D8BC();
    v11 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D9A0E224(0xD000000000000016, 0x80000001D9CAC7F0, &v19);
      *(v12 + 12) = 2112;
      v15 = v2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_1D9962000, v10, v11, "CipherMLSimilarityClient.%s failed: %@", v12, 0x16u);
      sub_1D99AF294(v13);
      MEMORY[0x1DA7405F0](v13, -1, -1);
      v17 = __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1DA7405F0](v14, -1, -1, v17);
      MEMORY[0x1DA7405F0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    swift_willThrow();
  }
}

uint64_t sub_1D9BCE7F8()
{

  sub_1D99A5748(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_1D9BCE8D0()
{
  result = qword_1ECB54118;
  if (!qword_1ECB54118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB54118);
  }

  return result;
}

uint64_t sub_1D9BCE91C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1D9BCE964@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D9BCE9F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D9BCEAB0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D9BCEB2C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1D9BCE9F8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D9BCEAB0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D9C7B66C();
  swift_allocObject();
  result = sub_1D9C7B62C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D9C7B84C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D9BCEB2C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D9C7B66C();
  swift_allocObject();
  result = sub_1D9C7B62C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1D9BCEBB0()
{
  result = qword_1ECB54128;
  if (!qword_1ECB54128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54128);
  }

  return result;
}

uint64_t sub_1D9BCEC04(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54130, &qword_1D9C9C328);
  v10 = sub_1D9BCECB4();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D9BCE964(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

unint64_t sub_1D9BCECB4()
{
  result = qword_1EDD2C478;
  if (!qword_1EDD2C478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54130, &qword_1D9C9C328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C478);
  }

  return result;
}

void *sub_1D9BCED18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D9C04AB0(65, 3uLL, 0x7865646E69, 0xE500000000000000);
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    sub_1D9BCEBB0();
    swift_allocError();
    v16 = 65;
    goto LABEL_15;
  }

  v30 = v3;
  v7 = sub_1D9C04AB0(66, 3uLL, 1852797802, 0xE400000000000000);
  v9 = v8;
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    sub_1D9BCEBB0();
    swift_allocError();
    v16 = 66;
    goto LABEL_15;
  }

  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
  v11 = sub_1D9C7E11C();
  v12 = v29;
  if (!v29)
  {

    sub_1D9BCEBB0();
    swift_allocError();
    v16 = 67;
    goto LABEL_15;
  }

  v24 = v28;
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1D9C7E11C();
  v25 = v29;
  v26 = &v22;
  v23 = v28;
  MEMORY[0x1EEE9AC00](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E8, &unk_1D9C85D20);
  v14 = sub_1D9C7E11C();
  if (v29)
  {

    sub_1D9BCEBB0();
    swift_allocError();
    v16 = 69;
LABEL_15:
    *v15 = v16;
    return swift_willThrow();
  }

  v17 = v28;
  MEMORY[0x1EEE9AC00](v14);
  result = sub_1D9C7E11C();
  if (v29)
  {

    sub_1D9BCEBB0();
    swift_allocError();
    v16 = 70;
    goto LABEL_15;
  }

  v19 = v28;
  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v30;
    a2[1] = v5;
    a2[2] = v27;
    a2[3] = v9;
    v20 = v23;
    a2[4] = v24;
    a2[5] = v12;
    v21 = v25;
    a2[6] = v20;
    a2[7] = v21;
    a2[8] = v17;
    a2[9] = v19;
  }

  return result;
}

uint64_t sub_1D9BCF1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D9BCF204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CipherMLSimilarityClient.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB5)
  {
    goto LABEL_20;
  }

  v2 = a2 + 75;
  if (a2 + 75 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 75;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 75;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x48)
  {
    v8 = v7 - 71;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CipherMLSimilarityClient.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 75;
  if (a3 + 75 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xB5)
  {
    v5 = 0;
  }

  if (a2 > 0xB4)
  {
    v6 = ((a2 - 181) >> 8) + 1;
    *result = a2 + 75;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 75;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D9BCF3C0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x48)
  {
    return v1 - 71;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D9BCF3D4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 71;
  }

  return result;
}

void sub_1D9BCF40C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v19 = a1 + 32;
    while (1)
    {
      v4 = *(v19 + 24 * v3 + 16);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_4:
      if (++v3 == v2)
      {
        return;
      }
    }

    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    v8 = *(v4 + 48);

    v9 = 1;
LABEL_7:
    v10 = 24 * v9;
    while (v5 != v9)
    {
      if (v9 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      ++v9;
      v11 = v10 + 24;
      v12 = *(v4 + v10 + 48);
      v10 += 24;
      if (v8 < v12)
      {
        v7 = *(v4 + v11 + 8);
        v13 = *(v4 + v11 + 16);

        v8 = v12;
        v6 = v13;
        goto LABEL_7;
      }
    }

    v14 = *a2;
    if (!*(*a2 + 16) || (, v15 = sub_1D99ED894(v7, v6), v17 = v16, , (v17 & 1) == 0) || v8 != *(*(v14 + 56) + 4 * v15))
    {

      goto LABEL_4;
    }

    sub_1D9BD33E0(v7, v6);
  }
}

void sub_1D9BCF5C4(void *a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9BD35C0(v5, type metadata accessor for VisualUnderstanding.ImageRegion, sub_1D9BD3F7C, sub_1D9BD3710);
  *a1 = v3;
}

void sub_1D9BCF6A8(void *a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9BD3494(v5);
  *a1 = v3;
}

void sub_1D9BCF750(void *a1)
{
  v2 = *(_s14DetectedResultVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E918C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9BD35C0(v5, _s14DetectedResultVMa, sub_1D9BD5638, sub_1D9BD3D24);
  *a1 = v3;
}

void sub_1D9BCF834(unint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v211 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0, &qword_1D9C858F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v217 = (&v208 - v9);
  v229 = sub_1D9C7D8DC();
  v263 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v223 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v222 = &v208 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v228 = &v208 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v224 = &v208 - v16;
  v17 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v218 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v213 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v227 = &v208 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v259 = (&v208 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8, &qword_1D9C858F8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v225 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v208 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v260 = &v208 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v236 = &v208 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0, &qword_1D9C8FF80);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v210 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v251 = &v208 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v238 = &v208 - v36;
  v257 = type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  v37 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v212 = (&v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v250 = (&v208 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v208 - v42;
  v237 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v234 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v249 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v233 = &v208 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8, &unk_1D9C93D60);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v208 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v239 = (&v208 - v51);
  v52 = a2[1];
  v208 = *a2;
  v209 = v52;
  v53 = *(a4 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  swift_beginAccess();
  v54 = *(v53 + 16);
  v55 = *(v54 + 64);
  v230 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v55;
  v240 = (v56 + 63) >> 6;
  v242 = (v37 + 48);
  v262 = (v8 + 48);
  v226 = (v263 + 8);
  v221 = (v8 + 56);
  v215 = 0x80000001D9CA2910;
  v216 = 0x80000001D9CA2950;
  v235 = v54;

  v232 = a1;

  v59 = 0;
  *&v60 = 136315138;
  v219 = v60;
  *&v60 = 136315394;
  v220 = v60;
  v214 = MEMORY[0x1E69E7CC0];
  v243 = v7;
  v254 = v43;
  v241 = v49;
  while (1)
  {
    v61 = v59;
    v62 = v257;
    v63 = v240;
    if (!v58)
    {
      break;
    }

    while (1)
    {
      while (1)
      {
        v64 = v61;
LABEL_12:
        v247 = (v58 - 1) & v58;
        v66 = __clz(__rbit64(v58)) | (v64 << 6);
        v67 = (*(v235 + 48) + 16 * v66);
        v69 = *v67;
        v68 = v67[1];
        v70 = v233;
        sub_1D9A5521C(*(v235 + 56) + *(v234 + 72) * v66, v233, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
        v72 = *(v71 + 48);
        v73 = v241;
        *v241 = v69;
        *(v73 + 1) = v68;
        v74 = v70;
        v49 = v73;
        sub_1D9BD8474(v74, &v73[v72], type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
        (*(*(v71 - 8) + 56))(v49, 0, 1, v71);

        v248 = v64;
        v62 = v257;
        v43 = v254;
LABEL_13:
        v75 = v239;
        sub_1D99B1C20(v49, v239, &qword_1ECB51AC8, &unk_1D9C93D60);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
        if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
        {

          *&v265 = v214;
          sub_1D9A18738(v232);
          return;
        }

        v77 = v75[1];
        v244 = *v75;
        v252 = v77;
        v78 = v75 + *(v76 + 48);
        v79 = v249;
        sub_1D9BD8474(v78, v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
        v80 = *(v79 + *(v237 + 20));
        v81 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
        swift_beginAccess();
        v255 = v81;
        v256 = v80;
        v82 = v80 + v81;
        v83 = v238;
        sub_1D9BD14EC(v82, v238);
        v84 = *v242;
        if ((*v242)(v83, 1, v62) == 1)
        {
          *v43 = 0;
          v43[2] = 0;
          *(v43 + 1) = 0;
          *(v43 + 1) = 0;
          v43[16] = 1;
          sub_1D9C7D3BC();
          v85 = v84(v83, 1, v62);
          v86 = v236;
          v87 = v259;
          if (v85 != 1)
          {
            sub_1D9BD155C(v83);
          }
        }

        else
        {
          sub_1D9BD8474(v83, v43, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
          v86 = v236;
          v87 = v259;
        }

        v88 = *v43;
        sub_1D9BD8414(v43, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
        if (v88)
        {
          v89 = v252;

          v263 = sub_1D9A163E0(v244, v89);
          if (v263 != 27)
          {
            break;
          }
        }

        sub_1D9BD8414(v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

        v61 = v248;
LABEL_21:
        v63 = v240;
        v58 = v247;
        if (!v247)
        {
          goto LABEL_6;
        }
      }

      v253 = v84;
      v90 = MEMORY[0x1E69E7CC0];
      v275 = MEMORY[0x1E69E7CC0];
      v265 = v232;
      *&v266 = 0;
      swift_bridgeObjectRetain_n();
      swift_beginAccess();
      v91 = v260;
      sub_1D9B3D970(v260);
      sub_1D99B1C20(v91, v86, &qword_1ECB510F8, &qword_1D9C858F8);
      v92 = v7;
      v261 = *v262;
      v93 = v261(v86, 1, v7);
      v94 = v90;
      v258 = v90;
      v95 = v242;
      if (v93 != 1)
      {
        v94 = MEMORY[0x1E69E7CC0];
        v258 = MEMORY[0x1E69E7CC0];
        do
        {
          v115 = *v86;
          v116 = v92;
          sub_1D9BD8474(v86 + *(v92 + 48), v87, type metadata accessor for VisualUnderstanding.ImageRegion);
          LOBYTE(v264[0]) = v263;
          if ((sub_1D9BD2CE0(v264) & 1) == 0)
          {
            goto LABEL_30;
          }

          v117 = v94;
          v118 = *v87;
          v119 = *(v87 + 8);
          v120 = *(v87 + 16);
          v121 = *(v87 + 24);
          v276.origin.x = *v87;
          v276.origin.y = v119;
          v276.size.width = v120;
          v276.size.height = v121;
          Width = CGRectGetWidth(v276);
          v277.origin.x = v118;
          v277.origin.y = v119;
          v277.size.width = v120;
          v277.size.height = v121;
          Height = CGRectGetHeight(v277);
          v124 = v251;
          sub_1D9BD14EC(v256 + v255, v251);
          v125 = v95;
          v126 = v257;
          v127 = v253;
          if (v253(v124, 1, v257) == 1)
          {
            v128 = v250;
            *v250 = 0;
            *(v128 + 2) = 0;
            *(v128 + 1) = 0;
            *(v128 + 1) = 0;
            *(v128 + 16) = 1;
            sub_1D9C7D3BC();
            v129 = v127(v124, 1, v126);
            v95 = v125;
            if (v129 != 1)
            {
              sub_1D9BD155C(v124);
            }
          }

          else
          {
            v128 = v250;
            sub_1D9BD8474(v124, v250, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
            v95 = v125;
          }

          v130 = Width * Height;
          v131 = *(v128 + 1);
          sub_1D9BD8414(v128, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
          v43 = v254;
          v87 = v259;
          v94 = v117;
          if (v131 > v130)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v258 = sub_1D9AF85BC(0, *(v258 + 2) + 1, 1, v258);
            }

            v133 = *(v258 + 2);
            v132 = *(v258 + 3);
            if (v133 >= v132 >> 1)
            {
              v258 = sub_1D9AF85BC((v132 > 1), v133 + 1, 1, v258);
            }

            v134 = v258;
            *(v258 + 2) = v133 + 1;
            *&v134[8 * v133 + 32] = v115;
            v275 = v134;
            v87 = v259;
            v135 = *v259;
            v245 = v259[1];
            v246 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1D9AF9040(0, *(v117 + 2) + 1, 1, v117);
            }

            v116 = v243;
            v137 = *(v94 + 2);
            v136 = *(v94 + 3);
            if (v137 >= v136 >> 1)
            {
              v94 = sub_1D9AF9040((v136 > 1), v137 + 1, 1, v94);
            }

            sub_1D9BD8414(v87, type metadata accessor for VisualUnderstanding.ImageRegion);
            *(v94 + 2) = v137 + 1;
            v138 = &v94[32 * v137];
            v139 = v245;
            *(v138 + 2) = v246;
            *(v138 + 3) = v139;
          }

          else
          {
LABEL_30:
            sub_1D9BD8414(v87, type metadata accessor for VisualUnderstanding.ImageRegion);
          }

          v114 = v260;
          sub_1D9B3D970(v260);
          sub_1D99B1C20(v114, v86, &qword_1ECB510F8, &qword_1D9C858F8);
          v92 = v116;
        }

        while (v261(v86, 1, v116) != 1);
      }

      v96 = v258;
      v97 = v228;
      if (*(v258 + 2) > 1uLL)
      {
        break;
      }

      v140 = v224;
      static Logger.argos.getter(v224);
      sub_1D9A3E0E0(v97);
      v141 = *v226;
      v142 = v229;
      (*v226)(v140, v229);
      v143 = v252;

      v144 = v143;
      v145 = sub_1D9C7D8BC();
      v146 = sub_1D9C7E09C();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        *&v265 = v148;
        *v147 = v220;
        v149 = sub_1D9A0E224(v244, v144, &v265);

        *(v147 + 4) = v149;
        *(v147 + 12) = 2048;
        *(v147 + 14) = *(v96 + 2);
        _os_log_impl(&dword_1D9962000, v145, v146, "Skip grouping for domain %s since the small region count is %ld.", v147, 0x16u);
        v150 = __swift_destroy_boxed_opaque_existential_0Tm(v148);
        MEMORY[0x1DA7405F0](v148, -1, -1, v150);
        v151 = v141;
        v7 = v243;
        MEMORY[0x1DA7405F0](v147, -1, -1);

        v151(v228, v229);
        goto LABEL_49;
      }

      v141(v97, v142);
LABEL_52:
      sub_1D9BD8414(v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

      v58 = v247;
      v61 = v248;
      v62 = v257;
      v63 = v240;
      v49 = v241;
      v7 = v243;
      if (!v247)
      {
        goto LABEL_6;
      }
    }

    v98 = *(v94 + 2);
    v99 = v229;
    if (!v98)
    {

      v100 = v222;
      static Logger.argos.getter(v222);
      v101 = v223;
      sub_1D9A3E0E0(v223);
      v102 = *v226;
      (*v226)(v100, v99);
      v103 = v252;

      v104 = v103;
      v105 = sub_1D9C7D8BC();
      v106 = sub_1D9C7E09C();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v263 = v102;
        v109 = v108;
        *&v265 = v108;
        *v107 = v219;
        v110 = sub_1D9A0E224(v244, v104, &v265);

        *(v107 + 4) = v110;
        _os_log_impl(&dword_1D9962000, v105, v106, "Skip grouping for domain %s, failed to union small regions.", v107, 0xCu);
        v111 = __swift_destroy_boxed_opaque_existential_0Tm(v109);
        v112 = v101;
        v7 = v243;
        MEMORY[0x1DA7405F0](v109, -1, -1, v111);
        MEMORY[0x1DA7405F0](v107, -1, -1);

        (v263)(v112, v229);
LABEL_49:
        sub_1D9BD8414(v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

        v61 = v248;
        v62 = v257;
        v49 = v241;
        goto LABEL_21;
      }

      v102(v101, v99);
      goto LABEL_52;
    }

    if (!*(v94 + 2))
    {
      goto LABEL_156;
    }

    v252 = v94;
    v153 = *(v94 + 7);
    v152 = v94 + 56;
    v154 = v153;
    x = *(v152 - 3);
    y = *(v152 - 2);
    v157 = *(v152 - 1);
    v158 = v231;
    v49 = v241;
    do
    {
      v278.origin.x = x;
      v278.origin.y = y;
      v278.size.width = v157;
      v278.size.height = v154;
      v279 = CGRectUnion(v278, *(v152 - 24));
      x = v279.origin.x;
      y = v279.origin.y;
      v157 = v279.size.width;
      v154 = v279.size.height;
      v152 += 32;
      --v98;
    }

    while (v98);
    v159 = 0;
    v7 = v243;
    while (2)
    {
      v160 = *(v232 + 16);
      v161 = v225;
      if (v159 == v160)
      {
        v162 = 1;
      }

      else
      {
        if (v159 >= v160)
        {
          goto LABEL_155;
        }

        v163 = v217;
        v164 = v232 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v159;
        v165 = *(v7 + 48);
        *v217 = v159;
        sub_1D9A5521C(v164, v163 + v165, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99B1C20(v163, v225, &qword_1ECB510F0, &qword_1D9C858F0);
        v161 = v225;
        v162 = 0;
        ++v159;
      }

      v166 = v161;
      (*v221)(v161, v162, 1, v7);
      sub_1D99B1C20(v166, v158, &qword_1ECB510F8, &qword_1D9C858F8);
      if (v261(v158, 1, v7) != 1)
      {
        v167 = *v158;
        sub_1D9BD8474(v158 + *(v7 + 48), v227, type metadata accessor for VisualUnderstanding.ImageRegion);
        v168 = *(v96 + 2);
        v169 = 32;
        while (v168)
        {
          v170 = *&v96[v169];
          v169 += 8;
          --v168;
          if (v170 == v167)
          {
            goto LABEL_59;
          }
        }

        v171 = *(v227 + 48);
        v258 = *(v171 + 16);
        if (!v258)
        {
LABEL_59:
          sub_1D9BD8414(v227, type metadata accessor for VisualUnderstanding.ImageRegion);
          continue;
        }

        v255 = v159;
        v172 = 0;
        v173 = (v171 + 32);
        v174 = v171;
        while (2)
        {
          if (v172 >= *(v174 + 16))
          {
            goto LABEL_154;
          }

          v175 = v173[1];
          v265 = *v173;
          v266 = v175;
          v176 = v173[2];
          v177 = v173[3];
          v178 = v173[5];
          v269 = v173[4];
          v270 = v178;
          v267 = v176;
          v268 = v177;
          v179 = v173[6];
          v180 = v173[7];
          v181 = v173[8];
          *(v273 + 13) = *(v173 + 141);
          v272 = v180;
          v273[0] = v181;
          v271 = v179;
          ++v172;
          v182 = 0xE300000000000000;
          v183 = 7631457;
          switch(v265)
          {
            case 1:
              v182 = 0xE600000000000000;
              v183 = 0x65727574616ELL;
              break;
            case 2:
              v182 = 0xE800000000000000;
              v183 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v183 = 0x4C6C61727574616ELL;
              v182 = 0xEF6B72616D646E61;
              break;
            case 4:
              v182 = 0xE500000000000000;
              v183 = 0x616964656DLL;
              break;
            case 5:
              v182 = 0xE400000000000000;
              v183 = 1802465122;
              break;
            case 6:
              v182 = 0xE500000000000000;
              v183 = 0x6D75626C61;
              break;
            case 7:
              v182 = 0xE400000000000000;
              v183 = 1937006947;
              break;
            case 8:
              v182 = 0xE400000000000000;
              v183 = 1936158564;
              break;
            case 9:
              v182 = 0xE700000000000000;
              v184 = 1835626081;
              goto LABEL_93;
            case 10:
              v182 = 0xE500000000000000;
              v183 = 0x7364726962;
              break;
            case 11:
              v182 = 0xE700000000000000;
              v183 = 0x73746365736E69;
              break;
            case 12:
              v182 = 0xE800000000000000;
              v183 = 0x73656C6974706572;
              break;
            case 13:
              v182 = 0xE700000000000000;
              v184 = 1835884909;
LABEL_93:
              v183 = v184 | 0x736C6100000000;
              break;
            case 14:
              v183 = 0xD000000000000010;
              v182 = v215;
              break;
            case 15:
              v182 = 0xE700000000000000;
              v183 = 0x6C657261707061;
              break;
            case 16:
              v183 = 0x726F737365636361;
              v182 = 0xEB00000000736569;
              break;
            case 17:
              v182 = 0xE400000000000000;
              v183 = 1685024614;
              break;
            case 18:
              v182 = 0xEA0000000000746ELL;
              v183 = 0x6F726665726F7473;
              break;
            case 19:
              v185 = 1852270963;
              goto LABEL_100;
            case 20:
              v183 = 0xD000000000000011;
              v182 = v216;
              break;
            case 21:
              v185 = 1869903201;
LABEL_100:
              v183 = v185 | 0x626D795300000000;
              v182 = 0xEA00000000006C6FLL;
              break;
            case 22:
              v183 = 0x676F4C646E617262;
              v182 = 0xEF6C6F626D79536FLL;
              break;
            case 23:
              v182 = 0xE700000000000000;
              v183 = 0x65646F63726162;
              break;
            case 24:
              v183 = 0x727574706C756373;
              v182 = 0xE900000000000065;
              break;
            case 25:
              v182 = 0xE700000000000000;
              v183 = 0x656E696C796B73;
              break;
            case 26:
              v182 = 0xE800000000000000;
              v183 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v186 = 0xE300000000000000;
          v187 = 7631457;
          switch(v263)
          {
            case 1:
              v186 = 0xE600000000000000;
              v187 = 0x65727574616ELL;
              break;
            case 2:
              v186 = 0xE800000000000000;
              v187 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v187 = 0x4C6C61727574616ELL;
              v186 = 0xEF6B72616D646E61;
              break;
            case 4:
              v186 = 0xE500000000000000;
              v187 = 0x616964656DLL;
              break;
            case 5:
              v186 = 0xE400000000000000;
              v187 = 1802465122;
              break;
            case 6:
              v186 = 0xE500000000000000;
              v187 = 0x6D75626C61;
              break;
            case 7:
              v186 = 0xE400000000000000;
              v187 = 1937006947;
              break;
            case 8:
              v186 = 0xE400000000000000;
              v187 = 1936158564;
              break;
            case 9:
              v186 = 0xE700000000000000;
              v188 = 1835626081;
              goto LABEL_122;
            case 10:
              v186 = 0xE500000000000000;
              v187 = 0x7364726962;
              break;
            case 11:
              v186 = 0xE700000000000000;
              v187 = 0x73746365736E69;
              break;
            case 12:
              v186 = 0xE800000000000000;
              v187 = 0x73656C6974706572;
              break;
            case 13:
              v186 = 0xE700000000000000;
              v188 = 1835884909;
LABEL_122:
              v187 = v188 | 0x736C6100000000;
              break;
            case 14:
              v187 = 0xD000000000000010;
              v186 = v215;
              break;
            case 15:
              v186 = 0xE700000000000000;
              v187 = 0x6C657261707061;
              break;
            case 16:
              v187 = 0x726F737365636361;
              v186 = 0xEB00000000736569;
              break;
            case 17:
              v186 = 0xE400000000000000;
              v187 = 1685024614;
              break;
            case 18:
              v186 = 0xEA0000000000746ELL;
              v187 = 0x6F726665726F7473;
              break;
            case 19:
              v189 = 1852270963;
              goto LABEL_129;
            case 20:
              v187 = 0xD000000000000011;
              v186 = v216;
              break;
            case 21:
              v189 = 1869903201;
LABEL_129:
              v187 = v189 | 0x626D795300000000;
              v186 = 0xEA00000000006C6FLL;
              break;
            case 22:
              v187 = 0x676F4C646E617262;
              v186 = 0xEF6C6F626D79536FLL;
              break;
            case 23:
              v186 = 0xE700000000000000;
              v187 = 0x65646F63726162;
              break;
            case 24:
              v187 = 0x727574706C756373;
              v186 = 0xE900000000000065;
              break;
            case 25:
              v186 = 0xE700000000000000;
              v187 = 0x656E696C796B73;
              break;
            case 26:
              v186 = 0xE800000000000000;
              v187 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v190 = v167;
          if (v183 == v187 && v182 == v186)
          {
            sub_1D99AE054(&v265, v264);

            sub_1D99AE0B0(&v265);
LABEL_136:
            v158 = v231;
            if (BYTE12(v272))
            {
              v280.origin.x = x;
              v280.origin.y = y;
              v280.size.width = v157;
              v280.size.height = v154;
              if (!CGRectContainsRect(v280, *v227))
              {
LABEL_58:
                v7 = v243;
                v49 = v241;
                v159 = v255;
                goto LABEL_59;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v7 = v243;
              v49 = v241;
              v159 = v255;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v96 = sub_1D9AF85BC(0, *(v96 + 2) + 1, 1, v96);
              }

              v194 = *(v96 + 2);
              v193 = *(v96 + 3);
              if (v194 >= v193 >> 1)
              {
                v96 = sub_1D9AF85BC((v193 > 1), v194 + 1, 1, v96);
              }

              *(v96 + 2) = v194 + 1;
              *&v96[8 * v194 + 32] = v190;
              v275 = v96;
              goto LABEL_59;
            }
          }

          else
          {
            v191 = sub_1D9C7E7DC();
            sub_1D99AE054(&v265, v264);

            sub_1D99AE0B0(&v265);
            if (v191)
            {
              goto LABEL_136;
            }

            v158 = v231;
          }

          v167 = v190;
          v173 += 10;
          if (v258 == v172)
          {
            goto LABEL_58;
          }

          continue;
        }
      }

      break;
    }

    *&v265 = x;
    *(&v265 + 1) = y;
    *&v266 = v157;
    *(&v266 + 1) = v154;
    v264[0] = v208;
    v264[1] = v209;
    v274 = v263;
    v195 = v210;
    sub_1D9BD14EC(v256 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig, v210);
    v196 = v257;
    v197 = v253;
    v198 = v253(v195, 1, v257);
    v199 = v212;
    if (v198 == 1)
    {
      *v212 = 0;
      *(v199 + 2) = 0;
      *(v199 + 1) = 0;
      *(v199 + 1) = 0;
      *(v199 + 16) = 1;

      v199 = v212;
      sub_1D9C7D3BC();
      v200 = v197(v195, 1, v196);
      v43 = v254;
      if (v200 != 1)
      {
        sub_1D9BD155C(v195);
      }
    }

    else
    {
      sub_1D9BD8474(v195, v212, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);

      v43 = v254;
    }

    sub_1D9BD15C4(v232, v96, &v265, v264, &v274, v211, v199, v213);
    v201 = v96;

    sub_1D9BD8414(v199, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
    v202 = v214;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = sub_1D9AF8A90(0, v202[2] + 1, 1, v202);
    }

    v204 = v202[2];
    v203 = v202[3];
    if (v204 >= v203 >> 1)
    {
      v202 = sub_1D9AF8A90((v203 > 1), v204 + 1, 1, v202);
    }

    v202[2] = v204 + 1;
    v205 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v214 = v202;
    sub_1D9BD8474(v213, v202 + v205 + *(v218 + 72) * v204, type metadata accessor for VisualUnderstanding.ImageRegion);
    LOBYTE(v265) = v263;

    sub_1D9BD76C0(v232, v201, &v265);
    v207 = v206;

    sub_1D9BD8414(v249, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v232 = v207;
    v58 = v247;
    v59 = v248;
  }

LABEL_6:
  if (v63 <= v61 + 1)
  {
    v65 = v61 + 1;
  }

  else
  {
    v65 = v63;
  }

  while (1)
  {
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v64 >= v63)
    {
      v248 = v65 - 1;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
      (*(*(v113 - 8) + 56))(v49, 1, 1, v113);
      v247 = 0;
      goto LABEL_13;
    }

    v58 = *(v230 + 8 * v64);
    ++v61;
    if (v58)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_1D9BD14EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0, &qword_1D9C8FF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9BD155C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0, &qword_1D9C8FF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9BD15C4(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, double *a4@<X3>, unsigned __int8 *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v179 = a6;
  v177 = a8;
  v14 = _s14DetectedResultVMa(0);
  v168 = *(v14 - 8);
  v169 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v185 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1D9C7D8DC();
  v167 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v193 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v176);
  v184 = (&v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v167 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v189 = &v167 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v167 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v167 - v25;
  MEMORY[0x1EEE9AC00](v27);
  *&v182 = &v167 - v29;
  v31 = *a3;
  v30 = a3[1];
  v32 = a3[2];
  v33 = a3[3];
  v34 = *a4;
  v35 = a4[1];
  v36 = a4[2];
  v37 = a4[3];
  v195 = *a5;
  v178 = a7;
  v199 = *(a7 + 1);
  v38 = *(a2 + 16);
  if (!v38)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v173 = v35;
    v174 = v37;
    v175 = v36;
    v186 = v28;
    sub_1D9BD7138(v41, *(v178 + 8), *(v178 + 16));
    v49 = v48;

    v50 = *(v49 + 16);
    v180 = v49;
    if (v50)
    {
      v196 = 0;
      v197 = 0;
      v202 = 0;
      v203 = 0;
      v200 = 0;
      v201 = 0;
      v194 = 0;
      v198 = 0;
      v51 = 0;
      *&v181 = v49 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
      v191 = v50;
      *&v192 = COERCE_DOUBLE(0x80000001D9CA2950);
      v187 = COERCE_DOUBLE(0x80000001D9CA2910);
      v52 = 0.0;
      v53 = 0.0;
      v54 = v195;
      while (1)
      {
        if (v51 >= *(v49 + 16))
        {
          goto LABEL_151;
        }

        v55 = *&v182;
        sub_1D9A5521C(v181 + *(v186 + 72) * v51, *&v182, type metadata accessor for VisualUnderstanding.ImageRegion);
        v56 = *(v55 + 48);

        sub_1D9BD8414(v55, type metadata accessor for VisualUnderstanding.ImageRegion);
        v57 = *(v56 + 16);
        if (v57)
        {
          break;
        }

LABEL_14:
        ++v51;
        v41 = v189;
        if (v51 == v50)
        {
          goto LABEL_115;
        }
      }

      v58 = v57 - 1;
      v59 = 32;
      while (1)
      {
        v60 = *(v56 + v59 + 16);
        v228[0] = *(v56 + v59);
        v228[1] = v60;
        v61 = *(v56 + v59 + 32);
        v62 = *(v56 + v59 + 48);
        v63 = *(v56 + v59 + 80);
        v230 = *(v56 + v59 + 64);
        v231 = v63;
        v228[2] = v61;
        v229 = v62;
        v64 = *(v56 + v59 + 96);
        v65 = *(v56 + v59 + 112);
        v66 = *(v56 + v59 + 128);
        *(v234 + 13) = *(v56 + v59 + 141);
        v233 = v65;
        v234[0] = v66;
        v232 = v64;
        v67 = -7.54792485e168;
        v68 = 7631457;
        switch(LOBYTE(v228[0]))
        {
          case 1:
            v67 = -2.12455197e183;
            v68 = 0x65727574616ELL;
            break;
          case 2:
            v67 = -9.12488124e192;
            v68 = 0x6B72616D646E616CLL;
            break;
          case 3:
            v68 = 0x4C6C61727574616ELL;
            v67 = -5.2016177e228;
            break;
          case 4:
            v67 = -3.24180904e178;
            v68 = 0x616964656DLL;
            break;
          case 5:
            v67 = -4.94660803e173;
            v68 = 1802465122;
            break;
          case 6:
            v67 = -3.24180904e178;
            v68 = 0x6D75626C61;
            break;
          case 7:
            v67 = -4.94660803e173;
            v68 = 1937006947;
            break;
          case 8:
            v67 = -4.94660803e173;
            v68 = 1936158564;
            break;
          case 9:
            v67 = -1.39234638e188;
            v69 = 1835626081;
            goto LABEL_39;
          case 0xA:
            v67 = -3.24180904e178;
            v68 = 0x7364726962;
            break;
          case 0xB:
            v67 = -1.39234638e188;
            v68 = 0x73746365736E69;
            break;
          case 0xC:
            v67 = -9.12488124e192;
            v68 = 0x73656C6974706572;
            break;
          case 0xD:
            v67 = -1.39234638e188;
            v69 = 1835884909;
LABEL_39:
            v68 = v69 | 0x736C6100000000;
            break;
          case 0xE:
            v68 = 0xD000000000000010;
            v67 = v187;
            break;
          case 0xF:
            v67 = -1.39234638e188;
            v68 = 0x6C657261707061;
            break;
          case 0x10:
            v68 = 0x726F737365636361;
            v67 = -2.56842574e207;
            break;
          case 0x11:
            v67 = -4.94660803e173;
            v68 = 1685024614;
            break;
          case 0x12:
            v67 = -3.91910665e202;
            v68 = 0x6F726665726F7473;
            break;
          case 0x13:
            v70 = 1852270963;
            goto LABEL_46;
          case 0x14:
            v68 = 0xD000000000000011;
            v67 = *&v192;
            break;
          case 0x15:
            v70 = 1869903201;
LABEL_46:
            v68 = v70 | 0x626D795300000000;
            v67 = -3.91910665e202;
            break;
          case 0x16:
            v68 = 0x676F4C646E617262;
            v67 = -5.38891607e228;
            break;
          case 0x17:
            v67 = -1.39234638e188;
            v68 = 0x65646F63726162;
            break;
          case 0x18:
            v68 = 0x727574706C756373;
            v67 = -5.98008217e197;
            break;
          case 0x19:
            v67 = -1.39234638e188;
            v68 = 0x656E696C796B73;
            break;
          case 0x1A:
            v67 = -9.12488124e192;
            v68 = 0x44327463656A626FLL;
            break;
          default:
            break;
        }

        v71 = -7.54792485e168;
        v72 = 7631457;
        switch(v54)
        {
          case 1:
            v71 = -2.12455197e183;
            if (v68 == 0x65727574616ELL)
            {
              goto LABEL_100;
            }

            goto LABEL_103;
          case 2:
            v71 = -9.12488124e192;
            if (v68 != 0x6B72616D646E616CLL)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 3:
            v71 = -5.2016177e228;
            if (v68 != 0x4C6C61727574616ELL)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 4:
            v71 = -3.24180904e178;
            if (v68 != 0x616964656DLL)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 5:
            v71 = -4.94660803e173;
            if (v68 != 1802465122)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 6:
            v71 = -3.24180904e178;
            if (v68 != 0x6D75626C61)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 7:
            v71 = -4.94660803e173;
            if (v68 != 1937006947)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 8:
            v71 = -4.94660803e173;
            if (v68 != 1936158564)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 9:
            v71 = -1.39234638e188;
            v74 = 1835626081;
            goto LABEL_82;
          case 10:
            v71 = -3.24180904e178;
            if (v68 != 0x7364726962)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 11:
            v71 = -1.39234638e188;
            v73 = 0x746365736E69;
            goto LABEL_83;
          case 12:
            v71 = -9.12488124e192;
            if (v68 != 0x73656C6974706572)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 13:
            v71 = -1.39234638e188;
            v74 = 1835884909;
LABEL_82:
            v73 = v74 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_83:
            if (v68 != (v73 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 14:
            v71 = v187;
            if (v68 != 0xD000000000000010)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 15:
            v71 = -1.39234638e188;
            if (v68 != 0x6C657261707061)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 16:
            v71 = -2.56842574e207;
            if (v68 != 0x726F737365636361)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 17:
            v71 = -4.94660803e173;
            if (v68 != 1685024614)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 18:
            v71 = -3.91910665e202;
            if (v68 != 0x6F726665726F7473)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 19:
            v75 = 1852270963;
            goto LABEL_96;
          case 20:
            v71 = *&v192;
            if (v68 != 0xD000000000000011)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 21:
            v75 = 1869903201;
LABEL_96:
            v71 = -3.91910665e202;
            if (v68 != (v75 | 0x626D795300000000))
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 22:
            v71 = -5.38891607e228;
            if (v68 != 0x676F4C646E617262)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 23:
            v71 = -1.39234638e188;
            v72 = 0x65646F63726162;
            goto LABEL_99;
          case 24:
            v71 = -5.98008217e197;
            if (v68 != 0x727574706C756373)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 25:
            v71 = -1.39234638e188;
            if (v68 != 0x656E696C796B73)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          case 26:
            v71 = -9.12488124e192;
            if (v68 != 0x44327463656A626FLL)
            {
              goto LABEL_103;
            }

            goto LABEL_100;
          default:
LABEL_99:
            if (v68 != v72)
            {
              goto LABEL_103;
            }

LABEL_100:
            if (*&v67 == *&v71)
            {
              sub_1D99AE054(v228, &v204);
            }

            else
            {
LABEL_103:
              v76 = sub_1D9C7E7DC();
              sub_1D99AE054(v228, &v204);

              if ((v76 & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            if ((BYTE12(v233) & 1) == 0)
            {
LABEL_18:
              sub_1D99AE0B0(v228);
              if (!v58)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }

            v77 = *(&v233 + 1);
            v79 = v202;
            v78 = v203;
            v81 = v200;
            v80 = v201;
            if (v52 < *(&v233 + 1))
            {
              v79 = *(&v231 + 1);
              v78 = v231;
              v81 = *(&v232 + 1);
              v80 = v232;
            }

            sub_1D99FE1B4(v78, v79, v80, v81);
            sub_1D99FEF84(v203, v202, v201, v200);
            sub_1D99AE0B0(v228);
            if (v77 > v52)
            {
              v52 = v77;
            }

            HIDWORD(v197) = (BYTE4(v197) | HIBYTE(v233)) & 1;
            v198 = (v198 | BYTE13(v233)) & 1;
            LOBYTE(v199) = (BYTE14(v233) | v199) & 1;
            v199 = v199;
            HIDWORD(v196) = (BYTE1(v234[0]) | BYTE4(v196)) & 1;
            LODWORD(v197) = (LOBYTE(v234[0]) | v197) & 1;
            LODWORD(v196) = (BYTE8(v228[2]) | v196) & 1;
            v194 = 1;
            if (*(&v233 + 2) > v53)
            {
              v53 = *(&v233 + 2);
            }

            v202 = v79;
            v203 = v78;
            v200 = v81;
            v201 = v80;
            v54 = v195;
            if (!v58)
            {
LABEL_13:

              v49 = v180;
              v50 = v191;
              goto LABEL_14;
            }

LABEL_19:
            --v58;
            v59 += 160;
            break;
        }
      }
    }

    v196 = 0;
    v197 = 0;
    v202 = 0;
    v203 = 0;
    v200 = 0;
    v201 = 0;
    v194 = 0;
    v198 = 0;
    v52 = 0.0;
    v53 = 0.0;
    LOBYTE(v54) = v195;
    v41 = v189;
LABEL_115:
    v82 = v31 - v34;
    v171 = v32;
    v172 = v30;
    v83 = v30 - v173;
    v239.origin.x = v31;
    v239.origin.y = v30;
    v239.size.width = v32;
    v170 = v33;
    v239.size.height = v33;
    *&v181 = CGRectGetWidth(v239);
    v240.origin.x = v31;
    v240.origin.y = v30;
    v240.size.width = v32;
    v240.size.height = v33;
    Height = CGRectGetHeight(v240);
    *&v192 = v31;
    v85 = Height;
    v86 = 1.0 / v175;
    v87 = 1.0 / v174;
    v187 = v82 * (1.0 / v175);
    v182 = v83 * (1.0 / v174);
    v241.origin.x = v82;
    v241.origin.y = v83;
    v88 = *&v181;
    *&v241.size.width = v181;
    v241.size.height = v85;
    v89 = v86 * CGRectGetWidth(v241);
    v242.origin.x = v82;
    v242.origin.y = v83;
    v242.size.width = v88;
    v242.size.height = v85;
    v90 = v87 * CGRectGetHeight(v242);
    v91 = v187;
    v243.origin.x = v187;
    v92 = v182;
    v243.origin.y = v182;
    v243.size.width = v89;
    v243.size.height = v90;
    Width = CGRectGetWidth(v243);
    v244.origin.x = v91;
    v244.origin.y = v92;
    v244.size.width = v89;
    v244.size.height = v90;
    v94 = CGRectGetHeight(v244);
    sub_1D9B1EFAC(v91, v92, Width, v94);
    *&v89 = v95;
    v96 = v176;
    v97 = v190;
    sub_1D9C7B92C();
    v99 = v171;
    v98 = v172;
    *v97 = *&v192;
    *(v97 + 8) = v98;
    v100 = v170;
    *(v97 + 16) = v99;
    *(v97 + 24) = v100;
    *(v97 + 32) = 1;
    v101 = MEMORY[0x1E69E7CC0];
    *(v97 + 40) = MEMORY[0x1E69E7CC0];
    *(v97 + 48) = v101;
    *(v97 + 56) = v101;
    *(v97 + 64) = v101;
    *(v97 + 72) = 0;
    *(v97 + 76) = LODWORD(v89);
    *(v97 + 88) = 0;
    *(v97 + 96) = 0;
    *(v97 + 80) = 0;
    *(v97 + 104) = 0;
    *(v97 + 112) = v101;
    *(v97 + *(v96 + 64)) = 1;
    *(v97 + *(v96 + 68)) = v101;
    if (!v50)
    {
LABEL_140:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728, &qword_1D9C99930);
      v138 = swift_allocObject();
      LOBYTE(v228[0]) = v54;
      *(v228 + 1) = v238[0];
      DWORD1(v228[0]) = *(v238 + 3);
      *(v228 + 8) = 0u;
      *(&v228[1] + 8) = 0u;
      BYTE8(v228[2]) = v196;
      *(&v228[2] + 9) = v237[0];
      HIDWORD(v228[2]) = *(v237 + 3);
      v229 = 0u;
      v230 = 0u;
      *&v231 = v203;
      *(&v231 + 1) = v202;
      *&v232 = v201;
      *(&v232 + 1) = v200;
      LODWORD(v233) = 0;
      *(&v233 + 4) = __PAIR64__(LODWORD(v53), LODWORD(v52));
      BYTE12(v233) = v194;
      BYTE13(v233) = v198;
      BYTE14(v233) = v199;
      HIBYTE(v233) = BYTE4(v197);
      LOBYTE(v234[0]) = v197;
      BYTE1(v234[0]) = BYTE4(v196);
      WORD3(v234[0]) = v236;
      *(v234 + 2) = v235;
      *&v234[1] = 0;
      *(&v234[0] + 1) = 0;
      *(&v234[1] + 5) = 0;
      v139 = v228[0];
      v140 = v228[1];
      v138[1] = xmmword_1D9C85660;
      v138[2] = v139;
      v141 = v228[2];
      v142 = v230;
      v143 = v231;
      v138[5] = v229;
      v138[6] = v142;
      v138[3] = v140;
      v138[4] = v141;
      v144 = v232;
      v145 = v233;
      *(v138 + 173) = *(v234 + 13);
      v146 = v234[0];
      v138[9] = v145;
      v138[10] = v146;
      v138[7] = v143;
      v138[8] = v144;
      swift_beginAccess();
      *(v97 + 48) = v138;
      sub_1D99AE054(v228, &v204);

      v147 = *(v97 + 56);
      v204 = v147;
      swift_bridgeObjectRetain_n();
      sub_1D9BCF750(&v204);

      v148 = v204;
      v149 = *(v204 + 16);
      if (v149)
      {
        v189 = v147;
        v204 = MEMORY[0x1E69E7CC0];
        sub_1D99FE258(0, v149, 0);
        v150 = v204;
        v151 = v169;
        v152 = *(v168 + 80);
        v188 = v148;
        v153 = v148 + ((v152 + 32) & ~v152);
        v191 = *(v168 + 72);
        do
        {
          v154 = v185;
          sub_1D9A5521C(v153, v185, _s14DetectedResultVMa);
          v155 = (v154 + *(v151 + 28));
          v156 = *v155;
          v157 = v155[1];
          v158 = v155[3];
          v192 = *(v155 + 2);
          v193 = v156;

          sub_1D9BD8414(v154, _s14DetectedResultVMa);
          v204 = v150;
          v160 = *(v150 + 16);
          v159 = *(v150 + 24);
          if (v160 >= v159 >> 1)
          {
            sub_1D99FE258((v159 > 1), v160 + 1, 1);
            v151 = v169;
            v150 = v204;
          }

          *(v150 + 16) = v160 + 1;
          v161 = (v150 + 32 * v160);
          v162 = v192;
          v161[4] = v193;
          v161[5] = v157;
          v161[6] = v162;
          v161[7] = v158;
          v153 += v191;
          --v149;
        }

        while (v149);

        LOBYTE(v54) = v195;
      }

      else
      {

        v150 = MEMORY[0x1E69E7CC0];
      }

      v163 = v190;
      *(v190 + 5) = v150;
      *(v163 + 56) = MEMORY[0x1E69E7CC0];

      if (*(v178 + 2))
      {

        v165 = sub_1D9BD71AC(v164);

        *(v163 + 112) = v165;
      }

      v166 = v233;
      LOBYTE(v204) = v54;
      *(&v204 + 1) = v238[0];
      HIDWORD(v204) = *(v238 + 3);
      v205 = 0u;
      v206 = 0u;
      v207 = v196;
      *v208 = v237[0];
      *&v208[3] = *(v237 + 3);
      v209 = 0u;
      v210 = 0u;
      v211 = v203;
      v212 = v202;
      v213 = v201;
      v214 = v200;
      v215 = 0;
      v216 = v52;
      v217 = v53;
      v218 = v194;
      v219 = v198;
      v220 = v199;
      v221 = BYTE4(v197);
      v222 = v197;
      v223 = BYTE4(v196);
      v225 = v236;
      v224 = v235;
      *(v227 + 5) = 0;
      v226 = 0;
      v227[0] = 0;
      sub_1D99AE0B0(&v204);
      *(v163 + 72) = v166;
      sub_1D9A5521C(v163, v177, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BD8414(v163, type metadata accessor for VisualUnderstanding.ImageRegion);
      return;
    }

    v102 = v186;
    v103 = v180 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    swift_beginAccess();
    v104 = v103;
    v105 = *(v102 + 72);
    v179 = 0x80000001D9CA3A40;
    v186 = v167 + 16;
    v187 = v105;
    *&v182 = v167 + 8;
    *&v106 = 136315394;
    v181 = v106;
    while (1)
    {
      v192 = v104;
      sub_1D9A5521C(v104, v41, type metadata accessor for VisualUnderstanding.ImageRegion);
      v107 = v183;
      sub_1D9B66D50(v41, v97, v183);
      sub_1D99B1DB0(v107, v97);
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v108 = v188;
      v109 = v193;
      if (byte_1EDD354C0 != 1)
      {
LABEL_136:
        v120 = qword_1EDD354D8;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v120 = qword_1EDD354D8;
        }

        goto LABEL_138;
      }

      v110 = [objc_opt_self() mainBundle];
      v111 = [v110 bundleIdentifier];

      if (!v111)
      {
        break;
      }

      v112 = sub_1D9C7DC7C();
      v114 = v113;

      if (v112 == 0xD00000000000002BLL && v179 == v114)
      {
      }

      else
      {
        v116 = sub_1D9C7E7DC();

        if ((v116 & 1) == 0)
        {
          break;
        }
      }

      v117 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v117 = &off_1ECB51BA8;
      }

LABEL_133:
      v118 = *(*v117 + 32);

      v119 = sub_1D9C7DC4C();
      LODWORD(v118) = [v118 BOOLForKey_];

      if (!v118)
      {
        goto LABEL_136;
      }

      v120 = qword_1EDD2C990;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v120 = qword_1EDD2C990;
      }

LABEL_138:
      v121 = __swift_project_value_buffer(v108, v120);
      (*v186)(v109, v121, v108);
      v122 = v184;
      sub_1D9A5521C(v41, v184, type metadata accessor for VisualUnderstanding.ImageRegion);
      v123 = sub_1D9C7D8BC();
      v124 = sub_1D9C7E09C();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v191 = v50;
        v127 = v126;
        v204 = v126;
        *v125 = v181;
        v128 = v122[1];
        v228[0] = *v122;
        v228[1] = v128;
        v129 = NormalizedRect.loggingDescription.getter();
        v131 = v130;
        sub_1D9BD8414(v122, type metadata accessor for VisualUnderstanding.ImageRegion);
        v132 = sub_1D9A0E224(v129, v131, &v204);

        *(v125 + 4) = v132;
        *(v125 + 12) = 2080;
        v133 = *(v190 + 1);
        v228[0] = *v190;
        v228[1] = v133;
        v41 = v189;
        v134 = NormalizedRect.loggingDescription.getter();
        v136 = sub_1D9A0E224(v134, v135, &v204);

        *(v125 + 14) = v136;
        v97 = v190;
        _os_log_impl(&dword_1D9962000, v123, v124, "Merge region %s to grouped region %s", v125, 0x16u);
        swift_arrayDestroy();
        v137 = v127;
        v50 = v191;
        MEMORY[0x1DA7405F0](v137, -1, -1);
        MEMORY[0x1DA7405F0](v125, -1, -1);

        (**&v182)(v193, v188);
      }

      else
      {

        sub_1D9BD8414(v122, type metadata accessor for VisualUnderstanding.ImageRegion);
        (**&v182)(v193, v108);
      }

      sub_1D9BD8414(v41, type metadata accessor for VisualUnderstanding.ImageRegion);
      LOBYTE(v54) = v195;
      v104 = v192 + *&v187;
      if (!--v50)
      {
        goto LABEL_140;
      }
    }

    v117 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v117 = &qword_1EDD355A8;
    }

    goto LABEL_133;
  }

  v39 = (a2 + 32);
  v40 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v202 = a1 + v40;
  v203 = *(a1 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v43 = *v39++;
    v42 = v43;
    if (v43 >= v203)
    {
      break;
    }

    v44 = v28;
    v45 = *(v28 + 72);
    sub_1D9A5521C(v202 + v45 * v42, v26, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D9AF8A90(0, v41[2] + 1, 1, v41);
    }

    v47 = v41[2];
    v46 = v41[3];
    if (v47 >= v46 >> 1)
    {
      v41 = sub_1D9AF8A90((v46 > 1), v47 + 1, 1, v41);
    }

    v41[2] = v47 + 1;
    sub_1D9BD8474(v26, v41 + v40 + v47 * v45, type metadata accessor for VisualUnderstanding.ImageRegion);
    --v38;
    v28 = v44;
    if (!v38)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);

  __break(1u);
}

uint64_t sub_1D9BD2CE0(uint64_t result)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *result;
  v6 = (v2 + 32);
  while (2)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v6[1];
    v25[0] = *v6;
    v25[1] = v7;
    v8 = v6[2];
    v9 = v6[3];
    v10 = v6[5];
    v25[4] = v6[4];
    v25[5] = v10;
    v25[2] = v8;
    v25[3] = v9;
    v11 = v6[6];
    v12 = v6[7];
    v13 = v6[8];
    *(v27 + 13) = *(v6 + 141);
    v26 = v12;
    v27[0] = v13;
    v25[6] = v11;
    ++v4;
    v14 = 0xE300000000000000;
    v15 = 7631457;
    switch(LOBYTE(v25[0]))
    {
      case 1:
        v14 = 0xE600000000000000;
        v15 = 0x65727574616ELL;
        break;
      case 2:
        v14 = 0xE800000000000000;
        v15 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v15 = 0x4C6C61727574616ELL;
        v14 = 0xEF6B72616D646E61;
        break;
      case 4:
        v14 = 0xE500000000000000;
        v15 = 0x616964656DLL;
        break;
      case 5:
        v14 = 0xE400000000000000;
        v15 = 1802465122;
        break;
      case 6:
        v14 = 0xE500000000000000;
        v15 = 0x6D75626C61;
        break;
      case 7:
        v14 = 0xE400000000000000;
        v15 = 1937006947;
        break;
      case 8:
        v14 = 0xE400000000000000;
        v15 = 1936158564;
        break;
      case 9:
        v14 = 0xE700000000000000;
        v16 = 1835626081;
        goto LABEL_26;
      case 0xA:
        v14 = 0xE500000000000000;
        v15 = 0x7364726962;
        break;
      case 0xB:
        v14 = 0xE700000000000000;
        v15 = 0x73746365736E69;
        break;
      case 0xC:
        v14 = 0xE800000000000000;
        v15 = 0x73656C6974706572;
        break;
      case 0xD:
        v14 = 0xE700000000000000;
        v16 = 1835884909;
LABEL_26:
        v15 = v16 | 0x736C6100000000;
        break;
      case 0xE:
        v15 = 0xD000000000000010;
        v14 = 0x80000001D9CA2910;
        break;
      case 0xF:
        v14 = 0xE700000000000000;
        v15 = 0x6C657261707061;
        break;
      case 0x10:
        v15 = 0x726F737365636361;
        v14 = 0xEB00000000736569;
        break;
      case 0x11:
        v14 = 0xE400000000000000;
        v15 = 1685024614;
        break;
      case 0x12:
        v14 = 0xEA0000000000746ELL;
        v15 = 0x6F726665726F7473;
        break;
      case 0x13:
        v17 = 1852270963;
        goto LABEL_33;
      case 0x14:
        v15 = 0xD000000000000011;
        v14 = 0x80000001D9CA2950;
        break;
      case 0x15:
        v17 = 1869903201;
LABEL_33:
        v15 = v17 | 0x626D795300000000;
        v14 = 0xEA00000000006C6FLL;
        break;
      case 0x16:
        v15 = 0x676F4C646E617262;
        v14 = 0xEF6C6F626D79536FLL;
        break;
      case 0x17:
        v14 = 0xE700000000000000;
        v15 = 0x65646F63726162;
        break;
      case 0x18:
        v15 = 0x727574706C756373;
        v14 = 0xE900000000000065;
        break;
      case 0x19:
        v14 = 0xE700000000000000;
        v15 = 0x656E696C796B73;
        break;
      case 0x1A:
        v14 = 0xE800000000000000;
        v15 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    v18 = 0xE300000000000000;
    v19 = 7631457;
    switch(v5)
    {
      case 1:
        v18 = 0xE600000000000000;
        if (v15 == 0x65727574616ELL)
        {
          goto LABEL_87;
        }

        goto LABEL_88;
      case 2:
        v18 = 0xE800000000000000;
        if (v15 != 0x6B72616D646E616CLL)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 3:
        v18 = 0xEF6B72616D646E61;
        if (v15 != 0x4C6C61727574616ELL)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 4:
        v18 = 0xE500000000000000;
        if (v15 != 0x616964656DLL)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 5:
        v18 = 0xE400000000000000;
        if (v15 != 1802465122)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 6:
        v18 = 0xE500000000000000;
        if (v15 != 0x6D75626C61)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 7:
        v18 = 0xE400000000000000;
        if (v15 != 1937006947)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 8:
        v18 = 0xE400000000000000;
        if (v15 != 1936158564)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 9:
        v18 = 0xE700000000000000;
        v21 = 1835626081;
        goto LABEL_69;
      case 10:
        v18 = 0xE500000000000000;
        if (v15 != 0x7364726962)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 11:
        v18 = 0xE700000000000000;
        v20 = 0x746365736E69;
        goto LABEL_70;
      case 12:
        v18 = 0xE800000000000000;
        if (v15 != 0x73656C6974706572)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 13:
        v18 = 0xE700000000000000;
        v21 = 1835884909;
LABEL_69:
        v20 = v21 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_70:
        if (v15 != (v20 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 14:
        v18 = 0x80000001D9CA2910;
        if (v15 != 0xD000000000000010)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 15:
        v18 = 0xE700000000000000;
        if (v15 != 0x6C657261707061)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 16:
        v18 = 0xEB00000000736569;
        if (v15 != 0x726F737365636361)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 17:
        v18 = 0xE400000000000000;
        if (v15 != 1685024614)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 18:
        v18 = 0xEA0000000000746ELL;
        if (v15 != 0x6F726665726F7473)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 19:
        v22 = 1852270963;
        goto LABEL_83;
      case 20:
        v18 = 0x80000001D9CA2950;
        if (v15 != 0xD000000000000011)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 21:
        v22 = 1869903201;
LABEL_83:
        v18 = 0xEA00000000006C6FLL;
        if (v15 != (v22 | 0x626D795300000000))
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 22:
        v18 = 0xEF6C6F626D79536FLL;
        if (v15 != 0x676F4C646E617262)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 23:
        v18 = 0xE700000000000000;
        v19 = 0x65646F63726162;
        goto LABEL_86;
      case 24:
        v18 = 0xE900000000000065;
        if (v15 != 0x727574706C756373)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 25:
        v18 = 0xE700000000000000;
        if (v15 != 0x656E696C796B73)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      case 26:
        v18 = 0xE800000000000000;
        if (v15 != 0x44327463656A626FLL)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      default:
LABEL_86:
        if (v15 != v19)
        {
          goto LABEL_88;
        }

LABEL_87:
        if (v14 == v18)
        {
          sub_1D99AE054(v25, v24);

          result = sub_1D99AE0B0(v25);
        }

        else
        {
LABEL_88:
          v23 = sub_1D9C7E7DC();
          sub_1D99AE054(v25, v24);

          result = sub_1D99AE0B0(v25);
          if ((v23 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if ((BYTE12(v26) & 1) == 0)
        {
LABEL_5:
          v6 += 10;
          if (v3 == v4)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

unint64_t sub_1D9BD33E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D99ED894(a1, a2);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D9C13E54();
      v9 = v12;
    }

    v10 = *(*(v9 + 56) + 4 * v7);
    sub_1D9C0F764(v7, v9);
    *v3 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | (((v6 & 1) == 0) << 32);
}

void sub_1D9BD3494(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
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
        type metadata accessor for VisualUnderstanding.ImageRegion(0);
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9BD4D0C(v8, v9, a1, v4);
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
    sub_1D9BD3AD8(0, v2, 1, a1);
  }
}

void sub_1D9BD35C0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1D9C7E79C();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1D9C7DF5C();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
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

void sub_1D9BD3710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v37 - v15);
  v39 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v42 = v19;
    v43 = a3;
    v40 = v22;
    v41 = v21;
    while (1)
    {
      sub_1D9A5521C(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A5521C(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = *v16;
      v24 = v16[1];
      v25 = v16[2];
      v26 = v16[3];
      v45.origin.x = *v16;
      v45.origin.y = v24;
      v45.size.width = v25;
      v45.size.height = v26;
      MinX = CGRectGetMinX(v45);
      v46.origin.x = v23;
      v46.origin.y = v24;
      v46.size.width = v25;
      v46.size.height = v26;
      CGRectGetMaxY(v46);
      v47.origin.x = v23;
      v47.origin.y = v24;
      v47.size.width = v25;
      v47.size.height = v26;
      CGRectGetWidth(v47);
      v48.origin.x = v23;
      v48.origin.y = v24;
      v48.size.width = v25;
      v48.size.height = v26;
      CGRectGetHeight(v48);
      v49.origin.x = v23;
      v49.origin.y = v24;
      v49.size.width = v25;
      v49.size.height = v26;
      CGRectGetMinX(v49);
      v50.origin.x = v23;
      v50.origin.y = v24;
      v50.size.width = v25;
      v50.size.height = v26;
      v28 = 1.0 - CGRectGetMaxY(v50);
      v51.origin.x = v23;
      v51.origin.y = v24;
      v51.size.width = v25;
      v51.size.height = v26;
      CGRectGetWidth(v51);
      v52.origin.x = v23;
      v52.origin.y = v24;
      v52.size.width = v25;
      v52.size.height = v26;
      CGRectGetHeight(v52);
      v29 = MinX + v28;
      v30 = *v12;
      v31 = v12[1];
      v32 = v12[2];
      v33 = v12[3];
      v53.origin.x = *v12;
      v53.origin.y = v31;
      v53.size.width = v32;
      v53.size.height = v33;
      v34 = CGRectGetMinX(v53);
      v54.origin.x = v30;
      v54.origin.y = v31;
      v54.size.width = v32;
      v54.size.height = v33;
      CGRectGetMaxY(v54);
      v55.origin.x = v30;
      v55.origin.y = v31;
      v55.size.width = v32;
      v55.size.height = v33;
      CGRectGetWidth(v55);
      v56.origin.x = v30;
      v56.origin.y = v31;
      v56.size.width = v32;
      v56.size.height = v33;
      CGRectGetHeight(v56);
      v57.origin.x = v30;
      v57.origin.y = v31;
      v57.size.width = v32;
      v57.size.height = v33;
      CGRectGetMinX(v57);
      v58.origin.x = v30;
      v58.origin.y = v31;
      v58.size.width = v32;
      v58.size.height = v33;
      v35 = 1.0 - CGRectGetMaxY(v58);
      v59.origin.x = v30;
      v59.origin.y = v31;
      v59.size.width = v32;
      v59.size.height = v33;
      CGRectGetWidth(v59);
      v60.origin.x = v30;
      v60.origin.y = v31;
      v60.size.width = v32;
      v60.size.height = v33;
      CGRectGetHeight(v60);
      sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BD8414(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v29 >= v34 + v35)
      {
LABEL_4:
        a3 = v43 + 1;
        v19 = v42 + v38;
        v21 = v41 - 1;
        v22 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9BD8474(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9BD8474(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9BD3AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9A5521C(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A5521C(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[18];
      v24 = v12[18];
      sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BD8414(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9BD8474(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9BD8474(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9BD3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s14DetectedResultVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1D9A5521C(v23, v17, _s14DetectedResultVMa);
      sub_1D9A5521C(v20, v13, _s14DetectedResultVMa);
      v24 = *(v8 + 32);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_1D9BD8414(v13, _s14DetectedResultVMa);
      sub_1D9BD8414(v17, _s14DetectedResultVMa);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1D9BD8474(v23, v10, _s14DetectedResultVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9BD8474(v10, v20, _s14DetectedResultVMa);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9BD3F7C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v141 = a1;
  v153 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v148 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v144 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v137 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v137 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v137 - v14);
  v150 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v4 = *v141;
    if (!*v141)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v18 = sub_1D99E8FDC(v18);
    }

    v154 = v18;
    v132 = *(v18 + 2);
    if (v132 >= 2)
    {
      while (*v150)
      {
        v133 = *&v18[16 * v132];
        v134 = *&v18[16 * v132 + 24];
        v135 = v151;
        sub_1D9BD5F9C(*v150 + *(v148 + 72) * v133, *v150 + *(v148 + 72) * *&v18[16 * v132 + 16], *v150 + *(v148 + 72) * v134, v4);
        v151 = v135;
        if (v135)
        {
          goto LABEL_104;
        }

        if (v134 < v133)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D99E8FDC(v18);
        }

        if (v132 - 2 >= *(v18 + 2))
        {
          goto LABEL_120;
        }

        v136 = &v18[16 * v132];
        *v136 = v133;
        *(v136 + 1) = v134;
        v154 = v18;
        sub_1D99E8F50(v132 - 1);
        v18 = v154;
        v132 = *(v154 + 2);
        if (v132 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v139 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v21 = *v150;
      v22 = *(v148 + 72);
      v23 = *v150 + v22 * v20;
      sub_1D9A5521C(v23, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A5521C(v21 + v22 * v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v24 = *v15;
      v25 = v15[1];
      v26 = v15[2];
      v27 = v15[3];
      v155.origin.x = *v15;
      v155.origin.y = v25;
      v155.size.width = v26;
      v155.size.height = v27;
      MinX = CGRectGetMinX(v155);
      v156.origin.x = v24;
      v156.origin.y = v25;
      v156.size.width = v26;
      v156.size.height = v27;
      CGRectGetMaxY(v156);
      v157.origin.x = v24;
      v157.origin.y = v25;
      v157.size.width = v26;
      v157.size.height = v27;
      CGRectGetWidth(v157);
      v158.origin.x = v24;
      v158.origin.y = v25;
      v158.size.width = v26;
      v158.size.height = v27;
      CGRectGetHeight(v158);
      v159.origin.x = v24;
      v159.origin.y = v25;
      v159.size.width = v26;
      v159.size.height = v27;
      CGRectGetMinX(v159);
      v160.origin.x = v24;
      v160.origin.y = v25;
      v160.size.width = v26;
      v160.size.height = v27;
      v29 = 1.0 - CGRectGetMaxY(v160);
      v161.origin.x = v24;
      v161.origin.y = v25;
      v161.size.width = v26;
      v161.size.height = v27;
      CGRectGetWidth(v161);
      v162.origin.x = v24;
      v162.origin.y = v25;
      v162.size.width = v26;
      v162.size.height = v27;
      CGRectGetHeight(v162);
      v147 = MinX + v29;
      v30 = *v12;
      v31 = v12[1];
      v32 = v12[2];
      v33 = v12[3];
      v163.origin.x = *v12;
      v163.origin.y = v31;
      v163.size.width = v32;
      v163.size.height = v33;
      v34 = CGRectGetMinX(v163);
      v164.origin.x = v30;
      v164.origin.y = v31;
      v164.size.width = v32;
      v164.size.height = v33;
      CGRectGetMaxY(v164);
      v165.origin.x = v30;
      v165.origin.y = v31;
      v165.size.width = v32;
      v165.size.height = v33;
      CGRectGetWidth(v165);
      v166.origin.x = v30;
      v166.origin.y = v31;
      v166.size.width = v32;
      v166.size.height = v33;
      CGRectGetHeight(v166);
      v167.origin.x = v30;
      v167.origin.y = v31;
      v167.size.width = v32;
      v167.size.height = v33;
      CGRectGetMinX(v167);
      v168.origin.x = v30;
      v168.origin.y = v31;
      v168.size.width = v32;
      v168.size.height = v33;
      v35 = 1.0 - CGRectGetMaxY(v168);
      v169.origin.x = v30;
      v169.origin.y = v31;
      v169.size.width = v32;
      v169.size.height = v33;
      CGRectGetWidth(v169);
      v170.origin.x = v30;
      v170.origin.y = v31;
      v170.size.width = v32;
      v170.size.height = v33;
      CGRectGetHeight(v170);
      v146 = v34 + v35;
      sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BD8414(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      v140 = v19;
      v36 = v19 + 2;
      v149 = v22;
      v4 = v21 + v22 * v36;
      while (v16 != v36)
      {
        v37 = v16;
        v38 = v18;
        v39 = v147 < v146;
        sub_1D9A5521C(v4, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9A5521C(v23, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        v40 = *v15;
        v41 = v15[1];
        v42 = v15[2];
        v43 = v15[3];
        v171.origin.x = *v15;
        v171.origin.y = v41;
        v171.size.width = v42;
        v171.size.height = v43;
        v44 = CGRectGetMinX(v171);
        v172.origin.x = v40;
        v172.origin.y = v41;
        v172.size.width = v42;
        v172.size.height = v43;
        CGRectGetMaxY(v172);
        v173.origin.x = v40;
        v173.origin.y = v41;
        v173.size.width = v42;
        v173.size.height = v43;
        CGRectGetWidth(v173);
        v174.origin.x = v40;
        v174.origin.y = v41;
        v174.size.width = v42;
        v174.size.height = v43;
        CGRectGetHeight(v174);
        v175.origin.x = v40;
        v175.origin.y = v41;
        v175.size.width = v42;
        v175.size.height = v43;
        CGRectGetMinX(v175);
        v176.origin.x = v40;
        v176.origin.y = v41;
        v176.size.width = v42;
        v176.size.height = v43;
        v45 = 1.0 - CGRectGetMaxY(v176);
        v177.origin.x = v40;
        v177.origin.y = v41;
        v177.size.width = v42;
        v177.size.height = v43;
        CGRectGetWidth(v177);
        v178.origin.x = v40;
        v178.origin.y = v41;
        v178.size.width = v42;
        v178.size.height = v43;
        CGRectGetHeight(v178);
        v46 = v44 + v45;
        v47 = *v12;
        v48 = v12[1];
        v49 = v12[2];
        v50 = v12[3];
        v179.origin.x = *v12;
        v179.origin.y = v48;
        v179.size.width = v49;
        v179.size.height = v50;
        v51 = CGRectGetMinX(v179);
        v180.origin.x = v47;
        v180.origin.y = v48;
        v180.size.width = v49;
        v180.size.height = v50;
        CGRectGetMaxY(v180);
        v181.origin.x = v47;
        v181.origin.y = v48;
        v181.size.width = v49;
        v181.size.height = v50;
        CGRectGetWidth(v181);
        v182.origin.x = v47;
        v182.origin.y = v48;
        v182.size.width = v49;
        v182.size.height = v50;
        CGRectGetHeight(v182);
        v183.origin.x = v47;
        v183.origin.y = v48;
        v183.size.width = v49;
        v183.size.height = v50;
        CGRectGetMinX(v183);
        v184.origin.x = v47;
        v184.origin.y = v48;
        v184.size.width = v49;
        v184.size.height = v50;
        v52 = 1.0 - CGRectGetMaxY(v184);
        v185.origin.x = v47;
        v185.origin.y = v48;
        v185.size.width = v49;
        v185.size.height = v50;
        CGRectGetWidth(v185);
        v186.origin.x = v47;
        v186.origin.y = v48;
        v186.size.width = v49;
        v186.size.height = v50;
        CGRectGetHeight(v186);
        sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9BD8414(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
        v53 = v39 ^ (v46 >= v51 + v52);
        v18 = v38;
        v16 = v37;
        ++v36;
        v4 += v149;
        v23 += v149;
        if ((v53 & 1) == 0)
        {
          v16 = v36 - 1;
          break;
        }
      }

      v19 = v140;
      if (v147 < v146)
      {
        if (v16 < v140)
        {
          goto LABEL_123;
        }

        if (v140 < v16)
        {
          v138 = v18;
          v54 = v149 * (v16 - 1);
          v55 = v16 * v149;
          v147 = *&v16;
          v56 = v16;
          v57 = v140;
          v58 = v140 * v149;
          v59 = v151;
          do
          {
            if (v57 != --v56)
            {
              v151 = v59;
              v60 = *v150;
              if (!*v150)
              {
                goto LABEL_129;
              }

              v4 = v60 + v58;
              sub_1D9BD8474(v60 + v58, v144, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v58 < v54 || v4 >= v60 + v55)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9BD8474(v144, v60 + v54, type metadata accessor for VisualUnderstanding.ImageRegion);
              v59 = v151;
            }

            ++v57;
            v54 -= v149;
            v55 -= v149;
            v58 += v149;
          }

          while (v57 < v56);
          v151 = v59;
          v18 = v138;
          v19 = v140;
          *&v16 = v147;
        }
      }
    }

    v61 = v150[1];
    if (v16 < v61)
    {
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_122;
      }

      if (v16 - v19 < v139)
      {
        if (__OFADD__(v19, v139))
        {
          goto LABEL_124;
        }

        if (v19 + v139 >= v61)
        {
          v62 = v150[1];
        }

        else
        {
          v62 = v19 + v139;
        }

        if (v62 < v19)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v16 != v62)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v19)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D99E8FF0(0, *(v18 + 2) + 1, 1, v18);
    }

    v64 = *(v18 + 2);
    v63 = *(v18 + 3);
    v4 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v18 = sub_1D99E8FF0((v63 > 1), v64 + 1, 1, v18);
    }

    *(v18 + 2) = v4;
    v65 = &v18[16 * v64];
    *(v65 + 4) = v19;
    *(v65 + 5) = v17;
    v66 = *v141;
    if (!*v141)
    {
      goto LABEL_131;
    }

    if (v64)
    {
      while (1)
      {
        v67 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v68 = *(v18 + 4);
          v69 = *(v18 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_52:
          if (v71)
          {
            goto LABEL_110;
          }

          v84 = &v18[16 * v4];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_113;
          }

          v90 = &v18[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_117;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v94 = &v18[16 * v4];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_66:
        if (v89)
        {
          goto LABEL_112;
        }

        v97 = &v18[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_115;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_73:
        v105 = v67 - 1;
        if (v67 - 1 >= v4)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v150)
        {
          goto LABEL_128;
        }

        v106 = *&v18[16 * v105 + 32];
        v4 = *&v18[16 * v67 + 40];
        v107 = v151;
        sub_1D9BD5F9C(*v150 + *(v148 + 72) * v106, *v150 + *(v148 + 72) * *&v18[16 * v67 + 32], *v150 + *(v148 + 72) * v4, v66);
        v151 = v107;
        if (v107)
        {
          goto LABEL_104;
        }

        if (v4 < v106)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D99E8FDC(v18);
        }

        if (v105 >= *(v18 + 2))
        {
          goto LABEL_107;
        }

        v108 = &v18[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v4;
        v154 = v18;
        sub_1D99E8F50(v67);
        v18 = v154;
        v4 = *(v154 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v18[16 * v4 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_108;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_109;
      }

      v79 = &v18[16 * v4];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_111;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_114;
      }

      if (v83 >= v75)
      {
        v101 = &v18[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_118;
        }

        if (v70 < v104)
        {
          v67 = v4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v150[1];
    if (v17 >= v16)
    {
      goto LABEL_94;
    }
  }

  v138 = v18;
  v109 = *&v16;
  v110 = *v150;
  v111 = *(v148 + 72);
  v112 = *v150 + v111 * (*&v109 - 1);
  v113 = v19;
  v114 = -v111;
  v140 = v113;
  *&v115 = v113 - *&v109;
  v147 = v109;
  v142 = v111;
  v143 = v62;
  v116 = v110 + *&v109 * v111;
LABEL_85:
  v145 = v116;
  v146 = v115;
  v149 = v112;
  while (1)
  {
    sub_1D9A5521C(v116, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9A5521C(v112, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    v117 = *v15;
    v118 = v15[1];
    v119 = v15[2];
    v120 = v15[3];
    v187.origin.x = *v15;
    v187.origin.y = v118;
    v187.size.width = v119;
    v187.size.height = v120;
    v121 = CGRectGetMinX(v187);
    v188.origin.x = v117;
    v188.origin.y = v118;
    v188.size.width = v119;
    v188.size.height = v120;
    CGRectGetMaxY(v188);
    v189.origin.x = v117;
    v189.origin.y = v118;
    v189.size.width = v119;
    v189.size.height = v120;
    CGRectGetWidth(v189);
    v190.origin.x = v117;
    v190.origin.y = v118;
    v190.size.width = v119;
    v190.size.height = v120;
    CGRectGetHeight(v190);
    v191.origin.x = v117;
    v191.origin.y = v118;
    v191.size.width = v119;
    v191.size.height = v120;
    CGRectGetMinX(v191);
    v192.origin.x = v117;
    v192.origin.y = v118;
    v192.size.width = v119;
    v192.size.height = v120;
    v122 = 1.0 - CGRectGetMaxY(v192);
    v193.origin.x = v117;
    v193.origin.y = v118;
    v193.size.width = v119;
    v193.size.height = v120;
    CGRectGetWidth(v193);
    v194.origin.x = v117;
    v194.origin.y = v118;
    v194.size.width = v119;
    v194.size.height = v120;
    CGRectGetHeight(v194);
    v123 = v121 + v122;
    v124 = *v12;
    v125 = v12[1];
    v126 = v12[2];
    v127 = v12[3];
    v195.origin.x = *v12;
    v195.origin.y = v125;
    v195.size.width = v126;
    v195.size.height = v127;
    v128 = CGRectGetMinX(v195);
    v196.origin.x = v124;
    v196.origin.y = v125;
    v196.size.width = v126;
    v196.size.height = v127;
    CGRectGetMaxY(v196);
    v197.origin.x = v124;
    v197.origin.y = v125;
    v197.size.width = v126;
    v197.size.height = v127;
    CGRectGetWidth(v197);
    v198.origin.x = v124;
    v198.origin.y = v125;
    v198.size.width = v126;
    v198.size.height = v127;
    CGRectGetHeight(v198);
    v199.origin.x = v124;
    v199.origin.y = v125;
    v199.size.width = v126;
    v199.size.height = v127;
    CGRectGetMinX(v199);
    v200.origin.x = v124;
    v200.origin.y = v125;
    v200.size.width = v126;
    v200.size.height = v127;
    v129 = 1.0 - CGRectGetMaxY(v200);
    v201.origin.x = v124;
    v201.origin.y = v125;
    v201.size.width = v126;
    v201.size.height = v127;
    CGRectGetWidth(v201);
    v202.origin.x = v124;
    v202.origin.y = v125;
    v202.size.width = v126;
    v202.size.height = v127;
    CGRectGetHeight(v202);
    v4 = type metadata accessor for VisualUnderstanding.ImageRegion;
    sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9BD8414(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v123 >= v128 + v129)
    {
LABEL_84:
      v17 = v143;
      v112 = v149 + v142;
      *&v115 = *&v146 - 1;
      v116 = v145 + v142;
      if (++*&v147 != v143)
      {
        goto LABEL_85;
      }

      v18 = v138;
      v19 = v140;
      if (v143 < v140)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v110)
    {
      break;
    }

    v4 = type metadata accessor for VisualUnderstanding.ImageRegion;
    v130 = v152;
    sub_1D9BD8474(v116, v152, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9BD8474(v130, v112, type metadata accessor for VisualUnderstanding.ImageRegion);
    v112 += v114;
    v116 += v114;
    if (__CFADD__((*&v115)++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9BD4D0C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9BD6748(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9A5521C(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A5521C(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[18];
      v27 = v14[18];
      sub_1D9BD8414(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BD8414(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9A5521C(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9A5521C(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[18];
        v31 = v14[18];
        sub_1D9BD8414(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9BD8414(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D9BD8474(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9BD8474(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9BD6748(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9A5521C(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9A5521C(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[18];
    v93 = v14[18];
    sub_1D9BD8414(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9BD8414(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D9BD8474(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9BD8474(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9BD5638(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = _s14DetectedResultVMa(0);
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D99E8FDC(a4);
    }

    v124 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1D9BD6C40(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v102[16 * a4 + 16], *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D99E8FDC(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D99E8F50(a4 - 1);
        v102 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v114 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v118 + 72);
      v5 = *v120 + v23 * v22;
      v117 = *v120;
      v24 = v117;
      sub_1D9A5521C(v117 + v23 * v22, v17, _s14DetectedResultVMa);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v122;
      sub_1D9A5521C(v25, v122, _s14DetectedResultVMa);
      v28 = *(v9 + 32);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      sub_1D9BD8414(v27, _s14DetectedResultVMa);
      sub_1D9BD8414(v17, _s14DetectedResultVMa);
      v108 = v26;
      v31 = v26 + 2;
      v119 = v23;
      v32 = v117 + v23 * (v26 + 2);
      while (v18 != v31)
      {
        sub_1D9A5521C(v32, v17, _s14DetectedResultVMa);
        v33 = v122;
        sub_1D9A5521C(v5, v122, _s14DetectedResultVMa);
        v34 = *(v123 + 32);
        v35 = *&v17[v34];
        v36 = *(v33 + v34);
        sub_1D9BD8414(v33, _s14DetectedResultVMa);
        sub_1D9BD8414(v17, _s14DetectedResultVMa);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v30 < v29 == v36 >= v35)
        {
          v18 = v31 - 1;
          break;
        }
      }

      v21 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v29)
      {
        if (v18 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v18)
        {
          v107 = v6;
          v37 = v119 * (v18 - 1);
          v38 = v18 * v119;
          v39 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v119;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v43 + v42;
              sub_1D9BD8474(v43 + v42, v113, _s14DetectedResultVMa);
              if (v42 < v37 || v5 >= v43 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9BD8474(v113, v43 + v37, _s14DetectedResultVMa);
            }

            ++v41;
            v37 -= v119;
            v38 -= v119;
            v42 += v119;
          }

          while (v41 < v40);
          v6 = v107;
          v21 = v108;
          a4 = v109;
          v9 = v123;
          v18 = v39;
        }
      }
    }

    v44 = v120[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v44)
        {
          v45 = v120[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v114;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
    }

    a4 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v47 = &v20[16 * a4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v20[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v20[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v87 = v20;
        v88 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v49 + 40];
        sub_1D9BD6C40(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v20[16 * v49 + 32], *v120 + *(v118 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_1D99E8FDC(v87);
        }

        v9 = v123;
        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v89[16 * a4];
        *(v90 + 4) = v88;
        *(v90 + 5) = v5;
        v124 = v89;
        sub_1D99E8F50(v49);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v20[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v120[1];
    a4 = v109;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v21;
  a4 = *v120;
  v91 = *(v118 + 72);
  v92 = *v120 + v91 * (v18 - 1);
  v93 = -v91;
  v94 = v21 - v18;
  v111 = v91;
  v112 = v45;
  v5 = a4 + v18 * v91;
LABEL_86:
  v119 = v18;
  v115 = v5;
  v116 = v94;
  v117 = v92;
  v95 = v123;
  while (1)
  {
    sub_1D9A5521C(v5, v17, _s14DetectedResultVMa);
    v96 = v122;
    sub_1D9A5521C(v92, v122, _s14DetectedResultVMa);
    v97 = *(v95 + 32);
    v98 = *&v17[v97];
    v99 = *(v96 + v97);
    sub_1D9BD8414(v96, _s14DetectedResultVMa);
    sub_1D9BD8414(v17, _s14DetectedResultVMa);
    if (v99 >= v98)
    {
LABEL_85:
      v18 = v119 + 1;
      v19 = v112;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v21 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v100 = v121;
    sub_1D9BD8474(v5, v121, _s14DetectedResultVMa);
    v95 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9BD8474(v100, v92, _s14DetectedResultVMa);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_1D9BD5F9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = a3;
  v61 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v61);
  v9 = (v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v56 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v62 - a2;
  if (v62 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56[1] = v4;
    v34 = a4 + v18;
    if (v18 < 1)
    {
      v37 = a4 + v18;
    }

    else
    {
      v35 = -v14;
      v36 = a4 + v18;
      v37 = v34;
      v58 = v35;
      v59 = a4;
      while (2)
      {
        while (1)
        {
          v56[0] = v37;
          v38 = a2 + v35;
          v60 = a2;
          while (1)
          {
            v40 = v62;
            if (a2 <= a1)
            {
              v65 = a2;
              v63 = v56[0];
              goto LABEL_60;
            }

            v57 = v37;
            v62 += v35;
            v41 = v36 + v35;
            sub_1D9A5521C(v41, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
            a2 = v38;
            sub_1D9A5521C(v38, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
            v42 = *v12;
            v43 = v12[1];
            v44 = v12[2];
            v45 = v12[3];
            v82.origin.x = *v12;
            v82.origin.y = v43;
            v82.size.width = v44;
            v82.size.height = v45;
            MinX = CGRectGetMinX(v82);
            v83.origin.x = v42;
            v83.origin.y = v43;
            v83.size.width = v44;
            v83.size.height = v45;
            CGRectGetMaxY(v83);
            v84.origin.x = v42;
            v84.origin.y = v43;
            v84.size.width = v44;
            v84.size.height = v45;
            CGRectGetWidth(v84);
            v85.origin.x = v42;
            v85.origin.y = v43;
            v85.size.width = v44;
            v85.size.height = v45;
            CGRectGetHeight(v85);
            v86.origin.x = v42;
            v86.origin.y = v43;
            v86.size.width = v44;
            v86.size.height = v45;
            CGRectGetMinX(v86);
            v87.origin.x = v42;
            v87.origin.y = v43;
            v87.size.width = v44;
            v87.size.height = v45;
            v47 = 1.0 - CGRectGetMaxY(v87);
            v88.origin.x = v42;
            v88.origin.y = v43;
            v88.size.width = v44;
            v88.size.height = v45;
            CGRectGetWidth(v88);
            v89.origin.x = v42;
            v89.origin.y = v43;
            v89.size.width = v44;
            v89.size.height = v45;
            CGRectGetHeight(v89);
            v48 = MinX + v47;
            v49 = *v9;
            v50 = v9[1];
            v51 = v9[2];
            v52 = v9[3];
            v90.origin.x = *v9;
            v90.origin.y = v50;
            v90.size.width = v51;
            v90.size.height = v52;
            v53 = CGRectGetMinX(v90);
            v91.origin.x = v49;
            v91.origin.y = v50;
            v91.size.width = v51;
            v91.size.height = v52;
            CGRectGetMaxY(v91);
            v92.origin.x = v49;
            v92.origin.y = v50;
            v92.size.width = v51;
            v92.size.height = v52;
            CGRectGetWidth(v92);
            v93.origin.x = v49;
            v93.origin.y = v50;
            v93.size.width = v51;
            v93.size.height = v52;
            CGRectGetHeight(v93);
            v94.origin.x = v49;
            v94.origin.y = v50;
            v94.size.width = v51;
            v94.size.height = v52;
            CGRectGetMinX(v94);
            v95.origin.x = v49;
            v95.origin.y = v50;
            v95.size.width = v51;
            v95.size.height = v52;
            v54 = 1.0 - CGRectGetMaxY(v95);
            v96.origin.x = v49;
            v96.origin.y = v50;
            v96.size.width = v51;
            v96.size.height = v52;
            CGRectGetWidth(v96);
            v97.origin.x = v49;
            v97.origin.y = v50;
            v97.size.width = v51;
            v97.size.height = v52;
            CGRectGetHeight(v97);
            sub_1D9BD8414(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
            sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
            if (v48 < v53 + v54)
            {
              break;
            }

            v37 = v41;
            if (v40 < v36 || v62 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v36 = v41;
            a2 = v60;
            v39 = v41 > v59;
            v35 = v58;
            if (!v39)
            {
              goto LABEL_58;
            }
          }

          v55 = v59;
          if (v40 < v60 || v62 >= v60)
          {
            break;
          }

          v37 = v57;
          v35 = v58;
          if (v40 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v36 <= v55)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v37 = v57;
        v35 = v58;
        if (v36 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v65 = a2;
    v63 = v37;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v63 = a4 + v17;
    if (v17 >= 1 && a2 < v62)
    {
      do
      {
        sub_1D9A5521C(a2, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9A5521C(a4, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = *v12;
        v22 = v12[1];
        v23 = v12[2];
        v24 = v12[3];
        v66.origin.x = *v12;
        v66.origin.y = v22;
        v66.size.width = v23;
        v66.size.height = v24;
        v25 = CGRectGetMinX(v66);
        v67.origin.x = v21;
        v67.origin.y = v22;
        v67.size.width = v23;
        v67.size.height = v24;
        CGRectGetMaxY(v67);
        v68.origin.x = v21;
        v68.origin.y = v22;
        v68.size.width = v23;
        v68.size.height = v24;
        CGRectGetWidth(v68);
        v69.origin.x = v21;
        v69.origin.y = v22;
        v69.size.width = v23;
        v69.size.height = v24;
        CGRectGetHeight(v69);
        v70.origin.x = v21;
        v70.origin.y = v22;
        v70.size.width = v23;
        v70.size.height = v24;
        CGRectGetMinX(v70);
        v71.origin.x = v21;
        v71.origin.y = v22;
        v71.size.width = v23;
        v71.size.height = v24;
        v26 = 1.0 - CGRectGetMaxY(v71);
        v72.origin.x = v21;
        v72.origin.y = v22;
        v72.size.width = v23;
        v72.size.height = v24;
        CGRectGetWidth(v72);
        v73.origin.x = v21;
        v73.origin.y = v22;
        v73.size.width = v23;
        v73.size.height = v24;
        CGRectGetHeight(v73);
        v27 = v25 + v26;
        v28 = *v9;
        v29 = v9[1];
        v30 = v9[2];
        v31 = v9[3];
        v74.origin.x = *v9;
        v74.origin.y = v29;
        v74.size.width = v30;
        v74.size.height = v31;
        v32 = CGRectGetMinX(v74);
        v75.origin.x = v28;
        v75.origin.y = v29;
        v75.size.width = v30;
        v75.size.height = v31;
        CGRectGetMaxY(v75);
        v76.origin.x = v28;
        v76.origin.y = v29;
        v76.size.width = v30;
        v76.size.height = v31;
        CGRectGetWidth(v76);
        v77.origin.x = v28;
        v77.origin.y = v29;
        v77.size.width = v30;
        v77.size.height = v31;
        CGRectGetHeight(v77);
        v78.origin.x = v28;
        v78.origin.y = v29;
        v78.size.width = v30;
        v78.size.height = v31;
        CGRectGetMinX(v78);
        v79.origin.x = v28;
        v79.origin.y = v29;
        v79.size.width = v30;
        v79.size.height = v31;
        v33 = 1.0 - CGRectGetMaxY(v79);
        v80.origin.x = v28;
        v80.origin.y = v29;
        v80.size.width = v30;
        v80.size.height = v31;
        CGRectGetWidth(v80);
        v81.origin.x = v28;
        v81.origin.y = v29;
        v81.size.width = v30;
        v81.size.height = v31;
        CGRectGetHeight(v81);
        sub_1D9BD8414(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9BD8414(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v27 >= v32 + v33)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v65 = a1;
      }

      while (a4 < v19 && a2 < v62);
    }
  }

LABEL_60:
  sub_1D9B015E8(&v65, &v64, &v63);
}
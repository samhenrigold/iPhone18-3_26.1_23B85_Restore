uint64_t sub_24EF629F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24F92B258();

    return sub_24F92B3D8();
  }

  return result;
}

uint64_t sub_24EF62AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922028();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v10 = sub_24F92A9E8();
  v11 = (a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
  aBlock = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v68 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    v62 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
    sub_24F928FD8();
    v61 = a2;
    sub_24F92A758();
    v15 = v68;
    ObjectType = swift_getObjectType();
    v17 = v11[1];
    v73[0] = *v11;
    v73[1] = v17;
    v18 = *(v15 + 56);

    v19 = v18(v73, ObjectType, v15);
    v21 = v20;
    swift_unknownObjectRelease();

    v22 = swift_getObjectType();
    v23 = *(v21 + 24);
    v60 = v19;
    v24 = v23(v22, v21);
    v25 = "RootActionRunner[ASDAppQuery]:handleOpenAppAction";
    v63 = v10;
    v59 = a1;
    if (v24)
    {
      v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps);
      if (v26)
      {
        v25 = "RootActionRunner[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v27 = 58;
      }

      else
      {
        v27 = 49;
      }
    }

    else
    {
      v26 = 0;
      v27 = 49;
    }

    v54 = v27;
    v55 = v25;
    sub_24F929778();
    sub_24F929768();
    v33 = v66;
    sub_24F921FF8();
    sub_24F92C058();
    v34 = sub_24F929768();
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_24F941C80;
    *(v35 + 32) = v14;
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    v57 = v14;
    v36 = sub_24F92B588();

    v37 = objc_opt_self();
    v38 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v56 = v26 & 1;
    if ((v26 & 1) == 0)
    {
      v38 = &selRef_queryForStoreItemIDs_;
    }

    v58 = [v37 *v38];

    v40 = v64;
    v39 = v65;
    (*(v65 + 16))(v64, v33, v6);
    v41 = (*(v39 + 80) + 41) & ~*(v39 + 80);
    v42 = v41 + v7;
    v43 = (v41 + v7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v54;
    v48 = v55;
    *(v46 + 16) = v62;
    *(v46 + 24) = v48;
    *(v46 + 32) = v47;
    *(v46 + 40) = 2;
    (*(v39 + 32))(v46 + v41, v40, v6);
    *(v46 + v42) = v56;
    *(v46 + v43 + 8) = v59;
    *(v46 + v44) = v61;
    v10 = v63;
    *(v46 + v45) = v63;
    v49 = v57;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v71 = sub_24EF64BAC;
    v72 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_24EC312A0;
    v70 = &block_descriptor_94;
    v50 = _Block_copy(&aBlock);
    v51 = v49;

    v52 = v58;
    [v58 executeQueryWithResultHandler_];
    _Block_release(v50);

    swift_unknownObjectRelease();
    (*(v65 + 8))(v66, v6);
  }

  else
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    __swift_project_value_buffer(v28, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, a3, v29, v30);
    swift_getWitnessTable();
    v31 = swift_allocError();
    *v32 = 0;
    sub_24F92A9A8();
  }

  return v10;
}

void sub_24EF63154(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v86 = a8;
  LODWORD(v84) = a7;
  v87 = a12;
  v82 = a11;
  v88 = a10;
  v83 = a9;
  v79 = sub_24F91F6B8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v75 - v15;
  v16 = sub_24F928AD8();
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v75 - v22;
  sub_24F92C048();
  sub_24F929778();
  v24 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x253052270](0, a1);
        v25 = v86;
LABEL_7:
        if (*(v25 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination))
        {
          if (qword_27F2105C8 != -1)
          {
            swift_once();
          }

          v27 = sub_24F92AAE8();
          __swift_project_value_buffer(v27, qword_27F22D7E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = xmmword_24F9479A0;
          sub_24F9283A8();
          *(&v90 + 1) = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
          *&aBlock = v82;
          v28 = v82;
          sub_24F9283B8();
          sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
          sub_24F9283A8();
          sub_24F92A5A8();
        }

        else
        {
          v29 = [v26 bundleID];
          v30 = sub_24F92B0D8();
          v32 = v31;

          sub_24F928A98();
          v33 = sub_24EA200BC(MEMORY[0x277D84F90]);
          v34 = type metadata accessor for ArcadeLaunchAttributionAction(0);
          swift_allocObject();
          v35 = ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(v30, v32, v33, v23);
          *(&v90 + 1) = v34;
          v91 = sub_24EF64D3C(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction, &protocol conformance descriptor for Action);
          *&aBlock = v35;
          v36 = v87;
          type metadata accessor for OpenAppActionImplementation(0, v87, v37, v38);

          swift_getWitnessTable();
          v39 = v83;
          sub_24F1489C4(&aBlock, v83);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v40 = objc_opt_self();
          v41 = swift_allocObject();
          v41[2] = v36;
          v41[3] = v25;
          v42 = v88;
          v41[4] = v39;
          v41[5] = v42;
          v91 = sub_24EF64CF0;
          v92 = v41;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v90 = sub_24EF64614;
          *(&v90 + 1) = &block_descriptor_6_5;
          v43 = _Block_copy(&aBlock);

          [v40 launchApp:v26 withResultHandler:v43];

          _Block_release(v43);
        }

        return;
      }

      v25 = v86;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((v84 & 1) == 0)
  {
    if (qword_27F2105C8 == -1)
    {
LABEL_17:
      v57 = sub_24F92AAE8();
      __swift_project_value_buffer(v57, qword_27F22D7E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F9283A8();
      *(&v90 + 1) = sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      *&aBlock = v82;
      v58 = v82;
      sub_24F9283B8();
      sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
      sub_24F9283A8();
      sub_24F92A5A8();

      type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v87, v59, v60);
      swift_getWitnessTable();
      v61 = swift_allocError();
      *v62 = 1;
      sub_24F92A9A8();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  v44 = v86[3];
  v84 = v86[2];
  v82 = v44;
  v46 = *(v86 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  v45 = *(v86 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
  v47 = *(v86 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination);
  v76 = v86[5];
  v48 = *(v85 + 16);
  v48(v20, v86 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16);
  v49 = type metadata accessor for OpenAppAction(0);
  v50 = swift_allocObject();
  v51 = (v50 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  *v51 = v46;
  v51[1] = v45;
  *(v50 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v47;
  *(v50 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = 0;
  v91 = 0;
  aBlock = 0u;
  v90 = 0u;
  v52 = v80;
  v48(v80, v20, v16);
  v53 = sub_24F929608();
  v54 = v81;
  (*(*(v53 - 8) + 56))(v81, 1, 1, v53);
  v55 = (v50 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v55 = 0u;
  v55[1] = 0u;
  sub_24E65E064(&aBlock, &v95);
  if (*(&v96 + 1))
  {
    v98 = v95;
    v99 = v96;
    v100 = v97;
    v56 = v82;
  }

  else
  {
    v56 = v82;

    v63 = v77;
    sub_24F91F6A8();
    v64 = sub_24F91F668();
    v66 = v65;
    (*(v78 + 8))(v63, v79);
    v93 = v64;
    v94 = v66;
    sub_24F92C7F8();
    sub_24E601704(&v95, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&aBlock, &qword_27F235830, &qword_24F93B8C0);
  v67 = v85;
  (*(v85 + 8))(v20, v16);
  v68 = v50 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v69 = v99;
  *v68 = v98;
  *(v68 + 1) = v69;
  *(v68 + 4) = v100;
  sub_24E65E0D4(v54, v50 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v50[2] = v84;
  v50[3] = v56;
  v70 = v76;
  v50[4] = 0;
  v50[5] = v70;
  (*(v67 + 32))(v50 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v52, v16);
  *(&v90 + 1) = v49;
  v91 = sub_24EF64D3C(qword_27F222880, type metadata accessor for OpenAppAction, &protocol conformance descriptor for Action);
  *&aBlock = v50;
  type metadata accessor for OpenAppActionImplementation(0, v87, v71, v72);

  swift_getWitnessTable();
  sub_24F1489C4(&aBlock, v83);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  v74 = sub_24F92BEF8();
  *(&v90 + 1) = v73;
  v91 = MEMORY[0x277D225C0];
  *&aBlock = v74;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

uint64_t sub_24EF63DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24EF63ECC(a1, a2, a3, a5);
  v5 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  v6 = sub_24F92BEF8();
  v8[3] = v5;
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v6;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_24EF63ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  v6 = sub_24F928AE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v30 = sub_24F92AAE8();
    __swift_project_value_buffer(v30, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v32 = *(v36 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    v31 = *(v36 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
    v41 = &type metadata for AdamId;
    aBlock = v32;
    v39 = v31;

    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v37, v33, v34);
    swift_getWitnessTable();
    swift_allocError();
    v29 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v19 = v16;
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v20 = sub_24F92BEF8();
    v21 = swift_allocObject();
    *(v21 + 16) = v37;
    *(v21 + 24) = a3;
    v42 = sub_24EF64D34;
    v43 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_24EAF8248;
    v41 = &block_descriptor_14_0;
    v22 = _Block_copy(&aBlock);

    sub_24F927DA8();
    aBlock = MEMORY[0x277D84F90];
    sub_24EF64D3C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v18, v13, v22);
    _Block_release(v22);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v18, v19);
    if (qword_27F2105C8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F92AAE8();
    __swift_project_value_buffer(v23, qword_27F22D7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v25 = *(v36 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    v24 = *(v36 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
    v41 = &type metadata for AdamId;
    aBlock = v25;
    v39 = v24;

    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v37, v26, v27);
    swift_getWitnessTable();
    swift_allocError();
    v29 = 2;
LABEL_9:
    *v28 = v29;
    return sub_24F92A978();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v6);
  return sub_24F92A988();
}

double sub_24EF64614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_24EF64668(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_24F9289E8();
  MEMORY[0x28223BE20](v2 - 8);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v32[1] = v32 - v5;
  v7 = sub_24F928AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v32[2] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A638();
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A618();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17._countAndFlagsBits = 0x4F2E6E6F69746341;
  v17._object = 0xE90000000000004BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_24F92A608();
  sub_24F928A98();
  v19 = sub_24F92A628();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20._object = 0x800000024FA65060;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedString(_:comment:)(v20, v21);
  v22._countAndFlagsBits = 0xD000000000000021;
  v22._object = 0x800000024FA65080;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  localizedString(_:comment:)(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24F93DE60;
  (*(v14 + 16))(v25 + v24, v16, v13);
  sub_24F9289D8();
  sub_24F92A5E8();
  v26 = v33;
  *(&v39 + 1) = v33;
  v40 = MEMORY[0x277D223B8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  v28 = v34;
  (*(v34 + 16))(boxed_opaque_existential_1, v12, v26);
  type metadata accessor for OpenAppActionImplementation(0, v36, v29, v30);
  swift_getWitnessTable();
  sub_24F1489C4(&v38, v37);

  (*(v28 + 8))(v12, v26);
  (*(v14 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1(&v38);
}

uint64_t sub_24EF64AD8()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (((((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EF64BAC(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_24F922028() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  sub_24EF63154(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EF64CA8()
{

  return swift_deallocObject();
}

uint64_t sub_24EF64CFC()
{

  return swift_deallocObject();
}

uint64_t sub_24EF64D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF64DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EF64F14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AchievementsByGameAccessoryView(uint64_t a1)
{
  result = qword_27F234C68;
  if (!qword_27F234C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF6509C(uint64_t a1)
{
  sub_24EF651A8(319, &qword_27F234C78, type metadata accessor for AchievementsByGameOptionProvider, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_24E600550(319);
    if (v2 <= 0x3F)
    {
      sub_24EF651A8(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EF651A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EF65228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v73 = sub_24F929888();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24F927768();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AchievementsByGameAccessoryView(0);
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C80, &qword_24F9B4D68);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v59 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C88, &qword_24F9B4D70);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v11 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C90, &qword_24F9B4D78);
  MEMORY[0x28223BE20](v67);
  v13 = &v59 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C98, &qword_24F9B4D80);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA0, &qword_24F9B4D88);
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v59 - v16;
  sub_24EF696B8(v2, &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v81 = *(v6 + 80);
  v82 = v7;
  v18 = swift_allocObject();
  v71 = v17;
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EF69720(v78, v18 + v17);
  v84 = v2;
  v79 = v2;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CA8, &qword_24FA052B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB0, &unk_24F9B4D90);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8, &qword_24FA052C0);
  v20 = sub_24EF69804();
  v86 = v19;
  v87 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F234CE8, &qword_27F234CB0, &unk_24F9B4D90, MEMORY[0x277CE14C0]);
  v21 = v11;
  sub_24F925AA8();
  sub_24F927758();
  sub_24E602068(&qword_27F234CF0, &qword_27F234C80, &qword_24F9B4D68, MEMORY[0x277CDE5B0]);
  v22 = v62;
  sub_24F926BA8();
  v23 = v5;
  v24 = v60;
  v25 = v61;
  (*(v64 + 8))(v23, v65);
  (*(v63 + 8))(v9, v22);
  v89 = MEMORY[0x277CE1120];
  v90 = sub_24E63E454();
  sub_24EF69A2C(&v86, v13);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D00, &qword_24F9B4DC8);
  (*(v24 + 16))(&v13[v26[9]], v21, v25);
  v27 = &v13[v26[10]];
  *v27 = sub_24F923398() & 1;
  *(v27 + 1) = v28;
  v27[16] = v29 & 1;
  v30 = &v13[v26[11]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v31 = qword_27F24E488;
  v32 = sub_24F923398();
  v34 = v33;
  v36 = v35;
  v37 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D08, &qword_24F9B4DF8) + 36)];
  *v37 = v31;
  v37[8] = v32 & 1;
  *(v37 + 2) = v34;
  v37[24] = v36 & 1;
  LOBYTE(v31) = sub_24F923398();
  v39 = v38;
  LOBYTE(v34) = v40;
  sub_24E601704(&v86, &qword_27F234CF8, &qword_24F9B4DC0);
  (*(v24 + 8))(v21, v25);
  v41 = v67;
  v42 = &v13[*(v67 + 36)];
  *v42 = v31 & 1;
  *(v42 + 1) = v39;
  v42[16] = v34 & 1;
  v43 = v66;
  sub_24F9297E8();
  v44 = sub_24EF69AA4();
  v45 = v69;
  sub_24F925EE8();
  (*(v72 + 8))(v43, v73);
  sub_24E601704(v13, &qword_27F234C90, &qword_24F9B4D78);
  v73 = *(v68 + 20);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  v46 = v79;
  sub_24F927358();
  v47 = v86;
  swift_getKeyPath();
  v86 = v47;
  v68 = sub_24EF6A110(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider, &unk_24F98F2B8);
  sub_24F91FD88();

  LOBYTE(v39) = *(v47 + 24);

  v85 = v39;
  v48 = v78;
  sub_24EF696B8(v46, v78);
  v49 = v71;
  v50 = swift_allocObject();
  sub_24EF69720(v48, v50 + v49);
  v86 = v41;
  v87 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_24EC3D7A4();
  v53 = v74;
  v54 = v75;
  sub_24F926AB8();

  (*(v70 + 8))(v45, v54);
  sub_24F927358();
  v55 = v86;
  swift_getKeyPath();
  v86 = v55;
  sub_24F91FD88();

  LOBYTE(v39) = *(v55 + 25);

  v85 = v39;
  sub_24EF696B8(v46, v48);
  v56 = swift_allocObject();
  sub_24EF69720(v48, v56 + v49);
  v86 = v54;
  v87 = &type metadata for AchievementsByGameSortOption;
  v88 = OpaqueTypeConformance2;
  v89 = v52;
  swift_getOpaqueTypeConformance2();
  sub_24EC3D82C();
  v57 = v77;
  sub_24F926AB8();

  return (*(v76 + 8))(v53, v57);
}

uint64_t sub_24EF65D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AchievementsByGameAccessoryView(0);
  sub_24EF69E54(a2 + *(v11 + 24), &v20);
  if (v23 == 1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v24, v12);
      *(&v21 + 1) = sub_24F9284A8();
      v22 = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_24EF6602C(boxed_opaque_existential_1);
      sub_24F76973C(v6);
      sub_24F9218A8();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      return __swift_destroy_boxed_opaque_existential_1(&v24);
    }
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v19 = v7;
    v16 = v4;
    v17 = v15;
    sub_24F921FD8();

    v4 = v16;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v19);
    v12 = *(&v25 + 1);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v24, &unk_27F212740, &unk_24F940730);
}

uint64_t sub_24EF6602C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_24F9294C8();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F929458();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F928698();
  v33 = *(v34 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v14 = sub_24F929448();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6449746567726174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v17;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x7265746C6966;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v17;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v17;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x6E6F74747562;
  *(inited + 200) = 0xE600000000000000;
  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v18 = sub_24F92A2C8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v29 = xmmword_24F93DE60;
  *(v21 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();

  v22 = v31;
  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  v25 = v22;
  v26 = v22;
  v27 = v34;
  (*(v9 + 16))(v24 + v23, v25, v34);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v9 + 8))(v26, v27);
  return sub_24F928498();
}

uint64_t sub_24EF6656C@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D28, &qword_24F9B4F10);
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D30, &qword_24F9B4F18);
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_24EF66814(&v25 - v13);
  sub_24EF66C70(v7);
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D38, &qword_24F9B4F20) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_24EF66814@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_24F9249D8();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DB0, &qword_24F9B4FA0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DB8, &qword_24F9B4FA8);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  if (qword_27F211598 != -1)
  {
    swift_once();
  }

  v31 = qword_27F39EBF8;
  v32 = unk_27F39EC00;
  type metadata accessor for AchievementsByGameAccessoryView(0);

  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v4 + 8))(v6, v3);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DC0, &qword_24F9B4FB0);
  sub_24EF6A158();
  sub_24EF6A1AC();
  sub_24E600AEC();
  sub_24F927098();
  v14 = sub_24E602068(&qword_27F234DE0, &qword_27F234DB0, &qword_24F9B4FA0, MEMORY[0x277CDF038]);
  sub_24F926968();
  (*(v8 + 8))(v10, v7);
  v15 = v21;
  sub_24F9249C8();
  v28 = v7;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  v17 = v24;
  sub_24F9261F8();
  (*(v23 + 8))(v15, v17);
  return (*(v19 + 8))(v13, v16);
}

uint64_t sub_24EF66C70@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_24F923F98();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D40, &qword_24F9B4F28);
  MEMORY[0x28223BE20](v20);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D48, &qword_24F9B4F30);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  type metadata accessor for AchievementsByGameAccessoryView(0);
  sub_24F927368();
  swift_getKeyPath();
  sub_24F927388();

  (*(v8 + 8))(v10, v7);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  sub_24EF68C88(v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D50, &qword_24F9B4F38);
  sub_24E602068(&qword_27F234D58, &qword_27F234D40, &qword_24F9B4F28, MEMORY[0x277CE14C0]);
  sub_24EF69EE4();
  sub_24EF69F38();
  sub_24F927088();
  v15 = v19;
  sub_24F923F88();
  sub_24E602068(&qword_27F234D80, &qword_27F234D48, &qword_24F9B4F30, MEMORY[0x277CDF038]);
  v16 = v21;
  sub_24F9261F8();
  (*(v22 + 8))(v15, v16);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24EF67034@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_24F9248C8();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &KeyPath - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &KeyPath - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0, &qword_24F9D8240);
  MEMORY[0x28223BE20](v6);
  v8 = (&KeyPath - v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CD0, &unk_24F9B4DA0);
  MEMORY[0x28223BE20](v34);
  v10 = &KeyPath - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CB8, &qword_24FA052C0);
  MEMORY[0x28223BE20](v35);
  v12 = &KeyPath - v11;
  v33 = sub_24F926DF8();
  v32 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  type metadata accessor for AchievementsByGameAccessoryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  sub_24F927358();
  v13 = sub_24EC3CF50();

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    sub_24F924CF8();
    v14 = 0;
  }

  v15 = sub_24F924D08();
  (*(*(v15 - 8) + 56))(v5, v14, 1, v15);
  v16 = swift_getKeyPath();
  v17 = (v8 + *(v6 + 36));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0);
  sub_24E6009C8(v5, v17 + *(v18 + 28), &qword_27F214410, &unk_24F9576A0);
  *v17 = v16;
  v20 = KeyPath;
  v19 = v32;
  *v8 = v33;
  v8[1] = v20;
  v8[2] = v19;
  sub_24F927358();
  v21 = sub_24EC3CF50();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    v22 = sub_24F926D18();
  }

  v23 = swift_getKeyPath();
  sub_24E6009C8(v8, v10, &qword_27F234CE0, &qword_24F9D8240);
  v24 = &v10[*(v34 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_24F927358();
  v25 = sub_24EC3CF50();

  if (v25)
  {
    v26 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v26 = 0;
  }

  v27 = swift_getKeyPath();
  sub_24E6009C8(v10, v12, &qword_27F234CD0, &unk_24F9B4DA0);
  v28 = &v12[*(v35 + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = v36;
  sub_24F9248B8();
  sub_24EF69804();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v38 + 8))(v29, v39);
  return sub_24E601704(v12, &qword_27F234CB8, &qword_24FA052C0);
}

uint64_t sub_24EF674B8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v22 = sub_24F921B58();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(type metadata accessor for AchievementsByGameAccessoryView(0) + 24);
  v21 = a3;
  sub_24EF69E54(a3 + v13, &v23);
  if (v26 != 1)
  {
    sub_24F92BDC8();
    v20 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v27, &unk_27F212740, &unk_24F940730);
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v14 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
    return sub_24E601704(&v27, &unk_27F212740, &unk_24F940730);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v27, v14);
  v15 = v12 == 0;
  if (v12)
  {
    v16 = 0x614E794274726F53;
  }

  else
  {
    v16 = 0xD000000000000014;
  }

  if (v15)
  {
    v17 = 0x800000024FA650B0;
  }

  else
  {
    v17 = 0xEA0000000000656DLL;
  }

  *(&v24 + 1) = sub_24F9284A8();
  v25 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  sub_24EF677C4(v16, v17, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v5 + 8))(v7, v22);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24EF677C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v33 = a2;
  v32 = a1;
  v40 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929458();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24F928698();
  v37 = *(v38 - 8);
  v11 = v37;
  MEMORY[0x28223BE20](v38);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928AD8();
  MEMORY[0x28223BE20](v14 - 8);
  v36 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[1];
  v35 = *v4;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_24F9293F8();
  v18 = sub_24F929448();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = 0x6449746567726174;
  v22 = v32;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v22;
  *(inited + 104) = v33;
  *(inited + 120) = v21;
  *(inited + 128) = 0x7954746567726174;
  *(inited + 136) = 0xEA00000000006570;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v21;
  *(inited + 176) = 0x79546E6F69746361;
  *(inited + 216) = v21;
  *(inited + 184) = 0xEA00000000006570;
  *(inited + 192) = 0x7463656C6573;
  *(inited + 200) = 0xE600000000000000;

  sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v23 = sub_24F92A2C8();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v33 = xmmword_24F93DE60;
  *(v26 + 16) = xmmword_24F93DE60;
  sub_24F92A2A8();
  sub_24E805DFC(v26);
  swift_setDeallocating();
  (*(v24 + 8))(v26 + v25, v23);
  swift_deallocClassInstance();

  sub_24F928658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  v29 = v38;
  (*(v11 + 16))(v28 + v27, v13, v38);
  sub_24F9294B8();
  sub_24F928AA8();
  (*(v11 + 8))(v13, v29);
  return sub_24F928498();
}

uint64_t sub_24EF67D24(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_24F921B58();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = type metadata accessor for AchievementsByGameAccessoryView(0);
  sub_24EF69E54(a3 + *(v13 + 24), &v27);
  if (v30 != 1)
  {
    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v14 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      goto LABEL_3;
    }

    return sub_24E601704(&v31, &unk_27F212740, &unk_24F940730);
  }

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v14 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    return sub_24E601704(&v31, &unk_27F212740, &unk_24F940730);
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(&v31, v14);
  v15 = 7105601;
  v16 = 0xE500000000000000;
  v17 = 0x534F63616DLL;
  v18 = 0xE400000000000000;
  v19 = 1397716596;
  if (v12 != 3)
  {
    v19 = 0x534F6E6F69736976;
    v18 = 0xE800000000000000;
  }

  if (v12 != 2)
  {
    v17 = v19;
    v16 = v18;
  }

  if (v12)
  {
    v15 = 5459817;
  }

  if (v12 <= 1)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v12 <= 1)
  {
    v21 = 0xE300000000000000;
  }

  else
  {
    v21 = v16;
  }

  *(&v28 + 1) = sub_24F9284A8();
  v29 = MEMORY[0x277D21B60];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  sub_24EF677C4(v20, v21, boxed_opaque_existential_1);

  sub_24F76973C(v7);
  sub_24F9218A8();
  (*(v25 + 8))(v7, v26);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t sub_24EF68050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF70, &qword_24F98EFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DE8, &qword_24F9B4FC8);
  sub_24E602068(&qword_27F234DF0, &qword_27F22BF70, &qword_24F98EFF0, MEMORY[0x277D83980]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DD8, &unk_24F9B4FB8);
  sub_24EF6A158();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24EF6A2AC();
  return sub_24F927238();
}

uint64_t sub_24EF681C0(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DD8, &unk_24F9B4FB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = *a1;
  if (v6 == 1)
  {
    if (qword_27F211618 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39ECF8;
  }

  else
  {
    if (qword_27F211628 != -1)
    {
      swift_once();
    }

    v7 = &qword_27F39ED18;
  }

  v8 = *v7;

  v16 = v8;
  v17 = v9;
  sub_24E600AEC();
  *v5 = sub_24F925E18();
  *(v5 + 1) = v10;
  v5[16] = v11 & 1;
  *(v5 + 3) = v12;
  v5[32] = v6;
  v5[33] = 1;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9248C8();
  __swift_project_value_buffer(v13, qword_27F39F078);
  v14 = sub_24EF6A158();
  v16 = MEMORY[0x277CE0BD8];
  v17 = &type metadata for AchievementsByGameSortOption;
  v18 = MEMORY[0x277CE0BC8];
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EF683FC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF88, &qword_24F98F158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234DA0, &unk_24F9B4F90);
  sub_24E602068(&qword_27F234DA8, &qword_27F22BF88, &qword_24F98F158, MEMORY[0x277D83980]);
  sub_24EF69EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D70, &qword_24F9B4F40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D78, &qword_24F9B4F48);
  sub_24F9251E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58, &unk_24F935650);
  sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  swift_getOpaqueTypeConformance2();
  sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EF6863C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9251E8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D78, &qword_24F9B4F48);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D70, &qword_24F9B4F40);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = *a1;
  v44 = a2;
  v40 = v19;
  v41 = v18;
  if (v17 <= 1)
  {
    if (v17)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v28 = qword_27F39ED48;

      v45 = v28;
      v46 = v29;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v22 = qword_27F39ED38;

      v45 = v22;
      v46 = v23;
    }
  }

  else if (v17 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v24 = qword_27F39ED58;

    v45 = v24;
    v46 = v25;
  }

  else if (v17 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39ED68;

    v45 = v20;
    v46 = v21;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v26 = qword_27F39ED78;

    v45 = v26;
    v46 = v27;
  }

  sub_24E600AEC();
  sub_24F926EB8();
  (*(v8 + 32))(v13, v10, v7);
  v30 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B68, &qword_24F935660) + 36)];
  *v30 = v17;
  v30[1] = 1;
  sub_24F9251D8();
  v31 = sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  v32 = sub_24EF69EE4();
  v45 = v7;
  v46 = &type metadata for AchievementsPlatformFilterOption;
  v47 = v31;
  v48 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  v35 = v43;
  sub_24F9260E8();
  (*(v42 + 8))(v6, v35);
  (*(v39 + 8))(v13, v11);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v36 = sub_24F9248C8();
  __swift_project_value_buffer(v36, qword_27F39F078);
  v45 = v11;
  v46 = v35;
  v47 = OpaqueTypeConformance2;
  v48 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v41;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return (*(v40 + 8))(v16, v37);
}

uint64_t sub_24EF68C88@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B820, &qword_24F984AF0);
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = v64 - v6;
  v7 = sub_24F9251E8();
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D88, &qword_24F9B4F50);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D90, &qword_24F9B4F58);
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x28223BE20](v17);
  v69 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = v64 - v20;
  if (qword_27F211630 != -1)
  {
    swift_once();
  }

  v78 = qword_27F39ED28;
  v79 = unk_27F39ED30;
  v21 = *(type metadata accessor for AchievementsByGameAccessoryView(0) + 20);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  v68 = a1;
  v64[2] = v21;
  v64[1] = v22;
  sub_24F927358();
  v23 = v82;
  swift_getKeyPath();
  v82 = v23;
  sub_24EF6A110(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider, &unk_24F98F2B8);
  sub_24F91FD88();

  v64[0] = sub_24E600AEC();
  sub_24F926EB8();
  sub_24F9251D8();
  v24 = sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  v25 = sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  sub_24F9260E8();
  (*(v65 + 8))(v9, v7);
  (*(v11 + 8))(v13, v10);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v26 = sub_24F9248C8();
  v27 = __swift_project_value_buffer(v26, qword_27F39F078);
  v78 = v10;
  v79 = v7;
  v80 = v24;
  v81 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v67;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v66 + 8))(v16, v28);
  sub_24F927358();
  v29 = v78;
  swift_getKeyPath();
  v78 = v29;
  sub_24F91FD88();

  v30 = *(v29 + 25);

  v65 = v27;
  if (v30 <= 1)
  {
    if (v30)
    {
      if (qword_27F211640 != -1)
      {
        swift_once();
      }

      v31 = &qword_27F39ED48;
    }

    else
    {
      if (qword_27F211638 != -1)
      {
        swift_once();
      }

      v31 = &qword_27F39ED38;
    }
  }

  else if (v30 == 2)
  {
    if (qword_27F211648 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED58;
  }

  else if (v30 == 3)
  {
    if (qword_27F211650 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED68;
  }

  else
  {
    if (qword_27F211658 != -1)
    {
      swift_once();
    }

    v31 = &qword_27F39ED78;
  }

  v32 = *v31;

  v78 = v32;
  v79 = v33;
  v34 = sub_24F925E18();
  v36 = v35;
  v38 = v37;
  sub_24F925898();
  v39 = sub_24F925C98();
  v41 = v40;
  v43 = v42;

  sub_24E600B40(v34, v36, v38 & 1);

  sub_24F926D18();
  v44 = sub_24F925C48();
  v46 = v45;
  LOBYTE(v36) = v47;
  v49 = v48;

  sub_24E600B40(v39, v41, v43 & 1);

  v78 = v44;
  v79 = v46;
  LOBYTE(v80) = v36 & 1;
  v81 = v49;
  v50 = v76;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E600B40(v44, v46, v36 & 1);

  v51 = v69;
  v52 = v70;
  v53 = *(v70 + 16);
  v54 = v71;
  v53(v69, v77, v71);
  v55 = v74;
  v68 = *(v74 + 16);
  v56 = v72;
  v57 = v50;
  v58 = v75;
  v68(v72, v57, v75);
  v59 = v73;
  v53(v73, v51, v54);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234D98, &unk_24F9B4F60);
  v68(&v59[*(v60 + 48)], v56, v58);
  v61 = *(v55 + 8);
  v61(v76, v58);
  v62 = *(v52 + 8);
  v62(v77, v54);
  v61(v56, v58);
  return (v62)(v51, v54);
}

uint64_t sub_24EF696B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsByGameAccessoryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF69720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsByGameAccessoryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF69784(uint64_t a1)
{
  v3 = *(type metadata accessor for AchievementsByGameAccessoryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EF65D5C(a1, v4);
}

unint64_t sub_24EF69804()
{
  result = qword_27F234CC0;
  if (!qword_27F234CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CB8, &qword_24FA052C0);
    sub_24EF698BC();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CC0);
  }

  return result;
}

unint64_t sub_24EF698BC()
{
  result = qword_27F234CC8;
  if (!qword_27F234CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CD0, &unk_24F9B4DA0);
    sub_24EF69974();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CC8);
  }

  return result;
}

unint64_t sub_24EF69974()
{
  result = qword_27F234CD8;
  if (!qword_27F234CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CE0, &qword_24F9D8240);
    sub_24E60156C();
    sub_24E602068(&qword_27F21A958, &qword_27F2365A0, &unk_24F9B4DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234CD8);
  }

  return result;
}

uint64_t sub_24EF69A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CF8, &qword_24F9B4DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF69AA4()
{
  result = qword_27F234D10;
  if (!qword_27F234D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C90, &qword_24F9B4D78);
    sub_24EF69B30();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D10);
  }

  return result;
}

unint64_t sub_24EF69B30()
{
  result = qword_27F234D18;
  if (!qword_27F234D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D08, &qword_24F9B4DF8);
    sub_24E602068(&qword_27F234D20, &qword_27F234D00, &qword_24F9B4DC8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D18);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{
  v1 = type metadata accessor for AchievementsByGameAccessoryView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234C60, &unk_24F9B4CE0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[6];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
  }

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF69DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AchievementsByGameAccessoryView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EF69E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215690, &unk_24F98D8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF69EE4()
{
  result = qword_27F234D60;
  if (!qword_27F234D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D60);
  }

  return result;
}

unint64_t sub_24EF69F38()
{
  result = qword_27F234D68;
  if (!qword_27F234D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D50, &qword_24F9B4F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D70, &qword_24F9B4F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234D78, &qword_24F9B4F48);
    sub_24F9251E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58, &unk_24F935650);
    sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
    sub_24EF69EE4();
    swift_getOpaqueTypeConformance2();
    sub_24EF6A110(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234D68);
  }

  return result;
}

uint64_t sub_24EF6A110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF6A158()
{
  result = qword_27F234DC8;
  if (!qword_27F234DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DC8);
  }

  return result;
}

unint64_t sub_24EF6A1AC()
{
  result = qword_27F234DD0;
  if (!qword_27F234DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DC0, &qword_24F9B4FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234DD8, &unk_24F9B4FB8);
    sub_24EF6A158();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DD0);
  }

  return result;
}

unint64_t sub_24EF6A2AC()
{
  result = qword_27F234DF8;
  if (!qword_27F234DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234DF8);
  }

  return result;
}

uint64_t sub_24EF6A300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234CA0, &qword_24F9B4D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C98, &qword_24F9B4D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234C90, &qword_24F9B4D78);
  sub_24EF69AA4();
  swift_getOpaqueTypeConformance2();
  sub_24EC3D7A4();
  swift_getOpaqueTypeConformance2();
  sub_24EC3D82C();
  return swift_getOpaqueTypeConformance2();
}

void sub_24EF6A41C(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActivityDefinitionDetail(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E861890(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EF6A85C(v5);
  *a1 = v3;
}

uint64_t sub_24EF6A4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v6 = swift_task_alloc();
  v4[15] = v6;
  *v6 = v4;
  v6[1] = sub_24EF6A588;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24EF6A588()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E64E9E8;
  }

  else
  {
    v2 = sub_24EF6A69C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6A69C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_24E83FD08;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = MEMORY[0x277D84F90];

  return MEMORY[0x282164978](v6, v4, v7, v5, v1, v2);
}

uint64_t sub_24EF6A790(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_24E67D244;

  return sub_24EF6B9C0(v5, v6, v7, a3);
}

void sub_24EF6A85C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ActivityDefinitionDetail(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityDefinitionDetail(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EF6AB9C(v8, v9, a1, v4);
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
    sub_24EF6A988(0, v2, 1, a1);
  }
}

void sub_24EF6A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for ActivityDefinitionDetail(0);
  MEMORY[0x28223BE20](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
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
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24EF6D508(v22, v16);
      sub_24EF6D508(v19, v12);
      if (*(v16 + 4) == *(v12 + 4) && *(v16 + 5) == *(v12 + 5))
      {
        sub_24EF6D56C(v12);
        sub_24EF6D56C(v16);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24F92CE08();
      sub_24EF6D56C(v12);
      sub_24EF6D56C(v16);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_24EF1EB34(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EF1EB34(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24EF6AB9C(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v137 = type metadata accessor for ActivityDefinitionDetail(0);
  v131 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v127 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  MEMORY[0x28223BE20](v18);
  v135 = &v117 - v19;
  MEMORY[0x28223BE20](v20);
  v134 = &v117 - v21;
  MEMORY[0x28223BE20](v22);
  v123 = &v117 - v23;
  MEMORY[0x28223BE20](v24);
  v122 = &v117 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_24EF6B4D4(*a3 + *(v131 + 72) * v28, *a3 + *(v131 + 72) * *&v113[16 * v112 + 16], *a3 + *(v131 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_24E86164C(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_24E8615C0(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_24E86164C(v28);
    goto LABEL_112;
  }

  v118 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v132 = a3;
  v128 = v14;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v129 = v26;
      v31 = *a3;
      v32 = *(v131 + 72);
      v33 = v27 + 1;
      v34 = v122;
      sub_24EF6D508(v31 + v32 * v30, v122);
      v133 = v32;
      v35 = v31 + v32 * v29;
      v36 = v123;
      sub_24EF6D508(v35, v123);
      v37 = *(v34 + 32) == *(v36 + 32) && *(v34 + 40) == *(v36 + 40);
      v120 = v6;
      if (v37)
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_24F92CE08();
      }

      v119 = v28;
      sub_24EF6D56C(v123);
      sub_24EF6D56C(v122);
      v121 = v29;
      v38 = v29 + 2;
      v39 = v133 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v133 * v33;
      a3 = v31 + v133 * v33;
      do
      {
        v6 = v38;
        v44 = v41;
        v28 = v42;
        v5 = v39;
        if (v38 >= v129)
        {
          break;
        }

        v45 = v38;
        v46 = v134;
        sub_24EF6D508(v40, v134);
        v47 = v135;
        sub_24EF6D508(a3, v135);
        v48 = *(v46 + 32) == *(v47 + 32) && *(v46 + 40) == *(v47 + 40);
        v43 = v48 ? 0 : sub_24F92CE08();
        v6 = v45;
        sub_24EF6D56C(v135);
        sub_24EF6D56C(v134);
        v38 = v45 + 1;
        v40 += v133;
        a3 += v133;
        v41 = v44 + 1;
        v42 = v28 + v133;
        v39 = v5 + v133;
        v14 = v128;
      }

      while (((v130 ^ v43) & 1) == 0);
      if (v130)
      {
        if (v6 < v121)
        {
          goto LABEL_139;
        }

        if (v121 >= v6)
        {
          v30 = v6;
          v28 = v119;
          v6 = v120;
          a3 = v132;
          v29 = v121;
          goto LABEL_36;
        }

        v49 = v121 * v133;
        v50 = v121;
        do
        {
          if (v50 != v44)
          {
            v52 = *v132;
            if (!*v132)
            {
              goto LABEL_145;
            }

            v130 = v52 + v49;
            sub_24EF1EB34(v52 + v49, v127);
            if (v49 < v28 || v130 >= v52 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_24EF1EB34(v127, v52 + v28);
          }

          ++v50;
          v28 -= v133;
          v5 -= v133;
          v49 += v133;
        }

        while (v50 < v44--);
      }

      v30 = v6;
      v28 = v119;
      v6 = v120;
      a3 = v132;
      v29 = v121;
    }

LABEL_36:
    v53 = *(a3 + 8);
    v133 = v30;
    if (v30 < v53)
    {
      v80 = __OFSUB__(v30, v29);
      v54 = v30 - v29;
      if (v80)
      {
        goto LABEL_138;
      }

      if (v54 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v133 < v29)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24E615ED8(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v28 = sub_24E615ED8((v65 > 1), v66 + 1, 1, v28);
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    v69 = v133;
    *(v68 + 32) = v29;
    *(v68 + 40) = v69;
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v28 + 32);
          v71 = *(v28 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_126;
          }

          v86 = (v28 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_129;
          }

          v92 = (v28 + 32 + 16 * a3);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_133;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v96 = (v28 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_93:
        if (v91)
        {
          goto LABEL_128;
        }

        v99 = v28 + 16 * a3;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_131;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_100:
        v107 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v132)
        {
          goto LABEL_144;
        }

        v108 = v28;
        v109 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v107);
        v110 = *(v109 + 16 * a3 + 8);
        sub_24EF6B4D4(*v132 + *(v131 + 72) * v28, *v132 + *(v131 + 72) * *(v109 + 16 * a3), *v132 + *(v131 + 72) * v110, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v110 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_24E86164C(v108);
        }

        if (v107 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v111 = &v108[16 * v107];
        *(v111 + 4) = v28;
        *(v111 + 5) = v110;
        v138 = v108;
        sub_24E8615C0(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v28 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_124;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_125;
      }

      v81 = (v28 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_127;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_130;
      }

      if (v85 >= v77)
      {
        v103 = (v28 + 32 + 16 * a3);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v132;
    v27 = v133;
    v26 = v132[1];
    if (v133 >= v26)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v29, v118))
  {
    goto LABEL_140;
  }

  if (v29 + v118 >= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v29 + v118;
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v133 == v55)
  {
    goto LABEL_59;
  }

  v119 = v28;
  v120 = v6;
  v56 = *a3;
  v57 = *(v131 + 72);
  v58 = *a3 + v57 * (v133 - 1);
  v59 = -v57;
  v121 = v29;
  a3 = v29 - v133;
  v125 = v57;
  v126 = v55;
  v60 = v56 + v133 * v57;
LABEL_48:
  v5 = v60;
  v129 = a3;
  v130 = v58;
  while (1)
  {
    sub_24EF6D508(v5, v17);
    sub_24EF6D508(v58, v14);
    if (*(v17 + 4) == *(v14 + 4) && *(v17 + 5) == *(v14 + 5))
    {
      sub_24EF6D56C(v14);
      sub_24EF6D56C(v17);
LABEL_47:
      v58 = v130 + v125;
      a3 = v129 - 1;
      v60 += v125;
      if (++v133 == v126)
      {
        v133 = v126;
        v28 = v119;
        v6 = v120;
        v29 = v121;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_24F92CE08();
    sub_24EF6D56C(v14);
    sub_24EF6D56C(v17);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v56)
    {
      break;
    }

    v63 = v136;
    sub_24EF1EB34(v5, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_24EF1EB34(v63, v58);
    v58 += v59;
    v5 += v59;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

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
}

void sub_24EF6B4D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for ActivityDefinitionDetail(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v52 = a1;
  v51 = a4;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v18;
      v32 = a4 + v23;
      do
      {
        v43 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v45 = v33;
        v46 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v52 = v33;
            v30 = v43;
            goto LABEL_69;
          }

          v35 = a3;
          v44 = v30;
          v36 = v31;
          v37 = v32 + v31;
          v38 = v32 + v31;
          v39 = v47;
          sub_24EF6D508(v38, v47);
          v40 = v48;
          sub_24EF6D508(v34, v48);
          v41 = *(v39 + 32) == *(v40 + 32) && *(v39 + 40) == *(v40 + 40);
          v42 = v41 ? 0 : sub_24F92CE08();
          a3 = v35 + v36;
          sub_24EF6D56C(v48);
          sub_24EF6D56C(v47);
          if (v42)
          {
            break;
          }

          v30 = v37;
          if (v35 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v37;
            v34 = v46;
          }

          else
          {
            v34 = v46;
            if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v37;
            }
          }

          v32 = v30;
          v31 = v36;
          v33 = v45;
          if (v37 <= a4)
          {
            v52 = v45;
            goto LABEL_69;
          }
        }

        if (v35 < v45 || a3 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v36;
        }

        else
        {
          a2 = v46;
          v31 = v36;
          if (v35 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v32 > a4);
    }

    v52 = a2;
LABEL_69:
    v50 = v30;
  }

  else
  {
    v21 = a2;
    v22 = v20 * v18;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v50 = a4 + v22;
    if (v22 >= 1 && v21 < a3)
    {
      v26 = v21;
      while (1)
      {
        v27 = v26;
        sub_24EF6D508(v26, v16);
        sub_24EF6D508(a4, v13);
        if (*(v16 + 4) == *(v13 + 4) && *(v16 + 5) == *(v13 + 5))
        {
          break;
        }

        v29 = sub_24F92CE08();
        sub_24EF6D56C(v13);
        sub_24EF6D56C(v16);
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v27 || a1 >= v27 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v27 + v18;
LABEL_39:
        a1 += v18;
        v52 = a1;
        if (a4 >= v24 || v26 >= a3)
        {
          goto LABEL_70;
        }
      }

      sub_24EF6D56C(v13);
      sub_24EF6D56C(v16);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = a4 + v18;
      a4 += v18;
      v26 = v27;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_24F8FB140(&v52, &v51, &v50);
}

uint64_t sub_24EF6B9C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = a4;
  *(v4 + 448) = a3;
  *(v4 + 176) = a1;
  v5 = sub_24F9204D8();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = *(type metadata accessor for ActivityDefinitionDetail(0) - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00, &unk_24F9B5050) - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  *(v4 + 280) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E08, &unk_24F9B5060);
  *(v4 + 288) = v6;
  *(v4 + 296) = *(v6 - 8);
  *(v4 + 304) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  *(v4 + 312) = v7;
  v8 = *(v7 - 8);
  *(v4 + 320) = v8;
  *(v4 + 328) = *(v8 + 64);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF6BC84, 0, 0);
}

uint64_t sub_24EF6BC84()
{
  v1 = *(v0 + 448);

  sub_24F920EF8();
  if (v1 == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
    v3 = swift_task_alloc();
    *(v0 + 352) = v3;
    *v3 = v0;
    v3[1] = sub_24EF6BF5C;

    return MEMORY[0x28217F228](v0 + 136, v2, v2);
  }

  else
  {
    v5 = *(v0 + 336);
    v4 = *(v0 + 344);
    v6 = *(v0 + 320);
    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 192);
    v10 = sub_24F921038();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    (*(v6 + 16))(v5, v4, v7);
    v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v6 + 32))(v12 + v11, v5, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E10, &unk_24F9B5080);
    sub_24EF6D3E0(&qword_27F234E18, MEMORY[0x277D0D520]);
    sub_24EF6D3E0(&qword_27F234E20, MEMORY[0x277D0D500]);
    sub_24F920A28();
    v13 = swift_task_alloc();
    *(v0 + 384) = v13;
    *v13 = v0;
    v13[1] = sub_24EF6C57C;
    v14 = *(v0 + 288);

    return MEMORY[0x282164EA8](v14);
  }
}

uint64_t sub_24EF6BF5C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_24EF6C26C;
  }

  else
  {
    v2 = sub_24EF6C070;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C070()
{
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_24EF6C158;
  v4 = v0[43];

  return MEMORY[0x282164988](v4, v1, v2);
}

uint64_t sub_24EF6C158()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24EF6CF00;
  }

  else
  {
    v2 = sub_24EF6C36C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C26C()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6C36C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[24];
  v7 = sub_24F921038();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E10, &unk_24F9B5080);
  sub_24EF6D3E0(&qword_27F234E18, MEMORY[0x277D0D520]);
  sub_24EF6D3E0(&qword_27F234E20, MEMORY[0x277D0D500]);
  sub_24F920A28();
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_24EF6C57C;
  v11 = v0[36];

  return MEMORY[0x282164EA8](v11);
}

uint64_t sub_24EF6C57C(uint64_t a1)
{
  v3 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    (*(v3[37] + 8))(v3[38], v3[36]);

    return MEMORY[0x2822009F8](sub_24EF6D008, 0, 0);
  }

  else
  {
    (*(v3[37] + 8))(v3[38], v3[36]);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
    v5 = swift_task_alloc();
    v3[51] = v5;
    *v5 = v3;
    v5[1] = sub_24EF6C750;

    return MEMORY[0x28217F228](v3 + 7, v4, v4);
  }
}

uint64_t sub_24EF6C750()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_24EF6CA90;
  }

  else
  {
    v2 = sub_24EF6C86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF6C86C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_24EF6C954;
  v4 = v0[49];

  return MEMORY[0x282164998](v4, v1, v2);
}

uint64_t sub_24EF6C954(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_24EF6D108;
  }

  else
  {
    v4 = sub_24EF6CB90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EF6CA90()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

void sub_24EF6CB90()
{
  v38 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v35 = v0[29];
    v4 = v0[26];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = (v4 + 48);
    v31 = (v4 + 16);
    v32 = (v4 + 32);
    v30 = (v4 + 8);
    v8 = MEMORY[0x277D84F90];
    v33 = (v4 + 48);
    v34 = v6;
    do
    {
      v10 = v0[33];
      v9 = v0[34];
      v11 = v0[25];
      sub_24EF6D430(v5, v9);
      sub_24EF6D430(v9, v10);
      v12 = (*v7)(v10, 1, v11);
      v14 = v0[33];
      v13 = v0[34];
      if (v12 == 1)
      {
        sub_24EF6D4A0(v0[34]);
        sub_24EF6D4A0(v14);
      }

      else
      {
        v36 = v0[31];
        v15 = v8;
        v16 = v0[30];
        v18 = v0[27];
        v17 = v0[28];
        v19 = v0[25];
        (*v32)(v17, v14, v19);
        (*v31)(v18, v17, v19);
        ActivityDefinitionDetail.init(def:)(v18, v16);
        (*v30)(v17, v19);
        sub_24EF6D4A0(v13);
        v20 = v16;
        v8 = v15;
        sub_24EF1EB34(v20, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E619900(0, v15[2] + 1, 1, v15);
        }

        v22 = v8[2];
        v21 = v8[3];
        v7 = v33;
        v6 = v34;
        if (v22 >= v21 >> 1)
        {
          v8 = sub_24E619900((v21 > 1), v22 + 1, 1, v8);
        }

        v23 = v0[31];
        v8[2] = v22 + 1;
        sub_24EF1EB34(v23, v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v24 = v0[55];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v37 = v8;

  sub_24EF6A41C(&v37);
  if (v24)
  {
  }

  else
  {
    v25 = v0[43];
    v27 = v0[39];
    v26 = v0[40];

    (*(v26 + 8))(v25, v27);
    v28 = v37;

    v29 = v0[1];

    v29(v28);
  }
}

uint64_t sub_24EF6CF00()
{
  (*(v0[40] + 8))(v0[43], v0[39]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D008()
{
  (*(v0[40] + 8))(v0[43], v0[39]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D108()
{
  (*(v0[40] + 8))(v0[43], v0[39]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EF6D210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EF6D2E0(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24EF6A4C4(a1, a2, v8, v2 + v7);
}

uint64_t sub_24EF6D3E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E10, &unk_24F9B5080);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EF6D430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00, &unk_24F9B5050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF6D4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E00, &unk_24F9B5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF6D508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF6D56C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDefinitionDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF6D5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24EF6D610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EF6D66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E28, &qword_24F9B5158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF6DA74();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38, &unk_24F9B5160);
  v17 = 0;
  sub_24EF6DAC8();
  sub_24F92CC68();
  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E48, &qword_24F9F1670);
  v17 = 1;
  sub_24EF6DB2C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v11;
  sub_24EF6DC6C(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EF6DCA4(v14);
}

uint64_t sub_24EF6D8A8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E65746E69;
  }
}

uint64_t sub_24EF6D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA650F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EF6D9C4(uint64_t a1)
{
  v2 = sub_24EF6DA74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF6DA00(uint64_t a1)
{
  v2 = sub_24EF6DA74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EF6DA74()
{
  result = qword_27F234E30;
  if (!qword_27F234E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E30);
  }

  return result;
}

unint64_t sub_24EF6DAC8()
{
  result = qword_27F234E40;
  if (!qword_27F234E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E38, &unk_24F9B5160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E40);
  }

  return result;
}

unint64_t sub_24EF6DB2C()
{
  result = qword_27F234E50;
  if (!qword_27F234E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E48, &qword_24F9F1670);
    sub_24EF6DBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E50);
  }

  return result;
}

unint64_t sub_24EF6DBB0()
{
  result = qword_27F234E58;
  if (!qword_27F234E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E58);
  }

  return result;
}

uint64_t sub_24EF6DC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E38, &unk_24F9B5160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EF6DCE8()
{
  result = qword_27F234E60;
  if (!qword_27F234E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E60);
  }

  return result;
}

unint64_t sub_24EF6DD40()
{
  result = qword_27F234E68;
  if (!qword_27F234E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E68);
  }

  return result;
}

unint64_t sub_24EF6DD98()
{
  result = qword_27F234E70;
  if (!qword_27F234E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234E70);
  }

  return result;
}

unint64_t InstallPageOfferMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_24EF6DE00@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static InAppPurchaseInstallPagePresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_27F234E78 = a1;
}

void sub_24EF6DE60(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  sub_24EF70FCC();
  v4 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_24EF6DECC();
}

void sub_24EF6DECC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter(0);
    v11[0] = v0;
    v4 = *(v2 + 40);

    v4(0, v11, sel_offerButtonTapped, ObjectType, v2);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 8);
    v6 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter(0);
    v11[0] = v0;
    v7 = *(v5 + 40);

    v7(1, v11, sel_didAcceptPreInstallOffer, v6, v5);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 8);
    v9 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter(0);
    v11[0] = v0;
    v10 = *(v8 + 40);

    v10(2, v11, sel_didAcceptPreInstallOffer, v9, v8);
    swift_unknownObjectRelease();
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_24EF6E910();
    if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
    {
      sub_24EF6EDA8();
    }
  }
}

uint64_t sub_24EF6E148(uint64_t a1, uint64_t a2)
{
  sub_24EF70FCC();
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_24EF6DECC();
  return swift_unknownObjectRelease();
}

void (*sub_24EF6E1BC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EF6E25C;
}

void sub_24EF6E25C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_24EF70FCC();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_24EF6DECC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24EF70FCC();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_24EF6DECC();
  }

  swift_unknownObjectRelease();

  free(v2);
}

uint64_t InAppPurchaseInstallPagePresenter.__allocating_init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + v11) = a2;

  v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9 + v15, a3, v16);
  v18 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v9 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_24EC8415C(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage(0);
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v25 = sub_24EF71098(v24);
    v26 = a2;
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v28[1] = 0;
    v28[2] = 0;
  }

  v28[0] = v26;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v25;
  swift_beginAccess();

  sub_24EA095A4(v28, v21 + 40);
  swift_endAccess();
  sub_24EC832DC();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_24E601704(v28, &qword_27F224F98, &unk_24F974A70);
  return v21;
}

uint64_t InAppPurchaseInstallPagePresenter.init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + v11) = a2;

  v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a3, v16);
  v18 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v5 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_24EC8415C(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage(0);
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v25 = sub_24EF71098(v24);
    v26 = a2;
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v28[1] = 0;
    v28[2] = 0;
  }

  v28[0] = v26;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v25;
  swift_beginAccess();

  sub_24EA095A4(v28, v21 + 40);
  swift_endAccess();
  sub_24EC832DC();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_24E601704(v28, &qword_27F224F98, &unk_24F974A70);
  return v21;
}

void sub_24EF6E8C4(uint64_t a1)
{
  sub_24EF6E910();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

    sub_24EF6EDA8();
  }
}

void sub_24EF6E910()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack))
  {
    goto LABEL_10;
  }

  sub_24EF6F4C0(v9, v10);
  *(v0 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 24) + 16))(v12);
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + v8);
  if (!v13 || (*(v13 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) & 1) == 0 && (!*(v13 + 16) || !*(v13 + 24)))
  {
LABEL_10:
    v14 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
    v15 = *(v2 + 20);
    v16 = sub_24F91F4A8();
    (*(*(v16 - 8) + 16))(&v4[v15], v1 + v14, v16);
    *v4 = 0xD00000000000001ELL;
    *(v4 + 1) = 0x800000024FA653F0;
    type metadata accessor for JSIntentDispatcher();
    v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24EB47B88(v4, v17, "GameStoreKit/InAppPurchaseInstallPagePresenter.swift", 52, 2);
    v18 = sub_24E74EC40();
    swift_retain_n();
    v19 = sub_24F92BEF8();
    v21[3] = v18;
    v21[4] = MEMORY[0x277D225C0];
    v21[0] = v19;
    sub_24F92A958();

    sub_24EF71798(v4);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_24EF6EBF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = *a1;

  sub_24EF6F4C0(v3, v4);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v5 = a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 24) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EF6ECC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 32) = 0;
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 24) + 24))(a1, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24EF6EDA8()
{
  if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {
    return;
  }

  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v53 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v54 = v2;
  *&v56[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v55 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v56 = v3;
  if (v56[25] > 5u)
  {
    if (v56[25] < 0xAu || v56[25] != 10 && v56[25] != 11)
    {
      v4 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 96))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  if (v56[25] < 3u)
  {
    v7 = v1[3];
    v47 = v1[2];
    v48[0] = v7;
    *(v48 + 10) = *(v1 + 58);
    v8 = v1[1];
    v45 = *v1;
    v46 = v8;
    v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
    v51 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
    *v52 = v9;
    *&v52[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
    v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
    v49 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
    v50 = v10;
    memmove((v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), 0x4AuLL);
    sub_24EF7172C(&v45, &v57);
    sub_24E601704(&v49, &qword_27F234EF8, &unk_24F9B5488);
    v11 = v1[3];
    v59 = v1[2];
    *v60 = v11;
    *&v60[10] = *(v1 + 58);
    v12 = v1[1];
    v57 = *v1;
    v58 = v12;
    sub_24EF7172C(&v57, v44);
    sub_24EF6F2B4(&v57);
    sub_24EF71698(&v57);
    v13 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v13)
    {
      LOBYTE(v13) = *(v13 + 121);
    }

    v14 = *(v1 + 73);
    if (v14 == 2)
    {
      goto LABEL_15;
    }

    if (v14 == 1)
    {
      LOBYTE(v13) = (*(v1 + 1) == 1) | v13;
    }

    if (v13)
    {
LABEL_15:
      v15 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload;
      if ((*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) & 1) == 0)
      {
        sub_24EF70788();
        *(v0 + v15) = 1;
      }
    }

    return;
  }

  if (v56[25] - 4 < 2)
  {
    v16 = v53;
    v17 = v54;
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
    {
      v18 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
    }

    else
    {
      v18 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
      if (!v18)
      {
        sub_24EF7172C(&v53, &v57);
        goto LABEL_32;
      }
    }

    v31 = *(v18 + 16);
    sub_24EF7172C(&v53, &v57);

    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription);

      if (v32)
      {
        v33 = "HEADER_IN_PROGRESS_IAP";
        v34 = 0xD00000000000002FLL;
LABEL_33:
        v35._object = 0x800000024FA65370;
        v35._countAndFlagsBits = 0xD00000000000001FLL;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v37 = localizedString(_:comment:)(v35, v36);
        v38._object = (v33 | 0x8000000000000000);
        v38._countAndFlagsBits = v34;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v40 = localizedString(_:comment:)(v38, v39);
        v41 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v42 = *(v41 + 8);
          v43 = swift_getObjectType();
          (*(v42 + 80))(v37._countAndFlagsBits, v37._object, v40._countAndFlagsBits, v40._object, v43, v42, *&v16);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

LABEL_32:
    v33 = "INSTALL_PAGE_BUTTON_IN_PROGRESS";
    v34 = 0xD000000000000026;
    goto LABEL_33;
  }

  v19 = (v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  *&v52[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
  v20 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
  v51 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
  *v52 = v20;
  v21 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
  v49 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  v50 = v21;
  if (HIBYTE(*&v52[24]) <= 0xFEu)
  {
    v22 = v19[3];
    v59 = v19[2];
    *v60 = v22;
    *&v60[16] = *(v19 + 8);
    v23 = v19[1];
    v57 = *v19;
    v58 = v23;
    *&v60[24] = *&v52[24];
    v47 = v59;
    v48[0] = v22;
    *(v48 + 10) = *(v19 + 58);
    v45 = v57;
    v46 = v23;
    sub_24EF7172C(&v45, v44);
    sub_24EF6F3E8(&v57);
    v25 = v24;
    v27 = v26;
    v28 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 88))(v25, v27, v30, v29);
      swift_unknownObjectRelease();
      sub_24E601704(&v49, &qword_27F234EF8, &unk_24F9B5488);
    }

    else
    {

      sub_24E601704(&v49, &qword_27F234EF8, &unk_24F9B5488);
    }
  }
}

uint64_t sub_24EF6F2B4(uint64_t a1)
{
  v3 = sub_24EF6F3E8(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 73);
  v11 = v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  if (v10 != 1)
  {
    v14 = v3;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 64))(v14, v5, v7, v9, ObjectType, v15);
      goto LABEL_6;
    }

LABEL_7:
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v12 = *(v11 + 8);
  v13 = swift_getObjectType();
  (*(v12 + 72))(v7, v9, v13, v12);
LABEL_6:

  swift_unknownObjectRelease();
}

uint64_t sub_24EF6F3E8(uint64_t a1)
{
  v1 = *(a1 + 73);
  if (v1 == 1)
  {
    countAndFlagsBits = 0;
    v6 = 0xD000000000000025;
    v5 = "INSTALL_PAGE_SUBHEADER_PRE_BUY";
  }

  else if (v1 == 2)
  {
    v2._object = 0x800000024FA5BAA0;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
    v5 = "HEADER_PRE_REDOWNLOAD";
    v6 = 0xD000000000000021;
  }

  else
  {
    countAndFlagsBits = sub_24EF70518();
    v5 = "INSTALL_PAGE_HEADER_PRE_UPDATE";
    v6 = 0xD00000000000001ELL;
  }

  v7 = v5 | 0x8000000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v6, v8);
  return countAndFlagsBits;
}

void sub_24EF6F4C0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = a1;
  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) & 1) != 0 || *(a1 + 16) && *(a1 + 24))
  {
    v88 = type metadata accessor for InAppPurchaseInstallPage(0);
    v89 = &protocol witness table for InAppPurchaseInstallPage;
    v90 = sub_24EF71098(v5);
    *&v87 = v4;
    swift_beginAccess();

    sub_24EA095A4(&v87, v2 + 40);
    swift_endAccess();
    sub_24EC832DC();
    sub_24E601704(&v87, &qword_27F224F98, &unk_24F974A70);
  }

  v6 = *(v4 + 24);
  if (v6)
  {
    *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction) = *(v6 + 232);

    v7 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = *(v6 + 240);

    LOBYTE(v87) = 0;
    v91 = 3;
    sub_24EF70DCC(&v87);
    v8 = *(v2 + v7);
    if (v8)
    {
      v69 = v4;
      v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v8 + 32);
      *&v83 = *(v8 + 24);
      *(&v83 + 1) = v11;
      v12 = *(v9 + 56);

      v13 = v12(&v83, ObjectType, v9);
      v15 = v14;

      v16 = (v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
      *v16 = v13;
      v16[1] = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v17 = swift_getObjectType();
      v18 = *(v15 + 16);
      v18(&v75, v17, v15);
      v83 = v75;
      v84 = v76;
      v85 = v77;
      *v86 = v78;
      sub_24EF70090(&v83, &v79);
      if (v82[25] <= 2u)
      {
        v19 = (v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
        v85 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
        *v86 = v20;
        *&v86[10] = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
        v21 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
        v83 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v84 = v21;
        v22 = v80;
        *v19 = v79;
        v19[1] = v22;
        v23 = *v82;
        v19[2] = v81;
        v19[3] = v23;
        *(v19 + 58) = *&v82[10];
        sub_24EF7172C(&v79, &v70);
        sub_24E601704(&v83, &qword_27F234EF8, &unk_24F9B5488);
      }

      v24 = 0xD000000000000022;
      v25 = v78 >> 60;
      if (v78 >> 60 == 2)
      {
        v26 = "DER_PRE_BUY_FREE";
        v24 = 0xD00000000000001ELL;
LABEL_30:
        v40 = v26 | 0x8000000000000000;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = localizedString(_:comment:)(*&v24, v41);

        v18(v74, v17, v15);
        sub_24EF70090(v74, &v83);
        v70 = v74[0];
        v71 = v74[1];
        v72 = v74[2];
        v73 = v74[3];
        sub_24E88D2AC(&v70);
        sub_24EF70DCC(&v83);
        sub_24EF71698(&v83);
        (*(v15 + 80))(v2, v17, v15);
        v42 = swift_allocObject();
        swift_weakInit();
        v43 = *(v15 + 72);

        v43(v2, sub_24EF71724, v42, v17, v15);

        sub_24EF71698(&v79);
        sub_24E88D2AC(&v75);

        swift_unknownObjectRelease();
        v4 = v69;
        goto LABEL_34;
      }

      v26 = "DER_SUBSCRIPTION_OFFER";
      if (v25)
      {
        if (v25 != 8)
        {
          goto LABEL_30;
        }

        v38 = *(&v77 + 1) | *(&v78 + 1);
        v39 = *(&v76 + 1) | v76 | *(&v75 + 1);
        if ((v78 != 0x8000000000000000 || v38 | v75 | v77 | v39) && (v78 != 0x8000000000000000 || v75 != 4 || v38 | v77 | v39))
        {
          goto LABEL_30;
        }
      }

      else if (v75 != 1)
      {
        goto LABEL_30;
      }

      if (*(v8 + 121))
      {
        v26 = "DER_PRE_BUY_NOT_FREE";
      }

      else
      {
        v26 = "DER_PRE_REDOWNLOAD";
      }

      if (*(v8 + 121))
      {
        v24 = 0xD000000000000020;
      }

      else
      {
        v24 = 0xD000000000000024;
      }

      goto LABEL_30;
    }

    v27 = (v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
    *v27 = 0;
    v27[1] = 0;
    swift_unknownObjectRelease();
    v28 = sub_24EF70518();
    v30 = v29;
    v31 = *(v2 + v7);
    if (v31)
    {
      v32 = *(v31 + 88);
      if (*(v32 + 16))
      {

        v33 = sub_24E76DB58(0);
        if (v34)
        {
          v35 = (*(v32 + 56) + 16 * v33);
          v37 = *v35;
          v36 = v35[1];

LABEL_33:
          *&v79 = v28;
          *(&v79 + 1) = v30;
          *&v80 = v37;
          *(&v80 + 1) = v36;
          v81 = xmmword_24F9406F0;
          memset(v82, 0, 25);
          v85 = xmmword_24F9406F0;
          *v86 = 0uLL;
          *&v86[9] = *&v82[9];
          v83 = v79;
          v84 = v80;
          v86[25] = 0;
          sub_24EF70DCC(&v83);
          sub_24E601704(&v79, &qword_27F234EF0, &qword_24F9B5480);

          goto LABEL_34;
        }
      }
    }

    v37 = 0;
    v36 = 0;
    goto LABEL_33;
  }

LABEL_34:
  v44 = *(v4 + 16);
  if (!v44)
  {
    v49 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v49 = 0;
    *(v49 + 8) = 1;
    goto LABEL_58;
  }

  if ((sub_24EF70EB4(v45) & 1) == 0)
  {

    v50 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v50 = 0;
    *(v50 + 8) = 0;
    goto LABEL_58;
  }

  v46 = *(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v46)
  {
    v47 = *(v46 + 121);
    v48 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v48 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_54;
    }

    v47 = 0;
  }

  v51 = *(v3 + v48 + 8);
  v52 = swift_getObjectType();
  v53 = *(v51 + 16);
  swift_unknownObjectRetain();
  v53(&v75, v52, v51);
  swift_unknownObjectRelease();
  v70 = v75;
  v71 = v76;
  v72 = v77;
  v73 = v78;
  if (!(v78 >> 60))
  {
    if (v75 == 1)
    {
      goto LABEL_52;
    }

LABEL_53:
    v56 = 1;
    goto LABEL_55;
  }

  if (v78 >> 60 != 8 || ((v54 = *(&v72 + 1) | *(&v73 + 1), v55 = *(&v71 + 1) | v71 | *(&v70 + 1), v78 != 0x8000000000000000) || v54 | v75 | v72 | v55) && (v78 != 0x8000000000000000 || v75 != 4 || v54 | v72 | v55))
  {
    sub_24E88D2AC(&v70);
    goto LABEL_53;
  }

LABEL_52:
  if (v47)
  {
    goto LABEL_53;
  }

LABEL_54:
  v56 = 2;
LABEL_55:
  v57 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v57 = v56;
  *(v57 + 8) = 0;
  if (*(v44 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription) == 1)
  {
    v58._countAndFlagsBits = 0xD000000000000026;
    v58._object = 0x800000024FA65210;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    v60 = localizedString(_:comment:)(v58, v59);

    *(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = v60;
  }

  else
  {
  }

LABEL_58:
  if ((*(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0)
  {
    v61 = *(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode);
    v62 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v63 = *(v62 + 8);
      v64 = swift_getObjectType();
      v65 = v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
      v66 = *(v3 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
      v67 = *(v65 + 8);
      v68 = *(v63 + 32);

      v68(v61, v4, v66, v67, v64, v63);

      swift_unknownObjectRelease();
    }
  }
}

double sub_24EF6FD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v6, ObjectType, a2);
    sub_24EF70090(v6, v8);
    v7[0] = v6[0];
    v7[1] = v6[1];
    v7[2] = v6[2];
    v7[3] = v6[3];
    sub_24E88D2AC(v7);
    sub_24EF70DCC(v8);
    sub_24EF71698(v8);
  }

  return result;
}

double sub_24EF6FDC0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v4)
    {
      return result;
    }
  }

  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

LABEL_28:

    return result;
  }

  v5 = *(v4 + 24);
  if (v5)
  {
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);

    if (v2)
    {
      if (v6)
      {
        if (v3 == v7 && v6 == v2)
        {
        }

        else
        {
          v9 = sub_24F92CE08();

          if ((v9 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v6)
    {

      goto LABEL_20;
    }

LABEL_24:

LABEL_27:
    sub_24EF6FF5C();
    goto LABEL_28;
  }

  if (!v2)
  {
    goto LABEL_24;
  }

LABEL_17:

LABEL_20:

  return result;
}

double sub_24EF6FF5C()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
    if (!v1)
    {
      return result;
    }
  }

  v2 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v2 = 0;
  *(v2 + 8) = 0;

  sub_24EF6EDA8();
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
    v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
    v8 = *(v6 + 8);
    v9 = *(v4 + 32);

    v9(0, v1, v7, v8, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

unint64_t sub_24EF70090@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v8 = *result;
  v9 = *(result + 54);
  v10 = v9 >> 12;
  if (v9 >> 12 > 3)
  {
    v11 = v2;
    v4 = *(result + 1) | ((*(result + 5) | (*(result + 7) << 16)) << 32);
    object = *(result + 16);
    v2 = *(result + 32);
    v6 = *(result + 40);
    v12 = *(result + 48);
    v13 = *(result + 49);
    if (v9 >> 12 > 5)
    {
      v5 = *(result + 24);
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          v14._countAndFlagsBits = 0xD000000000000016;
          v14._object = 0x800000024FA5BA00;
          v15._countAndFlagsBits = 0;
          v15._object = 0xE000000000000000;
          v16 = localizedString(_:comment:)(v14, v15);
          result = v16._countAndFlagsBits;
          object = v16._object;
          LOBYTE(v10) = 0;
          v4 = v16._countAndFlagsBits >> 8;
          v17 = 9;
LABEL_31:
          LOBYTE(v8) = result;
          goto LABEL_34;
        }

        v29 = v8 | (v4 << 8);
        v30 = *(result + 56);
        v31 = v12 | (v13 << 8) | ((*(result + 50) | (*(result + 54) << 32)) << 16);
        v32 = object | *(result + 8) | v5;
        if (v32 | v2 | v6 | v30 | v29)
        {
          v33 = 0;
        }

        else
        {
          v33 = v31 == 0x8000000000000000;
        }

        if (!v33)
        {
          v34 = v32 | v2 | v6;
          if (!v30 && v29 == 1 && !v34 && v31 == 0x8000000000000000)
          {
            v35._countAndFlagsBits = 0xD00000000000001CLL;
            v35._object = 0x800000024FA651F0;
            v36._countAndFlagsBits = 0;
            v36._object = 0xE000000000000000;
            v37 = localizedString(_:comment:)(v35, v36);
            result = v37._countAndFlagsBits;
            object = v37._object;
            LOBYTE(v10) = 0;
            v4 = v37._countAndFlagsBits >> 8;
            v17 = 6;
            goto LABEL_31;
          }

          if (!v30 && v29 == 2 && !v34 && v31 == 0x8000000000000000)
          {
            object = 0;
            v5 = 0;
            v2 = 0;
            v6 = 0;
            LOBYTE(v10) = 0;
            LOBYTE(v8) = 0;
            v4 = 0;
            v17 = 12;
            goto LABEL_34;
          }

          if (!v30 && v29 == 3 && !v34 && v31 == 0x8000000000000000)
          {
            v2 = v11;
            v43 = *(v11 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
            if (v43)
            {
              v44 = *(v43 + 72);
              if (*(v44 + 16))
              {

                v45 = sub_24E76DB58(12);
                if (v46)
                {
                  v47 = (*(v44 + 56) + 16 * v45);
                  v2 = *v47;
                  object = v47[1];

                  result = v2;
LABEL_60:
                  LOBYTE(v10) = 0;
                  v4 = result >> 8;
                  v17 = 11;
                  goto LABEL_31;
                }

                v2 = v11;
              }
            }

            result = sub_24EF70518();
            object = v54;
            goto LABEL_60;
          }
        }

        result = sub_24EF70518();
        v8 = result;
        object = v48;
        v49 = *(v11 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
        if (v49)
        {
          v50 = *(v49 + 88);
          if (*(v50 + 16))
          {

            v51 = sub_24E76DB58(0);
            if (v52)
            {
              v53 = *(v50 + 56) + 16 * v51;
              v5 = *v53;
              v2 = *(v53 + 8);

LABEL_54:
              v6 = 0;
              v17 = 0;
              v4 = v8 >> 8;
              LOBYTE(v10) = 1;
              goto LABEL_34;
            }
          }
        }

        v5 = 0;
        v2 = 0;
        goto LABEL_54;
      }

      v21 = v2;
      v22 = object;
      result = v5;
      v17 = 5;
LABEL_33:
      LOBYTE(v10) = v12;
      goto LABEL_34;
    }

    if (v10 != 4)
    {
      v38 = v2;
      result = object;
      v5 = 0;
      v17 = 5;
      goto LABEL_33;
    }

    if ((v13 & 1) == 0)
    {
      v42 = v2;
      result = object;
      v5 = 0;
      v17 = 1;
      goto LABEL_33;
    }

LABEL_13:
    v18._object = 0x800000024FA5BAA0;
    v18._countAndFlagsBits = 0xD000000000000018;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = localizedString(_:comment:)(v18, v19);
    result = v20._countAndFlagsBits;
    object = v20._object;
    LOBYTE(v10) = 0;
    v4 = v20._countAndFlagsBits >> 8;
    v17 = 2;
    goto LABEL_31;
  }

  if (v9 >> 12 <= 1)
  {
    if (!v10)
    {
      v17 = 3;
      LOBYTE(v8) = 0;
      goto LABEL_34;
    }

    if ((v8 & 1) == 0)
    {
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x800000024FA5BA60;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = localizedString(_:comment:)(v39, v40);
      result = v41._countAndFlagsBits;
      object = v41._object;
      LOBYTE(v10) = 0;
      v4 = v41._countAndFlagsBits >> 8;
      v17 = 7;
      goto LABEL_31;
    }

    result = sub_24EF705FC();
    v8 = result;
    object = v23;
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v24)
    {
      v25 = *(v24 + 88);
      if (*(v25 + 16))
      {

        v26 = sub_24E76DB58(0);
        if (v27)
        {
          v28 = *(v25 + 56) + 16 * v26;
          v5 = *v28;
          v2 = *(v28 + 8);

LABEL_57:
          LOBYTE(v10) = 0;
          v4 = v8 >> 8;
          v17 = 8;
          goto LABEL_34;
        }
      }
    }

    v5 = 0;
    v2 = 0;
    goto LABEL_57;
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v2 = 0;
  v6 = 0;
  LOBYTE(v10) = 0;
  LOBYTE(v8) = 0;
  v4 = 0;
  object = 1;
  v17 = 1;
LABEL_34:
  *a2 = v8 | (v4 << 8);
  *(a2 + 8) = object;
  *(a2 + 16) = v5;
  *(a2 + 24) = v2;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10 & 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 0;
  *(a2 + 73) = v17;
  return result;
}

uint64_t sub_24EF70518()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v7 && *(v7 + 24))
  {
    v8 = *(v7 + 16);

    return v8;
  }

  else
  {
    v9._object = 0x800000024FA5BAC0;
    v9._countAndFlagsBits = 0xD000000000000015;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

uint64_t sub_24EF705FC()
{
  result = 0x6C69662E6C6C6562;
  v2 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (!v3 || *(v3 + 122) != 1)
  {
    return result;
  }

  v4 = *(v3 + 16);
  if (v4 <= 1)
  {
    v5 = 0x6C69662E6C6C6562;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 0x6C69662E6C6C6562;
LABEL_7:
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0 + v2);
      if (!v7)
      {
        return v5;
      }

      v8 = *(v7 + 80);
      if (!*(v8 + 16))
      {
        return v5;
      }

      v9 = sub_24E76DB58(0);
      if ((v10 & 1) == 0)
      {
LABEL_17:

        return v5;
      }

LABEL_16:
      v5 = *(*(v8 + 56) + 16 * v9);

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_13:
  result = 0x72616D6B63656863;
  v11 = *(v0 + v2);
  if (v11)
  {
    v8 = *(v11 + 80);
    if (*(v8 + 16))
    {
      v5 = 0x72616D6B63656863;

      v9 = sub_24E76DB58(15);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return result;
}

void sub_24EF70788()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
    {
      v2 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v2 + 8);
        v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
        if (v4)
        {
          ObjectType = swift_getObjectType();
        }

        else
        {
          ObjectType = 0;
          v9[1] = 0;
          v9[2] = 0;
        }

        v9[0] = v4;
        v9[3] = ObjectType;
        v6 = swift_getObjectType();
        v7 = *(v3 + 8);
        v8 = *(v7 + 8);

        swift_unknownObjectRetain();
        v8(v1, v9, v6, v7);

        swift_unknownObjectRelease();
        sub_24E601704(v9, &qword_27F2129B0, &unk_24F945320);
      }
    }
  }
}

void sub_24EF708D4()
{
  *&v18[10] = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v18 = v1;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16 = v2;
  if (v18[25] == 5)
  {
    v3 = *(&v16 + 1);
    v4 = *(&v15 + 1);
    v5 = v16;
    sub_24EF6FF5C();
    sub_24EF71698(&v15);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_installAction);
    if (v6)
    {
      if (*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 73) <= 2u)
      {
        v7 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
          if (v9)
          {
            ObjectType = swift_getObjectType();
          }

          else
          {
            ObjectType = 0;
            v14[1] = 0;
            v14[2] = 0;
          }

          v14[0] = v9;
          v14[3] = ObjectType;
          v11 = swift_getObjectType();
          v12 = *(v8 + 8);
          v13 = *(v12 + 8);

          swift_unknownObjectRetain();
          v13(v6, v14, v11, v12);

          swift_unknownObjectRelease();
          sub_24E601704(v14, &qword_27F2129B0, &unk_24F945320);
        }
      }
    }
  }
}

double sub_24EF70A68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

void sub_24EF70ADC()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EF710F0(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_24EF71118(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
}

uint64_t InAppPurchaseInstallPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EF710F0(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view);
  sub_24EF71118(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 40), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 56), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 64), *(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72), HIBYTE(*(v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 72)));
  return v0;
}

uint64_t InAppPurchaseInstallPagePresenter.__deallocating_deinit()
{
  InAppPurchaseInstallPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF70DCC(__int128 *a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  v18[0] = v4;
  *(v18 + 10) = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v16[1] = v5;
  v19[2] = v17;
  v20[0] = v4;
  *(v20 + 10) = *(v18 + 10);
  v19[0] = v16[0];
  v19[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 58) = *(a1 + 58);
  v3[2] = v8;
  v3[3] = v9;
  *v3 = v6;
  v3[1] = v7;
  sub_24EF7172C(v16, v14);
  sub_24EF7172C(v2, v14);
  sub_24EF71698(v19);
  v10 = v3[3];
  v14[2] = v3[2];
  v15[0] = v10;
  *(v15 + 10) = *(v3 + 58);
  v11 = v3[1];
  v14[0] = *v3;
  v14[1] = v11;
  sub_24EF7172C(v14, &v13);
  LOBYTE(v2) = sub_24F0E59AC(v14, v16);
  sub_24EF71698(v14);
  if ((v2 & 1) == 0)
  {
    sub_24EF6EDA8();
  }

  return sub_24EF71698(v16);
}

uint64_t sub_24EF70EB4(void *a1)
{
  v1 = a1[30];
  if (v1)
  {
    if (*(v1 + 125) == 1 && (v2 = qword_27F234E78) != 0)
    {
      v3 = a1[2];
      v4 = a1[3];
      v5 = *(v1 + 176);
      v6 = *(v1 + 184);
      swift_beginAccess();
      sub_24E615E00(v2 + 16, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v11[0] = v3;
      v11[1] = v4;
      v9 = *(v8 + 32);

      v9(&v15, v11, v5, v6, v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v12);
      LOBYTE(v1) = v15 ^ 1;
      if ((v15 & 0xC0) != 0x40)
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_24EF70FCC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for InAppPurchaseInstallPagePresenter(0);
    v6[0] = v0;
    v5 = *(v3 + 48);

    v5(v6, ObjectType, v3);
    swift_unknownObjectRelease();
    return sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

unint64_t sub_24EF71098(__n128 a1)
{
  result = qword_27F234ED0;
  if (!qword_27F234ED0)
  {
    type metadata accessor for InAppPurchaseInstallPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234ED0);
  }

  return result;
}

void sub_24EF710F0(uint64_t result, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, unsigned __int16 a10)
{
  if (HIBYTE(a10) <= 0xFEu)
  {
    sub_24EF71118(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, HIBYTE(a10));
  }
}

void sub_24EF71118(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (a11 > 5u)
  {
    if (a11 > 8u)
    {
      if (a11 == 9)
      {
        goto LABEL_21;
      }

      if (a11 != 10)
      {
        if (a11 != 11)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (a11 == 6 || a11 == 7)
      {
LABEL_21:

        return;
      }

      if (a11 != 8)
      {
        return;
      }
    }

    goto LABEL_21;
  }

  if (a11 <= 1u)
  {
    if (!a11)
    {

      a1 = a5;
      a2 = a6;
      a3 = a7;
      a4 = a8;
    }

    sub_24EF712B4(a1, a2, a3, a4);
  }

  else
  {
    if (a11 == 2)
    {
      goto LABEL_21;
    }

    if (a11 == 4 || a11 == 5)
    {
      v11 = a3;
      v16 = a4;
    }
  }
}

void sub_24EF712B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_24EF7130C()
{
  result = qword_27F234ED8;
  if (!qword_27F234ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234ED8);
  }

  return result;
}

uint64_t sub_24EF71360@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for InAppPurchaseInstallPagePresenter(uint64_t a1)
{
  result = qword_27F234EE0;
  if (!qword_27F234EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF714D8(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EF716EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF71798(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

GameStoreKit::AccountSectionLink::LinkDisplayType_optional __swiftcall AccountSectionLink.LinkDisplayType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AccountSectionLink.LinkDisplayType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x697461676976616ELL;
  }
}

uint64_t sub_24EF718A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x697461676976616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E6FLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0x697461676976616ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E6FLL;
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

uint64_t sub_24EF7194C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF719D0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EF71A40()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF71AC0@<X0>(char *a2@<X8>)
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

void sub_24EF71B20(uint64_t *a1@<X8>)
{
  v2 = 0x697461676976616ELL;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double AccountSectionLink.init(id:autoUpdatingTitle:detail:action:displayType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a7) = *a7;
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    sub_24E9BBAA8(a1);
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v27) = a7;
    a7 = v19;
    v28 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = a7;
    v31 = v24;
    LOBYTE(a7) = BYTE4(v27);
    a6 = v22;
    a5 = v21;
    a4 = v20;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v32);
  }

  result = *&v35;
  v26 = v36;
  *(a8 + 48) = v35;
  *(a8 + 64) = v26;
  *(a8 + 80) = v37;
  *(a8 + 16) = v29;
  *(a8 + 24) = a3;
  *a8 = a4;
  *(a8 + 8) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t AccountSectionLink.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F928388();
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v46 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v45 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v6;
    v23 = v22;
    (*(v21 + 8))(v8, v5);
    v47 = v20;
    v48 = v23;
  }

  sub_24F92C7F8();
  v24 = *(v9 + 8);
  v24(v17, v49);
  v25 = v46;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v24(v14, v49);
  if (v28)
  {
    sub_24F928398();
    v29 = sub_24F928348();
    v31 = v30;
    v32 = v49;
    v24(v11, v49);
    v33 = v45;
    *v45 = v29;
    v33[1] = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = v26;
    *(v34 + 24) = v28;
    v33[2] = sub_24EF7220C;
    v33[3] = v34;
    type metadata accessor for Action(0);
    v35 = v46;
    sub_24F928398();
    v36 = v44;
    v37 = static Action.tryToMakeInstance(byDeserializing:using:)(v11, v44);
    v24(v11, v32);
    v33[4] = v37;
    sub_24F928398();
    sub_24EF7223C();
    sub_24F928208();
    v38 = sub_24F9285B8();
    (*(*(v38 - 8) + 8))(v36, v38);
    v24(v35, v32);
    result = (v24)(v11, v32);
    *(v33 + 40) = v47;
  }

  else
  {
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = 0x656C746974;
    v41[1] = 0xE500000000000000;
    v41[2] = &type metadata for AccountSectionLink;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v44, v42);
    v24(v25, v49);
    return sub_24E6585F8((v45 + 6));
  }

  return result;
}

uint64_t sub_24EF721D4()
{

  return swift_deallocObject();
}

uint64_t sub_24EF7220C()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_24EF7223C()
{
  result = qword_27F234F00;
  if (!qword_27F234F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F00);
  }

  return result;
}

uint64_t AccountSectionLink.detail.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountSectionLink.hash(into:)(uint64_t a1)
{
  (*(v1 + 16))();
  sub_24F92B218();

  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
}

uint64_t AccountSectionLink.hashValue.getter()
{
  v1 = sub_24F92D068();
  (*(v0 + 16))(v1);
  sub_24F92B218();

  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF72510()
{
  v1 = sub_24F92D068();
  (*(v0 + 16))(v1);
  sub_24F92B218();

  if (*(v0 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit18AccountSectionLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 16))();
  v6 = v5;
  if (v4 == (*(a2 + 16))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11 || (*a1 != *a2 || v10 != v11) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
LABEL_29:
    v17 = 0;
    return v17 & 1;
  }

  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v13 = 0x6E6F69746361;
  }

  else
  {
    v13 = 0x697461676976616ELL;
  }

  if (*(a1 + 40))
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xEA00000000006E6FLL;
  }

  if (v12)
  {
    v15 = 0x6E6F69746361;
  }

  else
  {
    v15 = 0x697461676976616ELL;
  }

  if (v12)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xEA00000000006E6FLL;
  }

  if (v13 == v15 && v14 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  return v17 & 1;
}

unint64_t sub_24EF72778()
{
  result = qword_27F234F08;
  if (!qword_27F234F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F08);
  }

  return result;
}

unint64_t sub_24EF727D0()
{
  result = qword_27F234F10;
  if (!qword_27F234F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F10);
  }

  return result;
}

uint64_t sub_24EF72824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24EF7286C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t Bool.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928278();
  v5 = sub_24F9285B8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_24F928388();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4 & 1;
}

uint64_t sub_24EF72990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928278();
  v7 = sub_24F9285B8();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_24F928388();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *a3 = v6 & 1;
  return result;
}

uint64_t MetricsIdStore.__allocating_init(accountStore:bag:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24EF78FD0(a1, a2);

  return v4;
}

uint64_t sub_24EF72AB0()
{
  v1 = *(v0 + 8);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24F92C418();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF72B4C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92C418();

  return sub_24F92B218();
}

uint64_t sub_24EF72BE8()
{
  v1 = *(v0 + 8);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24F92C418();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF72C80(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  if ((sub_24F92C408() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_24F92CE08();
}

uint64_t sub_24EF72D74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F234F18);
  __swift_project_value_buffer(v4, qword_27F234F18);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void *sub_24EF72ED0()
{
  sub_24E60CC20(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F60, &qword_24F9B5710);
  swift_allocObject();
  result = sub_24EA50028();
  off_27F234F30 = result;
  return result;
}

void *sub_24EF72F30()
{
  sub_24E60CADC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F88, &unk_24F9B5750);
  swift_allocObject();
  result = sub_24EA50028();
  off_27F234F38 = result;
  return result;
}

void *sub_24EF72F90()
{
  sub_24E60CD5C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F68, &unk_24F9B5728);
  swift_allocObject();
  result = sub_24EA50028();
  off_27F234F40 = result;
  return result;
}

uint64_t MetricsIdStore.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = sub_24EF78FD0(a1, a2);

  return v3;
}

uint64_t sub_24EF73034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_24F927D88();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF73164, 0, 0);
}

uint64_t sub_24EF73164()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    v2 = sub_24F92B098();
    v1 = [objc_opt_self() keyWithName:v2 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    sub_24F92A448();
    sub_24F92A408();
    (*(v4 + 8))(v3, v5);
  }

  *(v0 + 200) = v1;
  v6 = *(v0 + 136);
  if (v6)
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = sub_24F92B098();
    v11 = [objc_opt_self() keyWithName:v10 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    sub_24F92A448();
    sub_24F92A408();
    (*(v13 + 8))(v12, v14);

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
  }

  *(v0 + 208) = v6;
  v15 = *(v0 + 120);
  if (v15)
  {

    v16 = v15;
    v17 = v15;
  }

  else
  {
    v18 = *(*(v0 + 144) + 16);

    v19 = [v18 ams_activeiTunesAccount];
    v17 = v19;
    if (!v19)
    {
      v25 = v1;

      goto LABEL_19;
    }

    v15 = *(v0 + 120);
    v16 = v19;
  }

  v20 = v15;
  v21 = v1;

  v22 = v20;
  v23 = [v16 identifier];
  if (v23)
  {
    v24 = v23;
    sub_24F92B0C8();
  }

LABEL_19:
  *(v0 + 216) = 0;
  *(v0 + 224) = v17;
  v26 = *(v0 + 144);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;
  if (*(v26 + 24) == 1)
  {
    if (qword_27F210CA0 != -1)
    {
      swift_once();
    }

    v27 = off_27F234F38;
    v28 = swift_task_alloc();
    *(v28 + 16) = v0 + 16;
    v29 = swift_task_alloc();
    v29[2] = sub_24EF79358;
    v29[3] = v28;
    v29[4] = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    sub_24F92BF18();

    v30 = *(v0 + 88);
    v31 = *(v0 + 96);

    if (v31)
    {

      swift_bridgeObjectRelease_n();
      v32 = *(v0 + 224);

      v33 = *(v0 + 8);

      return v33(v30, v31);
    }

    v35 = swift_task_alloc();
    *(v0 + 232) = v35;
    *v35 = v0;
    v36 = sub_24EF736BC;
  }

  else
  {
    v35 = swift_task_alloc();
    *(v0 + 256) = v35;
    *v35 = v0;
    v36 = sub_24EF73B2C;
  }

  v35[1] = v36;

  return sub_24EF7603C(v17, v1, v7, v6);
}

uint64_t sub_24EF736BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_24EF73800;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_24EF738A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF73800()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EF738A4()
{
  v1 = v0[31];
  v16 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = [v1 identifierForKey_];

  v6 = sub_24F92B0D8();
  v17 = v7;
  v18 = v6;
  v8 = v7;

  v9 = off_27F234F38;
  v10 = swift_task_alloc();
  v10[2] = v0 + 2;
  v10[3] = v6;
  v10[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[13] = v11;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v12 = swift_task_alloc();
  v12[2] = sub_24EF79374;
  v12[3] = v10;
  v12[4] = v9;
  sub_24F92BF08();

  (*(v2 + 8))(v3, v4);

  v13 = v0[28];

  v14 = v0[1];

  return v14(v18, v17);
}

uint64_t sub_24EF73B2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_24EF73D58;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = sub_24EF73C70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF73C70()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = [v1 identifierForKey_];

  v4 = sub_24F92B0D8();
  v6 = v5;

  v7 = v0[28];

  v8 = v0[1];

  return v8(v4, v6);
}

uint64_t sub_24EF73D58()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t *sub_24EF73DFC(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_24F927D88();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  if (a1)
  {
    v16 = a1;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v65 = v16;
    v22 = a1;
    v23 = sub_24F92B098();
    v24 = [objc_opt_self() keyWithName:v23 crossDeviceSync:1 isActiveITunesAccountRequired:1];

    if (qword_27F210B98 != -1)
    {
      swift_once();
    }

    sub_24F92A448();
    sub_24F92A408();
    (*(v13 + 8))(v15, v12);

    a3 = v66;
    v18 = v67;
    v16 = v65;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v64 = a3;
  v21 = sub_24F92B098();
  v65 = [objc_opt_self() keyWithName:v21 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  if (qword_27F210B98 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v13 + 8))(v15, v12);

  a3 = v64;
  v16 = v65;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v17 = a1;
  v18 = a4;
  if (a2)
  {
LABEL_4:

    v19 = a2;
    v20 = a2;
    goto LABEL_13;
  }

LABEL_11:
  v25 = *(v4 + 16);

  v26 = [v25 ams_activeiTunesAccount];
  v20 = v26;
  if (!v26)
  {
    v35 = v16;

    goto LABEL_19;
  }

  v19 = v26;
LABEL_13:
  v27 = a2;
  v28 = v16;

  v29 = v27;
  v30 = [v19 identifier];
  if (!v30)
  {

LABEL_19:
    v33 = 0;
    v34 = 0;
    goto LABEL_20;
  }

  v66 = 0;
  v67 = 0;
  v31 = v30;
  sub_24F92B0C8();

  v33 = v66;
  v34 = v67;
  if (!v67)
  {
    v33 = 0;
  }

LABEL_20:
  v68[0] = v33;
  v68[1] = v34;
  v68[2] = v16;
  v68[3] = a3;
  v68[4] = v18;
  if (*(v4 + 24) != 1)
  {
    v40 = v69;
    v41 = sub_24EF76A7C(v20, v16, a3, v18);
    if (!v40)
    {
      v42 = v41;

      v43 = [v42 identifierForKey_];

      a3 = sub_24F92B0D8();

      return a3;
    }

LABEL_28:

    swift_bridgeObjectRelease_n();

    return a3;
  }

  v64 = a3;
  v65 = v20;
  v60 = v4;
  if (qword_27F210CA0 != -1)
  {
    v32 = swift_once();
  }

  a3 = &v57;
  v36 = off_27F234F38;
  MEMORY[0x28223BE20](v32);
  *(&v57 - 2) = v68;
  MEMORY[0x28223BE20](v37);
  *(&v57 - 4) = sub_24EF794C8;
  *(&v57 - 3) = v38;
  *(&v57 - 2) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v39 = v69;
  sub_24F92BF18();

  if (!v67)
  {
    v20 = v65;
    v44 = sub_24EF76A7C(v65, v16, v64, v18);
    if (!v39)
    {
      v46 = v44;

      v47 = [v46 identifierForKey_];

      a3 = sub_24F92B0D8();
      v49 = v48;

      v64 = &v57;
      v69 = off_27F234F38;
      MEMORY[0x28223BE20](v50);
      v59 = &v57 - 6;
      *(&v57 - 4) = v68;
      *(&v57 - 3) = a3;
      *(&v57 - 2) = v49;
      v60 = *(v51 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v66 = v52;
      v58 = sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      v53 = v61;
      v54 = v62;
      v55 = sub_24F92C6A8();
      v58 = &v57;
      MEMORY[0x28223BE20](v55);
      v56 = v59;
      *(&v57 - 4) = sub_24EF794E4;
      *(&v57 - 3) = v56;
      *(&v57 - 2) = v69;
      sub_24F92BF08();

      (*(v63 + 8))(v53, v54);

      return a3;
    }

    goto LABEL_28;
  }

  a3 = v66;
  swift_bridgeObjectRelease_n();

  return a3;
}

uint64_t sub_24EF74670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = v8;
  sub_24E606048(&v15, v13);
  v10 = v9;
  sub_24E614DB0(&v14, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *a1;
  sub_24E821334(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v15, &unk_27F23B740, &qword_24F93EC10);

  result = sub_24EB715C4(&v14);
  *a1 = v13[0];
  return result;
}

void sub_24EF74740(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_24E76E224(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
}

uint64_t sub_24EF74798(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  return MEMORY[0x2822009F8](sub_24EF747BC, 0, 0);
}

uint64_t sub_24EF747BC()
{
  v1 = v0[30];
  v2 = sub_24E608448(MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[30];
    v4 = v3;
  }

  else
  {
    v4 = [*(v0[31] + 16) ams_activeiTunesAccount];
    v3 = v0[30];
  }

  v0[32] = v4;
  v5 = v0[29];
  v6 = v5[2];
  v0[33] = v6;
  v7 = v3;
  if (v6)
  {
    v0[34] = v2;
    v0[35] = 0;
    v8 = v5[4];
    v0[36] = v8;
    v9 = v5[6];
    v0[37] = v9;
    v10 = v5[5];
    v11 = v8;

    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = sub_24EF74938;
    v13 = v0[32];

    return sub_24EF74F5C(v11, v10, v9, v13);
  }

  else
  {

    v15 = v0[1];

    return v15(v2);
  }
}

uint64_t sub_24EF74938(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_24EF74EE8;
  }

  else
  {
    v4 = sub_24EF74A54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24EF74A54()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 224) = v2;
  v53 = (v0 + 16);
  v54 = (v0 + 64);
  v4 = (v0 + 112);
  v50 = (v0 + 160);
  v55 = (v0 + 192);
  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = *(v0 + 272);
  v49 = (63 - v7) >> 6;
  v51 = v1;

  v10 = 0;
  for (i = v1 + 64; ; v5 = i)
  {
    if (!v8)
    {
      if (v49 <= v10 + 1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v49;
      }

      v14 = v13 - 1;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v49)
        {
          v8 = 0;
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          v10 = v14;
          *v54 = 0u;
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v12 = v10;
LABEL_16:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v51 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_24E643A9C(*(v51 + 56) + 32 * v16, v50);
    *(v0 + 64) = v19;
    *(v0 + 72) = v18;
    sub_24E612B0C(v50, (v0 + 80));

LABEL_17:
    v20 = *(v0 + 80);
    *v4 = *v54;
    v4[1] = v20;
    v4[2] = *(v0 + 96);
    v21 = *(v0 + 120);
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 112);
    sub_24E643A9C(v0 + 128, v0 + 32);
    *(v0 + 16) = v22;
    *(v0 + 24) = v21;

    sub_24E601704(v4, &qword_27F234F80, &unk_24F9B5740);
    v23 = *(v0 + 24);
    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *v53;
    sub_24E612B0C((v0 + 32), v55);
    v26 = sub_24E76D644(v24, v23);
    v27 = v9[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_41;
    }

    v30 = v25;
    if (v9[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8AD8E4();
      }
    }

    else
    {
      sub_24E89873C(v29, isUniquelyReferenced_nonNull_native & 1);
      v31 = sub_24E76D644(v24, v23);
      if ((v30 & 1) != (v32 & 1))
      {

        sub_24F92CF88();
        return;
      }

      v26 = v31;
    }

    v9 = *(v0 + 224);
    if (v30)
    {

      v11 = (v9[7] + 32 * v26);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_24E612B0C(v55, v11);
    }

    else
    {
      v9[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v9[6] + 16 * v26);
      *v33 = v24;
      v33[1] = v23;
      sub_24E612B0C(v55, (v9[7] + 32 * v26));
      v34 = v9[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_42;
      }

      v9[2] = v36;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v4 = (v0 + 112);
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *v53 = 0u;
LABEL_30:
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 264);

  if (v38 + 1 == v39)
  {

    v40 = *(v0 + 8);

    v40(v9);
  }

  else
  {
    v41 = *(v0 + 280);
    *(v0 + 272) = v9;
    *(v0 + 280) = v41 + 1;
    v42 = (*(v0 + 232) + 24 * v41);
    v43 = v42[7];
    *(v0 + 288) = v43;
    v44 = v42[9];
    *(v0 + 296) = v44;
    v45 = v42[8];
    v46 = v43;

    v47 = swift_task_alloc();
    *(v0 + 304) = v47;
    *v47 = v0;
    v47[1] = sub_24EF74938;
    v48 = *(v0 + 256);

    sub_24EF74F5C(v46, v45, v44, v48);
  }
}

uint64_t sub_24EF74EE8()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF74F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_24F927D88();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF75024, 0, 0);
}

uint64_t sub_24EF75024()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    v1 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
  }

  *(v0 + 136) = v1;
  if (*(*(v0 + 104) + 24) == 1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    if (v1)
    {
      v4 = v2;
      v5 = v3;

      v6 = v1;
      v7 = [v6 identifier];
      if (v7)
      {
        v8 = v7;
        sub_24F92B0C8();
      }
    }

    else
    {
      v12 = v2;
      v13 = v3;
    }

    *(v0 + 144) = 0;
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v15;
    *(v0 + 48) = v14;
    if (qword_27F210CA8 != -1)
    {
      swift_once();
    }

    v16 = off_27F234F40;
    v17 = swift_task_alloc();
    *(v17 + 16) = v0 + 16;
    v18 = swift_task_alloc();
    v18[2] = sub_24EF79328;
    v18[3] = v17;
    v18[4] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225638, &qword_24F975EF0);
    sub_24F92BF18();

    v19 = *(v0 + 56);

    if (v19)
    {

      v20 = *(v0 + 8);

      return v20(v19);
    }

    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v11 = sub_24EF75348;
  }

  else
  {
    v9 = *(v0 + 96);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v11 = sub_24EF75744;
  }

  v10[1] = v11;
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);

  return sub_24EF788A4(v22, v1, v25, v23, v24);
}

uint64_t sub_24EF75348(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_24EF756B4;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_24EF75470;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF75470()
{
  v1 = v0[21];
  v13 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[9];
  v5 = off_27F234F40;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[8] = v7;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = swift_task_alloc();
  v8[2] = sub_24EF79330;
  v8[3] = v6;
  v8[4] = v5;
  sub_24F92BF08();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24EF756B4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF75744(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24EF758E0;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_24EF7586C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF7586C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EF758E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24EF7594C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_24E76E224(a2), (v4 & 1) != 0))
  {
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_24EF7599C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = v6;
  sub_24E606048(&v13, v11);
  v8 = v7;
  sub_24E614DB0(&v12, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *a1;
  sub_24E8214A8(a3, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v13, &unk_27F23B740, &qword_24F93EC10);

  result = sub_24EB715C4(&v12);
  *a1 = v11[0];
  return result;
}

uint64_t sub_24EF75A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF75B30, 0, 0);
}

uint64_t sub_24EF75B30()
{
  v1 = sub_24F92B098();
  v2 = objc_opt_self();
  v13 = [v2 keyWithName:v1 crossDeviceSync:1 isActiveITunesAccountRequired:1];
  v0[11] = v13;

  if (qword_27F210B98 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  sub_24F92A448();
  sub_24F92A408();
  v6 = *(v3 + 8);
  v6(v4, v5);

  v7 = sub_24F92B098();
  v8 = [v2 keyWithName:v7 crossDeviceSync:1 isActiveITunesAccountRequired:1];

  sub_24F92A448();
  sub_24F92A408();
  v6(v4, v5);

  v10 = v0[4];
  v9 = v0[5];
  v0[12] = v9;
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_24EF75D7C;

  return sub_24EF7603C(0, v13, v10, v9);
}

uint64_t sub_24EF75D7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_24EF75F20;
  }

  else
  {
    v6 = *(v4 + 88);

    *(v4 + 120) = a1;
    v5 = sub_24EF75EB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF75EB0()
{
  **(v0 + 48) = *(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EF75F20()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_24F927D88();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF76104, 0, 0);
}

uint64_t sub_24EF76104()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = v2;
  }

  else
  {
    v4 = [*(*(v0 + 104) + 16) ams_activeiTunesAccount];
    v3 = v4;
    if (!v4)
    {
      v11 = *(v0 + 80);

      goto LABEL_10;
    }

    v1 = *(v0 + 72);
    v2 = v4;
  }

  v5 = *(v0 + 80);
  v6 = v1;
  v7 = v5;

  v8 = v6;
  v9 = [v2 identifier];
  if (v9)
  {
    v10 = v9;
    sub_24F92B0C8();
  }

LABEL_10:
  *(v0 + 136) = 0;
  *(v0 + 144) = v3;
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v14;
  *(v0 + 48) = v13;
  if (*(v12 + 24) == 1)
  {
    if (qword_27F210C98 != -1)
    {
      swift_once();
    }

    v15 = off_27F234F30;
    v16 = swift_task_alloc();
    *(v16 + 16) = v0 + 16;
    v17 = swift_task_alloc();
    v17[2] = sub_24EF792F0;
    v17[3] = v16;
    v17[4] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F58, &unk_24F9B5700);
    sub_24F92BF18();

    v18 = *(v0 + 56);

    if (v18)
    {

      v19 = *(v0 + 8);

      return v19(v18);
    }

    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v22 = sub_24EF76428;
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v22 = sub_24EF76828;
  }

  v21[1] = v22;
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);

  return sub_24EF77BB0(v3, v24, v25, v23);
}

uint64_t sub_24EF76428(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_24EF76550;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_24EF765E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF76550()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF765E4()
{
  v1 = v0[21];
  v13 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v12 = v0[10];
  v5 = off_27F234F30;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 2;
  *(v6 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v0[8] = v7;
  sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v8 = swift_task_alloc();
  v8[2] = sub_24EF7930C;
  v8[3] = v6;
  v8[4] = v5;
  sub_24F92BF08();

  (*(v3 + 8))(v2, v4);

  v9 = v0[21];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_24EF76828(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24EF76950;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_24EF769E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EF76950()
{

  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF769E4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_24EF76A7C(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v11 = sub_24F927D88();
  v51 = *(v11 - 8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v46 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = v5;
    v15 = a3;
    v16 = a1;
    v17 = a1;
  }

  else
  {
    v18 = [*(v4 + 16) ams_activeiTunesAccount];
    v17 = v18;
    if (!v18)
    {
      v25 = a2;

      v23 = 0;
      goto LABEL_11;
    }

    v14 = v5;
    v15 = a3;
    v16 = v18;
  }

  a1 = a1;
  v19 = a2;

  v20 = a1;
  v21 = [v16 identifier];
  if (!v21)
  {

    v23 = 0;
    a3 = v15;
    v6 = v14;
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v48 = 0;
  v49 = 0;
  a1 = v21;
  sub_24F92B0C8();

  v23 = v48;
  if (!v49)
  {
    v23 = 0;
  }

  a3 = v15;
  v6 = v14;
  v24 = v49;
LABEL_12:
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = a2;
  v50[3] = a3;
  v50[4] = a4;
  if (*(v4 + 24) != 1)
  {
    v29 = sub_24EF77230(v17, a2, a3, a4);
    if (!v6)
    {
      a1 = v29;

      return a1;
    }

LABEL_20:

    return a1;
  }

  v43 = v11;
  v44 = a3;
  v47 = v17;
  v45 = v4;
  if (qword_27F210C98 != -1)
  {
    v22 = swift_once();
  }

  v26 = off_27F234F30;
  MEMORY[0x28223BE20](v22);
  v40[-2] = v50;
  MEMORY[0x28223BE20](v27);
  v40[-4] = sub_24EF794C4;
  v40[-3] = v28;
  v40[-2] = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F58, &unk_24F9B5700);
  sub_24F92BF18();

  a1 = v48;
  if (!v48)
  {
    v17 = v47;
    v30 = sub_24EF77230(v47, a2, v44, a4);
    if (!v6)
    {
      a1 = v30;
      v45 = v40;
      v32 = off_27F234F30;
      MEMORY[0x28223BE20](v30);
      v41 = v32;
      v42 = &v40[-4];
      v40[-2] = v50;
      v40[-1] = v33;
      v44 = v32[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v48 = v34;
      sub_24EF79394(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      v35 = v46;
      v36 = v43;
      v37 = sub_24F92C6A8();
      v40[1] = v40;
      MEMORY[0x28223BE20](v37);
      v39 = v41;
      v38 = v42;
      v40[-4] = sub_24EF794EC;
      v40[-3] = v38;
      v40[-2] = v39;
      sub_24F92BF08();

      (*(v51 + 8))(v35, v36);

      return a1;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t sub_24EF76FDC(void *a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = v6;
  sub_24E606048(&v14, v12);
  v8 = v7;
  sub_24E614DB0(&v13, v12);
  v9 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *a1;
  sub_24E821608(v9, a2, isUniquelyReferenced_nonNull_native);
  sub_24E601704(&v14, &unk_27F23B740, &qword_24F93EC10);

  result = sub_24EB715C4(&v13);
  *a1 = v12[0];
  return result;
}

unint64_t sub_24EF770A4@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_24E76E224(a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_24EF770F4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF77168()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EF771BC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

id sub_24EF77230(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v6 = sub_24F92AAE8();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v49 - v9;
  v10 = objc_opt_self();
  v11 = sub_24F92B098();
  v12 = *(v4 + 32);
  v54 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v55 = v12;
  v13 = sub_24F92A328();
  v53 = a1;
  v14 = [v10 identifierStoreWithAccount:a1 bagNamespace:v11 bag:v13];

  swift_unknownObjectRelease();
  v15 = [v14 promiseWithTimeout_];

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v49 = (v16 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = dispatch_semaphore_create(1);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v65 = sub_24EF79274;
  v66 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_24E955CC4;
  ObjectType = &block_descriptor_17_2;
  v20 = _Block_copy(&aBlock);
  v56 = v17;

  v21 = v18;

  [v15 addErrorBlock_];
  _Block_release(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v21;
  v65 = sub_24EF79294;
  v66 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_24ECAEFC8;
  ObjectType = &block_descriptor_23;
  v23 = _Block_copy(&aBlock);
  v24 = v21;
  v57 = v16;

  v58 = v15;
  v25 = v15;
  v26 = v24;
  [v25 addSuccessBlock_];
  _Block_release(v23);
  sub_24F92C118();
  swift_beginAccess();
  v27 = *(v17 + 16);
  if (v27)
  {
    v28 = v27;
    if (qword_27F210C90 != -1)
    {
      swift_once();
    }

    v29 = v60;
    v30 = __swift_project_value_buffer(v60, qword_27F234F18);
    v31 = v52;
    (*(v59 + 16))(v52, v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v32 = v53;
    if (v53)
    {
      v33 = sub_24E69A5C4(0, &unk_27F226CE0, 0x277CB8F30);
      v34 = v32;
    }

    else
    {
      v34 = 0;
      v33 = 0;
      v62 = 0;
      v63 = 0;
    }

    aBlock = v34;
    ObjectType = v33;
    v39 = v32;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v40 = sub_24F92A328();
    ObjectType = swift_getObjectType();
    aBlock = v40;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    v38 = v60;
    sub_24F92A5A8();

    (*(v59 + 8))(v31, v38);
LABEL_10:
    swift_willThrow();

    return v38;
  }

  v35 = v51;
  v36 = v50;
  v37 = v49;
  swift_beginAccess();
  if (!*v37)
  {
    if (qword_27F210C90 != -1)
    {
      swift_once();
    }

    v42 = v60;
    v43 = __swift_project_value_buffer(v60, qword_27F234F18);
    (*(v59 + 16))(v36, v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v44 = v53;
    if (v53)
    {
      v45 = sub_24E69A5C4(0, &unk_27F226CE0, 0x277CB8F30);
      v46 = v44;
    }

    else
    {
      v46 = 0;
      v45 = 0;
      v62 = 0;
      v63 = 0;
    }

    aBlock = v46;
    ObjectType = v45;
    v47 = v44;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v48 = sub_24F92A328();
    ObjectType = swift_getObjectType();
    aBlock = v48;
    sub_24F9283B8();
    sub_24E601704(&aBlock, &qword_27F2129B0, &unk_24F945320);
    v38 = v60;
    sub_24F92A5A8();

    (*(v59 + 8))(v36, v38);
    sub_24EF7929C();
    swift_allocError();
    goto LABEL_10;
  }

  v38 = *v37;
  [v38 setIncludeAccountMatchStatus_];
  [v38 setIsActiveITunesAccountRequired_];

  return v38;
}

uint64_t sub_24EF77AEC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_24F92C128();
}

uint64_t sub_24EF77B50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_24F92C128();
}

uint64_t sub_24EF77BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = sub_24F92AAE8();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF77C78, 0, 0);
}

uint64_t sub_24EF77C78()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = objc_opt_self();
  v4 = sub_24F92B098();
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v0[35] = *(v1 + 32);
  v0[36] = v5;
  v6 = [v3 identifierStoreWithAccount:v2 bagNamespace:v4 bag:sub_24F92A328()];
  v0[37] = v6;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_24EF77E20;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234F48, &unk_24F9B56F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E66DB94;
  v0[13] = &block_descriptor_95;
  v0[14] = v7;
  [v6 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EF77E20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_24EF77FEC;
  }

  else
  {
    v2 = sub_24EF77F30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF77F30()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  [v2 setIncludeAccountMatchStatus_];
  [v2 setIsActiveITunesAccountRequired_];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24EF77FEC(uint64_t a1)
{
  v2 = v1[37];
  swift_willThrow();

  if (qword_27F210C90 != -1)
  {
    swift_once();
  }

  v4 = v1[33];
  v3 = v1[34];
  v5 = v1[32];
  v6 = v1[27];
  v7 = __swift_project_value_buffer(v5, qword_27F234F18);
  (*(v4 + 16))(v3, v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  if (v6)
  {
    v8 = sub_24E69A5C4(0, &unk_27F226CE0, 0x277CB8F30);
    v9 = v1[27];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v1[19] = 0;
    v1[20] = 0;
    v9 = v1[27];
  }

  v12 = v1[33];
  v11 = v1[34];
  v13 = v1[32];
  v1[18] = v10;
  v1[21] = v8;
  v14 = v9;
  sub_24F9283B8();
  sub_24E601704((v1 + 18), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v15 = sub_24F92A328();
  v1[25] = swift_getObjectType();
  v1[22] = v15;
  sub_24F9283B8();
  sub_24E601704((v1 + 22), &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t MetricsIdStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EF78320@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24EF783E4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

double sub_24EF78350@<D0>(void (*a1)(__int128 *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);

  a1(&v8, &v7);

  result = *&v8;
  *a3 = v8;
  return result;
}

void *sub_24EF783E4(char *a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_24F928388();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24F928398();
  v15 = sub_24F928348();
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v14, v3);
  if (!v17)
  {
    v20 = 0xE400000000000000;
    v19 = 1701667182;
    v22 = a1;
LABEL_11:
    v28 = sub_24F92AC38();
    sub_24EF79394(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v29 = v19;
    v29[1] = v20;
    v29[2] = &type metadata for MetricsIdentifierKeyContext;
    (*(*(v28 - 1) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v39, v30);
    v18(v22, v3);
    return v28;
  }

  v36 = v15;
  v38 = v17;
  v19 = 0x6E795373736F7263;
  v20 = 0xEF65636976654463;
  sub_24F928398();
  v35 = sub_24F928278();
  v21 = v35;
  v18(v11, v3);
  if (v21 == 2)
  {
    v22 = a1;
LABEL_10:

    goto LABEL_11;
  }

  v19 = 0x73656D614E676162;
  v20 = 0xEC00000065636170;
  sub_24F928398();
  v34 = sub_24F928348();
  v24 = v23;
  v18(v8, v3);
  v25 = v3;
  v22 = a1;
  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = v37;
  sub_24F928398();
  v27 = sub_24F928278();
  v18(v26, v3);
  if (v27 == 2)
  {
    if (v36 == 0x644972657375 && v38 == 0xE600000000000000)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_24F92CE08();
    }
  }

  v32 = sub_24F92B098();

  v28 = [objc_opt_self() keyWithName:v32 crossDeviceSync:v35 & 1 isActiveITunesAccountRequired:v27 & 1];

  v33 = sub_24F9285B8();
  (*(*(v33 - 8) + 8))(v39, v33);
  v18(a1, v25);
  return v28;
}

uint64_t sub_24EF788A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[38] = a3;
  v9 = a3;

  v10 = swift_task_alloc();
  v5[41] = v10;
  *v10 = v5;
  v10[1] = sub_24EF78980;

  return sub_24EF7603C(a2, v9, a4, a5);
}

uint64_t sub_24EF78980(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 336) = a1;

  if (v1)
  {
    v5 = *(v3 + 304);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24EF78AD8, 0, 0);
  }
}

_OWORD *sub_24EF78AD8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  *(v3 + 32) = v2;
  sub_24E69A5C4(0, &qword_27F234F70, 0x277CEE5B0);
  v4 = sub_24F92B588();

  v5 = [v1 generateEventFieldsForKeys_];

  v6 = sub_24F92AE38();
  v7 = sub_24E608448(MEMORY[0x277D84F90]);
  v8 = 0;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v6 + 64);
  v12 = (63 - v10) >> 6;
  while (1)
  {
    v13 = v8;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v8 << 6);
    sub_24E65864C(*(v6 + 48) + 40 * v15, v0 + 16);
    sub_24E643A9C(*(v6 + 56) + 32 * v15, v0 + 56);
    v16 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 104) = v16;
    *(v0 + 120) = *(v0 + 48);
    sub_24E612B0C((v0 + 56), (v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224A00, &unk_24F973240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 160);
      v18 = *(v0 + 168);
      sub_24E612B0C((v0 + 176), (v0 + 208));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v18;
      v45 = v17;
      v20 = sub_24E76D644(v17, v18);
      v21 = v7[2];
      v22 = (v19 & 1) == 0;
      result = (v21 + v22);
      if (__OFADD__(v21, v22))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if (v7[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v19 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v47 = v19;
          sub_24E8AD8E4();
          if ((v47 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_17:

        v27 = (v7[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_24E612B0C((v0 + 208), v27);
      }

      else
      {
        v24 = v19;
        sub_24E89873C(result, isUniquelyReferenced_nonNull_native);
        v25 = sub_24E76D644(v45, v48);
        if ((v24 & 1) != (v26 & 1))
        {
LABEL_33:

          return sub_24F92CF88();
        }

        v20 = v25;
        if (v24)
        {
          goto LABEL_17;
        }

LABEL_19:
        v7[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v7[6] + 16 * v20);
        *v28 = v45;
        v28[1] = v48;
        result = sub_24E612B0C((v0 + 208), (v7[7] + 32 * v20));
        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_37;
        }

        v7[2] = v31;
      }
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
      sub_24E601704(v0 + 160, &qword_27F234F78, &qword_24F9B5738);
    }
  }

  while (1)
  {
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v8 >= v12)
    {
      break;
    }

    v11 = *(v6 + 64 + 8 * v8);
    ++v13;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v32 = *(v0 + 304);

  v33 = [v32 name];
  v34 = sub_24F92B0D8();
  v36 = v35;

  if (v34 == 0x644972657375 && v36 == 0xE600000000000000)
  {

    goto LABEL_28;
  }

  v38 = sub_24F92CE08();

  if (v38)
  {
LABEL_28:
    v40 = *(v0 + 336);
    v42 = *(v0 + 312);
    v41 = *(v0 + 320);
    *(v0 + 264) = MEMORY[0x277D837D0];
    *(v0 + 240) = v42;
    *(v0 + 248) = v41;
    sub_24E612B0C((v0 + 240), (v0 + 272));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4((v0 + 272), 0x734E72657375, 0xE600000000000000, v43);

    goto LABEL_29;
  }

  v39 = *(v0 + 336);

LABEL_29:
  v44 = *(v0 + 8);

  return v44(v7);
}

uint64_t sub_24EF78FD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  *(v3 + 16) = a1;
  *(v3 + 32) = a2;
  v10 = qword_27F210B90;
  v11 = a1;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v7 + 8))(v9, v6);
  *(v3 + 24) = v14[15];
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v3 selector:sel_storeAccountDidChange name:*MEMORY[0x277CB8B78] object:v11];

  return v3;
}

uint64_t sub_24EF79200()
{

  return swift_deallocObject();
}

uint64_t sub_24EF79238()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_15_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EF7929C()
{
  result = qword_27F234F50;
  if (!qword_27F234F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F50);
  }

  return result;
}

uint64_t sub_24EF79394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF79410()
{
  result = qword_27F234F90;
  if (!qword_27F234F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F90);
  }

  return result;
}

unint64_t sub_24EF79468()
{
  result = qword_27F234F98;
  if (!qword_27F234F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234F98);
  }

  return result;
}

uint64_t sub_24EF79550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FB0, &qword_24F9B5A50);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FB8, &qword_24F9B5A58);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit13FramedArtwork_artwork);
  if (v8)
  {

    *v7 = sub_24F924C88();
    *(v7 + 1) = 0x4028000000000000;
    v7[16] = 0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FC8, &qword_24F9B5A60);
    sub_24EF797DC(v8, a1, &v7[*(v9 + 44)]);
    sub_24E60169C(v7, v4, &qword_27F234FB8, &qword_24F9B5A58);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8, &qword_24F9B5A58, MEMORY[0x277CE1198]);
    sub_24E7EBBCC();
    sub_24F924E28();

    return sub_24E601704(v7, &qword_27F234FB8, &qword_24F9B5A58);
  }

  else
  {
    v11 = sub_24F926C98();
    v12 = sub_24F925808();
    *v4 = v11;
    v4[8] = v12;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E220, &unk_24F95BAC0);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8, &qword_24F9B5A58, MEMORY[0x277CE1198]);
    sub_24E7EBBCC();
    return sub_24F924E28();
  }
}

uint64_t sub_24EF797DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v113 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v97 - v5;
  v6 = sub_24F91F008();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F924B38();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v97 - v13;
  v15 = type metadata accessor for SwiftUIArtworkView(0);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0, &qword_24F9B5A68);
  MEMORY[0x28223BE20](v99);
  v20 = &v97 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD8, &qword_24F9B5A70);
  MEMORY[0x28223BE20](v21);
  v100 = &v97 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE0, &qword_24F9B5A78);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v114 = &v97 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8, &unk_24F9B5A80);
  MEMORY[0x28223BE20](v102);
  v112 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v101 = &v97 - v26;
  MEMORY[0x28223BE20](v27);
  v115 = &v97 - v28;
  v29 = v16[8];
  v30 = *MEMORY[0x277CE1010];
  v31 = sub_24F926E68();
  (*(*(v31 - 8) + 104))(&v18[v29], v30, v31);
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *v18 = a1;
  v18[24] = 1;
  v32 = &v18[v16[9]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v18[v16[10]] = 2;
  v18[v16[11]] = 0;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v33 = sub_24F922348();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v14, 0, 1, v33);
  sub_24E60169C(v14, v11, &qword_27F214148, &qword_24F93C520);
  v35 = (*(v34 + 48))(v11, 1, v33);
  if (v35 == 1)
  {
    sub_24E601704(v14, &qword_27F214148, &qword_24F93C520);
    sub_24E601704(v11, &qword_27F214148, &qword_24F93C520);
    v36 = 0;
  }

  else
  {
    sub_24F9222E8();
    v36 = v37;
    sub_24E601704(v14, &qword_27F214148, &qword_24F93C520);
    (*(v34 + 8))(v11, v33);
  }

  sub_24E9D0D28(v18, v20);
  v38 = &v20[*(v99 + 36)];
  *v38 = v36;
  v38[8] = v35 == 1;
  v38[9] = 1;
  v39 = v100;
  v40 = &v100[*(v21 + 36)];
  v41 = sub_24F924258();
  v42 = *MEMORY[0x277CE0118];
  v43 = v105;
  v44 = &v40[*(v41 + 20)];
  v45 = v107;
  v98 = *(v105 + 104);
  v98(v44, v42, v107);
  __asm { FMOV            V0.2D, #22.0 }

  v99 = _Q0;
  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  v51 = v20;
  v52 = v39;
  sub_24EF7AAD4(v51, v39);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v53 = sub_24F9248C8();
  __swift_project_value_buffer(v53, qword_27F39F078);
  sub_24EF7AB44();
  v54 = v114;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v52, &qword_27F234FD8, &qword_24F9B5A70);
  v55 = v103;
  v98(v103, v42, v45);
  *(&v140 + 1) = v41;
  *&v141 = sub_24EF7ACB8(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v139);
  (*(v43 + 16))(boxed_opaque_existential_1 + *(v41 + 20), v55, v45);
  *boxed_opaque_existential_1 = v99;
  (*(v43 + 8))(v55, v45);
  v57 = v101;
  sub_24E60169C(&v139, v101, &qword_27F235000, &qword_24F9B5A90);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235008, &qword_24F9B5A98);
  v59 = v104;
  v60 = v106;
  (*(v104 + 16))(v57 + v58[9], v54, v106);
  v61 = v57 + v58[10];
  *v61 = sub_24F923398() & 1;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63 & 1;
  v64 = v57 + v58[11];
  *v64 = swift_getKeyPath();
  *(v64 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v65 = qword_27F24E488;
  v66 = sub_24F923398();
  v68 = v67;
  v70 = v69;
  v71 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235010, &qword_24F9B5AC8) + 36);
  *v71 = v65;
  *(v71 + 8) = v66 & 1;
  *(v71 + 16) = v68;
  *(v71 + 24) = v70 & 1;
  LOBYTE(v65) = sub_24F923398();
  v73 = v72;
  LOBYTE(v68) = v74;
  sub_24E601704(&v139, &qword_27F235000, &qword_24F9B5A90);
  (*(v59 + 8))(v114, v60);
  v75 = v57 + *(v102 + 36);
  *v75 = v65 & 1;
  *(v75 + 8) = v73;
  *(v75 + 16) = v68 & 1;
  sub_24EF7AD08(v57, v115);
  v76 = v108;
  v77 = v109;
  sub_24E60169C(*(v109 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, v108, &qword_27F215340, &qword_24F943530);
  v79 = v110;
  v78 = v111;
  if ((*(v110 + 48))(v76, 1, v111) == 1)
  {
    sub_24E601704(v76, &qword_27F215340, &qword_24F943530);
    sub_24EF7AD78(&v139);
  }

  else
  {
    v80 = v76;
    v81 = v97;
    (*(v79 + 32))(v97, v80, v78);
    v82 = sub_24F924988();
    v117 = 1;
    sub_24EF7A510(v77, v81, &v139);
    v124 = v145;
    v125[0] = v146[0];
    *(v125 + 9) = *(v146 + 9);
    v120 = v141;
    v121 = v142;
    v122 = v143;
    v123 = v144;
    v118 = v139;
    v119 = v140;
    v133 = v144;
    v134 = v145;
    v135[0] = v146[0];
    *(v135 + 9) = *(v146 + 9);
    v130 = v141;
    v131 = v142;
    v132 = v143;
    v128 = v139;
    v129 = v140;
    sub_24E60169C(&v118, &v137, &qword_27F235028, &qword_24F9B5AE0);
    sub_24E601704(&v128, &qword_27F235028, &qword_24F9B5AE0);
    *(&v116[6] + 7) = v124;
    *(&v116[5] + 7) = v123;
    *(&v116[2] + 7) = v120;
    *(&v116[1] + 7) = v119;
    *(&v116[7] + 7) = v125[0];
    v116[8] = *(v125 + 9);
    *(&v116[3] + 7) = v121;
    *(&v116[4] + 7) = v122;
    *(v116 + 7) = v118;
    *(&v138[5] + 1) = v116[5];
    *(&v138[6] + 1) = v116[6];
    *(&v138[7] + 1) = v116[7];
    *(&v138[8] + 1) = *(v125 + 9);
    *(&v138[1] + 1) = v116[1];
    *(&v138[2] + 1) = v116[2];
    *(&v138[3] + 1) = v116[3];
    *(&v138[4] + 1) = v116[4];
    v137 = v82;
    LOBYTE(v138[0]) = v117;
    *(v138 + 1) = v116[0];
    CGSizeMake();
    (*(v79 + 8))(v81, v78);
    v146[1] = v138[7];
    v147 = v138[8];
    v148 = v138[9];
    v143 = v138[3];
    v144 = v138[4];
    v145 = v138[5];
    v146[0] = v138[6];
    v139 = v137;
    v140 = v138[0];
    v141 = v138[1];
    v142 = v138[2];
  }

  v83 = v115;
  v84 = v112;
  sub_24E60169C(v115, v112, &qword_27F234FE8, &unk_24F9B5A80);
  v125[1] = v146[1];
  v126 = v147;
  v127 = v148;
  v122 = v143;
  v123 = v144;
  v124 = v145;
  v125[0] = v146[0];
  v118 = v139;
  v119 = v140;
  v120 = v141;
  v121 = v142;
  v85 = v113;
  sub_24E60169C(v84, v113, &qword_27F234FE8, &unk_24F9B5A80);
  v86 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235018, &qword_24F9B5AD0) + 48);
  v87 = v125[0];
  v135[1] = v125[1];
  v135[2] = v126;
  v88 = v121;
  v89 = v122;
  v132 = v122;
  v133 = v123;
  v90 = v123;
  v91 = v124;
  v134 = v124;
  v135[0] = v125[0];
  v128 = v118;
  v129 = v119;
  v93 = v118;
  v92 = v119;
  v94 = v120;
  v130 = v120;
  v131 = v121;
  v95 = v126;
  *(v86 + 128) = v125[1];
  *(v86 + 144) = v95;
  *(v86 + 64) = v89;
  *(v86 + 80) = v90;
  *(v86 + 96) = v91;
  *(v86 + 112) = v87;
  *v86 = v93;
  *(v86 + 16) = v92;
  v136 = v127;
  *(v86 + 160) = v127;
  *(v86 + 32) = v94;
  *(v86 + 48) = v88;
  sub_24E60169C(&v128, &v137, &qword_27F235020, &qword_24F9B5AD8);
  sub_24E601704(v83, &qword_27F234FE8, &unk_24F9B5A80);
  v138[7] = v125[1];
  v138[8] = v126;
  LOBYTE(v138[9]) = v127;
  v138[3] = v122;
  v138[4] = v123;
  v138[5] = v124;
  v138[6] = v125[0];
  v137 = v118;
  v138[0] = v119;
  v138[1] = v120;
  v138[2] = v121;
  sub_24E601704(&v137, &qword_27F235020, &qword_24F9B5AD8);
  return sub_24E601704(v84, &qword_27F234FE8, &unk_24F9B5A80);
}

uint64_t sub_24EF7A510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v67 = a3;
  v5 = sub_24F91F008();
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 + 32);
  if (v11)
  {
    v83 = *(v10 + 24);
    v84 = v11;
    v61 = v6;
    v59 = v7;
    sub_24E600AEC();
    v62 = a2;

    v12 = sub_24F925E18();
    v14 = v13;
    v60 = v9;
    v16 = v15;
    sub_24F925888();
    v17 = sub_24F925C98();
    v19 = v18;
    v21 = v20;

    sub_24E600B40(v12, v14, v16 & 1);

    sub_24F925918();
    v22 = sub_24F925B78();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_24E600B40(v17, v19, v21 & 1);

    sub_24F927618();
    sub_24F9238C8();
    v65 = v97;
    v66 = v95;
    v63 = v100;
    v64 = v99;
    LOBYTE(v83) = 1;
    LOBYTE(v77) = v96;
    v76 = v98;
    v71 = 1;
    v70 = v96;
    v69 = v98;
    v75 = v26 & 1;
    v68 = v26 & 1;
    sub_24E5FD138(v22, v24, v26 & 1);

    v73 = v24;
    v74 = v22;
    v29 = v22;
    a2 = v62;
    v30 = v24;
    v9 = v60;
    sub_24E600B40(v29, v30, v26 & 1);
    v72 = v28;

    v7 = v59;
    v6 = v61;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v65 = 0;
    v66 = 0;
    v69 = 0;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v68 = 0;
  }

  (*(v7 + 16))(v9, a2, v6);
  v31 = sub_24F925DF8();
  v33 = v32;
  v35 = v34;
  sub_24F925A18();
  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;

  sub_24E600B40(v31, v33, v35 & 1);

  LODWORD(v83) = sub_24F9251C8();
  v41 = sub_24F925C58();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_24E600B40(v36, v38, v40 & 1);

  *&v77 = v74;
  *(&v77 + 1) = v73;
  *&v78 = v68;
  *(&v78 + 1) = v72;
  *&v79 = 0;
  *(&v79 + 1) = v71;
  v48 = v65;
  v49 = v66;
  *&v80 = v66;
  *(&v80 + 1) = v70;
  *&v81 = v65;
  *(&v81 + 1) = v69;
  v51 = v63;
  v50 = v64;
  *&v82 = v64;
  *(&v82 + 1) = v63;
  v76 = v45 & 1;
  v75 = 0;
  v52 = v78;
  v53 = v67;
  *v67 = v77;
  v53[1] = v52;
  v54 = v79;
  v55 = v80;
  v56 = v82;
  v53[4] = v81;
  v53[5] = v56;
  v53[2] = v54;
  v53[3] = v55;
  *(v53 + 12) = v41;
  *(v53 + 13) = v43;
  *(v53 + 112) = v45 & 1;
  *(v53 + 15) = v47;
  *(v53 + 16) = 0;
  *(v53 + 136) = 0;
  sub_24E60169C(&v77, &v83, &qword_27F235030, &qword_24F9B5AE8);
  sub_24E5FD138(v41, v43, v45 & 1);

  sub_24E600B40(v41, v43, v45 & 1);

  v83 = v74;
  v84 = v73;
  v85 = v68;
  v86 = v72;
  v87 = 0;
  v88 = v71;
  v89 = v49;
  v90 = v70;
  v91 = v48;
  v92 = v69;
  v93 = v50;
  v94 = v51;
  return sub_24E601704(&v83, &qword_27F235030, &qword_24F9B5AE8);
}

uint64_t sub_24EF7A98C(uint64_t a1)
{
  sub_24E66D74C();

  return sub_24F9218E8();
}

unint64_t sub_24EF7A9D4()
{
  result = qword_27F234FA0;
  if (!qword_27F234FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FA0);
  }

  return result;
}

uint64_t sub_24EF7AAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0, &qword_24F9B5A68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF7AB44()
{
  result = qword_27F234FF0;
  if (!qword_27F234FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234FD8, &qword_24F9B5A70);
    sub_24EF7ABFC();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FF0);
  }

  return result;
}

unint64_t sub_24EF7ABFC()
{
  result = qword_27F234FF8;
  if (!qword_27F234FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234FD0, &qword_24F9B5A68);
    sub_24EF7ACB8(&qword_27F226530, type metadata accessor for SwiftUIArtworkView, &unk_24F95B5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234FF8);
  }

  return result;
}

uint64_t sub_24EF7ACB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF7AD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8, &unk_24F9B5A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EF7AD78(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_24EF7AD9C()
{
  result = qword_27F235038;
  if (!qword_27F235038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235040, &qword_24F9B5AF0);
    sub_24E602068(&qword_27F234FC0, &qword_27F234FB8, &qword_24F9B5A58, MEMORY[0x277CE1198]);
    sub_24E7EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235038);
  }

  return result;
}

uint64_t sub_24EF7AE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235068, &qword_24F9B5B08);
  __swift_allocate_value_buffer(v0, qword_27F39D0C8);
  __swift_project_value_buffer(v0, qword_27F39D0C8);
  return sub_24F928588();
}

uint64_t sub_24EF7AECC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235050, &qword_24F9E1480);
  __swift_allocate_value_buffer(v0, qword_27F39D0E0);
  __swift_project_value_buffer(v0, qword_27F39D0E0);
  return sub_24F928588();
}

uint64_t sub_24EF7AF44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235048, &qword_24F9B5AF8);
  __swift_allocate_value_buffer(v0, qword_27F39D0F8);
  __swift_project_value_buffer(v0, qword_27F39D0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB80, &qword_24F99E190);
  return sub_24F928588();
}

uint64_t sub_24EF7AFD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235058, &unk_24F9E1A10);
  __swift_allocate_value_buffer(v0, qword_27F39D110);
  __swift_project_value_buffer(v0, qword_27F39D110);
  type metadata accessor for DeviceType(0);
  return sub_24F928588();
}

uint64_t sub_24EF7B050()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235060, &qword_24F9B5B00);
  __swift_allocate_value_buffer(v0, qword_27F39D128);
  __swift_project_value_buffer(v0, qword_27F39D128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
  return sub_24F928588();
}

uint64_t DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for ActionIntent(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF7B19C, 0, 0);
}

uint64_t sub_24EF7B19C()
{
  v33 = v0;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v26 = v0[10];
  v4 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  v5 = v3 + *(v4 + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v28 = *v5;
  v29 = *(v5 + 8);
  v30 = v6;
  v31 = v7;
  v32 = v8;

  sub_24E90BCC4(v7, v8);
  sub_24EB6C854(&v28);
  v9 = v31;
  v10 = v32;

  sub_24E7B6564(v9, v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235070, &unk_24F9B5B18);
  v0[13] = sub_24F92A9E8();
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v0[14] = v0[7];
  v11 = v2[5];
  v12 = sub_24F91F4A8();
  (*(*(v12 - 8) + 16))(v1 + v11, v3, v12);
  v13 = *(v3 + *(v4 + 20));
  v14 = *v5;
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = *(v5 + 8);
  LOBYTE(v4) = *(v5 + 40);
  strcpy(v1, "ActionIntent");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + v2[6]) = v13;
  v18 = v1 + v2[7];
  *v18 = v14;
  *(v18 + 8) = v17;
  *(v18 + 24) = v15;
  *(v18 + 32) = v16;
  *(v18 + 40) = v4;

  sub_24E90BCC4(v16, v4);
  v0[15] = sub_24EB47578(v1, v26, "GameStoreKit/DeepLinkWithReferrerIntentImplementation.swift", 59, 2);
  v19 = sub_24E74EC40();
  swift_retain_n();
  v20 = sub_24F92BEF8();
  v21 = MEMORY[0x277D225C0];
  v0[5] = v19;
  v0[6] = v21;
  v0[2] = v20;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = sub_24EF7B89C();
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_24EF7B4E0;
  v24 = v0[8];

  return MEMORY[0x282180360](v24, v27, v22);
}

uint64_t sub_24EF7B4E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24EF7B684;
  }

  else
  {
    v2 = sub_24EF7B5F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF7B5F4()
{
  v1 = *(v0 + 96);

  sub_24EC67894(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7B684()
{
  v1 = *(v0 + 96);

  sub_24EC67894(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EF7B714(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = type metadata accessor for Action(0);
  v3[4] = sub_24EF7B958(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  v3[0] = v1;

  sub_24F92A6C8();
  sub_24EF7B9A0(v4, v3);
  sub_24F92A9C8();
  sub_24EF7B9FC(v3);
  return sub_24EF7BA64(v4);
}
uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1B8BBD468(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();

  v11 = [v10 sharedInstance];
  v12 = [v11 loginManager];
  if (v12)
  {
    v29 = v12;
    if ([v12 loginState] == 1 && (v13 = objc_msgSend(v11, sel_currentUser)) != 0)
    {
      v14 = v13;
      if (([v13 isUnauthenticatedUser] & 1) != 0 || (v15 = *(a4 + 16), v16 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod, swift_beginAccess(), !*(v15 + v16)))
      {
        if (qword_1EBAA5920 != -1)
        {
          swift_once();
        }

        v21 = sub_1B8C23C38();
        __swift_project_value_buffer(v21, qword_1EBAA7BE0);
        v22 = sub_1B8C23C18();
        v23 = sub_1B8C25498();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1B8B22000, v22, v23, "Logging out for unauthenticated session.", v24, 2u);
          MEMORY[0x1B8CCB0E0](v24, -1, -1);
        }

        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = a1;
        *(v26 + 32) = a2 & 1;
        *(v26 + 33) = a3 & 1;
        *(v26 + 40) = sub_1B8BBDB14;
        *(v26 + 48) = a5;
        aBlock[4] = sub_1B8BBDB20;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8B8B9F4;
        aBlock[3] = &block_descriptor_101_0;
        v27 = _Block_copy(aBlock);
        v28 = a1;

        [v29 logOutIfNeededAndRun_];

        _Block_release(v27);
      }

      else
      {
        if (qword_1EBAA5920 != -1)
        {
          swift_once();
        }

        v17 = sub_1B8C23C38();
        __swift_project_value_buffer(v17, qword_1EBAA7BE0);
        v18 = sub_1B8C23C18();
        v19 = sub_1B8C25498();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1B8B22000, v18, v19, "Extension is already logged in, resetting form+content items.", v20, 2u);
          MEMORY[0x1B8CCB0E0](v20, -1, -1);
        }

        [v11 resetContentAndFormItems];
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1B8BB7F88(0, 1);
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1B8BB8E40(a1, a2 & 1, a3 & 1, sub_1B8BBDB14, a5);
    }
  }

  else
  {

    sub_1B8C258A8();
    __break(1u);
  }
}

unint64_t sub_1B8BBD974()
{
  result = qword_1EBAA5D68;
  if (!qword_1EBAA5D68)
  {
    sub_1B8B46130(255, &qword_1EBAA5D60, 0x1E699C708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5D68);
  }

  return result;
}

void sub_1B8BBD9DC()
{
  v1 = *(type metadata accessor for AgreementConsentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8BB8CB0(v0 + v2, v3);
}

uint64_t sub_1B8BBDA68(uint64_t a1)
{
  v2 = type metadata accessor for AgreementConsentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8BBDB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B8B5115C;

  return sub_1B8BBB290(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t static FBKEvaluation.systemImageName(for:hasResponse:)(_BYTE *a1, char a2)
{
  if (a2)
  {
    v2 = 0x6C6C69662ELL;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  if (*a1)
  {
    if (*a1 != 1)
    {
      sub_1B8C257E8();

      v5 = 0xD000000000000016;
      goto LABEL_12;
    }

    sub_1B8C257E8();
  }

  v5 = 0x7568742E646E6168;
LABEL_12:
  MEMORY[0x1B8CC9EB0](v2, v3);

  return v5;
}

unint64_t FBKEvaluation.Response.Action.description.getter()
{
  v1 = 0x442073626D756854;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x552073626D756854;
  }
}

uint64_t FBKEvaluation.Response.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

unint64_t sub_1B8BBDED8()
{
  v1 = 0x442073626D756854;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x552073626D756854;
  }
}

uint64_t FBKEvaluation.Response.ID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C23568();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FBKEvaluation.Response.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FBKEvaluation.Response(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FBKEvaluation.Response.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FBKEvaluation.Response(0) + 24);

  return sub_1B8BBE044(v3, a1);
}

uint64_t sub_1B8BBE044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FBKEvaluation.Response.description.getter()
{
  v1 = type metadata accessor for FBKEvaluation.Response(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v2 = 0xEB000000006E776FLL;
      v3 = 0x442073626D756854;
    }

    else
    {
      v2 = 0x80000001B8C354A0;
      v3 = 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xE900000000000070;
    v3 = 0x552073626D756854;
  }

  MEMORY[0x1B8CC9EB0](v3, v2);

  MEMORY[0x1B8CC9EB0](0x5B203A4449205DLL, 0xE700000000000000);
  sub_1B8C23568();
  sub_1B8BBF00C(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v4 = sub_1B8C259E8();
  MEMORY[0x1B8CC9EB0](v4);

  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1B8BBE208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1B8C236E8();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C23738();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C23568();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FBKEvaluation.Response(0);
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23748();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E699C230])
  {
    (*(v7 + 96))(v9, v6);
    (*(v11 + 32))(v13, v9, v10);
    sub_1B8C236F8();
    v17 = v26;
    v18 = (*(v26 + 88))(v5, v3);
    if (v18 == *MEMORY[0x1E699C1F0])
    {
      v19 = 0;
LABEL_10:
      (*(v11 + 16))(v16, v13, v10);
      v22 = v28;
      v16[*(v28 + 20)] = v19;
      sub_1B8C236B8();

      (*(v11 + 8))(v13, v10);
      v21 = v29;
      sub_1B8BBF294(v16, v29);
      v20 = 0;
      return (*(v27 + 56))(v21, v20, 1, v22);
    }

    if (v18 == *MEMORY[0x1E699C1C8])
    {
      v19 = 1;
      goto LABEL_10;
    }

    if (v18 == *MEMORY[0x1E699C1D8])
    {
      v19 = 2;
      goto LABEL_10;
    }

    if (v18 == *MEMORY[0x1E699C1E8] || v18 == *MEMORY[0x1E699C1D0])
    {
    }

    else
    {
      v24 = *MEMORY[0x1E699C1E0];
      v25 = v18;

      if (v25 != v24)
      {
        (*(v17 + 8))(v5, v3);
      }
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = 1;
  v22 = v28;
  v21 = v29;
  return (*(v27 + 56))(v21, v20, 1, v22);
}

unint64_t FBKEvaluation.Input.description.getter()
{
  v1 = v0;
  v2 = sub_1B8C23568();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKEvaluation.Input(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8BBE8C0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1B8C257E8();

    v17 = 0xD000000000000013;
    v18 = 0x80000001B8C354C0;
    v10 = [v9 description];
    v11 = sub_1B8C25128();
    v13 = v12;

    MEMORY[0x1B8CC9EB0](v11, v13);

    return v17;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v17 = 540689481;
    v18 = 0xE400000000000000;
    sub_1B8BBF00C(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v15);

    v14 = v17;
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

uint64_t sub_1B8BBE8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKEvaluation.Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FBKEvaluation.Input.hash(into:)(uint64_t a1)
{
  v2 = sub_1B8C23568();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKEvaluation.Input(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8BBE8C0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x1B8CCA790](1);
    sub_1B8C255F8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1B8CCA790](0);
    sub_1B8BBF00C(&qword_1EBAA6230, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1B8C250C8();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t FBKEvaluation.Input.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1B8C23568();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKEvaluation.Input(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8C25AB8();
  sub_1B8BBE8C0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x1B8CCA790](1);
    sub_1B8C255F8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1B8CCA790](0);
    sub_1B8BBF00C(&qword_1EBAA6230, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1B8C250C8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1B8C25AF8();
}

uint64_t sub_1B8BBECD8()
{
  sub_1B8C25AB8();
  FBKEvaluation.Input.hash(into:)(v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BBED1C(uint64_t a1)
{
  sub_1B8C25AB8();
  FBKEvaluation.Input.hash(into:)(v2);
  return sub_1B8C25AF8();
}

uint64_t _s8Feedback13FBKEvaluationV5InputO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKEvaluation.Input(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CA8, &qword_1B8C2D728);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8BBE8C0(a1, &v24 - v16);
  sub_1B8BBE8C0(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8BBE8C0(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *&v17[v18];
      sub_1B8B47A9C();
      v21 = sub_1B8C255E8();

LABEL_9:
      sub_1B8BBF360(v17);
      return v21 & 1;
    }
  }

  else
  {
    sub_1B8BBE8C0(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v21 = sub_1B8C23548();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_1B8BBF2F8(v17);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1B8BBF00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8BBF058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7C70;
  if (!qword_1EBAA7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7C70);
  }

  return result;
}

void sub_1B8BBF12C(uint64_t a1)
{
  sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    sub_1B8BBF1B8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8BBF1B8(uint64_t a1)
{
  if (!qword_1EBAA7C90)
  {
    sub_1B8C236A8();
    v1 = sub_1B8C25608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA7C90);
    }
  }
}

uint64_t sub_1B8BBF220(uint64_t a1)
{
  result = sub_1B8C23568();
  if (v2 <= 0x3F)
  {
    result = sub_1B8C23978();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8BBF294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKEvaluation.Response(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BBF2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CA8, &qword_1B8C2D728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BBF360(uint64_t a1)
{
  v2 = type metadata accessor for FBKEvaluation.Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BBF3BC()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7CB0);
  __swift_project_value_buffer(v0, qword_1EBAA7CB0);
  return sub_1B8C23C28();
}

void sub_1B8BBF43C()
{
  sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
  [swift_getObjCClassFromMetadata() platform];
  v1 = OBJC_IVAR___ExtensionController_contentViewController;
  if (*&v0[OBJC_IVAR___ExtensionController_contentViewController])
  {
    if (qword_1EBAA5928 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAA7CB0);
    oslog = sub_1B8C23C18();
    v3 = sub_1B8C25488();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v3, "contentViewController is nil in ExtensionController", v4, 2u);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    goto LABEL_16;
  }

  v5 = [v0 makeContentViewController];
  if (!v5)
  {
LABEL_21:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for DraftingExtensionViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v9 = *&v0[v1];
  *&v0[v1] = v7;
  v6 = v6;

  swift_unknownObjectWeakAssign();
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setView_];

  v11 = [v8 view];
  if (!v11)
  {
    if (qword_1EBAA5928 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA7CB0);
    oslog = sub_1B8C23C18();
    v14 = sub_1B8C25488();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B8B22000, oslog, v14, "DraftingExtensionViewController has no view. Cannot load extension UI", v15, 2u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    goto LABEL_15;
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  oslog = v12;
  sub_1B8C254C8();
LABEL_15:

LABEL_16:
}

uint64_t sub_1B8BBF7A8(void *a1)
{
  v3 = sub_1B8C250F8();
  v4 = [a1 valueForEntitlement_];

  if (v4)
  {
    sub_1B8C256B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v24 = v29;
  v25 = v30;
  if (*(&v30 + 1))
  {
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v5 = [v28 BOOLValue];

      if (v5)
      {
        [a1 setExportedObject_];
        v6 = sub_1B8B88E34();
        [a1 setExportedInterface_];

        v7 = sub_1B8B89014();
        [a1 setRemoteObjectInterface_];

        v8 = [a1 serviceName];
        if (v8)
        {
          v9 = v8;
          v10 = sub_1B8C25128();
          v12 = v11;
        }

        else
        {
          v12 = 0xE600000000000000;
          v10 = 0x296C6C756E28;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = v10;
        *(v18 + 24) = v12;
        v26 = sub_1B8BC028C;
        v27 = v18;
        *&v24 = MEMORY[0x1E69E9820];
        *(&v24 + 1) = 1107296256;
        *&v25 = sub_1B8B8B9F4;
        *(&v25 + 1) = &block_descriptor_7;
        v19 = _Block_copy(&v24);

        [a1 setInvalidationHandler_];
        _Block_release(v19);
        v20 = swift_allocObject();
        *(v20 + 16) = v10;
        *(v20 + 24) = v12;
        v26 = sub_1B8BC02C8;
        v27 = v20;
        *&v24 = MEMORY[0x1E69E9820];
        *(&v24 + 1) = 1107296256;
        *&v25 = sub_1B8B8B9F4;
        *(&v25 + 1) = &block_descriptor_12_0;
        v21 = _Block_copy(&v24);

        [a1 setInterruptionHandler_];
        _Block_release(v21);
        v22 = *(v1 + OBJC_IVAR___ExtensionController_xpcConnection);
        *(v1 + OBJC_IVAR___ExtensionController_xpcConnection) = a1;
        v23 = a1;

        [v23 resume];
        return 1;
      }
    }
  }

  else
  {
    sub_1B8BC0224(&v24);
  }

  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7CB0);
  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25478();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B8B22000, v14, v15, "Process is not entitled to draft a new feedback.", v16, 2u);
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
  }

  return 0;
}

void sub_1B8BBFB94(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAA7CB0);

  oslog = sub_1B8C23C18();
  v7 = sub_1B8C25498();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B8B5DD48(a1, a2, &v12);
    _os_log_impl(&dword_1B8B22000, oslog, v7, a3, v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v10);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }
}

void sub_1B8BBFD3C()
{
  v1 = *(v0 + OBJC_IVAR___ExtensionController_xpcConnection);
  if (v1)
  {
    aBlock[4] = sub_1B8BBFF38;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8BB1CC4;
    aBlock[3] = &block_descriptor_15;
    v2 = _Block_copy(aBlock);
    v3 = v1;
    v4 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);

    sub_1B8C256B8();
    swift_unknownObjectRelease();
    sub_1B8B5FDD4(aBlock, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7CD8, &unk_1B8C2D760);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {
      if (qword_1EBAA5928 != -1)
      {
        swift_once();
      }

      v5 = sub_1B8C23C38();
      __swift_project_value_buffer(v5, qword_1EBAA7CB0);
      v6 = sub_1B8C23C18();
      v7 = sub_1B8C25478();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to get remote object proxy", v8, 2u);
        MEMORY[0x1B8CCB0E0](v8, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1B8BBFF38()
{
  if (qword_1EBAA5928 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7CB0);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25478();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v1, "Failed to get remote object proxy", v2, 2u);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

id sub_1B8BC0180(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExtensionController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B8BC0224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DF0, &unk_1B8C2D750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t static FBKAttachmentError.withError(nsError:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1B8C25128();
  v5 = v4;

  if (v3 == 0xD000000000000025 && 0x80000001B8C34450 == v5)
  {

LABEL_8:
    result = sub_1B8BC08A8([a1 code]);
    if ((v9 & 1) == 0)
    {
      return result;
    }

    return 6;
  }

  v7 = sub_1B8C25A08();

  if (v7)
  {
    goto LABEL_8;
  }

  return 6;
}

uint64_t FBKAttachmentError.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD000000000000014;
      case 1:
        return 0xD000000000000024;
      case 2:
        return 0xD000000000000013;
    }

LABEL_16:
    result = sub_1B8C25A28();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000015;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E55;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1B8BC0550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8BC0B14(a1, a2, a3);

  return MEMORY[0x1EEDC2D70](a1, a2, v5);
}

unint64_t sub_1B8BC059C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8BC08A8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B8BC05D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8BC0B14(a1, a2, a3);

  return MEMORY[0x1EEDC2D80](a1, v4);
}

uint64_t sub_1B8BC060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8BC0B14(a1, a2, a3);

  return MEMORY[0x1EEDC2D78](a1, v4);
}

uint64_t sub_1B8BC066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8BC0B14(a1, a2, a3);

  return MEMORY[0x1EEDC2D68](a1, a2, v5);
}

unint64_t URLError.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLError(0) + 20));
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        v2 = 0xD000000000000014;
        goto LABEL_16;
      case 1:
        v2 = 0xD000000000000024;
LABEL_16:
        v3 = sub_1B8C23468();
        MEMORY[0x1B8CC9EB0](v3);

        MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);

        MEMORY[0x1B8CC9EB0](23306, 0xE200000000000000);

        return v2;
      case 2:
        v2 = 0xD000000000000013;
        goto LABEL_16;
    }
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 0xD000000000000021;
      }

      else
      {
        v2 = 0xD000000000000023;
      }

      goto LABEL_16;
    }

    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
      goto LABEL_16;
    }

    if (v1 == 6)
    {
      v2 = 0x6E776F6E6B6E55;
      goto LABEL_16;
    }
  }

  result = sub_1B8C25A28();
  __break(1u);
  return result;
}

unint64_t sub_1B8BC08A8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for URLError(uint64_t a1)
{
  result = qword_1EBAA7D00;
  if (!qword_1EBAA7D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8BC0908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7CE0;
  if (!qword_1EBAA7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CE0);
  }

  return result;
}

unint64_t sub_1B8BC0960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7CE8;
  if (!qword_1EBAA7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CE8);
  }

  return result;
}

unint64_t sub_1B8BC09B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7CF0;
  if (!qword_1EBAA7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CF0);
  }

  return result;
}

unint64_t sub_1B8BC0A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7CF8;
  if (!qword_1EBAA7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7CF8);
  }

  return result;
}

uint64_t sub_1B8BC0AA0(uint64_t a1)
{
  result = sub_1B8C23498();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BC0B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7D10;
  if (!qword_1EBAA7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D10);
  }

  return result;
}

double sub_1B8BC0B68(uint64_t a1)
{
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v3 == a1)
  {
    sub_1B8BC1B64();
    sub_1B8C23588();

    v5 = [objc_opt_self() sharedUserDefaults];
    v6 = sub_1B8C25A38();
    v7 = sub_1B8C250F8();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC0D00()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 24);
}

uint64_t sub_1B8BC0D70()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 18);
}

void sub_1B8BC0DE0(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = [objc_opt_self() sharedUserDefaults];
    v4 = sub_1B8C25A38();
    v5 = sub_1B8C250F8();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC0F88()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 16);
}

uint64_t sub_1B8BC0FF8()
{
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8BC1068(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = [objc_opt_self() sharedUserDefaults];
    v4 = sub_1B8C25A38();
    v5 = sub_1B8C250F8();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC1210()
{
  type metadata accessor for UserDefaultsController(0);
  swift_allocObject();
  result = sub_1B8BC1250();
  qword_1EBAB39E0 = result;
  return result;
}

uint64_t sub_1B8BC1250()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedUserDefaults];
  v3 = sub_1B8C250F8();
  v4 = [v2 BOOLForKey_];

  *(v0 + 16) = v4;
  v5 = [v1 sharedUserDefaults];
  v6 = sub_1B8C250F8();
  v7 = [v5 BOOLForKey_];

  *(v0 + 17) = v7;
  v8 = [v1 sharedUserDefaults];
  v9 = sub_1B8C250F8();
  v10 = [v8 BOOLForKey_];

  *(v0 + 18) = v10;
  v11 = [v1 sharedUserDefaults];
  v12 = sub_1B8C250F8();
  v13 = [v11 integerForKey_];

  *(v0 + 24) = v13;
  sub_1B8C235B8();
  return v0;
}

void sub_1B8BC1418(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
    swift_getKeyPath();
    sub_1B8BC1B64();
    sub_1B8C23588();

    v3 = [objc_opt_self() sharedUserDefaults];
    v4 = sub_1B8C25A38();
    v5 = sub_1B8C250F8();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BC1B64();
    sub_1B8C23578();
  }
}

void sub_1B8BC15C0(uint64_t a1, char a2)
{
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = sub_1B8C25A38();
  v4 = sub_1B8C250F8();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
}

void sub_1B8BC16C0(uint64_t a1, char a2)
{
  *(a1 + 17) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = sub_1B8C25A38();
  v4 = sub_1B8C250F8();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
}

void sub_1B8BC17C0(uint64_t a1, char a2)
{
  *(a1 + 18) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = sub_1B8C25A38();
  v4 = sub_1B8C250F8();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
}

void sub_1B8BC18C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  swift_getKeyPath();
  sub_1B8BC1B64();
  sub_1B8C23588();

  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = sub_1B8C25A38();
  v4 = sub_1B8C250F8();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
}

uint64_t sub_1B8BC19C8()
{
  v1 = OBJC_IVAR____TtC8Feedback22UserDefaultsController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserDefaultsController(uint64_t a1)
{
  result = qword_1EBAA7D20;
  if (!qword_1EBAA7D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BC1AB8(uint64_t a1)
{
  result = sub_1B8C235C8();
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

unint64_t sub_1B8BC1B64()
{
  result = qword_1EBAA5F10;
  if (!qword_1EBAA5F10)
  {
    type metadata accessor for UserDefaultsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F10);
  }

  return result;
}

void sub_1B8BC1BDC()
{
  v1 = v0;
  v28 = type metadata accessor for BatchInteraction(0);
  v2 = *(v28 - 8);
  v3 = MEMORY[0x1EEE9AC00](v28);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  swift_getKeyPath();
  *&v29[0] = v0;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v14 = *(v0 + 24);
  if (*(v14 + 16))
  {
    v25 = v5;
    v26 = v7;
    v15 = *(v2 + 80);
    v16 = (v15 + 32) & ~v15;
    sub_1B8B548DC(v14 + v16, v13);
    v24 = *(v2 + 56);
    v24(v13, 0, 1, v28);
    sub_1B8B3433C(v13, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_getKeyPath();
    *&v29[0] = v0;
    sub_1B8C23588();

    *&v29[0] = v0;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    v17 = *(v0 + 24);
    if (*(v17 + 16))
    {
      v23 = ~v15;
      v18 = v26;
      sub_1B8B548DC(v17 + v16, v26);
      sub_1B8BCC558(0, 1);
      swift_endAccess();
      *&v29[0] = v0;
      swift_getKeyPath();
      sub_1B8C23598();

      sub_1B8B548DC(v18, v11);
      v24(v11, 0, 1, v28);
      sub_1B8BC3D58(v11);
      v19 = sub_1B8C24F68();
      v20 = v25;
      sub_1B8B548DC(v18, v25);
      v21 = (v15 + 24) & v23;
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      sub_1B8B54940(v20, v22 + v21);
      swift_retain_n();
      sub_1B8B61E24(v19, sub_1B8BCD2D4, v1, sub_1B8BCD2DC, v22, 0.25);

      sub_1B8B54C40(v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v2 + 56))(v13, 1, 1, v28);
    sub_1B8B3433C(v13, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_getKeyPath();
    *&v29[0] = v0;
    sub_1B8C23588();

    swift_beginAccess();
    v29[0] = xmmword_1B8C2DAB0;
    memset(&v29[1], 0, 41);

    sub_1B8BA0D30(v29);
  }
}

uint64_t sub_1B8BC20B4()
{
  v1[7] = v0;
  v2 = sub_1B8C23528();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1B8C25368();
  v1[11] = sub_1B8C25358();
  v4 = sub_1B8C25328();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B8BC21A8, v4, v3);
}

uint64_t sub_1B8BC21A8(uint64_t a1)
{
  v2 = v1[7];
  v1[2] = 0;
  sub_1B8C23518();
  if (*(v2 + 64) == 1)
  {
    *(v2 + 64) = 1;
  }

  else
  {
    v3 = v1[7];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v1[3] = v3;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  v5 = v1[7];
  if (*(v5 + 56))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v1[4] = v5;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  v7 = swift_task_alloc();
  v1[14] = v7;
  *v7 = v1;
  v7[1] = sub_1B8BC23DC;

  return sub_1B8BC8AA8();
}

uint64_t sub_1B8BC23DC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1B8BC2694;
  }

  else
  {
    v5 = sub_1B8BC2518;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B8BC2518()
{
  v1 = *(v0 + 56);

  if (*(v1 + 64))
  {
    v2 = *(v0 + 56);
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v0 + 48) = v2;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(*(v0 + 56) + 64) = 0;
  }

  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  sub_1B8BCB9F4((v0 + 16), v4);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8BC2694()
{
  v24 = v0;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B8B5DD48(0x696E496863746566, 0xEE0029286C616974, &v23);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1B8B22000, v4, v5, "%{public}s error: %{public}@", v7, 0x16u);
    sub_1B8B3433C(v8, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    v12 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v12);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  v13 = *(v0 + 56);
  sub_1B8BC535C();
  v14 = *(v13 + 64);
  v15 = *(v0 + 120);
  v16 = *(v0 + 56);
  if (v14)
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v0 + 40) = v16;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {

    *(v16 + 64) = 0;
  }

  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v20 = *(v0 + 64);
  sub_1B8BCB9F4((v0 + 16), v18);
  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B8BC29A4()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return *(v0 + 65);
}

uint64_t sub_1B8BC2A68()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return *(v0 + 64);
}

double sub_1B8BC2B08()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return result;
}

double sub_1B8BC2BAC()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();

  return result;
}

double sub_1B8BC2C64()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();

  return result;
}

uint64_t sub_1B8BC2D40@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v10 = *a2;
  swift_beginAccess();
  return sub_1B8B34450(v12 + v10, a5, a3, a4);
}

double sub_1B8BC2E20@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_1B8BC2F0C(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1B8B4491C(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC3054(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

double sub_1B8BC30BC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_1B8BC31A8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1B8B44B6C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC32F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_1B8BC3358(uint64_t a1)
{

  v4 = sub_1B8B44B6C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC34AC()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return *(v0 + 40);
}

double sub_1B8BC354C(uint64_t a1)
{
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC3650()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return *(v0 + 48);
}

double sub_1B8BC36F0(uint64_t a1)
{
  if (*(v1 + 48) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BC37F4()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  return *(v0 + 56);
}

void sub_1B8BC3894(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 56);
}

double sub_1B8BC3964(uint64_t a1)
{
  if (*(v1 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8BC3A68(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 64);
}

void sub_1B8BC3B38(char a1)
{
  if (*(v1 + 64) == (a1 & 1))
  {
    *(v1 + 64) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }
}

void sub_1B8BC3C48(char a1)
{
  if (*(v1 + 65) == (a1 & 1))
  {
    *(v1 + 65) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8BC3D58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  sub_1B8B34450(v1 + v6, v5, &qword_1EBAA6588, &unk_1B8C2DB50);
  v7 = sub_1B8BCC618(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v6, &qword_1EBAA6588, &unk_1B8C2DB50);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA6588, &unk_1B8C2DB50);
}

uint64_t sub_1B8BC3F54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  swift_beginAccess();
  sub_1B8B34450(v1 + v6, v5, &qword_1EBAA79C0, &qword_1B8C2D150);
  v7 = sub_1B8BCCA50(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA79C0, &qword_1B8C2D150);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v6, &qword_1EBAA79C0, &qword_1B8C2D150);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA79C0, &qword_1B8C2D150);
}

uint64_t DonationController.stateController.getter()
{
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
}

uint64_t sub_1B8BC4210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for DonationController(uint64_t a1)
{
  result = qword_1EBAA7D58;
  if (!qword_1EBAA7D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DonationController.stateController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8BC4480(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*DonationController.stateController.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *v4 = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  return sub_1B8BC4654;
}

void sub_1B8BC4654(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1B8C23598();

  free(v1);
}

uint64_t sub_1B8BC46D8(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0;
  v3 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8Feedback18DonationController_TARGET_SIZE) = 10;
  v5 = OBJC_IVAR____TtC8Feedback18DonationController__currentID;
  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  sub_1B8C235B8();
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = v7;
  *(v1 + 16) = v7;
  *(v1 + OBJC_IVAR____TtC8Feedback18DonationController__stateController) = a1;
  return v1;
}

void sub_1B8BC47DC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1B8C258B8())
  {
    if (sub_1B8C258B8())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1B8CCA4C0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1B8C258B8();
LABEL_13:
      if (v3)
      {
        sub_1B8BCD12C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

double sub_1B8BC48B4(uint64_t a1)
{
  if (*(a1 + 65) == 1)
  {
    *(a1 + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8BC49C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  swift_getKeyPath();
  v21 = a1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v21 = a1;
  swift_getKeyPath();
  sub_1B8C235A8();

  v10 = *(a1 + 40);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 40) = v12;
    v21 = a1;
    swift_getKeyPath();
    sub_1B8C23598();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6620, &qword_1B8C29468);
    v13 = type metadata accessor for BatchInteraction(0);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B8C2A740;
    sub_1B8B548DC(a2, v16 + v15);
    sub_1B8BC3358(v16);
    v17 = sub_1B8C23568();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v9, a2, v17);
    (*(v18 + 56))(v9, 0, 1, v17);
    sub_1B8BC3F54(v9);
    (*(v14 + 56))(v6, 1, 1, v13);
    sub_1B8BC3D58(v6);
    if (*(a1 + 65))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v20 - 2) = a1;
      *(&v20 - 8) = 0;
      v21 = a1;
      sub_1B8C23578();
    }

    else
    {
      *(a1 + 65) = 0;
    }
  }
}

void sub_1B8BC4D78(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v22 = type metadata accessor for BatchInteraction(0);
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v22 - 2) = v1;
    *(&v22 - 1) = 0;
    v28 = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  if (*(v1 + 48) != 1)
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    *(&v22 - 2) = v1;
    *(&v22 - 1) = 1;
    v28 = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6620, &qword_1B8C29468);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v24 = xmmword_1B8C2A740;
  *(v13 + 16) = xmmword_1B8C2A740;
  sub_1B8B548DC(a1, v13 + v12);
  sub_1B8BC31A8(v13);
  swift_getKeyPath();
  v28 = v2;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v14 = *(v2 + 24);
  if (*(v14 + 16))
  {
    v15 = v26;
    sub_1B8B548DC(v14 + v12, v26);
    v16 = swift_allocObject();
    *(v16 + 16) = v24;
    sub_1B8B548DC(v15, v16 + v12);
    sub_1B8BC3358(v16);
    v17 = sub_1B8C23568();
    v18 = *(v17 - 8);
    v19 = v25;
    (*(v18 + 16))(v25, v15, v17);
    (*(v18 + 56))(v19, 0, 1, v17);
    sub_1B8BC3F54(v19);
    swift_getKeyPath();
    v27 = v2;
    sub_1B8C23588();

    v27 = v2;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    v20 = *(v2 + 24);
    if (*(v20 + 16))
    {
      v21 = v23;
      sub_1B8B548DC(v20 + v12, v23);
      (*(v8 + 56))(v21, 0, 1, v22);
      sub_1B8B3433C(v21, &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v20 + 16))
      {
        sub_1B8BCC558(0, 1);
        swift_endAccess();
        v27 = v2;
        swift_getKeyPath();
        sub_1B8C23598();

        sub_1B8B54C40(v26);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1B8BC3358(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B8BC535C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_1B8C23348();
  v6 = v5;

  v7 = [v2 mainBundle];
  v8 = sub_1B8C23348();
  v10 = v9;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EBAB3A30);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25498();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B8B22000, v12, v13, "Showing Load More Button", v14, 2u);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  *&v19 = v4;
  *(&v19 + 1) = v6;
  *&v20 = v8;
  *(&v20 + 1) = v10;
  LOBYTE(v21) = 1;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v16[0] = v19;
  v16[1] = v20;
  v17[0] = v21;
  *(v17 + 9) = 0u;
  swift_getKeyPath();
  v18 = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();

  sub_1B8BA0D30(v16);

  return sub_1B8BCCE58(&v19);
}

uint64_t sub_1B8BC5608()
{
  v1[28] = v0;
  v2 = sub_1B8C23568();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = *(type metadata accessor for BatchInteraction(0) - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC5738, 0, 0);
}

uint64_t sub_1B8BC5738()
{
  v45 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[36] = __swift_project_value_buffer(v1, qword_1EBAB3A30);

  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (!v4)
  {

    KeyPath = 0x80000001B8C35940;
    goto LABEL_8;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v44 = v7;
  *v6 = 136315394;
  KeyPath = 0x80000001B8C35940;
  *(v6 + 4) = sub_1B8B5DD48(0xD000000000000024, 0x80000001B8C35940, &v44);
  *(v6 + 12) = 2048;
  swift_getKeyPath();
  v0[27] = v5;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v9 = *(v5 + 16);
  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8C258B8())
  {
    *(v6 + 14) = i;

    _os_log_impl(&dword_1B8B22000, v2, v3, "%s - nullableInteractions.count = %ld", v6, 0x16u);
    v11 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CCB0E0](v7, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);

LABEL_8:
    v12 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
    v0[37] = KeyPath;
    v0[38] = v12;
    swift_beginAccess();
    v13 = v0[28];
    swift_getKeyPath();
    v0[14] = v13;
    v2 = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    v0[39] = v2;
    sub_1B8C23588();

    v14 = *(v13 + 16);
    v15 = v14 >> 62 ? sub_1B8C258B8() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = sub_1B8C23C18();
    v17 = sub_1B8C25468();
    v18 = os_log_type_enabled(v16, v17);
    if (!v15)
    {
      break;
    }

    if (v18)
    {
      v19 = v0[37];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B8B5DD48(0xD000000000000024, v19, &v44);
      _os_log_impl(&dword_1B8B22000, v16, v17, "%s - loop iteration", v20, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CCB0E0](v21, -1, -1, v22);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v23 = v0[28];
    swift_getKeyPath();
    v0[15] = v23;
    sub_1B8C23588();

    v0[16] = v23;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v3 = v24;
    v0[40] = v24;
    swift_endAccess();
    v0[17] = v23;
    swift_getKeyPath();
    sub_1B8C23598();

    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25468();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[37];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B8B5DD48(0xD000000000000024, v27, &v44);
      _os_log_impl(&dword_1B8B22000, v25, v26, "%s - Will load nullable interaction", v28, 0xCu);
      v30 = __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B8CCB0E0](v29, -1, -1, v30);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
    }

    v7 = v0[38];
    v31 = v0[28];
    KeyPath = swift_getKeyPath();
    v0[18] = v31;
    sub_1B8C23588();

    v0[19] = v31;
    v6 = swift_getKeyPath();
    sub_1B8C235A8();

    v32 = *(v31 + 56);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v35 = v0[28];
      *(v35 + 56) = v34;
      v0[20] = v35;
      swift_getKeyPath();
      sub_1B8C23598();

      v36 = swift_task_alloc();
      v0[41] = v36;
      *v36 = v0;
      v36[1] = sub_1B8BC5EBC;
      v37 = v0[34];

      return sub_1B8B42B38(v37);
    }

    __break(1u);
LABEL_26:
    ;
  }

  if (v18)
  {
    v39 = v0[37];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1B8B5DD48(0xD000000000000024, v39, &v44);
    _os_log_impl(&dword_1B8B22000, v16, v17, "%s - exited loop", v40, 0xCu);
    v42 = __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1B8CCB0E0](v41, -1, -1, v42);
    MEMORY[0x1B8CCB0E0](v40, -1, -1);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_1B8BC5EBC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B8BC686C;
  }

  else
  {
    v2 = sub_1B8BC5FD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B8BC5FD0()
{
  v55 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[28];
  sub_1B8B54940(v0[34], v1);
  sub_1B8B548DC(v1, v2);
  swift_getKeyPath();
  v0[21] = v3;
  sub_1B8C23588();

  v0[22] = v3;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  v4 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v52 = v0[28];
    v4 = sub_1B8B5D028(0, v4[2] + 1, 1, v4);
    *(v52 + 24) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1B8B5D028((v6 > 1), v7 + 1, 1, v4);
  }

  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[28];
  v4[2] = v7 + 1;
  sub_1B8B54940(v8, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
  *(v10 + 24) = v4;
  swift_endAccess();
  v0[23] = v10;
  swift_getKeyPath();
  sub_1B8C23598();

  swift_getKeyPath();
  v0[24] = v10;
  sub_1B8C23588();

  v0[25] = v10;
  swift_getKeyPath();
  sub_1B8C235A8();

  v11 = *(v10 + 48);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[28];
    *(v14 + 48) = v13;
    v0[26] = v14;
    swift_getKeyPath();
    sub_1B8C23598();

    v15 = sub_1B8C23C18();
    v16 = sub_1B8C25468();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[37];
      v53 = v0[35];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B8B5DD48(0xD000000000000024, v17, &v54);
      _os_log_impl(&dword_1B8B22000, v15, v16, "%s - successfully fetched interaction", v18, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CCB0E0](v19, -1, -1, v20);
      MEMORY[0x1B8CCB0E0](v18, -1, -1);

      v21 = v53;
    }

    else
    {
      v22 = v0[35];

      v21 = v22;
    }

    sub_1B8B54C40(v21);
    v23 = v0[28];
    swift_getKeyPath();
    v0[14] = v23;
    v0[39] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23588();

    v24 = *(v23 + 16);
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  v25 = sub_1B8C258B8();
LABEL_11:
  v26 = sub_1B8C23C18();
  v27 = sub_1B8C25468();
  v28 = os_log_type_enabled(v26, v27);
  if (v25)
  {
    if (v28)
    {
      v29 = v0[37];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1B8B5DD48(0xD000000000000024, v29, &v54);
      _os_log_impl(&dword_1B8B22000, v26, v27, "%s - loop iteration", v30, 0xCu);
      v32 = __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CCB0E0](v31, -1, -1, v32);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    v33 = v0[28];
    swift_getKeyPath();
    v0[15] = v33;
    sub_1B8C23588();

    v0[16] = v33;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v0[40] = v34;
    swift_endAccess();
    v0[17] = v33;
    swift_getKeyPath();
    sub_1B8C23598();

    v35 = sub_1B8C23C18();
    v36 = sub_1B8C25468();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v0[37];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1B8B5DD48(0xD000000000000024, v37, &v54);
      _os_log_impl(&dword_1B8B22000, v35, v36, "%s - Will load nullable interaction", v38, 0xCu);
      v40 = __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B8CCB0E0](v39, -1, -1, v40);
      MEMORY[0x1B8CCB0E0](v38, -1, -1);
    }

    v41 = v0[28];
    swift_getKeyPath();
    v0[18] = v41;
    sub_1B8C23588();

    v0[19] = v41;
    swift_getKeyPath();
    sub_1B8C235A8();

    v42 = *(v41 + 56);
    v12 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v44 = v0[28];
      *(v44 + 56) = v43;
      v0[20] = v44;
      swift_getKeyPath();
      sub_1B8C23598();

      v45 = swift_task_alloc();
      v0[41] = v45;
      *v45 = v0;
      v45[1] = sub_1B8BC5EBC;
      v46 = v0[34];

      sub_1B8B42B38(v46);
    }
  }

  else
  {
    if (v28)
    {
      v47 = v0[37];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1B8B5DD48(0xD000000000000024, v47, &v54);
      _os_log_impl(&dword_1B8B22000, v26, v27, "%s - exited loop", v48, 0xCu);
      v50 = __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1B8CCB0E0](v49, -1, -1, v50);
      MEMORY[0x1B8CCB0E0](v48, -1, -1);
    }

    v51 = v0[1];

    v51();
  }
}

void sub_1B8BC686C()
{
  v52 = v0;
  v1 = v0[42];

  v2 = v1;
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  v7 = v0[40];
  if (v5)
  {
    v8 = v0[37];
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];
    v12 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v12 = 136446722;
    *(v12 + 4) = sub_1B8B5DD48(0xD000000000000024, v8, &v51);
    *(v12 + 12) = 2082;
    (*(v10 + 16))(v9, v7 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v11);
    sub_1B8BCD078(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = sub_1B8C259E8();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1B8B5DD48(v13, v15, &v51);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    v17 = v6;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v49 = v18;
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s - Error fetching interaction %{public}s: %{public}@", v12, 0x20u);
    sub_1B8B3433C(v49, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v49, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v50, -1, -1);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  else
  {
  }

  v19 = v0[28];
  swift_getKeyPath();
  v0[14] = v19;
  v0[39] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v20 = *(v19 + 16);
  if (v20 >> 62)
  {
    v21 = sub_1B8C258B8();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = sub_1B8C23C18();
  v23 = sub_1B8C25468();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      v25 = v0[37];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1B8B5DD48(0xD000000000000024, v25, &v51);
      _os_log_impl(&dword_1B8B22000, v22, v23, "%s - loop iteration", v26, 0xCu);
      v28 = __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B8CCB0E0](v27, -1, -1, v28);
      MEMORY[0x1B8CCB0E0](v26, -1, -1);
    }

    v29 = v0[28];
    swift_getKeyPath();
    v0[15] = v29;
    sub_1B8C23588();

    v0[16] = v29;
    swift_getKeyPath();
    sub_1B8C235A8();

    swift_beginAccess();
    sub_1B8BC47DC();
    v0[40] = v30;
    swift_endAccess();
    v0[17] = v29;
    swift_getKeyPath();
    sub_1B8C23598();

    v31 = sub_1B8C23C18();
    v32 = sub_1B8C25468();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[37];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1B8B5DD48(0xD000000000000024, v33, &v51);
      _os_log_impl(&dword_1B8B22000, v31, v32, "%s - Will load nullable interaction", v34, 0xCu);
      v36 = __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CCB0E0](v35, -1, -1, v36);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }

    v37 = v0[28];
    swift_getKeyPath();
    v0[18] = v37;
    sub_1B8C23588();

    v0[19] = v37;
    swift_getKeyPath();
    sub_1B8C235A8();

    v38 = *(v37 + 56);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      __break(1u);
    }

    else
    {
      v41 = v0[28];
      *(v41 + 56) = v40;
      v0[20] = v41;
      swift_getKeyPath();
      sub_1B8C23598();

      v42 = swift_task_alloc();
      v0[41] = v42;
      *v42 = v0;
      v42[1] = sub_1B8BC5EBC;
      v43 = v0[34];

      sub_1B8B42B38(v43);
    }
  }

  else
  {
    if (v24)
    {
      v44 = v0[37];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1B8B5DD48(0xD000000000000024, v44, &v51);
      _os_log_impl(&dword_1B8B22000, v22, v23, "%s - exited loop", v45, 0xCu);
      v47 = __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B8CCB0E0](v46, -1, -1, v47);
      MEMORY[0x1B8CCB0E0](v45, -1, -1);
    }

    v48 = v0[1];

    v48();
  }
}

uint64_t sub_1B8BC702C()
{
  v17 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[11] = __swift_project_value_buffer(v1, qword_1EBAB3A30);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B8B5DD48(0xD00000000000001BLL, 0x80000001B8C35920, &v16);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  else
  {
  }

  v7 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v0[12] = 0x80000001B8C35920;
  v0[13] = v7;
  swift_beginAccess();

  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25468();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[10];
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    swift_getKeyPath();
    v0[9] = v10;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23588();

    v12 = *(v10 + 16);
    if (v12 >> 62)
    {
      v13 = sub_1B8C258B8();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v13;

    _os_log_impl(&dword_1B8B22000, v8, v9, "countOfNullable in loop: %ld", v11, 0xCu);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1B8BC7350;

  return sub_1B8BC5608();
}

uint64_t sub_1B8BC7350()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8BC744C, 0, 0);
}

uint64_t sub_1B8BC744C(uint64_t a1)
{
  v35 = v1;
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD00000000000001BLL, v4, &v34);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s - finished loop iteration", v5, 0xCu);
    v7 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v7);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v8 = v1[10];
  swift_getKeyPath();
  v1[5] = v8;
  v1[15] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v9 = *(v8 + 16);
  if (v9 >> 62)
  {
    if (sub_1B8C258B8())
    {
      goto LABEL_5;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v10 = v1[10];
    swift_getKeyPath();
    v1[6] = v10;
    sub_1B8C23588();

    if (*(v10 + 48) > 9)
    {
LABEL_30:
      v32 = v1[1];
      goto LABEL_31;
    }

    v11 = v1[10];
    swift_getKeyPath();
    v1[7] = v11;
    sub_1B8C23588();

    v12 = *(v11 + 16);
    if (!(v12 >> 62))
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:

        v13 = sub_1B8C23C18();
        v14 = sub_1B8C25468();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = v1[10];
          v16 = swift_slowAlloc();
          *v16 = 134217984;
          swift_getKeyPath();
          v1[9] = v15;
          sub_1B8C23588();

          v17 = *(v15 + 16);
          if (v17 >> 62)
          {
            v18 = sub_1B8C258B8();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v16 + 4) = v18;

          _os_log_impl(&dword_1B8B22000, v13, v14, "countOfNullable in loop: %ld", v16, 0xCu);
          MEMORY[0x1B8CCB0E0](v16, -1, -1);
        }

        else
        {
        }

        v19 = swift_task_alloc();
        v1[14] = v19;
        *v19 = v1;
        v19[1] = sub_1B8BC7350;

        return sub_1B8BC5608();
      }

      goto LABEL_30;
    }

LABEL_29:
    if (sub_1B8C258B8())
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v21 = v1[10];
  swift_getKeyPath();
  v1[8] = v21;
  sub_1B8C23588();

  v22 = *(v21 + 48);
  v23 = 10 - v22;
  if (__OFSUB__(10, v22))
  {
    __break(1u);
    goto LABEL_29;
  }

  v24 = sub_1B8C23C18();
  v25 = sub_1B8C25468();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v23;
    _os_log_impl(&dword_1B8B22000, v24, v25, "countOfNullable needs to be refetched, will fetch %ld", v26, 0xCu);
    MEMORY[0x1B8CCB0E0](v26, -1, -1);
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    v30 = 0;
    goto LABEL_24;
  }

  if (HIDWORD(v23))
  {
    v30 = 1;
LABEL_24:
    sub_1B8BCD024(v27, v28, v29);
    swift_allocError();
    *v31 = v30;
    swift_willThrow();
    v32 = v1[1];
LABEL_31:

    return v32();
  }

  v33 = swift_task_alloc();
  v1[16] = v33;
  *v33 = v1;
  v33[1] = sub_1B8BC79CC;

  return sub_1B8BC7DC4(v23);
}

uint64_t sub_1B8BC79CC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8BC7AFC, 0, 0);
  }
}

uint64_t sub_1B8BC7AFC()
{
  v1 = v0[10];
  swift_getKeyPath();
  v0[6] = v1;
  sub_1B8C23588();

  if (*(v1 + 48) < 10)
  {
    v2 = v0[10];
    swift_getKeyPath();
    v0[7] = v2;
    sub_1B8C23588();

    v3 = *(v2 + 16);
    if (v3 >> 62)
    {
      if (sub_1B8C258B8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:

      v4 = sub_1B8C23C18();
      v5 = sub_1B8C25468();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = v0[10];
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        swift_getKeyPath();
        v0[9] = v6;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
        sub_1B8C23588();

        v8 = *(v6 + 16);
        if (v8 >> 62)
        {
          v9 = sub_1B8C258B8();
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v7 + 4) = v9;

        _os_log_impl(&dword_1B8B22000, v4, v5, "countOfNullable in loop: %ld", v7, 0xCu);
        MEMORY[0x1B8CCB0E0](v7, -1, -1);
      }

      else
      {
      }

      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1B8BC7350;

      return sub_1B8BC5608();
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8BC7DC4(int a1)
{
  *(v2 + 96) = v1;
  *(v2 + 216) = a1;
  *(v2 + 104) = *(type metadata accessor for BatchInteraction(0) - 8);
  *(v2 + 112) = swift_task_alloc();
  v3 = sub_1B8C23568();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC7F10, 0, 0);
}

uint64_t sub_1B8BC7F10()
{
  v75 = v0;
  v1 = *(v0 + 96);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v74 = v2;

    sub_1B8C14008(0, v4, 0);
    v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v71 = *(v6 + 72);
    do
    {
      v8 = *(v0 + 168);
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      sub_1B8B548DC(v7, v9);
      (*(v5 + 16))(v8, v9, v10);
      sub_1B8B54C40(v9);
      v74 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B8C14008((v11 > 1), v12 + 1, 1);
        v2 = v74;
      }

      v13 = *(v0 + 168);
      v14 = *(v0 + 120);
      *(v2 + 16) = v12 + 1;
      (*(v5 + 32))(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      v7 += v71;
      --v4;
    }

    while (v4);
  }

  v15 = *(v0 + 96);
  sub_1B8B58A04(v2);
  swift_getKeyPath();
  *(v0 + 80) = v15;
  sub_1B8C23588();

  swift_beginAccess();
  v16 = *(v15 + 16);
  if (v16 >> 62)
  {
    v17 = sub_1B8C258B8();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v74 = MEMORY[0x1E69E7CC0];

    v19 = sub_1B8C14008(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE03E78](v19, v20, v21);
    }

    v22 = 0;
    v23 = *(v0 + 128);
    v18 = v74;
    v69 = v16 & 0xC000000000000001;
    v72 = v16;
    v24 = (v23 + 16);
    do
    {
      v25 = v17;
      v26 = *(v0 + 160);
      v27 = *(v0 + 120);
      if (v69)
      {
        v28 = MEMORY[0x1B8CCA4C0](v22, v72);
        (*v24)(v26, v28 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v24)(v26, *(v72 + 8 * v22 + 32) + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v27);
      }

      v74 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B8C14008((v29 > 1), v30 + 1, 1);
        v18 = v74;
      }

      v31 = *(v0 + 160);
      v32 = *(v0 + 120);
      ++v22;
      *(v18 + 16) = v30 + 1;
      (*(v23 + 32))(v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v30, v31, v32);
      v17 = v25;
    }

    while (v25 != v22);
  }

  v33 = *(v0 + 96);
  sub_1B8B58A04(v18);
  swift_getKeyPath();
  *(v0 + 88) = v33;
  sub_1B8C23588();

  v34 = *(v33 + 32);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = *(v0 + 128);
    v38 = *(v0 + 104);
    v74 = MEMORY[0x1E69E7CC0];

    sub_1B8C14008(0, v35, 0);
    v36 = v74;
    v39 = v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v73 = *(v38 + 72);
    do
    {
      v40 = *(v0 + 152);
      v42 = *(v0 + 112);
      v41 = *(v0 + 120);
      sub_1B8B548DC(v39, v42);
      (*(v37 + 16))(v40, v42, v41);
      sub_1B8B54C40(v42);
      v74 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B8C14008((v43 > 1), v44 + 1, 1);
        v36 = v74;
      }

      v45 = *(v0 + 152);
      v46 = *(v0 + 120);
      *(v36 + 16) = v44 + 1;
      (*(v37 + 32))(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v44, v45, v46);
      v39 += v73;
      --v35;
    }

    while (v35);
  }

  sub_1B8B58A04(v36);
  v47 = *(v0 + 64);
  *(v0 + 176) = v47;
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v50 = *(v0 + 128);
    v74 = MEMORY[0x1E69E7CC0];
    sub_1B8C13FE8(0, v48, 0);
    v49 = v74;
    v51 = *(v50 + 16);
    v50 += 16;
    v52 = v47 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v68 = *(v50 + 56);
    v70 = v51;
    v53 = (v50 - 8);
    do
    {
      v54 = *(v0 + 144);
      v55 = *(v0 + 120);
      v70(v54, v52, v55);
      v56 = sub_1B8C23538();
      v58 = v57;
      (*v53)(v54, v55);
      v74 = v49;
      v60 = *(v49 + 16);
      v59 = *(v49 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1B8C13FE8((v59 > 1), v60 + 1, 1);
        v49 = v74;
      }

      *(v49 + 16) = v60 + 1;
      v61 = v49 + 16 * v60;
      *(v61 + 32) = v56;
      *(v61 + 40) = v58;
      v52 += v68;
      --v48;
    }

    while (v48);
  }

  v62 = sub_1B8BCC8B8(v49);

  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = sub_1B8BCBD9C(*(v62 + 16), 0);
    v65 = sub_1B8BCC130(&v74, v64 + 4, v63, v62);
    sub_1B8B29F70(v74);
    if (v65 == v63)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_34:
  *(v0 + 184) = v64;
  sub_1B8C23688();
  v66 = swift_task_alloc();
  *(v0 + 192) = v66;
  *v66 = v0;
  v66[1] = sub_1B8BC8680;
  v19 = *(v0 + 216);
  v20 = 1;
  v21 = v64;

  return MEMORY[0x1EEE03E78](v19, v20, v21);
}

uint64_t sub_1B8BC8680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {

    v4 = sub_1B8BC8A00;
  }

  else
  {
    v4 = sub_1B8BC87C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8BC87C4(__n128 a1)
{
  v2 = v1[25];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[16];
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B8C25868();
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v15 = *(v5 + 56);
    v16 = v6;
    do
    {
      v9 = v1[17];
      v8 = v1[18];
      v10 = v1[15];
      v16(v8, v7, v10);
      v16(v9, v8, v10);
      type metadata accessor for NullableBatchInteraction(0);
      v11 = swift_allocObject();
      *(v11 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation) = 0;
      sub_1B8C235B8();
      (*(v5 - 8))(v8, v10);
      (*(v5 + 16))(v11 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id, v9, v10);
      sub_1B8C25848();
      sub_1B8C25878();
      sub_1B8C25888();
      sub_1B8C25858();
      v7 += v15;
      --v3;
    }

    while (v3);

    v12 = v17;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1B8BC2F0C(v12);

  v13 = v1[1];

  return v13();
}

uint64_t sub_1B8BC8A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8BC8AA8()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v1[26] = swift_task_alloc();
  v2 = type metadata accessor for BatchInteraction(0);
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BC8BFC, 0, 0);
}

uint64_t sub_1B8BC8BFC()
{
  v32 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[34] = __swift_project_value_buffer(v1, qword_1EBAB3A30);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25468();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v31[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35900, v31);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%s", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[27];
  v10 = v0[28];
  v11 = *(v10 + 56);
  v0[35] = v11;
  v0[36] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v8, 1, 1, v9);
  v0[37] = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  swift_beginAccess();
  sub_1B8B34450(v8, v7, &qword_1EBAA6588, &unk_1B8C2DB50);
  v12 = *(v10 + 48);
  v0[38] = v12;
  if (v12(v7, 1, v9) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v13 = swift_task_alloc();
    v0[39] = v13;
    *v13 = v0;
    v13[1] = sub_1B8BC924C;

    return sub_1B8BC7DC4(10);
  }

  else
  {
    v15 = v0[33];
    v16 = v0[30];
    v17 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v15, v16, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v12(v16, 1, v17) == 1)
    {
      v18 = v0[25];
      v19 = sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v18 + 64))
      {
        v22 = v0[25];
        swift_getKeyPath();
        v23 = swift_task_alloc();
        *(v23 + 16) = v22;
        *(v23 + 24) = 0;
        v0[23] = v22;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v18 + 64) = 0;
      }

      sub_1B8BCCF1C(v19, v20, v21);
      swift_allocError();
      swift_willThrow();
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v30 = v0[1];
    }

    else
    {
      v24 = v0[33];
      v25 = v0[29];
      v27 = v0[25];
      v26 = v0[26];
      sub_1B8B54940(v0[30], v25);
      sub_1B8BC4D78(v25);
      swift_getKeyPath();
      v0[24] = v27;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
      sub_1B8C23588();

      swift_beginAccess();
      v31[0] = xmmword_1B8C28170;
      memset(&v31[1], 0, 41);

      sub_1B8BA0D30(v31);

      v28 = sub_1B8C253A8();
      (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v27;

      sub_1B8BE33EC(0, 0, v26, &unk_1B8C2DD78, v29);

      sub_1B8B54C40(v25);
      sub_1B8B3433C(v24, &qword_1EBAA6588, &unk_1B8C2DB50);

      v30 = v0[1];
    }

    return v30();
  }
}

uint64_t sub_1B8BC924C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1B8BCAE44;
  }

  else
  {
    v2 = sub_1B8BC9360;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1B8BC9360()
{
  v52 = v0;
  v1 = v0[25];
  swift_getKeyPath();
  v0[14] = v1;
  v0[41] = sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    if (sub_1B8C258B8())
    {
      goto LABEL_3;
    }

LABEL_31:
    v23 = v0[33];
    v24 = v0[25];
    swift_getKeyPath();
    v0[22] = v24;
    sub_1B8C23588();

    swift_beginAccess();
    v49 = xmmword_1B8C293B0;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));

    sub_1B8BA0D30(&v49);

    v25 = v23;
    goto LABEL_32;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_3:
  v3 = v0[25];
  swift_getKeyPath();
  v0[15] = v3;
  sub_1B8C23588();

  v4 = *(v3 + 16);
  if (v4 >> 62)
  {
    if (sub_1B8C258B8())
    {
LABEL_5:
      v5 = v0[25];
      swift_getKeyPath();
      v0[16] = v5;
      sub_1B8C23588();

      v0[17] = v5;
      KeyPath = swift_getKeyPath();
      sub_1B8C235A8();

      swift_beginAccess();
      v7 = *(v5 + 16);
      v8 = (v7 >> 62);
      if (v7 >> 62)
      {
        if (!sub_1B8C258B8())
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (sub_1B8C258B8())
        {
LABEL_7:
          if ((v7 & 0xC000000000000001) == 0)
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_53;
            }

            v9 = *(v7 + 32);

LABEL_10:
            v0[42] = v9;
            if (v8)
            {
              if (!sub_1B8C258B8())
              {
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

              if (sub_1B8C258B8() < 1)
              {
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v10 = sub_1B8C258B8();
            }

            else
            {
              v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v10)
              {
                goto LABEL_59;
              }
            }

            KeyPath = (v10 - 1);
            if (!__OFSUB__(v10, 1))
            {
              v11 = v0[25];
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v11 + 16) = v7;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                if (!v8)
                {
                  v8 = (v7 & 0xFFFFFFFFFFFFFF8);
                  if (KeyPath <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_24;
                  }

                  goto LABEL_23;
                }
              }

              else if (!v8)
              {
LABEL_23:
                v13 = v0[25];
                v7 = sub_1B8C25808();
                *(v13 + 16) = v7;
                v8 = (v7 & 0xFFFFFFFFFFFFFF8);
LABEL_24:
                KeyPath = v8 + 4;

                if (!(v7 >> 62))
                {
                  v14 = v8[2];
                  memmove(v8 + 4, v8 + 5, 8 * v14 - 8);
                  v15 = v14 - 1;
                  if (!__OFSUB__(v14, 1))
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_57;
                }

LABEL_54:
                v46 = sub_1B8C258B8();
                if (__OFSUB__(v46, 1))
                {
LABEL_62:
                  __break(1u);
                  return;
                }

                memmove(KeyPath, v8 + 5, 8 * (v46 - 1));
                v47 = sub_1B8C258B8();
                v15 = v47 - 1;
                if (!__OFSUB__(v47, 1))
                {
LABEL_26:
                  v16 = v0[25];
                  v8[2] = v15;
                  *(v16 + 16) = v7;
                  swift_endAccess();
                  v0[18] = v16;
                  swift_getKeyPath();
                  sub_1B8C23598();

                  swift_getKeyPath();
                  v0[19] = v16;
                  sub_1B8C23588();

                  v0[20] = v16;
                  swift_getKeyPath();
                  sub_1B8C235A8();

                  v17 = *(v16 + 56);
                  v18 = __OFADD__(v17, 1);
                  v19 = v17 + 1;
                  if (!v18)
                  {
                    v20 = v0[25];
                    *(v20 + 56) = v19;
                    v0[21] = v20;
                    swift_getKeyPath();
                    sub_1B8C23598();

                    v21 = swift_task_alloc();
                    v0[43] = v21;
                    *v21 = v0;
                    v21[1] = sub_1B8BC9D70;
                    v22 = v0[31];

                    sub_1B8B42B38(v22);
                    return;
                  }

                  goto LABEL_58;
                }

LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              sub_1B8C258B8();
              goto LABEL_23;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_51:
          v9 = MEMORY[0x1B8CCA4C0](0, v7);
          goto LABEL_10;
        }

        __break(1u);
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v27 = v0[38];
  v28 = v0[32];
  v29 = v0[27];
  sub_1B8B34450(v0[33], v28, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v27(v28, 1, v29) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v30 = swift_task_alloc();
    v0[39] = v30;
    *v30 = v0;
    v30[1] = sub_1B8BC924C;

    sub_1B8BC7DC4(10);
    return;
  }

  v31 = v0[38];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[27];
  sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B34450(v32, v33, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v31(v33, 1, v34) == 1)
  {
    v35 = v0[25];
    v36 = sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
    if (*(v35 + 64))
    {
      v39 = v0[25];
      swift_getKeyPath();
      v40 = swift_task_alloc();
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      v0[23] = v39;
      sub_1B8C23578();
    }

    else
    {
      *(v35 + 64) = 0;
    }

    sub_1B8BCCF1C(v36, v37, v38);
    swift_allocError();
    swift_willThrow();
    sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

    v26 = v0[1];
    goto LABEL_33;
  }

  v48 = v0[33];
  v41 = v0[29];
  v43 = v0[25];
  v42 = v0[26];
  sub_1B8B54940(v0[30], v41);
  sub_1B8BC4D78(v41);
  swift_getKeyPath();
  v0[24] = v43;
  sub_1B8C23588();

  swift_beginAccess();
  v49 = xmmword_1B8C28170;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));

  sub_1B8BA0D30(&v49);

  v44 = sub_1B8C253A8();
  (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v43;

  sub_1B8BE33EC(0, 0, v42, &unk_1B8C2DD78, v45);

  sub_1B8B54C40(v41);
  v25 = v48;
LABEL_32:
  sub_1B8B3433C(v25, &qword_1EBAA6588, &unk_1B8C2DB50);

  v26 = v0[1];
LABEL_33:

  v26();
}

uint64_t sub_1B8BC9D70()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1B8BCA3C0;
  }

  else
  {
    v2 = sub_1B8BC9E84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8BC9E84()
{
  v28 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[27];

  sub_1B8B3433C(v2, &qword_1EBAA6588, &unk_1B8C2DB50);
  v1(v3, 0, 1, v4);
  sub_1B8BCCEAC(v3, v2);
  v5 = v0[38];
  v6 = v0[32];
  v7 = v0[27];
  sub_1B8B34450(v0[33], v6, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v5(v6, 1, v7) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v8 = swift_task_alloc();
    v0[39] = v8;
    *v8 = v0;
    v8[1] = sub_1B8BC924C;

    return sub_1B8BC7DC4(10);
  }

  else
  {
    v10 = v0[38];
    v11 = v0[33];
    v12 = v0[30];
    v13 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v11, v12, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v10(v12, 1, v13) == 1)
    {
      v14 = v0[25];
      v15 = sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v14 + 64))
      {
        v18 = v0[25];
        swift_getKeyPath();
        v19 = swift_task_alloc();
        *(v19 + 16) = v18;
        *(v19 + 24) = 0;
        v0[23] = v18;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v14 + 64) = 0;
      }

      sub_1B8BCCF1C(v15, v16, v17);
      swift_allocError();
      swift_willThrow();
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v26 = v0[1];
    }

    else
    {
      v20 = v0[33];
      v21 = v0[29];
      v23 = v0[25];
      v22 = v0[26];
      sub_1B8B54940(v0[30], v21);
      sub_1B8BC4D78(v21);
      swift_getKeyPath();
      v0[24] = v23;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
      sub_1B8C23588();

      swift_beginAccess();
      v27[0] = xmmword_1B8C28170;
      memset(&v27[1], 0, 41);

      sub_1B8BA0D30(v27);

      v24 = sub_1B8C253A8();
      (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v23;

      sub_1B8BE33EC(0, 0, v22, &unk_1B8C2DD78, v25);

      sub_1B8B54C40(v21);
      sub_1B8B3433C(v20, &qword_1EBAA6588, &unk_1B8C2DB50);

      v26 = v0[1];
    }

    return v26();
  }
}

void sub_1B8BCA3C0()
{
  v57 = v0;
  v1 = v0[44];
  v2 = v1;
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[44];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v56[0] = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35900, v56);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s - error loading interaction: %{public}@", v7, 0x16u);
    sub_1B8B3433C(v8, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    v12 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v12);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[25];
  swift_getKeyPath();
  v0[15] = v13;
  sub_1B8C23588();

  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    if (sub_1B8C258B8())
    {
LABEL_6:
      v15 = v0[25];
      swift_getKeyPath();
      v0[16] = v15;
      sub_1B8C23588();

      v0[17] = v15;
      KeyPath = swift_getKeyPath();
      sub_1B8C235A8();

      swift_beginAccess();
      v17 = *(v15 + 16);
      v18 = (v17 >> 62);
      if (v17 >> 62)
      {
        if (!sub_1B8C258B8())
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (sub_1B8C258B8())
        {
LABEL_8:
          if ((v17 & 0xC000000000000001) == 0)
          {
            if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_51;
            }

            v19 = *(v17 + 32);

LABEL_11:
            v0[42] = v19;
            if (v18)
            {
              if (!sub_1B8C258B8())
              {
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              if (sub_1B8C258B8() < 1)
              {
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v20 = sub_1B8C258B8();
            }

            else
            {
              v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v20)
              {
                goto LABEL_57;
              }
            }

            KeyPath = (v20 - 1);
            if (!__OFSUB__(v20, 1))
            {
              v21 = v0[25];
              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v21 + 16) = v17;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
                if (!v18)
                {
                  v18 = (v17 & 0xFFFFFFFFFFFFFF8);
                  if (KeyPath <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_24;
                }
              }

              else if (!v18)
              {
LABEL_24:
                v23 = v0[25];
                v17 = sub_1B8C25808();
                *(v23 + 16) = v17;
                v18 = (v17 & 0xFFFFFFFFFFFFFF8);
LABEL_25:
                KeyPath = v18 + 4;

                if (!(v17 >> 62))
                {
                  v24 = v18[2];
                  memmove(v18 + 4, v18 + 5, 8 * v24 - 8);
                  v25 = v24 - 1;
                  if (!__OFSUB__(v24, 1))
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_55;
                }

LABEL_52:
                v54 = sub_1B8C258B8();
                if (__OFSUB__(v54, 1))
                {
LABEL_60:
                  __break(1u);
                  return;
                }

                memmove(KeyPath, v18 + 5, 8 * (v54 - 1));
                v55 = sub_1B8C258B8();
                v25 = v55 - 1;
                if (!__OFSUB__(v55, 1))
                {
LABEL_27:
                  v26 = v0[25];
                  v18[2] = v25;
                  *(v26 + 16) = v17;
                  swift_endAccess();
                  v0[18] = v26;
                  swift_getKeyPath();
                  sub_1B8C23598();

                  swift_getKeyPath();
                  v0[19] = v26;
                  sub_1B8C23588();

                  v0[20] = v26;
                  swift_getKeyPath();
                  sub_1B8C235A8();

                  v27 = *(v26 + 56);
                  v28 = __OFADD__(v27, 1);
                  v29 = v27 + 1;
                  if (!v28)
                  {
                    v30 = v0[25];
                    *(v30 + 56) = v29;
                    v0[21] = v30;
                    swift_getKeyPath();
                    sub_1B8C23598();

                    v31 = swift_task_alloc();
                    v0[43] = v31;
                    *v31 = v0;
                    v31[1] = sub_1B8BC9D70;
                    v32 = v0[31];

                    sub_1B8B42B38(v32);
                    return;
                  }

                  goto LABEL_56;
                }

LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              sub_1B8C258B8();
              goto LABEL_24;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_49:
          v19 = MEMORY[0x1B8CCA4C0](0, v17);
          goto LABEL_11;
        }

        __break(1u);
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_49;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v33 = v0[38];
  v34 = v0[32];
  v35 = v0[27];
  sub_1B8B34450(v0[33], v34, &qword_1EBAA6588, &unk_1B8C2DB50);
  if (v33(v34, 1, v35) == 1)
  {
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    v36 = swift_task_alloc();
    v0[39] = v36;
    *v36 = v0;
    v36[1] = sub_1B8BC924C;

    sub_1B8BC7DC4(10);
  }

  else
  {
    v37 = v0[38];
    v38 = v0[33];
    v39 = v0[30];
    v40 = v0[27];
    sub_1B8B3433C(v0[32], &qword_1EBAA6588, &unk_1B8C2DB50);
    sub_1B8B34450(v38, v39, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v37(v39, 1, v40) == 1)
    {
      v41 = v0[25];
      v42 = sub_1B8B3433C(v0[30], &qword_1EBAA6588, &unk_1B8C2DB50);
      if (*(v41 + 64))
      {
        v45 = v0[25];
        swift_getKeyPath();
        v46 = swift_task_alloc();
        *(v46 + 16) = v45;
        *(v46 + 24) = 0;
        v0[23] = v45;
        sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
        sub_1B8C23578();
      }

      else
      {
        *(v41 + 64) = 0;
      }

      sub_1B8BCCF1C(v42, v43, v44);
      swift_allocError();
      swift_willThrow();
      sub_1B8B3433C(v0[33], &qword_1EBAA6588, &unk_1B8C2DB50);

      v53 = v0[1];
    }

    else
    {
      v47 = v0[33];
      v48 = v0[29];
      v50 = v0[25];
      v49 = v0[26];
      sub_1B8B54940(v0[30], v48);
      sub_1B8BC4D78(v48);
      swift_getKeyPath();
      v0[24] = v50;
      sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
      sub_1B8C23588();

      swift_beginAccess();
      v56[0] = xmmword_1B8C28170;
      memset(&v56[1], 0, 41);

      sub_1B8BA0D30(v56);

      v51 = sub_1B8C253A8();
      (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = v50;

      sub_1B8BE33EC(0, 0, v49, &unk_1B8C2DD78, v52);

      sub_1B8B54C40(v48);
      sub_1B8B3433C(v47, &qword_1EBAA6588, &unk_1B8C2DB50);

      v53 = v0[1];
    }

    v53();
  }
}

uint64_t sub_1B8BCAE44()
{
  sub_1B8B3433C(*(v0 + 264), &qword_1EBAA6588, &unk_1B8C2DB50);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8BCAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1B8BCAFA4;

  return sub_1B8BC700C();
}

uint64_t sub_1B8BCAFA4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B8BCB1F0;
  }

  else
  {
    v2 = sub_1B8BCB0B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8BCB0B8()
{
  v1 = v0[3];
  if (*(v1 + 64))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(v1 + 64) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8BCB1F0()
{
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B8B22000, v4, v5, "Error populating interactions queue. %{public}@", v8, 0xCu);
    sub_1B8B3433C(v9, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[3];
  if (*(v12 + 64))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[2] = v12;
    sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
    sub_1B8C23578();
  }

  else
  {
    *(v12 + 64) = 0;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8BCB478()
{
  v23 = v0;
  v1 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 296) = v1;
  sub_1B8BCD078(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  if (*(v1 + 64))
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A30);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25498();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_15;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C35790, &v22);
    v7 = "%s - Synching. Cannot load more";
LABEL_14:
    _os_log_impl(&dword_1B8B22000, v3, v4, v7, v5, 0xCu);
    v20 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v20);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
LABEL_15:

    v21 = *(v0 + 8);

    return v21();
  }

  v8 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 304) = v8;
  sub_1B8C23588();

  v9 = OBJC_IVAR____TtC8Feedback18DonationController__stateController;
  swift_beginAccess();
  v10 = *(v8 + v9);
  swift_getKeyPath();
  *(v0 + 312) = v10;
  sub_1B8BCD078(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);

  sub_1B8C23588();

  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  *(v0 + 185) = *(v10 + 57);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  sub_1B8B50FF8(v0 + 144, v0 + 208);

  v14 = *(v0 + 160);
  v15 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v14;
  *(v0 + 48) = v15;
  *(v0 + 57) = *(v0 + 185);
  *(v0 + 80) = xmmword_1B8C293B0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 121) = 0u;
  v16 = *(v0 + 152);
  sub_1B8B3433C(v0 + 16, &qword_1EBAA64D8, &qword_1B8C2DB40);
  if (v16 != 3)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v19 = sub_1B8C23C38();
    __swift_project_value_buffer(v19, qword_1EBAB3A30);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25478();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_15;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C35790, &v22);
    v7 = "%s - Not empty. Cannot load more";
    goto LABEL_14;
  }

  v17 = swift_task_alloc();
  *(v0 + 328) = v17;
  *v17 = v0;
  v17[1] = sub_1B8BCB900;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8BCB900()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B8BCB9F4(double *a1, uint64_t a2)
{
  v3 = sub_1B8C23528();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8C23518();
  sub_1B8C234D8();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  *a1 = v8;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25498();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    swift_beginAccess();
    *(v12 + 4) = *a1;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Donation fetch took: [%{public}f] seconds", v12, 0xCu);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }
}

char *DonationController.deinit()
{

  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback18DonationController__nextDonation, &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback18DonationController__currentID, &qword_1EBAA79C0, &qword_1B8C2D150);

  v1 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DonationController.__deallocating_deinit()
{

  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback18DonationController__nextDonation, &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback18DonationController__currentID, &qword_1EBAA79C0, &qword_1B8C2D150);

  v1 = OBJC_IVAR____TtC8Feedback18DonationController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1B8BCBD9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B8BCBE20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7DA0, &unk_1B8C31280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_1B8BCBEAC(uint64_t a1)
{
  sub_1B8BCC03C(319, &qword_1EBAA7D68, type metadata accessor for BatchInteraction);
  if (v1 <= 0x3F)
  {
    sub_1B8BCC03C(319, &qword_1EBAA7D70, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      sub_1B8C235C8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8BCC03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C25608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8BCC090(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B8C258B8();
LABEL_9:
  result = sub_1B8C25808();
  *v2 = result;
  return result;
}

void *sub_1B8BCC130(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B8BCC288(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_1B8B96144(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_1B8B96144(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B8BCC410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for BatchInteraction(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1B8BCC558(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B8B5D028(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B8BCC410(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B8BCC618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7D88, &qword_1B8C2DCB8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1B8B34450(a1, &v20 - v13, &qword_1EBAA6588, &unk_1B8C2DB50);
  sub_1B8B34450(a2, &v14[v15], &qword_1EBAA6588, &unk_1B8C2DB50);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B34450(v14, v10, &qword_1EBAA6588, &unk_1B8C2DB50);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1B8B54940(&v14[v15], v7);
      v18 = sub_1B8B46048(v10, v7);
      sub_1B8B54C40(v7);
      sub_1B8B54C40(v10);
      sub_1B8B3433C(v14, &qword_1EBAA6588, &unk_1B8C2DB50);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1B8B54C40(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA7D88, &qword_1B8C2DCB8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA6588, &unk_1B8C2DB50);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1B8BCC8B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CCA0C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8BF7260(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8BCC950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NullableBatchInteraction(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B8C258B8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B8C258B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BCCA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23568();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7D78, &qword_1B8C2DC38);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B8B34450(a1, &v21 - v13, &qword_1EBAA79C0, &qword_1B8C2D150);
  sub_1B8B34450(a2, &v14[v15], &qword_1EBAA79C0, &qword_1B8C2D150);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B34450(v14, v10, &qword_1EBAA79C0, &qword_1B8C2D150);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B8BCD078(&qword_1EBAA7D80, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1B8C250E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B8B3433C(v14, &qword_1EBAA79C0, &qword_1B8C2D150);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA7D78, &qword_1B8C2DC38);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA79C0, &qword_1B8C2D150);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1B8BCCE00()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1B8BCCEAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8BCCF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7D90;
  if (!qword_1EBAA7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D90);
  }

  return result;
}

uint64_t sub_1B8BCCF70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8BCAF10(a1, v4, v5, v6);
}

unint64_t sub_1B8BCD024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7D98;
  if (!qword_1EBAA7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7D98);
  }

  return result;
}

uint64_t sub_1B8BCD078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8BCD12C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B8C258B8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1B8C258B8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1B8BCC090(result, 1);

  return sub_1B8BCC950(v5, v3, 0);
}

unint64_t sub_1B8BCD228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7DA8;
  if (!qword_1EBAA7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7DA8);
  }

  return result;
}

unint64_t sub_1B8BCD280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7DB0;
  if (!qword_1EBAA7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7DB0);
  }

  return result;
}

void sub_1B8BCD2DC()
{
  v1 = *(type metadata accessor for BatchInteraction(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1B8BC49C8(v2, v3);
}

double sub_1B8BCD458()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B8BCD530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B8BCD588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_1B8BCD69C()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B8BCD750(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B8BCD7A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *sub_1B8BCD868(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError] = a1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for FBKSubmissionError();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, sel_init);
  v5 = [v3 userInfo];
  v6 = sub_1B8C25098();

  v7 = sub_1B8C25128();
  if (!*(v6 + 16))
  {

LABEL_7:

    goto LABEL_8;
  }

  v9 = sub_1B8B5E2DC(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_1B8B5FDD4(*(v6 + 56) + 32 * v9, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E00, &qword_1B8C2DFA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return v4;
  }

  v12 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  *&v4[v12] = v14;

  return v4;
}

uint64_t sub_1B8BCDAC8()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = [v2 description];
  v4 = sub_1B8C25128();

  return v4;
}

void sub_1B8BCDCC0(void *a1)
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = sub_1B8C25088();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1B8C250F8();
  [a1 encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v7 = [*(v1 + v6) domain];
  if (!v7)
  {
    sub_1B8C25128();
    v7 = sub_1B8C250F8();
  }

  v8 = [*(v1 + v6) code];
  v9 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v7 code:v8 userInfo:0];

  v10 = sub_1B8C250F8();
  [a1 encodeObject:v9 forKey:v10];
}

id FBKSubmissionError.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B8BCE1F4();

  return v4;
}

id FBKSubmissionError.init(coder:)(void *a1)
{
  v2 = sub_1B8BCE1F4();

  return v2;
}

id FBKSubmissionError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKSubmissionError.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKSubmissionError();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *_s8Feedback18FBKSubmissionErrorC16debugDescriptionACSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E08, &qword_1B8C2DFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C2A740;
  *(inited + 32) = sub_1B8C25128();
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v6 = sub_1B8B5F49C(inited);
  swift_setDeallocating();
  sub_1B8B3433C(inited + 32, &unk_1EBAA7E10, &qword_1B8C2DFB8);
  sub_1B8BA1F7C(v6);

  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_1B8C250F8();
  v9 = sub_1B8C25088();

  v10 = [v7 initWithDomain:v8 code:-1 userInfo:v9];

  v11 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
  return sub_1B8BCD868(v10);
}

id sub_1B8BCE1F4()
{
  v1 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  *&v0[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DE0, &unk_1B8C2FC70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8C293F0;
  *(v2 + 32) = sub_1B8B46130(0, &unk_1EBAA8870, 0x1E695DF20);
  *(v2 + 40) = sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  *(v2 + 48) = sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
  sub_1B8C255B8();

  if (v8)
  {
    sub_1B8B5FE40(&v7, &v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E00, &qword_1B8C2DFA8);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    sub_1B8B3433C(&v7, &unk_1EBAA7DF0, &unk_1B8C2D750);
    v3 = 0;
  }

  swift_beginAccess();
  *&v0[v1] = v3;

  sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0);
  result = sub_1B8C255A8();
  if (result)
  {
    *&v0[OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError] = result;
    v6.receiver = v0;
    v6.super_class = type metadata accessor for FBKSubmissionError();
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t View.inlineFeedback(controller:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v29 = a6;
  v30 = a7;
  v28 = a8;
  v15 = type metadata accessor for FBKEvaluationViewModifier(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 20);
  *(v18 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  swift_storeEnumTagMultiPayload();
  v32 = a1;
  v33 = a2;
  v34 = a3;

  v20 = a3;
  sub_1B8B247D4(a4, a5);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v31, v21);
  v22 = v31;
  if (a4)
  {
    KeyPath = swift_getKeyPath();
    v27 = v9;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](KeyPath);
    v26 = v20;
    v25[-4] = v22;
    v25[-3] = a4;
    v25[-2] = a5;
    v32 = v22;
    sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
    v20 = v26;
    sub_1B8B30A44(a4, a5);
  }

  else
  {
  }

  *v18 = a1;
  v18[1] = a2;
  v18[2] = v20;
  MEMORY[0x1B8CC9900](v18, v29, v15, v30);
  return sub_1B8BD0D84(v18, type metadata accessor for FBKEvaluationViewModifier);
}

{
  if (a4)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    sub_1B8B247D4(a4, a5);

    View.inlineFeedback(controller:completion:)(a1, a2, a3, sub_1B8BD0640, v16, a6, a7, a8);

    return sub_1B8B30A44(a4, a5);
  }

  else
  {

    return View.inlineFeedback(controller:completion:)(a1, a2, a3, 0, 0, a6, a7, a8);
  }
}

uint64_t type metadata accessor for FBKEvaluationViewModifier(uint64_t a1)
{
  result = qword_1EDC855F8;
  if (!qword_1EDC855F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8BCE96C(void *a1, char a2, void (*a3)(uint64_t *))
{
  v30 = a3;
  v5 = type metadata accessor for FBKEvaluation.Response(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v29 - v16);
  if (a2)
  {
    *v17 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v30(v17);
    v19 = &unk_1EBAA84B0;
    v20 = &unk_1B8C2E160;
    v21 = v17;
  }

  else
  {
    v22 = v30;
    sub_1B8BBE208(a1, v14);
    sub_1B8B34450(v14, v12, &qword_1EBAA7E68, &qword_1B8C2E158);
    if ((*(v6 + 48))(v12, 1, v5) == 1)
    {
      v23 = sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
      sub_1B8BD0C60(v23, v24, v25);
      v26 = swift_allocError();
      *v27 = 3;
      *v17 = v26;
      swift_storeEnumTagMultiPayload();
      v22(v17);
      sub_1B8B3433C(v17, &unk_1EBAA84B0, &unk_1B8C2E160);
      v21 = v14;
      v19 = &qword_1EBAA7E68;
      v20 = &qword_1B8C2E158;
    }

    else
    {
      sub_1B8BD0CB4(v12, v8, type metadata accessor for FBKEvaluation.Response);
      sub_1B8BD0D1C(v8, v17, type metadata accessor for FBKEvaluation.Response);
      swift_storeEnumTagMultiPayload();
      v22(v17);
      sub_1B8B3433C(v17, &unk_1EBAA84B0, &unk_1B8C2E160);
      sub_1B8BD0D84(v8, type metadata accessor for FBKEvaluation.Response);
      v19 = &qword_1EBAA7E68;
      v20 = &qword_1B8C2E158;
      v21 = v14;
    }
  }

  return sub_1B8B3433C(v21, v19, v20);
}

uint64_t sub_1B8BCECAC@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FBKEvaluationViewModifier(0);
  sub_1B8B34450(v1 + *(v10 + 20), v9, &qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B8BD0BD0(v9, a1);
  }

  sub_1B8C25488();
  v12 = sub_1B8C247B8();
  sub_1B8C23C08();

  sub_1B8C24298();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_1B8BCEE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v23[2] = a1;
  v4 = type metadata accessor for FBKEvaluationViewModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B8BD0D1C(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8C25368();
  v7 = sub_1B8C25358();
  v8 = *(v5 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  sub_1B8BD0CB4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8BD0D1C(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  v12 = sub_1B8C25358();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  sub_1B8BD0CB4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9, type metadata accessor for FBKEvaluationViewModifier);
  sub_1B8C24E78();
  sub_1B8BD0D1C(v3, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FBKEvaluationViewModifier);
  v14 = swift_allocObject();
  sub_1B8BD0CB4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + ((v8 + 16) & ~v8), type metadata accessor for FBKEvaluationViewModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8BD0AB4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  v19 = sub_1B8BD0B18(v16, v17, v18);
  v24 = &type metadata for FeedbackFormView;
  v25 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v16;
  v25 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v24 = v15;
  v25 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1B8C24BD8();

  return result;
}

void sub_1B8BCF1D4(char **a1@<X2>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v14 = *a1;
  v15 = v4;
  v16 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v13);
  v7 = v13;
  swift_getKeyPath();
  v14 = v7;
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v8 = v7[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented];

  if (v8 == 1 && (v14 = v3, v15 = v4, v16 = v5, MEMORY[0x1B8CC9B00](&v13, v6), v9 = v13, swift_getKeyPath(), v14 = v9, sub_1B8C23588(), , v10 = *&v9[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction], v11 = v10, v9, v10))
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1B8BCF35C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v9 = *a4;
  v10 = *(a4 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v8, v5);
  v6 = v8;
  if (v4 == v8[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented])
  {
    v8[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v6;
    sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }
}

double sub_1B8BCF4B0(uint64_t a1)
{
  sub_1B8C24F58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E38, &qword_1B8C2E0B0);
  sub_1B8C23F08();

  return result;
}

void sub_1B8BCF534(char **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = sub_1B8C24648();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E50, &qword_1B8C2E0C8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v42 = (&v36 - v11);
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v46 = *a1;
  v47 = v12;
  v48 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](&v49);
  v16 = v49;
  swift_getKeyPath();
  v46 = v16;
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v17 = *&v16[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction];
  v18 = v17;

  if (v17)
  {
    v46 = v13;
    v47 = v12;
    v48 = v14;
    MEMORY[0x1B8CC9B00](&v49, v15);
    v19 = v49;
    v20 = sub_1B8BF1BDC();

    if (v20)
    {
      v37 = v18;
      v21 = v42;
      sub_1B8BCECAC(v42);
      v22 = v43;
      v23 = v41;
      (*(v43 + 104))(v10, *MEMORY[0x1E697FF38], v41);
      (*(v22 + 56))(v10, 0, 1, v23);
      v24 = *(v39 + 48);
      v25 = v44;
      sub_1B8B34450(v21, v44, &qword_1EBAA7E28, &qword_1B8C2E050);
      v26 = v25;
      sub_1B8B34450(v10, v25 + v24, &qword_1EBAA7E28, &qword_1B8C2E050);
      v27 = *(v22 + 48);
      if (v27(v25, 1, v23) == 1)
      {
        sub_1B8B3433C(v10, &qword_1EBAA7E28, &qword_1B8C2E050);
        v28 = v44;
        sub_1B8B3433C(v21, &qword_1EBAA7E28, &qword_1B8C2E050);
        v29 = v27(v28 + v24, 1, v23);
        v18 = v37;
        if (v29 == 1)
        {
          sub_1B8B3433C(v28, &qword_1EBAA7E28, &qword_1B8C2E050);
          v30 = 1;
LABEL_11:
          sub_1B8BCFAE8(v18, v30 & 1, v45);

          return;
        }
      }

      else
      {
        sub_1B8B34450(v25, v40, &qword_1EBAA7E28, &qword_1B8C2E050);
        v31 = v27(v25 + v24, 1, v23);
        v18 = v37;
        if (v31 != 1)
        {
          v32 = v43;
          v33 = v38;
          (*(v43 + 32))(v38, v26 + v24, v23);
          sub_1B8BD0B88(&qword_1EBAA7E58, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
          v34 = v40;
          v30 = sub_1B8C250E8();
          v35 = *(v32 + 8);
          v35(v33, v23);
          sub_1B8B3433C(v10, &qword_1EBAA7E28, &qword_1B8C2E050);
          sub_1B8B3433C(v42, &qword_1EBAA7E28, &qword_1B8C2E050);
          v35(v34, v23);
          sub_1B8B3433C(v44, &qword_1EBAA7E28, &qword_1B8C2E050);
          goto LABEL_11;
        }

        sub_1B8B3433C(v10, &qword_1EBAA7E28, &qword_1B8C2E050);
        v28 = v44;
        sub_1B8B3433C(v42, &qword_1EBAA7E28, &qword_1B8C2E050);
        (*(v43 + 8))(v40, v23);
      }

      sub_1B8B3433C(v28, &qword_1EBAA7E50, &qword_1B8C2E0C8);
      v30 = 0;
      goto LABEL_11;
    }

    v30 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1B8BCFAE8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a3;
  v50 = sub_1B8C24798();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E60, &qword_1B8C2E0F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E48, &qword_1B8C2E0C0);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E40, &qword_1B8C2E0B8);
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v40 - v13;
  v46 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
    v14 = sub_1B8C24408();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B8C27920;
    sub_1B8C243E8();
    v52 = *v4;
    v53 = *(v4 + 8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](v51, v19);
    v20 = v51[0];
    (*(v15 + 16))(v18 + v17 + v16, v51[0] + OBJC_IVAR____TtC8Feedback23FBKEvaluationController_customSmallDetentForSwiftUI, v14);

    sub_1B8B8ACD4(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  v21 = *v4;
  v22 = *(v4 + 8);
  v23 = *(v4 + 16);
  v52 = v21;
  *&v53 = v22;
  *(&v53 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v51);
  v24 = v51[0];
  v51[3] = a1;
  v51[4] = v51[0];
  v52 = v21;
  *&v53 = v22;
  *(&v53 + 1) = v23;
  v25 = a1;
  sub_1B8C24E68();
  v26 = v51[0];
  v27 = v51[1];
  v28 = v51[2];
  swift_getKeyPath();
  v52 = v26;
  *&v53 = v27;
  *(&v53 + 1) = v28;
  sub_1B8C24E58();

  v32 = sub_1B8BD0B18(v29, v30, v31);
  v33 = v40;
  sub_1B8C24B48();

  sub_1B8B3433C(v10, &qword_1EBAA7E60, &qword_1B8C2E0F8);

  v52 = &type metadata for FeedbackFormView;
  *&v53 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v42;
  v35 = v43;
  sub_1B8C24BA8();
  (*(v41 + 8))(v33, v35);
  v37 = v47;
  if (v46)
  {
    sub_1B8C24778();
  }

  else
  {
    sub_1B8C24788();
  }

  v52 = v35;
  *&v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v45;
  sub_1B8C24BB8();
  (*(v48 + 8))(v37, v50);
  return (*(v44 + 8))(v36, v38);
}

uint64_t sub_1B8BD0044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v5 = sub_1B8C24408();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B8BD013C(uint64_t a1)
{
  v2 = sub_1B8C24408();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1B8BE7024(v4);
}

id sub_1B8BD0230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction);
  *a2 = v4;

  return v4;
}

void sub_1B8BD02F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B8BE72B4(v1);
}

uint64_t sub_1B8BD0320@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8BD0E24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B8B247D4(v4, v5);
}

double sub_1B8BD0418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1B8BD0DE4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B8B247D4(v2, v3);
  sub_1B8BD0B88(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23578();
  sub_1B8B30A44(v5, v4);

  return result;
}

uint64_t sub_1B8BD0598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B34450(a1, &v5 - v3, &qword_1EBAA7E28, &qword_1B8C2E050);
  return sub_1B8C24198();
}

void sub_1B8BD0674(uint64_t a1)
{
  sub_1B8BD06F8(319);
  if (v1 <= 0x3F)
  {
    sub_1B8BD0750(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8BD06F8(uint64_t a1)
{
  if (!qword_1EDC85640)
  {
    type metadata accessor for FBKEvaluationController(255);
    v1 = sub_1B8C24E88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC85640);
    }
  }
}

void sub_1B8BD0750(uint64_t a1)
{
  if (!qword_1EDC85650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E28, &qword_1B8C2E050);
    v1 = sub_1B8C23D98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC85650);
    }
  }
}

void sub_1B8BD07D0(char *a1@<X8>)
{
  v3 = *(type metadata accessor for FBKEvaluationViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_1B8BCF1D4(v4, a1);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = (type metadata accessor for FBKEvaluationViewModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1B8C24648();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B8BD09D0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for FBKEvaluationViewModifier(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1B8BCF35C(a1, v4, v5, v6);
}

double sub_1B8BD0A44()
{
  v1 = *(type metadata accessor for FBKEvaluationViewModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B8BCF4B0(v2);
}

unint64_t sub_1B8BD0AB4()
{
  result = qword_1EDC85648;
  if (!qword_1EDC85648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7E30, &qword_1B8C2E0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85648);
  }

  return result;
}

unint64_t sub_1B8BD0B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC85638;
  if (!qword_1EDC85638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85638);
  }

  return result;
}

uint64_t sub_1B8BD0B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8BD0BD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E28, &qword_1B8C2E050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8BD0C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7E70;
  if (!qword_1EBAA7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E70);
  }

  return result;
}

uint64_t sub_1B8BD0CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD0D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD0D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BD0DE4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1B8BD0E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8BD100C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8BD0EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8BD100C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackDraftLaunchController.IntroductionPage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E78, &unk_1B8C2E170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8BD100C(v6, v7, v8);
  sub_1B8C25B18();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B8BD100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7E80;
  if (!qword_1EBAA7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E80);
  }

  return result;
}

uint64_t sub_1B8BD10B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E78, &unk_1B8C2E170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8BD100C(v6, v7, v8);
  sub_1B8C25B18();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B8BD11C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_1B8BD122C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B8BD1274(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id FBKFeedbackDraftLaunchController.__allocating_init(feedbackForm:introductionPages:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  *&v5[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  swift_beginAccess();
  *&v5[v6] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id FBKFeedbackDraftLaunchController.init(feedbackForm:introductionPages:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages;
  *&v2[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  swift_beginAccess();
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1B8BD1464(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1B8BD14C4()
{
  v1 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id FBKFeedbackDraftLaunchController.__allocating_init(feedbackForm:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id FBKFeedbackDraftLaunchController.init(feedbackForm:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_introductionPages] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B8BD15D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC8Feedback32FBKFeedbackDraftLaunchController_form;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1B8BFF590(v6);

  v9 = sub_1B8C23498();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_1B8BD17D0(v6);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1B8C257E8();

  v15[3] = 0xD000000000000024;
  v15[4] = 0x80000001B8C35AC0;
  v12 = (*(v2 + v7) + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];

  MEMORY[0x1B8CC9EB0](v14, v13);

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8BD17D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FBKFeedbackDraftLaunchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKFeedbackDraftLaunchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKFeedbackDraftLaunchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B8BD1AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7E98;
  if (!qword_1EBAA7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7E98);
  }

  return result;
}

unint64_t sub_1B8BD1B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7EA0;
  if (!qword_1EBAA7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7EA0);
  }

  return result;
}

void NSUserDefaults.authenticationMethod.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B8C250F8();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_1B8C25128();
    v7 = v6;

    v8 = v5 == 1701736302 && v7 == 0xE400000000000000;
    if (v8 || (sub_1B8C25A08() & 1) != 0)
    {

      v9 = 0;
    }

    else if (v5 == 0x6C616E6F6974706FLL && v7 == 0xE800000000000000)
    {

      v9 = 1;
    }

    else
    {
      v11 = sub_1B8C25A08();

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

uint64_t sub_1B8BD1CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8BD1D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1B8BD1DD0(uint64_t a1)
{
  sub_1B8B46130(319, &qword_1EBAA6220, 0x1E69DCAB8);
  if (v1 <= 0x3F)
  {
    sub_1B8C237B8();
    if (v2 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA7EB8, &type metadata for ListPreviewer.Content.Section, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD1EE8(uint64_t a1)
{
  type metadata accessor for ListPreviewer.Content(319);
  if (v1 <= 0x3F)
  {
    sub_1B8BD8604(319, &qword_1EBAA6800, type metadata accessor for FullScreenPreviewController);
    if (v2 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA5DE8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8BD1FE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B8C25AB8();
  if (!a4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v6);
    goto LABEL_8;
  }

  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!a3)
  {
    sub_1B8C25AD8();
    return sub_1B8C25AF8();
  }

  sub_1B8C25AD8();
LABEL_8:
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD20B8(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 24) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v2);
    goto LABEL_8;
  }

  v3 = *(v1 + 16);
  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!v3)
  {
    return sub_1B8C25AD8();
  }

  sub_1B8C25AD8();
LABEL_8:

  return sub_1B8C251B8();
}

uint64_t sub_1B8BD2188(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B8C25AB8();
  if (!v3)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B8CCA790](v4);
    goto LABEL_8;
  }

  MEMORY[0x1B8CCA790](2);
  sub_1B8C255F8();
  if (!v2)
  {
    sub_1B8C25AD8();
    return sub_1B8C25AF8();
  }

  sub_1B8C25AD8();
LABEL_8:
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD226C()
{
  v1 = *(v0 + 16);
  sub_1B8C25AB8();
  sub_1B8C251B8();
  sub_1B8BD76E8(v3, v1);
  return sub_1B8C25AF8();
}

void *sub_1B8BD22D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B8C251B8();

  return sub_1B8BD76E8(a1, v3);
}

uint64_t sub_1B8BD2314(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B8C25AB8();
  sub_1B8C251B8();
  sub_1B8BD76E8(v4, v2);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD2374(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  return sub_1B8B446D0(v2, v3);
}

uint64_t sub_1B8BD23E8(uint64_t a1)
{
  sub_1B8C25AB8();
  sub_1B8C255F8();
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
  sub_1B8C250C8();
  sub_1B8BD74F8(v4, *(v1 + *(a1 + 24)));
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD24A4(uint64_t a1, uint64_t a2)
{
  sub_1B8C255F8();
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
  sub_1B8C250C8();
  v5 = *(v2 + *(a2 + 24));

  return sub_1B8BD74F8(a1, v5);
}

uint64_t sub_1B8BD2558(uint64_t a1, uint64_t a2)
{
  sub_1B8C25AB8();
  sub_1B8C255F8();
  sub_1B8C237B8();
  sub_1B8BD7984(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
  sub_1B8C250C8();
  sub_1B8BD74F8(v5, *(v2 + *(a2 + 24)));
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD2610(void *a1, void *a2, uint64_t a3)
{
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  if ((sub_1B8C255E8() & 1) == 0 || (MEMORY[0x1B8CC8470](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1B8B445D0(v7, v8);
}

uint64_t sub_1B8BD26B0@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for ListPreviewer(0);
  v3 = *(v2 - 8);
  v65 = v2 - 8;
  v73 = v3;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = v4;
  v75 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B8C24698();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1B8C23FC8();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EE8, &qword_1B8C2E550);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7EF8, &qword_1B8C2E560);
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v57 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F00, &qword_1B8C2E568);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v57 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F08, &qword_1B8C2E570);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v57 - v17;
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F10, &qword_1B8C2E578);
  v18 = v1;
  sub_1B8B34CFC(&qword_1EBAA7F18, &qword_1EBAA7F10, &qword_1B8C2E578, MEMORY[0x1E6981F48]);
  sub_1B8C24968();
  sub_1B8C23FB8();
  sub_1B8B34CFC(&qword_1EBAA7F20, &qword_1EBAA7EE8, &qword_1B8C2E550, MEMORY[0x1E697CD20]);
  v19 = v59;
  sub_1B8C24C58();
  (*(v60 + 8))(v7, v19);
  (*(v9 + 8))(v11, v8);
  LOBYTE(v19) = sub_1B8C247F8();
  sub_1B8C23D18();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F28, &qword_1B8C2E580) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  LOBYTE(v19) = sub_1B8C24828();
  sub_1B8C23D18();
  v29 = v61;
  v30 = &v13[*(v61 + 36)];
  *v30 = v19;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = sub_1B8BD91F8(&qword_1EBAA7F30, &qword_1EBAA7EF0, &qword_1B8C2E558, sub_1B8BD79D4);
  v36 = v58;
  sub_1B8C24B98();
  sub_1B8B2C7B8(v13);
  v37 = *(v65 + 32);
  v65 = v18;
  v38 = (v18 + v37);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v78) = v39;
  v79 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  v78 = v29;
  v79 = v35;
  v41 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x1E69E6370];
  v44 = MEMORY[0x1E69E6388];
  v45 = v62;
  sub_1B8C24B88();
  (*(v63 + 8))(v36, v14);
  sub_1B8C24688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F40, &qword_1B8C2E588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  v47 = sub_1B8C247E8();
  *(inited + 32) = v47;
  v48 = sub_1B8C247C8();
  *(inited + 33) = v48;
  sub_1B8C247D8();
  sub_1B8C247D8();
  if (sub_1B8C247D8() != v47)
  {
    sub_1B8C247D8();
  }

  sub_1B8C247D8();
  if (sub_1B8C247D8() != v48)
  {
    sub_1B8C247D8();
  }

  v78 = v14;
  v79 = v43;
  v80 = OpaqueTypeConformance2;
  v81 = v44;
  swift_getOpaqueTypeConformance2();
  v49 = v67;
  v50 = v68;
  sub_1B8C24B18();
  (*(v71 + 8))(v41, v72);
  (*(v66 + 8))(v45, v50);
  v51 = v75;
  sub_1B8BD7E20(v65, v75, type metadata accessor for ListPreviewer);
  v52 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v53 = swift_allocObject();
  sub_1B8BD81DC(v51, v53 + v52, type metadata accessor for ListPreviewer);
  v54 = v76;
  (*(v69 + 32))(v76, v49, v70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F48, &qword_1B8C2E590);
  v56 = (v54 + *(result + 36));
  *v56 = sub_1B8BD7AF0;
  v56[1] = v53;
  v56[2] = 0;
  v56[3] = 0;
  return result;
}

uint64_t sub_1B8BD2FF4@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ListPreviewer(0);
  v44 = *(v3 - 8);
  v43[1] = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F50, &qword_1B8C2E598);
  v46 = *(v48 - 8);
  v6 = MEMORY[0x1EEE9AC00](v48);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = v43 - v8;
  v9 = type metadata accessor for ImageWithPreview(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F58, &unk_1B8C2E5A0);
  v51 = *(v45 - 8);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v50 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - v14;
  v16 = *a1;
  v17 = type metadata accessor for ListPreviewer.Content(0);
  v18 = *(v17 + 20);
  v19 = *(v9 + 20);
  v20 = sub_1B8C237B8();
  (*(*(v20 - 8) + 16))(&v11[v19], a1 + v18, v20);
  *v11 = v16;
  v21 = &v11[*(v9 + 24)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8BD7984(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  v22 = v16;
  *v21 = sub_1B8C23DA8();
  v21[8] = v23 & 1;
  sub_1B8C23DF8();
  sub_1B8BD7984(&qword_1EBAA7F60, type metadata accessor for ImageWithPreview, &unk_1B8C29884);
  v24 = v15;
  v43[0] = v15;
  sub_1B8C24B08();
  sub_1B8BD7CD0(v11);
  v53 = *(a1 + *(v17 + 24));
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v5, type metadata accessor for ListPreviewer);
  v25 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v26 = swift_allocObject();
  sub_1B8BD81DC(v5, v26 + v25, type metadata accessor for ListPreviewer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F68, &qword_1B8C2E5C8);
  type metadata accessor for ListSection(0);
  v27 = sub_1B8B34CFC(&qword_1EBAA7F70, &qword_1EBAA7F68, &qword_1B8C2E5C8, MEMORY[0x1E69E6338]);
  sub_1B8BD7DCC(v27, v28, v29);
  sub_1B8BD7984(&qword_1EBAA7F80, type metadata accessor for ListSection, &unk_1B8C2E5E4);
  v30 = v52;
  sub_1B8C24EB8();
  v31 = v50;
  v32 = *(v51 + 16);
  v33 = v45;
  v32(v50, v24, v45);
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 16);
  v37 = v48;
  v36(v47, v30, v48);
  v38 = v49;
  v32(v49, v31, v33);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7F88, &qword_1B8C2E5D0);
  v36(&v38[*(v39 + 48)], v34, v37);
  v40 = *(v35 + 8);
  v40(v52, v37);
  v41 = *(v51 + 8);
  v41(v43[0], v33);
  v40(v34, v37);
  return v41(v50, v33);
}

double sub_1B8BD35E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  sub_1B8BD7E20(a2, a3, type metadata accessor for ListPreviewer.Content);
  v7 = (a3 + *(type metadata accessor for ListSection(0) + 20));
  *v7 = v5;
  v7[1] = v4;
  v7[2] = v6;

  return result;
}

uint64_t sub_1B8BD3664(uint64_t a1)
{
  v24 = a1;
  v26 = sub_1B8C24FD8();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B8C25008();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListPreviewer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1B8C25028();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v23 = sub_1B8C25538();
  sub_1B8C25018();
  sub_1B8C25078();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_1B8BD7E20(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListPreviewer);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1B8BD81DC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ListPreviewer);
  aBlock[4] = sub_1B8BD7C2C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_8;
  v18 = _Block_copy(aBlock);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BD7984(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0, MEMORY[0x1E69E6328]);
  v19 = v26;
  sub_1B8C256D8();
  v20 = v23;
  MEMORY[0x1B8CCA1C0](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

double sub_1B8BD3AF0(uint64_t a1)
{
  type metadata accessor for ListPreviewer(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D68();
  sub_1B8C24D78();

  return result;
}

unint64_t sub_1B8BD3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7ED8;
  if (!qword_1EBAA7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7ED8);
  }

  return result;
}

unint64_t sub_1B8BD3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7EE0;
  if (!qword_1EBAA7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7EE0);
  }

  return result;
}

uint64_t sub_1B8BD3C98()
{
  result = type metadata accessor for ListSection(0);
  v2 = 0;
  v3 = *(v0 + *(result + 20) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3 + 32 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = (v6 + 32);
    ++v2;
    v8 = *(v6 + 56);
    v6 += 32;
    if (!v8)
    {
      v10 = *v7;
      v9 = v7[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B8B5D1AC(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1B8B5D1AC((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BD3D9C()
{
  result = type metadata accessor for ListSection(0);
  v2 = 0;
  v3 = *(v0 + *(result + 20) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3 + 32 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      return v5;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = v6 + 32;
    ++v2;
    v8 = *(v6 + 56);
    v6 += 32;
    if (v8)
    {
      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = *(v7 + 16);
      sub_1B8B46850(*v7, v10, v11, v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B8B5D784(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B8B5D784((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 32 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      *(v14 + 56) = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BD3EC0(uint64_t a1)
{
  v2 = sub_1B8C23A28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  *v8 = sub_1B8C24478();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FE0, &qword_1B8C2E658);
  sub_1B8BD40CC(a1, &v8[*(v9 + 44)]);
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBAB3A60);
  (*(v3 + 16))(v5, v10, v2);
  v12[1] = sub_1B8C24CE8();
  *&v8[*(v6 + 36)] = sub_1B8C24E28();
  sub_1B8C23DF8();
  sub_1B8BD80D8();
  sub_1B8C24B08();
  return sub_1B8B3433C(v8, &qword_1EBAA7FB0, &qword_1B8C2E640);
}

uint64_t sub_1B8BD40CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for ListSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FE8, &qword_1B8C2E660);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v10;
  v11 = type metadata accessor for TextRow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF0, &qword_1B8C2E668);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  v20 = *(sub_1B8BD3C98() + 16);

  if (v20)
  {
    v21 = sub_1B8BD3C98();
    *&v14[*(v11 + 24)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
    v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_storeEnumTagMultiPayload();
    *v14 = v21;
    *(v14 + 1) = swift_getKeyPath();
    v14[16] = 0;
    sub_1B8BD81DC(v14, v19, type metadata accessor for TextRow);
    (*(v12 + 56))(v19, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v19, 1, 1, v11);
  }

  v45 = sub_1B8BD3D9C();
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v6, type metadata accessor for ListSection);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_1B8BD81DC(v6, v23 + v22, type metadata accessor for ListSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8000, &qword_1B8C2E6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8008, &qword_1B8C2E6F0);
  v24 = sub_1B8B34CFC(&qword_1EBAA8010, &qword_1EBAA8000, &qword_1B8C2E6E8, MEMORY[0x1E69E6338]);
  sub_1B8BD82C4(v24, v25, v26);
  sub_1B8BD8318();
  v27 = v40;
  sub_1B8C24EB8();
  v28 = v19;
  v29 = v39;
  sub_1B8B34450(v19, v39, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v31 = v41;
  v30 = v42;
  v32 = *(v41 + 16);
  v33 = v43;
  v32(v43, v27, v42);
  v34 = v44;
  sub_1B8B34450(v29, v44, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8048, &qword_1B8C2E708);
  v32((v34 + *(v35 + 48)), v33, v30);
  v36 = *(v31 + 8);
  v36(v27, v30);
  sub_1B8B3433C(v28, &qword_1EBAA7FF0, &qword_1B8C2E668);
  v36(v33, v30);
  return sub_1B8B3433C(v29, &qword_1EBAA7FF0, &qword_1B8C2E668);
}

void *sub_1B8BD460C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8040, &qword_1B8C2E700);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8050, &qword_1B8C2E710);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v17 = v41 - v16;
  v18 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v41[3] = a3;
    v20 = *a1;
    v19 = a1[1];
    if (v18 == 1)
    {
      *&v45 = *a1;
      *(&v45 + 1) = v19;
      sub_1B8B34CA8(v13, v14, v15);

      v21 = sub_1B8C249E8();
      v41[2] = v6;
      v23 = v22;
      v25 = v24;
      v26 = sub_1B8C248C8();
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
      sub_1B8C24908();
      sub_1B8B3433C(v11, &qword_1EBAA5CD0, &qword_1B8C278C8);
      v41[1] = v12;
      v27 = sub_1B8C249B8();
      v29 = v28;
      v31 = v30;
      v33 = v32;

      sub_1B8B34060(v21, v23, v25 & 1);

      *&v42 = v27;
      *(&v42 + 1) = v29;
      *&v43 = v31 & 1;
      *(&v43 + 1) = v33;
      v44 = 1;
      sub_1B8B34694(v27, v29, v31 & 1);

      sub_1B8C24598();
      v34 = v47;
      v35 = v46;
      *v17 = v45;
      *(v17 + 1) = v35;
      v17[32] = v34;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
      sub_1B8BD83D0();
      sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700, MEMORY[0x1E69817F8]);
      sub_1B8C24598();
      sub_1B8B34060(v27, v29, v31 & 1);
    }

    else
    {
      v39 = a1[2];
      *v8 = sub_1B8C242E8();
      *(v8 + 1) = 0;
      v8[16] = 1;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8058, &qword_1B8C2E718);
      sub_1B8BD4B18(v20, a2, v19, v39, &v8[*(v40 + 44)]);
      sub_1B8B34450(v8, v17, &qword_1EBAA8040, &qword_1B8C2E700);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
      sub_1B8BD83D0();
      sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700, MEMORY[0x1E69817F8]);
      sub_1B8C24598();
      return sub_1B8B3433C(v8, &qword_1EBAA8040, &qword_1B8C2E700);
    }
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1B8C24598();
    v37 = v47;
    v38 = v46;
    *v17 = v45;
    *(v17 + 1) = v38;
    v17[32] = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
    sub_1B8BD83D0();
    sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700, MEMORY[0x1E69817F8]);
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8BD4B18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a3;
  v48 = a5;
  v8 = sub_1B8C23A28();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8060, &qword_1B8C2E720);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = *(type metadata accessor for ListPreviewer.Content(0) + 20);
  v18 = type metadata accessor for ImageWithPreview(0);
  v19 = *(v18 + 20);
  v20 = sub_1B8C237B8();
  (*(*(v20 - 8) + 16))(&v16[v19], a2 + v17, v20);
  *v16 = a1;
  v21 = &v16[*(v18 + 24)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8BD7984(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  v22 = a1;
  *v21 = sub_1B8C23DA8();
  v21[8] = v23 & 1;
  sub_1B8C24F48();
  v24 = sub_1B8C23E38();
  v27 = &v16[*(v12 + 44)];
  v28 = v55;
  *v27 = v54;
  *(v27 + 1) = v28;
  *(v27 + 2) = v56;
  if (a4)
  {
    v52 = v47;
    v53 = a4;
    sub_1B8B34CA8(v24, v25, v26);

    a4 = sub_1B8C249E8();
    v30 = v29;
    v32 = v31;
    v34 = v33 & 1;
    sub_1B8B34694(a4, v29, v33 & 1);
  }

  else
  {
    v30 = 0;
    v34 = 0;
    v32 = 0;
  }

  v35 = sub_1B8C24D08();
  if (qword_1EBAA59B0 != -1)
  {
    swift_once();
  }

  v36 = v50;
  v37 = __swift_project_value_buffer(v50, qword_1EBAB3A90);
  (*(v49 + 16))(v10, v37, v36);
  v38 = sub_1B8C24CE8();
  v39 = v51;
  v50 = v16;
  sub_1B8B34450(v16, v51, &qword_1EBAA8060, &qword_1B8C2E720);
  v40 = v48;
  sub_1B8B34450(v39, v48, &qword_1EBAA8060, &qword_1B8C2E720);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8068, &qword_1B8C2E728);
  v42 = (v40 + v41[12]);
  *v42 = a4;
  v42[1] = v30;
  v42[2] = v34;
  v42[3] = v32;
  v43 = v40 + v41[16];
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = (v40 + v41[20]);
  sub_1B8BD8454(a4, v30, v34, v32);

  sub_1B8BD8498(a4, v30, v34, v32);
  *v44 = v35;
  v44[1] = v38;
  sub_1B8B3433C(v50, &qword_1EBAA8060, &qword_1B8C2E720);

  sub_1B8BD8498(a4, v30, v34, v32);
  return sub_1B8B3433C(v39, &qword_1EBAA8060, &qword_1B8C2E720);
}

uint64_t sub_1B8BD4F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8B34CA8(a1, a2, a3);

  sub_1B8C249E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FA8, &qword_1B8C2E638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
  sub_1B8BD80D8();
  swift_getOpaqueTypeConformance2();
  return sub_1B8C24ED8();
}

uint64_t sub_1B8BD506C(uint64_t a1)
{
  sub_1B8C23568();
  sub_1B8BD7984(&qword_1EBAA6230, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B8C250C8();
  v2 = type metadata accessor for TextRow.Row(0);
  v3 = *(v1 + *(v2 + 20));
  MEMORY[0x1B8CCA790](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_1B8C251B8();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v6 = (v1 + *(v2 + 24));
  if (v6[1])
  {
    return sub_1B8C25AD8();
  }

  v8 = *v6;
  sub_1B8C25AD8();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1B8CCA7B0](v9);
}

uint64_t sub_1B8BD5190()
{
  sub_1B8C25AB8();
  sub_1B8BD506C(v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8BD51D4(uint64_t a1)
{
  sub_1B8C25AB8();
  sub_1B8BD506C(v2);
  return sub_1B8C25AF8();
}

void sub_1B8BD5214()
{
  v1 = type metadata accessor for TextRow.Row(0);
  v89 = *(v1 - 8);
  v90 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v75 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v70 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  MEMORY[0x1EEE9AC00](v84);
  v7 = &v70 - v6;
  v83 = sub_1B8C24458();
  v8 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B8C242A8();
  v10 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v0;
  v94 = *v0;

  sub_1B8BD68E8(&v94);
  v12 = v94;
  v13 = *(v94 + 2);
  if (v13)
  {
    v14 = type metadata accessor for TextRow(0);
    v86 = 0;
    v15 = 0;
    v81 = *(v14 + 24);
    v16 = v87[1];
    v93 = *(v87 + 16);
    v88 = (v10 + 8);
    v74 = (v8 + 32);
    v79 = (v8 + 8);
    v80 = v16;
    v17 = v16;
    v18 = v12 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = 0.0;
    v70 = xmmword_1B8C2A740;
    v78 = v7;
    v72 = v5;
    v77 = v12;
    v73 = v13;
    v71 = v12 + 40;
    do
    {
      v21 = 0;
      v76 = (v13 - v15);
      v22 = v20;
      v23 = &v18[16 * v15];
      v85 = v15;
      while (1)
      {
        if (&v21[v15] >= *(v12 + 2))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);

          __break(1u);
          return;
        }

        v24 = *(v23 - 1);
        v25 = *v23;

        v26 = v17;
        if ((v93 & 1) == 0)
        {
          v27 = v80;
          sub_1B8BD8C0C(v80, 0);
          sub_1B8C25488();
          v28 = sub_1B8C247B8();
          sub_1B8C23C08();

          v29 = v91;
          sub_1B8C24298();
          swift_getAtKeyPath();
          v30 = sub_1B8BD8C18(v27, 0);
          (*v88)(v29, v92, v30);
          v26 = v94;
        }

        sub_1B8B34450(v87 + v81, v7, &qword_1EBAA7FF8, &qword_1B8C2E6A0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v31 = v83;
          v32 = v82;
          (*v74)();
        }

        else
        {
          sub_1B8C25488();
          v33 = sub_1B8C247B8();
          sub_1B8C23C08();

          v34 = v91;
          sub_1B8C24298();
          v32 = v82;
          swift_getAtKeyPath();

          (*v88)(v34, v92);
          v31 = v83;
        }

        v20 = sub_1B8BD8954(v24, v25, v32, *&v26);
        v36 = v35;
        v38 = v37;
        (*v79)(v32, v31);
        v39 = v17;
        if ((v93 & 1) == 0)
        {
          v40 = v80;

          sub_1B8C25488();
          v41 = sub_1B8C247B8();
          sub_1B8C23C08();

          v42 = v91;
          sub_1B8C24298();
          swift_getAtKeyPath();
          v43 = sub_1B8BD8C18(v40, 0);
          (*v88)(v42, v92, v43);
          v39 = v94;
        }

        v22 = v22 + v20;
        v44 = v86;
        if (*&v39 < v21 * 8.0 + v22 + 16.0)
        {
          break;
        }

        if (v86 >= v19[2])
        {
          v45 = v75;
          sub_1B8C23558();
          v46 = v90;
          *(v45 + *(v90 + 20)) = MEMORY[0x1E69E7CC0];
          v47 = v45 + *(v46 + 24);
          *v47 = 0;
          *(v47 + 8) = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1B8B5D9BC(0, v19[2] + 1, 1, v19);
          }

          v49 = v19[2];
          v48 = v19[3];
          if (v49 >= v48 >> 1)
          {
            v19 = sub_1B8B5D9BC((v48 > 1), v49 + 1, 1, v19);
          }

          v19[2] = v49 + 1;
          sub_1B8BD81DC(v75, v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v49, type metadata accessor for TextRow.Row);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B8BD74E4(v19);
        }

        if (v44 >= v19[2])
        {
          goto LABEL_37;
        }

        v50 = v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v44;
        v51 = *(v90 + 20);
        v52 = *(v50 + v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v50 + v51) = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_1B8B5D1AC(0, *(v52 + 2) + 1, 1, v52);
          *(v50 + v51) = v52;
        }

        v55 = *(v52 + 2);
        v54 = *(v52 + 3);
        v15 = v85;
        if (v55 >= v54 >> 1)
        {
          v57 = sub_1B8B5D1AC((v54 > 1), v55 + 1, 1, v52);
          v15 = v85;
          v52 = v57;
          *(v50 + v51) = v57;
        }

        *(v52 + 2) = v55 + 1;
        v56 = &v52[16 * v55];
        *(v56 + 4) = v24;
        *(v56 + 5) = v25;
        ++v21;
        v23 += 2;
        v7 = v78;
        v12 = v77;
        if (v76 == v21)
        {
          goto LABEL_35;
        }
      }

      v58 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v59 = swift_allocObject();
      *(v59 + 16) = v70;
      *(v59 + 32) = v24;
      *(v59 + 40) = v25;
      v60 = v72;
      sub_1B8C23558();
      v61 = v90;
      *(v60 + *(v90 + 20)) = v59;
      v62 = v60 + *(v61 + 24);
      *v62 = v36;
      *(v62 + 8) = v38 & 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B8B5D9BC(0, v19[2] + 1, 1, v19);
      }

      v12 = v77;
      v13 = v73;
      v64 = v19[2];
      v63 = v19[3];
      v65 = v85;
      v86 = v58;
      if (v64 >= v63 >> 1)
      {
        v69 = sub_1B8B5D9BC((v63 > 1), v64 + 1, 1, v19);
        v65 = v85;
        v19 = v69;
      }

      v66 = &v21[v65 + 1];
      v67 = (~v65 + v13);
      v19[2] = v64 + 1;
      sub_1B8BD81DC(v60, v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v64, type metadata accessor for TextRow.Row);
      v15 = v66;
      v68 = v67 == v21;
      v7 = v78;
      v18 = v71;
    }

    while (!v68);
  }

LABEL_35:
}

uint64_t sub_1B8BD5B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TextRow.Row(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E0, &qword_1B8C2E7B0);
  v11[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_1B8BD7E20(a1, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TextRow.Row);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1B8BD81DC(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TextRow.Row);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E8, &qword_1B8C2E7D0);
  sub_1B8B34CFC(&qword_1EBAA80F0, &qword_1EBAA7478, &qword_1B8C2BC80, MEMORY[0x1E69E6338]);
  sub_1B8BD87E8();
  return sub_1B8C24EB8();
}

double sub_1B8BD5D78@<D0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(type metadata accessor for TextChip(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  swift_storeEnumTagMultiPayload();
  *a3 = v5;
  a3[1] = v4;
  type metadata accessor for TextRow.Row(0);

  sub_1B8C24F48();
  sub_1B8C23E38();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80E8, &qword_1B8C2E7D0) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_1B8BD5E6C@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7FF8, &qword_1B8C2E6A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TextChip(0);
  sub_1B8B34450(v1 + *(v10 + 20), v9, &qword_1EBAA7FF8, &qword_1B8C2E6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C24458();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1B8BD6074@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1B8C24478();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80B0, &qword_1B8C2E798);
  sub_1B8BD5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80B8, &qword_1B8C2E7A0);
  sub_1B8C23568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA80C0, &qword_1B8C2E7A8);
  sub_1B8B34CFC(&qword_1EBAA80C8, &qword_1EBAA80B8, &qword_1B8C2E7A0, MEMORY[0x1E69E6338]);
  sub_1B8B34CFC(&qword_1EBAA80D0, &qword_1EBAA80C0, &qword_1B8C2E7A8, MEMORY[0x1E69817F8]);
  sub_1B8BD7984(&qword_1EBAA80D8, type metadata accessor for TextRow.Row, &unk_1B8C2E8B0);
  return sub_1B8C24EC8();
}

double sub_1B8BD6200@<D0>(uint64_t a1@<X8>)
{
  v58 = sub_1B8C24458();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B8C23A28();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1[1];
  *&v67 = *v1;
  *(&v67 + 1) = v11;
  sub_1B8B34CA8(v8, v12, v13);

  v14 = sub_1B8C249E8();
  v61 = v15;
  v62 = v14;
  LOBYTE(v11) = v16;
  v60 = v17;
  KeyPath = swift_getKeyPath();
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v63[55] = v70;
  *&v63[71] = v71;
  *&v63[87] = v72;
  *&v63[103] = v73;
  *&v63[7] = v67;
  *&v63[23] = v68;
  v18 = v11 & 1;
  v65 = v18;
  v64 = 1;
  *&v63[39] = v69;
  v57 = sub_1B8C24808();
  sub_1B8C23D18();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v66 = 0;
  if (qword_1EBAA59C0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v6, qword_1EBAB3AC0);
  v28 = *(v7 + 16);
  v28(v10, v27, v6);
  v56 = sub_1B8C24CE8();
  v55 = sub_1B8C24808();
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v6, qword_1EBAB3A78);
  v28(v10, v29, v6);
  v30 = sub_1B8C24CE8();
  sub_1B8BD5E6C(v5);
  v31 = sub_1B8C24448();
  v32 = sub_1B8BD66FC(v5, v31);
  v34 = v33;

  (*(v3 + 8))(v5, v58);
  if (v34)
  {
    v35 = 14.0;
  }

  else
  {
    v35 = v32 * 1.5 + 12.0;
  }

  v36 = [objc_opt_self() systemFontOfSize_];
  v37 = sub_1B8C24948();
  v38 = swift_getKeyPath();
  v39 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8158, &qword_1B8C2E948) + 36));
  v40 = *(sub_1B8C24078() + 20);
  v41 = *MEMORY[0x1E697F468];
  v42 = sub_1B8C24418();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #8.0 }

  *v39 = _Q0;
  *&v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA61A8, &unk_1B8C2CE50) + 36)] = 256;
  v48 = *&v63[80];
  *(a1 + 113) = *&v63[64];
  *(a1 + 129) = v48;
  *(a1 + 145) = *&v63[96];
  v49 = *&v63[16];
  *(a1 + 49) = *v63;
  *(a1 + 65) = v49;
  result = *&v63[32];
  v51 = *&v63[48];
  *(a1 + 81) = *&v63[32];
  v52 = v61;
  *a1 = v62;
  *(a1 + 8) = v52;
  *(a1 + 16) = v18;
  v53 = KeyPath;
  *(a1 + 24) = v60;
  *(a1 + 32) = v53;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 160) = *&v63[111];
  *(a1 + 97) = v51;
  *(a1 + 168) = v57;
  *(a1 + 176) = v20;
  *(a1 + 184) = v22;
  *(a1 + 192) = v24;
  *(a1 + 200) = v26;
  *(a1 + 208) = 0;
  *(a1 + 216) = v56;
  *(a1 + 224) = v55;
  *(a1 + 232) = v30;
  *(a1 + 240) = v38;
  *(a1 + 248) = v37;
  return result;
}

uint64_t sub_1B8BD66FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1B8C24458() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1B8BD7984(&qword_1EBAA8110, MEMORY[0x1E697F6A0], MEMORY[0x1E697F6B8]);
  v7 = 0;
  while ((sub_1B8C250E8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1B8BD6820(uint64_t a1)
{
  v2 = sub_1B8C24458();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24108();
}

uint64_t sub_1B8BD68E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B8BACC10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B8BD6954(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B8BD6954(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8C259D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B8C252F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B8BD6B58(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B8BD6A4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8BD6A4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v14 = v7;
    v15 = v6;
    while (1)
    {

      v8 = sub_1B8C251C8();
      v9 = sub_1B8C251C8();

      if (v8 >= v9)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *v6;
      v11 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v11;
      *(v6 - 2) = v10;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BD6B58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v7 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1B8BACA34(v8);
      v8 = result;
    }

    v79 = *(v8 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = v8;
        v8 = (v79 - 1);
        v81 = *&v80[16 * v79];
        v82 = *&v80[16 * v79 + 24];
        sub_1B8BD7208((*a3 + 16 * v81), (*a3 + 16 * *&v80[16 * v79 + 16]), (*a3 + 16 * v82), v7);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1B8BACA34(v80);
        }

        if (v79 - 2 >= *(v80 + 2))
        {
          goto LABEL_115;
        }

        v83 = &v80[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_1B8BAC9A8(v79 - 1);
        v8 = v80;
        v79 = *(v80 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v87 = v5;
      v90 = 16 * v7;
      v10 = *a3 + 16 * v7 + 40;

      v94 = sub_1B8C251C8();
      v92 = sub_1B8C251C8();

      v85 = v7;
      v11 = v7 + 2;
      while (v6 != v11)
      {

        v7 = sub_1B8C251C8();
        v12 = sub_1B8C251C8();

        ++v11;
        v10 += 16;
        if (v94 < v92 == v7 >= v12)
        {
          v6 = v11 - 1;
          break;
        }
      }

      v9 = v85;
      v5 = v87;
      v13 = v90;
      if (v94 < v92)
      {
        if (v6 < v85)
        {
          goto LABEL_118;
        }

        if (v85 < v6)
        {
          v14 = 0;
          v15 = 16 * v6;
          v16 = v85;
          do
          {
            if (v16 != v6 + v14 - 1)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v17 = (v21 + v13);
              v18 = v21 + v15;
              v19 = *v17;
              v20 = v17[1];
              *v17 = *(v18 - 16);
              *(v18 - 16) = v19;
              *(v18 - 8) = v20;
            }

            ++v16;
            --v14;
            v15 -= 16;
            v13 += 16;
          }

          while (v16 < v6 + v14);
        }
      }
    }

    v22 = a3[1];
    if (v6 < v22)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_117;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v22)
        {
          v7 = a3[1];
        }

        else
        {
          v7 = v9 + a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8B5D890(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      result = sub_1B8B5D890((v23 > 1), v24 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v25;
    v26 = &v8[16 * v24];
    *(v26 + 4) = v9;
    *(v26 + 5) = v7;
    v27 = *v89;
    if (!*v89)
    {
      goto LABEL_126;
    }

    if (v24)
    {
      while (1)
      {
        v28 = v25 - 1;
        if (v25 >= 4)
        {
          break;
        }

        if (v25 == 3)
        {
          v29 = *(v8 + 4);
          v30 = *(v8 + 5);
          v39 = __OFSUB__(v30, v29);
          v31 = v30 - v29;
          v32 = v39;
LABEL_48:
          if (v32)
          {
            goto LABEL_105;
          }

          v45 = &v8[16 * v25];
          v47 = *v45;
          v46 = *(v45 + 1);
          v48 = __OFSUB__(v46, v47);
          v49 = v46 - v47;
          v50 = v48;
          if (v48)
          {
            goto LABEL_108;
          }

          v51 = &v8[16 * v28 + 32];
          v53 = *v51;
          v52 = *(v51 + 1);
          v39 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v39)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v49, v54))
          {
            goto LABEL_112;
          }

          if (v49 + v54 >= v31)
          {
            if (v31 < v54)
            {
              v28 = v25 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v55 = &v8[16 * v25];
        v57 = *v55;
        v56 = *(v55 + 1);
        v39 = __OFSUB__(v56, v57);
        v49 = v56 - v57;
        v50 = v39;
LABEL_62:
        if (v50)
        {
          goto LABEL_107;
        }

        v58 = &v8[16 * v28];
        v60 = *(v58 + 4);
        v59 = *(v58 + 5);
        v39 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v39)
        {
          goto LABEL_110;
        }

        if (v61 < v49)
        {
          goto LABEL_3;
        }

LABEL_69:
        v66 = v28 - 1;
        if (v28 - 1 >= v25)
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v67 = *&v8[16 * v66 + 32];
        v68 = *&v8[16 * v28 + 40];
        sub_1B8BD7208((*a3 + 16 * v67), (*a3 + 16 * *&v8[16 * v28 + 32]), (*a3 + 16 * v68), v27);
        if (v5)
        {
        }

        if (v68 < v67)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B8BACA34(v8);
        }

        if (v66 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v69 = &v8[16 * v66];
        *(v69 + 4) = v67;
        *(v69 + 5) = v68;
        result = sub_1B8BAC9A8(v28);
        v25 = *(v8 + 2);
        if (v25 <= 1)
        {
          goto LABEL_3;
        }
      }

      v33 = &v8[16 * v25 + 32];
      v34 = *(v33 - 64);
      v35 = *(v33 - 56);
      v39 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      if (v39)
      {
        goto LABEL_103;
      }

      v38 = *(v33 - 48);
      v37 = *(v33 - 40);
      v39 = __OFSUB__(v37, v38);
      v31 = v37 - v38;
      v32 = v39;
      if (v39)
      {
        goto LABEL_104;
      }

      v40 = &v8[16 * v25];
      v42 = *v40;
      v41 = *(v40 + 1);
      v39 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v39)
      {
        goto LABEL_106;
      }

      v39 = __OFADD__(v31, v43);
      v44 = v31 + v43;
      if (v39)
      {
        goto LABEL_109;
      }

      if (v44 >= v36)
      {
        v62 = &v8[16 * v28 + 32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v39 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v39)
        {
          goto LABEL_113;
        }

        if (v31 < v65)
        {
          v28 = v25 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v86 = v9;
  v88 = v5;
  v70 = *a3;
  v71 = (*a3 + 16 * v6);
  v72 = v9 - v6;
  v91 = v7;
LABEL_80:
  v93 = v71;
  v95 = v6;
  v73 = v72;
  while (1)
  {

    v74 = sub_1B8C251C8();
    v75 = sub_1B8C251C8();

    if (v74 >= v75)
    {
LABEL_79:
      v6 = v95 + 1;
      v71 = v93 + 2;
      --v72;
      v7 = v91;
      if (v95 + 1 != v91)
      {
        goto LABEL_80;
      }

      v9 = v86;
      v5 = v88;
      if (v91 < v86)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v70)
    {
      break;
    }

    v76 = *v71;
    v77 = v71[1];
    *v71 = *(v71 - 1);
    *(v71 - 1) = v77;
    *(v71 - 2) = v76;
    v71 -= 2;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1B8BD7208(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = __dst;
    if (__dst != __src || &__src[16 * v9] <= __dst)
    {
      memmove(__dst, __src, 16 * v9);
    }

    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v14 = &v13[16 * v9];
      goto LABEL_39;
    }

    v14 = &v13[16 * v9];
    while (1)
    {

      v15 = sub_1B8C251C8();
      v16 = sub_1B8C251C8();

      if (v15 >= v16)
      {
        break;
      }

      v17 = v5;
      v18 = v6 == v5;
      v5 += 16;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v13 >= v14 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_39;
      }
    }

    v17 = v13;
    v18 = v6 == v13;
    v13 += 16;
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v17;
    goto LABEL_18;
  }

  if (__dst != a2 || &a2[16 * v12] <= __dst)
  {
    v19 = __dst;
    memmove(__dst, a2, 16 * v12);
    __dst = v19;
  }

  v27 = __dst;
  v14 = &__dst[16 * v12];
  if (v10 < 16)
  {
    v13 = __dst;
    goto LABEL_39;
  }

  v13 = __dst;
  if (v5 > v6)
  {
    do
    {
      v26 = v5;
      v25 = v5 - 16;
      v4 -= 16;
      v20 = v14;
      while (1)
      {
        v21 = v4 + 16;
        v14 -= 16;

        v22 = sub_1B8C251C8();
        v23 = sub_1B8C251C8();

        if (v22 < v23)
        {
          break;
        }

        if (v21 != v20)
        {
          *v4 = *v14;
        }

        v4 -= 16;
        v20 = v14;
        v13 = v27;
        if (v14 <= v27)
        {
          v5 = v26;
          goto LABEL_39;
        }
      }

      if (v21 != v26)
      {
        *v4 = *v25;
      }

      v13 = v27;
      v14 = v20;
      if (v20 <= v27)
      {
        break;
      }

      v5 = v25;
    }

    while (v25 > v6);
    v5 = v25;
  }

LABEL_39:
  if (v5 != v13 || v5 >= &v13[(v14 - v13 + (v14 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v14 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1B8BD74F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CCA790](v3);
  v17 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + 32 + 24 * v5 + 16);

      sub_1B8C251B8();
      MEMORY[0x1B8CCA790](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 56);
        do
        {
          v14 = *(v8 - 3);
          v13 = *(v8 - 2);
          v15 = *(v8 - 1);
          if (*v8)
          {
            if (*v8 == 1)
            {
              MEMORY[0x1B8CCA790](1);

              sub_1B8C251B8();
              v9 = v14;
              v10 = v13;
              v11 = v15;
              v12 = 1;
            }

            else
            {
              MEMORY[0x1B8CCA790](2);

              v16 = v14;
              sub_1B8C255F8();
              sub_1B8C25AD8();
              if (v15)
              {
                sub_1B8C251B8();
                v9 = v14;
                v10 = v13;
                v11 = v15;
              }

              else
              {
                v9 = v14;
                v10 = v13;
                v11 = 0;
              }

              v12 = 2;
            }
          }

          else
          {
            MEMORY[0x1B8CCA790](0);

            sub_1B8C251B8();
            v9 = v14;
            v10 = v13;
            v11 = v15;
            v12 = 0;
          }

          sub_1B8B468BC(v9, v10, v11, v12);
          v8 += 32;
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != v17);
  }

  return result;
}

void *sub_1B8BD76E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B8CCA790](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v11 = *(v5 - 3);
      v10 = *(v5 - 2);
      v12 = *(v5 - 1);
      if (*v5)
      {
        if (*v5 == 1)
        {
          MEMORY[0x1B8CCA790](1);

          sub_1B8C251B8();
          v6 = v11;
          v7 = v10;
          v8 = v12;
          v9 = 1;
        }

        else
        {
          MEMORY[0x1B8CCA790](2);

          v13 = v11;
          sub_1B8C255F8();
          sub_1B8C25AD8();
          if (v12)
          {
            sub_1B8C251B8();
            v6 = v11;
            v7 = v10;
            v8 = v12;
          }

          else
          {
            v6 = v11;
            v7 = v10;
            v8 = 0;
          }

          v9 = 2;
        }
      }

      else
      {
        MEMORY[0x1B8CCA790](0);

        sub_1B8C251B8();
        v6 = v11;
        v7 = v10;
        v8 = v12;
        v9 = 0;
      }

      result = sub_1B8B468BC(v6, v7, v8, v9);
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}
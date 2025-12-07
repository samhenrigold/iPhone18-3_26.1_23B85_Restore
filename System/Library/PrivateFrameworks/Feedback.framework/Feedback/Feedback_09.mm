uint64_t sub_1B8C09CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8C09D74@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C23DE8();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8728, &qword_1B8C2FC08) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
  v4 = *MEMORY[0x1E697DC10];
  v5 = sub_1B8C23D88();
  (*(*(v5 - 8) + 104))(&v2[v3], v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

unint64_t sub_1B8C09E2C()
{
  result = qword_1EBAA8730;
  if (!qword_1EBAA8730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8728, &qword_1B8C2FC08);
    sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0, MEMORY[0x1E697BF38]);
    sub_1B8B34CFC(&qword_1EBAA67B0, &qword_1EBAA6788, &qword_1B8C2FC10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8730);
  }

  return result;
}

double sub_1B8C09F10(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0xE600000000000000;
      v2 = 0x726564696C53;
    }

    else
    {
      v4 = 0xEA0000000000646CLL;
      v5 = 0x6569462074786554;
      v6 = 0xE900000000000065;
      v7 = 0x6D69542F65746144;
      v8 = 0xE400000000000000;
      v9 = 1701669204;
      if (a1 != 4)
      {
        v9 = 0x656C67676F54;
        v8 = 0xE600000000000000;
      }

      if (a1 != 3)
      {
        v7 = v9;
        v6 = v8;
      }

      v10 = 0x6572412074786554;
      v11 = 0xE900000000000061;
      if (a1 != 1)
      {
        v10 = 1702125892;
        v11 = 0xE400000000000000;
      }

      if (a1)
      {
        v5 = v10;
        v4 = v11;
      }

      v12 = a1 <= 2;
      if (a1 <= 2)
      {
        v2 = v5;
      }

      else
      {
        v2 = v7;
      }

      if (v12)
      {
        v3 = v4;
      }

      else
      {
        v3 = v6;
      }
    }
  }

  else
  {
    if (a2)
    {
      v2 = 0x656C7069746C754DLL;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v3 = 0xEF6563696F684320;
    }

    else
    {
      v3 = 0x80000001B8C36EC0;
    }
  }

  MEMORY[0x1B8CC9EB0](v2, v3);

  return result;
}

Feedback::FBKFeedbackForm::AuthenticationMethod_optional __swiftcall FBKFeedbackForm.AuthenticationMethod.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t FBKFeedbackForm.Question.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x657275746165663ALL;
        goto LABEL_15;
      case 4:
        v3 = 0x6165665F6275733ALL;
        goto LABEL_15;
      case 5:
        v3 = 0xD000000000000012;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x656C7469743ALL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x616572613ALL;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x706972637365643ALL;
LABEL_15:
  sub_1B8B5FB10(v1, v2);
  return v3;
}

uint64_t FBKFeedbackForm.Question.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1B8CCA790](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1B8CCA790](v3);
      case 5:
        v3 = 5;
        return MEMORY[0x1B8CCA790](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1B8CCA790](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1B8CCA790](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1B8CCA790](v3);
    }
  }

  MEMORY[0x1B8CCA790](6);

  return sub_1B8C251B8();
}

uint64_t FBKFeedbackForm.Question.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B8C25AB8();
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 3;
        goto LABEL_15;
      case 4:
        v2 = 4;
        goto LABEL_15;
      case 5:
        v2 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        goto LABEL_15;
      case 1:
        v2 = 1;
        goto LABEL_15;
      case 2:
        v2 = 2;
LABEL_15:
        MEMORY[0x1B8CCA790](v2);
        return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](6);
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8C0A3A4(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        return MEMORY[0x1B8CCA790](v3);
      case 4:
        v3 = 4;
        return MEMORY[0x1B8CCA790](v3);
      case 5:
        v3 = 5;
        return MEMORY[0x1B8CCA790](v3);
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1B8CCA790](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1B8CCA790](v3);
      case 2:
        v3 = 2;
        return MEMORY[0x1B8CCA790](v3);
    }
  }

  MEMORY[0x1B8CCA790](6);

  return sub_1B8C251B8();
}

uint64_t sub_1B8C0A474(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B8C25AB8();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 5;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1B8CCA790](v3);
        return sub_1B8C25AF8();
    }
  }

  MEMORY[0x1B8CCA790](6);
  sub_1B8C251B8();
  return sub_1B8C25AF8();
}

unint64_t sub_1B8C0A550()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x657275746165663ALL;
        goto LABEL_15;
      case 4:
        v3 = 0x6165665F6275733ALL;
        goto LABEL_15;
      case 5:
        v3 = 0xD000000000000012;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x656C7469743ALL;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x616572613ALL;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x706972637365643ALL;
LABEL_15:
  sub_1B8B5FB10(v1, v2);
  return v3;
}

double sub_1B8C0A664(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1B8C0A6D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1B8C0A734(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1B8C0A788(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double sub_1B8C0A838(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_1B8C0A8A8(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

double sub_1B8C0A8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t (*sub_1B8C0A9C4(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AA18(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AA6C(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AAC0(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AB14(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t (*sub_1B8C0AB68(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t sub_1B8C0ABB4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_1B8C0ABD0(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_1B8C0AC10;
}

uint64_t sub_1B8C0AC10(uint64_t result)
{
  v1 = *(result + 16) + *(result + 24);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void (*sub_1B8C0AC4C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1B8C0ACEC;
}

void sub_1B8C0ACEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

uint64_t sub_1B8C0ADC8()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B8C0AE0C(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B8C0AEBC()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B8C0AF00(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1B8C0AFB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAB3A18);
  v43 = *(v8 + 16);
  v43(v12, a1, v7);

  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25498();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v44 = v7;
    v19 = v18;
    v47[0] = v18;
    *v17 = 136446723;
    *(v17 + 4) = sub_1B8B5DD48(0xD000000000000028, 0x80000001B8C36BE0, v47);
    *(v17 + 12) = 2082;
    v20 = sub_1B8C233D8();
    v41 = a1;
    v22 = v21;
    (*(v8 + 8))(v12, v44);
    v23 = sub_1B8B5DD48(v20, v22, v47);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2081;
    if (a3)
    {
      v24 = v46;
    }

    else
    {
      v24 = 0;
    }

    if (a3)
    {
      v25 = a3;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = sub_1B8B5DD48(v24, v25, v47);
    a1 = v41;

    *(v17 + 24) = v26;
    _os_log_impl(&dword_1B8B22000, v14, v15, "%{public}s [%{public}s] [%{private}s]", v17, 0x20u);
    swift_arrayDestroy();
    v27 = v19;
    v7 = v44;
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
    v28 = v17;
    v4 = v42;
    MEMORY[0x1B8CCB0E0](v28, -1, -1);

    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    if (a3)
    {
LABEL_11:
      v29 = objc_allocWithZone(MEMORY[0x1E699C128]);
      v30 = sub_1B8C250F8();
      v31 = sub_1B8C233E8();
      v32 = [v29 initWithDescription:v30 URL:v31];

      v33 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
      swift_beginAccess();
      v34 = v32;
      MEMORY[0x1B8CC9F70]();
      if (*((*(v4 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B8C252E8();
      }

      sub_1B8C25308();
      swift_endAccess();

      return;
    }
  }

  v43(v45, a1, v7);
  v35 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v36 = *(v4 + v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v35) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_1B8B5D3EC(0, v36[2] + 1, 1, v36);
    *(v4 + v35) = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_1B8B5D3EC((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  (*(v8 + 32))(v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39, v45, v7);
  *(v4 + v35) = v36;
}

void sub_1B8C0B47C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAB3A18);

  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25498();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446723;
    *(v13 + 4) = sub_1B8B5DD48(0xD00000000000004BLL, 0x80000001B8C36C10, v21);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1B8B5DD48(a3, a4, v21);
    *(v13 + 22) = 2081;
    *(v13 + 24) = sub_1B8B5DD48(a1, a2, v21);
    _os_log_impl(&dword_1B8B22000, v11, v12, "%{public}s [%{public}s] [%{private}s]", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  v15 = objc_allocWithZone(MEMORY[0x1E699C128]);
  v16 = sub_1B8C250F8();
  v17 = sub_1B8C250F8();
  v18 = [v15 initWithDescription:v16 diagnosticExtensionIdentifier:v17];

  v19 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
  swift_beginAccess();
  v20 = v18;
  MEMORY[0x1B8CC9F70]();
  if (*((*(v5 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B8C252E8();
  }

  sub_1B8C25308();
  swift_endAccess();
}

void sub_1B8C0B794(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1B8C0B7F4()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B8C0B840(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_1B8C0B918(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C187F8;
}

uint64_t sub_1B8C0B94C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);

  return v1;
}

double sub_1B8C0B988(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double (*sub_1B8C0B9A4(void *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_1B8C0BA00;
}

double sub_1B8C0BA00(uint64_t a1)
{
  *(*(a1 + 16) + *(a1 + 24)) = *a1;

  return result;
}

uint64_t sub_1B8C0BA1C()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B8C0BA60(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B8C0BB10()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1B8C0BB74(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1B8C0BBA8;
}

id FBKFeedbackForm.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod] = 2;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices];
  *v6 = 10;
  v6[8] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions] = 1;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop] = 1;
  v8 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes] = 0;
  v9 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v5;
  v10 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  *v10 = 0;
  v10[8] = 1;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds] = 0;
  v11 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  *v11 = 0;
  v11[2] = 1;
  v12 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers] = sub_1B8B5F5B0(v5);
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments] = v5;
  v14 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  *v14 = a1;
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8828, &unk_1B8C2FC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C27920;
  *(inited + 32) = sub_1B8C23998();
  *(inited + 40) = v16;
  *(inited + 48) = sub_1B8C23988();
  *(inited + 56) = v17;
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v21 = sub_1B8C25128();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v29[0] = v21;
  v29[1] = v23;
  MEMORY[0x1EEE9AC00](v20);
  v27[2] = v29;
  v24 = sub_1B8C146D8(sub_1B8C14A04, v27, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
  swift_arrayDestroy();

  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode] = v24 & 1;
  v25 = type metadata accessor for FBKFeedbackForm();
  v28.receiver = v2;
  v28.super_class = v25;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1B8C0BEEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_1B8B5E354(v7, v8);
  if ((v12 & 1) == 0)
  {

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B8C2A740;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    swift_beginAccess();

    goto LABEL_10;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1B8B5D1AC(0, *(v13 + 16) + 1, 1, v13);
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1B8B5D1AC((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  swift_beginAccess();
LABEL_10:
  sub_1B8B5FB10(v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v9);
  *(v4 + v9) = 0x8000000000000000;
  sub_1B8B5F0C4(v13, v7, v8, isUniquelyReferenced_nonNull_native);
  sub_1B8B5E4C4(v7, v8);
  *(v4 + v9) = v19;
  return swift_endAccess();
}

uint64_t sub_1B8C0C0D0()
{
  v1 = v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  swift_beginAccess();
  return *v1;
}

void sub_1B8C0C11C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

double sub_1B8C0C1E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1B8C0C2A0()
{
  v1 = (v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment);
  swift_beginAccess();
  return *v1 | (*(v1 + 2) << 16);
}

void sub_1B8C0C2F0(int a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment;
  swift_beginAccess();
  *v3 = a1;
  *(v3 + 2) = BYTE2(a1) & 1;
}

double sub_1B8C0C41C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

uint64_t sub_1B8C0C490(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double sub_1B8C0C4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

char *FBKFeedbackForm.__allocating_init(formId:plugFormIds:environment:host:appToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v15 = FBKFeedbackForm.init(identifier:)(0, 0xE000000000000000);
  sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
  v16 = v15;
  v17 = sub_1B8C25578();

  v18 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  swift_beginAccess();
  *v18 = v17;
  v18[2] = BYTE2(v17) & 1;
  v19 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  *&v16[v19] = a2;

  v20 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  swift_beginAccess();
  *v20 = a1;
  v20[8] = 0;
  v21 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  swift_beginAccess();
  *v21 = a5;
  *(v21 + 1) = a6;

  v22 = &v16[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  swift_beginAccess();
  *v22 = a7;
  *(v22 + 1) = a8;

  return v16;
}

void sub_1B8C0C758(void *a1)
{
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v120 = v1;
  v121 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  if (v9)
  {
    while (1)
    {
      v13 = v11;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(v121 + 48) + 16 * v14);
      v2 = *v15;
      v16 = v15[1];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = 0x657275746165663ALL;
          v19 = 0xEF6E69616D6F645FLL;
          goto LABEL_23;
        }

        if (v16 != 4)
        {
          if (v16 == 5)
          {
            v17 = 0xD000000000000012;
            v19 = 0x80000001B8C33DC0;
            goto LABEL_23;
          }

LABEL_19:
          v17 = *v15;
          v19 = v15[1];
          goto LABEL_23;
        }

        v17 = 0x6165665F6275733ALL;
        v18 = 1701999988;
      }

      else
      {
        if (!v16)
        {
          v19 = 0xE600000000000000;
          v17 = 0x656C7469743ALL;
          goto LABEL_23;
        }

        if (v16 == 1)
        {
          v19 = 0xE500000000000000;
          v17 = 0x616572613ALL;
          goto LABEL_23;
        }

        if (v16 != 2)
        {
          goto LABEL_19;
        }

        v17 = 0x706972637365643ALL;
        v18 = 1852795252;
      }

      v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_23:
      v20 = *(*(v121 + 56) + 8 * v14);

      sub_1B8B5FB10(v2, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v12;
      v21 = sub_1B8B5E2DC(v17, v19);
      v23 = v12[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_70;
      }

      v2 = v22;
      if (v12[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v21;
          sub_1B8B94684();
          v21 = isUniquelyReferenced_nonNull_native;
        }
      }

      else
      {
        sub_1B8B93390(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1B8B5E2DC(v17, v19);
        if ((v2 & 1) != (v27 & 1))
        {
          sub_1B8C25A58();
          __break(1u);
          return;
        }
      }

      v9 &= v9 - 1;
      if (v2)
      {
        v28 = v21;

        v12 = v123;
        *(v123[7] + 8 * v28) = v20;

        v11 = v13;
        if (!v9)
        {
          break;
        }
      }

      else
      {
        v12 = v123;
        v123[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v12[6] + 16 * v21);
        *v29 = v17;
        v29[1] = v19;
        *(v12[7] + 8 * v21) = v20;
        v30 = v12[2];
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
          goto LABEL_71;
        }

        v12[2] = v31;
        v11 = v13;
        if (!v9)
        {
          break;
        }
      }
    }
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
      v32 = sub_1B8C25088();

      v33 = sub_1B8C250F8();
      v2 = &off_1E7EB6000;
      v9 = a1;
      [a1 encodeObject:v32 forKey:v33];

      isUniquelyReferenced_nonNull_native = v120;
      swift_beginAccess();

      v34 = sub_1B8C250F8();

      v35 = sub_1B8C250F8();
      [a1 encodeObject:v34 forKey:v35];

      v36 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
      swift_beginAccess();
      v37 = *(v120 + v36);
      v38 = sub_1B8C250F8();
      [a1 encodeInteger:v37 forKey:v38];

      type metadata accessor for SandboxExtensionURL(0);

      v39 = sub_1B8C252B8();

      v40 = sub_1B8C250F8();
      [a1 encodeObject:v39 forKey:v40];

      v41 = v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText;
      swift_beginAccess();
      if (*(v41 + 8))
      {

        v42 = sub_1B8C250F8();
      }

      else
      {
        v42 = 0;
      }

      v43 = sub_1B8C250F8();
      [a1 encodeObject:v42 forKey:v43];
      swift_unknownObjectRelease();

      v44 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
      swift_beginAccess();
      v45 = *(v120 + v44);
      v46 = sub_1B8C250F8();
      [a1 encodeObject:v45 forKey:v46];

      v47 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle);
      v48 = sub_1B8C250F8();
      [a1 encodeBool:v47 forKey:v48];

      if (*(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8))
      {

        v49 = sub_1B8C250F8();
      }

      else
      {
        v49 = 0;
      }

      v50 = sub_1B8C250F8();
      [a1 encodeObject:v49 forKey:v50];
      swift_unknownObjectRelease();

      swift_beginAccess();
      sub_1B8B46130(0, &qword_1EBAA8850, 0x1E699C128);

      v51 = sub_1B8C252B8();

      v52 = sub_1B8C250F8();
      [a1 encodeObject:v51 forKey:v52];

      v53 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton);
      v54 = sub_1B8C250F8();
      [a1 encodeBool:v53 forKey:v54];

      v55 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching);
      v56 = sub_1B8C250F8();
      [a1 encodeBool:v55 forKey:v56];

      v57 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled);
      v58 = sub_1B8C250F8();
      [a1 encodeBool:v57 forKey:v58];

      v59 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo);
      v60 = sub_1B8C250F8();
      [a1 encodeBool:v59 forKey:v60];

      v61 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast);
      v62 = sub_1B8C250F8();
      [a1 encodeBool:v61 forKey:v62];

      v63 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices);
      v64 = sub_1B8C250F8();
      [a1 encodeBool:v63 forKey:v64];

      v65 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
      swift_beginAccess();
      v66 = *(v120 + v65);
      v67 = sub_1B8C250F8();
      [a1 encodeBool:v66 forKey:v67];

      v68 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode;
      swift_beginAccess();
      v69 = *(v120 + v68);
      v70 = sub_1B8C250F8();
      [a1 encodeBool:v69 forKey:v70];

      v71 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
      swift_beginAccess();
      v72 = *(v120 + v71);
      v73 = sub_1B8C250F8();
      [a1 encodeBool:v72 forKey:v73];

      v74 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
      swift_beginAccess();
      v75 = *(v120 + v74);
      v76 = sub_1B8C250F8();
      [a1 encodeBool:v75 forKey:v76];

      v77 = v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier;
      swift_beginAccess();
      if (*(v77 + 8))
      {

        v78 = sub_1B8C250F8();

        v79 = sub_1B8C250F8();
        [a1 encodeObject:v78 forKey:v79];
      }

      if ((*(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices + 8) & 1) == 0)
      {
        v80 = *(v120 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices);
        v81 = sub_1B8C250F8();
        [a1 encodeInteger:v80 forKey:v81];
      }

      sub_1B8C231E8();
      swift_allocObject();
      sub_1B8C231D8();
      v82 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
      swift_beginAccess();
      if (*(v120 + v82))
      {
        v122[0] = *(v120 + v82);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8858, &unk_1B8C2FC60);
        sub_1B8C14A48();
        v99 = sub_1B8C231C8();
        v101 = v100;

        v102 = sub_1B8C234A8();
        v103 = sub_1B8C250F8();
        [a1 encodeObject:v102 forKey:v103];

        sub_1B8B4645C(v99, v101);
        goto LABEL_55;
      }

      if (qword_1EBAA5970 != -1)
      {
        swift_once();
      }

      v96 = sub_1B8C23C38();
      __swift_project_value_buffer(v96, qword_1EBAB3A18);
      v85 = sub_1B8C23C18();
      v97 = sub_1B8C25468();
      if (os_log_type_enabled(v85, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_1B8B22000, v85, v97, "No FBKFeedbackForm.FormResponses", v98, 2u);
        MEMORY[0x1B8CCB0E0](v98, -1, -1);
      }

      goto LABEL_54;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  swift_once();
  v83 = sub_1B8C23C38();
  __swift_project_value_buffer(v83, qword_1EBAB3A18);
  v84 = v13;
  v85 = sub_1B8C23C18();
  v86 = sub_1B8C25478();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = v2;
    v89 = swift_slowAlloc();
    v122[0] = v89;
    *v87 = 136446210;
    v90 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v91 = sub_1B8C25178();
    v93 = sub_1B8B5DD48(v91, v92, v122);

    *(v87 + 4) = v93;
    isUniquelyReferenced_nonNull_native = v120;
    _os_log_impl(&dword_1B8B22000, v85, v86, "Failed to JSON encode FormResponses in FBKFeedbackForm: %{public}s", v87, 0xCu);
    v94 = __swift_destroy_boxed_opaque_existential_0(v89);
    v95 = v89;
    v2 = v88;
    MEMORY[0x1B8CCB0E0](v95, -1, -1, v94);
    MEMORY[0x1B8CCB0E0](v87, -1, -1);

    goto LABEL_55;
  }

LABEL_54:
LABEL_55:
  if (MEMORY[0x1B8CCA870]())
  {
    v104 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
    swift_beginAccess();
    if ((*(v104 + 8) & 1) == 0)
    {
      v105 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v106 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v107 = (isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment);
    swift_beginAccess();
    if ((v107[1] & 1) == 0)
    {
      v108 = MEMORY[0x1B8CCA890](*v107);
      if (!v108)
      {
        sub_1B8C25128();
        v108 = sub_1B8C250F8();
      }

      v109 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v110 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
    swift_beginAccess();
    if (*(isUniquelyReferenced_nonNull_native + v110))
    {

      v111 = sub_1B8C252B8();

      v112 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v113 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host;
    swift_beginAccess();
    if (*(v113 + 8))
    {

      v114 = sub_1B8C250F8();

      v115 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }

    v116 = isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken;
    swift_beginAccess();
    if (*(v116 + 8))
    {

      v117 = sub_1B8C250F8();

      v118 = sub_1B8C250F8();
      [v9 *(v2 + 2952)];
    }
  }
}

char *FBKFeedbackForm.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod] = 2;
  v5 = MEMORY[0x1E69E7CC0];
  v180 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachmentDescriptors] = MEMORY[0x1E69E7CC0];
  v188 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 0;
  v189 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 0;
  v197 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 0;
  v201 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 0;
  v191 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled] = 0;
  v193 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 0;
  v6 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__maxInlineChoices];
  *v6 = 10;
  v195 = v6;
  v6[8] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v207 = v7;
  v176 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses] = 0;
  v203 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions] = 1;
  v205 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop] = 1;
  v8 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString] = 0;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__enableTwoColumnCheckboxes] = 0;
  v10 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  *v10 = 0;
  v10[1] = 0;
  v199 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts] = 0;
  v186 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle;
  v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__displayTitle] = 0;
  v11 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments] = v5;
  v12 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  *v12 = 0;
  v178 = v12;
  v12[8] = 1;
  v175 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds] = 0;
  v13 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  *v13 = 0;
  v177 = v13;
  v13[2] = 1;
  v14 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  *v14 = 0;
  v14[1] = 0;
  v183 = v14;
  v15 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  *v15 = 0;
  v15[1] = 0;
  v182 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA7DE0, &unk_1B8C2FC70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B8C293F0;
  *(v16 + 32) = sub_1B8B46130(0, &unk_1EBAA8870, 0x1E695DF20);
  v210 = sub_1B8B46130(0, &qword_1EBAA72F0, 0x1E695DEC8);
  *(v16 + 40) = v210;
  *(v16 + 48) = sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  sub_1B8C255B8();

  if (!v219)
  {
    goto LABEL_174;
  }

  sub_1B8B5FE40(&v218, &v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A0, &qword_1B8C2F690);
  swift_dynamicCast();
  v185 = v217;
  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers] = MEMORY[0x1E69E7CC8];
  v17 = sub_1B8C255A8();
  if (!v17)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v18 = v17;
  v19 = sub_1B8C25128();
  v21 = v20;

  v22 = &v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_1B8C250F8();
  v24 = [a1 decodeIntegerForKey_];

  if (v24 >= 3)
  {
    LOBYTE(v24) = 1;
  }

  swift_beginAccess();
  v2[v4] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B8C27920;
  *(v25 + 32) = v210;
  *(v25 + 40) = type metadata accessor for SandboxExtensionURL(0);
  sub_1B8C255B8();

  if (!v219)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    result = sub_1B8C25A58();
    __break(1u);
    return result;
  }

  v26 = a1;
  sub_1B8B5FE40(&v218, &v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8880, &unk_1B8C2FC80);
  swift_dynamicCast();
  *&v2[v11] = v216;

  *&v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments] = MEMORY[0x1E69E7CC0];
  v27 = sub_1B8C255A8();
  if (v27)
  {
    v28 = v27;
    v29 = sub_1B8C25128();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  swift_beginAccess();
  *v8 = v29;
  v8[1] = v31;

  sub_1B8B46130(0, &unk_1EBAA8888, 0x1E696AAB0);
  v32 = sub_1B8C255A8();
  swift_beginAccess();
  v33 = *&v2[v9];
  *&v2[v9] = v32;

  v34 = sub_1B8C255A8();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B8C25128();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *v10 = v36;
  v10[1] = v38;

  v39 = sub_1B8C250F8();
  v40 = &selRef_addChildViewController_;
  v41 = [v26 decodeBoolForKey_];

  v2[v186] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B8C27920;
  *(v42 + 32) = v210;
  *(v42 + 40) = sub_1B8B46130(0, &qword_1EBAA8850, 0x1E699C128);
  sub_1B8C255B8();

  v43 = 0x1EBAA5000uLL;
  if (!v221)
  {
    sub_1B8BC0224(&v220);
LABEL_16:
    if (qword_1EBAA5970 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88C0, &qword_1B8C2FC98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  *&v2[v180] = v215;

  while (1)
  {
    v48 = sub_1B8C250F8();
    v49 = [v26 *(v40 + 632)];

    v2[v188] = v49;
    v50 = sub_1B8C250F8();
    v51 = [v26 *(v40 + 632)];

    v2[v189] = v51;
    v52 = sub_1B8C250F8();
    v53 = [v26 *(v40 + 632)];

    v2[v191] = v53;
    v54 = sub_1B8C250F8();
    v55 = [v26 *(v40 + 632)];

    v2[v193] = v55;
    v56 = sub_1B8C250F8();
    v57 = [v26 decodeIntegerForKey_];

    *v195 = v57;
    v195[8] = 0;
    v58 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    v2[v197] = v57;
    v59 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    v2[v201] = v57;
    v60 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    swift_beginAccess();
    v2[v199] = v57;
    v61 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    v2[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_launchedInBatchMode] = v57;
    v62 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    swift_beginAccess();
    v2[v203] = v57;
    v63 = sub_1B8C250F8();
    LOBYTE(v57) = [v26 *(v40 + 632)];

    swift_beginAccess();
    v2[v205] = v57;
    v64 = sub_1B8C255A8();
    if (v64)
    {
      v65 = v64;
      v66 = sub_1B8C25128();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    swift_beginAccess();
    *v207 = v66;
    v207[1] = v68;

    sub_1B8B46130(0, &qword_1EBAA8898, 0x1E695DEF0);
    v187 = v26;
    v181 = sub_1B8C255A8();
    if (v181)
    {
      v69 = sub_1B8C234B8();
      v71 = v70;
      sub_1B8C231B8();
      swift_allocObject();
      sub_1B8C231A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8858, &unk_1B8C2FC60);
      sub_1B8C14B20();
      sub_1B8C23198();
      sub_1B8B4645C(v69, v71);

      v76 = v220;
      swift_beginAccess();
      *&v2[v176] = v76;

      if (!MEMORY[0x1B8CCA870](v77))
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (*(v43 + 2416) != -1)
      {
        swift_once();
      }

      v72 = sub_1B8C23C38();
      __swift_project_value_buffer(v72, qword_1EBAB3A18);
      v73 = sub_1B8C23C18();
      v74 = sub_1B8C25468();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1B8B22000, v73, v74, "No formResponsesJSONData", v75, 2u);
        MEMORY[0x1B8CCB0E0](v75, -1, -1);
      }

      if (!MEMORY[0x1B8CCA870]())
      {
        goto LABEL_64;
      }
    }

    v79 = sub_1B8C255A8();
    if (v79)
    {
      v80 = v79;
      sub_1B8C25128();

      sub_1B8B46130(0, &qword_1EBAA8840, 0x1E699C158);
      LODWORD(v80) = sub_1B8C25578();

      swift_beginAccess();
      *v177 = v80;
      v177[2] = BYTE2(v80) & 1;
    }

    v81 = sub_1B8C255A8();
    if (v81)
    {
      v82 = v81;
      v83 = sub_1B8C25128();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    swift_beginAccess();
    *v183 = v83;
    v183[1] = v85;

    v86 = sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
    v87 = sub_1B8C255A8();
    if (v87)
    {
      v88 = v87;
      v89 = [v87 unsignedIntegerValue];

      swift_beginAccess();
      *v178 = v89;
      v178[8] = 0;
    }

    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1B8C27920;
    *(v90 + 32) = v210;
    *(v90 + 40) = v86;
    sub_1B8C255B8();

    if (!v221)
    {
      sub_1B8BC0224(&v220);
      goto LABEL_60;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88A8, &qword_1B8C2FC90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v213 >> 62)
    {
      break;
    }

    v26 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_58;
    }

LABEL_43:
    *&v220 = MEMORY[0x1E69E7CC0];
    sub_1B8C1408C(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_173;
    }

    v91 = 0;
    v92 = v220;
    while (1)
    {
      v93 = (v213 & 0xC000000000000001) != 0 ? MEMORY[0x1B8CCA4C0](v91) : *(v213 + 8 * v91 + 32);
      v94 = v93;
      v40 = [v93 integerValue];

      if ((v40 & 0x8000000000000000) != 0)
      {
        break;
      }

      *&v220 = v92;
      v96 = *(v92 + 16);
      v95 = *(v92 + 24);
      v43 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        sub_1B8C1408C((v95 > 1), v96 + 1, 1);
        v92 = v220;
      }

      ++v91;
      *(v92 + 16) = v43;
      *(v92 + 8 * v96 + 32) = v40;
      if (v26 == v91)
      {

        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_17:
    v44 = sub_1B8C23C38();
    __swift_project_value_buffer(v44, qword_1EBAB3A18);
    v45 = sub_1B8C23C18();
    v46 = sub_1B8C25478();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1B8B22000, v45, v46, "Failed to decode attachmentDescriptors", v47, 2u);
      MEMORY[0x1B8CCB0E0](v47, -1, -1);
    }
  }

  v26 = sub_1B8C258B8();
  if (v26)
  {
    goto LABEL_43;
  }

LABEL_58:

  v92 = MEMORY[0x1E69E7CC0];
LABEL_59:
  swift_beginAccess();
  *&v2[v175] = v92;

LABEL_60:
  v97 = sub_1B8C255A8();
  if (v97)
  {
    v98 = v97;
    v99 = sub_1B8C25128();
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 0;
  }

  swift_beginAccess();
  *v182 = v99;
  v182[1] = v101;

LABEL_64:
  v102 = v185;
  v214.receiver = v2;
  v214.super_class = type metadata accessor for FBKFeedbackForm();
  v103 = objc_msgSendSuper2(&v214, sel_init);
  v104 = v103;
  v105 = 1 << *(v185 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v185 + 64);
  v108 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v109 = (v105 + 63) >> 6;
  v179 = v103;
  v110 = 0;
  v184 = v109;
  v202 = v104;
LABEL_68:
  if (v107)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v111 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_169;
    }

    if (v111 >= v109)
    {
      break;
    }

    v107 = *(v185 + 64 + 8 * v111);
    ++v110;
    if (v107)
    {
      v110 = v111;
LABEL_73:
      v112 = __clz(__rbit64(v107));
      v107 &= v107 - 1;
      v113 = v112 | (v110 << 6);
      v114 = *(*(v102 + 56) + 8 * v113);
      v212 = *(v114 + 16);
      if (!v212)
      {
        goto LABEL_68;
      }

      v190 = v110;
      v192 = v107;
      v115 = (*(v102 + 48) + 16 * v113);
      v117 = *v115;
      v116 = v115[1];

      swift_beginAccess();
      v118 = 0;
      v120 = v117 == 0x656C7469743ALL && v116 == 0xE600000000000000;
      v211 = v120;
      v122 = v117 == 0x616572613ALL && v116 == 0xE500000000000000;
      v204 = v122;
      v124 = v117 == 0x706972637365643ALL && v116 == 0xEC0000006E6F6974;
      v200 = v124;
      v126 = v117 == 0x657275746165663ALL && v116 == 0xEF6E69616D6F645FLL;
      v198 = v126;
      v128 = v117 == 0x6165665F6275733ALL && v116 == 0xEC00000065727574;
      v196 = v128;
      v206 = v117;
      v208 = v116;
      v130 = v117 == 0xD000000000000012 && 0x80000001B8C33DC0 == v116;
      v194 = v130;
      v131 = (v114 + 40);
      v209 = v114;
      while (2)
      {
        if (v118 >= *(v114 + 16))
        {
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
          goto LABEL_175;
        }

        v133 = *(v131 - 1);
        v132 = *v131;
        if (v211)
        {
          v134 = 0;
          v135 = 0;
        }

        else
        {
          v134 = v206;
          v136 = sub_1B8C25A08();
          if ((v136 | v204))
          {
            v134 = 0;
            v135 = ~v136 & 1;
          }

          else
          {
            v137 = sub_1B8C25A08();
            if (v137)
            {
              v135 = 1;
            }

            else
            {
              v135 = 2;
            }

            if ((v137 | v200) & 1) != 0 || ((v138 = sub_1B8C25A08(), (v138) ? (v135 = 2) : (v135 = 3), ((v138 | v198) & 1) != 0 || ((v139 = sub_1B8C25A08(), (v139) ? (v135 = 3) : (v135 = 4), ((v139 | v196) & 1) != 0 || ((v140 = sub_1B8C25A08(), (v140) ? (v135 = 4) : (v135 = 5), ((v140 | v194)))))
            {
              v134 = 0;
            }

            else if (sub_1B8C25A08())
            {
              v134 = 0;
              v135 = 5;
            }

            else
            {

              v135 = v208;
            }
          }
        }

        v141 = *&v104[v108];
        v142 = *(v141 + 16);

        if (v142)
        {

          v143 = sub_1B8B5E354(v134, v135);
          if (v144)
          {
            v145 = *(*(v141 + 56) + 8 * v143);

            v146 = v133;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v145 = sub_1B8B5D1AC(0, *(v145 + 16) + 1, 1, v145);
            }

            v148 = *(v145 + 16);
            v147 = *(v145 + 24);
            if (v148 >= v147 >> 1)
            {
              v145 = sub_1B8B5D1AC((v147 > 1), v148 + 1, 1, v145);
            }

            *(v145 + 16) = v148 + 1;
            v149 = v145 + 16 * v148;
            *(v149 + 32) = v146;
            *(v149 + 40) = v132;
            v104 = v202;
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v151 = *&v202[v108];
            *&v202[v108] = 0x8000000000000000;
            v152 = sub_1B8B5E354(v134, v135);
            v154 = v151[2];
            v155 = (v153 & 1) == 0;
            v156 = __OFADD__(v154, v155);
            v157 = v154 + v155;
            if (v156)
            {
              goto LABEL_171;
            }

            v158 = v153;
            if (v151[3] < v157)
            {
              sub_1B8B93050(v157, isUniquelyReferenced_nonNull_native);
              v152 = sub_1B8B5E354(v134, v135);
              if ((v158 & 1) != (v159 & 1))
              {
                goto LABEL_177;
              }

LABEL_156:
              if ((v158 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_111:
              *(v151[7] + 8 * v152) = v145;

              sub_1B8B5E4C4(v134, v135);
LABEL_112:
              *&v104[v108] = v151;
              swift_endAccess();
              v114 = v209;
              ++v118;
              v131 += 2;
              if (v212 == v118)
              {

                v109 = v184;
                v102 = v185;
                v110 = v190;
                v107 = v192;
                goto LABEL_68;
              }

              continue;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_156;
            }

            v173 = v152;
            sub_1B8B94514();
            v152 = v173;
            if (v158)
            {
              goto LABEL_111;
            }

LABEL_157:
            v151[(v152 >> 6) + 8] |= 1 << v152;
            v170 = (v151[6] + 16 * v152);
            *v170 = v134;
            v170[1] = v135;
            *(v151[7] + 8 * v152) = v145;
            v171 = v151[2];
            v156 = __OFADD__(v171, 1);
            v169 = v171 + 1;
            if (v156)
            {
              goto LABEL_172;
            }

LABEL_158:
            v151[2] = v169;
            goto LABEL_112;
          }
        }

        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_1B8C2A740;
      *(v145 + 32) = v133;
      *(v145 + 40) = v132;
      swift_beginAccess();
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v151 = *&v104[v108];
      *&v104[v108] = 0x8000000000000000;
      v152 = sub_1B8B5E354(v134, v135);
      v162 = v151[2];
      v163 = (v161 & 1) == 0;
      v156 = __OFADD__(v162, v163);
      v164 = v162 + v163;
      if (v156)
      {
        goto LABEL_168;
      }

      v165 = v161;
      if (v151[3] < v164)
      {
        sub_1B8B93050(v164, v160);
        v152 = sub_1B8B5E354(v134, v135);
        if ((v165 & 1) != (v166 & 1))
        {
          goto LABEL_177;
        }

        goto LABEL_151;
      }

      if (v160)
      {
LABEL_151:
        if (v165)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v172 = v152;
        sub_1B8B94514();
        v152 = v172;
        if (v165)
        {
          goto LABEL_111;
        }
      }

      v151[(v152 >> 6) + 8] |= 1 << v152;
      v167 = (v151[6] + 16 * v152);
      *v167 = v134;
      v167[1] = v135;
      *(v151[7] + 8 * v152) = v145;
      v168 = v151[2];
      v156 = __OFADD__(v168, 1);
      v169 = v168 + 1;
      if (v156)
      {
        goto LABEL_170;
      }

      goto LABEL_158;
    }
  }

  return v179;
}

id FBKFeedbackForm.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKFeedbackForm.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FBKFeedbackForm();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B8C0F40C()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1954047348;
  }
}

void sub_1B8C0F444(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B8C25A08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B8C0F528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14BF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0F564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14BF8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.Choice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88C8, &qword_1B8C2FCA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v7;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14BF8(v8, v9, v10);
  sub_1B8C25B18();
  v15 = 0;
  v11 = v13[3];
  sub_1B8C259A8();
  if (!v11)
  {
    v14 = 1;
    sub_1B8C259A8();
  }

  return (*(v4 + 8))(v6, v3);
}

void FBKFeedbackForm.FormResponse.Question.Kind.Choice.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88D8, &qword_1B8C2FCA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14BF8(v9, v10, v11);
  sub_1B8C25B08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v21 = 0;
    v12 = sub_1B8C25948();
    v14 = v13;
    v19 = v12;
    v20 = 1;
    v15 = sub_1B8C25948();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v19;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v17;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.description.getter()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 0x726564696C53;
    }

    else
    {
      v2 = 0x6569462074786554;
      v3 = *v0;
      v4 = 0x6D69542F65746144;
      v5 = 1701669204;
      if (*v0 != 4)
      {
        v5 = 0x656C67676F54;
      }

      if (v3 != 3)
      {
        v4 = v5;
      }

      v6 = 0x6572412074786554;
      if (v3 != 1)
      {
        v6 = 1702125892;
      }

      if (v3)
      {
        v2 = v6;
      }

      if (v3 <= 2)
      {
        return v2;
      }

      else
      {
        return v4;
      }
    }
  }

  else if (*(v0 + 8))
  {
    return 0x656C7069746C754DLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

unint64_t sub_1B8C0FA9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C65694674786574;
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0x656C7069746C756DLL;
    }

    if (a1)
    {
      v5 = 0x6165724174786574;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D695465746164;
    v2 = 1701669236;
    if (a1 != 7)
    {
      v2 = 0x656C67676F74;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x726564696C73;
    if (a1 != 4)
    {
      v3 = 1702125924;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B8C0FBBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8C17F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8C0FBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14C4C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14C4C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14D9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14D9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14F1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14F1C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14F70(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14F70(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void sub_1B8C0FE60(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B8C0FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14DF0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14DF0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14FC4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C0FF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14FC4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C0FFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15018(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C10014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15018(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C10050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14CF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C1008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14CF4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C100C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14CA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C10104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C14CA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.Question.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88E0, &qword_1B8C2FCB0);
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88E8, &qword_1B8C2FCB8);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88F0, &qword_1B8C2FCC0);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA88F8, &qword_1B8C2FCC8);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8900, &qword_1B8C2FCD0);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8908, &qword_1B8C2FCD8);
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8910, &qword_1B8C2FCE0);
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8918, &qword_1B8C2FCE8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8920, &qword_1B8C2FCF0);
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8928, &qword_1B8C2FCF8);
  v22 = *(v21 - 8);
  v84 = v21;
  v85 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - v23;
  v25 = *v1;
  v26 = *(v1 + 8);
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C14C4C(v27, v28, v29);
  v83 = v24;
  v30 = sub_1B8C25B18();
  if (v26 <= 1)
  {
    if (!v26)
    {
      LOBYTE(v86) = 2;
      sub_1B8C14F70(v30, v31, v32);
      v34 = v83;
      v33 = v84;
      sub_1B8C25988();
      v86 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
      sub_1B8C14E44();
      v35 = v76;
      sub_1B8C259C8();
      (*(v75 + 8))(v16, v35);
      return (*(v85 + 8))(v34, v33);
    }

    LOBYTE(v86) = 3;
    sub_1B8C14F1C(v30, v31, v32);
    v37 = v77;
    v39 = v83;
    v38 = v84;
    sub_1B8C25988();
    v86 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14E44();
    v40 = v79;
    sub_1B8C259C8();
    v41 = v78;
    goto LABEL_7;
  }

  if (v26 == 2)
  {
    LOBYTE(v86) = 4;
    sub_1B8C14DF0(v30, v31, v32);
    v37 = v80;
    v39 = v83;
    v38 = v84;
    sub_1B8C25988();
    v86 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14E44();
    v40 = v82;
    sub_1B8C259C8();
    v41 = v81;
LABEL_7:
    (*(v41 + 8))(v37, v40);
    v42 = *(v85 + 8);
    v43 = v39;
    return v42(v43, v38);
  }

  if (v25 > 2)
  {
    if (v25 != 3)
    {
      if (v25 == 4)
      {
        LOBYTE(v86) = 7;
        sub_1B8C14CF4(v30, v31, v32);
        v50 = v69;
        v51 = v83;
        v38 = v84;
        sub_1B8C25988();
        v53 = v70;
        v52 = v71;
      }

      else
      {
        LOBYTE(v86) = 8;
        sub_1B8C14CA0(v30, v31, v32);
        v50 = v72;
        v51 = v83;
        v38 = v84;
        sub_1B8C25988();
        v53 = v73;
        v52 = v74;
      }

      (*(v53 + 8))(v50, v52);
      v42 = *(v85 + 8);
      v43 = v51;
      return v42(v43, v38);
    }

    LOBYTE(v86) = 6;
    sub_1B8C14D48(v30, v31, v32);
    v56 = v66;
    v46 = v83;
    v45 = v84;
    sub_1B8C25988();
    (*(v67 + 8))(v56, v68);
  }

  else
  {
    if (!v25)
    {
      LOBYTE(v86) = 0;
      sub_1B8C15018(v30, v31, v32);
      v54 = v83;
      v55 = v84;
      sub_1B8C25988();
      (*(v59 + 8))(v20, v18);
      return (*(v85 + 8))(v54, v55);
    }

    if (v25 == 1)
    {
      LOBYTE(v86) = 1;
      sub_1B8C14FC4(v30, v31, v32);
      v44 = v60;
      v46 = v83;
      v45 = v84;
      sub_1B8C25988();
      v47 = *(v61 + 8);
      v48 = v44;
      v49 = &v87;
    }

    else
    {
      LOBYTE(v86) = 5;
      sub_1B8C14D9C(v30, v31, v32);
      v57 = v63;
      v46 = v83;
      v45 = v84;
      sub_1B8C25988();
      v47 = *(v64 + 8);
      v48 = v57;
      v49 = &v88;
    }

    v47(v48, *(v49 - 32));
  }

  return (*(v85 + 8))(v46, v45);
}

double FBKFeedbackForm.FormResponse.Question.Kind.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8998, &qword_1B8C2FD08);
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89A0, &qword_1B8C2FD10);
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89A8, &qword_1B8C2FD18);
  v95 = *(v7 - 8);
  v96 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89B0, &qword_1B8C2FD20);
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89B8, &qword_1B8C2FD28);
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v78 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89C0, &qword_1B8C2FD30);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v105 = &v78 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89C8, &qword_1B8C2FD38);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v104 = &v78 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89D0, &qword_1B8C2FD40);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89D8, &qword_1B8C2FD48);
  v84 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E0, &qword_1B8C2FD50);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v78 - v22;
  v24 = a1[3];
  v109 = a1;
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B8C14C4C(v25, v26, v27);
  v28 = v110;
  sub_1B8C25B08();
  v110 = v28;
  if (v28)
  {
    goto LABEL_12;
  }

  v29 = v19;
  v79 = v17;
  v80 = v16;
  v30 = v104;
  v31 = v105;
  v33 = v106;
  v32 = v107;
  v81 = v21;
  v34 = v108;
  v83 = v20;
  v82 = v23;
  v35 = sub_1B8C25978();
  if (*(v35 + 16) != 1 || (v38 = *(v35 + 32), v38 == 9))
  {
    v45 = sub_1B8C25828();
    v46 = swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E8, &qword_1B8C2FD58);
    *v48 = &type metadata for FBKFeedbackForm.FormResponse.Question.Kind;
    v49 = v83;
    v50 = v82;
    sub_1B8C25928();
    sub_1B8C25818();
    (*(*(v45 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v45);
    v110 = v46;
    swift_willThrow();
    (*(v81 + 8))(v50, v49);
  }

  else
  {
    if (*(v35 + 32) > 3u)
    {
      v39 = v83;
      v40 = v82;
      if (*(v35 + 32) <= 5u)
      {
        v103 = v35;
        if (v38 == 4)
        {
          LOBYTE(v111) = 4;
          sub_1B8C14DF0(v35, v36, v37);
          v62 = v110;
          sub_1B8C25918();
          v110 = v62;
          if (!v62)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
            sub_1B8C1506C();
            v63 = v94;
            v64 = v110;
            sub_1B8C25968();
            v110 = v64;
            if (!v64)
            {
              (*(v93 + 8))(v33, v63);
              (*(v81 + 8))(v40, v39);
              swift_unknownObjectRelease();
              v44 = v111;
              v43 = 2;
              goto LABEL_46;
            }

            (*(v93 + 8))(v33, v63);
          }
        }

        else
        {
          LOBYTE(v111) = 5;
          sub_1B8C14D9C(v35, v36, v37);
          v74 = v110;
          sub_1B8C25918();
          v110 = v74;
          if (!v74)
          {
            (*(v91 + 8))(v32, v92);
            (*(v81 + 8))(v40, v39);
            swift_unknownObjectRelease();
            v43 = 3;
            v44 = 2;
            goto LABEL_46;
          }
        }
      }

      else if (v38 == 6)
      {
        LOBYTE(v111) = 6;
        sub_1B8C14D48(v35, v36, v37);
        v65 = v101;
        v66 = v110;
        sub_1B8C25918();
        v110 = v66;
        if (!v66)
        {
          (*(v95 + 8))(v65, v96);
          (*(v81 + 8))(v40, v39);
          swift_unknownObjectRelease();
          v44 = 3;
          v43 = 3;
          goto LABEL_46;
        }
      }

      else if (v38 == 7)
      {
        LOBYTE(v111) = 7;
        sub_1B8C14CF4(v35, v36, v37);
        v41 = v102;
        v42 = v110;
        sub_1B8C25918();
        v110 = v42;
        if (!v42)
        {
          (*(v97 + 8))(v41, v98);
          (*(v81 + 8))(v40, v39);
          swift_unknownObjectRelease();
          v43 = 3;
          v44 = 4;
LABEL_46:
          v51 = v109;
          *v34 = v44;
          *(v34 + 8) = v43;
          return __swift_destroy_boxed_opaque_existential_0(v51);
        }
      }

      else
      {
        LOBYTE(v111) = 8;
        sub_1B8C14CA0(v35, v36, v37);
        v72 = v103;
        v73 = v110;
        sub_1B8C25918();
        v110 = v73;
        if (!v73)
        {
          (*(v99 + 8))(v72, v100);
          (*(v81 + 8))(v40, v39);
          swift_unknownObjectRelease();
          v43 = 3;
          v44 = 5;
          goto LABEL_46;
        }
      }

      (*(v81 + 8))(v40, v39);
      goto LABEL_11;
    }

    if (*(v35 + 32) <= 1u)
    {
      if (*(v35 + 32))
      {
        LOBYTE(v111) = 1;
        sub_1B8C14FC4(v35, v36, v37);
        v67 = v80;
        v68 = v83;
        v69 = v82;
        v70 = v110;
        sub_1B8C25918();
        v110 = v70;
        if (!v70)
        {
          (*(v85 + 8))(v67, v86);
          (*(v81 + 8))(v69, v68);
          swift_unknownObjectRelease();
          v43 = 3;
          v44 = 1;
          goto LABEL_46;
        }

        (*(v81 + 8))(v69, v68);
      }

      else
      {
        LOBYTE(v111) = 0;
        sub_1B8C15018(v35, v36, v37);
        v53 = v83;
        v54 = v82;
        v55 = v110;
        sub_1B8C25918();
        v110 = v55;
        if (!v55)
        {
          (*(v84 + 8))(v29, v79);
          (*(v81 + 8))(v54, v53);
          swift_unknownObjectRelease();
          v44 = 0;
          v43 = 3;
          goto LABEL_46;
        }

        (*(v81 + 8))(v54, v53);
      }

      goto LABEL_11;
    }

    v103 = v35;
    if (v38 == 2)
    {
      LOBYTE(v111) = 2;
      sub_1B8C14F70(v35, v36, v37);
      v56 = v30;
      v57 = v83;
      v58 = v82;
      v59 = v110;
      sub_1B8C25918();
      v110 = v59;
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
        sub_1B8C1506C();
        v60 = v87;
        v61 = v110;
        sub_1B8C25968();
        v110 = v61;
        if (!v61)
        {
          (*(v88 + 8))(v56, v60);
          (*(v81 + 8))(v58, v57);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = v111;
          goto LABEL_46;
        }

        (*(v88 + 8))(v56, v60);
      }
    }

    else
    {
      LOBYTE(v111) = 3;
      sub_1B8C14F1C(v35, v36, v37);
      v57 = v83;
      v58 = v82;
      v71 = v110;
      sub_1B8C25918();
      v110 = v71;
      if (!v71)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8960, &qword_1B8C2FD00);
        sub_1B8C1506C();
        v75 = v90;
        v76 = v110;
        sub_1B8C25968();
        v77 = v81;
        v110 = v76;
        if (!v76)
        {
          (*(v89 + 8))(v31, v75);
          (*(v77 + 8))(v58, v57);
          swift_unknownObjectRelease();
          v44 = v111;
          v43 = 1;
          goto LABEL_46;
        }

        (*(v89 + 8))(v31, v75);
        (*(v77 + 8))(v58, v57);
        goto LABEL_11;
      }
    }

    (*(v81 + 8))(v58, v57);
  }

LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v51 = v109;
  return __swift_destroy_boxed_opaque_existential_0(v51);
}

uint64_t FBKFeedbackForm.FormResponse.Question.description.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  sub_1B8C09F10(v1, v2);
  return 0;
}

uint64_t sub_1B8C11A94()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E65646469487369;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x5479616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8C11B20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8C1821C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8C11B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15144(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C11B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15144(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.Question.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A00, &qword_1B8C2FD60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v26 = *(v1 + 32);
  v20 = *(v1 + 40);
  v19 = *(v1 + 48);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15144(v8, v9, v10);
  sub_1B8C25B18();
  v30 = 0;
  v11 = v23;
  sub_1B8C259A8();
  if (!v11)
  {
    v12 = v19;
    v13 = v20;
    v29 = 1;
    sub_1B8C259A8();
    v28 = 2;
    sub_1B8C259B8();
    v24 = v13;
    v25 = v12;
    v27 = 3;
    sub_1B8C15198(v13, v12);
    sub_1B8C151AC(v14, v15, v16);
    sub_1B8C259C8();
    sub_1B8B9F914(v24, v25);
  }

  return (*(v4 + 8))(v6, v3);
}

void FBKFeedbackForm.FormResponse.Question.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A18, &qword_1B8C2FD68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15144(v9, v10, v11);
  sub_1B8C25B08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v33 = 0;
    v12 = sub_1B8C25948();
    v26 = v13;
    v32 = 1;
    v24 = sub_1B8C25948();
    v25 = v14;
    v31 = 2;
    v15 = sub_1B8C25958();
    v29 = v15;
    v30 = 3;
    sub_1B8C15200(v15, v16, v17);
    sub_1B8C25968();
    v18 = v29 & 1;
    (*(v6 + 8))(v8, v5);
    v20 = v26;
    v19 = v27;
    v21 = v28;
    *a2 = v12;
    *(a2 + 8) = v20;
    v22 = v25;
    *(a2 + 16) = v24;
    *(a2 + 24) = v22;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    *(a2 + 48) = v21;

    sub_1B8C15198(v19, v21);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1B8B9F914(v19, v21);
  }
}

uint64_t sub_1B8C1210C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BE8, &qword_1B8C31248);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BF0, &qword_1B8C31250);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8BF8, &qword_1B8C31258);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = v1[1];
  v36 = *v1;
  v37 = v12;
  v13 = v1[2];
  v29 = v1[3];
  v30 = v13;
  v14 = *(v1 + 32);
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C18394(v15, v16, v17);
  v18 = sub_1B8C25B18();
  if (v14)
  {
    LOBYTE(v38) = 1;
    sub_1B8C183E8(v18, v19, v20);
    v21 = v33;
    v22 = sub_1B8C25988();
    v38 = v36;
    v39 = v37;
    v40 = v30;
    v41 = v29;
    sub_1B8C14EC8(v22, v23, v24);
    v25 = v35;
    sub_1B8C259C8();
    (*(v34 + 8))(v21, v25);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1B8C1843C(v18, v19, v20);
    sub_1B8C25988();
    v26 = v32;
    sub_1B8C259A8();
    (*(v31 + 8))(v7, v26);
  }

  return (*(v9 + 8))(v11, v8);
}

double sub_1B8C12424@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C18, &qword_1B8C31260);
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C20, &qword_1B8C31268);
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38[-v7];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C28, &unk_1B8C31270);
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v38[-v10];
  v12 = a1[3];
  v50 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B8C18394(v13, v14, v15);
  v16 = v45;
  sub_1B8C25B08();
  if (!v16)
  {
    v17 = v43;
    v45 = v9;
    v18 = sub_1B8C25978();
    if (*(v18 + 16) == 1)
    {
      v40 = v11;
      v21 = v44;
      v39 = *(v18 + 32);
      if (v39)
      {
        LOBYTE(v46) = 1;
        sub_1B8C183E8(v18, v19, v20);
        v22 = v21;
        v23 = v40;
        v24 = sub_1B8C25918();
        sub_1B8C150F0(v24, v29, v30);
        sub_1B8C25968();
        (*(v17 + 8))(v5, v3);
        (*(v45 + 8))(v23, v22);
        swift_unknownObjectRelease();
        v31 = v46;
        v32 = v47;
        v33 = v48;
        v34 = v49;
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_1B8C1843C(v18, v19, v20);
        sub_1B8C25918();
        v31 = sub_1B8C25948();
        v32 = v36;
        (*(v42 + 8))(v8, v6);
        (*(v45 + 8))(v40, v21);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0;
      }

      v37 = v41;
      *v41 = v31;
      v37[1] = v32;
      v37[2] = v33;
      v37[3] = v34;
      *(v37 + 32) = v39;
    }

    else
    {
      v25 = sub_1B8C25828();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA89E8, &qword_1B8C2FD58);
      *v27 = &type metadata for FBKFeedbackForm.FormResponse.Answer.Value;
      v28 = v44;
      sub_1B8C25928();
      sub_1B8C25818();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v45 + 8))(v11, v28);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t sub_1B8C12948()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  sub_1B8C09F10(v1, v2);
  return 0;
}

uint64_t sub_1B8C129F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C183E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C12A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C183E8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1B8C12A6C()
{
  if (*v0)
  {
    return 0x6563696F6863;
  }

  else
  {
    return 1954047348;
  }
}

void sub_1B8C12A9C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B8C25A08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6563696F6863 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B8C12B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C18394(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C12BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C18394(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void sub_1B8C12BEC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B8C12C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C1843C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C12CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C1843C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.Answer.description.getter()
{
  if (*(v0 + 32))
  {
    MEMORY[0x1B8CC9EB0](0x203A6563696F6863, 0xE800000000000000);
    sub_1B8C25898();
    return 0;
  }

  else
  {
    MEMORY[0x1B8CC9EB0](*v0, *(v0 + 8));
    return 0x203A74786574;
  }
}

void sub_1B8C12DEC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B8C25A08();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B8C12E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15254(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C12EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C15254(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.Answer.encode(to:)(void *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A28, &qword_1B8C2FD70);
  v27 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B8BFD084(v5, v6, v7, v8, v9);
  sub_1B8C15254(v11, v12, v13);
  v14 = sub_1B8C25B18();
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  sub_1B8C152A8(v14, v15, v16);
  v17 = v21;
  sub_1B8C259C8();
  v18 = sub_1B8C152FC(v22, v23, v24, v25, v26);
  return (*(v27 + 8))(v4, v17, v18);
}

void FBKFeedbackForm.FormResponse.Answer.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A40, &qword_1B8C2FD78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C15254(v9, v10, v11);
  v12 = sub_1B8C25B08();
  if (!v2)
  {
    sub_1B8C1534C(v12, v13, v14);
    sub_1B8C25968();
    (*(v6 + 8))(v8, v5);
    v15 = v18;
    v16 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v16;
    *(a2 + 32) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t FBKFeedbackForm.FormResponse.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[7];
  v5 = *(v0 + 48);
  sub_1B8C257E8();

  MEMORY[0x1B8CC9EB0](v1, v2);
  MEMORY[0x1B8CC9EB0](2108704, 0xE300000000000000);
  v6 = sub_1B8C09F10(v3, v5);
  MEMORY[0x1B8CC9EB0](0, 0xE000000000000000, v6);

  MEMORY[0x1B8CC9EB0](0x736E41203E2D205DLL, 0xED00005B20726577);
  v7 = *(v4 + 16);
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B8C13FE8(0, v7, 0);
    v8 = (v4 + 64);
    do
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      if (*v8)
      {
        v13 = sub_1B8BFD084(v9, v10, v12, v11, 1);
        MEMORY[0x1B8CC9EB0](0x203A6563696F6863, 0xE800000000000000, v13);
        sub_1B8C25898();
        sub_1B8C152FC(v9, v10, v12, v11, 1);
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v16 = sub_1B8BFD084(v9, v10, v12, v11, 0);
        MEMORY[0x1B8CC9EB0](v9, v10, v16);
        sub_1B8C152FC(v9, v10, v12, v11, 0);
        v14 = 0x203A74786574;
        v15 = 0xE600000000000000;
      }

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B8C13FE8((v17 > 1), v18 + 1, 1);
      }

      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v15;
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  sub_1B8C03380();
  v20 = sub_1B8C250D8();
  v22 = v21;

  MEMORY[0x1B8CC9EB0](v20, v22);

  MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
  return 0x6E6F697473657551;
}

uint64_t sub_1B8C13518()
{
  if (*v0)
  {
    return 0x73726577736E61;
  }

  else
  {
    return 0x6E6F697473657571;
  }
}

void sub_1B8C13554(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B8C25A08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73726577736E61 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B8C13630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C153A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1B8C1366C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C153A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t FBKFeedbackForm.FormResponse.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A58, &qword_1B8C2FD80);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v20 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v22 = v1[2];
  v23 = v5;
  v34 = *(v1 + 32);
  v8 = v1[5];
  v21 = v1[7];
  v9 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1B8C15198(v8, v9);
  sub_1B8C153A0(v10, v11, v12);
  v13 = sub_1B8C25B18();
  v27 = v23;
  v28 = v6;
  v14 = v24;
  v29 = v22;
  v30 = v7;
  v31 = v34;
  v32 = v8;
  v33 = v9;
  v35 = 0;
  sub_1B8C153F4(v13, v15, v16);
  v17 = v25;
  sub_1B8C259C8();
  v18 = v32;
  LOBYTE(a1) = v33;

  sub_1B8B9F914(v18, a1);
  if (!v17)
  {
    v27 = v21;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C15448();
    sub_1B8C259C8();
  }

  return (*(v26 + 8))(v4, v14);
}

void FBKFeedbackForm.FormResponse.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A88, &qword_1B8C2FD90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8C153A0(v9, v10, v11);
  v12 = sub_1B8C25B08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1B8C15520(v12, v13, v14);
    sub_1B8C25968();
    v15 = v35;
    v26 = v34;
    v16 = v37;
    v25 = v36;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    v42[0] = 1;
    sub_1B8C15574();
    sub_1B8C25968();
    (*(v6 + 8))(v8, v5);
    v24 = v43;
    v17 = v26;
    *&v30 = v26;
    *(&v30 + 1) = v15;
    v18 = v15;
    v19 = v25;
    *&v31 = v25;
    *(&v31 + 1) = v16;
    v20 = v16;
    LOBYTE(v32) = v27;
    v21 = v28;
    *(&v32 + 1) = v28;
    LOBYTE(v15) = v29;
    LOBYTE(v33) = v29;
    *(&v33 + 1) = v43;
    v22 = v31;
    *a2 = v30;
    a2[1] = v22;
    v23 = v33;
    a2[2] = v32;
    a2[3] = v23;
    sub_1B8B96144(&v30, &v34);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v34 = v17;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v27;
    v39 = v21;
    v40 = v15;
    v41 = v24;
    sub_1B8B9F188(&v34);
  }
}

uint64_t FBKFeedbackForm.serializedAndDeserializedCopy.getter()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v9];
  v2 = v9[0];
  if (v1)
  {
    v3 = sub_1B8C234B8();
    v5 = v4;

    sub_1B8B46130(0, &qword_1EBAA8AA8, 0x1E696ACD0);
    type metadata accessor for FBKFeedbackForm();
    v6 = sub_1B8C254D8();
    if (!v6)
    {
      __break(1u);
    }

    sub_1B8B4645C(v3, v5);
    return v6;
  }

  else
  {
    v8 = v2;
    sub_1B8C23368();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void FBKFeedbackForm.answersSummary.getter()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v22 = *(v0 + v1);

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v17 = __clz(__rbit64(v8)) | (v10 << 6);
    v18 = (*(v22 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v22 + 56) + 8 * v17);
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v11 = 0x657275746165663ALL;
        v12 = 0xEF6E69616D6F645FLL;
        goto LABEL_5;
      }

      if (v20 != 4)
      {
        if (v20 == 5)
        {
          v11 = 0xD000000000000012;
          v12 = 0x80000001B8C33DC0;
          goto LABEL_5;
        }

        goto LABEL_21;
      }

      v11 = 0x6165665F6275733ALL;
      v12 = 0xEC00000065727574;
    }

    else
    {
      if (!v20)
      {
        v12 = 0xE600000000000000;
        v11 = 0x656C7469743ALL;
        goto LABEL_5;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          v11 = 0x706972637365643ALL;
          v12 = 0xEC0000006E6F6974;
          goto LABEL_5;
        }

LABEL_21:
        v11 = *v18;
        v12 = v18[1];
        goto LABEL_5;
      }

      v12 = 0xE500000000000000;
      v11 = 0x616572613ALL;
    }

LABEL_5:
    v8 &= v8 - 1;
    sub_1B8B5FB10(v19, v20);
    sub_1B8B5FB10(v19, v20);

    MEMORY[0x1B8CC9EB0](v11, v12);

    sub_1B8B5E4C4(v19, v20);
    MEMORY[0x1B8CC9EB0](540945696, 0xE400000000000000);
    v13 = MEMORY[0x1B8CC9FA0](v21, MEMORY[0x1E69E6158]);
    v15 = v14;

    MEMORY[0x1B8CC9EB0](v13, v15);

    MEMORY[0x1B8CC9EB0](10, 0xE100000000000000);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v16);
    ++v10;
    if (v8)
    {
      v10 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

char *sub_1B8C13FE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8C140AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8C14008(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8C142EC(a1, a2, a3, *v3, &qword_1EBAA8C40, &qword_1B8C29470, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1B8C1404C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8C141B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C1406C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8C144C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C1408C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8C145D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8C140AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8C141B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B8C142EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B8C144C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7DA0, &unk_1B8C31280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8C145D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8C30, &qword_1B8C29458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B8C146D8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_1B8C14788(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B8C25A08() & 1;
    }
  }

  return result;
}

uint64_t _s8Feedback15FBKFeedbackFormC8QuestionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_1B8B5E4C4(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_1B8B5E4C4(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_1B8B5E4C4(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_1B8B5FB10(*a2, *(a2 + 8));
        sub_1B8B5FB10(v2, v3);
        sub_1B8B5E4C4(v2, v3);
        sub_1B8B5E4C4(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_1B8B5E4C4(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_1B8B5E4C4(*a1, 1uLL);
          sub_1B8B5E4C4(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_1B8B5E4C4(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_1B8B5E4C4(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1B8B5FB10(*a1, v3);
    sub_1B8B5FB10(v2, v3);
    sub_1B8B5E4C4(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = sub_1B8C25A08();
  sub_1B8B5FB10(v4, v5);
  sub_1B8B5FB10(v2, v3);
  sub_1B8B5E4C4(v2, v3);
  sub_1B8B5E4C4(v4, v5);
  return v10 & 1;
}

unint64_t sub_1B8C14A48()
{
  result = qword_1EBAA8860;
  if (!qword_1EBAA8860)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8858, &unk_1B8C2FC60);
    sub_1B8C14ACC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8860);
  }

  return result;
}

unint64_t sub_1B8C14ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8868;
  if (!qword_1EBAA8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8868);
  }

  return result;
}

unint64_t sub_1B8C14B20()
{
  result = qword_1EBAA88B0;
  if (!qword_1EBAA88B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8858, &unk_1B8C2FC60);
    sub_1B8C14BA4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88B0);
  }

  return result;
}

unint64_t sub_1B8C14BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA88B8;
  if (!qword_1EBAA88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88B8);
  }

  return result;
}

unint64_t sub_1B8C14BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA88D0;
  if (!qword_1EBAA88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA88D0);
  }

  return result;
}

unint64_t sub_1B8C14C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8930;
  if (!qword_1EBAA8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8930);
  }

  return result;
}

unint64_t sub_1B8C14CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8938;
  if (!qword_1EBAA8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8938);
  }

  return result;
}

unint64_t sub_1B8C14CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8940;
  if (!qword_1EBAA8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8940);
  }

  return result;
}

unint64_t sub_1B8C14D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8948;
  if (!qword_1EBAA8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8948);
  }

  return result;
}

unint64_t sub_1B8C14D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8950;
  if (!qword_1EBAA8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8950);
  }

  return result;
}

unint64_t sub_1B8C14DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8958;
  if (!qword_1EBAA8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8958);
  }

  return result;
}

unint64_t sub_1B8C14E44()
{
  result = qword_1EBAA8968;
  if (!qword_1EBAA8968)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C14EC8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8968);
  }

  return result;
}

unint64_t sub_1B8C14EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8970;
  if (!qword_1EBAA8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8970);
  }

  return result;
}

unint64_t sub_1B8C14F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8978;
  if (!qword_1EBAA8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8978);
  }

  return result;
}

unint64_t sub_1B8C14F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8980;
  if (!qword_1EBAA8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8980);
  }

  return result;
}

unint64_t sub_1B8C14FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8988;
  if (!qword_1EBAA8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8988);
  }

  return result;
}

unint64_t sub_1B8C15018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8990;
  if (!qword_1EBAA8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8990);
  }

  return result;
}

unint64_t sub_1B8C1506C()
{
  result = qword_1EBAA89F0;
  if (!qword_1EBAA89F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8960, &qword_1B8C2FD00);
    sub_1B8C150F0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA89F0);
  }

  return result;
}

unint64_t sub_1B8C150F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA89F8;
  if (!qword_1EBAA89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA89F8);
  }

  return result;
}

unint64_t sub_1B8C15144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A08;
  if (!qword_1EBAA8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A08);
  }

  return result;
}

double sub_1B8C15198(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B8C151AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A10;
  if (!qword_1EBAA8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A10);
  }

  return result;
}

unint64_t sub_1B8C15200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A20;
  if (!qword_1EBAA8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A20);
  }

  return result;
}

unint64_t sub_1B8C15254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A30;
  if (!qword_1EBAA8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A30);
  }

  return result;
}

unint64_t sub_1B8C152A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A38;
  if (!qword_1EBAA8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A38);
  }

  return result;
}

double sub_1B8C152FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

unint64_t sub_1B8C1534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A48;
  if (!qword_1EBAA8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A48);
  }

  return result;
}

unint64_t sub_1B8C153A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A60;
  if (!qword_1EBAA8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A60);
  }

  return result;
}

unint64_t sub_1B8C153F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A68;
  if (!qword_1EBAA8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A68);
  }

  return result;
}

unint64_t sub_1B8C15448()
{
  result = qword_1EBAA8A78;
  if (!qword_1EBAA8A78)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C154CC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A78);
  }

  return result;
}

unint64_t sub_1B8C154CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A80;
  if (!qword_1EBAA8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A80);
  }

  return result;
}

unint64_t sub_1B8C15520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8A90;
  if (!qword_1EBAA8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A90);
  }

  return result;
}

unint64_t sub_1B8C15574()
{
  result = qword_1EBAA8A98;
  if (!qword_1EBAA8A98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8A70, &qword_1B8C2FD88);
    sub_1B8C155F8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A98);
  }

  return result;
}

unint64_t sub_1B8C155F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AA0;
  if (!qword_1EBAA8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AA0);
  }

  return result;
}

unint64_t sub_1B8C15650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AB0;
  if (!qword_1EBAA8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AB0);
  }

  return result;
}

unint64_t sub_1B8C156A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AB8;
  if (!qword_1EBAA8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AB8);
  }

  return result;
}

double keypath_get_16Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void keypath_get_42Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_43Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double keypath_get_36Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Feedback15FBKFeedbackFormC8QuestionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8C16C24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8C16C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Feedback15FBKFeedbackFormC0C8ResponseV8QuestionV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8C16D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B8C16D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8C16DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8C16E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8C16E58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8C16ED0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8C16F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKFeedbackForm.FormResponse.Question.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8C172D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AC8;
  if (!qword_1EBAA8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AC8);
  }

  return result;
}

unint64_t sub_1B8C17328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AD0;
  if (!qword_1EBAA8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AD0);
  }

  return result;
}

unint64_t sub_1B8C17380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AD8;
  if (!qword_1EBAA8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AD8);
  }

  return result;
}

unint64_t sub_1B8C173D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AE0;
  if (!qword_1EBAA8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AE0);
  }

  return result;
}

unint64_t sub_1B8C17430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AE8;
  if (!qword_1EBAA8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AE8);
  }

  return result;
}

unint64_t sub_1B8C17488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AF0;
  if (!qword_1EBAA8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AF0);
  }

  return result;
}

unint64_t sub_1B8C174E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8AF8;
  if (!qword_1EBAA8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8AF8);
  }

  return result;
}

unint64_t sub_1B8C17538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B00;
  if (!qword_1EBAA8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B00);
  }

  return result;
}

unint64_t sub_1B8C17590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B08;
  if (!qword_1EBAA8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B08);
  }

  return result;
}

unint64_t sub_1B8C175E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B10;
  if (!qword_1EBAA8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B10);
  }

  return result;
}

unint64_t sub_1B8C17640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B18;
  if (!qword_1EBAA8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B18);
  }

  return result;
}

unint64_t sub_1B8C17698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B20;
  if (!qword_1EBAA8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B20);
  }

  return result;
}

unint64_t sub_1B8C176F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B28;
  if (!qword_1EBAA8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B28);
  }

  return result;
}

unint64_t sub_1B8C17748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B30;
  if (!qword_1EBAA8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B30);
  }

  return result;
}

unint64_t sub_1B8C177A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B38;
  if (!qword_1EBAA8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B38);
  }

  return result;
}

unint64_t sub_1B8C177F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B40;
  if (!qword_1EBAA8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B40);
  }

  return result;
}

unint64_t sub_1B8C17850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B48;
  if (!qword_1EBAA8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B48);
  }

  return result;
}

unint64_t sub_1B8C178A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B50;
  if (!qword_1EBAA8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B50);
  }

  return result;
}

unint64_t sub_1B8C17900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B58;
  if (!qword_1EBAA8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B58);
  }

  return result;
}

unint64_t sub_1B8C17958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B60;
  if (!qword_1EBAA8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B60);
  }

  return result;
}

unint64_t sub_1B8C179B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B68;
  if (!qword_1EBAA8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B68);
  }

  return result;
}

unint64_t sub_1B8C17A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B70;
  if (!qword_1EBAA8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B70);
  }

  return result;
}

unint64_t sub_1B8C17A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B78;
  if (!qword_1EBAA8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B78);
  }

  return result;
}

unint64_t sub_1B8C17AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B80;
  if (!qword_1EBAA8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B80);
  }

  return result;
}

unint64_t sub_1B8C17B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B88;
  if (!qword_1EBAA8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B88);
  }

  return result;
}

unint64_t sub_1B8C17B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B90;
  if (!qword_1EBAA8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B90);
  }

  return result;
}

unint64_t sub_1B8C17BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8B98;
  if (!qword_1EBAA8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8B98);
  }

  return result;
}

unint64_t sub_1B8C17C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BA0;
  if (!qword_1EBAA8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BA0);
  }

  return result;
}

unint64_t sub_1B8C17C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BA8;
  if (!qword_1EBAA8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BA8);
  }

  return result;
}

unint64_t sub_1B8C17CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BB0;
  if (!qword_1EBAA8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BB0);
  }

  return result;
}

unint64_t sub_1B8C17D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BB8;
  if (!qword_1EBAA8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BB8);
  }

  return result;
}

unint64_t sub_1B8C17D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BC0;
  if (!qword_1EBAA8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BC0);
  }

  return result;
}

unint64_t sub_1B8C17DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BC8;
  if (!qword_1EBAA8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BC8);
  }

  return result;
}

unint64_t sub_1B8C17E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BD0;
  if (!qword_1EBAA8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BD0);
  }

  return result;
}

unint64_t sub_1B8C17E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BD8;
  if (!qword_1EBAA8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BD8);
  }

  return result;
}

unint64_t sub_1B8C17ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8BE0;
  if (!qword_1EBAA8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8BE0);
  }

  return result;
}

uint64_t sub_1B8C17F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65694674786574 && a2 == 0xE900000000000064;
  if (v4 || (sub_1B8C25A08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165724174786574 && a2 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B8C37100 == a2 || (sub_1B8C25A08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEE006563696F6843 || (sub_1B8C25A08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726564696C73 && a2 == 0xE600000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C67676F74 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B8C25A08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B8C1821C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B8C25A08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865 || (sub_1B8C25A08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xEE006D726F466E49 || (sub_1B8C25A08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8C25A08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B8C18394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C00;
  if (!qword_1EBAA8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C00);
  }

  return result;
}

unint64_t sub_1B8C183E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C08;
  if (!qword_1EBAA8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C08);
  }

  return result;
}

unint64_t sub_1B8C1843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C10;
  if (!qword_1EBAA8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C10);
  }

  return result;
}

unint64_t sub_1B8C184C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C48;
  if (!qword_1EBAA8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C48);
  }

  return result;
}

unint64_t sub_1B8C1851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C50;
  if (!qword_1EBAA8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C50);
  }

  return result;
}

unint64_t sub_1B8C18574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C58;
  if (!qword_1EBAA8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C58);
  }

  return result;
}

unint64_t sub_1B8C185CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C60;
  if (!qword_1EBAA8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C60);
  }

  return result;
}

unint64_t sub_1B8C18624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C68;
  if (!qword_1EBAA8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C68);
  }

  return result;
}

unint64_t sub_1B8C1867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C70;
  if (!qword_1EBAA8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C70);
  }

  return result;
}

unint64_t sub_1B8C186D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C78;
  if (!qword_1EBAA8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C78);
  }

  return result;
}

unint64_t sub_1B8C1872C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C80;
  if (!qword_1EBAA8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C80);
  }

  return result;
}

unint64_t sub_1B8C18784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8C88;
  if (!qword_1EBAA8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8C88);
  }

  return result;
}

uint64_t FBKInlineView.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

void (*FBKInlineView.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineView.$feedbackController.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v1;
}

uint64_t type metadata accessor for FBKInlineView(uint64_t a1)
{
  result = qword_1EBAA8CA8;
  if (!qword_1EBAA8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C18AC4()
{
  type metadata accessor for FBKInlineView(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v0);
}

uint64_t sub_1B8C18B1C(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for FBKInlineView(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v8, v2);
}

uint64_t FBKInlineView.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FBKInlineView(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineView.subject.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineView(0);
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8C18F14(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FBKInlineView(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v2);
}

uint64_t sub_1B8C18F70@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8C19AAC;
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

uint64_t sub_1B8C19004(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8C19A74;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineView(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3, v4);
  result = sub_1B8B30A44(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineView.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineView(0) + 24));
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t FBKInlineView.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineView(0) + 24));
  result = sub_1B8B30A44(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineView.init(feedbackController:subject:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = type metadata accessor for FBKInlineView(0);
  v15 = (a7 + v14[6]);
  v16 = a7 + v14[7];
  sub_1B8C24D58();
  *v16 = v18;
  *(v16 + 1) = v19;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  result = sub_1B8B841EC(a4, a7 + v14[5]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

double FBKInlineView.body.getter@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C98, &qword_1B8C315D8);
  sub_1B8C192D0(v2, a2 + *(v4 + 44));
  v5 = sub_1B8C24808();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CA0, &qword_1B8C315E0) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_1B8C192D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = type metadata accessor for FBKInlineThumbsUp(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v58);
  v60 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v44 - v5;
  v6 = type metadata accessor for FBKInlineView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v62 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FBKInlineThumbsDown(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v59 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = a1[1];
  v56 = *a1;
  v54 = a1[2];
  *&v55 = v17;
  v65 = v56;
  v66 = v17;
  v67 = v54;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v47 = v63;
  v46 = v64;
  v52 = *(v7 + 28);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E68();
  v18 = a1 + *(v7 + 36);
  v50 = *v18;
  v49 = *(v18 + 1);
  LOBYTE(v63) = v50;
  *&v64 = v49;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D88();
  v19 = v65;
  v20 = v66;
  v21 = v67;
  v45 = type metadata accessor for FBKInlineView;
  v22 = v10;
  v44 = v10;
  sub_1B8C19D14(a1, v10, type metadata accessor for FBKInlineView);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1B8C19AD8(v22, v24 + v23);
  v25 = *(v12 + 32);
  v26 = &v16[*(v12 + 36)];
  *v16 = v47;
  *(v16 + 8) = v46;
  v27 = &v16[v25];
  *v27 = v19;
  *(v27 + 1) = v20;
  v27[16] = v21;
  *v26 = sub_1B8C19DDC;
  *(v26 + 1) = v24;
  v65 = v56;
  v66 = v55;
  v67 = v54;
  sub_1B8C24E68();
  v56 = v63;
  v55 = v64;
  v29 = v57;
  v28 = v58;
  sub_1B8C24E68();
  LOBYTE(v63) = v50;
  *&v64 = v49;
  sub_1B8C24D88();
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = a1;
  v34 = v44;
  sub_1B8C19D14(v33, v44, v45);
  v35 = swift_allocObject();
  sub_1B8C19AD8(v34, v35 + v23);
  v36 = *(v28 + 32);
  v37 = (v29 + *(v28 + 36));
  *v29 = v56;
  *(v29 + 8) = v55;
  v38 = v29 + v36;
  *v38 = v30;
  *(v38 + 8) = v31;
  *(v38 + 16) = v32;
  *v37 = sub_1B8C19C94;
  v37[1] = v35;
  v39 = v59;
  sub_1B8C19D14(v16, v59, type metadata accessor for FBKInlineThumbsDown);
  v40 = v60;
  sub_1B8C19D14(v29, v60, type metadata accessor for FBKInlineThumbsUp);
  v41 = v61;
  sub_1B8C19D14(v39, v61, type metadata accessor for FBKInlineThumbsDown);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CD0, &unk_1B8C31660);
  sub_1B8C19D14(v40, v41 + *(v42 + 48), type metadata accessor for FBKInlineThumbsUp);
  sub_1B8C19D7C(v29, type metadata accessor for FBKInlineThumbsUp);
  sub_1B8C19D7C(v16, type metadata accessor for FBKInlineThumbsDown);
  sub_1B8C19D7C(v40, type metadata accessor for FBKInlineThumbsUp);
  return sub_1B8C19D7C(v39, type metadata accessor for FBKInlineThumbsDown);
}

double sub_1B8C197E0@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8C98, &qword_1B8C315D8);
  sub_1B8C192D0(v2, a2 + *(v4 + 44));
  v5 = sub_1B8C24808();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CA0, &qword_1B8C315E0) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

void sub_1B8C19898(uint64_t a1)
{
  sub_1B8B84684(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
  if (v1 <= 0x3F)
  {
    sub_1B8B84684(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v2 <= 0x3F)
    {
      sub_1B8B38178(319);
      if (v3 <= 0x3F)
      {
        sub_1B8B38128();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8C19984()
{
  result = qword_1EBAA8CB8;
  if (!qword_1EBAA8CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8CA0, &qword_1B8C315E0);
    sub_1B8C19A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CB8);
  }

  return result;
}

unint64_t sub_1B8C19A10()
{
  result = qword_1EBAA8CC0;
  if (!qword_1EBAA8CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8CC8, &qword_1B8C31658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CC0);
  }

  return result;
}

uint64_t sub_1B8C19A74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B8C19AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = type metadata accessor for FBKInlineView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0) + 32);
  v7 = sub_1B8C23738();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  if (*(v0 + v3 + *(v1 + 24)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8C19C98(uint64_t a1)
{
  v3 = type metadata accessor for FBKInlineView(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = (v1 + *(result + 32) + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  if (*v6)
  {
    return (*v6)(a1);
  }

  return result;
}

uint64_t sub_1B8C19D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C19D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1B8C19E0C@<X0>(void *a1@<X8>)
{
  v3 = sub_1B8C19FC8(*(v1 + 8));
  *a1 = v3;

  return v3;
}

uint64_t sub_1B8C19E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C19F74(a1, a2, a3);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1B8C19EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C19F74(a1, a2, a3);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1B8C19F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8C19F74(a1, a2, a3);
  sub_1B8C24758();
  __break(1u);
}

unint64_t sub_1B8C19F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8CD8;
  if (!qword_1EBAA8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8CD8);
  }

  return result;
}

uint64_t sub_1B8C19FC8(uint64_t a1)
{
  v2 = sub_1B8C23C38();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25468();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C37120, &v13);
    _os_log_impl(&dword_1B8B22000, v6, v7, "%{public}s", v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v10);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return a1;
}

id sub_1B8C1A1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_1B8C23C38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25468();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C371E0, v18);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE0, &qword_1B8C317C0);
  sub_1B8C247A8();
  v12 = v18[3];
  swift_getKeyPath();
  v18[0] = v12;
  sub_1B8C1A974();
  sub_1B8C23588();

  v13 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8C1A9CC(v12 + v13, v2);

  v14 = type metadata accessor for FBKEvaluationController.FormContext(0);
  if ((*(*(v14 - 8) + 48))(v2, 1, v14) == 1)
  {
    sub_1B8C1AA3C(v2);
  }

  else
  {
    v15 = *&v2[*(v14 + 24)];
    v16 = v15;
    sub_1B8C1AAA4(v2);
    if (v15)
    {
      return v16;
    }
  }

  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8C1A514()
{
  v0 = sub_1B8C23C38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25498();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C37170, &v11);
    _os_log_impl(&dword_1B8B22000, v4, v5, "%{public}s", v6, 0xCu);
    v8 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CCB0E0](v7, -1, -1, v8);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1B8C1A6E4(void *a1)
{
  v2 = sub_1B8C23C38();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23C28();
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25498();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B8B5DD48(0xD000000000000029, 0x80000001B8C37140, &v13);
    _os_log_impl(&dword_1B8B22000, v6, v7, "%{public}s", v8, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v10);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (*(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v12 - 2) = a1;
    *(&v12 - 8) = 0;
    v13 = a1;
    sub_1B8C1A974();
    sub_1B8C23578();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented) = 0;
  }

  sub_1B8BEAF7C();
}

unint64_t sub_1B8C1A974()
{
  result = qword_1EDC85660;
  if (!qword_1EDC85660)
  {
    type metadata accessor for FBKEvaluationController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC85660);
  }

  return result;
}

uint64_t sub_1B8C1A9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C1AA3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8C1AAA4(uint64_t a1)
{
  v2 = type metadata accessor for FBKEvaluationController.FormContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8C1AB2C()
{
  v0 = sub_1B8C23528();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C23518();
  type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  sub_1B8C234D8();
  if (v4 >= 86400.0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
    [v5 setUnitsStyle_];
    [v5 setDateTimeStyle_];
    v8 = sub_1B8C234E8();
    v6 = sub_1B8C234E8();
    v7 = [v5 localizedStringForDate:v8 relativeToDate:v6];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v5 setDateStyle_];
    [v5 setTimeStyle_];
    v6 = sub_1B8C234E8();
    v7 = [v5 stringFromDate_];
  }

  v9 = sub_1B8C25128();
  (*(v1 + 8))(v3, v0);
  return v9;
}

double sub_1B8C1AD40@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B8C24478();
  v25 = 0;
  sub_1B8C1AF00(v3, &v15);
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v26 = v15;
  v27 = v16;
  v35[6] = v21;
  v35[7] = v22;
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v35[5] = v20;
  v34 = v23;
  v36 = v23;
  v35[0] = v15;
  v35[1] = v16;
  sub_1B8B34450(&v26, v14, &qword_1EBAA8E40, &qword_1B8C31BB8);
  sub_1B8B3433C(v35, &qword_1EBAA8E40, &qword_1B8C31BB8);
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(&v24[7] + 7) = v33;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[8] + 7) = v34;
  *(v24 + 7) = v26;
  v6 = v25;
  v7 = sub_1B8C248A8();
  KeyPath = swift_getKeyPath();
  v9 = v24[4];
  *(a2 + 97) = v24[5];
  v10 = v24[7];
  *(a2 + 113) = v24[6];
  *(a2 + 129) = v10;
  *(a2 + 144) = *(&v24[7] + 15);
  v11 = v24[0];
  *(a2 + 33) = v24[1];
  result = *&v24[2];
  v13 = v24[3];
  *(a2 + 49) = v24[2];
  *(a2 + 65) = v13;
  *(a2 + 81) = v9;
  *a2 = v5;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v6;
  *(a2 + 17) = v11;
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = v7;
  return result;
}

uint64_t sub_1B8C1AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  LOBYTE(v29) = 1;
  sub_1B8C1B254(a1, v5, v6, &v38);
  v43 = *v39;
  v44 = *&v39[16];
  v45 = *&v39[32];
  v46 = *&v39[48];
  v42 = v38;
  v47[1] = *v39;
  v47[2] = *&v39[16];
  v47[3] = *&v39[32];
  v47[4] = *&v39[48];
  v47[0] = v38;
  sub_1B8B34450(&v42, &v31, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v47, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v41[23] = v43;
  *&v41[39] = v44;
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[7] = v42;
  v7 = type metadata accessor for CatchUpMailMessageMetadata(0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if ((*(a1 + *(v7 + 20)) & 1) == 0)
  {
    v14 = *(a1 + 40);
    *&v38 = *(a1 + 32);
    *(&v38 + 1) = v14;
    sub_1B8B34CA8(v7, v8, v9);

    v15 = sub_1B8C249E8();
    v17 = v16;
    v19 = v18;
    sub_1B8C24898();
    v10 = sub_1B8C249B8();
    v11 = v20;
    v28 = v21;
    v13 = v22;

    sub_1B8B34060(v15, v17, v19 & 1);

    v12 = v28 & 1;
    sub_1B8B34694(v10, v11, v28 & 1);
  }

  v29 = v4;
  v30[0] = 1;
  *&v30[1] = *v41;
  *&v30[17] = *&v41[16];
  *&v30[65] = *&v41[64];
  *&v30[49] = *&v41[48];
  *&v30[33] = *&v41[32];
  *&v30[80] = *&v41[79];
  v31 = v4;
  v32 = *v30;
  v37 = *&v41[79];
  v35 = *&v30[48];
  v36 = *&v30[64];
  v33 = *&v30[16];
  v34 = *&v30[32];
  sub_1B8B34450(&v29, &v38, &qword_1EBAA7680, &qword_1B8C2C1D0);
  sub_1B8BD8454(v10, v11, v12, v13);
  sub_1B8BD8498(v10, v11, v12, v13);
  v23 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v23;
  v24 = v37;
  v25 = v32;
  *a2 = v31;
  *(a2 + 16) = v25;
  v26 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v26;
  *(a2 + 96) = v24;
  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  *(a2 + 120) = v12;
  *(a2 + 128) = v13;
  sub_1B8BD8498(v10, v11, v12, v13);
  *&v39[33] = *&v41[32];
  *&v39[49] = *&v41[48];
  *v40 = *&v41[64];
  *&v39[1] = *v41;
  v38 = v4;
  v39[0] = 1;
  *&v40[15] = *&v41[79];
  *&v39[17] = *&v41[16];
  return sub_1B8B3433C(&v38, &qword_1EBAA7680, &qword_1B8C2C1D0);
}

double sub_1B8C1B254@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8B34CA8(a1, a2, a3);

  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  sub_1B8C24938();
  v10 = sub_1B8C249B8();
  v33 = v11;
  v34 = v10;
  v32 = v12;
  v35 = v13;

  sub_1B8B34060(v5, v7, v9 & 1);

  sub_1B8C1AB2C();
  v14 = sub_1B8C249E8();
  v16 = v15;
  v18 = v17;
  sub_1B8C24C98();
  v19 = sub_1B8C24998();
  v21 = v20;
  v23 = v22;
  sub_1B8B34060(v14, v16, v18 & 1);

  sub_1B8C24898();
  v24 = sub_1B8C249B8();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_1B8B34060(v19, v21, v23 & 1);

  *a4 = v34;
  *(a4 + 8) = v33;
  *(a4 + 16) = v32 & 1;
  *(a4 + 24) = v35;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
  *(a4 + 64) = v28 & 1;
  *(a4 + 72) = v30;
  sub_1B8B34694(v34, v33, v32 & 1);

  sub_1B8B34694(v24, v26, v28 & 1);

  sub_1B8B34060(v24, v26, v28 & 1);

  sub_1B8B34060(v34, v33, v32 & 1);

  return result;
}

uint64_t sub_1B8C1B4A8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1B8B34450(v2, &v14 - v9, &qword_1EBAA6D58, &qword_1B8C31BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1B8C23D78();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1B8C25488();
    v13 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B8C1B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v69 = sub_1B8C23D78();
  v3 = *(v69 - 8);
  v4 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - v6;
  v8 = sub_1B8C23A28();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C24078();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EA8, &qword_1B8C31C78);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EB0, &qword_1B8C31C80);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - v20;
  *v21 = sub_1B8C24478();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EB8, &qword_1B8C31C88) + 44)];
  v68 = a1;
  sub_1B8C1BC74(a1, v22);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EC0, &qword_1B8C31C90) + 36)];
  *v31 = a1;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_1B8C24CB8();
  v33 = sub_1B8C24808();
  v34 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EC8, &qword_1B8C31C98) + 36)];
  *v34 = v32;
  v34[8] = v33;
  *&v21[*(v19 + 44)] = sub_1B8C24CA8();
  v35 = *(v12 + 28);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1B8C24418();
  (*(*(v37 - 8) + 104))(&v14[v35], v36, v37);
  __asm { FMOV            V0.2D, #8.0 }

  *v14 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v43 = v66;
  v44 = __swift_project_value_buffer(v66, qword_1EBAB3AA8);
  (*(v65 + 16))(v10, v44, v43);
  v45 = sub_1B8C24CE8();
  sub_1B8C1B4A8(v7);
  v46 = v67;
  v47 = v69;
  (*(v3 + 104))(v67, *MEMORY[0x1E697DBB8], v69);
  sub_1B8C23D68();
  v48 = *(v3 + 8);
  v48(v46, v47);
  v48(v7, v47);
  sub_1B8C23DB8();
  sub_1B8C1F018(v14, v17, MEMORY[0x1E697EAF0]);
  v49 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8ED0, &qword_1B8C31CA0) + 36)];
  v50 = v72;
  *v49 = v71;
  *(v49 + 1) = v50;
  *(v49 + 4) = v73;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8ED8, &qword_1B8C31CA8);
  *&v17[*(v51 + 52)] = v45;
  *&v17[*(v51 + 56)] = 256;
  v52 = sub_1B8C24F48();
  v54 = v53;
  sub_1B8C1F080(v14, MEMORY[0x1E697EAF0]);
  v55 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EE0, &qword_1B8C31CB0) + 36)];
  *v55 = v52;
  v55[1] = v54;
  v56 = sub_1B8C24F48();
  v58 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EE8, &qword_1B8C31CB8);
  v60 = v70;
  v61 = v70 + *(v59 + 36);
  sub_1B8B3883C(v17, v61, &qword_1EBAA8EA8, &qword_1B8C31C78);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EF0, &qword_1B8C31CC0) + 36));
  *v62 = v56;
  v62[1] = v58;
  return sub_1B8B3883C(v21, v60, &qword_1EBAA8EB0, &qword_1B8C31C80);
}

uint64_t sub_1B8C1BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1B8C24EA8();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8EF8, &qword_1B8C31CC8);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - v11;
  v13 = a1 + *(type metadata accessor for CatchUpMailMessagePreviewer(0) + 20);
  sub_1B8C1F018(v13, v12, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  *(v12 + *(type metadata accessor for CatchUpMailMessageMetadata(0) + 20)) = 1;
  v90 = v12;
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v14 = v12 + *(v8 + 44);
  *v14 = a1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16;
  *(v14 + 24) = v17;
  *(v14 + 32) = v18;
  *(v14 + 40) = 0;
  v19 = sub_1B8C24E98();
  v78 = v13;
  v20 = *(v13 + 40);
  *&v107[0] = *(v13 + 32);
  *(&v107[0] + 1) = v20;
  sub_1B8B34CA8(v19, v21, v22);

  v23 = sub_1B8C249E8();
  v25 = v24;
  LOBYTE(v12) = v26;
  sub_1B8C24918();
  v27 = sub_1B8C249B8();
  v29 = v28;
  v31 = v30;

  sub_1B8B34060(v23, v25, v12 & 1);

  v79 = sub_1B8C249A8();
  v80 = v32;
  v87 = v33;
  v35 = v34;
  sub_1B8B34060(v27, v29, v31 & 1);

  v36 = sub_1B8C24808();
  v37 = v36;
  v82 = v36;
  sub_1B8C23D18();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LOBYTE(v27) = v35 & 1;
  LOBYTE(v107[0]) = v35 & 1;
  v81 = v35 & 1;
  LOBYTE(v102[0]) = 0;
  v46 = *v78;
  v47 = v78[1];

  sub_1B8B67FA4(v46, v47, 0, 1, &v94);
  LODWORD(v78) = sub_1B8C24808();
  sub_1B8C23D18();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  LOBYTE(v107[0]) = 0;
  v56 = v84;
  sub_1B8B34450(v90, v84, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v57 = v89;
  v58 = *(v88 + 16);
  v59 = v86;
  v58(v86, v85, v89);
  v60 = v56;
  v61 = v83;
  sub_1B8B34450(v60, v83, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F00, &unk_1B8C31CD0);
  v58((v61 + v62[12]), v59, v57);
  v63 = (v61 + v62[16]);
  v65 = v79;
  v64 = v80;
  *&v98 = v79;
  *(&v98 + 1) = v87;
  LOBYTE(v99) = v27;
  *(&v99 + 1) = *v92;
  DWORD1(v99) = *&v92[3];
  *(&v99 + 1) = v80;
  LOBYTE(v100) = v37;
  *(&v100 + 1) = *v91;
  DWORD1(v100) = *&v91[3];
  *(&v100 + 1) = v39;
  *&v101[0] = v41;
  *(&v101[0] + 1) = v43;
  *&v101[1] = v45;
  BYTE8(v101[1]) = 0;
  v66 = v98;
  v67 = v99;
  *(v63 + 57) = *(v101 + 9);
  v68 = v101[0];
  v63[2] = v100;
  v63[3] = v68;
  *v63 = v66;
  v63[1] = v67;
  v69 = (v61 + v62[20]);
  v103 = v96;
  v104 = v97;
  v102[0] = v94;
  v102[1] = v95;
  v70 = v78;
  LOBYTE(v105) = v78;
  DWORD1(v105) = *&v93[3];
  *(&v105 + 1) = *v93;
  *(&v105 + 1) = v49;
  *&v106[0] = v51;
  *(&v106[0] + 1) = v53;
  *&v106[1] = v55;
  BYTE8(v106[1]) = 0;
  v71 = v95;
  *v69 = v94;
  v69[1] = v71;
  v72 = v103;
  v73 = v104;
  *(v69 + 89) = *(v106 + 9);
  v74 = v106[0];
  v69[4] = v105;
  v69[5] = v74;
  v69[2] = v72;
  v69[3] = v73;
  sub_1B8B34450(&v98, v107, &qword_1EBAA5E40, &qword_1B8C27C38);
  sub_1B8B34450(v102, v107, &qword_1EBAA8F08, &qword_1B8C31CE0);
  v75 = v89;
  v76 = *(v88 + 8);
  v76(v85, v89);
  sub_1B8B3433C(v90, &qword_1EBAA8EF8, &qword_1B8C31CC8);
  v107[0] = v94;
  v107[1] = v95;
  v107[2] = v96;
  v107[3] = v97;
  v108 = v70;
  *v109 = *v93;
  *&v109[3] = *&v93[3];
  v110 = v49;
  v111 = v51;
  v112 = v53;
  v113 = v55;
  v114 = 0;
  sub_1B8B3433C(v107, &qword_1EBAA8F08, &qword_1B8C31CE0);
  v115[0] = v65;
  v115[1] = v87;
  v116 = v81;
  *v117 = *v92;
  *&v117[3] = *&v92[3];
  v118 = v64;
  v119 = v82;
  *v120 = *v91;
  *&v120[3] = *&v91[3];
  v121 = v39;
  v122 = v41;
  v123 = v43;
  v124 = v45;
  v125 = 0;
  sub_1B8B3433C(v115, &qword_1EBAA5E40, &qword_1B8C27C38);
  v76(v86, v75);
  return sub_1B8B3433C(v84, &qword_1EBAA8EF8, &qword_1B8C31CC8);
}

uint64_t sub_1B8C1C258(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E80, &qword_1B8C31C60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  *v7 = sub_1B8C24478();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E88, &qword_1B8C31C68);
  sub_1B8C1B6AC(v2, &v7[*(v8 + 44)]);
  v9 = sub_1B8C248A8();
  KeyPath = swift_getKeyPath();
  v11 = &v7[*(v5 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  sub_1B8C1F018(v2, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpMailMessagePreviewer);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1B8C1F454(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CatchUpMailMessagePreviewer);
  sub_1B8C1F8F0();
  sub_1B8C24AA8();

  return sub_1B8B3433C(v7, &qword_1EBAA8E80, &qword_1B8C31C60);
}

uint64_t sub_1B8C1C468@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_1B8C23348();
  v9 = v8;

  sub_1B8C1F018(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1B8C1F454(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DF0, &qword_1B8C31B10) + 40);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + 24) = sub_1B8C1F4BC;
  *(a1 + 32) = v11;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1B8C1C6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DF8, &qword_1B8C31B48);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  *a2 = sub_1B8C24468();
  *(a2 + 8) = 0x4040000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E00, &qword_1B8C31B50);
  v9 = *a1;
  v12 = *(v8 + 44);
  v13 = v9;
  swift_getKeyPath();
  sub_1B8C1F54C(&qword_1EBAA8E08, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);

  sub_1B8C23338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8E10, &qword_1B8C31B78);
  sub_1B8B34CFC(&qword_1EBAA8E18, &qword_1EBAA8E10, &qword_1B8C31B78, MEMORY[0x1E69E6328]);
  sub_1B8B34CFC(&qword_1EBAA8E20, &qword_1EBAA8DF8, &qword_1B8C31B48, MEMORY[0x1E6968898]);
  v10 = sub_1B8C25298();
  (*(v5 + 8))(v7, v4);

  v13 = v10;
  sub_1B8C23568();
  type metadata accessor for CatchUpMailMessagePreviewer(0);
  sub_1B8B34CFC(&qword_1EBAA8E28, &qword_1EBAA8E10, &qword_1B8C31B78, MEMORY[0x1E69E6338]);
  sub_1B8C1F54C(&qword_1EBAA8E30, type metadata accessor for CatchUpMailMessagePreviewer, &unk_1B8C31C10);
  sub_1B8C1F54C(&qword_1EBAA8E38, type metadata accessor for CatchUpDonationDecoder.Result.Mail, &unk_1B8C2EB38);
  return sub_1B8C24EC8();
}

uint64_t sub_1B8C1C9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  sub_1B8C1F018(a1, a2 + *(v4 + 20), type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  result = swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v4 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1B8C1CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CE8, &qword_1B8C318B0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  if (*(a1 + 16))
  {
    v20 = v11;
    v14 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *v13 = sub_1B8C24468();
    *(v13 + 1) = 0x4040000000000000;
    v13[16] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CF0, &qword_1B8C318B8);
    sub_1B8C1CC44(a1 + v15, a1, a2, a3, a4, &v13[*(v16 + 44)]);
    sub_1B8B2FD30(v13, a5);
    return (*(v20 + 56))(a5, 0, 1, v10);
  }

  else
  {
    v18 = *(v11 + 56);

    return v18(a5, 1, 1, v10);
  }
}

uint64_t sub_1B8C1CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v61 = a6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8CF8, &qword_1B8C318C0);
  MEMORY[0x1EEE9AC00](v59);
  v54 = (&v49 - v11);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D00, &qword_1B8C318C8);
  v58 = *(v60 - 8);
  v12 = MEMORY[0x1EEE9AC00](v60);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v14;
  v15 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D08, &qword_1B8C318D0);
  MEMORY[0x1EEE9AC00](v53);
  v18 = &v49 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D10, &qword_1B8C318D8);
  v64 = *(v56 - 8);
  v19 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v49 - v21;
  *v18 = sub_1B8C242E8();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D18, &qword_1B8C318E0) + 44)];
  *v22 = sub_1B8C24478();
  *(v22 + 1) = 0x4030000000000000;
  v22[16] = 0;
  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D20, &qword_1B8C318E8) + 44)];
  v52 = a1;
  sub_1B8C1D2CC(a1, v23);
  sub_1B8C1F018(a1, &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v24 = (*(v51 + 80) + 48) & ~*(v51 + 80);
  v25 = swift_allocObject();
  v50 = a2;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = a5;
  sub_1B8C1F454(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v51 = MEMORY[0x1E69817F8];
  sub_1B8B34CFC(&qword_1EBAA8D28, &qword_1EBAA8D08, &qword_1B8C318D0, MEMORY[0x1E69817F8]);

  v26 = a4;

  v27 = v62;
  sub_1B8C24AA8();

  sub_1B8B3433C(v18, &qword_1EBAA8D08, &qword_1B8C318D0);
  v28 = sub_1B8C242E8();
  v29 = v54;
  *v54 = v28;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D30, &qword_1B8C318F0) + 44);
  *v30 = sub_1B8C24478();
  *(v30 + 8) = 0x4030000000000000;
  *(v30 + 16) = 0;
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D38, &qword_1B8C318F8) + 44));
  v32 = v50;
  sub_1B8C1E120(v50, a3, v26, a5, v52, v31);
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a3;
  v33[4] = v26;
  v33[5] = a5;
  sub_1B8B34CFC(&qword_1EBAA8D40, &qword_1EBAA8CF8, &qword_1B8C318C0, v51);

  v34 = v63;
  sub_1B8C24AA8();

  sub_1B8B3433C(v29, &qword_1EBAA8CF8, &qword_1B8C318C0);
  v35 = *(v64 + 16);
  v36 = v55;
  v37 = v27;
  v38 = v56;
  v35(v55, v37, v56);
  v39 = v57;
  v40 = v58;
  v41 = *(v58 + 16);
  v42 = v34;
  v43 = v60;
  v41(v57, v42, v60);
  v44 = v61;
  v35(v61, v36, v38);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D48, &unk_1B8C31900);
  v41(&v44[*(v45 + 48)], v39, v43);
  v46 = *(v40 + 8);
  v46(v63, v43);
  v47 = *(v64 + 8);
  v47(v62, v38);
  v46(v39, v43);
  return (v47)(v36, v38);
}

uint64_t sub_1B8C1D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = sub_1B8C24078();
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C23A28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D88, &qword_1B8C31980);
  v10 = MEMORY[0x1EEE9AC00](v64);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - v12;
  v66 = sub_1B8C242E8();
  LOBYTE(v75[0]) = 1;
  sub_1B8C1D924(v72);
  *&v68[7] = v72[0];
  *&v68[23] = v72[1];
  *&v68[39] = v72[2];
  *&v68[55] = v72[3];
  v65 = LOBYTE(v75[0]);
  *v13 = sub_1B8C24478();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D90, &qword_1B8C31988);
  sub_1B8C1DAE8(a1, &v13[*(v14 + 44)]);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D98, &qword_1B8C31990) + 36)];
  *v23 = a1;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1EBAB3A60);
  v25 = *(v7 + 16);
  v25(v9, v24, v6);
  v26 = sub_1B8C24CE8();
  v27 = sub_1B8C24808();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DA0, &qword_1B8C31998) + 36)];
  *v28 = v26;
  v28[8] = v27;
  v29 = *(v63 + 20);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_1B8C24418();
  (*(*(v31 - 8) + 104))(&v5[v29], v30, v31);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v6, qword_1EBAB3AA8);
  v25(v9, v37, v6);
  v38 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v39 = &v13[*(v64 + 36)];
  v40 = MEMORY[0x1E697EAF0];
  sub_1B8C1F018(v5, v39, MEMORY[0x1E697EAF0]);
  v41 = *&v69 * 0.5;
  v42 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8C1F018(v5, v42, v40);
  *(v42 + *(sub_1B8C24068() + 20)) = v41;
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v44 = v70;
  *v43 = v69;
  *(v43 + 16) = v44;
  *(v43 + 32) = v71;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v42 + *(v45 + 52)) = v38;
  *(v42 + *(v45 + 56)) = 256;
  v46 = sub_1B8C24F48();
  v48 = v47;
  sub_1B8C1F080(v5, MEMORY[0x1E697EAF0]);
  v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = sub_1B8C24F48();
  v52 = v51;
  v53 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v53 = v50;
  v53[1] = v52;
  v54 = v67;
  sub_1B8B34450(v13, v67, &qword_1EBAA8D88, &qword_1B8C31980);
  v55 = v66;
  v73[0] = v66;
  v73[1] = 0;
  v56 = v65;
  v74[0] = v65;
  *&v74[1] = *v68;
  *&v74[17] = *&v68[16];
  *&v74[33] = *&v68[32];
  *&v74[49] = *&v68[48];
  *&v74[64] = *&v68[63];
  v57 = *v74;
  *a2 = v66;
  *(a2 + 16) = v57;
  v58 = *&v74[16];
  v59 = *&v74[32];
  v60 = *&v74[48];
  *(a2 + 80) = *&v74[64];
  *(a2 + 48) = v59;
  *(a2 + 64) = v60;
  *(a2 + 32) = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DA8, &qword_1B8C319A0);
  sub_1B8B34450(v54, a2 + *(v61 + 48), &qword_1EBAA8D88, &qword_1B8C31980);
  sub_1B8B34450(v73, v75, &qword_1EBAA8D78, &qword_1B8C31940);
  sub_1B8B3433C(v13, &qword_1EBAA8D88, &qword_1B8C31980);
  sub_1B8B3433C(v54, &qword_1EBAA8D88, &qword_1B8C31980);
  v75[0] = v55;
  v75[1] = 0;
  v76 = v56;
  v78 = *&v68[16];
  v79 = *&v68[32];
  *v80 = *&v68[48];
  *&v80[15] = *&v68[63];
  v77 = *v68;
  return sub_1B8B3433C(v75, &qword_1EBAA8D78, &qword_1B8C31940);
}

double sub_1B8C1D924@<D0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  v2 = sub_1B8C249C8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24928();
  v7 = sub_1B8C249B8();
  v9 = v8;
  v11 = v10;

  sub_1B8B34060(v2, v4, v6 & 1);

  sub_1B8C24C98();
  v12 = sub_1B8C24998();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1B8B34060(v7, v9, v11 & 1);

  v19 = sub_1B8C24D08();
  v20 = sub_1B8C24C98();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  sub_1B8B34694(v12, v14, v16 & 1);

  sub_1B8B34060(v12, v14, v16 & 1);

  return result;
}

uint64_t sub_1B8C1DAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7908, &unk_1B8C2CD40);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-v9];
  v11 = type metadata accessor for CatchUpMailMessageMetadata(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26[-v16];
  sub_1B8C1F018(a1, &v26[-v16], type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v17[*(v12 + 28)] = 0;
  sub_1B8C24C98();
  v27 = a1;
  sub_1B8C24608();
  v18 = sub_1B8C24C98();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7910, &qword_1B8C2CD50) + 36)] = v18;
  v19 = sub_1B8C24898();
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7918, &qword_1B8C2CD88) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = swift_getKeyPath();
  v23 = &v10[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = 4;
  v23[16] = 0;
  sub_1B8C1F018(v17, v15, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8B34450(v10, v8, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8C1F018(v15, a2, type metadata accessor for CatchUpMailMessageMetadata);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8DB0, &unk_1B8C319E0);
  sub_1B8B34450(v8, a2 + *(v24 + 48), &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8B3433C(v10, &qword_1EBAA7908, &unk_1B8C2CD40);
  sub_1B8C1F080(v17, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8B3433C(v8, &qword_1EBAA7908, &unk_1B8C2CD40);
  return sub_1B8C1F080(v15, type metadata accessor for CatchUpMailMessageMetadata);
}

uint64_t sub_1B8C1DDA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8C24398();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B8C24618();
  v5 = v4;
  v7 = v6;
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24358();
  sub_1B8C24378();
  type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  sub_1B8C24348();
  sub_1B8C24378();
  sub_1B8C243B8();
  v8 = sub_1B8C249C8();
  sub_1B8B34060(v3, v5, v7 & 1);

  return v8;
}

uint64_t sub_1B8C1DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B8C237B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v20, v16);
  v17 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) + 40);
  v18 = sub_1B8C23328();
  (*(*(v18 - 8) + 16))(v15, a5 + v17, v18);
  swift_storeEnumTagMultiPayload();
  (*(v10 + 104))(v12, *MEMORY[0x1E699C2E0], v9);
  sub_1B8B5FE50(v15, v12);

  (*(v10 + 8))(v12, v9);
  return sub_1B8C1F080(v15, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8C1E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v67 = a5;
  v73 = a6;
  v68 = sub_1B8C24078();
  MEMORY[0x1EEE9AC00](v68);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C23A28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D50, &qword_1B8C31910);
  v13 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  v71 = sub_1B8C242E8();
  LOBYTE(v81[0]) = 1;
  sub_1B8C1E7B0(v78);
  *&v74[7] = v78[0];
  *&v74[23] = v78[1];
  *&v74[39] = v78[2];
  *&v74[55] = v78[3];
  v70 = LOBYTE(v81[0]);
  *v16 = sub_1B8C24478();
  *(v16 + 1) = 0x4030000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D58, &qword_1B8C31918);
  sub_1B8C1EA24(v67, a1, &v16[*(v17 + 44)]);
  LOBYTE(a1) = sub_1B8C24808();
  sub_1B8C23D18();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D60, &qword_1B8C31920) + 36)];
  *v26 = a1;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v9, qword_1EBAB3A60);
  v28 = *(v10 + 16);
  v28(v12, v27, v9);
  v29 = sub_1B8C24CE8();
  v30 = sub_1B8C24808();
  v31 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D68, &unk_1B8C31928) + 36)];
  *v31 = v29;
  v31[8] = v30;
  v32 = *(v68 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1B8C24418();
  (*(*(v34 - 8) + 104))(&v8[v32], v33, v34);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v9, qword_1EBAB3AA8);
  v28(v12, v40, v9);
  v41 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v42 = &v16[*(v69 + 36)];
  v43 = MEMORY[0x1E697EAF0];
  sub_1B8C1F018(v8, v42, MEMORY[0x1E697EAF0]);
  v44 = *&v75 * 0.5;
  v45 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10) + 68);
  sub_1B8C1F018(v8, v45, v43);
  *(v45 + *(sub_1B8C24068() + 20)) = v44;
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v47 = v76;
  *v46 = v75;
  *(v46 + 16) = v47;
  *(v46 + 32) = v77;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v45 + *(v48 + 52)) = v41;
  *(v45 + *(v48 + 56)) = 256;
  v49 = sub_1B8C24F48();
  v51 = v50;
  sub_1B8C1F080(v8, MEMORY[0x1E697EAF0]);
  v52 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v52 = v49;
  v52[1] = v51;
  v53 = sub_1B8C24F48();
  v55 = v54;
  v56 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7070, &qword_1B8C2CD30) + 36));
  *v56 = v53;
  v56[1] = v55;
  v57 = v72;
  sub_1B8B34450(v16, v72, &qword_1EBAA8D50, &qword_1B8C31910);
  v58 = v71;
  v79 = v71;
  v59 = v70;
  v80[0] = v70;
  *&v80[1] = *v74;
  *&v80[17] = *&v74[16];
  *&v80[33] = *&v74[32];
  *&v80[49] = *&v74[48];
  *&v80[64] = *&v74[63];
  v60 = *v80;
  v61 = v73;
  *v73 = v71;
  v61[1] = v60;
  v62 = *&v80[16];
  v63 = *&v80[32];
  v64 = *&v80[48];
  *(v61 + 10) = *&v80[64];
  v61[3] = v63;
  v61[4] = v64;
  v61[2] = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D70, &qword_1B8C31938);
  sub_1B8B34450(v57, v61 + *(v65 + 48), &qword_1EBAA8D50, &qword_1B8C31910);
  sub_1B8B34450(&v79, v81, &qword_1EBAA8D78, &qword_1B8C31940);
  sub_1B8B3433C(v16, &qword_1EBAA8D50, &qword_1B8C31910);
  sub_1B8B3433C(v57, &qword_1EBAA8D50, &qword_1B8C31910);
  v81[0] = v58;
  v81[1] = 0;
  v82 = v59;
  v84 = *&v74[16];
  v85 = *&v74[32];
  *v86 = *&v74[48];
  *&v86[15] = *&v74[63];
  v83 = *v74;
  return sub_1B8B3433C(v81, &qword_1EBAA8D78, &qword_1B8C31940);
}

double sub_1B8C1E7B0@<D0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  sub_1B8C23348();

  sub_1B8B34CA8(v4, v5, v6);
  v7 = sub_1B8C249E8();
  v9 = v8;
  v11 = v10;
  sub_1B8C24928();
  v12 = sub_1B8C249B8();
  v14 = v13;
  v16 = v15;

  sub_1B8B34060(v7, v9, v11 & 1);

  sub_1B8C24C98();
  v17 = sub_1B8C24998();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1B8B34060(v12, v14, v16 & 1);

  v24 = sub_1B8C24D08();
  v25 = sub_1B8C24C98();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  sub_1B8B34694(v17, v19, v21 & 1);

  sub_1B8B34060(v17, v19, v21 & 1);

  return result;
}

uint64_t sub_1B8C1EA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CatchUpMailMessageMetadata(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  sub_1B8C1F018(a1, &v44 - v11, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
  v12[*(v7 + 28)] = 0;
  if (*(a2 + 16))
  {
    v13 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
    v14 = a2 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    v50 = v16;
    v51 = v15;
    v48 = 10;
    v49 = 0xE100000000000000;
    v46 = 32;
    v47 = 0xE100000000000000;
    sub_1B8B34CA8(v13 - 8, v17, v18);
    v50 = sub_1B8C25688();
    v51 = v19;
    v20 = sub_1B8C249E8();
    v22 = v21;
    v24 = v23;
    v50 = sub_1B8C24C98();
    v25 = sub_1B8C24998();
    v44 = a3;
    v45 = v10;
    v27 = v26;
    v29 = v28;
    sub_1B8B34060(v20, v22, v24 & 1);

    sub_1B8C24898();
    v30 = sub_1B8C249B8();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = v29 & 1;
    v38 = v27;
    a3 = v44;
    v10 = v45;
    sub_1B8B34060(v25, v38, v37);

    KeyPath = swift_getKeyPath();
    v40 = v34 & 1;
    sub_1B8B34694(v30, v32, v40);

    v41 = 8;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v40 = 0;
    v36 = 0;
    KeyPath = 0;
    v41 = 0;
  }

  sub_1B8C1F018(v12, v10, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8C1F018(v10, a3, type metadata accessor for CatchUpMailMessageMetadata);
  v42 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8D80, &qword_1B8C31978) + 48);
  sub_1B8C1F100(v30, v32, v40, v36, KeyPath);
  sub_1B8C1F150(v30, v32, v40, v36, KeyPath);
  *v42 = v30;
  *(v42 + 8) = v32;
  *(v42 + 16) = v40;
  *(v42 + 24) = v36;
  *(v42 + 32) = KeyPath;
  *(v42 + 40) = v41;
  *(v42 + 48) = 0;
  sub_1B8C1F080(v12, type metadata accessor for CatchUpMailMessageMetadata);
  sub_1B8C1F150(v30, v32, v40, v36, KeyPath);
  return sub_1B8C1F080(v10, type metadata accessor for CatchUpMailMessageMetadata);
}

uint64_t sub_1B8C1EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C237B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v17, v15);
  *v14 = a1;
  swift_storeEnumTagMultiPayload();
  (*(v9 + 104))(v11, *MEMORY[0x1E699C2E0], v8);

  sub_1B8B5FE50(v14, v11);

  (*(v9 + 8))(v11, v8);
  return sub_1B8C1F080(v14, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
}

uint64_t sub_1B8C1EFA4()
{
  v1 = *(type metadata accessor for CatchUpDonationDecoder.Result.Mail(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1B8C1DF14(v2, v3, v4, v5, v6);
}

uint64_t sub_1B8C1F018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C1F080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8C1F100(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1B8B34694(result, a2, a3 & 1);
  }

  return result;
}

double sub_1B8C1F150(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1B8B34060(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8C1F1D0(uint64_t a1)
{
  result = type metadata accessor for CatchUpDonationDecoder.Result.Mail(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8C1F28C(uint64_t a1)
{
  sub_1B8C1F6B4(319, &qword_1EBAA6720, type metadata accessor for CatchUpDonationDecoder.Result.Mail, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8C1F718(319, &qword_1EBAA70F8, &qword_1EBAA7100, &qword_1B8C2AFD8, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B8C1F36C()
{
  result = qword_1EBAA8DD8;
  if (!qword_1EBAA8DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8DE0, qword_1B8C31A60);
    sub_1B8B34CFC(&qword_1EBAA8DE8, &qword_1EBAA8CE8, &qword_1B8C318B0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8DD8);
  }

  return result;
}

uint64_t sub_1B8C1F454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8C1F4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1B8C1C6C0(v4, a1);
}

uint64_t sub_1B8C1F54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B8C1F5BC(uint64_t a1)
{
  sub_1B8C1F6B4(319, &qword_1EBAA6528, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CatchUpDonationDecoder.Result.Mail(319);
    if (v2 <= 0x3F)
    {
      sub_1B8C1F718(319, &qword_1EBAA5DF0, &qword_1EBAA5DF8, &qword_1B8C31BF0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8C1F6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8C1F718(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B8C1F77C()
{
  result = qword_1EBAA8E60;
  if (!qword_1EBAA8E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E68, &qword_1B8C31BF8);
    sub_1B8B34CFC(&qword_1EBAA8E70, &qword_1EBAA8E78, &unk_1B8C31C00, MEMORY[0x1E6981870]);
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8E60);
  }

  return result;
}

uint64_t sub_1B8C1F87C()
{
  v1 = type metadata accessor for CatchUpMailMessagePreviewer(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_1B8C1F8F0()
{
  result = qword_1EBAA8E90;
  if (!qword_1EBAA8E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8E80, &qword_1B8C31C60);
    sub_1B8B34CFC(&qword_1EBAA8E98, &qword_1EBAA8EA0, &qword_1B8C31C70, MEMORY[0x1E6981870]);
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8E90);
  }

  return result;
}

void *sub_1B8C1F9D4(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_1B8C23498();
  v30 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v37 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - v14;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v13 = v25)
  {
    v16 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v32 = (v30 + 32);
    v33 = (v30 + 48);
    v17 = MEMORY[0x1E69E7CC0];
    v27 = a2;
    v28 = a3;
    v38 = v13;
    v34 = i;
    v31 = a1;
    while (1)
    {
      if (v36)
      {
        v13 = MEMORY[0x1B8CCA4C0](v16, a1);
      }

      else
      {
        if (v16 >= *(v35 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(a1 + 8 * v16 + 32);
      }

      v19 = v13;
      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v39 = v13;
      sub_1B8C209D0(&v39, a2, v9, a3);
      if (v3)
      {

        return v17;
      }

      v20 = v38;
      if ((*v33)(v9, 1, v38) == 1)
      {
        v13 = sub_1B8BD17D0(v9);
      }

      else
      {
        v21 = *v32;
        v22 = v29;
        (*v32)(v29, v9, v20);
        v21(v37, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1B8B5D3EC(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_1B8B5D3EC((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        v13 = (v21)(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v37, v38);
        a2 = v27;
        a3 = v28;
      }

      ++v16;
      v18 = a1 == v34;
      a1 = v31;
      if (v18)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v25 = v13;
    i = sub_1B8C258B8();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B8C1FD2C()
{
  ObjectType = swift_getObjectType();
  v6 = MEMORY[0x1E69E7CC0];

  v3 = sub_1B8C1F9D4(v2, &v6, ObjectType);

  v4 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  *(v0 + v4) = v3;

  return v6;
}

uint64_t sub_1B8C1FDD4()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v82 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v88 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - v11;
  v13 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v14 = *(v0 + v13);
  v98 = *(v14 + 16);
  if (!v98)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v86 = v8;
  v92 = v5;
  v97 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v96 = (v2 + 8);
  v83 = (v2 + 32);
  v82 = (v2 + 40);

  v16 = 0;
  v17 = 0;
  v89 = MEMORY[0x1E69E7CC8];
  *&v18 = 136446210;
  v84 = v18;
  *&v18 = 136446466;
  v87 = v18;
  v99 = v1;
  v93 = v2;
  v94 = v2 + 16;
  v95 = v15;
  v90 = v12;
  while (v16 < *(v15 + 16))
  {
    v20 = *(v2 + 72);
    v21 = *(v2 + 16);
    v21(v12, v97 + v20 * v16, v1);
    v22 = sub_1B8C23408();
    v23 = v17;
    if (v17)
    {
      if (qword_1EBAA5960 != -1)
      {
        swift_once();
      }

      v24 = sub_1B8C23C38();
      __swift_project_value_buffer(v24, qword_1EBAA8F10);
      v25 = v92;
      v21(v92, v12, v1);
      v26 = v23;
      v27 = v12;
      v28 = sub_1B8C23C18();
      v29 = sub_1B8C25478();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v100[0] = v91;
        *v30 = v87;
        sub_1B8C02358();
        v31 = sub_1B8C259E8();
        v33 = v32;
        v34 = v23;
        v35 = *v96;
        (*v96)(v25, v99);
        v36 = sub_1B8B5DD48(v31, v33, v100);

        *(v30 + 4) = v36;
        *(v30 + 12) = 2082;
        v37 = v34;
        swift_getErrorValue();
        v38 = sub_1B8C25A68();
        v40 = sub_1B8B5DD48(v38, v39, v100);

        *(v30 + 14) = v40;
        _os_log_impl(&dword_1B8B22000, v28, v29, "Error checking url [%{public}s] error: [%{public}s]. Will not attach.", v30, 0x16u);
        v41 = v91;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v41, -1, -1);
        v42 = v30;
        v1 = v99;
        MEMORY[0x1B8CCB0E0](v42, -1, -1);

        v12 = v90;
        v35(v90, v1);
        v17 = 0;
        v2 = v93;
      }

      else
      {

        v19 = *v96;
        (*v96)(v25, v1);
        v19(v27, v1);
        v17 = 0;
        v2 = v93;
        v12 = v27;
      }

      goto LABEL_4;
    }

    if ((v22 & 1) == 0)
    {
      v91 = 0;
      if (qword_1EBAA5960 != -1)
      {
        swift_once();
      }

      v60 = sub_1B8C23C38();
      __swift_project_value_buffer(v60, qword_1EBAA8F10);
      v61 = v86;
      v21(v86, v12, v1);
      v62 = sub_1B8C23C18();
      v63 = v12;
      v64 = sub_1B8C25478();
      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v100[0] = v85;
        *v65 = v84;
        sub_1B8C02358();
        v66 = sub_1B8C259E8();
        v68 = v67;
        v69 = *v96;
        (*v96)(v61, v1);
        v70 = v69;
        v71 = sub_1B8B5DD48(v66, v68, v100);

        *(v65 + 4) = v71;
        _os_log_impl(&dword_1B8B22000, v62, v64, "Given url is not reachable [%{public}s]. Will not attach.", v65, 0xCu);
        v72 = v85;
        v73 = __swift_destroy_boxed_opaque_existential_0(v85);
        v2 = v93;
        MEMORY[0x1B8CCB0E0](v72, -1, -1, v73);
        MEMORY[0x1B8CCB0E0](v65, -1, -1);

        v12 = v90;
        v70(v90, v1);
      }

      else
      {

        v74 = *v96;
        (*v96)(v61, v1);
        v74(v63, v1);
        v12 = v63;
      }

      v17 = v91;
      goto LABEL_4;
    }

    v43 = sub_1B8C23468();
    v44 = v12;
    v45 = v43;
    v46 = v1;
    v48 = v47;
    v49 = v44;
    v21(v88, v44, v46);
    v50 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100[0] = v50;
    v52 = sub_1B8B5E2DC(v45, v48);
    v54 = *(v50 + 16);
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_31;
    }

    v58 = v53;
    if (*(v50 + 24) < v57)
    {
      sub_1B8B93638(v57, isUniquelyReferenced_nonNull_native);
      v52 = sub_1B8B5E2DC(v45, v48);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v2 = v93;
      if (v58)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v76 = v52;
    sub_1B8B947F4();
    v52 = v76;
    v2 = v93;
    if (v58)
    {
LABEL_24:
      v75 = v52;

      v89 = v100[0];
      v1 = v99;
      (*v82)(*(v100[0] + 56) + v75 * v20, v88, v99);
      v12 = v49;
      (*v96)(v49, v1);
      goto LABEL_4;
    }

LABEL_26:
    v77 = v100[0];
    *(v100[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
    v78 = (v77[6] + 16 * v52);
    *v78 = v45;
    v78[1] = v48;
    v1 = v99;
    (*v83)(v77[7] + v52 * v20, v88, v99);
    v12 = v49;
    (*v96)(v49, v1);
    v79 = v77[2];
    v56 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (v56)
    {
      goto LABEL_32;
    }

    v89 = v77;
    v77[2] = v80;
LABEL_4:
    ++v16;
    v15 = v95;
    if (v98 == v16)
    {

      return v89;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void sub_1B8C2061C(uint64_t a1@<X8>)
{
  v2 = sub_1B8C23528();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1B8C250F8();
  [v9 setDateFormat_];

  sub_1B8C2090C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8C27920;
  sub_1B8C23518();
  v12 = sub_1B8C234E8();
  (*(v3 + 8))(v5, v2);
  v13 = [v9 stringFromDate_];

  v14 = sub_1B8C25128();
  v16 = v15;

  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  *(v11 + 48) = 0xD000000000000014;
  *(v11 + 56) = 0x80000001B8C37280;
  sub_1B8C254A8();

  v17 = sub_1B8C23498();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_1B8BD17D0(v8);
    v19 = NSTemporaryDirectory();
    sub_1B8C25128();

    sub_1B8C233C8();
  }

  else
  {

    (*(v18 + 32))(a1, v8, v17);
  }
}

unint64_t sub_1B8C2090C()
{
  result = qword_1EBAA8F28;
  if (!qword_1EBAA8F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8F28);
  }

  return result;
}

uint64_t sub_1B8C20958()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA8F10);
  __swift_project_value_buffer(v0, qword_1EBAA8F10);
  return sub_1B8C23C28();
}

void sub_1B8C209D0(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v27 = a3;
  v8 = type metadata accessor for URLError(0);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = sub_1B8C23498();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);

  v18 = sub_1B8B86F84(v12, v13, a2, a4);
  if (v4)
  {
    (*(v17 + 16))(v11, v12 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, v16, v18);
    v28 = v4;
    v19 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_dynamicCast();
    *&v11[*(v25 + 20)] = v29;
    v20 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B8B5D534(0, v20[2] + 1, 1, v20);
      *a2 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      *a2 = sub_1B8B5D534((v22 > 1), v23 + 1, 1, v20);
    }

    v24 = *a2;
    *(v24 + 16) = v23 + 1;
    sub_1B8B88C0C(v11, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
  }

  swift_beginAccess();
  sub_1B8C21608(v15, v27);
}

id sub_1B8C20C80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v81 = a3;
  v95 = *MEMORY[0x1E69E9840];
  v78 = type metadata accessor for URLError(0);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v74 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v15 = MEMORY[0x1EEE9AC00](v83);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  v20 = swift_projectBox();
  sub_1B8C2061C(v14);
  v90 = a1;
  sub_1B8C233D8();
  sub_1B8C233F8();

  v21 = *(v7 + 8);
  v86 = (v7 + 8);
  v89 = v21;
  v21(v14, v6);
  (*(v7 + 56))(v19, 0, 1, v6);
  swift_beginAccess();
  v82 = v19;
  v88 = v20;
  sub_1B8C21678(v19, v20);
  if (qword_1EBAA5960 != -1)
  {
    swift_once();
  }

  v22 = sub_1B8C23C38();
  v23 = __swift_project_value_buffer(v22, qword_1EBAA8F10);
  v24 = *(v7 + 16);
  v85 = v7 + 16;
  v84 = v24;
  v24(v12, v90, v6);

  v76 = v23;
  v25 = a2;
  v26 = sub_1B8C23C18();
  v27 = sub_1B8C25468();
  v87 = v25;

  v28 = v6;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v94[0] = v30;
    *v29 = 136315394;
    sub_1B8C02358();
    v31 = sub_1B8C259E8();
    v33 = v32;
    v75 = v28;
    v89(v12, v28);
    v34 = sub_1B8B5DD48(v31, v33, v94);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v88;
    swift_beginAccess();
    sub_1B8C21608(v35, v82);
    v36 = sub_1B8C25178();
    v38 = sub_1B8B5DD48(v36, v37, v94);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_1B8B22000, v26, v27, "Will copy sandboxed url %s to temporary directory %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v30, -1, -1);
    v28 = v75;
    MEMORY[0x1B8CCB0E0](v29, -1, -1);
  }

  else
  {

    v89(v12, v6);
    v35 = v88;
  }

  v39 = [objc_opt_self() defaultManager];
  v40 = sub_1B8C233E8();
  swift_beginAccess();
  sub_1B8C21608(v35, v17);
  if ((*(v7 + 48))(v17, 1, v28) == 1)
  {
    __break(1u);
  }

  v41 = sub_1B8C233E8();
  v89(v17, v28);
  v92[0] = 0;
  v42 = [v39 copyItemAtURL:v40 toURL:v41 error:v92];

  v43 = v92[0];
  if (v42)
  {

    return v43;
  }

  else
  {
    v86 = v92[0];
    v45 = v92[0];
    v46 = sub_1B8C23368();

    swift_willThrow();
    v47 = v77;
    v84(v77, v90, v28);

    v48 = v46;
    v49 = sub_1B8C23C18();
    v50 = sub_1B8C25478();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v93 = v52;
      *v51 = 136315650;
      sub_1B8C02358();
      v53 = sub_1B8C259E8();
      v54 = v47;
      v55 = v53;
      v57 = v56;
      v89(v54, v28);
      v58 = sub_1B8B5DD48(v55, v57, &v93);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2080;
      v59 = v88;
      swift_beginAccess();
      sub_1B8C21608(v59, v82);
      v60 = sub_1B8C25178();
      v62 = sub_1B8B5DD48(v60, v61, &v93);

      *(v51 + 14) = v62;
      *(v51 + 22) = 2080;
      v91 = v46;
      v63 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v64 = sub_1B8C25178();
      v66 = sub_1B8B5DD48(v64, v65, &v93);

      *(v51 + 24) = v66;
      _os_log_impl(&dword_1B8B22000, v49, v50, "Failed to copy sandboxed url %s to temporary directory %s error %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v52, -1, -1);
      MEMORY[0x1B8CCB0E0](v51, -1, -1);
    }

    else
    {

      v89(v47, v28);
    }

    v67 = v81;
    v68 = v79;
    v84(v79, v90, v28);
    *(v68 + *(v78 + 20)) = 2;
    v69 = *v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v67 = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v69 = sub_1B8B5D534(0, v69[2] + 1, 1, v69);
      *v67 = v69;
    }

    v72 = v69[2];
    v71 = v69[3];
    if (v72 >= v71 >> 1)
    {
      *v67 = sub_1B8B5D534((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *v67;
    v73[2] = v72 + 1;
    return sub_1B8B88C0C(v68, v73 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v72);
  }
}

uint64_t sub_1B8C21608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C21678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C21790(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1B8C23C28();
}

uint64_t sub_1B8C21808()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  return v1;
}

uint64_t sub_1B8C2187C()
{
  v7 = sub_1B8C25528();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B8C254E8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1B8C25008();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1B8B622C8();
  sub_1B8C24FF8();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1B8C229B0(&qword_1EBAA8FC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8FC8, qword_1B8C31DE0);
  sub_1B8B34CFC(&qword_1EBAA8FD0, &qword_1EBAA8FC8, qword_1B8C31DE0, MEMORY[0x1E69E6328]);
  sub_1B8C256D8();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1B8C25558();
  qword_1EBAA8F30 = result;
  return result;
}

uint64_t sub_1B8C21AE0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable))
  {

    sub_1B8C23C68();
  }

  v2 = OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader__image;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8468, &qword_1B8C2EF68);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_url;
  v5 = sub_1B8C23498();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t _s8Feedback11ImageLoaderCMa_0(uint64_t a1)
{
  result = qword_1EBAA8F58;
  if (!qword_1EBAA8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8C21C54(uint64_t a1)
{
  sub_1B8BE3030(319);
  if (v1 <= 0x3F)
  {
    sub_1B8C23498();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1B8C21D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v40 - v2;
  v3 = sub_1B8C25428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F68, &qword_1B8C31D70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F70, &qword_1B8C31D78);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F78, &qword_1B8C31D80);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F80, &qword_1B8C31D88);
  v51 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8F88, &qword_1B8C31D90);
  v20 = MEMORY[0x1EEE9AC00](v19);
  if ((*(v0 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) & 1) == 0)
  {
    v42 = v17;
    v43 = &v40 - v21;
    v44 = v22;
    v45 = v20;
    v24 = v0;
    v25 = [objc_opt_self() sharedSession];
    sub_1B8C25438();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
    sub_1B8C229B0(&qword_1EBAA8F90, MEMORY[0x1E6969EB8], MEMORY[0x1E6969EB0]);
    sub_1B8C23CD8();
    (*(v4 + 8))(v6, v3);
    v53 = 0;
    sub_1B8B34CFC(&qword_1EBAA8F98, &qword_1EBAA8F68, &qword_1B8C31D70, MEMORY[0x1E695BD60]);
    sub_1B8C23CC8();
    (*(v8 + 8))(v10, v7);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v41 = v24;
    swift_weakInit();
    sub_1B8B34CFC(&qword_1EBAA8FA0, &qword_1EBAA8F70, &qword_1B8C31D78, MEMORY[0x1E695BCD0]);

    sub_1B8C23CB8();

    (*(v46 + 8))(v13, v11);

    if (qword_1EBAA5990 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBAA8F30;
    v53 = qword_1EBAA8F30;
    v27 = sub_1B8C25518();
    v28 = *(*(v27 - 8) + 56);
    v29 = v49;
    v28(v49, 1, 1, v27);
    sub_1B8B622C8();
    sub_1B8B34CFC(&qword_1EBAA8FA8, &qword_1EBAA8F78, &qword_1B8C31D80, MEMORY[0x1E695BCC0]);
    sub_1B8C229B0(&qword_1EBAA8458, sub_1B8B622C8, MEMORY[0x1E69E8028]);
    v30 = v26;
    v31 = v50;
    v32 = v47;
    v33 = v52;
    sub_1B8C23CF8();
    sub_1B8BE3270(v29);

    (*(v48 + 8))(v33, v32);
    v34 = sub_1B8C25538();
    v53 = v34;
    v28(v29, 1, 1, v27);
    sub_1B8B34CFC(&qword_1EBAA8FB0, &qword_1EBAA8F80, &qword_1B8C31D88, MEMORY[0x1E695BCB8]);
    v35 = v42;
    v36 = v43;
    sub_1B8C23CE8();
    sub_1B8BE3270(v29);

    (*(v51 + 8))(v31, v35);
    swift_allocObject();
    v37 = v41;
    swift_weakInit();
    sub_1B8B34CFC(&qword_1EBAA8FB8, &qword_1EBAA8F88, &qword_1B8C31D90, MEMORY[0x1E695BE98]);
    v38 = v45;
    v39 = sub_1B8C23D08();

    (*(v44 + 8))(v36, v38);
    *(v37 + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_cancellable) = v39;
  }

  return result;
}

void sub_1B8C2262C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B8B7B54C(*a1, v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v6 = sub_1B8C234A8();
  v7 = [v5 initWithData_];

  sub_1B8B4645C(v3, v4);
  *a2 = v7;
}

double sub_1B8C226B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 1;
  }

  return result;
}

double sub_1B8C22714(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 0;
  }

  return result;
}

double sub_1B8C2276C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8FeedbackP33_3BDF5462943C09CAD27F77ADE48386A511ImageLoader_isLoading) = 0;
  }

  return result;
}

uint64_t sub_1B8C227C4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return sub_1B8C23C98();
  }

  return result;
}

uint64_t sub_1B8C22858@<X0>(uint64_t *a2@<X8>)
{
  _s8Feedback11ImageLoaderCMa_0(0);
  result = sub_1B8C23C78();
  *a2 = result;
  return result;
}

void sub_1B8C228B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  *a2 = v3;
}

uint64_t sub_1B8C22938(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1B8C23C98();
}

uint64_t sub_1B8C229B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B8C22A1C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBAA8FD8 = result;
  return result;
}

uint64_t sub_1B8C22B0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B8C23A28();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_1EBAA5998 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBAA8FD8;
  return sub_1B8C23A18();
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EBAB3990 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EBAB3984 > a2)
  {
    return 1;
  }

  if (dword_1EBAB3984 < a2)
  {
    return 0;
  }

  return dword_1EBAB3988 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EBAB3998 == -1)
  {
    if (qword_1EBAB39A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EBAB39A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBAB3990 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EBAB3984 > a3)
      {
        return 1;
      }

      if (dword_1EBAB3984 >= a3)
      {
        return dword_1EBAB3988 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBAB39A0;
  if (qword_1EBAB39A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBAB39A0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1B8CCA9B0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EBAB3984, &dword_1EBAB3988);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}
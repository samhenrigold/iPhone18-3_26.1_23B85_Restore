unint64_t sub_1A8405BE8()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E6572727563;
  }
}

uint64_t sub_1A8405C50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8408700(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8405C78(uint64_t a1)
{
  v2 = sub_1A8407E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8405CB4(uint64_t a1)
{
  v2 = sub_1A8407E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivedConversation.Iterator.deinit()
{

  v1 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ImportExport.ArchivedConversation.Iterator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A8405DFC(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E71E8, &qword_1A8501AC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8407E94();
  sub_1A84E68AC();
  v12 = 0;
  sub_1A84E670C();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A8407CB0(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
    sub_1A84E672C();
    v10[14] = 2;
    sub_1A84E558C();
    sub_1A8407CB0(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8406054(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void *ImportExport.ArchivedConversation.Iterator.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A84E558C();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A83EA2FC(&qword_1EB2E7208, &qword_1A8501AC8);
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - v9;
  *(v3 + 16) = 0;
  v11 = a1[3];
  v18 = a1;
  sub_1A82471E0(a1, v11);
  sub_1A8407E94();
  sub_1A84E689C();
  if (v2)
  {
    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v8;
    v13 = v7;
    v22 = 0;
    v14 = v17;
    *(v3 + 16) = sub_1A84E664C();
    type metadata accessor for ImportExport.ArchivedConversation(0);
    v21 = 1;
    sub_1A8407CB0(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
    sub_1A84E666C();
    *(v3 + 24) = v19;
    v20 = 2;
    sub_1A8407CB0(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1A84E666C();
    (*(v12 + 8))(v10, v14);
    (*(v16 + 32))(v3 + OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL, v13, v5);
  }

  sub_1A8244788(v18);
  return v3;
}

uint64_t sub_1A8406424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A840416C(a1);
}

uint64_t sub_1A84064C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A8406558, v6, v8);
}

uint64_t sub_1A8406558()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A840416C(v2);
}

uint64_t sub_1A84065F4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1A8406724, v3, v4);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1A8406724()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A8406804@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1A8406898(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v56 = a1;
  v3 = type metadata accessor for ImportExport.Conversation(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v45 - v7;
  v8 = sub_1A84E558C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = type metadata accessor for ImportExport.Attachment(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = v2 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A8243D74(v27 + *(v4 + 88), v20, &qword_1EB2E6F50, &unk_1A8502920);
  v48 = v22;
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    sub_1A824B2D4(v20, &qword_1EB2E6F50, &unk_1A8502920);
    v29 = v58;
    v31 = v54;
    v30 = v55;
  }

  else
  {
    v46 = v2;
    sub_1A8408954(v20, v26, type metadata accessor for ImportExport.Attachment);
    sub_1A84E553C();
    v34 = v58;
    sub_1A8494884(v12, *(v26 + 5), *(v26 + 6), v18);
    v29 = v34;
    if (v34)
    {
      (*(v54 + 8))(v12, v55);
      return sub_1A84088F4(v26, type metadata accessor for ImportExport.Attachment);
    }

    v45 = v12;
    if (v28(v18, 1, v21) == 1)
    {
      v31 = v54;
      v30 = v55;
      (*(v54 + 8))(v45, v55);
      sub_1A84088F4(v26, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v18, &qword_1EB2E6F50, &unk_1A8502920);
      v2 = v46;
    }

    else
    {
      v38 = v18;
      v39 = v49;
      sub_1A8408954(v38, v49, type metadata accessor for ImportExport.Attachment);
      v40 = v51;
      sub_1A840888C(v27, v51, type metadata accessor for ImportExport.Conversation);
      v41 = v50;
      sub_1A840888C(v39, v50, type metadata accessor for ImportExport.Attachment);
      v42 = v21;
      v43 = v41;
      (*(v48 + 56))(v41, 0, 1, v42);
      v44 = v52;
      ImportExport.Conversation.update(groupPhoto:)(v43, v52);
      v58 = 0;
      v31 = v54;
      sub_1A824B2D4(v43, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84088F4(v40, type metadata accessor for ImportExport.Conversation);
      sub_1A84088F4(v39, type metadata accessor for ImportExport.Attachment);
      v30 = v55;
      (*(v31 + 8))(v45, v55);
      swift_beginAccess();
      sub_1A8408828(v44, v27);
      swift_endAccess();
      sub_1A84088F4(v26, type metadata accessor for ImportExport.Attachment);
      v2 = v46;
      v29 = v58;
    }
  }

  v57 = v2;
  v32 = v53;
  sub_1A84E553C();
  sub_1A8462834();
  if (v29)
  {
    return (*(v31 + 8))(v32, v30);
  }

  (*(v31 + 8))(v32, v30);
  sub_1A8462A9C();
  type metadata accessor for ImportExport.ArchivedConversation(0);
  sub_1A8407CB0(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
  v35 = sub_1A84E52DC();
  v37 = v36;
  sub_1A84E560C();
  return sub_1A83F5994(v35, v37);
}

unint64_t sub_1A8406F98()
{
  result = qword_1EB2E7190;
  if (!qword_1EB2E7190)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A8407CB0(&qword_1EB2E7198, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7190);
  }

  return result;
}

_DWORD *sub_1A840704C(uint64_t a1)
{
  v104 = sub_1A84E5C9C();
  v98 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ImportExport.Conversation(0);
  v4 = MEMORY[0x1EEE9AC00](v96);
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v84 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v84 - v10;
  v11 = sub_1A84E558C();
  v12 = *(v11 - 1);
  v101 = v11;
  v102 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v84 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v84 - v19;
  v21 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v84 - v25;
  v27 = type metadata accessor for ImportExport.Attachment(0);
  v97 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = (&v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v84 - v31;
  sub_1A84E526C();
  swift_allocObject();
  sub_1A84E525C();
  v99 = a1;
  v33 = sub_1A84E55AC();
  v107 = v1;
  if (v1)
  {

    v35 = v100;
    v36 = v101;
    v37 = v99;
    v38 = v104;
  }

  else
  {
    v39 = v33;
    v40 = v34;
    v88 = v26;
    v89 = v27;
    v84 = v24;
    v85 = v30;
    v87 = v32;
    v86 = v20;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A8407CB0(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
    v41 = v107;
    sub_1A84E524C();
    v107 = v41;
    if (v41)
    {

      sub_1A83F5994(v39, v40);
      v38 = v104;
      v35 = v100;
      v36 = v101;
      v37 = v99;
    }

    else
    {

      sub_1A83F5994(v39, v40);
      v44 = v106;
      v58 = v106 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
      swift_beginAccess();
      v59 = v88;
      sub_1A8243D74(v58 + *(v96 + 80), v88, &qword_1EB2E6F50, &unk_1A8502920);
      v60 = v89;
      if ((*(v97 + 48))(v59, 1, v89) == 1)
      {
        sub_1A824B2D4(v59, &qword_1EB2E6F50, &unk_1A8502920);
        return v44;
      }

      v61 = v87;
      sub_1A8408954(v59, v87, type metadata accessor for ImportExport.Attachment);
      if (*(v61 + *(v60 + 48)) != 1)
      {
        sub_1A84088F4(v61, type metadata accessor for ImportExport.Attachment);
        return v44;
      }

      v62 = v61 + *(v60 + 40);
      v63 = v94;
      sub_1A8243D74(v62, v94, &qword_1EB2E7068, &unk_1A8501EB0);
      v65 = v101;
      v64 = v102;
      if ((*(v102 + 48))(v63, 1, v101) == 1)
      {
        sub_1A84088F4(v61, type metadata accessor for ImportExport.Attachment);
        sub_1A824B2D4(v63, &qword_1EB2E7068, &unk_1A8501EB0);
        return v44;
      }

      v88 = v58;
      (*(v64 + 32))(v86, v63, v65);
      v96 = sub_1A84E555C();
      v66 = v92;
      v37 = v99;
      sub_1A84E553C();
      v67 = v95;
      sub_1A84E552C();

      v68 = v64;
      v69 = *(v64 + 8);
      v70 = v66;
      v71 = v64 + 8;
      (v69)(v70, v65);
      v72 = *(v64 + 16);
      v73 = v93;
      v72(v93, v67, v65);
      (*(v68 + 56))(v73, 0, 1, v65);
      v105[0] = 0;
      v74 = v85;
      v75 = v61;
      v76 = v107;
      ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v73, 0, 0, v105, v85);
      v36 = v65;
      v107 = v76;
      if (v76)
      {

        sub_1A824B2D4(v73, &qword_1EB2E7068, &unk_1A8501EB0);
        (v69)(v95, v65);
        (v69)(v86, v65);
        sub_1A84088F4(v75, type metadata accessor for ImportExport.Attachment);
        v38 = v104;
        v35 = v100;
      }

      else
      {
        v92 = v69;
        v94 = v71;
        v96 = v44;
        sub_1A824B2D4(v73, &qword_1EB2E7068, &unk_1A8501EB0);
        v77 = v90;
        sub_1A840888C(v88, v90, type metadata accessor for ImportExport.Conversation);
        v78 = v84;
        sub_1A840888C(v74, v84, type metadata accessor for ImportExport.Attachment);
        (*(v97 + 56))(v78, 0, 1, v89);
        v79 = v91;
        v80 = v107;
        ImportExport.Conversation.update(groupPhoto:)(v78, v91);
        v38 = v104;
        v35 = v100;
        v107 = v80;
        if (!v80)
        {
          sub_1A824B2D4(v78, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84088F4(v77, type metadata accessor for ImportExport.Conversation);
          sub_1A84088F4(v74, type metadata accessor for ImportExport.Attachment);
          v82 = v92;
          (v92)(v95, v36);
          v82(v86, v36);
          sub_1A84088F4(v87, type metadata accessor for ImportExport.Attachment);
          v83 = v88;
          swift_beginAccess();
          sub_1A8408828(v79, v83);
          swift_endAccess();
          return v96;
        }

        sub_1A824B2D4(v78, &qword_1EB2E6F50, &unk_1A8502920);
        sub_1A84088F4(v77, type metadata accessor for ImportExport.Conversation);
        sub_1A84088F4(v74, type metadata accessor for ImportExport.Attachment);
        v81 = v92;
        (v92)(v95, v36);
        v81(v86, v36);
        sub_1A84088F4(v87, type metadata accessor for ImportExport.Attachment);
      }
    }
  }

  v42 = v103;
  sub_1A84E5C8C();
  v43 = v102;
  (*(v102 + 16))(v35, v37, v36);
  v44 = v107;
  v45 = v107;
  v46 = sub_1A84E5C7C();
  v47 = v35;
  v48 = sub_1A84E619C();

  if (os_log_type_enabled(v46, v48))
  {
    v44 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v105[0] = v101;
    *v44 = 136315394;
    v50 = sub_1A84E555C();
    v52 = v51;
    (*(v43 + 8))(v47, v36);
    v53 = sub_1A82446BC(v50, v52, v105);

    *(v44 + 1) = v53;
    *(v44 + 6) = 2112;
    v54 = v107;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v55;
    *v49 = v55;
    _os_log_impl(&dword_1A823F000, v46, v48, "Failed to read ArchivedConversation from: %s with error: %@", v44, 0x16u);
    sub_1A824B2D4(v49, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v49, -1, -1);
    v56 = v101;
    sub_1A8244788(v101);
    MEMORY[0x1AC56D3F0](v56, -1, -1);
    MEMORY[0x1AC56D3F0](v44, -1, -1);

    (*(v98 + 8))(v103, v104);
  }

  else
  {

    (*(v43 + 8))(v47, v36);
    (*(v98 + 8))(v42, v38);
  }

  swift_willThrow();
  return v44;
}

unint64_t sub_1A8407C5C()
{
  result = qword_1EB2E71A8;
  if (!qword_1EB2E71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71A8);
  }

  return result;
}

uint64_t sub_1A8407CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8407D18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6E48, &qword_1A8502950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8407D84()
{
  result = qword_1EB2E6E50;
  if (!qword_1EB2E6E50)
  {
    sub_1A83EC9D4(&qword_1EB2E6E48, &qword_1A8502950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6E50);
  }

  return result;
}

uint64_t sub_1A8407E08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A8407E40()
{
  result = qword_1EB2E71E0;
  if (!qword_1EB2E71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71E0);
  }

  return result;
}

unint64_t sub_1A8407E94()
{
  result = qword_1EB2E71F0;
  if (!qword_1EB2E71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71F0);
  }

  return result;
}

uint64_t sub_1A8407EFC(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Conversation(319);
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

uint64_t sub_1A840814C(uint64_t a1)
{
  result = sub_1A84E558C();
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

uint64_t dispatch thunk of ImportExport.ArchivedConversation.Iterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

unint64_t sub_1A84083CC()
{
  result = qword_1EB2E7240;
  if (!qword_1EB2E7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7240);
  }

  return result;
}

unint64_t sub_1A8408424()
{
  result = qword_1EB2E7248;
  if (!qword_1EB2E7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7248);
  }

  return result;
}

unint64_t sub_1A840847C()
{
  result = qword_1EB2E7250;
  if (!qword_1EB2E7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7250);
  }

  return result;
}

unint64_t sub_1A84084D4()
{
  result = qword_1EB2E7258;
  if (!qword_1EB2E7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7258);
  }

  return result;
}

unint64_t sub_1A840852C()
{
  result = qword_1EB2E7260;
  if (!qword_1EB2E7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7260);
  }

  return result;
}

unint64_t sub_1A8408584()
{
  result = qword_1EB2E7268;
  if (!qword_1EB2E7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7268);
  }

  return result;
}

uint64_t sub_1A84085D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A852FFE0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8408700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E6572727563 && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530050 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530070 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8408828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Conversation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A840888C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84088F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8408954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A8408CD8(uint64_t a1)
{
  v1 = sub_1A84E5D8C();
  v2 = [objc_opt_self() serviceWithName_];

  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v15 = sub_1A84E5DBC();

    sub_1A84E641C();
    v4 = [v2 serviceProperties];
    if (!v4)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v5 = v4;

    v6 = sub_1A84E5D3C();

    if (*(v6 + 16))
    {
      v7 = sub_1A8250C0C(v16);
      if (v8)
      {
        sub_1A8244F40(*(v6 + 56) + 32 * v7, v17);
        sub_1A8250D18(v16);

        sub_1A83EA2FC(&qword_1EB2E72D8, &qword_1A8501EF0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v14 = v2;
        v9 = 0;
        v16[0] = v3;
        v10 = *(v15 + 16);
LABEL_7:
        v11 = v9;
        while (1)
        {
          if (v10 == v11)
          {

            return;
          }

          if (v11 >= *(v15 + 16))
          {
            break;
          }

          v9 = v11 + 1;

          v12 = sub_1A84E5D2C();

          v13 = [objc_opt_self() preconditionWithDictionary_];

          v11 = v9;
          if (v13)
          {
            MEMORY[0x1AC56AAD0]();
            if (*((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A84E601C();
            }

            sub_1A84E603C();
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    sub_1A8250D18(v16);
  }
}

uint64_t sub_1A8408FA4(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_1A84E5D8C();
  v3 = [v1 serviceWithInternalName_];

  if (v3)
  {
    v4 = IMPreferredAccountForService(v3);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 uniqueID];

      if (v6)
      {
        v7 = sub_1A84E5DBC();

        return v7;
      }
    }
  }

  return 0;
}

void sub_1A8409080()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v1 = v0;
  v2 = [v0 accountsWithServiceCapability_];

  if (!v2)
  {
LABEL_50:
    __break(1u);
    return;
  }

  sub_1A8244B68(0, &qword_1EB2E4708, off_1E780D7A0);
  v3 = sub_1A84E5FFC();

  v28 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A84E654C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56AF80](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 _isUsableForSending])
      {
        sub_1A84E64DC();
        sub_1A84E650C();
        sub_1A84E651C();
        sub_1A84E64EC();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      goto LABEL_23;
    }

LABEL_43:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_42:
  v10 = sub_1A84E654C();
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_23:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1AC56AF80](v13, v9);
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v13 >= *(v9 + 16))
        {
          goto LABEL_41;
        }

        v14 = *(v9 + 8 * v13 + 32);
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v15 = v14;
      v16 = [v15 serviceName];
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_44;
      }
    }

    v17 = v16;
    v18 = sub_1A84E5DBC();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1A824A1FC(0, *(v12 + 2) + 1, 1, v12);
    }

    v22 = *(v12 + 2);
    v21 = *(v12 + 3);
    if (v22 >= v21 >> 1)
    {
      v12 = sub_1A824A1FC((v21 > 1), v22 + 1, 1, v12);
    }

    *(v12 + 2) = v22 + 1;
    v23 = &v12[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
  }

  while (v11 != v10);
LABEL_44:

  v24 = sub_1A8249338(v12);

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = sub_1A84D832C(*(v24 + 16), 0);
    v27 = sub_1A84D8438(&v28, v26 + 4, v25, v24);
    sub_1A8267334(v28);
    if (v27 == v25)
    {
      return;
    }

    __break(1u);
  }
}

id ImportExport.Attachment.existsOnDisk.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1A84E558C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportExport.Attachment(0);
  sub_1A8243D74(v0 + *(v8 + 40), v3, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v11 = sub_1A84E5D8C();

    v12 = [v10 fileExistsAtPath_];

    (*(v5 + 8))(v7, v4);
    return v12;
  }
}

uint64_t type metadata accessor for ImportExport.Attachment(uint64_t a1)
{
  result = qword_1EB2E73D8;
  if (!qword_1EB2E73D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v214 = a3;
  v237 = a2;
  v245 = a5;
  v251 = *MEMORY[0x1E69E9840];
  v9 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v186 = &v181 - v10;
  v189 = sub_1A84E5C5C();
  v188 = *(v189 - 8);
  v11 = MEMORY[0x1EEE9AC00](v189);
  v185 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v187 = &v181 - v13;
  v184 = sub_1A84E577C();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v192 = &v181 - v16;
  v194 = sub_1A84E56DC();
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v190 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1A84E5C9C();
  v196 = *(v197 - 8);
  v18 = MEMORY[0x1EEE9AC00](v197);
  v191 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v198 = &v181 - v20;
  v242 = sub_1A84E558C();
  v240 = *(v242 - 8);
  v21 = MEMORY[0x1EEE9AC00](v242);
  v195 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v200 = &v181 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v199 = &v181 - v25;
  v221 = sub_1A84E531C();
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v219 = (&v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v246 = &v181 - v31;
  v32 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v233 = &v181 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v218 = &v181 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v181 - v37;
  v212 = *a4;
  v38 = v6[1];
  v210 = *v6;
  sub_1A8243D74(a1, &v181 - v37, &qword_1EB2E7068, &unk_1A8501EB0);
  v39 = type metadata accessor for ImportExport.Attachment(0);
  v241 = *(v6 + v39[11]);
  v40 = v6[6];
  v217 = v6[5];
  v216 = v40;
  v41 = v6[4];
  v204 = v6[3];
  v42 = v6[8];
  v235 = v6[7];
  v43 = v6[10];
  v215 = v6[9];
  v44 = v39[14];
  v243 = *(v6 + v39[15]);
  v45 = (v6 + v44);
  v46 = v39[19];
  v209 = *(v6 + v39[18]);
  v47 = v39[17];
  v207 = *(v6 + v39[16]);
  v208 = *(v6 + v47);
  v48 = v45[1];
  v239 = *v45;
  v49 = *(v6 + v46 + 8);
  v206 = *(v6 + v46);
  v50 = (v6 + v39[20]);
  v51 = v50[1];
  v205 = *v50;
  v211 = *(v6 + v39[22]);
  v226 = v51;

  v228 = v38;

  v223 = v41;
  v52 = v39;

  v236 = v42;

  v238 = v43;

  v244 = v48;

  v224 = v49;

  v53 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v222 = v249;
  sub_1A84E595C();
  v225 = v249;
  v232 = v53;
  v54 = v242;
  sub_1A84E595C();
  v227 = v249;
  v55 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v55 - 8) + 56))(v246, 1, 1, v55);
  v201 = v6[2];
  v56 = v240;
  v57 = v52[24];
  v249 = 0;
  sub_1A84E5B8C();
  v58 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v229 = v57;
  sub_1A84E594C();
  v59 = v52[25];
  v249 = 0;
  sub_1A84E5B8C();
  v230 = v59;
  sub_1A84E594C();
  v203 = v52;
  v60 = v52[26];
  v249 = 0;
  sub_1A84E5B8C();
  v231 = v60;
  v213 = v29;
  v202 = v58;
  v61 = v218;
  sub_1A84E594C();
  v249 = v217;
  v250 = v216;
  v62 = v219;
  sub_1A84E530C();
  sub_1A840D3B0();
  v63 = sub_1A84E636C();
  v65 = v64;
  (v220)[1](v62, v221);
  sub_1A8243D74(v247, v61, &qword_1EB2E7068, &unk_1A8501EB0);
  v66 = *(v56 + 48);
  if (v66(v61, 1, v54) == 1)
  {
    sub_1A824B2D4(v61, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_3:
    v67 = v233;
    goto LABEL_7;
  }

  v68 = v199;
  (*(v56 + 32))(v199, v61, v54);
  v69 = v68;
  v67 = v233;
  if (v241 & 1) == 0 || (v237)
  {
    (*(v56 + 8))(v69, v54);
LABEL_7:
    sub_1A8243D74(v247, v67, &qword_1EB2E7068, &unk_1A8501EB0);
    if (v66(v67, 1, v54) == 1)
    {
      v233 = v63;
      sub_1A824B2D4(v67, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_53:
      v141 = v228;
      v142 = v241;
      v143 = v226;
      v144 = v211;
      v145 = v224;
      v146 = v210;
      v147 = v223;
      v148 = v209;
      v149 = v208;
LABEL_61:
      v158 = v245;
      *v245 = v146;
      v158[1] = v141;
      v159 = v204;
      v158[2] = v201;
      v158[3] = v159;
      v160 = v233;
      v158[4] = v147;
      v158[5] = v160;
      v158[6] = v65;
      v161 = v203;
      v162 = (v158 + v203[14]);
      v163 = v243;
      v164 = v244;
      *v162 = v239;
      v162[1] = v164;
      *(v158 + v161[15]) = v163;
      v165 = v236;
      v158[7] = v235;
      v158[8] = v165;
      v166 = v238;
      v158[9] = v215;
      v158[10] = v166;
      sub_1A8243D74(v247, v158 + v161[10], &qword_1EB2E7068, &unk_1A8501EB0);
      *(v158 + v161[11]) = v142;
      *(v158 + v161[12]) = v237 & 1;
      *(v158 + v161[13]) = v214 & 1;
      *(v158 + v161[18]) = v148;
      *(v158 + v161[16]) = v207;
      *(v158 + v161[17]) = v149;
      v167 = (v158 + v161[19]);
      *v167 = v206;
      v167[1] = v145;
      v168 = (v158 + v161[20]);
      *v168 = v205;
      v168[1] = v143;
      v169 = v246;
      sub_1A8243D74(v246, v158 + v161[21], &qword_1EB2E7348, &qword_1A8504400);
      *(v158 + v161[22]) = v144;
      v170 = v232;
      v171 = *(*(v232 - 8) + 8);
      v171(v158 + v229, v232);
      v248 = v222;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v171(v158 + v230, v170);
      v248 = v225;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v171(v158 + v231, v170);
      v248 = v227;
      sub_1A84E5B8C();
      sub_1A84E594C();
      sub_1A824B2D4(v169, &qword_1EB2E7348, &qword_1A8504400);
      result = sub_1A824B2D4(v247, &qword_1EB2E7068, &unk_1A8501EB0);
      *(v158 + v161[23]) = v212;
      return result;
    }

    v221 = v65;
    v70 = v200;
    (*(v56 + 32))(v200, v67, v54);
    v71 = HIBYTE(v244) & 0xF;
    if (!v243 || !v238)
    {
      goto LABEL_18;
    }

    v72 = v239 & 0xFFFFFFFFFFFFLL;
    if ((v244 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v244) & 0xF;
    }

    if (!v72)
    {
      goto LABEL_18;
    }

    v73 = HIBYTE(v236) & 0xF;
    if ((v236 & 0x2000000000000000) == 0)
    {
      v73 = v235 & 0xFFFFFFFFFFFFLL;
    }

    if (v73)
    {
      v233 = v63;
      (*(v56 + 8))(v70, v242);
    }

    else
    {
LABEL_18:
      v74 = v70;
      v75 = [objc_opt_self() defaultManager];
      sub_1A84E555C();
      v76 = sub_1A84E5D8C();

      v249 = 0;
      v77 = [v75 attributesOfItemAtPath:v76 error:&v249];

      v78 = v249;
      if (v77)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey, &unk_1A85003DC);
        v79 = sub_1A84E5D3C();
        v80 = v78;

        v65 = v221;
        v81 = HIBYTE(v221) & 0xF;
        if ((v221 & 0x2000000000000000) == 0)
        {
          v81 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (!v81)
        {

          v63 = sub_1A84E550C();
          v65 = v82;
        }

        v83 = v240;
        if (*(v79 + 16))
        {
          v84 = sub_1A8490560();
          if (v85)
          {
            sub_1A8244F40(*(v79 + 56) + 32 * v84, &v249);
            if (swift_dynamicCast())
            {
              sub_1A84E5C4C();
              v86 = v186;
              sub_1A84E5C2C();
              v87 = v188;
              v88 = v189;
              if ((*(v188 + 48))(v86, 1, v189) == 1)
              {
                sub_1A824B2D4(v86, &qword_1EB2E7340, &qword_1A8501EF8);
                v83 = v240;
              }

              else
              {
                (*(v87 + 32))(v187, v86, v88);
                v134 = HIBYTE(v236) & 0xF;
                if ((v236 & 0x2000000000000000) == 0)
                {
                  v134 = v235 & 0xFFFFFFFFFFFFLL;
                }

                v83 = v240;
                if (!v134)
                {
                  v235 = sub_1A84E5C1C();
                  v136 = v135;

                  v236 = v136;
                }

                if (!v238)
                {
                  v215 = sub_1A84E5C3C();
                  v238 = v137;
                }

                (*(v188 + 8))(v187, v189);
              }
            }
          }
        }

        if (!v243)
        {
          if (*(v79 + 16) && (v138 = sub_1A8490560(), (v139 & 1) != 0) && (sub_1A8244F40(*(v79 + 56) + 32 * v138, &v249), swift_dynamicCast()))
          {
            v243 = v248;
          }

          else
          {
            v243 = 0;
          }
        }

        v140 = v239 & 0xFFFFFFFFFFFFLL;
        if ((v244 & 0x2000000000000000) != 0)
        {
          v140 = v71;
        }

        v233 = v63;
        if (v140)
        {
          (*(v83 + 8))(v200, v242);

          goto LABEL_53;
        }

        v221 = v65;
        v150 = v242;
        if (*(v79 + 16) && (v151 = sub_1A8490560(), v152 = v190, (v153 & 1) != 0))
        {
          sub_1A8244F40(*(v79 + 56) + 32 * v151, &v249);

          v154 = v192;
          v155 = v194;
          v156 = swift_dynamicCast();
          v157 = v193;
          (*(v193 + 56))(v154, v156 ^ 1u, 1, v155);
          if ((*(v157 + 48))(v154, 1, v155) != 1)
          {
            (*(v157 + 32))(v152, v154, v155);
            v239 = objc_opt_self();
            v172 = sub_1A84E565C();
            if (qword_1EB2E5990 != -1)
            {
              swift_once();
            }

            v173 = v184;
            v174 = sub_1A824431C(v184, qword_1EB2E7FC8);
            swift_beginAccess();
            v175 = v183;
            v176 = v182;
            (*(v183 + 16))(v182, v174, v173);
            v177 = sub_1A84E576C();
            (*(v175 + 8))(v176, v173);
            v178 = [v239 stringFromDate:v172 timeZone:v177 formatOptions:1907];

            v239 = sub_1A84E5DBC();
            v180 = v179;

            (*(v157 + 8))(v152, v155);
            (*(v240 + 8))(v200, v150);
            v244 = v180;
            goto LABEL_60;
          }

          (*(v83 + 8))(v200, v150);
        }

        else
        {

          (*(v83 + 8))(v200, v150);
          v154 = v192;
          (*(v193 + 56))(v192, 1, 1, v194);
        }

        sub_1A824B2D4(v154, &qword_1EB2E6F48, &unk_1A8501F00);
      }

      else
      {
        v233 = v63;
        v89 = v249;
        v90 = sub_1A84E548C();

        swift_willThrow();
        v234 = 0;
        v91 = v198;
        sub_1A84E5C8C();
        v92 = v240;
        v93 = v195;
        v94 = v242;
        (*(v240 + 16))(v195, v74, v242);
        v95 = sub_1A84E5C7C();
        v96 = sub_1A84E619C();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v220 = v90;
          v98 = v94;
          v99 = v93;
          v100 = v97;
          v219 = swift_slowAlloc();
          v249 = v219;
          *v100 = 136315138;
          v101 = sub_1A84E555C();
          v103 = v102;
          v104 = *(v92 + 8);
          v104(v99, v98);
          v105 = sub_1A82446BC(v101, v103, &v249);

          *(v100 + 4) = v105;
          _os_log_impl(&dword_1A823F000, v95, v96, "Failed to get file attributes for file ath path: %s", v100, 0xCu);
          v106 = v219;
          sub_1A8244788(v219);
          MEMORY[0x1AC56D3F0](v106, -1, -1);
          MEMORY[0x1AC56D3F0](v100, -1, -1);

          (*(v196 + 8))(v198, v197);
          v104(v200, v98);
        }

        else
        {

          v110 = *(v92 + 8);
          v110(v93, v94);
          (*(v196 + 8))(v91, v197);
          v110(v74, v94);
        }
      }
    }

LABEL_60:
    v141 = v228;
    v142 = v241;
    v143 = v226;
    v144 = v211;
    v145 = v224;
    v146 = v210;
    v147 = v223;
    v148 = v209;
    v149 = v208;
    v65 = v221;
    goto LABEL_61;
  }

  v107 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v108 = sub_1A84E5D8C();

  v109 = [v107 fileExistsAtPath_];

  if (v109)
  {
    v54 = v242;
    (*(v56 + 8))(v199, v242);
    goto LABEL_3;
  }

  v111 = v230;
  v112 = v247;

  v249 = 0;
  v250 = 0xE000000000000000;
  sub_1A84E646C();

  v249 = 0xD00000000000002ELL;
  v250 = 0x80000001A8530150;
  v113 = v199;
  v114 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v114);

  v115 = v249;
  v116 = v250;
  sub_1A8412484();
  v117 = v56;
  v118 = swift_allocError();
  *v119 = v115;
  *(v119 + 8) = v116;
  *(v119 + 16) = 1;
  swift_willThrow();

  (*(v117 + 8))(v113, v242);
  v120 = v118;
  v121 = v191;
  sub_1A84E5C8C();
  v122 = v118;
  v123 = sub_1A84E5C7C();
  v124 = sub_1A84E619C();
  v125 = v118;

  if (os_log_type_enabled(v123, v124))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v126 = 138412290;
    v128 = v125;
    v129 = _swift_stdlib_bridgeErrorToNSError();
    *(v126 + 4) = v129;
    *v127 = v129;
    _os_log_impl(&dword_1A823F000, v123, v124, "Failed to create an attachment with error: %@", v126, 0xCu);
    sub_1A824B2D4(v127, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v127, -1, -1);
    MEMORY[0x1AC56D3F0](v126, -1, -1);
  }

  (*(v196 + 8))(v121, v197);
  swift_willThrow();
  sub_1A824B2D4(v246, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v112, &qword_1EB2E7068, &unk_1A8501EB0);

  v130 = v232;
  v131 = *(*(v232 - 8) + 8);
  v132 = v245;
  v131(v245 + v229, v232);
  v131(&v132[v111], v130);
  return (v131)(&v132[v231], v130);
}

uint64_t ImportExport.Attachment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.Attachment.messageID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImportExport.Attachment.fileName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ImportExport.Attachment.contentType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ImportExport.Attachment.mimeType.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ImportExport.Attachment.createdDate.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.Attachment(0) + 56));

  return v1;
}

void ImportExport.Attachment.dateCreated.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  type metadata accessor for ImportExport.Attachment(0);
  v1 = sub_1A84E5D8C();
  v2 = [v0 dateFromString_];

  if (v2)
  {
    sub_1A84E569C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ImportExport.Attachment.emojiImageContentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.Attachment(0) + 76));

  return v1;
}

uint64_t ImportExport.Attachment.emojiImageShortDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.Attachment(0) + 80));

  return v1;
}

uint64_t ImportExport.Attachment.missingFileReasons.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ImportExport.Attachment(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t ImportExport.Attachment.transferUserInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

void *sub_1A840B5C0@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A840B628(uint64_t *a1)
{
  type metadata accessor for ImportExport.Attachment(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$transferUserInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.stickerUserInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

void *sub_1A840B740@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A840B7A8(uint64_t *a1)
{
  type metadata accessor for ImportExport.Attachment(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$stickerUserInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.attributionInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

void *sub_1A840B8C0@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A840B928(uint64_t *a1)
{
  type metadata accessor for ImportExport.Attachment(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$attributionInfo.getter()
{
  type metadata accessor for ImportExport.Attachment(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.init(id:filePath:shouldExistOnDisk:isRelativeFilePath:fileName:messageID:contentType:mimeType:createdDate:totalBytes:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:isAdaptiveImageGlyph:transferUserInfo:stickerUserInfo:attributionInfo:downloadError:missingFileReasons:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10, unint64_t a11, char *a12, char *a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32)
{
  v198 = a8;
  v231 = a7;
  v232 = a3;
  v227 = a6;
  v224 = a5;
  v228 = a4;
  v210 = a2;
  v209 = a1;
  v219 = a30;
  v218 = a29;
  v217 = a28;
  v215 = a27;
  v212 = a25;
  v211 = a23;
  v234 = a14;
  v235 = a16;
  v233 = a12;
  v229 = a10;
  v239 = *MEMORY[0x1E69E9840];
  v186 = sub_1A84E577C();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v191 = &v182 - v35;
  v193 = sub_1A84E56DC();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v197 = &v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v200 = &v182 - v38;
  v190 = sub_1A84E5C5C();
  v189 = *(v190 - 8);
  v39 = MEMORY[0x1EEE9AC00](v190);
  v187 = &v182 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v182 - v41;
  v196 = sub_1A84E5C9C();
  v195 = *(v196 - 8);
  v42 = MEMORY[0x1EEE9AC00](v196);
  v199 = &v182 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v202 = &v182 - v44;
  v45 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v204 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v182 - v48;
  v50 = sub_1A84E558C();
  v222 = *(v50 - 8);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v194 = &v182 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v220 = &v182 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v203 = &v182 - v55;
  v225 = sub_1A84E531C();
  v56 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v58 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v59 - 8);
  v61 = &v182 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = *a31;
  v62 = type metadata accessor for ImportExport.Attachment(0);
  v63 = v62[24];
  v237 = 0;
  sub_1A84E5B8C();
  v64 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v213 = v63;
  sub_1A84E594C();
  v65 = v62[25];
  v237 = 0;
  sub_1A84E5B8C();
  v214 = v65;
  sub_1A84E594C();
  v207 = v62;
  v66 = v62[26];
  v237 = 0;
  sub_1A84E5B8C();
  v216 = v66;
  v230 = a9;
  v206 = v61;
  v205 = v64;
  v67 = v222;
  sub_1A84E594C();
  v237 = v227;
  v238 = v231;

  sub_1A84E530C();
  sub_1A840D3B0();
  v226 = sub_1A84E636C();
  v221 = v68;
  (*(v56 + 8))(v58, v225);
  v69 = v232;
  sub_1A8243D74(v232, v49, &qword_1EB2E7068, &unk_1A8501EB0);
  v70 = *(v67 + 48);
  if (v70(v49, 1, v50) == 1)
  {
    v71 = v67;
    sub_1A824B2D4(v49, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_6;
  }

  v72 = v203;
  (*(v67 + 32))(v203, v49, v50);
  if (v228 & 1) == 0 || (v224)
  {
    v71 = v67;
    (*(v67 + 8))(v72, v50);
    goto LABEL_6;
  }

  v118 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v119 = sub_1A84E5D8C();

  v120 = [v118 fileExistsAtPath_];

  if (v120)
  {
    v71 = v67;
    (*(v67 + 8))(v203, v50);
LABEL_6:
    v73 = v220;
    v201 = a32;
    v227 = a15;
    v202 = a13;
    v74 = v204;
    sub_1A8243D74(v69, v204, &qword_1EB2E7068, &unk_1A8501EB0);
    v75 = v70(v74, 1, v50);
    v203 = a11;
    v225 = a17;
    if (v75 == 1)
    {
      sub_1A824B2D4(v74, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_8:
      v200 = v233;
      v199 = v235;
LABEL_49:
      v204 = v234;
LABEL_50:
      v89 = v221;
      goto LABEL_51;
    }

    v76 = v74;
    v77 = v71;
    v78 = *(v71 + 32);
    v79 = v73;
    v78(v73, v76, v50);
    v80 = v235;
    if (a17 && v234)
    {
      v81 = v227 & 0xFFFFFFFFFFFFLL;
      if ((v235 & 0x2000000000000000) != 0)
      {
        v81 = HIBYTE(v235) & 0xF;
      }

      if (v81)
      {
        v82 = HIBYTE(v233) & 0xF;
        if ((v233 & 0x2000000000000000) == 0)
        {
          v82 = a11 & 0xFFFFFFFFFFFFLL;
        }

        if (v82)
        {
          (*(v77 + 8))(v73, v50);
          goto LABEL_48;
        }
      }
    }

    v183 = HIBYTE(v235) & 0xF;
    v83 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v84 = sub_1A84E5D8C();

    v237 = 0;
    v85 = [v83 attributesOfItemAtPath:v84 error:&v237];

    v86 = v237;
    if (!v85)
    {
      v100 = v237;
      v101 = sub_1A84E548C();

      v204 = v101;
      swift_willThrow();
      v223 = 0;
      v102 = v199;
      sub_1A84E5C8C();
      v103 = v194;
      (*(v77 + 16))(v194, v79, v50);
      v104 = sub_1A84E5C7C();
      v105 = v77;
      v106 = v50;
      v107 = sub_1A84E619C();
      if (os_log_type_enabled(v104, v107))
      {
        v108 = v103;
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v237 = v110;
        *v109 = 136315138;
        v111 = sub_1A84E555C();
        v112 = v106;
        v182 = v106;
        v113 = v111;
        v115 = v114;
        v116 = *(v105 + 8);
        v116(v108, v112);
        v117 = sub_1A82446BC(v113, v115, &v237);

        *(v109 + 4) = v117;
        _os_log_impl(&dword_1A823F000, v104, v107, "Failed to get file attributes for file ath path: %s", v109, 0xCu);
        sub_1A8244788(v110);
        MEMORY[0x1AC56D3F0](v110, -1, -1);
        MEMORY[0x1AC56D3F0](v109, -1, -1);

        (*(v195 + 8))(v199, v196);
        v116(v220, v182);
        goto LABEL_8;
      }

      v129 = *(v105 + 8);
      v129(v103, v106);
      (*(v195 + 8))(v102, v196);
      v129(v79, v106);
LABEL_48:
      v200 = v233;
      v199 = v80;
      goto LABEL_49;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey, &unk_1A85003DC);
    v87 = sub_1A84E5D3C();
    v88 = v86;

    v89 = v221;
    v90 = HIBYTE(v221) & 0xF;
    if ((v221 & 0x2000000000000000) == 0)
    {
      v90 = v226 & 0xFFFFFFFFFFFFLL;
    }

    if (!v90)
    {

      v226 = sub_1A84E550C();
      v89 = v91;
    }

    v92 = v197;
    v93 = v200;
    if (*(v87 + 16) && (v94 = sub_1A8490560(), (v95 & 1) != 0) && (sub_1A8244F40(*(v87 + 56) + 32 * v94, &v237), (swift_dynamicCast() & 1) != 0))
    {
      v221 = v236;
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v96 = v189;
      v97 = v190;
      if ((*(v189 + 48))(v93, 1, v190) == 1)
      {
        sub_1A824B2D4(v93, &qword_1EB2E7340, &qword_1A8501EF8);
        v200 = v233;
        v204 = v234;
        v92 = v197;
        if (v225)
        {
          goto LABEL_39;
        }
      }

      else
      {
        (*(v96 + 32))(v188, v93, v97);
        v169 = v233;
        v170 = HIBYTE(v233) & 0xF;
        v171 = v203;
        if ((v233 & 0x2000000000000000) == 0)
        {
          v170 = v203 & 0xFFFFFFFFFFFFLL;
        }

        v92 = v197;
        if (!v170)
        {
          v171 = sub_1A84E5C1C();
          v169 = v172;
        }

        v200 = v169;
        v203 = v171;
        v204 = v234;
        if (!v234)
        {
          v202 = sub_1A84E5C3C();
          v204 = v173;
        }

        (*(v189 + 8))(v188, v190);
        if (v225)
        {
LABEL_39:
          v121 = v227 & 0xFFFFFFFFFFFFLL;
          v122 = v235;
          if ((v235 & 0x2000000000000000) != 0)
          {
            v121 = v183;
          }

          if (v121)
          {
            (*(v77 + 8))(v73, v50);

            v199 = v122;
LABEL_51:
            v130 = v202;
            LODWORD(v222) = a26;
            v131 = v230;
            v132 = v210;
            *v230 = v209;
            v131[1] = v132;
            v131[2] = v201;
            if (v229)
            {

              v133 = v229;
              v134 = v198;
            }

            else
            {

              v134 = 0;
              v133 = 0xE000000000000000;
            }

            v135 = v230;
            v230[3] = v134;
            v135[4] = v133;
            v136 = v227;
            v135[5] = v226;
            v135[6] = v89;
            v137 = v207;
            v138 = (v135 + v207[14]);
            v139 = v199;
            *v138 = v136;
            v138[1] = v139;
            *(v135 + v137[15]) = v225;
            v140 = v200;
            v135[7] = v203;
            v135[8] = v140;
            v141 = v204;
            v135[9] = v130;
            v135[10] = v141;
            sub_1A8243D74(v232, v135 + v137[10], &qword_1EB2E7068, &unk_1A8501EB0);
            *(v135 + v137[11]) = v228 & 1;
            *(v135 + v137[12]) = v224 & 1;
            *(v135 + v137[13]) = a18 & 1;
            *(v135 + v137[18]) = a19 & 1;
            *(v135 + v137[16]) = a20 & 1;
            *(v135 + v137[17]) = a21 & 1;
            v142 = (v135 + v137[19]);
            v143 = v211;
            *v142 = a22;
            v142[1] = v143;
            v144 = (v135 + v137[20]);
            v145 = v212;
            *v144 = a24;
            v144[1] = v145;
            v146 = v219;
            sub_1A8243D74(v219, v135 + v137[21], &qword_1EB2E7348, &qword_1A8504400);
            *(v135 + v137[22]) = v222 & 1;
            v147 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
            v148 = *(*(v147 - 8) + 8);
            v148(v135 + v213, v147);
            v236 = v215;
            sub_1A84E5B8C();
            sub_1A84E594C();
            v148(v135 + v214, v147);
            v236 = v217;
            sub_1A84E5B8C();
            sub_1A84E594C();
            v148(v135 + v216, v147);
            v236 = v218;
            sub_1A84E5B8C();
            sub_1A84E594C();
            sub_1A824B2D4(v146, &qword_1EB2E7348, &qword_1A8504400);
            result = sub_1A824B2D4(v232, &qword_1EB2E7068, &unk_1A8501EB0);
            *(v135 + v137[23]) = v208;
            return result;
          }

          if (*(v87 + 16) && (v123 = sub_1A8490560(), (v124 & 1) != 0))
          {
            sub_1A8244F40(*(v87 + 56) + 32 * v123, &v237);

            v125 = v191;
            v126 = v193;
            v127 = swift_dynamicCast();
            v128 = v192;
            (*(v192 + 56))(v125, v127 ^ 1u, 1, v126);
            if ((*(v128 + 48))(v125, 1, v126) != 1)
            {
              v221 = v89;
              (*(v128 + 32))(v92, v125, v126);
              v227 = objc_opt_self();
              v174 = sub_1A84E565C();
              if (qword_1EB2E5990 != -1)
              {
                swift_once();
              }

              v175 = v186;
              v176 = sub_1A824431C(v186, qword_1EB2E7FC8);
              swift_beginAccess();
              v177 = v185;
              v178 = v184;
              (*(v185 + 16))(v184, v176, v175);
              v179 = sub_1A84E576C();
              (*(v177 + 8))(v178, v175);
              v180 = [v227 stringFromDate:v174 timeZone:v179 formatOptions:1907];

              v227 = sub_1A84E5DBC();
              v199 = v181;

              (*(v128 + 8))(v197, v126);
              (*(v222 + 8))(v220, v50);
              goto LABEL_50;
            }

            (*(v222 + 8))(v73, v50);
          }

          else
          {

            (*(v77 + 8))(v73, v50);
            v125 = v191;
            (*(v192 + 56))(v191, 1, 1, v193);
          }

          sub_1A824B2D4(v125, &qword_1EB2E6F48, &unk_1A8501F00);
          v199 = v235;
          goto LABEL_51;
        }
      }
    }

    else
    {
      v200 = v233;
      v204 = v234;
      if (v225)
      {
        goto LABEL_39;
      }
    }

    if (*(v87 + 16) && (v98 = sub_1A8490560(), (v99 & 1) != 0) && (sub_1A8244F40(*(v87 + 56) + 32 * v98, &v237), (swift_dynamicCast() & 1) != 0))
    {
      v225 = v236;
    }

    else
    {
      v225 = 0;
    }

    goto LABEL_39;
  }

  v237 = 0;
  v238 = 0xE000000000000000;
  sub_1A84E646C();

  v237 = 0xD00000000000002ELL;
  v238 = 0x80000001A8530150;
  v150 = v203;
  v151 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v151);

  v152 = v237;
  v153 = v238;
  sub_1A8412484();
  v154 = swift_allocError();
  *v155 = v152;
  *(v155 + 8) = v153;
  *(v155 + 16) = 1;
  swift_willThrow();

  (*(v67 + 8))(v150, v50);
  v156 = v154;
  v157 = v202;
  sub_1A84E5C8C();
  v158 = v154;
  v159 = sub_1A84E5C7C();
  v160 = sub_1A84E619C();
  v161 = v154;

  if (os_log_type_enabled(v159, v160))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *v162 = 138412290;
    v164 = v161;
    v165 = _swift_stdlib_bridgeErrorToNSError();
    *(v162 + 4) = v165;
    *v163 = v165;
    _os_log_impl(&dword_1A823F000, v159, v160, "Failed to create an attachment with error: %@", v162, 0xCu);
    sub_1A824B2D4(v163, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v163, -1, -1);
    MEMORY[0x1AC56D3F0](v162, -1, -1);
  }

  (*(v195 + 8))(v157, v196);
  swift_willThrow();
  sub_1A824B2D4(v219, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v232, &qword_1EB2E7068, &unk_1A8501EB0);

  v166 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v167 = *(*(v166 - 8) + 8);
  v168 = v230;
  v167(v230 + v213, v166);
  v167(v168 + v214, v166);
  return (v167)(v168 + v216, v166);
}

unint64_t sub_1A840D3B0()
{
  result = qword_1EB2E7350;
  if (!qword_1EB2E7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7350);
  }

  return result;
}

unint64_t sub_1A840D404(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65636E6575716573;
      break;
    case 2:
      result = 0x496567617373656DLL;
      break;
    case 3:
      result = 0x656D614E656C6966;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 0x65707954656D696DLL;
      break;
    case 6:
      result = 0x68746150656C6966;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 19:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6C6E776F44736177;
      break;
    case 10:
      result = 0x4464657461657263;
      break;
    case 11:
      result = 0x7479426C61746F74;
      break;
    case 12:
      result = 0x656B636974537369;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x696F6774754F7369;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0x64616F6C6E776F64;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x5572656B63697473;
      break;
    case 22:
      result = 0x7475626972747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A840D6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8412E70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A840D6F4(uint64_t a1)
{
  v2 = sub_1A84124D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A840D730(uint64_t a1)
{
  v2 = sub_1A84124D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Attachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7360, &qword_1A8501F18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84124D8();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1A84E673C();
    LOBYTE(v14) = 2;
    sub_1A84E66CC();
    LOBYTE(v14) = 3;
    sub_1A84E66CC();
    LOBYTE(v14) = 4;
    sub_1A84E66CC();
    LOBYTE(v14) = 5;
    sub_1A84E66AC();
    v9 = type metadata accessor for ImportExport.Attachment(0);
    LOBYTE(v14) = 6;
    sub_1A84E558C();
    sub_1A8412804(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A84E66BC();
    LOBYTE(v14) = 7;
    sub_1A84E66DC();
    LOBYTE(v14) = 8;
    sub_1A84E66DC();
    LOBYTE(v14) = 9;
    sub_1A84E66DC();
    LOBYTE(v14) = 10;
    sub_1A84E66CC();
    LOBYTE(v14) = 11;
    sub_1A84E673C();
    LOBYTE(v14) = 12;
    sub_1A84E66DC();
    LOBYTE(v14) = 13;
    sub_1A84E66DC();
    LOBYTE(v14) = 14;
    sub_1A84E66DC();
    LOBYTE(v14) = 15;
    sub_1A84E66AC();
    LOBYTE(v14) = 16;
    sub_1A84E66AC();
    LOBYTE(v14) = 17;
    type metadata accessor for ImportExport.AttachmentDownloadError(0);
    sub_1A8412804(&qword_1EB2E6D80, type metadata accessor for ImportExport.AttachmentDownloadError, &protocol conformance descriptor for ImportExport.AttachmentDownloadError);
    sub_1A84E66BC();
    LOBYTE(v14) = 18;
    sub_1A84E66DC();
    v14 = *(v3 + *(v9 + 92));
    v13 = 19;
    sub_1A841252C();
    sub_1A84E672C();
    LOBYTE(v14) = 20;
    v10 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B0]);
    v12 = v10;
    sub_1A84E672C();
    LOBYTE(v14) = 21;
    sub_1A84E672C();
    LOBYTE(v14) = 22;
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.Attachment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v87 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v82 = *(v87 - 8);
  v3 = MEMORY[0x1EEE9AC00](v87);
  v76 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v75 = v74 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v79 = v74 - v7;
  v8 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v74 - v9;
  v11 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v74 - v12;
  v80 = sub_1A83EA2FC(&qword_1EB2E7380, &unk_1A8501F20);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v15 = v74 - v14;
  v16 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = type metadata accessor for ImportExport.Attachment(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v18 + 96);
  v91 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v86 = v21;
  sub_1A84E594C();
  v22 = v17[25];
  v91 = 0;
  sub_1A84E5B8C();
  v83 = v22;
  sub_1A84E594C();
  v23 = v17[26];
  v91 = 0;
  sub_1A84E5B8C();
  v84 = v23;
  v88 = v20;
  sub_1A84E594C();
  v24 = a1[3];
  v85 = a1;
  sub_1A82471E0(a1, v24);
  sub_1A84124D8();
  v81 = v15;
  v25 = v89;
  sub_1A84E689C();
  if (v25)
  {
    v89 = v25;
    v33 = v84;
    v34 = v88;
    sub_1A8244788(v85);
LABEL_4:
    v35 = *(v82 + 8);
    v36 = v87;
    v35(v34 + v86, v87);
    v35(v34 + v83, v36);
    return (v35)(v34 + v33, v36);
  }

  v26 = v13;
  v27 = v10;
  v28 = v78;
  v29 = v79;
  LOBYTE(v91) = 0;
  v31 = v80;
  v30 = v81;
  v32 = sub_1A84E660C();
  v34 = v88;
  *v88 = v32;
  v34[1] = v38;
  LOBYTE(v91) = 1;
  v34[2] = sub_1A84E667C();
  LOBYTE(v91) = 2;
  v34[3] = sub_1A84E660C();
  v34[4] = v39;
  LOBYTE(v91) = 3;
  v34[5] = sub_1A84E660C();
  v34[6] = v40;
  LOBYTE(v91) = 4;
  v34[7] = sub_1A84E660C();
  v34[8] = v41;
  LOBYTE(v91) = 5;
  v42 = sub_1A84E65DC();
  v89 = 0;
  v34[9] = v42;
  v34[10] = v43;
  v74[1] = sub_1A84E558C();
  LOBYTE(v91) = 6;
  sub_1A8412804(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v44 = v89;
  sub_1A84E65FC();
  v89 = v44;
  if (v44)
  {
    (*(v28 + 8))(v30, v31);
    v45 = 0;
    goto LABEL_5;
  }

  sub_1A8412580(v26, v34 + v17[10], &qword_1EB2E7068, &unk_1A8501EB0);
  LOBYTE(v91) = 7;
  v46 = v89;
  v47 = sub_1A84E661C();
  if (v46)
  {
    v89 = v46;
    (*(v28 + 8))(v81, v31);
    v45 = 1;
    goto LABEL_5;
  }

  *(v34 + v17[11]) = v47 & 1;
  LOBYTE(v91) = 8;
  v48 = sub_1A84E661C();
  v89 = 0;
  *(v34 + v17[12]) = v48 & 1;
  LOBYTE(v91) = 9;
  v49 = v89;
  v50 = sub_1A84E661C();
  v89 = v49;
  if (v49)
  {
    (*(v28 + 8))(v81, v80);
    v45 = 1;
    v34 = v88;
LABEL_5:
    sub_1A8244788(v85);

    v33 = v84;

    if (v45)
    {
      sub_1A824B2D4(v34 + v17[10], &qword_1EB2E7068, &unk_1A8501EB0);
    }

    goto LABEL_4;
  }

  *(v88 + v17[13]) = v50 & 1;
  LOBYTE(v91) = 10;
  v51 = sub_1A84E660C();
  v89 = 0;
  v52 = (v88 + v17[14]);
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v91) = 11;
  v54 = sub_1A84E667C();
  v89 = 0;
  *(v88 + v17[15]) = v54;
  LOBYTE(v91) = 12;
  v55 = sub_1A84E661C();
  v89 = 0;
  *(v88 + v17[16]) = v55 & 1;
  LOBYTE(v91) = 13;
  v56 = sub_1A84E661C();
  v89 = 0;
  *(v88 + v17[17]) = v56 & 1;
  LOBYTE(v91) = 14;
  v57 = sub_1A84E661C();
  v89 = 0;
  *(v88 + v17[18]) = v57 & 1;
  LOBYTE(v91) = 15;
  v58 = sub_1A84E65DC();
  v89 = 0;
  v59 = (v88 + v17[19]);
  *v59 = v58;
  v59[1] = v60;
  LOBYTE(v91) = 16;
  v61 = sub_1A84E65DC();
  v89 = 0;
  v63 = (v88 + v17[20]);
  *v63 = v61;
  v63[1] = v62;
  type metadata accessor for ImportExport.AttachmentDownloadError(0);
  LOBYTE(v91) = 17;
  sub_1A8412804(&qword_1EB2E6D98, type metadata accessor for ImportExport.AttachmentDownloadError, &protocol conformance descriptor for ImportExport.AttachmentDownloadError);
  v64 = v89;
  sub_1A84E65FC();
  v65 = v64;
  if (v64)
  {
    (*(v28 + 8))(v81, v80);
    v89 = v64;
    goto LABEL_23;
  }

  sub_1A8412580(v27, v88 + v17[21], &qword_1EB2E7348, &qword_1A8504400);
  LOBYTE(v91) = 18;
  v66 = sub_1A84E661C();
  v89 = 0;
  *(v88 + v17[22]) = v66 & 1;
  v90 = 19;
  sub_1A84125E8();
  v67 = v89;
  sub_1A84E666C();
  v89 = v67;
  if (v67 || (*(v88 + v17[23]) = v91, LOBYTE(v91) = 20, sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B8]), v68 = v89, sub_1A84E666C(), (v89 = v68) != 0) || (v69 = *(v82 + 40), v69(v88 + v86, v29, v87), LOBYTE(v91) = 21, v70 = v89, sub_1A84E666C(), (v89 = v70) != 0) || (v69(v88 + v83, v75, v87), LOBYTE(v91) = 22, v71 = v89, sub_1A84E666C(), (v89 = v71) != 0))
  {
    (*(v28 + 8))(v81, v80);
LABEL_23:
    sub_1A8244788(v85);
    v72 = v88;

    sub_1A824B2D4(v72 + v17[10], &qword_1EB2E7068, &unk_1A8501EB0);

    if (v65)
    {
      v33 = v84;
      v34 = v88;
    }

    else
    {
      v34 = v88;
      sub_1A824B2D4(v88 + v17[21], &qword_1EB2E7348, &qword_1A8504400);
      v33 = v84;
    }

    goto LABEL_4;
  }

  (*(v28 + 8))(v81, v80);
  v73 = v88;
  v69(v88 + v84, v76, v87);
  sub_1A841269C(v73, v77, type metadata accessor for ImportExport.Attachment);
  sub_1A8244788(v85);
  return sub_1A841263C(v73, type metadata accessor for ImportExport.Attachment);
}

uint64_t sub_1A840EAF0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A840EB58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ImportExport.Attachment.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A840EBB0()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A840EBFC(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t ImportExport.Attachment.description.getter()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54 - v3;
  v5 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v54 - v6;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x656D686361747441, 0xEA0000000000746ELL);
  MEMORY[0x1AC56A990](0x3A6469203ALL, 0xE500000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0x67617373656D202CLL, 0xED0000203A444965);
  MEMORY[0x1AC56A990](v1[3], v1[4]);
  MEMORY[0x1AC56A990](0x614E656C6966202CLL, 0xEC000000203A656DLL);
  MEMORY[0x1AC56A990](v1[5], v1[6]);
  MEMORY[0x1AC56A990](0x6150656C6966202CLL, 0xEC000000203A6874);
  v8 = type metadata accessor for ImportExport.Attachment(0);
  sub_1A8243D74(v0 + v8[10], v7, &qword_1EB2E7068, &unk_1A8501EB0);
  v9 = sub_1A84E558C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E7068, &unk_1A8501EB0);
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v13 = sub_1A84E555C();
    v11 = v14;
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  MEMORY[0x1AC56A990](v12, v11);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  if (*(v1 + v8[12]))
  {
    v15 = 0x65766974616C6572;
  }

  else
  {
    v15 = 0x6574756C6F736261;
  }

  MEMORY[0x1AC56A990](v15, 0xE800000000000000);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530180);
  if (*(v1 + v8[11]))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v1 + v8[11]))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v16, v17);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85301A0);
  v55 = *(v1 + v8[23]);
  ImportExport.Attachment.MissingFileReasons.description.getter();
  MEMORY[0x1AC56A990]();

  MEMORY[0x1AC56A990](0x6774754F7369202CLL, 0xEE00203A676E696FLL);
  if (*(v1 + v8[18]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v8[18]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v18, v19);

  MEMORY[0x1AC56A990](0x6369745373690A2CLL, 0xED0000203A72656BLL);
  if (*(v1 + v8[16]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v8[16]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v20, v21);

  MEMORY[0x1AC56A990](0x736E655373690A2CLL, 0xEF203A6576697469);
  if (*(v1 + v8[17]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v8[17]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v22, v23);

  MEMORY[0x1AC56A990](0x6E65746E6F630A2CLL, 0xEF203A6570795474);
  MEMORY[0x1AC56A990](v1[7], v1[8]);
  MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A85301C0);
  v24 = (v1 + v8[19]);
  if (v24[1])
  {
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x1AC56A990](v25, v26);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A85301E0);
  v27 = (v1 + v8[20]);
  if (v27[1])
  {
    v28 = *v27;
    v29 = v27[1];
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 7104878;
  }

  MEMORY[0x1AC56A990](v28, v29);

  MEMORY[0x1AC56A990](0x426C61746F74202CLL, 0xEE00203A73657479);
  v55 = *(v1 + v8[15]);
  v30 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v30);

  MEMORY[0x1AC56A990](0x657461657263202CLL, 0xEF203A6574614464);
  MEMORY[0x1AC56A990](*(v1 + v8[14]), *(v1 + v8[14] + 8));
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530200);
  v31 = ImportExport.Attachment.existsOnDisk.getter();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v33, v34);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530220);
  if (*(v1 + v8[13]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v1 + v8[13]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v35, v36);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530240);
  sub_1A8243D74(v1 + v8[21], v4, &qword_1EB2E7348, &qword_1A8504400);
  v37 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  if ((*(*(v37 - 8) + 48))(v4, 1, v37) == 1)
  {
    sub_1A824B2D4(v4, &qword_1EB2E7348, &qword_1A8504400);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v40 = ImportExport.AttachmentDownloadError.description.getter();
    v38 = v41;
    sub_1A841263C(v4, type metadata accessor for ImportExport.AttachmentDownloadError);
    v39 = v40;
  }

  MEMORY[0x1AC56A990](v39, v38);

  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A8530260);
  if (*(v1 + v8[22]))
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (*(v1 + v8[22]))
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v42, v43);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8530280);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  if (v55)
  {
    v44 = sub_1A84E5D4C();
    v46 = v45;
  }

  else
  {
    v46 = 0xE300000000000000;
    v44 = 7104878;
  }

  MEMORY[0x1AC56A990](v44, v46);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85302A0);
  sub_1A84E595C();
  if (v55)
  {
    v47 = sub_1A84E5D4C();
    v49 = v48;
  }

  else
  {
    v49 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x1AC56A990](v47, v49);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85302C0);
  sub_1A84E595C();
  if (v55)
  {
    v50 = sub_1A84E5D4C();
    v52 = v51;
  }

  else
  {
    v52 = 0xE300000000000000;
    v50 = 7104878;
  }

  MEMORY[0x1AC56A990](v50, v52);

  MEMORY[0x1AC56A990](4071468, 0xE300000000000000);
  return v56;
}

uint64_t static ImportExport.Attachment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A840F5C0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

void ImportExport.Attachment.MissingFileReasons.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B6FE68 + 24 * v1 + 32);
  while (v1 != 9)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF554(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF554((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  sub_1A84E5D6C();
}

uint64_t ImportExport.Attachment.update(downloadError:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v191 = a1;
  v195 = a2;
  v199[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v154 = &v139 - v5;
  v146 = sub_1A84E5C5C();
  v145 = *(v146 - 8);
  v6 = MEMORY[0x1EEE9AC00](v146);
  v143 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v139 - v8;
  v141 = sub_1A84E577C();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v147 = &v139 - v11;
  v149 = sub_1A84E56DC();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v142 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1A84E5C9C();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1A84E558C();
  v189 = *(v186 - 8);
  v14 = MEMORY[0x1EEE9AC00](v186);
  v150 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v139 - v16;
  v160 = sub_1A84E531C();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v196 = &v139 - v22;
  v23 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v157 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v139 - v26;
  v197 = &v139 - v26;
  v28 = v2[1];
  v181 = *v2;
  v29 = type metadata accessor for ImportExport.Attachment(0);
  sub_1A8243D74(v2 + v29[10], v27, &qword_1EB2E7068, &unk_1A8501EB0);
  v30 = v2[6];
  v190 = v2[5];
  v156 = v30;
  v31 = v2[4];
  v171 = v2[3];
  v32 = v2[8];
  v192 = v2[7];
  v33 = v2[10];
  v185 = v2[9];
  v34 = v29[14];
  v194 = *(v2 + v29[15]);
  v35 = (v2 + v34);
  v36 = v29[19];
  v179 = *(v2 + v29[18]);
  v37 = v29[17];
  v176 = *(v2 + v29[16]);
  v178 = *(v2 + v37);
  v38 = v35[1];
  v163 = *v35;
  v39 = *(v2 + v36 + 8);
  v175 = *(v2 + v36);
  v40 = (v2 + v29[20]);
  v41 = v40[1];
  v173 = *v40;
  v180 = *(v2 + v29[22]);
  v174 = v41;

  v182 = v28;

  v172 = v31;
  v42 = v33;
  v43 = v195;

  v188 = v32;
  v44 = v189;

  v193 = v38;

  v177 = v39;

  v45 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v168 = v199[0];
  sub_1A84E595C();
  v169 = v199[0];
  v183 = v45;
  sub_1A84E595C();
  v170 = v199[0];
  v46 = v191;
  v47 = v196;
  sub_1A841269C(v191, v196, type metadata accessor for ImportExport.AttachmentDownloadError);
  v48 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = v29[24];
  v162 = *(v3 + v29[23]);
  v161 = *(v46 + *(v48 + 36));
  v50 = v3[2];
  v51 = v43 + v49;
  v199[0] = 0;
  sub_1A84E5B8C();
  v52 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v53 = v43 + v29[25];
  v199[0] = 0;
  sub_1A84E5B8C();
  v164 = v53;
  sub_1A84E594C();
  v165 = v29;
  v54 = v43 + v29[26];
  v199[0] = 0;
  sub_1A84E5B8C();
  v166 = v54;
  v184 = v20;
  v55 = v186;
  v167 = v52;
  sub_1A84E594C();
  v199[0] = v190;
  v199[1] = v156;
  v56 = v158;
  sub_1A84E530C();
  sub_1A840D3B0();
  v190 = sub_1A84E636C();
  v191 = v57;
  v58 = v56;
  v59 = v157;
  (*(v159 + 8))(v58, v160);
  sub_1A8243D74(v197, v59, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v44 + 48))(v59, 1, v55) != 1)
  {
    v159 = v50;
    v160 = v51;
    v64 = v155;
    (*(v44 + 32))(v155, v59, v55);
    v61 = v193;
    v65 = HIBYTE(v193) & 0xF;
    v62 = v194;
    v63 = v163;
    if (v194 && v42)
    {
      v66 = v163 & 0xFFFFFFFFFFFFLL;
      if ((v193 & 0x2000000000000000) != 0)
      {
        v66 = HIBYTE(v193) & 0xF;
      }

      if (v66)
      {
        v67 = HIBYTE(v188) & 0xF;
        if ((v188 & 0x2000000000000000) == 0)
        {
          v67 = v192 & 0xFFFFFFFFFFFFLL;
        }

        if (v67)
        {
          v68 = v192;
          (*(v44 + 8))(v64, v55);
          v60 = v68;
          v51 = v160;
          v50 = v159;
          goto LABEL_45;
        }
      }
    }

    v158 = v42;
    v69 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v70 = sub_1A84E5D8C();

    v199[0] = 0;
    v71 = [v69 attributesOfItemAtPath:v70 error:v199];

    v72 = v199[0];
    if (!v71)
    {
      v84 = v199[0];
      v85 = sub_1A84E548C();

      swift_willThrow();
      v187 = 0;
      v86 = v151;
      sub_1A84E5C8C();
      v87 = v150;
      (*(v44 + 16))(v150, v64, v55);
      v88 = sub_1A84E5C7C();
      v89 = v55;
      v90 = sub_1A84E619C();
      if (os_log_type_enabled(v88, v90))
      {
        v91 = swift_slowAlloc();
        v157 = v85;
        v92 = v91;
        v156 = swift_slowAlloc();
        v199[0] = v156;
        *v92 = 136315138;
        v93 = sub_1A84E555C();
        v94 = v87;
        v96 = v95;
        v97 = *(v44 + 8);
        v97(v94, v89);
        v98 = sub_1A82446BC(v93, v96, v199);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_1A823F000, v88, v90, "Failed to get file attributes for file ath path: %s", v92, 0xCu);
        v99 = v156;
        sub_1A8244788(v156);
        MEMORY[0x1AC56D3F0](v99, -1, -1);
        MEMORY[0x1AC56D3F0](v92, -1, -1);

        (*(v152 + 8))(v86, v153);
        v97(v155, v186);
      }

      else
      {

        v107 = *(v44 + 8);
        v107(v87, v89);
        (*(v152 + 8))(v86, v153);
        v107(v155, v89);
      }

      v42 = v158;
      v61 = v193;
      v62 = v194;
      goto LABEL_44;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey, &unk_1A85003DC);
    v73 = sub_1A84E5D3C();
    v74 = v72;

    v75 = HIBYTE(v191) & 0xF;
    if ((v191 & 0x2000000000000000) == 0)
    {
      v75 = v190 & 0xFFFFFFFFFFFFLL;
    }

    if (!v75)
    {

      v190 = sub_1A84E550C();
      v191 = v76;
    }

    v61 = v193;
    v77 = v154;
    if (*(v73 + 16) && (v78 = sub_1A8490560(), (v79 & 1) != 0) && (sub_1A8244F40(*(v73 + 56) + 32 * v78, v199), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v80 = v145;
      v81 = v146;
      if ((*(v145 + 48))(v77, 1, v146) != 1)
      {
        (*(v80 + 32))(v144, v77, v81);
        v124 = HIBYTE(v188) & 0xF;
        if ((v188 & 0x2000000000000000) == 0)
        {
          v124 = v192 & 0xFFFFFFFFFFFFLL;
        }

        v62 = v194;
        if (!v124)
        {
          v192 = sub_1A84E5C1C();
          v126 = v125;

          v188 = v126;
          v62 = v194;
        }

        v61 = v193;
        if (!v158)
        {
          v127 = sub_1A84E5C3C();
          v62 = v194;
          v185 = v127;
          v158 = v128;
        }

        (*(v145 + 8))(v144, v146);
        if (v62)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      sub_1A824B2D4(v77, &qword_1EB2E7340, &qword_1A8501EF8);
      v61 = v193;
      v62 = v194;
      if (!v194)
      {
LABEL_24:
        if (*(v73 + 16) && (v82 = sub_1A8490560(), (v83 & 1) != 0) && (sub_1A8244F40(*(v73 + 56) + 32 * v82, v199), swift_dynamicCast()))
        {
          v62 = v198;
        }

        else
        {
          v62 = 0;
        }
      }
    }

    else
    {
      v62 = v194;
      if (!v194)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    v100 = v63 & 0xFFFFFFFFFFFFLL;
    if ((v61 & 0x2000000000000000) != 0)
    {
      v100 = v65;
    }

    if (v100)
    {
      (*(v189 + 8))(v64, v55);
    }

    else
    {
      if (*(v73 + 16) && (v194 = v62, v101 = sub_1A8490560(), v62 = v194, (v102 & 1) != 0))
      {
        sub_1A8244F40(*(v73 + 56) + 32 * v101, v199);

        v103 = v147;
        v104 = v149;
        v105 = swift_dynamicCast();
        v106 = v148;
        (*(v148 + 56))(v103, v105 ^ 1u, 1, v104);
        if ((*(v106 + 48))(v103, 1, v104) != 1)
        {
          (*(v106 + 32))();
          v163 = objc_opt_self();
          v129 = sub_1A84E565C();
          v130 = v189;
          if (qword_1EB2E5990 != -1)
          {
            swift_once();
          }

          v131 = v141;
          v132 = sub_1A824431C(v141, qword_1EB2E7FC8);
          swift_beginAccess();
          v133 = v140;
          v134 = v139;
          (*(v140 + 16))(v139, v132, v131);
          v135 = sub_1A84E576C();
          (*(v133 + 8))(v134, v131);
          v136 = [v163 stringFromDate:v129 timeZone:v135 formatOptions:1907];

          v63 = sub_1A84E5DBC();
          v138 = v137;

          (*(v106 + 8))(v142, v149);
          (*(v130 + 8))(v64, v55);
          v61 = v138;
          v42 = v158;
          v62 = v194;
          goto LABEL_44;
        }

        (*(v189 + 8))(v64, v55);
      }

      else
      {

        (*(v189 + 8))(v64, v55);
        v103 = v147;
        (*(v148 + 56))(v147, 1, 1, v149);
      }

      sub_1A824B2D4(v103, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    v42 = v158;
LABEL_44:
    v51 = v160;
    v50 = v159;
    v60 = v192;
    goto LABEL_45;
  }

  sub_1A824B2D4(v59, &qword_1EB2E7068, &unk_1A8501EB0);
  v60 = v192;
  v61 = v193;
  v62 = v194;
  v63 = v163;
LABEL_45:
  v108 = v162 | v161;
  v109 = v195;
  v110 = v182;
  *v195 = v181;
  v109[1] = v110;
  v111 = v171;
  v109[2] = v50;
  v109[3] = v111;
  v112 = v190;
  v109[4] = v172;
  v109[5] = v112;
  v109[6] = v191;
  v113 = v165;
  v114 = (v109 + v165[14]);
  *v114 = v63;
  v114[1] = v61;
  *(v109 + v113[15]) = v62;
  v194 = v108 | 8;
  v115 = v188;
  v109[7] = v60;
  v109[8] = v115;
  v109[9] = v185;
  v109[10] = v42;
  sub_1A8243D74(v197, v109 + v113[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v109 + v113[11]) = 0;
  *(v109 + v113[12]) = 0;
  *(v109 + v113[13]) = 1;
  *(v109 + v113[18]) = v179;
  *(v109 + v113[16]) = v176;
  *(v109 + v113[17]) = v178;
  v116 = (v109 + v113[19]);
  v117 = v177;
  *v116 = v175;
  v116[1] = v117;
  v118 = (v109 + v113[20]);
  v119 = v174;
  *v118 = v173;
  v118[1] = v119;
  v120 = v196;
  sub_1A8243D74(v196, v109 + v113[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v109 + v113[22]) = v180;
  v121 = v183;
  v122 = *(*(v183 - 8) + 8);
  v122(v51, v183);
  v198 = v168;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v122(v164, v121);
  v198 = v169;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v122(v166, v121);
  v198 = v170;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A824B2D4(v120, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v197, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v109 + v113[23]) = v194;
  return result;
}

uint64_t ImportExport.Attachment.update(missingFileReasons:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v163 = a2;
  v200[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v156 = &v140 - v6;
  v148 = sub_1A84E5C5C();
  v147 = *(v148 - 8);
  v7 = MEMORY[0x1EEE9AC00](v148);
  v145 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v140 - v9;
  v143 = sub_1A84E577C();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v149 = &v140 - v12;
  v151 = sub_1A84E56DC();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v144 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1A84E5C9C();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1A84E558C();
  v190 = *(v192 - 8);
  v15 = MEMORY[0x1EEE9AC00](v192);
  v152 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v140 - v17;
  v162 = sub_1A84E531C();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v197 = &v140 - v23;
  v24 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v159 = (&v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v140 - v27;
  v198 = &v140 - v27;
  v185 = *a1;
  v29 = v3[1];
  v182 = *v3;
  v30 = type metadata accessor for ImportExport.Attachment(0);
  sub_1A8243D74(v3 + v30[10], v28, &qword_1EB2E7068, &unk_1A8501EB0);
  v31 = v3[6];
  v191 = v3[5];
  v158 = v31;
  v32 = v3[4];
  v172 = v3[3];
  v33 = v3[8];
  v193 = v3[7];
  v34 = v3[10];
  v187 = v3[9];
  v35 = v30[14];
  v196 = *(v3 + v30[15]);
  v36 = (v3 + v35);
  v37 = v30[19];
  v180 = *(v3 + v30[18]);
  v38 = v30[17];
  v177 = *(v3 + v30[16]);
  v179 = *(v3 + v38);
  v39 = v36[1];
  v195 = *v36;
  v40 = *(v3 + v37 + 8);
  v176 = *(v3 + v37);
  v41 = (v3 + v30[20]);
  v42 = v41[1];
  v174 = *v41;
  v181 = *(v3 + v30[22]);
  v175 = v42;

  v183 = v29;

  v173 = v32;

  v189 = v33;
  v43 = v163;

  v194 = v34;

  v44 = v39;

  v178 = v40;

  v45 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v168 = v200[0];
  sub_1A84E595C();
  v170 = v200[0];
  v184 = v45;
  v46 = v192;
  sub_1A84E595C();
  v171 = v200[0];
  sub_1A8243D74(v3 + v30[21], v197, &qword_1EB2E7348, &qword_1A8504400);
  v164 = v3[2];
  v47 = v43 + v30[24];
  v200[0] = 0;
  sub_1A84E5B8C();
  v48 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v167 = v47;
  sub_1A84E594C();
  v49 = v43 + v30[25];
  v200[0] = 0;
  sub_1A84E5B8C();
  v165 = v49;
  sub_1A84E594C();
  v50 = v43 + v30[26];
  v200[0] = 0;
  sub_1A84E5B8C();
  v166 = v50;
  v186 = v21;
  v169 = v48;
  sub_1A84E594C();
  v200[0] = v191;
  v200[1] = v158;
  v51 = v160;
  sub_1A84E530C();
  sub_1A840D3B0();
  v191 = sub_1A84E636C();
  v53 = v52;
  v54 = v51;
  v55 = v159;
  (*(v161 + 8))(v54, v162);
  v56 = v190;
  sub_1A8243D74(v198, v55, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v56 + 48))(v55, 1, v46) != 1)
  {
    v62 = v157;
    (*(v56 + 32))(v157, v55, v46);
    v59 = v189;
    v60 = v44;
    if (v196 && v194)
    {
      v63 = v195 & 0xFFFFFFFFFFFFLL;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v63 = HIBYTE(v44) & 0xF;
      }

      if (v63)
      {
        v64 = HIBYTE(v189) & 0xF;
        if ((v189 & 0x2000000000000000) == 0)
        {
          v64 = v193 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65 = v193;
          v66 = v62;
          v67 = v194;
          (*(v56 + 8))(v66, v46);
          v58 = v67;
          v57 = v65;
          v61 = v196;
          goto LABEL_53;
        }
      }
    }

    v160 = (HIBYTE(v44) & 0xF);
    v162 = v53;
    v161 = v44;
    v68 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v69 = v62;
    v70 = sub_1A84E5D8C();

    v200[0] = 0;
    v71 = [v68 attributesOfItemAtPath:v70 error:v200];

    v72 = v200[0];
    if (v71)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey, &unk_1A85003DC);
      v73 = sub_1A84E5D3C();
      v74 = v72;

      v75 = HIBYTE(v162) & 0xF;
      if ((v162 & 0x2000000000000000) == 0)
      {
        v75 = v191 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v76 = v157;
      }

      else
      {

        v76 = v157;
        v191 = sub_1A84E550C();
        v162 = v95;
      }

      v60 = v161;
      v96 = v156;
      if (*(v73 + 16) && (v97 = sub_1A8490560(), (v98 & 1) != 0) && (sub_1A8244F40(*(v73 + 56) + 32 * v97, v200), swift_dynamicCast()))
      {
        sub_1A84E5C4C();
        sub_1A84E5C2C();
        v99 = v147;
        v100 = v148;
        if ((*(v147 + 48))(v96, 1, v148) == 1)
        {
          sub_1A824B2D4(v96, &qword_1EB2E7340, &qword_1A8501EF8);
          v76 = v157;
          v61 = v196;
        }

        else
        {
          (*(v99 + 32))(v146, v96, v100);
          v105 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v105 = v193 & 0xFFFFFFFFFFFFLL;
          }

          v61 = v196;
          if (!v105)
          {
            v193 = sub_1A84E5C1C();
            v107 = v106;

            v59 = v107;
            v61 = v196;
          }

          v76 = v157;
          v108 = v194;
          if (!v194)
          {
            v109 = sub_1A84E5C3C();
            v61 = v196;
            v187 = v109;
          }

          v194 = v108;
          (*(v147 + 8))(v146, v148);
        }
      }

      else
      {
        v61 = v196;
      }

      v101 = v160;
      if (!v61)
      {
        if (*(v73 + 16) && (v102 = sub_1A8490560(), v101 = v160, (v103 & 1) != 0))
        {
          sub_1A8244F40(*(v73 + 56) + 32 * v102, v200);
          if (swift_dynamicCast())
          {
            v61 = v199;
          }

          else
          {
            v61 = 0;
          }

          v101 = v160;
        }

        else
        {
          v61 = 0;
        }
      }

      v110 = v195 & 0xFFFFFFFFFFFFLL;
      if ((v60 & 0x2000000000000000) != 0)
      {
        v110 = v101;
      }

      if (v110)
      {
        (*(v190 + 8))(v76, v192);
      }

      else
      {
        if (*(v73 + 16) && (v196 = v61, v111 = sub_1A8490560(), v61 = v196, (v112 & 1) != 0))
        {
          sub_1A8244F40(*(v73 + 56) + 32 * v111, v200);

          v113 = v149;
          v114 = v151;
          v115 = swift_dynamicCast();
          v116 = v150;
          (*(v150 + 56))(v113, v115 ^ 1u, 1, v114);
          if ((*(v116 + 48))(v113, 1, v114) != 1)
          {
            (*(v116 + 32))(v144, v113, v114);
            v189 = objc_opt_self();
            v195 = sub_1A84E565C();
            v129 = v116;
            if (qword_1EB2E5990 != -1)
            {
              swift_once();
            }

            v130 = v143;
            v131 = sub_1A824431C(v143, qword_1EB2E7FC8);
            swift_beginAccess();
            v132 = v142;
            v133 = v141;
            (*(v142 + 16))(v141, v131, v130);
            v134 = sub_1A84E576C();
            (*(v132 + 8))(v133, v130);
            v135 = v195;
            v136 = v134;
            v137 = [v189 stringFromDate:v195 timeZone:v134 formatOptions:1907];

            v195 = sub_1A84E5DBC();
            v139 = v138;

            (*(v129 + 8))(v144, v151);
            (*(v190 + 8))(v157, v192);
            v60 = v139;
            v61 = v196;
            goto LABEL_52;
          }

          (*(v190 + 8))(v76, v192);
        }

        else
        {

          (*(v190 + 8))(v76, v192);
          v113 = v149;
          (*(v150 + 56))(v149, 1, 1, v151);
        }

        sub_1A824B2D4(v113, &qword_1EB2E6F48, &unk_1A8501F00);
      }
    }

    else
    {
      v77 = v200[0];
      v78 = sub_1A84E548C();

      v160 = v78;
      swift_willThrow();
      v188 = 0;
      v79 = v155;
      sub_1A84E5C8C();
      v80 = v152;
      v81 = v192;
      (*(v56 + 16))(v152, v69, v192);
      v82 = sub_1A84E5C7C();
      v83 = sub_1A84E619C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v200[0] = v159;
        *v84 = 136315138;
        v158 = v82;
        v85 = sub_1A84E555C();
        v86 = v81;
        v88 = v87;
        v89 = *(v56 + 8);
        v90 = v80;
        v91 = v86;
        v89(v90, v86);
        v92 = sub_1A82446BC(v85, v88, v200);

        *(v84 + 4) = v92;
        v93 = v158;
        _os_log_impl(&dword_1A823F000, v158, v83, "Failed to get file attributes for file ath path: %s", v84, 0xCu);
        v94 = v159;
        sub_1A8244788(v159);
        MEMORY[0x1AC56D3F0](v94, -1, -1);
        MEMORY[0x1AC56D3F0](v84, -1, -1);

        (*(v153 + 8))(v155, v154);
        v89(v157, v91);
        v57 = v193;
        v58 = v194;
        v59 = v189;
        v60 = v161;
        v61 = v196;
        v53 = v162;
        goto LABEL_53;
      }

      v104 = *(v56 + 8);
      v104(v80, v81);
      (*(v153 + 8))(v79, v154);
      v104(v69, v81);
      v59 = v189;
      v60 = v161;
      v61 = v196;
    }

LABEL_52:
    v53 = v162;
    v57 = v193;
    v58 = v194;
    goto LABEL_53;
  }

  sub_1A824B2D4(v55, &qword_1EB2E7068, &unk_1A8501EB0);
  v57 = v193;
  v58 = v194;
  v59 = v189;
  v60 = v44;
  v61 = v196;
LABEL_53:
  v117 = v183;
  *v43 = v182;
  v43[1] = v117;
  v118 = v172;
  v43[2] = v164;
  v43[3] = v118;
  v119 = v191;
  v43[4] = v173;
  v43[5] = v119;
  v43[6] = v53;
  v120 = (v43 + v30[14]);
  *v120 = v195;
  v120[1] = v60;
  *(v43 + v30[15]) = v61;
  v43[7] = v57;
  v43[8] = v59;
  v43[9] = v187;
  v43[10] = v58;
  sub_1A8243D74(v198, v43 + v30[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v43 + v30[11]) = 0;
  *(v43 + v30[12]) = 0;
  *(v43 + v30[13]) = 1;
  *(v43 + v30[18]) = v180;
  *(v43 + v30[16]) = v177;
  *(v43 + v30[17]) = v179;
  v121 = (v43 + v30[19]);
  v122 = v178;
  *v121 = v176;
  v121[1] = v122;
  v123 = (v43 + v30[20]);
  v124 = v175;
  *v123 = v174;
  v123[1] = v124;
  v125 = v197;
  sub_1A8243D74(v197, v43 + v30[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v43 + v30[22]) = v181;
  v126 = v184;
  v127 = *(*(v184 - 8) + 8);
  v127(v167, v184);
  v199 = v168;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v127(v165, v126);
  v199 = v170;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v127(v166, v126);
  v199 = v171;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A824B2D4(v125, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v198, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v43 + v30[23]) = v185;
  return result;
}

unint64_t sub_1A8412484()
{
  result = qword_1EB2E7358;
  if (!qword_1EB2E7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7358);
  }

  return result;
}

unint64_t sub_1A84124D8()
{
  result = qword_1EB2E7368;
  if (!qword_1EB2E7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7368);
  }

  return result;
}

unint64_t sub_1A841252C()
{
  result = qword_1EB2E7370;
  if (!qword_1EB2E7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7370);
  }

  return result;
}

uint64_t sub_1A8412580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A84125E8()
{
  result = qword_1EB2E7388;
  if (!qword_1EB2E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7388);
  }

  return result;
}

uint64_t sub_1A841263C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A841269C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8412704(void *a1)
{
  a1[1] = sub_1A8412804(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  a1[2] = sub_1A8412804(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  result = sub_1A8412804(&qword_1EB2E73A8, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  a1[3] = result;
  return result;
}

uint64_t sub_1A8412804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A8412850()
{
  result = qword_1EB2E73B8;
  if (!qword_1EB2E73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73B8);
  }

  return result;
}

unint64_t sub_1A84128A8()
{
  result = qword_1EB2E73C0;
  if (!qword_1EB2E73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73C0);
  }

  return result;
}

unint64_t sub_1A8412900()
{
  result = qword_1EB2E73C8;
  if (!qword_1EB2E73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73C8);
  }

  return result;
}

unint64_t sub_1A8412958()
{
  result = qword_1EB2E73D0;
  if (!qword_1EB2E73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73D0);
  }

  return result;
}

void sub_1A84129D4(uint64_t a1)
{
  sub_1A8412B38();
  if (v1 <= 0x3F)
  {
    sub_1A8412B88(319, &qword_1EB2E73F0, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1A8412B88(319, &qword_1EB2E73F8, type metadata accessor for ImportExport.AttachmentDownloadError);
      if (v3 <= 0x3F)
      {
        sub_1A8412BDC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A8412B38()
{
  if (!qword_1EB2E73E8)
  {
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E73E8);
    }
  }
}

void sub_1A8412B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A84E633C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A8412BDC(uint64_t a1)
{
  if (!qword_1EB2E7400)
  {
    sub_1A83EC9D4(&unk_1EB2E8780, &qword_1A8502930);
    v1 = sub_1A84E598C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E7400);
    }
  }
}

uint64_t _s10AttachmentV18MissingFileReasonsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AttachmentV18MissingFileReasonsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A8412CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A8412CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A8412D6C()
{
  result = qword_1EB2E7408;
  if (!qword_1EB2E7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7408);
  }

  return result;
}

unint64_t sub_1A8412DC4()
{
  result = qword_1EB2E7410;
  if (!qword_1EB2E7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7410);
  }

  return result;
}

unint64_t sub_1A8412E1C()
{
  result = qword_1EB2E7418;
  if (!qword_1EB2E7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7418);
  }

  return result;
}

uint64_t sub_1A8412E70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x68746150656C6966 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85302E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530300 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6E776F44736177 && a2 == 0xED0000646564616FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656B636974537369 && a2 == 0xE900000000000072 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8530320 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696F6774754F7369 && a2 == 0xEA0000000000676ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530340 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8530360 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED0000726F727245 || (sub_1A84E67AC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530380 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85303A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85303C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x5572656B63697473 && a2 == 0xEF6F666E49726573 || (sub_1A84E67AC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6F666E496E6F69)
  {

    return 22;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

_BYTE *ImportExport.Message.LayoutDescriptor.init(layoutIntent:associatedLayoutIntent:parentPreviewWidth:scalar:scale:rotation:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, double a5@<D1>, double a6@<D2>, float a7@<S3>, float a8@<S4>)
{
  v8 = *a2;
  *a3 = *result;
  *(a3 + 1) = v8;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 28) = a8;
  return result;
}

void sub_1A841360C()
{
  word_1EB2E7420 = 2570;
  unk_1EB2E7424 = 0;
  xmmword_1EB2E742C = 0uLL;
  dword_1EB2E743C = 0;
}

double static ImportExport.Message.LayoutDescriptor.tapback.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5950 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EB2E7424;
  *a1 = word_1EB2E7420;
  *(a1 + 4) = v1;
  *(a1 + 8) = unk_1EB2E7428;
  result = *(&xmmword_1EB2E742C + 12);
  *(a1 + 24) = *(&xmmword_1EB2E742C + 12);
  return result;
}

void sub_1A84136B0()
{
  word_1EB2E7440 = 2560;
  unk_1EB2E7444 = 0;
  xmmword_1EB2E744C = 0uLL;
  dword_1EB2E745C = 0;
}

double static ImportExport.Message.LayoutDescriptor.unknown.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5958 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EB2E7444;
  *a1 = word_1EB2E7440;
  *(a1 + 4) = v1;
  *(a1 + 8) = unk_1EB2E7448;
  result = *(&xmmword_1EB2E744C + 12);
  *(a1 + 24) = *(&xmmword_1EB2E744C + 12);
  return result;
}

uint64_t sub_1A8413758()
{
  v1 = *v0;
  v2 = 0x6E4974756F79616CLL;
  v3 = 0x72616C616373;
  v4 = 0x656C616373;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_1A8413820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8414950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8413848(uint64_t a1)
{
  v2 = sub_1A84144B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8413884(uint64_t a1)
{
  v2 = sub_1A84144B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.LayoutDescriptor.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7460, &qword_1A8502540);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  HIDWORD(v12) = v1[1];
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84144B0();
  sub_1A84E68AC();
  LOBYTE(v13) = v8;
  v15 = 0;
  sub_1A8414504();
  sub_1A84E672C();
  if (!v2)
  {
    LOBYTE(v13) = BYTE4(v12);
    v15 = 1;
    sub_1A84E672C();
    LOBYTE(v13) = 2;
    sub_1A84E66FC();
    v13 = v9;
    v14 = v10;
    v15 = 3;
    type metadata accessor for CGPoint(0);
    sub_1A84145AC(&qword_1EB2E7478, MEMORY[0x1E695EFA8]);
    sub_1A84E672C();
    LOBYTE(v13) = 4;
    sub_1A84E66FC();
    LOBYTE(v13) = 5;
    sub_1A84E66FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ImportExport.Message.LayoutDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7480, &qword_1A8502548);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84144B0();
  sub_1A84E689C();
  if (!v2)
  {
    v23 = 0;
    sub_1A8414558();
    sub_1A84E666C();
    v9 = v21;
    v23 = 1;
    sub_1A84E666C();
    v10 = v21;
    LOBYTE(v21) = 2;
    sub_1A84E663C();
    v12 = v11;
    type metadata accessor for CGPoint(0);
    v23 = 3;
    sub_1A84145AC(&qword_1EB2E7490, MEMORY[0x1E695EFC0]);
    sub_1A84E666C();
    v13 = v21;
    v14 = v22;
    LOBYTE(v21) = 4;
    sub_1A84E663C();
    v17 = v16;
    LOBYTE(v21) = 5;
    sub_1A84E663C();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v10;
    *(a2 + 4) = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v17;
    *(a2 + 28) = v19;
  }

  return sub_1A8244788(a1);
}

uint64_t ImportExport.Message.LayoutDescriptor.description.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8502530);
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85303E0);
  v0 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v0);

  MEMORY[0x1AC56A990](0xD00000000000001ALL, 0x80000001A8530400);
  v1 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530420);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](0x72616C616373202CLL, 0xEA0000000000203ALL);
  type metadata accessor for CGPoint(0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0x3A656C616373202CLL, 0xE900000000000020);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](0x697461746F72202CLL, 0xEC000000203A6E6FLL);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      return 0x7466654C706F74;
    case 2:
      return 0x7468676952706F74;
    case 3:
      v3 = 0x6D6F74746F62;
      return v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
    case 4:
      v2 = 0x6D6F74746F62;
      goto LABEL_7;
    case 5:
      return 0x7265746E6563;
    case 6:
      return 0x6F547265746E6563;
    case 7:
      return 0x6F427265746E6563;
    case 8:
      v3 = 0x7265746E6563;
      return v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
    case 9:
      v2 = 0x7265746E6563;
LABEL_7:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6952000000000000;
      break;
    case 0xA:
      result = 0x6B636162706174;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x5272656B63697473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 13;
  if (result < 0xD)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.description.getter()
{
  strcpy(v2, "LayoutIntent: ");
  v0 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v0);

  return v2[0];
}

uint64_t sub_1A84143D8()
{
  strcpy(v2, "LayoutIntent: ");
  v0 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v0);

  return v2[0];
}

BOOL _s6IMCore12ImportExportO7MessageV16LayoutDescriptorV2eeoiySbAG_AGtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 1) == *(a2 + 1) && a1[1] == a2[1] && a1[2] == a2[2] && *(a1 + 6) == *(a2 + 6))
  {
    return *(a1 + 7) == *(a2 + 7);
  }

  return result;
}

unint64_t sub_1A84144B0()
{
  result = qword_1EB2E7468;
  if (!qword_1EB2E7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7468);
  }

  return result;
}

unint64_t sub_1A8414504()
{
  result = qword_1EB2E7470;
  if (!qword_1EB2E7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7470);
  }

  return result;
}

unint64_t sub_1A8414558()
{
  result = qword_1EB2E7488;
  if (!qword_1EB2E7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7488);
  }

  return result;
}

uint64_t sub_1A84145AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A84145F0()
{
  result = qword_1EB2E7498;
  if (!qword_1EB2E7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7498);
  }

  return result;
}

__n128 sub_1A8414644(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8414650(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && a1[32])
  {
    return (*a1 + 244);
  }

  v3 = *a1;
  v4 = v3 >= 0xD;
  v5 = v3 - 13;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A8414694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

uint64_t _s16LayoutDescriptorV12LayoutIntentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16LayoutDescriptorV12LayoutIntentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A841484C()
{
  result = qword_1EB2E74A0;
  if (!qword_1EB2E74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74A0);
  }

  return result;
}

unint64_t sub_1A84148A4()
{
  result = qword_1EB2E74A8;
  if (!qword_1EB2E74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74A8);
  }

  return result;
}

unint64_t sub_1A84148FC()
{
  result = qword_1EB2E74B0;
  if (!qword_1EB2E74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74B0);
  }

  return result;
}

uint64_t sub_1A8414950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4974756F79616CLL && a2 == 0xEC000000746E6574;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8530460 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530480 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A8414B58()
{
  result = qword_1EB2E74B8;
  if (!qword_1EB2E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74B8);
  }

  return result;
}

uint64_t sub_1A8414BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v27 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    do
    {
      sub_1A8420890(v13, v10, type metadata accessor for ImportExport.AttachmentDownloadError);
      sub_1A8420890(v14, v7, type metadata accessor for ImportExport.AttachmentDownloadError);
      v17 = *v10;
      v18 = 0x74754F64656D6974;
      if (v17 != 2)
      {
        v18 = 0x46676E697373696DLL;
      }

      v19 = 0xEB00000000656C69;
      if (v17 == 2)
      {
        v19 = 0xE800000000000000;
      }

      v20 = 0xD000000000000012;
      if (!*v10)
      {
        v20 = 0x6E776F6E6B6E75;
      }

      v21 = 0xE700000000000000;
      if (*v10)
      {
        v21 = 0x80000001A852EE70;
      }

      if (*v10 <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (*v10 <= 1u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (*v7 > 1u)
      {
        if (*v7 == 2)
        {
          v24 = 0xE800000000000000;
          if (v22 != 0x74754F64656D6974)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v24 = 0xEB00000000656C69;
          if (v22 != 0x46676E697373696DLL)
          {
            goto LABEL_33;
          }
        }
      }

      else if (*v7)
      {
        v24 = 0x80000001A852EE70;
        if (v22 != 0xD000000000000012)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v22 != 0x6E776F6E6B6E75)
        {
          goto LABEL_33;
        }
      }

      if (v23 == v24)
      {

        goto LABEL_34;
      }

LABEL_33:
      v25 = sub_1A84E67AC();

      if ((v25 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_34:
      if (*(v10 + 3) != *(v7 + 3) || (*(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5)) && (sub_1A84E67AC() & 1) == 0)
      {
LABEL_42:
        sub_1A84208F8(v7, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v10, type metadata accessor for ImportExport.AttachmentDownloadError);
        return 0;
      }

      if (*(v10 + 1) == *(v7 + 1) && *(v10 + 2) == *(v7 + 2))
      {
        sub_1A84208F8(v7, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v10, type metadata accessor for ImportExport.AttachmentDownloadError);
      }

      else
      {
        v16 = sub_1A84E67AC();
        sub_1A84208F8(v7, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v10, type metadata accessor for ImportExport.AttachmentDownloadError);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return 1;
}

uint64_t sub_1A8414F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 18)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A84E67AC() & 1) == 0)
      {
        break;
      }

      v3 += 18;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t ImportExport.Conversation.update(groupPhoto:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v4 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v42 - v7;
  v8 = *v2;
  v53 = v2[1];
  v54 = v8;
  v9 = v2[2];
  v52 = v2[3];
  v42 = v2[4];
  v50 = *(v2 + 40);
  v10 = v2[6];
  v43 = v2[7];
  v44 = v9;
  v11 = v2[9];
  v48 = v2[8];
  v49 = v10;
  v12 = *(v2 + 13);
  v72 = *(v2 + 12);
  v73 = v12;
  v74 = *(v2 + 14);
  v13 = *(v2 + 9);
  v68 = *(v2 + 8);
  v69 = v13;
  v14 = *(v2 + 11);
  v70 = *(v2 + 10);
  v71 = v14;
  v15 = *(v2 + 7);
  v66 = *(v2 + 6);
  v67 = v15;
  v46 = v2[30];
  LODWORD(v10) = *(v2 + 248);
  v62 = *(v2 + 272);
  v56 = *(v2 + 273);
  v57 = v10;
  v16 = v2[36];
  v55 = v2[35];
  v17 = v2[40];
  v59 = v2[39];
  v18 = type metadata accessor for ImportExport.Conversation(0);
  v51 = *(v18 + 84);
  v60 = v17;

  v19 = v42;

  v20 = v43;

  v58 = v16;

  v51 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v47 = v64[0];
  sub_1A8415BC8(v61, v75);
  v61 = v18;
  v21 = *(v18 + 84);
  v64[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v22 = v53;
  *a2 = v54;
  *(a2 + 8) = v22;
  v23 = v52;
  *(a2 + 16) = v44;
  *(a2 + 24) = v23;
  *(a2 + 32) = v19;
  *(a2 + 40) = v50;
  v24 = v48;
  *(a2 + 48) = v49;
  *(a2 + 56) = v20;
  *(a2 + 64) = v24;
  *(a2 + 72) = v11;
  v25 = v73;
  *(a2 + 192) = v72;
  *(a2 + 208) = v25;
  *(a2 + 224) = v74;
  v26 = v69;
  *(a2 + 128) = v68;
  *(a2 + 144) = v26;
  v27 = v71;
  *(a2 + 160) = v70;
  *(a2 + 176) = v27;
  v28 = v67;
  *(a2 + 96) = v66;
  *(a2 + 112) = v28;
  v65 = v46;
  sub_1A8400E7C(&v66, v64);

  v29 = v63;
  sub_1A841D43C(&v65);
  if (v29)
  {
    goto LABEL_23;
  }

  *(a2 + 240) = v65;
  v30 = v56;
  *(a2 + 248) = v57;
  v31 = v62;
  *(a2 + 272) = v62;
  *(a2 + 273) = v30;
  v32 = v58;
  v33 = v59;
  *(a2 + 280) = v55;
  *(a2 + 288) = v32;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v34 = v60;
  *(a2 + 312) = v33;
  *(a2 + 320) = v34;
  (*(*(v51 - 8) + 8))(a2 + v21);
  v64[0] = v47;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v35 = v75;
  sub_1A8415BC8(v75, a2 + *(v61 + 80));
  if ((*(&v67 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(&v67 + 1) >= *(v67 + 16))
  {
LABEL_22:
    __break(1u);
LABEL_23:

    __break(1u);
    return result;
  }

  v36 = v35;
  v37 = v67 + (*(&v67 + 1) << 7);
  v38 = *(v37 + 48);
  *(a2 + 80) = *(v37 + 40);
  *(a2 + 88) = v38;
  if (v31 > 3)
  {
    if (v31 > 5)
    {
      if (v31 == 6)
      {
        v39 = 0xE300000000000000;
        v40 = 5456722;
      }

      else
      {
        v39 = 0xEC000000534D5365;
        v40 = 0x74696C6C65746153;
      }
    }

    else if (v31 == 4)
    {
      v40 = 5459283;
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = 0xE800000000000000;
      v40 = 0x656D695465636146;
    }
  }

  else if (v31 > 1)
  {
    if (v31 == 2)
    {
      v39 = 0xE800000000000000;
    }

    else
    {
      v39 = 0xEC0000006574694CLL;
    }

    v40 = 0x6567617373654D69;
  }

  else if (v31)
  {
    v39 = 0xE300000000000000;
    v40 = 7958113;
  }

  else
  {
    v39 = 0xE700000000000000;
    v40 = 0x6E776F6E6B6E75;
  }

  result = sub_1A824B2D4(v36, &qword_1EB2E6F50, &unk_1A8502920);
  *(a2 + 256) = v40;
  *(a2 + 264) = v39;
  return result;
}

uint64_t ImportExport.Conversation.shortDescription.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x61737265766E6F43, 0xEC0000006E6F6974);
  MEMORY[0x1AC56A990](0x6975672F64690A3ALL, 0xEB00000000203A64);
  MEMORY[0x1AC56A990](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1AC56A990](0x6E6575716573203ALL, 0xEE00203A44496563);
  v1 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](0x4E70756F7267202CLL, 0xED0000203A656D61);

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v2 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85304A0);
  if (*(v0 + 40))
  {
    v3 = 0x7564697669646E69;
  }

  else
  {
    v3 = 0x70756F7267;
  }

  if (*(v0 + 40))
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v3, v4);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85304C0);
  v5 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85304E0);
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0x6369767265730A2CLL, 0xEF203A6570795465);
  v7 = *(v0 + 272);
  if (v7 > 3)
  {
    if (*(v0 + 272) > 5u)
    {
      if (v7 == 6)
      {
        v8 = 0xE300000000000000;
        v9 = 5456722;
      }

      else
      {
        v8 = 0xEC000000534D5365;
        v9 = 0x74696C6C65746153;
      }
    }

    else if (v7 == 4)
    {
      v9 = 5459283;
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x656D695465636146;
    }
  }

  else if (*(v0 + 272) > 1u)
  {
    if (v7 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xEC0000006574694CLL;
    }

    v9 = 0x6567617373654D69;
  }

  else if (*(v0 + 272))
  {
    v8 = 0xE300000000000000;
    v9 = 7958113;
  }

  else
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC56A990](v9, v8);

  return 0;
}

uint64_t ImportExport.Conversation.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImportExport.Conversation.conversationIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImportExport.Conversation.groupID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImportExport.Conversation.groupName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

BOOL ImportExport.Conversation.hasGroupName.getter()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t ImportExport.Conversation.account.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ImportExport.Conversation.accountParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v20 = v1[12];
  v21 = v3;
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[7];
  v6 = v1[9];
  v16 = v1[8];
  v7 = v16;
  v17 = v6;
  v8 = v1[9];
  v9 = v1[11];
  v18 = v1[10];
  v10 = v18;
  v19 = v9;
  v11 = v1[7];
  v15[0] = v1[6];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[14];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_1A8400E7C(v15, &v14);
}

uint64_t ImportExport.Conversation.serviceTypeString.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

uint64_t ImportExport.Conversation.lastAddressUsedForSelf.getter()
{
  v1 = *(v0 + 280);

  return v1;
}

uint64_t ImportExport.Conversation.rcsGroupIdentifier.getter()
{
  v1 = *(v0 + 296);

  return v1;
}

uint64_t ImportExport.Conversation.rcsGroupURI.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

uint64_t ImportExport.Conversation.groupPhoto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.Conversation(0) + 80);

  return sub_1A8415BC8(v3, a1);
}

uint64_t ImportExport.Conversation.properties.getter()
{
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

uint64_t type metadata accessor for ImportExport.Conversation(uint64_t a1)
{
  result = qword_1EB2E7640;
  if (!qword_1EB2E7640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8415BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1A8415C38@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A8415CA0(uint64_t *a1)
{
  type metadata accessor for ImportExport.Conversation(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Conversation.$properties.getter()
{
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, NSObject *a8@<X7>, uint64_t a9@<X8>, NSObject *a10, uint64_t a11, void *a12, void *a13, NSObject *a14, char a15, unsigned __int8 *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v248 = a6;
  v249 = a8;
  v261 = a7;
  v262 = a5;
  v247 = a4;
  v256 = a9;
  v266 = a18;
  v22 = a12;
  v276 = a11;
  v268 = a10;
  v23 = &v282;
  v265 = a17;
  v250 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v250);
  v244 = &v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v246 = &v243 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v259 = &v243 - v28;
  v277 = sub_1A84E5C9C();
  v29 = MEMORY[0x1EEE9AC00](v277);
  v255 = &v243 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v251 = &v243 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v243 = &v243 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v243 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v40 = a1[7];
  v315 = a1[6];
  v316 = v40;
  v317 = a1[8];
  v41 = a1[3];
  v311 = a1[2];
  v312 = v41;
  v42 = a1[5];
  v313 = a1[4];
  v314 = v42;
  v43 = a1[1];
  v309 = *a1;
  v310 = v43;
  v260 = *a3;
  v44 = *a16;
  v45 = a2;
  v46 = *(a2 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  v257 = v39;
  v318 = a2;
  v273 = a12;
  v278 = v46;
  v258 = a14;
  v245 = v44;
  if (!v46)
  {
LABEL_57:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_58;
  }

  v48 = 0;
  v279 = v45 + 32;
  v274 = 0x80000001A8530540;
  v275 = 0x80000001A852FB30;
  v270 = &v243 - v38;
  v271 = (v39 + 8);
  *&v43 = 136315394;
  v263 = v43;
  v272 = v37;
  do
  {
    v49 = (v279 + 144 * v48);
    v50 = v49[7];
    v306 = v49[6];
    v307 = v50;
    v308 = v49[8];
    v51 = v49[3];
    v302 = v49[2];
    v303 = v51;
    v52 = v49[5];
    v304 = v49[4];
    v305 = v52;
    v53 = v49[1];
    v300 = *v49;
    v301 = v53;
    v54._rawValue = v53;
    if (!v22)
    {
      sub_1A8400E7C(&v300, &v291);
      goto LABEL_14;
    }

    v55 = v49[7];
    v297 = v49[6];
    v298 = v55;
    v299 = v49[8];
    v56 = v49[3];
    v293 = v49[2];
    v294 = v56;
    v57 = v49[5];
    v295 = v49[4];
    v296 = v57;
    v58 = v49[1];
    v291 = *v49;
    v292 = v58;

    sub_1A8400E7C(&v300, &v282);

    v59.value._countAndFlagsBits = v276;
    v59.value._object = v22;
    v60 = ImportExport.Participant.contains(_:)(v59);

    if (!v60)
    {

LABEL_14:
      v297 = v315;
      v298 = v316;
      v299 = v317;
      v293 = v311;
      v294 = v312;
      v295 = v313;
      v296 = v314;
      v291 = v309;
      v292 = v310;
      if (ImportExport.Participant.contains(_:)(v54))
      {
        sub_1A84E5C8C();
        sub_1A8400E7C(&v300, &v291);
        sub_1A8400E7C(&v309, &v291);
        v74 = sub_1A84E5C7C();
        v75 = sub_1A84E617C();
        sub_1A8400ED8(&v300);
        sub_1A8400ED8(&v309);
        LODWORD(v267) = v75;
        if (!os_log_type_enabled(v74, v75))
        {
          sub_1A8400ED8(&v300);

          (*v271)(v37, v277);
          v108 = v318;
          goto LABEL_46;
        }

        v254 = v74;
        v269 = v48;
        v264 = v47;
        v76 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        *&v291 = v253;
        v77 = v76;
        *v76 = v263;
        v78 = *(v54._rawValue + 2);
        if (v78)
        {
          *&v282 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v78, 0);
          v79 = v282;
          v80 = (v54._rawValue + 48);
          do
          {
            v81 = *(v80 - 1);
            v82 = *v80;
            *&v282 = v79;
            v84 = *(v79 + 16);
            v83 = *(v79 + 24);

            if (v84 >= v83 >> 1)
            {
              sub_1A83EF534((v83 > 1), v84 + 1, 1);
              v79 = v282;
            }

            *(v79 + 16) = v84 + 1;
            v85 = v79 + 16 * v84;
            *(v85 + 32) = v81;
            *(v85 + 40) = v82;
            v80 += 16;
            --v78;
          }

          while (v78);
          sub_1A8400ED8(&v300);
          v22 = v273;
        }

        else
        {
          sub_1A8400ED8(&v300);
          v79 = MEMORY[0x1E69E7CC0];
        }

        v109 = MEMORY[0x1AC56AB00](v79, MEMORY[0x1E69E6158]);
        v111 = v110;

        v112 = sub_1A82446BC(v109, v111, &v291);

        *(v77 + 1) = v112;
        *(v77 + 6) = 2080;
        v113 = v310;
        v114 = *(v310 + 16);
        if (v114)
        {
          *&v282 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v114, 0);
          v115 = v282;
          v116 = (v113 + 48);
          do
          {
            v117 = *(v116 - 1);
            v118 = *v116;
            *&v282 = v115;
            v120 = *(v115 + 16);
            v119 = *(v115 + 24);

            if (v120 >= v119 >> 1)
            {
              sub_1A83EF534((v119 > 1), v120 + 1, 1);
              v115 = v282;
            }

            *(v115 + 16) = v120 + 1;
            v121 = v115 + 16 * v120;
            *(v121 + 32) = v117;
            *(v121 + 40) = v118;
            v116 += 16;
            --v114;
          }

          while (v114);
          v22 = v273;
        }

        else
        {
          v115 = MEMORY[0x1E69E7CC0];
        }

        v122 = MEMORY[0x1AC56AB00](v115, MEMORY[0x1E69E6158]);
        v124 = v123;

        v125 = sub_1A82446BC(v122, v124, &v291);

        v126 = v77;
        *(v77 + 14) = v125;
        v127 = v254;
        _os_log_impl(&dword_1A823F000, v254, v267, "Removing participant '%s' because it contains an account address: %s", v77, 0x16u);
        v128 = v253;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v128, -1, -1);
        MEMORY[0x1AC56D3F0](v126, -1, -1);

        v37 = v272;
        (*v271)(v272, v277);
        v47 = v264;
        v23 = &v282;
        v48 = v269;
      }

      else
      {
        v86 = v48;
        isa = v47[2].isa;
        if (isa)
        {
          v88 = 0;
          v89 = 4;
          do
          {
            if (v88 >= v47[2].isa)
            {
              goto LABEL_113;
            }

            v23 = v47;
            v291 = *&v47[v89].isa;
            v90 = *&v47[v89 + 2].isa;
            v91 = *&v47[v89 + 4].isa;
            v92 = *&v47[v89 + 8].isa;
            v294 = *&v47[v89 + 6].isa;
            v295 = v92;
            v292 = v90;
            v293 = v91;
            v93 = *&v47[v89 + 10].isa;
            v94 = *&v47[v89 + 12].isa;
            v95 = *&v47[v89 + 16].isa;
            v298 = *&v47[v89 + 14].isa;
            v299 = v95;
            v296 = v93;
            v297 = v94;
            v96._rawValue = v292;
            v288 = v306;
            v289 = v307;
            v290 = v308;
            v284 = v302;
            v285 = v303;
            v286 = v304;
            v287 = v305;
            v282 = v300;
            v283 = v301;
            sub_1A8400E7C(&v291, v281);
            if (ImportExport.Participant.contains(_:)(v96))
            {

              sub_1A8400ED8(&v309);

              *&v282 = 0;
              *(&v282 + 1) = 0xE000000000000000;
              sub_1A84E646C();
              v281[0] = v282;
              MEMORY[0x1AC56A990](0xD000000000000031, 0x80000001A8530500);
              v137 = *(v54._rawValue + 2);
              if (v137)
              {
                *&v282 = MEMORY[0x1E69E7CC0];
                sub_1A83EF534(0, v137, 0);
                v138 = v282;
                v139 = (v54._rawValue + 48);
                do
                {
                  v141 = *(v139 - 1);
                  v140 = *v139;
                  *&v282 = v138;
                  v143 = *(v138 + 16);
                  v142 = *(v138 + 24);

                  if (v143 >= v142 >> 1)
                  {
                    sub_1A83EF534((v142 > 1), v143 + 1, 1);
                    v138 = v282;
                  }

                  *(v138 + 16) = v143 + 1;
                  v144 = v138 + 16 * v143;
                  *(v144 + 32) = v141;
                  *(v144 + 40) = v140;
                  v139 += 16;
                  --v137;
                }

                while (v137);
                sub_1A8400ED8(&v300);
              }

              else
              {
                sub_1A8400ED8(&v300);

                v138 = MEMORY[0x1E69E7CC0];
              }

              v145 = MEMORY[0x1AC56AB00](v138, MEMORY[0x1E69E6158]);
              v147 = v146;

              MEMORY[0x1AC56A990](v145, v147);

              MEMORY[0x1AC56A990](8250, 0xE200000000000000);
              v288 = v297;
              v289 = v298;
              v290 = v299;
              v284 = v293;
              v285 = v294;
              v286 = v295;
              v287 = v296;
              v282 = v291;
              v283 = v292;
              v148 = ImportExport.Participant.description.getter();
              v150 = v149;
              sub_1A8400ED8(&v291);
              MEMORY[0x1AC56A990](v148, v150);

              v151 = v281[0];
              sub_1A841D4A8();
              v152 = swift_allocError();
              *v153 = v151;
              *(v153 + 16) = 0;
LABEL_62:
              v170 = v255;
              swift_willThrow();
              sub_1A84E5C8C();
              v171 = v152;
              v172 = sub_1A84E5C7C();
              v173 = sub_1A84E619C();

              if (os_log_type_enabled(v172, v173))
              {
                v174 = swift_slowAlloc();
                v175 = swift_slowAlloc();
                *v174 = 138412290;
                v176 = v152;
                v177 = _swift_stdlib_bridgeErrorToNSError();
                *(v174 + 4) = v177;
                *v175 = v177;
                _os_log_impl(&dword_1A823F000, v172, v173, "Failed to create conversation with error: %@", v174, 0xCu);
                sub_1A824B2D4(v175, &unk_1EB2E9070, &unk_1A8501A90);
                MEMORY[0x1AC56D3F0](v175, -1, -1);
                MEMORY[0x1AC56D3F0](v174, -1, -1);
              }

              (*(v257 + 8))(v170, v277);
              swift_willThrow();
              return sub_1A824B2D4(v266, &qword_1EB2E6F50, &unk_1A8502920);
            }

            v88 = (v88 + 1);
            sub_1A8400ED8(&v291);
            v89 += 18;
            v47 = v23;
          }

          while (isa != v88);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1A83EF36C(0, v47[2].isa + 1, 1, v47);
        }

        v37 = v272;
        v22 = v273;
        v48 = v86;
        v97 = v47;
        v98 = v47[2].isa;
        v99 = v97;
        v100 = v97[3].isa;
        v23 = &v282;
        if (v98 >= v100 >> 1)
        {
          v99 = sub_1A83EF36C((v100 > 1), v98 + 1, 1, v99);
        }

        *(v99 + 2) = v98 + 1;
        v101 = &v99[144 * v98];
        v47 = v99;
        *(v101 + 2) = v300;
        v102 = v301;
        v103 = v302;
        v104 = v304;
        *(v101 + 5) = v303;
        *(v101 + 6) = v104;
        *(v101 + 3) = v102;
        *(v101 + 4) = v103;
        v105 = v305;
        v106 = v306;
        v107 = v308;
        *(v101 + 9) = v307;
        *(v101 + 10) = v107;
        *(v101 + 7) = v105;
        *(v101 + 8) = v106;
      }

      goto LABEL_45;
    }

    v61 = v270;
    sub_1A84E5C8C();
    sub_1A8400E7C(&v300, &v291);

    v62 = sub_1A84E5C7C();
    v63 = sub_1A84E617C();
    sub_1A8400ED8(&v300);

    LODWORD(v267) = v63;
    if (!os_log_type_enabled(v62, v63))
    {

      sub_1A8400ED8(&v300);

      (*v271)(v61, v277);
      v108 = v318;
      v37 = v272;
      goto LABEL_46;
    }

    v264 = v62;
    v64 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    v254 = v64;
    *&v291 = v253;
    LODWORD(v64->isa) = v263;
    v65 = *(v54._rawValue + 2);
    if (v65)
    {
      v269 = v48;
      v66 = v47;
      *&v282 = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v65, 0);
      v67 = v282;
      v68 = (v54._rawValue + 48);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;
        *&v282 = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);

        if (v72 >= v71 >> 1)
        {
          sub_1A83EF534((v71 > 1), v72 + 1, 1);
          v67 = v282;
        }

        *(v67 + 16) = v72 + 1;
        v73 = v67 + 16 * v72;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
        v68 += 16;
        --v65;
      }

      while (v65);
      sub_1A8400ED8(&v300);
      v47 = v66;
      v23 = &v282;
      v22 = v273;
      v48 = v269;
    }

    else
    {
      sub_1A8400ED8(&v300);
      v67 = MEMORY[0x1E69E7CC0];
    }

    v129 = MEMORY[0x1AC56AB00](v67, MEMORY[0x1E69E6158]);
    v131 = v130;

    v132 = sub_1A82446BC(v129, v131, &v291);

    v133 = v254;
    *(&v254->isa + 4) = v132;
    WORD2(v133[1].isa) = 2080;
    v134 = sub_1A82446BC(v276, v22, &v291);

    *(&v133[1].isa + 6) = v134;
    v135 = v264;
    _os_log_impl(&dword_1A823F000, v264, v267, "Removing participant '%s' because it contains the lastAddressUsedForSelf: %s", v133, 0x16u);
    v136 = v253;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v136, -1, -1);
    MEMORY[0x1AC56D3F0](v133, -1, -1);

    (*v271)(v270, v277);
    v37 = v272;
LABEL_45:
    v108 = v318;
LABEL_46:
    if (++v48 == v278)
    {
      goto LABEL_57;
    }
  }

  while (v48 < *(v108 + 2));
  while (1)
  {
    __break(1u);
LABEL_115:
    v47 = sub_1A841E114(v47);
LABEL_58:
    v154 = v47[2].isa;
    *&v300 = v47 + 4;
    *(&v300 + 1) = v154;
    v155 = v252;
    sub_1A841D4FC(&v300);
    v156 = v47[2].isa;
    if (!v156)
    {

      sub_1A8400ED8(&v309);

      sub_1A841D4A8();
      v152 = swift_allocError();
      *v169 = 0xD000000000000024;
      *(v169 + 8) = 0x80000001A8530560;
      *(v169 + 16) = 1;
      v274 = 0x80000001A8530540;
      v275 = 0x80000001A852FB30;
      goto LABEL_62;
    }

    v271 = v155;
    v264 = v47;
    v157 = &v47[18 * v156];
    *&v23[36].isa = *&v157[-14].isa;
    v158 = *&v157[-12].isa;
    v159 = *&v157[-10].isa;
    v160 = *&v157[-6].isa;
    *&v23[42].isa = *&v157[-8].isa;
    *&v23[44].isa = v160;
    *&v23[38].isa = v158;
    *&v23[40].isa = v159;
    v161 = *&v157[-4].isa;
    v162 = *&v157[-2].isa;
    v163 = *&v157[2].isa;
    *&v23[50].isa = *&v157->isa;
    *&v23[52].isa = v163;
    *&v23[46].isa = v161;
    *&v23[48].isa = v162;
    v164 = swift_allocObject();
    v165 = v156;
    v166 = v164;
    v23 = v249;
    *(v164 + 16) = v249;
    v167 = (v164 + 16);
    v47 = v268;
    *(v164 + 24) = v268;
    v279 = v165;
    v272 = v164;
    if (v165 == 1)
    {
      break;
    }

    v179 = sub_1A84E67AC();
    sub_1A8400E7C(&v300, &v291);

    v168 = v250;
    if (v179)
    {
      goto LABEL_66;
    }

    v191 = v268;
    if (!v268)
    {
      goto LABEL_74;
    }

    v47 = 0xE400000000000000;
    if (sub_1A84178A8(1952540771, 0xE400000000000000, v23, v191))
    {

LABEL_74:
      v274 = *(v166 + 24);
      if (v274)
      {
        goto LABEL_75;
      }

      goto LABEL_112;
    }

    *&v291 = 1952540771;
    *(&v291 + 1) = 0xE400000000000000;
    MEMORY[0x1AC56A990](v23, v191);

    v242 = *(&v291 + 1);
    v47 = v291;

    *(v166 + 16) = v47;
    *(v166 + 24) = v242;
    v274 = v242;
    if (v242)
    {
LABEL_75:
      v180 = *v167;
      v181 = v274;

      v183 = v180;
      goto LABEL_76;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  sub_1A8400E7C(&v300, &v291);

  v168 = v250;
LABEL_66:
  v274 = v167;
  v180 = *(&v302 + 1);
  v181 = v303;
  v183 = *(v166 + 16);
  v182 = *(v166 + 24);
  if (v182)
  {
    v278 = *(&v302 + 1);
    v275 = v303;

    v184 = v243;
    sub_1A84E5C8C();
    v185 = sub_1A84E5C7C();
    v186 = sub_1A84E617C();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v270 = swift_slowAlloc();
      *&v291 = v270;
      *v187 = 136315138;

      v188 = sub_1A82446BC(v183, v182, &v291);

      *(v187 + 4) = v188;
      _os_log_impl(&dword_1A823F000, v185, v186, "ignoring groupID '%s' for individual conversation", v187, 0xCu);
      v189 = v270;
      sub_1A8244788(v270);
      MEMORY[0x1AC56D3F0](v189, -1, -1);
      MEMORY[0x1AC56D3F0](v187, -1, -1);
    }

    (*(v257 + 8))(v184, v277);
    v190 = v274;
    swift_beginAccess();
    *v190 = xmmword_1A8502900;

    v183 = 0;
    v274 = 0xE000000000000000;
    v180 = v278;
    v181 = v275;
  }

  else
  {

    v274 = 0;
  }

LABEL_76:
  v270 = v183;
  v278 = v180;
  v192 = sub_1A84E5D8C();
  v193 = sub_1A84E5D8C();
  v194 = v279;
  v195 = IMCopyAnyServiceGUIDForChat();

  v275 = v181;
  if (!v195)
  {
    goto LABEL_118;
  }

  v267 = a19;
  LODWORD(v263) = v194 == 1;

  v196 = sub_1A84E5DBC();
  v255 = v197;

  sub_1A8415BC8(v266, v259);
  v198 = *(v168 + 84);
  *&v291 = 0;
  v199 = v258;

  v200 = v168;
  v201 = v274;

  sub_1A84E5B8C();
  v202 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v203 = v256;
  v269 = v202;
  sub_1A84E594C();
  *v203 = v267;
  *(v203 + 8) = v196;
  v204 = v278;
  *(v203 + 16) = v255;
  *(v203 + 24) = v204;
  *(v203 + 32) = v275;
  *(v203 + 40) = v263;
  *(v203 + 48) = v270;
  *(v203 + 56) = v201;
  v278 = a13;
  *(v203 + 64) = a13;
  *(v203 + 72) = v199;
  v205 = v316;
  *(v203 + 192) = v315;
  *(v203 + 208) = v205;
  *(v203 + 224) = v317;
  v206 = v312;
  *(v203 + 128) = v311;
  *(v203 + 144) = v206;
  v207 = v314;
  *(v203 + 160) = v313;
  *(v203 + 176) = v207;
  v208 = v310;
  *(v203 + 96) = v309;
  *(v203 + 112) = v208;
  v280 = v318;
  sub_1A8400E7C(&v309, &v291);

  v209 = v271;
  sub_1A841D43C(&v280);
  v193 = v209;
  if (v209)
  {
LABEL_119:

    __break(1u);
    return result;
  }

  *(v203 + 240) = v280;
  *(v203 + 248) = a15 & 1;
  *(v203 + 272) = v260;
  *(v203 + 273) = v245;
  v210 = v273;
  *(v203 + 280) = v276;
  *(v203 + 288) = v210;
  v211 = v262;
  *(v203 + 296) = v247;
  *(v203 + 304) = v211;
  v212 = v261;
  *(v203 + 312) = v248;
  *(v203 + 320) = v212;
  v213 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v213 - 8) + 8))(v203 + v198, v213);
  *&v282 = v265;

  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A8415BC8(v259, v203 + *(v200 + 80));
  if ((*(&v310 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_117;
  }

  if (*(&v310 + 1) >= *(v310 + 16))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v214 = (v310 + (*(&v310 + 1) << 7));
  v215 = v214[4];
  v216 = v214[5];
  v217 = v214[3];
  v291 = v214[2];
  v292 = v217;
  v293 = v215;
  v294 = v216;
  v218 = v214[6];
  v219 = v214[7];
  v220 = v214[9];
  v297 = v214[8];
  v298 = v220;
  v295 = v218;
  v296 = v219;
  v221 = v203;
  v222 = *(&v291 + 1);
  v223 = v217;
  sub_1A840243C(&v291, &v282);
  sub_1A8400ED8(&v309);

  sub_1A841E128(&v291);
  *(v221 + 80) = v222;
  *(v221 + 88) = v223;
  if (v260 <= 3)
  {
    v224 = v244;
    v225 = v251;
    if (v260 <= 1)
    {
      if (v260)
      {
        v226 = 0xE300000000000000;
        v227 = 7958113;
      }

      else
      {
        v226 = 0xE700000000000000;
        v227 = 0x6E776F6E6B6E75;
      }

      goto LABEL_96;
    }

    if (v260 == 2)
    {
      v226 = 0xE800000000000000;
      v227 = 0x6567617373654D69;
      goto LABEL_96;
    }

    v227 = 0x6567617373654D69;
    v228 = 1702127948;
LABEL_95:
    v226 = v228 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_96;
  }

  v224 = v244;
  v225 = v251;
  if (v260 > 5)
  {
    if (v260 == 6)
    {
      v226 = 0xE300000000000000;
      v227 = 5456722;
      goto LABEL_96;
    }

    v227 = 0x74696C6C65746153;
    v228 = 1397576549;
    goto LABEL_95;
  }

  if (v260 == 4)
  {
    v227 = 5459283;
    v226 = 0xE300000000000000;
  }

  else
  {
    v226 = 0xE800000000000000;
    v227 = 0x656D695465636146;
  }

LABEL_96:
  sub_1A824B2D4(v259, &qword_1EB2E6F50, &unk_1A8502920);
  v229 = v256;
  *(v256 + 256) = v227;
  *(v229 + 264) = v226;
  if (v279 == 1)
  {

    goto LABEL_99;
  }

  v230 = sub_1A84E67AC();

  if ((v230 & 1) == 0)
  {

    sub_1A8400ED8(&v300);
    goto LABEL_107;
  }

LABEL_99:
  sub_1A8400ED8(&v300);
  if (!v199)
  {

LABEL_107:
    sub_1A824B2D4(v266, &qword_1EB2E6F50, &unk_1A8502920);
  }

  v231 = (v199 >> 56) & 0xF;
  if ((v199 & 0x2000000000000000) == 0)
  {
    v231 = v278 & 0xFFFFFFFFFFFFLL;
  }

  if (v231)
  {
    sub_1A84E5C8C();
    sub_1A8420890(v256, v224, type metadata accessor for ImportExport.Conversation);
    v232 = v225;
    v233 = sub_1A84E5C7C();
    v234 = sub_1A84E619C();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = v224;
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *&v282 = v237;
      *v236 = 136315138;
      v238 = ImportExport.Conversation.description.getter();
      v240 = v239;
      sub_1A84208F8(v235, type metadata accessor for ImportExport.Conversation);
      v241 = sub_1A82446BC(v238, v240, &v282);

      *(v236 + 4) = v241;
      _os_log_impl(&dword_1A823F000, v233, v234, "Group names are ignored for individual conversations: %s", v236, 0xCu);
      sub_1A8244788(v237);
      MEMORY[0x1AC56D3F0](v237, -1, -1);
      MEMORY[0x1AC56D3F0](v236, -1, -1);

      sub_1A824B2D4(v266, &qword_1EB2E6F50, &unk_1A8502920);
      (*(v257 + 8))(v251, v277);
    }

    sub_1A824B2D4(v266, &qword_1EB2E6F50, &unk_1A8502920);
    sub_1A84208F8(v224, type metadata accessor for ImportExport.Conversation);
    (*(v257 + 8))(v232, v277);
  }

  else
  {
    sub_1A824B2D4(v266, &qword_1EB2E6F50, &unk_1A8502920);
  }
}

uint64_t sub_1A84178A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1A84E5EAC();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1A84E5EAC();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1A84E67AC();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1A84E5EAC();
      v7 = v9;
    }

    while (v9);
  }

  sub_1A84E5EAC();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t ImportExport.Conversation.description.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v59 - v2;
  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  sub_1A84E646C();
  v70 = v61;
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x61737265766E6F43, 0xEC0000006E6F6974);
  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530590);
  v4 = *(v0 + 208);
  v67 = *(v0 + 192);
  v68 = v4;
  v69 = *(v0 + 224);
  v5 = *(v0 + 144);
  v63 = *(v0 + 128);
  v64 = v5;
  v6 = *(v0 + 176);
  v65 = *(v0 + 160);
  v66 = v6;
  v7 = *(v0 + 112);
  v61 = *(v0 + 96);
  v62 = v7;
  v8 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A85305B0);
  if (*(v0 + 40))
  {
    v9 = 0x7564697669646E69;
  }

  else
  {
    v9 = 0x70756F7267;
  }

  if (*(v0 + 40))
  {
    v10 = 0xEA00000000006C61;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v9, v10);

  MEMORY[0x1AC56A990](0x6975672F6469202CLL, 0xEB00000000203A64);
  MEMORY[0x1AC56A990](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85305D0);
  MEMORY[0x1AC56A990](*(v0 + 24), *(v0 + 32));
  MEMORY[0x1AC56A990](0x636976726573202CLL, 0xEF203A6570795465);
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  v13 = *(v0 + 272);
  v14 = 0xE300000000000000;
  v15 = 5456722;
  if (v13 != 6)
  {
    v15 = 0x74696C6C65746153;
    v14 = 0xEC000000534D5365;
  }

  v16 = 5459283;
  v17 = 0xE300000000000000;
  if (v13 != 4)
  {
    v16 = 0x656D695465636146;
    v17 = 0xE800000000000000;
  }

  if (*(v0 + 272) <= 5u)
  {
    v15 = v16;
    v14 = v17;
  }

  v18 = 0xE800000000000000;
  if (v13 != 2)
  {
    v18 = 0xEC0000006574694CLL;
  }

  if (*(v0 + 272))
  {
    v12 = 7958113;
    v11 = 0xE300000000000000;
  }

  if (*(v0 + 272) > 1u)
  {
    v12 = 0x6567617373654D69;
    v11 = v18;
  }

  if (*(v0 + 272) <= 3u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v15;
  }

  if (*(v0 + 272) <= 3u)
  {
    v20 = v11;
  }

  else
  {
    v20 = v14;
  }

  MEMORY[0x1AC56A990](v19, v20);

  MEMORY[0x1AC56A990](0x444970756F72670ALL, 0xEA0000000000203ALL);
  v21 = *(v0 + 56);
  *&v61 = *(v0 + 48);
  *(&v61 + 1) = v21;

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v22 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v22);

  MEMORY[0x1AC56A990](0x4E70756F7267202CLL, 0xED0000203A656D61);
  v23 = *(v0 + 72);
  *&v61 = *(v0 + 64);
  *(&v61 + 1) = v23;

  v24 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v24);

  MEMORY[0x1AC56A990](0x6F7247736372202CLL, 0xEF203A4952557075);
  if (*(v0 + 320))
  {
    v25 = *(v0 + 312);
    v26 = *(v0 + 320);
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x1AC56A990](v25, v26);

  MEMORY[0x1AC56A990](0xD00000000000001ALL, 0x80000001A85305F0);
  v27 = *(v0 + 288);
  *&v61 = *(v0 + 280);
  *(&v61 + 1) = v27;

  v28 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v28);

  MEMORY[0x1AC56A990](0x6E6E69507369203ALL, 0xEC000000203A6465);
  if (*(v0 + 248))
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (*(v0 + 248))
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v29, v30);

  MEMORY[0x1AC56A990](0x7265746C6966202CLL, 0xEE00203A65707954);
  v31 = *(v0 + 273);
  v32 = 1701736302;
  v33 = 0xE400000000000000;
  v34 = 1802401130;
  v35 = 0xEE006C616E6F6974;
  v36 = 0x6F6D6F7250736D73;
  if (v31 != 3)
  {
    v36 = 0xD000000000000010;
    v35 = 0x80000001A852EB90;
  }

  if (v31 != 2)
  {
    v34 = v36;
    v33 = v35;
  }

  v37 = 0xED00007265646E65;
  if (*(v0 + 273))
  {
    v32 = 0x536E776F6E6B6E75;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  if (*(v0 + 273) <= 1u)
  {
    v38 = v32;
  }

  else
  {
    v38 = v34;
  }

  if (*(v0 + 273) <= 1u)
  {
    v39 = v37;
  }

  else
  {
    v39 = v33;
  }

  MEMORY[0x1AC56A990](v38, v39);

  MEMORY[0x1AC56A990](0x7265706F7270202CLL, 0xEE00203A73656974);
  v40 = type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  sub_1A83EA2FC(&qword_1EB2E74D0, &qword_1A8502948);
  v41 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v41);

  MEMORY[0x1AC56A990](0x5070756F7267202CLL, 0xEE00203A6F746F68);
  sub_1A8415BC8(v0 + *(v40 + 80), v3);
  v42 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v42);

  MEMORY[0x1AC56A990](0x7069636974726170, 0xEE00282073746E61);
  v43 = *(v0 + 240);
  *&v61 = *(v43 + 16);
  v44 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v44);

  MEMORY[0x1AC56A990](2112041, 0xE300000000000000);
  v45 = *(v43 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v45, 0);
    v46 = v60;
    v47 = (v43 + 32);
    do
    {
      v66 = v47[5];
      v67 = v47[6];
      v68 = v47[7];
      v69 = v47[8];
      v62 = v47[1];
      v63 = v47[2];
      v64 = v47[3];
      v65 = v47[4];
      v61 = *v47;
      v48 = ImportExport.Participant.description.getter();
      v60 = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);
      if (v51 >= v50 >> 1)
      {
        v53 = v48;
        v54 = v49;
        sub_1A83EF534((v50 > 1), v51 + 1, 1);
        v49 = v54;
        v48 = v53;
        v46 = v60;
      }

      *(v46 + 16) = v51 + 1;
      v52 = v46 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v49;
      v47 += 9;
      --v45;
    }

    while (v45);
  }

  *&v61 = v46;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v55 = sub_1A84E5D6C();
  v57 = v56;

  MEMORY[0x1AC56A990](v55, v57);

  MEMORY[0x1AC56A990](4065836, 0xE300000000000000);
  return v70;
}

unint64_t sub_1A841825C(char a1)
{
  result = 0x65636E6575716573;
  switch(a1)
  {
    case 1:
      result = 1684632935;
      break;
    case 2:
    case 13:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x444970756F7267;
      break;
    case 5:
      result = 0x6D614E70756F7267;
      break;
    case 6:
      result = 0x746E756F636361;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7069636974726170;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5465636976726573;
      break;
    case 12:
      result = 0x79547265746C6966;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x70756F7247736372;
      break;
    case 16:
      result = 0x6F685070756F7267;
      break;
    case 17:
      result = 0x69747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8418474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A841FF80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84184A8(uint64_t a1)
{
  v2 = sub_1A841E17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84184E4(uint64_t a1)
{
  v2 = sub_1A841E17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Conversation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E74D8, &qword_1A8502958);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A841E17C();
  sub_1A84E68AC();
  LOBYTE(v32) = 0;
  sub_1A84E673C();
  if (!v2)
  {
    LOBYTE(v32) = 1;
    sub_1A84E66CC();
    LOBYTE(v32) = 2;
    sub_1A84E66CC();
    LOBYTE(v32) = *(v3 + 40);
    LOBYTE(v23) = 3;
    sub_1A841E1D0();
    sub_1A84E672C();
    LOBYTE(v32) = 4;
    sub_1A84E66AC();
    LOBYTE(v32) = 5;
    sub_1A84E66AC();
    v41 = 6;
    sub_1A84E66CC();
    v9 = *(v3 + 192);
    v10 = *(v3 + 160);
    v37 = *(v3 + 176);
    v38 = v9;
    v11 = *(v3 + 192);
    v12 = *(v3 + 224);
    v39 = *(v3 + 208);
    v40 = v12;
    v13 = *(v3 + 128);
    v14 = *(v3 + 96);
    v33 = *(v3 + 112);
    v34 = v13;
    v15 = *(v3 + 128);
    v16 = *(v3 + 160);
    v35 = *(v3 + 144);
    v36 = v16;
    v17 = *(v3 + 96);
    v29 = v11;
    v30 = v39;
    v31 = *(v3 + 224);
    v32 = v17;
    v25 = v15;
    v26 = v35;
    v27 = v10;
    v28 = v37;
    v23 = v14;
    v24 = v33;
    v22 = 7;
    sub_1A8400E7C(&v32, v21);
    sub_1A841E224();
    sub_1A84E672C();
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_1A8400ED8(v21);
    v20 = *(v3 + 240);
    HIBYTE(v19) = 8;
    sub_1A83EA2FC(&qword_1EB2E74F8, &qword_1A8502960);
    sub_1A841E3C8(&qword_1EB2E7500, sub_1A841E224, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    LOBYTE(v20) = 9;
    sub_1A84E66DC();
    LOBYTE(v20) = 10;
    sub_1A84E66CC();
    LOBYTE(v20) = *(v3 + 272);
    HIBYTE(v19) = 11;
    sub_1A841E278();
    sub_1A84E672C();
    LOBYTE(v20) = *(v3 + 273);
    HIBYTE(v19) = 12;
    sub_1A841E2CC();
    sub_1A84E672C();
    LOBYTE(v20) = 13;
    sub_1A84E66AC();
    LOBYTE(v20) = 14;
    sub_1A84E66AC();
    LOBYTE(v20) = 15;
    sub_1A84E66AC();
    type metadata accessor for ImportExport.Conversation(0);
    LOBYTE(v20) = 16;
    type metadata accessor for ImportExport.Attachment(0);
    sub_1A841EFF0(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
    sub_1A84E66BC();
    LOBYTE(v20) = 17;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B0]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.Conversation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v84 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v5 = &v75 - v4;
  v6 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v75 - v7;
  v80 = sub_1A83EA2FC(&qword_1EB2E7518, &qword_1A8502968);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v75 - v9;
  v11 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for ImportExport.Conversation(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 84);
  *&v89 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v82 = v16;
  v85 = v15;
  sub_1A84E594C();
  v17 = a1[3];
  v81 = a1;
  sub_1A82471E0(a1, v17);
  sub_1A841E17C();
  sub_1A84E689C();
  if (v2)
  {
    v98 = v2;
    v21 = v85;
    sub_1A8244788(v81);
    return (*(v83 + 8))(&v21[v82], v84);
  }

  v77 = v8;
  v76 = v5;
  v18 = v79;
  LOBYTE(v89) = 0;
  v19 = v80;
  v20 = sub_1A84E667C();
  v21 = v85;
  *v85 = v20;
  LOBYTE(v89) = 1;
  *(v21 + 1) = sub_1A84E660C();
  *(v21 + 2) = v23;
  LOBYTE(v89) = 2;
  v24 = 0;
  *(v21 + 3) = sub_1A84E660C();
  *(v21 + 4) = v25;
  LOBYTE(v87) = 3;
  sub_1A841E320();
  sub_1A84E666C();
  v21[40] = v89;
  LOBYTE(v89) = 4;
  *(v21 + 6) = sub_1A84E65DC();
  *(v21 + 7) = v31;
  LOBYTE(v89) = 5;
  *(v21 + 8) = sub_1A84E65DC();
  *(v21 + 9) = v32;
  LOBYTE(v89) = 6;
  v33 = sub_1A84E660C();
  v98 = 0;
  *(v21 + 10) = v33;
  *(v21 + 11) = v34;
  v88 = 7;
  sub_1A841E374();
  v35 = v98;
  sub_1A84E666C();
  v98 = v35;
  if (v35)
  {
    (*(v18 + 8))(v10, v19);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
    v39 = 0;
    goto LABEL_5;
  }

  v75 = 0;
  v40 = v96;
  v41 = v97;
  *(v21 + 12) = v95;
  *(v21 + 13) = v40;
  *(v21 + 14) = v41;
  v42 = v92;
  *(v21 + 8) = v91;
  *(v21 + 9) = v42;
  v43 = v94;
  *(v21 + 10) = v93;
  *(v21 + 11) = v43;
  v44 = v90;
  *(v21 + 6) = v89;
  *(v21 + 7) = v44;
  sub_1A83EA2FC(&qword_1EB2E74F8, &qword_1A8502960);
  v86 = 8;
  sub_1A841E3C8(&qword_1EB2E7530, sub_1A841E374, MEMORY[0x1E69E6330]);
  v45 = v98;
  sub_1A84E666C();
  v98 = v45;
  if (v45)
  {
    (*(v18 + 8))(v10, v19);
    v37 = 0;
    v38 = 0;
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
    v39 = 0;
    v36 = 1;
    v24 = v75;
    goto LABEL_5;
  }

  *(v21 + 30) = v87;
  LOBYTE(v87) = 9;
  v46 = v98;
  v47 = sub_1A84E661C();
  v98 = v46;
  if (v46 || (v85[248] = v47 & 1, LOBYTE(v87) = 10, v48 = v98, v49 = sub_1A84E660C(), (v98 = v48) != 0))
  {
    (*(v18 + 8))(v10, v80);
    v38 = 0;
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
    v39 = 0;
    v36 = 1;
    v37 = 1;
LABEL_27:
    v24 = v75;
    v21 = v85;
LABEL_5:
    sub_1A8244788(v81);

    if (!v24)
    {
    }

    if (v36)
    {
      v26 = *(v21 + 12);
      v27 = *(v21 + 14);
      v96 = *(v21 + 13);
      v97 = v27;
      v28 = *(v21 + 9);
      v91 = *(v21 + 8);
      v92 = v28;
      v29 = *(v21 + 10);
      v94 = *(v21 + 11);
      v95 = v26;
      v93 = v29;
      v30 = *(v21 + 7);
      v89 = *(v21 + 6);
      v90 = v30;
      sub_1A8400ED8(&v89);
      if (v37)
      {
LABEL_9:

        if ((v38 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if (v37)
    {
      goto LABEL_9;
    }

    if (!v38)
    {
LABEL_10:
      if (v79)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:

    if (v79)
    {
LABEL_11:

      if ((v80 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v80)
    {
LABEL_12:
      if (!v39)
      {
        return (*(v83 + 8))(&v21[v82], v84);
      }

LABEL_19:

      return (*(v83 + 8))(&v21[v82], v84);
    }

LABEL_18:

    if ((v39 & 1) == 0)
    {
      return (*(v83 + 8))(&v21[v82], v84);
    }

    goto LABEL_19;
  }

  v51 = v85;
  *(v85 + 32) = v49;
  *(v51 + 33) = v50;
  v86 = 11;
  sub_1A841E440();
  v52 = v98;
  sub_1A84E666C();
  v98 = v52;
  if (v52 || (v85[272] = v87, v86 = 12, sub_1A841E494(), v53 = v98, sub_1A84E666C(), (v98 = v53) != 0) || (v85[273] = v87, LOBYTE(v87) = 13, v54 = v98, v55 = sub_1A84E65DC(), (v98 = v54) != 0))
  {
    (*(v18 + 8))(v10, v80);
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
    v39 = 0;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    goto LABEL_27;
  }

  v57 = v85;
  *(v85 + 35) = v55;
  *(v57 + 36) = v56;
  LOBYTE(v87) = 14;
  v58 = v98;
  v59 = sub_1A84E65DC();
  v98 = v58;
  if (v58)
  {
    (*(v18 + 8))(v10, v80);
    LODWORD(v80) = 0;
    v39 = 0;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v61 = &v99;
LABEL_36:
    *(v61 - 64) = 1;
    goto LABEL_27;
  }

  v62 = v85;
  *(v85 + 37) = v59;
  *(v62 + 38) = v60;
  LOBYTE(v87) = 15;
  v63 = v98;
  v64 = sub_1A84E65DC();
  v98 = v63;
  if (v63)
  {
    (*(v18 + 8))(v10, v80);
    v39 = 0;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    LODWORD(v79) = 1;
    v61 = &v100;
    goto LABEL_36;
  }

  v66 = v85;
  *(v85 + 39) = v64;
  *(v66 + 40) = v65;
  type metadata accessor for ImportExport.Attachment(0);
  LOBYTE(v87) = 16;
  sub_1A841EFF0(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  v67 = v98;
  sub_1A84E65FC();
  v98 = v67;
  if (v67)
  {
    (*(v18 + 8))(v10, v80);
    v36 = 1;
    v37 = 1;
    v38 = 1;
    LODWORD(v79) = 1;
    LODWORD(v80) = 1;
    v39 = 1;
    goto LABEL_27;
  }

  sub_1A841E4E8(v77, &v85[*(v12 + 80)]);
  LOBYTE(v87) = 17;
  sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B8]);
  v68 = v98;
  sub_1A84E666C();
  v98 = v68;
  if (v68)
  {
    (*(v18 + 8))(v10, v80);
    sub_1A8244788(v81);
    v21 = v85;

    v69 = *(v21 + 12);
    v70 = *(v21 + 14);
    v96 = *(v21 + 13);
    v97 = v70;
    v71 = *(v21 + 9);
    v91 = *(v21 + 8);
    v92 = v71;
    v72 = *(v21 + 10);
    v94 = *(v21 + 11);
    v95 = v69;
    v93 = v72;
    v73 = *(v21 + 7);
    v89 = *(v21 + 6);
    v90 = v73;
    sub_1A8400ED8(&v89);

    sub_1A824B2D4(&v21[*(v12 + 80)], &qword_1EB2E6F50, &unk_1A8502920);
    return (*(v83 + 8))(&v21[v82], v84);
  }

  (*(v18 + 8))(v10, v80);
  v74 = v85;
  (*(v83 + 40))(&v85[v82], v76, v84);
  sub_1A8420890(v74, v78, type metadata accessor for ImportExport.Conversation);
  sub_1A8244788(v81);
  return sub_1A84208F8(v74, type metadata accessor for ImportExport.Conversation);
}

uint64_t sub_1A841996C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t ImportExport.Conversation.FilterType.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1802401130;
  v4 = 0x6F6D6F7250736D73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x536E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ImportExport.Conversation.FilterType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A8419A7C()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8419B6C(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A8419C48(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void sub_1A8419D40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE400000000000000;
  v6 = 1802401130;
  v7 = 0xEE006C616E6F6974;
  v8 = 0x6F6D6F7250736D73;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001A852EB90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x536E776F6E6B6E75;
    v3 = 0xED00007265646E65;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A8419EA8()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1802401130;
  v4 = 0x6F6D6F7250736D73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x536E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ImportExport.Conversation.ConversationType.description.getter()
{
  if (*v0)
  {
    return 0x7564697669646E69;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t ImportExport.Conversation.ConversationType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A8419FF0()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A841A074(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A841A0E4(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A841A164@<X0>(char *a2@<X8>)
{
  v3 = sub_1A84E65AC();

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

void sub_1A841A1C4(uint64_t *a1@<X8>)
{
  v2 = 0x70756F7267;
  if (*v1)
  {
    v2 = 0x7564697669646E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A841A2B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7564697669646E69;
  }

  else
  {
    v3 = 0x70756F7267;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x7564697669646E69;
  }

  else
  {
    v5 = 0x70756F7267;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();
  }

  return v8 & 1;
}

uint64_t sub_1A841A35C()
{
  if (*v0)
  {
    return 0x7564697669646E69;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t ImportExport.Conversation.hash(into:)(uint64_t a1)
{
  result = sub_1A84E5E5C();
  if (*(v1 + 56))
  {

    return sub_1A84E5E5C();
  }

  return result;
}

uint64_t ImportExport.Conversation.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  if (*(v0 + 56))
  {
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t sub_1A841A448()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  if (*(v0 + 56))
  {
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t sub_1A841A4A0(uint64_t a1)
{
  result = sub_1A84E5E5C();
  if (*(v1 + 56))
  {

    return sub_1A84E5E5C();
  }

  return result;
}

uint64_t sub_1A841A4F4(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  if (*(v1 + 56))
  {
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t ImportExport.Conversation.participant(at:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (v3 = *(v2 + 240), *(v3 + 16) <= a1))
  {
    sub_1A84E646C();

    *&v20[0] = 0xD000000000000023;
    *(&v20[0] + 1) = 0x80000001A8530610;
    v16 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v16);

    MEMORY[0x1AC56A990](758130720, 0xE400000000000000);
    v17 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v17);

    MEMORY[0x1AC56A990](41, 0xE100000000000000);
    sub_1A841D4A8();
    swift_allocError();
    *v18 = v20[0];
    *(v18 + 16) = 6;
    return swift_willThrow();
  }

  else
  {
    v4 = (v3 + 144 * a1);
    v20[0] = v4[2];
    v5 = v4[3];
    v6 = v4[4];
    v7 = v4[6];
    v20[3] = v4[5];
    v20[4] = v7;
    v20[1] = v5;
    v20[2] = v6;
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[10];
    v20[7] = v4[9];
    v20[8] = v10;
    v20[5] = v8;
    v20[6] = v9;
    v11 = v4[9];
    a2[6] = v4[8];
    a2[7] = v11;
    a2[8] = v4[10];
    v12 = v4[5];
    a2[2] = v4[4];
    a2[3] = v12;
    v13 = v4[7];
    a2[4] = v4[6];
    a2[5] = v13;
    v14 = v4[3];
    *a2 = v4[2];
    a2[1] = v14;
    return sub_1A8400E7C(v20, v19);
  }
}

Swift::Int_optional __swiftcall ImportExport.Conversation.participantIndex(for:)(Swift::String a1)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = 0;
    v7 = (v2 + 32);
    while (v6 < *(v2 + 16))
    {
      v21[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v21[3] = v7[3];
      v21[4] = v10;
      v21[1] = v8;
      v21[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[8];
      v21[7] = v7[7];
      v21[8] = v13;
      v21[5] = v11;
      v21[6] = v12;
      v14 = v7[7];
      v20[15] = v7[6];
      v20[16] = v14;
      v20[17] = v7[8];
      v15 = v7[3];
      v20[11] = v7[2];
      v20[12] = v15;
      v16 = v7[5];
      v20[13] = v7[4];
      v20[14] = v16;
      v17 = v7[1];
      v20[9] = *v7;
      v20[10] = v17;
      sub_1A8400E7C(v21, v20);
      v18.value._countAndFlagsBits = countAndFlagsBits;
      v18.value._object = object;
      v19 = ImportExport.Participant.contains(_:)(v18);
      a1._countAndFlagsBits = sub_1A8400ED8(v21);
      if (v19)
      {
        LOBYTE(a1._object) = 0;
        goto LABEL_8;
      }

      ++v6;
      v7 += 9;
      if (v3 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v6 = 0;
    LOBYTE(a1._object) = 1;
LABEL_8:
    a1._countAndFlagsBits = v6;
  }

  return *&a1._countAndFlagsBits;
}

void *ImportExport.Conversation.participantIndex(for:)(void *result)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[4];
    v7 = (v2 + 32);
    v8 = result[1];
    v9 = result[2];
    while (v4 < *(v2 + 16))
    {
      v33 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      v12 = v7[4];
      v36 = v7[3];
      v37 = v12;
      v34 = v10;
      v35 = v11;
      v13 = v7[5];
      v14 = v7[6];
      v15 = v7[8];
      v40 = v7[7];
      v41 = v15;
      v38 = v13;
      v39 = v14;
      v16 = v7[7];
      v30 = v7[6];
      v31 = v16;
      v32 = v7[8];
      v17 = v7[3];
      v26 = v7[2];
      v27 = v17;
      v18 = v7[5];
      v28 = v7[4];
      v29 = v18;
      v19 = v7[1];
      v24 = *v7;
      v25 = v19;
      sub_1A8400E7C(&v33, &v23);
      v20.value._countAndFlagsBits = v8;
      v20.value._object = v9;
      if (ImportExport.Participant.contains(_:)(v20))
      {
        sub_1A8400ED8(&v33);
        return v4;
      }

      v30 = v39;
      v31 = v40;
      v32 = v41;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v24 = v33;
      v25 = v34;
      v21.value._countAndFlagsBits = v5;
      v21.value._object = v6;
      v22 = ImportExport.Participant.contains(_:)(v21);
      result = sub_1A8400ED8(&v33);
      if (v22)
      {
        return v4;
      }

      ++v4;
      v7 += 9;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t ImportExport.Conversation.participantIndex(for:)(uint64_t *a1)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  v4 = 0;
  if (v3)
  {
    v5 = *a1;
    v6 = a1[1];
    for (i = (v2 + 40); ; i += 18)
    {
      v8 = *(i - 1) == v5 && *i == v6;
      if (v8 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

void ImportExport.Conversation.participant(for:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = ImportExport.Conversation.participantIndex(for:)(*&a1);
  if (v32.is_nil)
  {
    sub_1A8402420(&__dst);
    v5 = v30;
    a2[6] = v29;
    a2[7] = v5;
    a2[8] = v31;
    v6 = v26;
    a2[2] = v25;
    a2[3] = v6;
    v7 = v28;
    a2[4] = v27;
    a2[5] = v7;
    v8 = v24;
    *a2 = __dst;
    a2[1] = v8;
    return;
  }

  if (v32.value < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v3 + 240);
  if (v32.value >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v10 = (v9 + 144 * v32.value);
  v22[0] = v10[2];
  v11 = v10[3];
  v12 = v10[4];
  v13 = v10[6];
  v22[3] = v10[5];
  v22[4] = v13;
  v22[1] = v11;
  v22[2] = v12;
  v14 = v10[7];
  v15 = v10[8];
  v16 = v10[10];
  v22[7] = v10[9];
  v22[8] = v16;
  v22[5] = v14;
  v22[6] = v15;
  memmove(&__dst, v10 + 2, 0x90uLL);
  nullsub_4();
  v17 = v30;
  a2[6] = v29;
  a2[7] = v17;
  a2[8] = v31;
  v18 = v26;
  a2[2] = v25;
  a2[3] = v18;
  v19 = v28;
  a2[4] = v27;
  a2[5] = v19;
  v20 = v24;
  *a2 = __dst;
  a2[1] = v20;
  sub_1A8400E7C(v22, &v21);
}

void ImportExport.Conversation.participant(for:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = ImportExport.Conversation.participantIndex(for:)(a1);
  if (v5)
  {
    sub_1A8402420(&__dst);
    v6 = v31;
    a2[6] = v30;
    a2[7] = v6;
    a2[8] = v32;
    v7 = v27;
    a2[2] = v26;
    a2[3] = v7;
    v8 = v29;
    a2[4] = v28;
    a2[5] = v8;
    v9 = v25;
    *a2 = __dst;
    a2[1] = v9;
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v2 + 240);
  if (v4 >= *(v10 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v11 = (v10 + 144 * v4);
  v23[0] = v11[2];
  v12 = v11[3];
  v13 = v11[4];
  v14 = v11[6];
  v23[3] = v11[5];
  v23[4] = v14;
  v23[1] = v12;
  v23[2] = v13;
  v15 = v11[7];
  v16 = v11[8];
  v17 = v11[10];
  v23[7] = v11[9];
  v23[8] = v17;
  v23[5] = v15;
  v23[6] = v16;
  memmove(&__dst, v11 + 2, 0x90uLL);
  nullsub_4();
  v18 = v31;
  a2[6] = v30;
  a2[7] = v18;
  a2[8] = v32;
  v19 = v27;
  a2[2] = v26;
  a2[3] = v19;
  v20 = v29;
  a2[4] = v28;
  a2[5] = v20;
  v21 = v25;
  *a2 = __dst;
  a2[1] = v21;
  sub_1A8400E7C(v23, &v22);
}

uint64_t static ImportExport.Conversation.fetchNextConversation(startingAtRowIDGreaterThan:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A841AC54, 0, 0);
}

uint64_t sub_1A841AC54()
{
  v1 = v0[9];
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A8502910;
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A85013E0;
  v4 = *v1;
  v5 = MEMORY[0x1E69E73D8];
  *(v3 + 56) = MEMORY[0x1E69E7360];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  *(v2 + 32) = sub_1A84E614C();
  v0[2] = 3;
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  v7 = sub_1A84E614C();

  *(v2 + 40) = v7;
  v8 = sub_1A84E5FEC();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v12 = v9;
  v13 = sub_1A84E5FEC();
  v0[6] = sub_1A842096C;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B725F8;
  v14 = _Block_copy(v0 + 2);

  v15 = 1;
  [v11 fetchChatRecordsFilteredUsingPredicate:v12 sortedUsingDescriptors:v13 limit:1 completionHandler:v14];
  _Block_release(v14);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = v0[8];
    v18 = v0[9];
    v19 = v16;
    *v18 = [v19 rowID];
    sub_1A8475A14(v19, v17);
    v15 = 0;
  }

  v20 = v0[8];
  v21 = type metadata accessor for ImportExport.Conversation(0);
  (*(*(v21 - 8) + 56))(v20, v15, 1, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A841B03C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v3 = sub_1A84E5FFC();

  v2(v3);
}

uint64_t static ImportExport.Conversation.fetchConversation(forRowID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A841B0E0, 0, 0);
}

uint64_t sub_1A841B0E0()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1A85013E0;
  v6 = MEMORY[0x1E69E73D8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  v7 = sub_1A84E614C();
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v8 = sub_1A84E5FEC();
  v0[6] = sub_1A842096C;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B72620;
  v9 = _Block_copy(v0 + 2);

  v10 = 1;
  [v3 fetchChatRecordsFilteredUsingPredicate:v7 sortedUsingDescriptors:v8 limit:1 completionHandler:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (v11)
  {
    sub_1A8475A14(v11, v0[8]);
    v10 = 0;
  }

  v12 = v0[8];
  v13 = type metadata accessor for ImportExport.Conversation(0);
  (*(*(v13 - 8) + 56))(v12, v10, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t static ImportExport.Conversation.fetchConversation(forGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A841B3CC, 0, 0);
}

uint64_t sub_1A841B3CC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A85013E0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1A83F8174();
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  v6 = sub_1A84E614C();
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v7 = sub_1A84E5FEC();
  v0[6] = sub_1A841EB90;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B72648;
  v8 = _Block_copy(v0 + 2);

  v9 = 1;
  [v4 fetchChatRecordsFilteredUsingPredicate:v6 sortedUsingDescriptors:v7 limit:1 completionHandler:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v10 = *(v3 + 16);
  if (v10)
  {
    sub_1A8475A14(v10, v0[8]);
    v9 = 0;
  }

  v11 = v0[8];
  v12 = type metadata accessor for ImportExport.Conversation(0);
  (*(*(v12 - 8) + 56))(v11, v9, 1, v12);

  v13 = v0[1];

  return v13();
}

void sub_1A841B6A0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_1A84E654C();
    a1 = v6;
    if (v7 < 1)
    {
      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1AC56AF80](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
}

uint64_t static ImportExport.Conversation.fetchConversations(withParticipants:serviceName:groupName:groupID:conversationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = *(type metadata accessor for ImportExport.Conversation(0) - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = *a8;

  return MEMORY[0x1EEE6DFA0](sub_1A841B834, 0, 0);
}

void *sub_1A841B834()
{
  v1 = *(v0 + 88);
  if (*(*(v0 + 16) + 16) <= 2uLL)
  {
    v2 = 45;
  }

  else
  {
    v2 = 43;
  }

  if (v1 != 2)
  {
    if (v1)
    {

      v2 = 45;
    }

    else
    {
      v3 = sub_1A84E67AC();

      if (v3)
      {
        v2 = 45;
      }

      else
      {
        v2 = 43;
      }
    }
  }

  v4 = *(v0 + 48);
  v5 = [objc_opt_self() synchronousDatabase];
  v6 = sub_1A84E5FEC();
  v7 = sub_1A84E5D8C();
  if (v4)
  {
    v8 = sub_1A84E5D8C();
    if (*(v0 + 64))
    {
LABEL_12:
      v9 = sub_1A84E5D8C();
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if (*(v0 + 64))
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_15:
  v10 = [v5 chatRecordsWithHandles:v6 serviceName:v7 displayName:v8 groupID:v9 style:v2];
  swift_unknownObjectRelease();

  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v11 = sub_1A84E5FFC();

  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v23 = MEMORY[0x1E69E7CC0];
      result = sub_1A83EF678(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v14 = 0;
      v15 = *(v0 + 72);
      v16 = v23;
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1AC56AF80](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v18 = *(v11 + 8 * v14 + 32);
        }

        sub_1A8475A14(v18, *(v0 + 80));
        v20 = *(v23 + 16);
        v19 = *(v23 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1A83EF678((v19 > 1), v20 + 1, 1);
        }

        v21 = *(v0 + 80);
        *(v23 + 16) = v20 + 1;
        sub_1A8420828(v21, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, type metadata accessor for ImportExport.Conversation);
        ++v14;
        if (v17 == v12)
        {

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v12 = sub_1A84E654C();
      if (!v12)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    v16 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v22 = *(v0 + 8);

    return v22(v16);
  }

  return result;
}

uint64_t sub_1A841BBF8(uint64_t a1)
{
  v2 = sub_1A841EDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BC34(uint64_t a1)
{
  v2 = sub_1A841EDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A841BC70()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x45444970756F7267;
    if (v1 == 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000018;
    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A841BD68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8420534(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A841BD9C(uint64_t a1)
{
  v2 = sub_1A841EBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BDD8(uint64_t a1)
{
  v2 = sub_1A841EBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BE14(uint64_t a1)
{
  v2 = sub_1A841EDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BE50(uint64_t a1)
{
  v2 = sub_1A841EDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BE8C(uint64_t a1)
{
  v2 = sub_1A841ED50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BEC8(uint64_t a1)
{
  v2 = sub_1A841ED50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BF04(uint64_t a1)
{
  v2 = sub_1A841EC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BF40(uint64_t a1)
{
  v2 = sub_1A841EC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BF7C(uint64_t a1)
{
  v2 = sub_1A841EC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BFB8(uint64_t a1)
{
  v2 = sub_1A841EC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BFF4(uint64_t a1)
{
  v2 = sub_1A841ECFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841C030(uint64_t a1)
{
  v2 = sub_1A841ECFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841C06C(uint64_t a1)
{
  v2 = sub_1A841ECA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841C0A8(uint64_t a1)
{
  v2 = sub_1A841ECA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7560, &qword_1A85029A0);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v43 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E7568, &qword_1A85029A8);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v43 - v6;
  v7 = sub_1A83EA2FC(&qword_1EB2E7570, &qword_1A85029B0);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v43 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7578, &qword_1A85029B8);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - v10;
  v59 = sub_1A83EA2FC(&qword_1EB2E7580, &qword_1A85029C0);
  v44 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v43 - v11;
  v12 = sub_1A83EA2FC(&qword_1EB2E7588, &qword_1A85029C8);
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = sub_1A83EA2FC(&qword_1EB2E7590, &qword_1A85029D0);
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v60 = sub_1A83EA2FC(&qword_1EB2E7598, &qword_1A85029D8);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v18 = v1[1];
  v61 = *v1;
  v62 = v18;
  v19 = *(v1 + 16);
  v20 = a1[3];
  v21 = a1;
  v23 = &v43 - v22;
  sub_1A82471E0(v21, v20);
  sub_1A841EBAC();
  v64 = v23;
  sub_1A84E68AC();
  if (v19 <= 2)
  {
    v29 = v12;
    v30 = v57;
    v31 = v58;
    v32 = v59;
    if (v19)
    {
      if (v19 == 1)
      {
        v66 = 1;
        sub_1A841EDA4();
        v33 = v60;
        v34 = v64;
        sub_1A84E669C();
        sub_1A84E66CC();
        (*(v43 + 8))(v14, v29);
      }

      else
      {
        v67 = 2;
        sub_1A841ED50();
        v42 = v31;
        v33 = v60;
        v34 = v64;
        sub_1A84E669C();
        sub_1A84E66CC();
        (*(v44 + 8))(v42, v32);
      }

      return (*(v63 + 8))(v34, v33);
    }

    else
    {
      v65 = 0;
      sub_1A841EDF8();
      v39 = v60;
      v40 = v64;
      sub_1A84E669C();
      sub_1A84E66CC();
      (*(v30 + 8))(v17, v15);
      return (*(v63 + 8))(v40, v39);
    }
  }

  else if (v19 > 4)
  {
    v35 = v60;
    if (v19 == 5)
    {
      v70 = 5;
      sub_1A841EC54();
      v36 = v51;
      sub_1A84E669C();
      v37 = v53;
      sub_1A84E66CC();
      v38 = v52;
    }

    else
    {
      v71 = 6;
      sub_1A841EC00();
      v36 = v54;
      sub_1A84E669C();
      v37 = v56;
      sub_1A84E66CC();
      v38 = v55;
    }

    (*(v38 + 8))(v36, v37);
    return (*(v63 + 8))(v64, v35);
  }

  else
  {
    v24 = v60;
    if (v19 == 3)
    {
      v68 = 3;
      sub_1A841ECFC();
      v25 = v45;
      v26 = v64;
      sub_1A84E669C();
      v27 = v47;
      sub_1A84E66CC();
      v28 = v46;
    }

    else
    {
      v69 = 4;
      sub_1A841ECA8();
      v25 = v48;
      v26 = v64;
      sub_1A84E669C();
      v27 = v50;
      sub_1A84E66CC();
      v28 = v49;
    }

    (*(v28 + 8))(v25, v27);
    return (*(v63 + 8))(v26, v24);
  }
}

uint64_t ImportExport.ConversationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v69 = sub_1A83EA2FC(&qword_1EB2E75E0, &qword_1A85029E0);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v78 = &v58 - v3;
  v4 = sub_1A83EA2FC(&qword_1EB2E75E8, &qword_1A85029E8);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v58 - v5;
  v6 = sub_1A83EA2FC(&qword_1EB2E75F0, &qword_1A85029F0);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v58 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E75F8, &qword_1A85029F8);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v58 - v10;
  v64 = sub_1A83EA2FC(&qword_1EB2E7600, &qword_1A8502A00);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v76 = &v58 - v11;
  v62 = sub_1A83EA2FC(&qword_1EB2E7608, &qword_1A8502A08);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v58 - v12;
  v14 = sub_1A83EA2FC(&qword_1EB2E7610, &qword_1A8502A10);
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_1A83EA2FC(&qword_1EB2E7618, &qword_1A8502A18);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v21 = a1[3];
  v79 = a1;
  sub_1A82471E0(a1, v21);
  sub_1A841EBAC();
  v22 = v80;
  sub_1A84E689C();
  if (v22)
  {
    return sub_1A8244788(v79);
  }

  v23 = v16;
  v58 = v14;
  v59 = v13;
  v24 = v76;
  v25 = v77;
  v26 = v78;
  v80 = v18;
  v27 = sub_1A84E668C();
  v28 = (2 * *(v27 + 16)) | 1;
  v81 = v27;
  v82 = v27 + 32;
  v83 = 0;
  v84 = v28;
  v29 = sub_1A84008EC();
  if (v29 == 7 || v83 != v84 >> 1)
  {
    v33 = sub_1A84E64BC();
    swift_allocError();
    v35 = v34;
    sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20);
    *v35 = &type metadata for ImportExport.ConversationError;
    sub_1A84E65CC();
    sub_1A84E64AC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v80 + 8))(v20, v17);
    swift_unknownObjectRelease();
    return sub_1A8244788(v79);
  }

  v85 = v29;
  if (v29 > 2u)
  {
    if (v29 > 4u)
    {
      v50 = v75;
      v30 = v80;
      if (v29 == 5)
      {
        v86 = 5;
        sub_1A841EC54();
        v39 = v74;
        sub_1A84E65BC();
        v40 = v71;
        v52 = sub_1A84E660C();
        v54 = v55;
        (*(v70 + 8))(v39, v40);
      }

      else
      {
        v86 = 6;
        sub_1A841EC00();
        v47 = v26;
        sub_1A84E65BC();
        v48 = v69;
        v52 = sub_1A84E660C();
        v54 = v57;
        (*(v72 + 8))(v47, v48);
      }

      goto LABEL_21;
    }

    v30 = v80;
    if (v29 == 3)
    {
      v86 = 3;
      sub_1A841ECFC();
      v31 = v73;
      sub_1A84E65BC();
      v32 = v66;
      v52 = sub_1A84E660C();
      v54 = v53;
      (*(v65 + 8))(v31, v32);
    }

    else
    {
      v86 = 4;
      sub_1A841ECA8();
      sub_1A84E65BC();
      v46 = v67;
      v52 = sub_1A84E660C();
      v54 = v56;
      (*(v68 + 8))(v25, v46);
    }

    goto LABEL_20;
  }

  if (v29)
  {
    if (v29 == 1)
    {
      v86 = 1;
      sub_1A841EDA4();
      v37 = v59;
      sub_1A84E65BC();
      v38 = v62;
      v52 = sub_1A84E660C();
      v54 = v49;
      (*(v61 + 8))(v37, v38);
      v50 = v75;
      v30 = v80;
LABEL_21:
      (*(v30 + 8))(v20, v17);
      swift_unknownObjectRelease();
      v43 = v79;
      goto LABEL_22;
    }

    v86 = 2;
    sub_1A841ED50();
    sub_1A84E65BC();
    v44 = v64;
    v45 = sub_1A84E660C();
    v30 = v80;
    v52 = v45;
    v54 = v51;
    (*(v63 + 8))(v24, v44);
LABEL_20:
    v50 = v75;
    goto LABEL_21;
  }

  v86 = 0;
  sub_1A841EDF8();
  sub_1A84E65BC();
  v41 = v58;
  v52 = sub_1A84E660C();
  v54 = v42;
  (*(v60 + 8))(v23, v41);
  (*(v80 + 8))(v20, v17);
  swift_unknownObjectRelease();
  v43 = v79;
  v50 = v75;
LABEL_22:
  *v50 = v52;
  *(v50 + 8) = v54;
  *(v50 + 16) = v85;
  return sub_1A8244788(v43);
}
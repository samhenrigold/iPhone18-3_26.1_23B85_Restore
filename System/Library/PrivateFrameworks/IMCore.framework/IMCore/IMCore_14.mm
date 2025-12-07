uint64_t ImportExport.ArchiveImportIterator.deinit()
{

  return v0;
}

uint64_t ImportExport.ArchiveImportIterator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A849FA6C(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8698, &unk_1A85092B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84A0C50();
  sub_1A84E68AC();
  v13 = v3[2];
  LOBYTE(v12) = 0;
  type metadata accessor for ImportExport.ArchiveImporter(0);
  sub_1A84A0D64(&qword_1EB2E86A8, type metadata accessor for ImportExport.ArchiveImporter, &protocol conformance descriptor for ImportExport.ArchiveImporter);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v12 = v3[3];
    v11 = 1;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84A0CC8(&qword_1EB2E86B8, &qword_1EB2E73A0, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v12 = v3[4];
    v11 = 2;
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    sub_1A84A0D64(&qword_1EB2E86C0, type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator, &protocol conformance descriptor for ImportExport.ArchiveManifest.ArchiveManifestIterator);
    sub_1A84E66BC();
    v12 = v3[5];
    v11 = 3;
    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    sub_1A84A0D64(&qword_1EB2E86C8, type metadata accessor for ImportExport.ArchivedConversation.Iterator, &protocol conformance descriptor for ImportExport.ArchivedConversation.Iterator);
    sub_1A84E66BC();
    v12 = v3[6];
    v11 = 4;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A84A0D64(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
    sub_1A84E66BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.ArchiveImportIterator.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImportIterator.init(from:)(a1);
  return v2;
}

void *ImportExport.ArchiveImportIterator.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E86D0, qword_1A85092C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v9 = a1[3];
  v11 = a1;
  sub_1A82471E0(a1, v9);
  sub_1A84A0C50();
  sub_1A84E689C();
  if (v2)
  {

    type metadata accessor for ImportExport.ArchiveImportIterator();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ImportExport.ArchiveImporter(0);
    v12 = 0;
    sub_1A84A0D64(&qword_1EB2E86D8, type metadata accessor for ImportExport.ArchiveImporter, &protocol conformance descriptor for ImportExport.ArchiveImporter);
    sub_1A84E666C();
    v3[2] = v13;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    v12 = 1;
    sub_1A84A0CC8(&qword_1EB2E86E0, &qword_1EB2E7398, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6330]);
    sub_1A84E666C();
    v3[3] = v13;
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    v12 = 2;
    sub_1A84A0D64(&qword_1EB2E86E8, type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator, &protocol conformance descriptor for ImportExport.ArchiveManifest.ArchiveManifestIterator);
    sub_1A84E65FC();
    v3[4] = v13;

    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    v12 = 3;
    sub_1A84A0D64(&qword_1EB2E86F0, type metadata accessor for ImportExport.ArchivedConversation.Iterator, &protocol conformance descriptor for ImportExport.ArchivedConversation.Iterator);
    sub_1A84E65FC();
    v3[5] = v13;

    type metadata accessor for ImportExport.ArchivedConversation(0);
    v12 = 4;
    sub_1A84A0D64(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation, &protocol conformance descriptor for ImportExport.ArchivedConversation);
    sub_1A84E65FC();
    (*(v6 + 8))(v8, v5);
    v3[6] = v13;
  }

  sub_1A8244788(v11);
  return v3;
}

uint64_t sub_1A84A02C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A849DE74(a1);
}

uint64_t sub_1A84A0364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1A84A03FC, v6, v8);
}

uint64_t sub_1A84A03FC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A849DE74(v2);
}

void *sub_1A84A0498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ArchiveImportIterator();
  v5 = swift_allocObject();
  result = ImportExport.ArchiveImportIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1A84A0514(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = sub_1A84E558C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ImportExport.Attachment(0);
  v57 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v42 - v15;
  v44 = type metadata accessor for ImportExport.MessagePart(0);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImportExport.Message(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ImportExport.MessageBatch(0);
  v22 = *(a1 + *(result + 5));
  v48 = *(v22 + 16);
  if (v48)
  {
    v23 = 0;
    v45 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v60 = (v57 + 48);
    v58 = (v6 + 48);
    v53 = (v6 + 32);
    v63 = MEMORY[0x1E69E7CC0];
    v52 = (v6 + 8);
    v54 = v14;
    v55 = v11;
    v59 = v17;
    v46 = v22;
    v47 = v19;
    while (v23 < *(v22 + 16))
    {
      v24 = *(v19 + 72);
      v51 = v23;
      v25 = v49;
      sub_1A84A1298(v45 + v24 * v23, v49, type metadata accessor for ImportExport.Message);
      v26 = *(v25 + 216);

      sub_1A84A1238(v25, type metadata accessor for ImportExport.Message);
      v27 = v26;
      v28 = *(v26 + 16);
      if (v28)
      {
        v62 = *(v44 + 44);
        v29 = *(v43 + 80);
        v50 = v27;
        v30 = v27 + ((v29 + 32) & ~v29);
        v61 = *(v43 + 72);
        do
        {
          sub_1A84A1298(v30, v17, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(&v17[v62], v10, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84A1238(v17, type metadata accessor for ImportExport.MessagePart);
          if ((*v60)(v10, 1, v11) == 1)
          {
            sub_1A824B2D4(v10, &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v31 = v64;
            sub_1A84A1300(v10, v64, type metadata accessor for ImportExport.Attachment);
            sub_1A8243D74(v31 + *(v11 + 40), v4, &qword_1EB2E7068, &unk_1A8501EB0);
            if ((*v58)(v4, 1, v5) == 1)
            {
              sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_14:
              sub_1A84A1298(v64, v14, type metadata accessor for ImportExport.Attachment);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v63 = sub_1A83EF118(0, v63[2] + 1, 1, v63);
              }

              v40 = v63[2];
              v39 = v63[3];
              if (v40 >= v39 >> 1)
              {
                v63 = sub_1A83EF118((v39 > 1), v40 + 1, 1, v63);
              }

              sub_1A84A1238(v64, type metadata accessor for ImportExport.Attachment);
              v41 = v63;
              v63[2] = v40 + 1;
              sub_1A84A1300(v14, v41 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v40, type metadata accessor for ImportExport.Attachment);
              v17 = v59;
              goto LABEL_8;
            }

            v32 = v56;
            (*v53)(v56, v4, v5);
            v33 = [objc_opt_self() defaultManager];
            sub_1A84E555C();
            v34 = v5;
            v35 = v4;
            v36 = sub_1A84E5D8C();

            v37 = [v33 fileExistsAtPath_];

            v4 = v35;
            v5 = v34;
            v38 = v32;
            v14 = v54;
            v11 = v55;
            (*v52)(v38, v34);
            if ((v37 & 1) == 0)
            {
              goto LABEL_14;
            }

            sub_1A84A1238(v64, type metadata accessor for ImportExport.Attachment);
            v17 = v59;
          }

LABEL_8:
          v30 += v61;
          --v28;
        }

        while (v28);
      }

      v23 = v51 + 1;
      v19 = v47;
      v22 = v46;
      if (v51 + 1 == v48)
      {
        return v63;
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

unint64_t sub_1A84A0C50()
{
  result = qword_1EB2E86A0;
  if (!qword_1EB2E86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E86A0);
  }

  return result;
}

uint64_t sub_1A84A0CC8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84A0D64(a2, type metadata accessor for ImportExport.Attachment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84A0D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ImportExport.ArchiveImportIterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

unint64_t sub_1A84A0F78()
{
  result = qword_1EB2E86F8;
  if (!qword_1EB2E86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E86F8);
  }

  return result;
}

unint64_t sub_1A84A0FD0()
{
  result = qword_1EB2E8700;
  if (!qword_1EB2E8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8700);
  }

  return result;
}

unint64_t sub_1A84A1028()
{
  result = qword_1EB2E8708;
  if (!qword_1EB2E8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8708);
  }

  return result;
}

uint64_t sub_1A84A107C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965766968637261 && a2 == 0xEF726574726F706DLL;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A85335B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A85335D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530050 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A84A1238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84A1298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84A1300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84A1368(uint64_t a1)
{
  sub_1A84A13C0(a1);

  return sub_1A84E5C8C();
}

uint64_t sub_1A84A13C0(uint64_t a1)
{
  strcpy(v3, "ImportExport.");
  v1 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v1);

  return v3[0];
}

uint64_t sub_1A84A1428(uint64_t a1, unsigned __int8 a2)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A84A1570(uint64_t a1, unsigned __int8 a2)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A84A169C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84A17A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void ImportExport.ServiceType.init(for:default:)(uint64_t a1@<X1>, char *a2@<X2>, unsigned __int8 *a3@<X8>)
{
  v4 = *a2;
  if (a1)
  {
    static ImportExport.ServiceType.serviceName(for:)(a1, &v7);

    v5 = v7;
    if (v7 > 3u || v7)
    {
      v6 = sub_1A84E67AC();

      if ((v6 & 1) == 0)
      {
        v4 = v5;
      }
    }

    else
    {
    }
  }

  *a3 = v4;
}

Swift::Bool __swiftcall ImportExport.ServiceType.isEqual(to:)(Swift::String to)
{
  sub_1A840D3B0();
  v1 = sub_1A84E638C();

  return v1 == 0;
}

uint64_t static ImportExport.ServiceType.serviceName(for:)@<X0>(uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = byte_1F1B70550[v3++ + 32];
      sub_1A840D3B0();
      v5 = sub_1A84E638C();

      if (!v5)
      {
        break;
      }

      if (v3 == 8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  *a3 = v4;
  return v6;
}

uint64_t static ImportExport.ServiceType.isKnownService(_:)(uint64_t a1, uint64_t a2)
{

  ImportExport.ServiceType.init(rawValue:)(&v4);
  if (v4 == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A8436808(v4, 0) ^ 1;
  }

  return v2 & 1;
}

uint64_t ImportExport.ServiceType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

void sub_1A84A1EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 5456722;
  if (v2 != 6)
  {
    v6 = 0x74696C6C65746153;
    v5 = 0xEC000000534D5365;
  }

  v7 = 5459283;
  v8 = 0xE300000000000000;
  if (v2 != 4)
  {
    v7 = 0x656D695465636146;
    v8 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  if (v2 != 2)
  {
    v9 = 0xEC0000006574694CLL;
  }

  if (*v1)
  {
    v4 = 7958113;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = 0x6567617373654D69;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1A84A1FF8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 5456722;
  if (v1 != 6)
  {
    v3 = 0x74696C6C65746153;
  }

  v4 = 5459283;
  if (v1 != 4)
  {
    v4 = 0x656D695465636146;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7958113;
  }

  if (*v0 > 1u)
  {
    v2 = 0x6567617373654D69;
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

unint64_t sub_1A84A20F4()
{
  result = qword_1EB2E8710;
  if (!qword_1EB2E8710)
  {
    sub_1A83EC9D4(&qword_1EB2E8718, &qword_1A8509520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8710);
  }

  return result;
}

unint64_t sub_1A84A215C()
{
  result = qword_1EB2E8720;
  if (!qword_1EB2E8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8720);
  }

  return result;
}

uint64_t _s11ServiceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ServiceTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A84A2310()
{
  result = qword_1EB2E8728;
  if (!qword_1EB2E8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8728);
  }

  return result;
}

uint64_t sub_1A84A23AC()
{
  v1 = *(v0 + OBJC_IVAR___IMKeyTransparencyController_state);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 40));
  sub_1A84A40EC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 40));

  v2 = v4;

  return v2;
}

uint64_t sub_1A84A2458(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getAtKeyPath();

  return v5;
}

void *sub_1A84A2530(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v5 + 40));
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock((v5 + 40));

  return v9;
}

uint64_t sub_1A84A25D4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v8 = sub_1A84E5C9C();
  sub_1A824431C(v8, qword_1EB2E47B0);
  v9 = a2;

  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 134218242;
    *(v12 + 4) = [v9 uiStatus];

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1A82446BC(a3, a4, &v17);
    _os_log_impl(&dword_1A823F000, v10, v11, "Setting KTVerifierResult with uiStatus: %lu for handle: %s", v12, 0x16u);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  else
  {
  }

  v14 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 8);
  sub_1A848E084(v14, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a1 + 8) = v17;
  return result;
}

void *sub_1A84A27CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___IMKeyTransparencyController_state);

  os_unfair_lock_lock((v5 + 40));
  v6 = *(v5 + 32);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock((v5 + 40));

  return v9;
}

id sub_1A84A2870(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

uint64_t sub_1A84A28E8(uint64_t a1, id a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = [a2 ktData];
  if (v8 && (v9 = v8, v10 = [v8 verifierResult], v9, v10))
  {
    v11 = [v10 uiStatus];

    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2E47B0);

    v13 = sub_1A84E5C7C();
    v14 = sub_1A84E617C();

    if (os_log_type_enabled(v13, v14))
    {
      v33 = v6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 134218242;
      *(v15 + 4) = v11;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1A82446BC(a3, a4, &v35);
      _os_log_impl(&dword_1A823F000, v13, v14, "Setting IDSIDInfoResult with uiStatus: %lu for handle: %s", v15, 0x16u);
      sub_1A8244788(v16);
      MEMORY[0x1AC56D3F0](v16, -1, -1);
      v17 = v15;
      v6 = v33;
      MEMORY[0x1AC56D3F0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v18 = sub_1A84E5C9C();
    sub_1A824431C(v18, qword_1EB2E47B0);

    v19 = v6;
    v20 = sub_1A84E5C7C();
    v21 = sub_1A84E617C();

    if (os_log_type_enabled(v20, v21))
    {
      v34 = v6;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315650;
      *(v22 + 4) = sub_1A82446BC(a3, a4, &v35);
      *(v22 + 12) = 2112;
      v24 = [v19 ktData];
      *(v22 + 14) = v24;
      *v23 = v24;
      *(v22 + 22) = 2112;
      v25 = [v19 ktData];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 verifierResult];

        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v22 + 24) = v27;
      v23[1] = v28;
      _os_log_impl(&dword_1A823F000, v20, v21, "IDSIDInfoResult did not have a UIStatus for handle: %s. ktData %@ verifierResult %@", v22, 0x20u);
      sub_1A83EA2FC(&unk_1EB2E9070, &unk_1A8501A90);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v23, -1, -1);
      sub_1A8244788(v32);
      MEMORY[0x1AC56D3F0](v32, -1, -1);
      MEMORY[0x1AC56D3F0](v22, -1, -1);

      v6 = v34;
    }

    else
    {
    }
  }

  v29 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a1 + 16);
  sub_1A848E234(v29, a3, a4, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v35;
  return result;
}

uint64_t sub_1A84A2D14(char *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(os_unfair_lock_s *, id, uint64_t, uint64_t))
{
  v8 = sub_1A84E5DBC();
  v10 = v9;
  v11 = *&a1[OBJC_IVAR___IMKeyTransparencyController_state];
  v12 = a3;
  v13 = a1;

  os_unfair_lock_lock(v11 + 10);
  a5(v11 + 4, v12, v8, v10);
  os_unfair_lock_unlock(v11 + 10);
}

uint64_t sub_1A84A2DE0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = sub_1A84E5D8C();
  v8 = [v3 ktVerifierResultForHandleID_];

  if (v8)
  {
    v9 = [v3 verifier];
    sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A8507730;
    *(v10 + 32) = v8;
    sub_1A8244B68(0, &unk_1EB2E8770, 0x1E69DB4F8);
    v11 = v8;
    v12 = sub_1A84E5FEC();

    v13 = [v9 getDisplayStatusForResults:v12 isSelfOptedIn:{objc_msgSend(v3, sel_selfOptedIn)}];

    if (a3)
    {
      v14 = [a3 isLastIncomingFinishedMessageNotiMessage] ^ 1;
    }

    else
    {
      v14 = 1;
    }

    v21 = IMKeyTransparencyStatusFromKTUIStatus(v13, v14);

    return v21;
  }

  else
  {
    if (qword_1EB2E4780 != -1)
    {
      swift_once();
    }

    v15 = sub_1A84E5C9C();
    sub_1A824431C(v15, qword_1EB2E47B0);

    v16 = sub_1A84E5C7C();
    v17 = sub_1A84E617C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1A82446BC(a1, a2, &v22);
      _os_log_impl(&dword_1A823F000, v16, v17, "Could not find a verifier result for handleID: %s returning pending status", v18, 0xCu);
      sub_1A8244788(v19);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
      MEMORY[0x1AC56D3F0](v18, -1, -1);
    }

    return 2;
  }
}

void sub_1A84A30DC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = v7;
  while (v5)
  {
    v9 = v8;
LABEL_15:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A8244F40(*(v1 + 56) + 32 * v13, v52);
    *&v53 = v16;
    *(&v53 + 1) = v15;
    sub_1A8243DDC(v52, &v54);

    v11 = v9;
LABEL_16:
    v56 = v53;
    v57[0] = v54;
    v57[1] = v55;
    if (!*(&v53 + 1))
    {

      sub_1A84A3DAC(v47);

      return;
    }

    sub_1A8243DDC(v57, &v53);
    v17 = sub_1A84E5D8C();

    v18 = [v17 _stripFZIDPrefix];

    if (v18)
    {
      v19 = sub_1A84E5DBC();
      v21 = v20;
      sub_1A8244F40(&v53, v52);
      sub_1A8244B68(0, &qword_1EB2E4730, 0x1E69A52B8);
      if (swift_dynamicCast())
      {
        v50 = v11;
        [v49 setIDSIDInfoResult:v51 forHandleID:v18];
        v22 = [v51 ktData];
        if (v22 && (v23 = v22, v24 = [v22 verifierResult], v23, v24))
        {
          v40 = [v49 ktVerifierResultForHandleID_];
          if ([v24 isEqual_])
          {

            v18 = v40;
          }

          else
          {
            v46 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_1A824A1FC(0, *(v47 + 2) + 1, 1, v47);
            }

            v42 = *(v47 + 2);
            v41 = *(v47 + 3);
            v43 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              v45 = sub_1A824A1FC((v41 > 1), v42 + 1, 1, v47);
              v43 = v42 + 1;
              v47 = v45;
            }

            *(v47 + 2) = v43;
            v44 = &v47[16 * v42];
            *(v44 + 4) = v19;
            *(v44 + 5) = v21;
            [v49 setKTVerifierResult:v24 forHandleID:v18];
          }

          v8 = v50;

          sub_1A8244788(&v53);
        }

        else
        {

          if (qword_1EB2E4780 != -1)
          {
            swift_once();
          }

          v25 = sub_1A84E5C9C();
          sub_1A824431C(v25, qword_1EB2E47B0);

          v26 = sub_1A84E5C7C();
          v27 = sub_1A84E617C();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v52[0] = v29;
            *v28 = 136315138;
            v30 = sub_1A82446BC(v19, v21, v52);

            *(v28 + 4) = v30;
            _os_log_impl(&dword_1A823F000, v26, v27, "No KTVerifierResult in IDS query results for handle: %s", v28, 0xCu);
            sub_1A8244788(v29);
            v31 = v29;
            v1 = v48;
            MEMORY[0x1AC56D3F0](v31, -1, -1);
            MEMORY[0x1AC56D3F0](v28, -1, -1);
          }

          else
          {
          }

          sub_1A8244788(&v53);
          v8 = v50;
        }
      }

      else
      {

        if (qword_1EB2E4780 != -1)
        {
          swift_once();
        }

        v32 = sub_1A84E5C9C();
        sub_1A824431C(v32, qword_1EB2E47B0);

        v33 = sub_1A84E5C7C();
        v34 = sub_1A84E617C();

        if (!os_log_type_enabled(v33, v34))
        {

          goto LABEL_5;
        }

        v35 = v19;
        v8 = v11;
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v52[0] = v37;
        *v36 = 136315138;
        v38 = sub_1A82446BC(v35, v21, v52);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_1A823F000, v33, v34, "No IDSIDInfoResult found in IDS query results for handle: %s", v36, 0xCu);
        sub_1A8244788(v37);
        v39 = v37;
        v1 = v48;
        MEMORY[0x1AC56D3F0](v39, -1, -1);
        MEMORY[0x1AC56D3F0](v36, -1, -1);

        sub_1A8244788(&v53);
      }
    }

    else
    {
LABEL_5:
      sub_1A8244788(&v53);
      v8 = v11;
    }
  }

  if (v6 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      goto LABEL_16;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1A84A37D0(uint64_t a1, unint64_t a2)
{
  if (qword_1EB2E4780 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v4 = sub_1A84E5C9C();
    sub_1A824431C(v4, qword_1EB2E47B0);

    v5 = sub_1A84E5C7C();
    v6 = sub_1A84E617C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v48[0] = v8;
      *v7 = 136380675;
      *(v7 + 4) = sub_1A82446BC(a1, a2, v48);
      _os_log_impl(&dword_1A823F000, v5, v6, "Received flushed cache for KT Peer URI %{private}s", v7, 0xCu);
      sub_1A8244788(v8);
      MEMORY[0x1AC56D3F0](v8, -1, -1);
      MEMORY[0x1AC56D3F0](v7, -1, -1);
    }

    v9 = sub_1A84E5D8C();
    v10 = [v9 _stripFZIDPrefix];

    if (!v10)
    {
      break;
    }

    v11 = sub_1A84E5DBC();
    v13 = v12;

    sub_1A83EA2FC(&qword_1EB2E7FA0, &unk_1A8506CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A85013E0;
    v48[0] = sub_1A84E5DBC();
    v48[1] = v15;
    v16 = MEMORY[0x1E69E6158];
    sub_1A84E641C();
    *(inited + 96) = v16;
    v47 = v13;
    *(inited + 72) = v11;
    *(inited + 80) = v13;

    sub_1A83EC354(inited);
    swift_setDeallocating();
    sub_1A824B2D4(inited + 32, &qword_1EB2E8790, &qword_1A85008F0);
    v17 = [objc_opt_self() sharedRegistry];
    v18 = [v17 cachedChats];

    sub_1A8244B68(0, &unk_1EB2E8798, off_1E780D858);
    v19 = sub_1A84E5FFC();

    v42 = v19;
    if (v19 >> 62)
    {
      v20 = sub_1A84E654C();
      if (!v20)
      {
LABEL_40:

        return;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_40;
      }
    }

    if (v20 < 1)
    {
      __break(1u);
      return;
    }

    v21 = 0;
    v44 = v19 & 0xC000000000000001;
    v41 = v19 + 32;
    v40 = @"__kIMChatKeyTransparencyShouldRefreshNotification";
    v43 = v20;
    while (1)
    {
      v46 = v21;
      v22 = v44 ? MEMORY[0x1AC56AF80](v21, v42) : *(v41 + 8 * v21);
      a2 = v22;
      v23 = [v22 participants];
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      v24 = sub_1A84E5FFC();

      v45 = a2;
      a1 = v24 >> 62 ? sub_1A84E654C() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (a1)
      {
        break;
      }

LABEL_9:

      swift_bridgeObjectRelease_n();
LABEL_10:
      v21 = v46 + 1;
      if (v46 + 1 == v43)
      {
        goto LABEL_40;
      }
    }

    v25 = 0;
    while ((v24 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1AC56AF80](v25, v24);
      a2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      v27 = v26;
      v28 = [v27 ID];
      sub_1A84E5DBC();

      v29 = sub_1A84E5D8C();
      v30 = [v29 _stripFZIDPrefix];

      if (v30)
      {
        v31 = sub_1A84E5DBC();
        v33 = v32;

        if (v31 == v11 && v33 == v47)
        {

LABEL_34:

          v36 = [objc_opt_self() defaultCenter];
          v37 = v40;
          v38 = v45;
          v39 = sub_1A84E5D2C();
          [v36 __mainThreadPostNotificationName_object_userInfo_];

          goto LABEL_10;
        }

        v35 = sub_1A84E67AC();

        if (v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      ++v25;
      if (a2 == a1)
      {
        goto LABEL_9;
      }
    }

    if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v26 = *(v24 + 8 * v25 + 32);
    a2 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_23;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }
}

void sub_1A84A3DAC(uint64_t a1)
{
  if (qword_1EB2E4780 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1EB2E47B0);

  v3 = sub_1A84E5C7C();
  v4 = sub_1A84E617C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1A823F000, v3, v4, "Notifying clients of %ld handles with updated KT status'.", v5, 0xCu);
    MEMORY[0x1AC56D3F0](v5, -1, -1);

    if (!*(a1 + 16))
    {
      return;
    }
  }

  else
  {

    if (!*(a1 + 16))
    {
      return;
    }
  }

  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = MEMORY[0x1AC56AB00](a1, MEMORY[0x1E69E6158]);
    v12 = sub_1A82446BC(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1A823F000, v6, v7, "Handles with updated kt status: %s.", v8, 0xCu);
    sub_1A8244788(v9);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  sub_1A83EA2FC(&qword_1EB2E8758, &qword_1A8509738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  *(inited + 32) = sub_1A84E5DBC();
  *(inited + 40) = v14;
  *(inited + 48) = a1;

  v15 = sub_1A83EC698(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &unk_1EB2E8760, &qword_1A8509740);
  v16 = [objc_opt_self() defaultCenter];
  v17 = @"__kIMChatKeyTransparencyStatusChangedNotification";
  sub_1A84A5B3C(v15);

  v18 = sub_1A84E5D2C();

  [v16 __mainThreadPostNotificationName_object_userInfo_];
}

uint64_t sub_1A84A40EC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  result = (*(v2 + 16))(v4 | *a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

void __swiftcall IMUltraConstrainedNetworkMonitor.init()(IMUltraConstrainedNetworkMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A84A4184()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E87C0);
  sub_1A824431C(v0, qword_1EB2E87C0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

void sub_1A84A41F0(char a1, uint64_t a2)
{
  v3 = a1 & 1;
  v4 = sub_1A84E535C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained);
  if (v8 != v3)
  {
    if (qword_1EB2E59C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A84E5C9C();
    sub_1A824431C(v9, qword_1EB2E87C0);
    v10 = sub_1A84E5C7C();
    v11 = sub_1A84E617C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_1A823F000, v10, v11, "updated with isUltraConstrained: %{BOOL}d", v12, 8u);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
    }

    v13 = [objc_opt_self() defaultCenter];
    v14 = *MEMORY[0x1E69A7DC0];
    memset(v17, 0, sizeof(v17));
    v15 = v14;
    sub_1A84E534C();
    v16 = sub_1A84E532C();
    (*(v5 + 8))(v7, v4);
    [v13 __mainThreadPostNotification_];
  }
}

id IMUltraConstrainedNetworkMonitor.init()()
{
  *(v0 + OBJC_IVAR___IMUltraConstrainedNetworkMonitor_isUltraConstrained) = 0;
  v2.super_class = IMUltraConstrainedNetworkMonitor;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for IMUltraConstrainedNetworkMonitor()
{
  result = qword_1EB2E8840;
  if (!qword_1EB2E8840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8840);
  }

  return result;
}

id sub_1A84A456C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___IMSPICollaborationMessageListener_connection] = 0;
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000032, 0x80000001A8533830);
  MEMORY[0x1AC56A990](a1, a2);

  v5 = &v2[OBJC_IVAR___IMSPICollaborationMessageListener_listenerID];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v7.receiver = v2;
  v7.super_class = IMSPICollaborationMessageListener;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1A84A4674()
{
  [v0 stopListening];
  v1 = objc_opt_self();
  v2 = [v1 sharedController];
  v3 = [v2 listener];

  [v3 addHandler_];
  v4 = [v1 sharedController];
  v5 = sub_1A84E5D8C();
  v6 = [v4 multiplexedConnectionWithLabel:v5 capabilities:0x80000000 context:0];

  *&v0[OBJC_IVAR___IMSPICollaborationMessageListener_connection] = v6;

  return swift_unknownObjectRelease();
}

id IMSPICollaborationMessageListener.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMSPICollaborationMessageListener()
{
  result = qword_1EB2E8870;
  if (!qword_1EB2E8870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8870);
  }

  return result;
}

uint64_t sub_1A84A4AE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1A824B390(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1A84E67AC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84A4C84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A824B390(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ImportExport.ExportStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  ImportExport.ExportStatistics.init()();
  return v0;
}

void ImportExport.ExportStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 48);
  v57[0] = *(v2 + 32);
  v57[1] = v4;
  v58 = *(v2 + 64);
  sub_1A84A8550(0xD000000000000017, 0x80000001A8533870, v57, a1);
  swift_beginAccess();
  v5 = *(v2 + 88);
  v55[0] = *(v2 + 72);
  v55[1] = v5;
  v56 = *(v2 + 104);
  sub_1A84A8550(0xD000000000000016, 0x80000001A8533890, v55, a1);
  swift_beginAccess();
  v6 = *(v2 + 128);
  v53[0] = *(v2 + 112);
  v53[1] = v6;
  v54 = *(v2 + 144);
  sub_1A84A8550(0x646574726F707845, 0xEF73746E756F4320, v53, a1);
  v7 = *(v2 + 72);
  v8 = *(v2 + 112);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v2 + 120);
  v12 = *(v2 + 80);
  v9 = __OFSUB__(v12, v11);
  v13 = v12 - v11;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(v2 + 88);
  v15 = *(v2 + 128);
  v9 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v2 + 96);
  v18 = *(v2 + 136);
  v9 = __OFSUB__(v17, v18);
  v19 = v17 - v18;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v2 + 104);
  v21 = *(v2 + 144);
  v9 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v49 = v10;
  *(&v49 + 1) = v13;
  v50 = v16;
  v51 = v19;
  v52 = v22;
  sub_1A84A8550(0xD000000000000011, 0x80000001A85338B0, &v49, a1);
  v23 = *(v2 + 32);
  v24 = *(v2 + 72);
  v9 = __OFSUB__(v23, v24);
  v25 = v23 - v24;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = *(v2 + 80);
  v27 = *(v2 + 40);
  v9 = __OFSUB__(v27, v26);
  v28 = v27 - v26;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = *(v2 + 48);
  v30 = *(v2 + 88);
  v9 = __OFSUB__(v29, v30);
  v31 = v29 - v30;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = *(v2 + 56);
  v33 = *(v2 + 96);
  v9 = __OFSUB__(v32, v33);
  v34 = v32 - v33;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = *(v2 + 64);
  v36 = *(v2 + 104);
  v9 = __OFSUB__(v35, v36);
  v37 = v35 - v36;
  if (!v9)
  {
    *&v45 = v25;
    *(&v45 + 1) = v28;
    v46 = v31;
    v47 = v34;
    v48 = v37;
    sub_1A84A8550(0xD000000000000010, 0x80000001A8532F80, &v45, a1);
    swift_beginAccess();

    sub_1A84A5120(v38);
    v40._rawValue = v39;

    v41._countAndFlagsBits = 0xD00000000000001FLL;
    v41._object = 0x80000001A85338D0;
    ImportExport.Report.add(reportNamed:for:)(v41, v40);

    swift_beginAccess();
    v42 = *(v2 + 176);
    v44[0] = *(v2 + 160);
    v44[1] = v42;
    v44[2] = *(v2 + 192);
    sub_1A84A8788(v44, v43);
    sub_1A84A8660(0xD000000000000014, 0x80000001A852F1F0, v44, a1);
    sub_1A84A87E4(v44);
    swift_beginAccess();

    ImportExport.Timer.format(report:)(a1);

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1A84A5120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1A8243DDC(&v22, v24);
        sub_1A8243DDC(v24, v25);
        sub_1A8243DDC(v25, &v23);
        v16 = sub_1A824B390(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_1A8244788(v10);
          sub_1A8243DDC(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1A8243DDC(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1A84A5368(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1A8244F40(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1A8243DDC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1A8243DDC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1A8243DDC(v31, v32);
    v16 = sub_1A84E63FC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1A8243DDC(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1A84A5630(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1A824B334(*(a1 + 48) + 40 * v12, &v35);
    sub_1A8244F40(*(a1 + 56) + 32 * v12, v37 + 8);
    v33[0] = v37[0];
    v33[1] = v37[1];
    v34 = v38;
    v32[2] = v35;
    v32[3] = v36;
    v21 = v35;
    v23 = v36;
    v25 = *&v37[0];
    sub_1A8243DDC((v33 + 8), v27);
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_1A8243DDC(v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_1A8243DDC(v31, v32);
    v13 = sub_1A84E63FC();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v9 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v24;
    *(v10 + 32) = v26;
    sub_1A8243DDC(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1A84A58E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&qword_1EB2E66B8, &qword_1A8500968);
    v2 = sub_1A84E657C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_1A84AA230();

        v18 = v17;
        swift_dynamicCast();
        sub_1A8243DDC(&v25, v27);
        sub_1A8243DDC(v27, v28);
        sub_1A8243DDC(v28, &v26);
        v19 = sub_1A824B390(v16, v15);
        if (v20)
        {
          v8 = (v2[6] + 16 * v19);
          *v8 = v16;
          v8[1] = v15;
          v9 = v19;

          v10 = (v2[7] + 32 * v9);
          sub_1A8244788(v10);
          sub_1A8243DDC(&v26, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
          v21 = (v2[6] + 16 * v19);
          *v21 = v16;
          v21[1] = v15;
          sub_1A8243DDC(&v26, (v2[7] + 32 * v19));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1A84A5B64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v4 = sub_1A84E657C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v10 = 0;
  while (v7)
  {
LABEL_15:
    v14 = (*(a1 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v15 = v14[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    sub_1A83EA2FC(a2, a3);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1A8243DDC(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1A8243DDC(v33, v34);
    v16 = sub_1A84E63FC();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v9 + 8 * v19);
        if (v23 != -1)
        {
          v11 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v4 + 48) + 40 * v11;
    *v12 = v26;
    *(v12 + 16) = v27;
    *(v12 + 32) = v28;
    sub_1A8243DDC(v34, (*(v4 + 56) + 32 * v11));
    ++*(v4 + 16);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ImportExport.ExportStatistics.reset()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  swift_beginAccess();
  v4 = *(v0 + 24);
  v5 = sub_1A84E56DC();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();

  sub_1A843E9F0(v3, v4 + v7);
  swift_endAccess();
  v6(v3, 1, 1, v5);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  swift_beginAccess();
  sub_1A843E9F0(v3, v4 + v8);
  swift_endAccess();

  if (qword_1EB2E5980 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB2E7F20;
  v22 = xmmword_1EB2E7F00;
  v21 = *&qword_1EB2E7F10;
  swift_beginAccess();
  *(v0 + 88) = v21;
  *(v0 + 72) = v22;
  *(v0 + 104) = v9;
  v10 = xmmword_1EB2E7F00;
  v22 = *(&xmmword_1EB2E7F00 + 8);
  v21 = unk_1EB2E7F18;
  swift_beginAccess();
  *(v0 + 136) = v21;
  *(v0 + 120) = v22;
  v11 = xmmword_1EB2E7F00;
  v12 = qword_1EB2E7F10;
  v13 = unk_1EB2E7F18;
  v14 = qword_1EB2E7F20;
  *(v0 + 72) = xmmword_1EB2E7F00;
  *(v0 + 88) = v12;
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  *(v0 + 112) = v10;
  swift_beginAccess();
  *(v0 + 32) = v11;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = xmmword_1EB2E6D30;
  v16 = qword_1EB2E6D40;
  v17 = unk_1EB2E6D48;
  v18 = qword_1EB2E6D50;
  v19 = qword_1EB2E6D58;
  swift_beginAccess();
  *(v0 + 160) = v15;
  *(v0 + 176) = v16;
  *(v0 + 184) = v17;
  *(v0 + 192) = v18;
  *(v0 + 200) = v19;

  v20 = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v0 + 152) = v20;
}

__n128 ImportExport.ExportStatistics.predictedRecordCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ExportStatistics.examinedRecordCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  result = *(v1 + 72);
  v5 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 ImportExport.ExportStatistics.exportedCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double ImportExport.ExportStatistics.unexportedMessageTypeCounts.getter()
{
  swift_beginAccess();

  return result;
}

double ImportExport.ExportStatistics.attachmentStatistics.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v1 + 200);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 184);
  *(a1 + 40) = v4;

  return result;
}

void *ImportExport.ExportStatistics.unexportedCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  v10[0] = *(v1 + 72);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

void *ImportExport.ExportStatistics.remainingCounts.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v4;
  v11 = v3;
  swift_beginAccess();
  v5 = *(v1 + 104);
  v6 = *(v1 + 88);
  v8[0] = *(v1 + 72);
  v8[1] = v6;
  v9 = v5;
  return static ImportExport.RecordCounts.- infix(_:_:)(v10, v8, a1);
}

uint64_t ImportExport.ExportStatistics.init()()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = sub_1A84E56DC();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v8(v4, 1, 1, v7);
  type metadata accessor for ImportExport.Timer(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v8((v9 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v7);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v8((v9 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v7);
  swift_beginAccess();
  sub_1A843E9F0(v6, v9 + v10);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v4, v9 + v11);
  swift_endAccess();
  *(v0 + 24) = v9;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v0 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = v12;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 184) = 0;
  *(v0 + 16) = 0x3FF3333333333333;
  return v0;
}

uint64_t ImportExport.ExportStatistics.__allocating_init(timer:examinedRecordCounts:exportedCounts:unexportedCounts:unexportedMessageTypeCounts:attachmentStatistics:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v36 = a5;
  v32 = a1;
  v9 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v16 = *(a2 + 4);
  v31 = *a3;
  v17 = a6[1];
  v35 = *a6;
  v34 = v17;
  v33 = *(a6 + 4);
  v18 = *(a6 + 5);
  v19 = sub_1A84E56DC();
  v20 = *(*(v19 - 8) + 56);
  v21 = a2[1];
  v28 = *a2;
  v27 = v21;
  v30 = *(a3 + 1);
  v29 = *(a3 + 3);
  v20(v14, 1, 1, v19);
  v20(v12, 1, 1, v19);
  type metadata accessor for ImportExport.Timer(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v20((v22 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v19);
  v24 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v20((v22 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v19);
  swift_beginAccess();
  sub_1A843E9F0(v14, v22 + v23);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v12, v22 + v24);
  swift_endAccess();
  *(v15 + 24) = v22;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  *(v15 + 128) = 0u;
  *(v15 + 144) = 0;
  *(v15 + 112) = 0u;
  v25 = MEMORY[0x1E69E7CC0];
  *(v15 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v15 + 160) = 0;
  *(v15 + 168) = 0;
  *(v15 + 176) = v25;
  *(v15 + 192) = 0;
  *(v15 + 200) = 0;
  *(v15 + 184) = 0;
  *(v15 + 16) = 0x3FF3333333333333;
  swift_beginAccess();
  *(v15 + 24) = v32;

  swift_beginAccess();
  *(v15 + 88) = v27;
  *(v15 + 72) = v28;
  *(v15 + 104) = v16;
  swift_beginAccess();
  *(v15 + 112) = v31;
  *(v15 + 136) = v29;
  *(v15 + 120) = v30;
  swift_beginAccess();
  *(v15 + 152) = v36;

  swift_beginAccess();
  *(v15 + 160) = v35;
  *(v15 + 176) = v34;
  *(v15 + 192) = v33;
  *(v15 + 200) = v18;

  return v15;
}

uint64_t ImportExport.ExportStatistics.init(timer:examinedRecordCounts:exportedCounts:unexportedCounts:unexportedMessageTypeCounts:attachmentStatistics:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v36 = a5;
  v32 = a1;
  v10 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(a2 + 4);
  v31 = *a3;
  v17 = a6[1];
  v35 = *a6;
  v34 = v17;
  v33 = *(a6 + 4);
  v18 = *(a6 + 5);
  v19 = sub_1A84E56DC();
  v20 = *(*(v19 - 8) + 56);
  v21 = a2[1];
  v28 = *a2;
  v27 = v21;
  v30 = *(a3 + 1);
  v29 = *(a3 + 3);
  v20(v15, 1, 1, v19);
  v20(v13, 1, 1, v19);
  type metadata accessor for ImportExport.Timer(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v20((v22 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v19);
  v24 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v20((v22 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v19);
  swift_beginAccess();
  sub_1A843E9F0(v15, v22 + v23);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v13, v22 + v24);
  swift_endAccess();
  *(v6 + 24) = v22;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0;
  *(v6 + 112) = 0u;
  v25 = MEMORY[0x1E69E7CC0];
  *(v6 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = v25;
  *(v6 + 192) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0;
  *(v6 + 16) = 0x3FF3333333333333;
  swift_beginAccess();
  *(v6 + 24) = v32;

  swift_beginAccess();
  *(v6 + 88) = v27;
  *(v6 + 72) = v28;
  *(v6 + 104) = v16;
  swift_beginAccess();
  *(v6 + 112) = v31;
  *(v6 + 136) = v29;
  *(v6 + 120) = v30;
  swift_beginAccess();
  *(v6 + 152) = v36;

  swift_beginAccess();
  *(v6 + 160) = v35;
  *(v6 + 176) = v34;
  *(v6 + 192) = v33;
  *(v6 + 200) = v18;

  return v6;
}

uint64_t sub_1A84A6D78()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x72656D6974;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E6F6973726576;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    if (v1 != 3)
    {
      v3 = 0x646574726F707865;
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

uint64_t sub_1A84A6E6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84A8CA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84A6E94(uint64_t a1)
{
  v2 = sub_1A84A8838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84A6ED0(uint64_t a1)
{
  v2 = sub_1A84A8838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportStatistics.deinit()
{

  return v0;
}

uint64_t ImportExport.ExportStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ExportStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8888, &qword_1A85097C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7 - 16];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84A8838();
  sub_1A84E68AC();
  LOBYTE(v18) = 0;
  sub_1A84E66EC();
  if (!v2)
  {
    swift_beginAccess();
    *&v18 = *(v3 + 24);
    v25 = 1;
    type metadata accessor for ImportExport.Timer(0);
    sub_1A84AA068(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E672C();
    swift_beginAccess();
    v9 = *(v3 + 64);
    v10 = *(v3 + 48);
    v18 = *(v3 + 32);
    *v19 = v10;
    *&v19[16] = v9;
    v24 = 2;
    sub_1A847E61C();
    sub_1A84E672C();
    swift_beginAccess();
    v11 = *(v3 + 104);
    v12 = *(v3 + 88);
    v18 = *(v3 + 72);
    *v19 = v12;
    *&v19[16] = v11;
    v23 = 3;
    sub_1A84E672C();
    swift_beginAccess();
    v13 = *(v3 + 144);
    v14 = *(v3 + 128);
    v18 = *(v3 + 112);
    *v19 = v14;
    *&v19[16] = v13;
    v22 = 4;
    sub_1A84E672C();
    swift_beginAccess();
    *&v18 = *(v3 + 152);
    v21 = 5;
    sub_1A83EA2FC(&qword_1EB2E8898, &qword_1A85097D0);
    sub_1A84A88E0(&qword_1EB2E88A0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7368], MEMORY[0x1E69E5E38]);
    sub_1A84E672C();
    swift_beginAccess();
    v15 = *(v3 + 176);
    v16 = *(v3 + 200);
    v18 = *(v3 + 160);
    *v19 = v15;
    *&v19[8] = *(v3 + 184);
    v20 = v16;
    v26 = 6;
    sub_1A84A888C();

    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.ExportStatistics.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ExportStatistics.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ExportStatistics.init(from:)(void *a1)
{
  v43 = a1;
  *&v38 = *v1;
  v39 = sub_1A83EA2FC(&qword_1EB2E88B0, &qword_1A85097D8);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  *&v42 = v35 - v2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - v7;
  v9 = sub_1A84E56DC();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v6, 1, 1, v9);
  *&v36 = type metadata accessor for ImportExport.Timer(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v10((v11 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v9);
  v13 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v10((v11 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v9);
  swift_beginAccess();
  sub_1A843E9F0(v8, v11 + v12);
  swift_endAccess();
  swift_beginAccess();
  v14 = v43;
  sub_1A843E9F0(v6, v11 + v13);
  swift_endAccess();
  *(v1 + 24) = v11;
  v15 = (v1 + 24);
  *(v1 + 32) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
  v17 = (v1 + 152);
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = v16;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 184) = 0;
  v40 = v1;
  sub_1A82471E0(v14, v14[3]);
  sub_1A84A8838();
  v18 = v41;
  sub_1A84E689C();
  if (v18)
  {
    v21 = v40;

    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v41 = v1 + 32;
    v35[1] = v1 + 160;
    v19 = v37;
    LOBYTE(v45) = 0;
    sub_1A84E662C();
    v21 = v40;
    *(v40 + 16) = v22;
    v53[0] = 1;
    sub_1A84AA068(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E666C();
    v23 = v45;
    swift_beginAccess();
    *v15 = v23;

    v52[0] = 2;
    sub_1A847EC5C();
    sub_1A84E666C();
    v24 = v47;
    v38 = v45;
    v36 = v46;
    swift_beginAccess();
    v25 = v36;
    *(v21 + 32) = v38;
    *(v21 + 48) = v25;
    *(v21 + 64) = v24;
    v51 = 3;
    sub_1A84E666C();
    v26 = v47;
    v41 = v45;
    v38 = v46;
    swift_beginAccess();
    *(v21 + 88) = v38;
    *(v21 + 72) = v41;
    *(v21 + 104) = v26;
    v50 = 4;
    sub_1A84E666C();
    v27 = v47;
    v41 = v45;
    v38 = v46;
    swift_beginAccess();
    v28 = v38;
    *(v21 + 112) = v41;
    *(v21 + 128) = v28;
    *(v21 + 144) = v27;
    sub_1A83EA2FC(&qword_1EB2E8898, &qword_1A85097D0);
    v49 = 5;
    sub_1A84A88E0(&qword_1EB2E88B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7390], MEMORY[0x1E69E5E58]);
    sub_1A84E666C();
    v29 = v45;
    swift_beginAccess();
    *v17 = v29;

    v44 = 6;
    sub_1A84A8950();
    v30 = v39;
    v31 = v42;
    sub_1A84E666C();
    (*(v19 + 8))(v31, v30);
    v42 = v45;
    v41 = v46;
    v32 = v47;
    v33 = v48;
    swift_beginAccess();
    v34 = v41;
    *(v21 + 160) = v42;
    *(v21 + 176) = v34;
    *(v21 + 192) = v32;
    *(v21 + 200) = v33;
  }

  sub_1A8244788(v43);
  return v21;
}

uint64_t sub_1A84A7C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ExportStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.description.getter()
{
  sub_1A84E646C();
  v0 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v0);

  MEMORY[0x1AC56A990](0x6F6973726576203ALL, 0xEB00000000203A6ELL);
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](2604, 0xE200000000000000);
  v1 = sub_1A83EE280();
  MEMORY[0x1AC56A990](v1);

  return 0;
}

uint64_t sub_1A84A7DFC(uint64_t a1)
{
  type metadata accessor for ImportExport.ExportStatistics();
  v1 = swift_allocObject();
  result = ImportExport.ExportStatistics.init()();
  qword_1EB2E8880 = v1;
  return result;
}

uint64_t static ImportExport.ExportStatistics.zero.getter()
{
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A84A7EA0@<X0>(void *a1@<X8>)
{
  if (qword_1EB2E59D0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB2E8880;
}

uint64_t sub_1A84A7F10@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84A7F40(uint64_t *a1, void *a2)
{
  v3 = _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t sub_1A84A7F88@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84A7FB8(uint64_t *a1, void *a2)
{
  v3 = _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(*a1, *a2);

  *a1 = v3;
  return result;
}

uint64_t ImportExport.ExportStatistics.totalConversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalMessageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalAttachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.totalParticipantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.conversationCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 72);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.messageCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.attachmentCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t ImportExport.ExportStatistics.participantCount.getter()
{
  swift_beginAccess();
  result = *(v0 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8290()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A82D8()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 40);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8320()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8368()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A83B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_1A84A83F0()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 72);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8438()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 80);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8480()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 88);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A84C8()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 96);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84A8510()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 104);
}

__n128 sub_1A84A8550(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = a3[1];
  v19 = *a3;
  v20 = v5;
  v21 = *(a3 + 4);
  v15 = a1;
  v16.n128_u64[0] = a2;
  v16.n128_u64[1] = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 0;

  ImportExport.RecordCounts.format(report:)(&v15);
  v6 = v15;
  v14 = v16;
  v7 = v17;
  v8 = v18;
  v9 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A83EECF8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A83EECF8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  *(v12 + 4) = v6;
  result = v14;
  *(v12 + 40) = v14;
  *(v12 + 7) = v7;
  v12[64] = v8;
  *(a4 + 24) = v9;
  return result;
}

__n128 sub_1A84A8660(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = a3[1];
  v20 = *a3;
  v21 = v5;
  v22 = a3[2];
  v16 = a1;
  v17.n128_u64[0] = a2;
  v17.n128_u64[1] = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v19 = 0;
  sub_1A84A8788(a3, v15);

  ImportExport.ExportedAttachmentStatistics.format(report:)(&v16);

  v6 = v16;
  v14 = v17;
  v7 = v18;
  v8 = v19;
  v9 = *(a4 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1A83EECF8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A83EECF8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  *(v12 + 4) = v6;
  result = v14;
  *(v12 + 40) = v14;
  *(v12 + 7) = v7;
  v12[64] = v8;
  *(a4 + 24) = v9;
  return result;
}

unint64_t sub_1A84A8838()
{
  result = qword_1EB2E8890;
  if (!qword_1EB2E8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8890);
  }

  return result;
}

unint64_t sub_1A84A888C()
{
  result = qword_1EB2E88A8;
  if (!qword_1EB2E88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88A8);
  }

  return result;
}

uint64_t sub_1A84A88E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E8898, &qword_1A85097D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A84A8950()
{
  result = qword_1EB2E88C0;
  if (!qword_1EB2E88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88C0);
  }

  return result;
}

BOOL _s6IMCore12ImportExportO0C10StatisticsC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ImportExport.Timer(0);
  swift_beginAccess();
  swift_beginAccess();

  v4 = static ImportExport.Timer.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 104);
  v17 = *(a1 + 88);
  v18 = *(a1 + 72);
  swift_beginAccess();
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v18, *(a2 + 72)), vceqq_s64(v17, *(a2 + 88))))) & 1) != 0 && v5 == *(a2 + 104))
  {
    swift_beginAccess();
    v7 = *(a1 + 144);
    v15 = *(a1 + 128);
    v16 = *(a1 + 112);
    swift_beginAccess();
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v16, *(a2 + 112)), vceqq_s64(v15, *(a2 + 128))))) & 1) != 0 && v7 == *(a2 + 144))
    {
      if (__OFSUB__(v18.i64[0], v16.i64[0]))
      {
        __break(1u);
      }

      else if (!__OFSUB__(v18.i64[1], v16.i64[1]))
      {
        if (!__OFSUB__(v17.i64[0], v15.i64[0]))
        {
          if (!__OFSUB__(v17.i64[1], v15.i64[1]))
          {
            if (!__OFSUB__(v5, v7))
            {
              swift_beginAccess();
              v8 = *(a1 + 152);
              swift_beginAccess();
              v9 = *(a2 + 152);

              v10 = sub_1A84A4C84(v8, v9);

              if (v10)
              {
                swift_beginAccess();
                v11 = *(a1 + 176);
                v12 = *(a1 + 200);
                v23 = *(a1 + 160);
                v24 = v11;
                v25 = *(a1 + 184);
                v26 = v12;
                swift_beginAccess();
                v13 = *(a2 + 176);
                v14 = *(a2 + 200);
                v19 = *(a2 + 160);
                v20 = v13;
                v21 = *(a2 + 184);
                v22 = v14;

                LOBYTE(v11) = _s6IMCore12ImportExportO28ExportedAttachmentStatisticsV2eeoiySbAE_AEtFZ_0(&v23, &v19);

                if (v11)
                {
                  return *(a1 + 16) == *(a2 + 16);
                }
              }

              return 0;
            }

LABEL_20:
            __break(1u);
            return result;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1A84A8CA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8533920 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8533940 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574726F707865 && a2 == 0xEE0073746E756F43 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8533970 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8533990 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t _s6IMCore12ImportExportO0C10StatisticsC1poiyA2E_AEtFZ_0(void *a1, void *a2)
{
  v134 = *a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v135 = &v123 - v7;
  swift_beginAccess();
  v137 = a1;
  v8 = a1[19];
  swift_beginAccess();
  v138 = a2;
  v9 = a2[19];
  v10 = (v9 + 64);
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v141 = v9;

  v15 = 0;
  v139 = v14;
  v140 = (v9 + 64);
  if (v13)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = v10[v16];
    ++v15;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = v17 | (v16 << 6);
        v19 = (*(v141 + 48) + 16 * v18);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(*(v141 + 56) + 8 * v18);
        v23 = v8[2];

        if (!v23 || (v24 = sub_1A824B390(v20, v21), (v25 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v8;
          v42 = v20;
          v44 = sub_1A824B390(v20, v21);
          v45 = v8[2];
          v46 = (v43 & 1) == 0;
          v47 = v45 + v46;
          if (__OFADD__(v45, v46))
          {
            goto LABEL_54;
          }

          v48 = v43;
          if (v8[3] >= v47)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v43 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            else
            {
              sub_1A848E814();
              if ((v48 & 1) == 0)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            sub_1A848A8C4(v47, isUniquelyReferenced_nonNull_native);
            v49 = sub_1A824B390(v42, v21);
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_73;
            }

            v44 = v49;
            if ((v48 & 1) == 0)
            {
LABEL_25:
              v8 = v143;
              v143[(v44 >> 6) + 8] |= 1 << v44;
              v51 = (v8[6] + 16 * v44);
              *v51 = v42;
              v51[1] = v21;
              *(v8[7] + 8 * v44) = v22;
              v52 = v8[2];
              v36 = __OFADD__(v52, 1);
              v53 = v52 + 1;
              if (v36)
              {
                goto LABEL_55;
              }

              v8[2] = v53;
              goto LABEL_6;
            }
          }

          v8 = v143;
          *(v143[7] + 8 * v44) = v22;
LABEL_6:
          v15 = v16;
          v14 = v139;
          v10 = v140;
          if (!v13)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v26 = *(v8[7] + 8 * v24);
        v27 = v26 + v22;
        if (__OFADD__(v26, v22))
        {
          goto LABEL_56;
        }

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = v20;
        v30 = v28;
        v143 = v8;
        v31 = v29;
        v32 = sub_1A824B390(v29, v21);
        v34 = v8[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_57;
        }

        v38 = v33;
        if (v8[3] < v37)
        {
          break;
        }

        if (v30)
        {
          v39 = v31;
          goto LABEL_29;
        }

        v55 = v32;
        sub_1A848E814();
        v32 = v55;
        v39 = v31;
        v10 = v140;
        if (v38)
        {
LABEL_30:
          v54 = v32;

          v8 = v143;
          *(v143[7] + 8 * v54) = v27;
          goto LABEL_36;
        }

LABEL_34:
        v8 = v143;
        v143[(v32 >> 6) + 8] |= 1 << v32;
        v56 = (v8[6] + 16 * v32);
        *v56 = v39;
        v56[1] = v21;
        *(v8[7] + 8 * v32) = v27;
        v57 = v8[2];
        v36 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v36)
        {
          goto LABEL_72;
        }

        v8[2] = v58;
LABEL_36:
        v15 = v16;
        v14 = v139;
        if (!v13)
        {
          goto LABEL_8;
        }

LABEL_7:
        v16 = v15;
      }

      sub_1A848A8C4(v37, v30);
      v39 = v31;
      v32 = sub_1A824B390(v31, v21);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_73;
      }

LABEL_29:
      v10 = v140;
      if (v38)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  v140 = v8;

  v59 = v137;
  swift_beginAccess();
  v60 = v59[3];
  swift_beginAccess();
  v62 = v59[9];
  v61 = v59[10];
  v64 = v59[11];
  v63 = v59[12];
  v65 = v59[13];
  v66 = v138;
  swift_beginAccess();
  v67 = v66[9];
  v68 = v62 + v67;
  if (__OFADD__(v62, v67))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v69 = v66[10];
  v70 = v61 + v69;
  if (__OFADD__(v61, v69))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v71 = v66[11];
  v72 = v64 + v71;
  if (__OFADD__(v64, v71))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v73 = v66[12];
  v74 = v63 + v73;
  if (__OFADD__(v63, v73))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v75 = v66[13];
  v36 = __OFADD__(v65, v75);
  v76 = v65 + v75;
  if (v36)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v132 = v76;
  v133 = v74;
  v139 = v72;
  v141 = v70;
  swift_beginAccess();
  v78 = v59[14];
  v77 = v59[15];
  v80 = v59[16];
  v79 = v59[17];
  v81 = v59[18];
  swift_beginAccess();
  v82 = v66[14];
  v83 = v78 + v82;
  if (__OFADD__(v78, v82))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v84 = v66[15];
  v85 = v77 + v84;
  if (__OFADD__(v77, v84))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v86 = v66[16];
  v87 = v80 + v86;
  if (__OFADD__(v80, v86))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v88 = v66[17];
  v89 = v79 + v88;
  if (__OFADD__(v79, v88))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v90 = v66[18];
  v36 = __OFADD__(v81, v90);
  v91 = v81 + v90;
  if (v36)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v127 = v91;
  v128 = v89;
  v129 = v87;
  v130 = v85;
  v131 = v83;
  swift_beginAccess();
  v93 = v59[20];
  v92 = v59[21];
  v94 = v59[22];
  v95 = v59[23];
  v96 = v59[24];
  swift_beginAccess();
  v97 = v66[20];
  v98 = (v93 + v97);
  if (__OFADD__(v93, v97))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v99 = v66[21];
  v36 = __OFADD__(v92, v99);
  v100 = v92 + v99;
  if (v36)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v126 = v100;
  v137 = v98;
  v101 = v66[23];
  v102 = v66[24];
  v142 = v94;

  sub_1A83EE514(v103);
  if (__OFADD__(v95, v101))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (!__OFADD__(v96, v102))
  {
    v138 = v142;
    v125 = v95 + v101;
    v134 = v96 + v102;
    v104 = swift_allocObject();
    v105 = sub_1A84E56DC();
    v106 = *(*(v105 - 8) + 56);
    v107 = v135;
    v106(v135, 1, 1, v105);
    v124 = v68;
    v108 = v136;
    v106(v136, 1, 1, v105);
    type metadata accessor for ImportExport.Timer(0);
    v109 = swift_allocObject();
    v110 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v106((v109 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v105);
    v123 = v60;
    v111 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v106((v109 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v105);
    swift_beginAccess();
    sub_1A843E9F0(v107, v109 + v110);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v108, v109 + v111);
    swift_endAccess();
    *(v104 + 24) = v109;
    *(v104 + 32) = 0u;
    *(v104 + 48) = 0u;
    *(v104 + 64) = 0u;
    *(v104 + 80) = 0u;
    *(v104 + 96) = 0u;
    *(v104 + 128) = 0u;
    *(v104 + 144) = 0;
    *(v104 + 112) = 0u;
    v112 = MEMORY[0x1E69E7CC0];
    *(v104 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
    *(v104 + 160) = 0;
    *(v104 + 168) = 0;
    *(v104 + 176) = v112;
    *(v104 + 192) = 0;
    *(v104 + 200) = 0;
    *(v104 + 184) = 0;
    *(v104 + 16) = 0x3FF3333333333333;
    swift_beginAccess();
    *(v104 + 24) = v123;

    swift_beginAccess();
    v113 = v141;
    *(v104 + 72) = v124;
    *(v104 + 80) = v113;
    v114 = v132;
    v115 = v133;
    *(v104 + 88) = v139;
    *(v104 + 96) = v115;
    *(v104 + 104) = v114;
    swift_beginAccess();
    v116 = v130;
    *(v104 + 112) = v131;
    v118 = v128;
    v117 = v129;
    *(v104 + 120) = v116;
    *(v104 + 128) = v117;
    v119 = v127;
    *(v104 + 136) = v118;
    *(v104 + 144) = v119;
    swift_beginAccess();
    *(v104 + 152) = v140;

    swift_beginAccess();
    *(v104 + 160) = v137;
    v120 = v138;
    *(v104 + 168) = v126;
    *(v104 + 176) = v120;
    v121 = v134;
    *(v104 + 184) = v125;
    *(v104 + 192) = v121;
    *(v104 + 200) = 0;

    return v104;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO0C10StatisticsC1soiyA2E_AEtFZ_0(void *a1, void *a2)
{
  v2 = a2;
  v112 = *a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v100 - v7;
  swift_beginAccess();
  v115 = a1;
  v8 = a1[19];
  swift_beginAccess();
  v9 = v2[19];
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v118 = v9;

  v15 = 0;
  v117 = v2;
  while (v13)
  {
    v16 = v13;
LABEL_11:
    v13 = (v16 - 1) & v16;
    if (v8[2])
    {
      v19 = __clz(__rbit64(v16)) | (v15 << 6);
      v20 = (*(v118 + 48) + 16 * v19);
      v21 = *(*(v118 + 56) + 8 * v19);
      v23 = *v20;
      v22 = v20[1];

      v24 = sub_1A824B390(v23, v22);
      if (v25)
      {
        v26 = *(v8[7] + 8 * v24);
        v27 = __OFSUB__(v26, v21);
        v28 = v26 - v21;
        if (v27)
        {
          goto LABEL_56;
        }

        LODWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
        v119 = v8;
        v30 = sub_1A824B390(v23, v22);
        v31 = v8[2];
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          goto LABEL_57;
        }

        if (v8[3] >= v33)
        {
          if (v114)
          {
            if ((v29 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v114 = v30;
            v38 = v29;
            sub_1A848E814();
            v30 = v114;
            if ((v38 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

LABEL_22:
          v37 = v30;

          v8 = v119;
          *(v119[7] + 8 * v37) = v28;
          v2 = v117;
        }

        else
        {
          v34 = v29;
          sub_1A848A8C4(v33, v114);
          v35 = sub_1A824B390(v23, v22);
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_59;
          }

          v30 = v35;
          if (v34)
          {
            goto LABEL_22;
          }

LABEL_24:
          v8 = v119;
          v119[(v30 >> 6) + 8] |= 1 << v30;
          v39 = (v8[6] + 16 * v30);
          *v39 = v23;
          v39[1] = v22;
          *(v8[7] + 8 * v30) = v28;
          v40 = v8[2];
          v27 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v27)
          {
            goto LABEL_58;
          }

          v8[2] = v41;
          v2 = v117;
        }
      }

      else
      {

        v2 = v117;
      }
    }
  }

  v17 = v115;
  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v18 >= v14)
    {
      break;
    }

    v16 = *(v10 + 8 * v18);
    ++v15;
    if (v16)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v118 = v17[3];
  swift_beginAccess();
  v43 = v17[9];
  v42 = v17[10];
  v45 = v17[11];
  v44 = v17[12];
  v46 = v17[13];
  swift_beginAccess();
  v47 = v2[9];
  v48 = v43 - v47;
  if (__OFSUB__(v43, v47))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v49 = v2[10];
  v50 = v42 - v49;
  if (__OFSUB__(v42, v49))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v51 = v2[11];
  v52 = v45 - v51;
  if (__OFSUB__(v45, v51))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v53 = v2[12];
  v54 = v44 - v53;
  if (__OFSUB__(v44, v53))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v55 = v2[13];
  v27 = __OFSUB__(v46, v55);
  v56 = v46 - v55;
  if (v27)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v107 = v56;
  v108 = v54;
  v109 = v52;
  v110 = v50;
  v111 = v48;
  swift_beginAccess();
  v58 = v17[14];
  v57 = v17[15];
  v60 = v17[16];
  v59 = v17[17];
  v61 = v17[18];
  swift_beginAccess();
  v62 = v2[14];
  v27 = __OFSUB__(v58, v62);
  v63 = v58 - v62;
  if (v27)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v64 = v2[15];
  v65 = v57 - v64;
  if (__OFSUB__(v57, v64))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v66 = v2[16];
  v67 = v60 - v66;
  if (__OFSUB__(v60, v66))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v68 = v2[17];
  v69 = v59 - v68;
  if (__OFSUB__(v59, v68))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v70 = v2[18];
  v27 = __OFSUB__(v61, v70);
  v71 = v61 - v70;
  if (v27)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v103 = v71;
  v104 = v69;
  v105 = v67;
  v106 = v65;
  swift_beginAccess();
  v73 = v17[20];
  v72 = v17[21];
  v74 = v17[23];
  v114 = v17[22];
  v75 = v17[24];
  swift_beginAccess();
  v76 = v2[20];
  v77 = v73 - v76;
  if (__OFSUB__(v73, v76))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v78 = v2[21];
  v79 = v72 - v78;
  if (__OFSUB__(v72, v78))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v80 = v2[23];
  v81 = (v74 - v80);
  if (__OFSUB__(v74, v80))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v82 = v2[24];
  v27 = __OFSUB__(v75, v82);
  v83 = (v75 - v82);
  if (!v27)
  {
    v102 = v77;
    v112 = v79;
    v115 = v81;
    v117 = v83;
    v84 = swift_allocObject();
    v85 = sub_1A84E56DC();
    v86 = *(*(v85 - 8) + 56);
    v87 = v113;
    v86(v113, 1, 1, v85);
    v86(v116, 1, 1, v85);
    type metadata accessor for ImportExport.Timer(0);
    v88 = swift_allocObject();
    v101 = v63;
    v89 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    v86((v88 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v85);
    v90 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    v86((v88 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v85);
    swift_beginAccess();

    sub_1A843E9F0(v87, v88 + v89);
    swift_endAccess();
    swift_beginAccess();
    sub_1A843E9F0(v116, v88 + v90);
    swift_endAccess();
    *(v84 + 24) = v88;
    *(v84 + 32) = 0u;
    *(v84 + 48) = 0u;
    *(v84 + 64) = 0u;
    *(v84 + 80) = 0u;
    *(v84 + 96) = 0u;
    *(v84 + 128) = 0u;
    *(v84 + 144) = 0;
    *(v84 + 112) = 0u;
    v91 = MEMORY[0x1E69E7CC0];
    *(v84 + 152) = sub_1A83EBD30(MEMORY[0x1E69E7CC0]);
    *(v84 + 160) = 0;
    *(v84 + 168) = 0;
    *(v84 + 176) = v91;
    *(v84 + 192) = 0;
    *(v84 + 200) = 0;
    *(v84 + 184) = 0;
    *(v84 + 16) = 0x3FF3333333333333;
    swift_beginAccess();
    *(v84 + 24) = v118;

    swift_beginAccess();
    v92 = v110;
    *(v84 + 72) = v111;
    *(v84 + 80) = v92;
    v93 = v108;
    *(v84 + 88) = v109;
    *(v84 + 96) = v93;
    *(v84 + 104) = v107;
    swift_beginAccess();
    *(v84 + 112) = v101;
    v94 = v105;
    *(v84 + 120) = v106;
    *(v84 + 128) = v94;
    v95 = v103;
    *(v84 + 136) = v104;
    *(v84 + 144) = v95;
    swift_beginAccess();
    *(v84 + 152) = v8;

    swift_beginAccess();
    *(v84 + 160) = v102;
    v96 = v114;
    v97 = v115;
    *(v84 + 168) = v112;
    *(v84 + 176) = v96;
    v98 = v117;
    *(v84 + 184) = v97;
    *(v84 + 192) = v98;
    *(v84 + 200) = 0;

    return v84;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A84A9F78(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1A84AA068(&qword_1EB2E7DF0, a2, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
  result = sub_1A84AA068(&qword_1EB2E7DE0, v3, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A84AA068(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1A84AA12C()
{
  result = qword_1EB2E88D0;
  if (!qword_1EB2E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88D0);
  }

  return result;
}

unint64_t sub_1A84AA184()
{
  result = qword_1EB2E88D8;
  if (!qword_1EB2E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88D8);
  }

  return result;
}

unint64_t sub_1A84AA1DC()
{
  result = qword_1EB2E88E0;
  if (!qword_1EB2E88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E88E0);
  }

  return result;
}

unint64_t sub_1A84AA230()
{
  result = qword_1EB2E4730;
  if (!qword_1EB2E4730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4730);
  }

  return result;
}

uint64_t sub_1A84AA280()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2E88F0);
  sub_1A824431C(v0, qword_1EB2E88F0);
  return sub_1A84E5C8C();
}

uint64_t sub_1A84AA32C()
{
  v1 = v0;
  if ([v0 isGroupChat])
  {
    return 0;
  }

  v2 = [v0 allChatProperties];
  if (!v2 || (v3 = v2, v4 = sub_1A84E5D3C(), v3, v5 = sub_1A8253A88(v4), , !v5))
  {
LABEL_10:
    v12 = [v1 participants];
    sub_1A8253D64();
    v13 = sub_1A84E5FFC();

    if (v13 >> 62)
    {
LABEL_27:
      v14 = sub_1A84E654C();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v14 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC56AF80](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v18 = [v16 isChatBot];

      if (v18)
      {

        return 1;
      }
    }

    return 0;
  }

  v6 = sub_1A84E5DBC();
  if (!*(v5 + 16))
  {

LABEL_8:

    memset(v20, 0, sizeof(v20));
    sub_1A824B2D4(v20, &qword_1EB2E66B0, &qword_1A8500960);
    v11 = [v1 brandInfo];
    if (v11)
    {

      return 1;
    }

    goto LABEL_10;
  }

  v8 = sub_1A824B390(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1A8244F40(*(v5 + 56) + 32 * v8, v20);

  sub_1A824B2D4(v20, &qword_1EB2E66B0, &qword_1A8500960);
  return 1;
}

void sub_1A84AA5A0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = [v2 brandInfo];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 brandLogoGuid];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() sharedInstance];
      if (!v11)
      {

        __break(1u);
        return;
      }

      v12 = v11;
      v13 = [v11 transferForGUID_];

      if (v13)
      {
        v14 = [v13 localURL];
        if (v14)
        {
          v15 = v14;
          sub_1A84E554C();

          v16 = sub_1A84E558C();
          (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
        }

        else
        {

          v19 = sub_1A84E558C();
          (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
        }

        sub_1A83FB148(v6, a1);
        return;
      }
    }
  }

  v17 = sub_1A84E558C();
  v18 = *(*(v17 - 8) + 56);

  v18(a1, 1, 1, v17);
}

uint64_t sub_1A84AA904()
{
  v1 = v0;
  v2 = sub_1A84E558C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = [v1 brandLogoURL];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_1A84E554C();

  (*(v3 + 32))(v8, v6, v2);
  v11 = sub_1A84E55AC();
  (*(v3 + 8))(v8, v2);
  return v11;
}

uint64_t sub_1A84AAB00()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E8940, &qword_1A8509AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  sub_1A82442B8(v3, qword_1EB2E8908);
  sub_1A824431C(v3, qword_1EB2E8908);
  v4 = *MEMORY[0x1E69A6750];
  v5 = sub_1A83EA2FC(&qword_1EB2E8948, &unk_1A8509AF0);
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_1A84E5AFC();
  return sub_1A84E5AEC();
}

uint64_t sub_1A84AAC70()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - v4;
  v6 = [v0 chatIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 __im_isChatBotPatterned];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v1 chatStyle];
  result = 0;
  if (v10 == 45 && (v9 & 1) == 0)
  {
    if (sub_1A84AB0A4())
    {
      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v12 = sub_1A84E5C9C();
      sub_1A824431C(v12, qword_1EB2E88F0);
      v13 = v1;
      v14 = sub_1A84E5C7C();
      v15 = sub_1A84E617C();

      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_26;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v18 = [v13 chatIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1A84E5DBC();
        v22 = v21;
      }

      else
      {
        v20 = 1701736302;
        v22 = 0xE400000000000000;
      }

      v31 = sub_1A82446BC(v20, v22, &v35);

      *(v16 + 4) = v31;
      v32 = "Chatbot %s is missing persistent menu, request it from relay";
    }

    else
    {
      if (qword_1EB2E59E0 != -1)
      {
        swift_once();
      }

      v23 = sub_1A824431C(v2, qword_1EB2E8908);
      (*(v3 + 16))(v5, v23, v2);
      sub_1A84E5ADC();
      (*(v3 + 8))(v5, v2);
      if (v35 != 1)
      {
        return 0;
      }

      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v24 = sub_1A84E5C9C();
      sub_1A824431C(v24, qword_1EB2E88F0);
      v25 = v1;
      v14 = sub_1A84E5C7C();
      v15 = sub_1A84E617C();

      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_26;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v26 = [v25 chatIdentifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1A84E5DBC();
        v30 = v29;
      }

      else
      {
        v28 = 1701736302;
        v30 = 0xE400000000000000;
      }

      v33 = sub_1A82446BC(v28, v30, &v35);

      *(v16 + 4) = v33;
      v32 = "Chatbot %s needs persistent menu due to defaults, request it from relay";
    }

    _os_log_impl(&dword_1A823F000, v14, v15, v32, v16, 0xCu);
    sub_1A8244788(v17);
    MEMORY[0x1AC56D3F0](v17, -1, -1);
    MEMORY[0x1AC56D3F0](v16, -1, -1);
LABEL_26:

    return 1;
  }

  return result;
}

uint64_t sub_1A84AB0A4()
{
  result = [v0 allChatProperties];
  if (result)
  {
    v2 = result;
    v3 = sub_1A84E5D3C();

    v4 = sub_1A8253A88(v3);

    if (!v4)
    {
      return 0;
    }

    v5 = sub_1A84E5DBC();
    if (*(v4 + 16))
    {
      v7 = sub_1A824B390(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_1A8244F40(*(v4 + 56) + 32 * v7, v10);

        sub_1A824B2D4(v10, &qword_1EB2E66B0, &qword_1A8500960);
        return 0;
      }
    }

    else
    {
    }

    memset(v10, 0, sizeof(v10));
    sub_1A824B2D4(v10, &qword_1EB2E66B0, &qword_1A8500960);
    return 1;
  }

  return result;
}

uint64_t sub_1A84AB210()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E8940, &qword_1A8509AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  sub_1A82442B8(v3, qword_1EB2E8920);
  sub_1A824431C(v3, qword_1EB2E8920);
  v4 = *MEMORY[0x1E69A6750];
  v5 = sub_1A83EA2FC(&qword_1EB2E8948, &unk_1A8509AF0);
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_1A84E5AFC();
  return sub_1A84E5AEC();
}

uint64_t sub_1A84AB380()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E8938, &qword_1A8509AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - v4;
  v6 = [v0 chatIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 __im_isChatBotPatterned];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v1 chatStyle];
  result = 0;
  if (v10 == 45 && (v9 & 1) == 0)
  {
    if (sub_1A84AB7B4())
    {
      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v12 = sub_1A84E5C9C();
      sub_1A824431C(v12, qword_1EB2E88F0);
      v13 = v1;
      v14 = sub_1A84E5C7C();
      v15 = sub_1A84E617C();

      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_26;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v18 = [v13 chatIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1A84E5DBC();
        v22 = v21;
      }

      else
      {
        v20 = 1701736302;
        v22 = 0xE400000000000000;
      }

      v31 = sub_1A82446BC(v20, v22, &v35);

      *(v16 + 4) = v31;
      v32 = "Chatbot %s is missing brand info, request it from relay";
    }

    else
    {
      if (qword_1EB2E59E8 != -1)
      {
        swift_once();
      }

      v23 = sub_1A824431C(v2, qword_1EB2E8920);
      (*(v3 + 16))(v5, v23, v2);
      sub_1A84E5ADC();
      (*(v3 + 8))(v5, v2);
      if (v35 != 1)
      {
        return 0;
      }

      if (qword_1EB2E59D8 != -1)
      {
        swift_once();
      }

      v24 = sub_1A84E5C9C();
      sub_1A824431C(v24, qword_1EB2E88F0);
      v25 = v1;
      v14 = sub_1A84E5C7C();
      v15 = sub_1A84E617C();

      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_26;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v26 = [v25 chatIdentifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1A84E5DBC();
        v30 = v29;
      }

      else
      {
        v28 = 1701736302;
        v30 = 0xE400000000000000;
      }

      v33 = sub_1A82446BC(v28, v30, &v35);

      *(v16 + 4) = v33;
      v32 = "Chatbot %s needs brand info due to defaults, request it from relay";
    }

    _os_log_impl(&dword_1A823F000, v14, v15, v32, v16, 0xCu);
    sub_1A8244788(v17);
    MEMORY[0x1AC56D3F0](v17, -1, -1);
    MEMORY[0x1AC56D3F0](v16, -1, -1);
LABEL_26:

    return 1;
  }

  return result;
}

uint64_t sub_1A84AB7B4()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  result = [v0 allChatProperties];
  if (result)
  {
    v5 = result;
    v6 = sub_1A84E5D3C();

    v7 = sub_1A8253A88(v6);

    if (!v7)
    {
      return 0;
    }

    v8 = objc_allocWithZone(MEMORY[0x1E69A7F30]);
    v9 = sub_1A84E5D2C();

    v10 = [v8 initWithDictionary_];

    if (v10)
    {
      v11 = [v10 brandLogoGuid];
      if (v11)
      {

        v12 = [v0 brandLogoURL];
        if (v12)
        {
          v13 = v12;
          sub_1A84E554C();

          v14 = sub_1A84E558C();
          (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
          sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
          return 0;
        }

        v15 = sub_1A84E558C();
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
      }

      else
      {
      }
    }

    return 1;
  }

  return result;
}

double ImportExport.ArchiveImporterBatch.messages.getter()
{
  type metadata accessor for ImportExport.ArchiveImporterBatch(0);

  return result;
}

uint64_t type metadata accessor for ImportExport.ArchiveImporterBatch(uint64_t a1)
{
  result = qword_1EB2E8968;
  if (!qword_1EB2E8968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ImportExport.ArchiveImporterBatch.missingAttachments.getter()
{
  type metadata accessor for ImportExport.ArchiveImporterBatch(0);

  return result;
}

__n128 ImportExport.ArchiveImporterBatch.importCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.ArchiveImporterBatch(0) + 28);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

unint64_t sub_1A84ABB5C()
{
  v1 = 0x61737265766E6F63;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6F4374726F706D69;
  }

  if (*v0)
  {
    v1 = 0x736567617373656DLL;
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

uint64_t sub_1A84ABBEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84AC994(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84ABC14(uint64_t a1)
{
  v2 = sub_1A84ABF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84ABC50(uint64_t a1)
{
  v2 = sub_1A84ABF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporterBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8950, &unk_1A8509B00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84ABF8C();
  sub_1A84E68AC();
  LOBYTE(v14[0]) = 0;
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A84AC5E4(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v9 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
    *&v14[0] = *(v3 + v9[5]);
    v16 = 1;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84AC4AC(&qword_1EB2E7EA0, &qword_1EB2E7800, &protocol conformance descriptor for ImportExport.Message, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    *&v14[0] = *(v3 + v9[6]);
    v16 = 2;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84AC548(&qword_1EB2E86B8, &qword_1EB2E73A0, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v10 = v3 + v9[7];
    v11 = *(v10 + 32);
    v12 = *(v10 + 16);
    v14[0] = *v10;
    v14[1] = v12;
    v15 = v11;
    v16 = 3;
    sub_1A847E61C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A84ABF8C()
{
  result = qword_1EB2E8958;
  if (!qword_1EB2E8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8958);
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterBatch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A83EA2FC(&qword_1EB2E8960, &qword_1A8509B18);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ImportExport.ArchiveImporterBatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84ABF8C();
  v24 = v7;
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v11 = v21;
  v12 = v10;
  LOBYTE(v25) = 0;
  sub_1A84AC5E4(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  v14 = v22;
  v13 = v23;
  sub_1A84E666C();
  sub_1A845BB64(v14, v12);
  sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
  v28 = 1;
  sub_1A84AC4AC(&qword_1EB2E7190, &qword_1EB2E7198, &protocol conformance descriptor for ImportExport.Message, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  *(v12 + v8[5]) = v25;
  sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
  v28 = 2;
  sub_1A84AC548(&qword_1EB2E86E0, &qword_1EB2E7398, &protocol conformance descriptor for ImportExport.Attachment, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  *(v12 + v8[6]) = v25;
  v28 = 3;
  sub_1A847EC5C();
  sub_1A84E666C();
  (*(v11 + 8))(v24, v13);
  v15 = v27;
  v16 = v12 + v8[7];
  v17 = v26;
  *v16 = v25;
  *(v16 + 16) = v17;
  *(v16 + 32) = v15;
  sub_1A84AC62C(v12, v20, type metadata accessor for ImportExport.ArchiveImporterBatch);
  sub_1A8244788(a1);
  return sub_1A84AC694(v12, type metadata accessor for ImportExport.ArchiveImporterBatch);
}

uint64_t sub_1A84AC4AC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84AC5E4(a2, type metadata accessor for ImportExport.Message, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84AC548(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84AC5E4(a2, type metadata accessor for ImportExport.Attachment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84AC5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84AC62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84AC694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A84AC74C(uint64_t a1)
{
  type metadata accessor for ImportExport.Conversation(319);
  if (v1 <= 0x3F)
  {
    sub_1A84AC828(319, &qword_1EB2E7ED8, type metadata accessor for ImportExport.Message);
    if (v2 <= 0x3F)
    {
      sub_1A84AC828(319, &qword_1EB2E8978, type metadata accessor for ImportExport.Attachment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A84AC828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A84E604C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A84AC890()
{
  result = qword_1EB2E8980;
  if (!qword_1EB2E8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8980);
  }

  return result;
}

unint64_t sub_1A84AC8E8()
{
  result = qword_1EB2E8988;
  if (!qword_1EB2E8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8988);
  }

  return result;
}

unint64_t sub_1A84AC940()
{
  result = qword_1EB2E8990;
  if (!qword_1EB2E8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8990);
  }

  return result;
}

uint64_t sub_1A84AC994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4374726F706D69 && a2 == 0xEC00000073746E75)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A84ACB08(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A84ACED4(char *a1, unint64_t a2)
{
  v4 = sub_1A84E5C9C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5B4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  sub_1A84E5B2C();
  sub_1A84E5B1C();
  v34 = a1;
  sub_1A84E5B0C();

  sub_1A84E5C6C();
  sub_1A84E5C8C();
  (*(v8 + 16))(v14, v16, v7);

  v17 = sub_1A84E5C7C();
  v18 = sub_1A84E61BC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v8;
    v22 = v21;
    v38 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_1A82446BC(v34, a2, &v38);
    *(v20 + 12) = 2080;
    v23 = sub_1A84E5B3C();
    v25 = v24;
    v34 = v6;
    v26 = *(v35 + 8);
    v26(v14, v7);
    v27 = sub_1A82446BC(v23, v25, &v38);

    *(v20 + 14) = v27;
    v28 = v26;
    _os_log_impl(&dword_1A823F000, v17, v18, "translation language status - code: %s, status: %s", v20, 0x16u);
    swift_arrayDestroy();
    v29 = v22;
    v8 = v35;
    MEMORY[0x1AC56D3F0](v29, -1, -1);
    v30 = v20;
    v11 = v33;
    MEMORY[0x1AC56D3F0](v30, -1, -1);

    (*(v36 + 8))(v34, v37);
  }

  else
  {

    v28 = *(v8 + 8);
    v28(v14, v7);
    (*(v36 + 8))(v6, v37);
  }

  (*(v8 + 32))(v11, v16, v7);
  v31 = (*(v8 + 88))(v11, v7);
  if (v31 == *MEMORY[0x1E69A6778])
  {
    return 2;
  }

  if (v31 == *MEMORY[0x1E69A6780])
  {
    return 1;
  }

  if (v31 == *MEMORY[0x1E69A6790])
  {
    return 3;
  }

  if (v31 != *MEMORY[0x1E69A6788])
  {
    v28(v11, v7);
  }

  return 0;
}

uint64_t sub_1A84AD314(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v38 = a1;
  v2 = sub_1A84E574C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  v8 = [objc_opt_self() lt_preferredLocales];
  v42 = v2;
  v9 = sub_1A84E5FFC();

  v10 = *(v9 + 16);
  if (v10)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v10, 0);
    v11 = v43;
    v34 = v9;
    v35 = v3;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v39 = *(v12 + 56);
    v40 = v13;
    v41 = v12;
    v15 = (v12 - 8);
    do
    {
      v16 = v42;
      v40(v7, v14, v42);
      v17 = sub_1A84E572C();
      v19 = v18;
      (*v15)(v7, v16);
      v43 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1A83EF534((v20 > 1), v21 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v14 += v39;
      --v10;
    }

    while (v10);

    v3 = v35;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v24 = (v3 + 8);
  v25 = v11 + 40;
  v41 = -*(v11 + 16);
  v26 = -1;
  while (1)
  {
    v27 = v41 + v26;
    if (v41 + v26 == -1)
    {
LABEL_12:

      return v27 != -1;
    }

    if (++v26 >= *(v11 + 16))
    {
      break;
    }

    v28 = v25 + 16;
    swift_bridgeObjectRetain_n();
    sub_1A84E571C();

    v29 = v37;
    sub_1A84E571C();
    v30 = sub_1A84E573C();

    v31 = *v24;
    v32 = v29;
    v33 = v42;
    (*v24)(v32, v42);
    result = v31(v7, v33);
    v25 = v28;
    if (v30)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A84AD644(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1A84E5DBC();
  v15 = v14;
  v16 = sub_1A84E5D3C();
  if (a8)
  {
    v17 = sub_1A84E5DBC();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a3;
  v20 = a1;
  v21 = sub_1A84AD834(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

id IMStickerTapback.transferExistsLocally.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [v0 transferGUID];
    if (!v3)
    {
      sub_1A84E5DBC();
      v3 = sub_1A84E5D8C();
    }

    v4 = [v2 transferForGUID_];

    result = 0;
    if (v4)
    {
      v5 = [v4 existsAtLocalPath];

      if (v5)
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84AD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v57[1] = a6;
  v64 = a2;
  v66 = a1;
  v12 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v57 - v13;
  v15 = sub_1A84E5D2C();
  v16 = [v8 adjustMessageSummaryInfoForSending_];

  v17 = sub_1A84E5D3C();
  v65 = v17;
  v18 = sub_1A84E5D2C();
  v71 = sub_1A8442C90;
  v72 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1A8442D50;
  v70 = &unk_1F1B75B80;
  v19 = _Block_copy(&aBlock);

  v71 = sub_1A8442D4C;
  v72 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1A8442D50;
  v70 = &unk_1F1B75BA8;
  v20 = _Block_copy(&aBlock);

  v21 = [v8 backwardCompatibilityStringWithMessageSummaryInfo:v18 isAdaptiveImageGlyphProvider:v19 isCommSafetySensitiveProvider:v20];
  _Block_release(v19);

  _Block_release(v20);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v62 = a4;
  v63 = a3;
  v61 = a7;
  if (v21)
  {
    v23 = [v21 __stringByStrippingControlCharacters];

    if (v23)
    {
      sub_1A84E5DBC();
    }
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1A84E5D8C();

  v26 = [v24 initWithString_];

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v27 = swift_allocObject();
  v58 = xmmword_1A85013E0;
  *(v27 + 16) = xmmword_1A85013E0;
  v28 = [v8 transferGUID];
  v29 = sub_1A84E5DBC();
  v31 = v30;

  *(v27 + 32) = v29;
  *(v27 + 40) = v31;
  v32 = sub_1A84E5FEC();

  v60 = v26;
  v33 = [v26 __im_attributedStringByAppendingFileTransfers_];

  v59 = v33;
  v34 = [v33 __im_attributedStringByAssigningMessagePartNumbers];
  sub_1A84E56CC();
  v35 = sub_1A84E56DC();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v14, 0, 1, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v58;
  v38 = [v8 transferGUID];
  v39 = sub_1A84E5DBC();
  v41 = v40;

  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  v42 = [objc_opt_self() stringGUID];
  if (v42)
  {
    v43 = v42;
    *&v58 = sub_1A84E5DBC();
    v45 = v44;
  }

  else
  {
    *&v58 = 0;
    v45 = 0;
  }

  v46 = [v8 associatedMessageType];
  v47 = (*(v36 + 48))(v14, 1, v35);
  v48 = v34;
  if (v47 == 1)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_1A84E565C();
    (*(v36 + 8))(v14, v35);
  }

  v50 = sub_1A84E5FEC();

  if (v45)
  {
    v51 = sub_1A84E5D8C();
  }

  else
  {
    v51 = 0;
  }

  v52 = sub_1A84E5D8C();
  v53 = sub_1A84E5D2C();

  if (v61)
  {
    v54 = sub_1A84E5D8C();
  }

  else
  {
    v54 = 0;
  }

  v55 = objc_allocWithZone(IMMessage);
  v56 = [v55 initWithSender:0 time:v49 text:v48 messageSubject:0 fileTransferGUIDs:v50 flags:5 error:0 guid:v51 subject:0 associatedMessageGUID:v52 associatedMessageType:v46 associatedMessageRange:v63 messageSummaryInfo:v62 threadIdentifier:{v53, v54}];

  return v56;
}

uint64_t ImportExport.ConversationArchiver.conversationFileRelativePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A84ADFB4@<X0>(uint64_t a1@<X8>)
{
  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A85013E0;
  *(v3 + 32) = sub_1A84E555C();
  *(v3 + 40) = v4;
  v5 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);
  v6 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = sub_1A84E558C();
  (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  v9 = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a1 + *(v9 + 20)) = v3;
  *(a1 + *(v9 + 24)) = v7;
}

uint64_t ImportExport.ConversationArchiver.__allocating_init(withConversation:archivingOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ImportExport.ConversationArchiver.init(withConversation:archivingOptions:exportStatistics:)(a1, a2, a3);
  return v6;
}

uint64_t ImportExport.ConversationArchiver.init(withConversation:archivingOptions:exportStatistics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v6 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v53 - v9;
  v10 = sub_1A84E558C();
  v54 = *(v10 - 8);
  v11 = v54;
  v55 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  v23 = (v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v3;
  sub_1A84AFFB0(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84AFFB0(a2, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v62 = a1;
  sub_1A84AFFB0(a1, v21, type metadata accessor for ImportExport.Conversation);
  v26 = *(type metadata accessor for ImportExport.ArchivingOptions(0) + 20);
  v63 = *(v11 + 16);
  v61 = a2;
  v27 = a2 + v26;
  v28 = v55;
  v63(v18, v27, v55);
  strcpy(v67, "Conversation-");
  v67[7] = -4864;
  v29 = *v21;
  v65 = v21;
  v66 = v29;
  v30 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v30);

  sub_1A84E552C();

  sub_1A84AFFB0(v21, &v25[v23[11]], type metadata accessor for ImportExport.Conversation);
  v31 = v18;
  v32 = v63;
  v63(v25, v18, v28);
  v33 = v28;
  v32(&v25[v23[7]], v16, v28);
  sub_1A84E552C();
  sub_1A84E552C();
  sub_1A84E552C();
  v34 = v54;
  v35 = *(v54 + 8);
  v36 = v16;
  v37 = v33;
  v35(v36, v33);
  v35(v31, v33);
  sub_1A84B0018(v65, type metadata accessor for ImportExport.Conversation);
  v38 = v64 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories;
  sub_1A84B0118(v25, v64 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  sub_1A84AFFB0(v38, v25, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v39 = v23[10];
  v40 = v34;
  v41 = v63;
  v42 = v31;
  v63(v31, v38 + v39, v37);
  v43 = v57;
  URL.relativePath(toParent:)(v57);
  v56 = v35;
  v35(v42, v37);
  v44 = v37;
  sub_1A84B0018(v25, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  if ((*(v40 + 48))(v43, 1, v37) == 1)
  {
    sub_1A824B2D4(v43, &qword_1EB2E7068, &unk_1A8501EB0);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {
    v45 = v58;
    (*(v40 + 32))(v58, v43, v37);
    v46 = v64;
    v41(v64 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath, v45, v44);
    v47 = v62;
    v48 = v65;
    sub_1A84AFFB0(v62, v65, type metadata accessor for ImportExport.Conversation);
    v49 = v61;
    v50 = v59;
    sub_1A84AFFB0(v61, v59, type metadata accessor for ImportExport.ExportOptions);
    type metadata accessor for ImportExport.ConversationExporter(0);
    swift_allocObject();
    v51 = ImportExport.ConversationExporter.init(withConversation:exportOptions:exportStatistics:)(v48, v50, v60);
    sub_1A84B0018(v49, type metadata accessor for ImportExport.ArchivingOptions);
    sub_1A84B0018(v47, type metadata accessor for ImportExport.Conversation);
    v56(v45, v44);
    *(v46 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter) = v51;
    return v46;
  }

  return result;
}

uint64_t sub_1A84AE84C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  v2[5] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for ImportExport.MessageBatch(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84AE97C, 0, 0);
}

uint64_t sub_1A84AE97C()
{
  v0[10] = *(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1A84AEA30;
  v2 = v0[6];

  return sub_1A84988C0(v2);
}

uint64_t sub_1A84AEA30()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A84AEED8;
  }

  else
  {

    v2 = sub_1A84AEB4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A84AEB4C()
{
  v1 = v0[6];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[3];
    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    v3 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
LABEL_11:

    v19 = v0[1];
    goto LABEL_12;
  }

  v4 = v0[9];
  v5 = v0[4];
  sub_1A84B0118(v1, v4, type metadata accessor for ImportExport.MessageBatch);
  if ((_s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(v4, v5 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation) & 1) == 0)
  {
    return sub_1A84E653C();
  }

  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions;
  sub_1A84AFFB0(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, v8, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v10 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  if (!*(*(v6 + *(v7 + 20)) + 16))
  {
    v21 = v0[3];
    sub_1A824B2D4(v0[5], &qword_1EB2E89A8, &unk_1A8509CD8);
    v22 = type metadata accessor for ImportExport.ArchivedConversationBatch(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
LABEL_10:
    sub_1A84B0018(v0[9], type metadata accessor for ImportExport.MessageBatch);
    goto LABEL_11;
  }

  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];
  v16 = objc_autoreleasePoolPush();
  sub_1A84C3E18(v14, v12, v13 + v9, v0 + 2, v15);
  if (!v11)
  {
    v23 = v0[5];
    objc_autoreleasePoolPop(v16);
    sub_1A824B2D4(v23, &qword_1EB2E89A8, &unk_1A8509CD8);
    goto LABEL_10;
  }

  v17 = v0[9];
  v18 = v0[5];
  objc_autoreleasePoolPop(v16);
  sub_1A824B2D4(v18, &qword_1EB2E89A8, &unk_1A8509CD8);
  sub_1A84B0018(v17, type metadata accessor for ImportExport.MessageBatch);

  v19 = v0[1];
LABEL_12:

  return v19();
}

uint64_t sub_1A84AEED8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1A84AEF60()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0xD000000000000017;
  if (v1 == 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A84AF010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84B062C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84AF038(uint64_t a1)
{
  v2 = sub_1A84B0078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84AF074(uint64_t a1)
{
  v2 = sub_1A84B0078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ConversationArchiver.deinit()
{
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  return v0;
}

uint64_t ImportExport.ConversationArchiver.__deallocating_deinit()
{
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath;
  v2 = sub_1A84E558C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A84B0018(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84AF2A4(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E89B0, &qword_1A8509CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B0078();
  sub_1A84E68AC();
  v14 = 0;
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A84B0180(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v13 = 1;
    type metadata accessor for ImportExport.ArchivingOptions(0);
    sub_1A84B0180(&qword_1EB2E8000, type metadata accessor for ImportExport.ArchivingOptions, &protocol conformance descriptor for ImportExport.ArchivingOptions);
    sub_1A84E672C();
    v12 = 2;
    sub_1A84E558C();
    sub_1A84B0180(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A84E672C();
    v11 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter);
    v10[15] = 3;
    type metadata accessor for ImportExport.ConversationExporter(0);
    sub_1A84B0180(&qword_1EB2E7D28, type metadata accessor for ImportExport.ConversationExporter, &protocol conformance descriptor for ImportExport.ConversationExporter);
    sub_1A84E672C();
    v10[14] = 4;
    type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
    sub_1A84B0180(&qword_1EB2E89C0, type metadata accessor for ImportExport.ArchivedConversationDirectories, &protocol conformance descriptor for ImportExport.ArchivedConversationDirectories);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.ConversationArchiver.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ConversationArchiver.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ConversationArchiver.init(from:)(void *a1)
{
  v24 = type metadata accessor for ImportExport.ArchivedConversationDirectories(0);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A84E558C();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImportExport.ArchivingOptions(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A83EA2FC(&qword_1EB2E89C8, qword_1A8509CF0);
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v22 - v11;
  v13 = a1[3];
  v31 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A84B0078();
  v29 = v12;
  v14 = v30;
  sub_1A84E689C();
  if (v14)
  {
    v15 = v32;
    type metadata accessor for ImportExport.ConversationArchiver(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v5;
    v16 = v7;
    v22 = v4;
    v17 = v27;
    v38 = 0;
    sub_1A84B0180(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
    v18 = v26;
    sub_1A84E666C();
    v15 = v32;
    sub_1A84B0118(v18, v32 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversation, type metadata accessor for ImportExport.Conversation);
    v37 = 1;
    sub_1A84B0180(&qword_1EB2E8010, type metadata accessor for ImportExport.ArchivingOptions, &protocol conformance descriptor for ImportExport.ArchivingOptions);
    sub_1A84E666C();
    sub_1A84B0118(v16, v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
    v36 = 2;
    sub_1A84B0180(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v19 = v22;
    sub_1A84E666C();
    (*(v25 + 32))(v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationFileRelativePath, v19, v17);
    type metadata accessor for ImportExport.ConversationExporter(0);
    v35 = 3;
    sub_1A84B0180(&qword_1EB2E7D50, type metadata accessor for ImportExport.ConversationExporter, &protocol conformance descriptor for ImportExport.ConversationExporter);
    sub_1A84E666C();
    *(v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationExporter) = v33;
    v34 = 4;
    sub_1A84B0180(&qword_1EB2E89D0, type metadata accessor for ImportExport.ArchivedConversationDirectories, &protocol conformance descriptor for ImportExport.ArchivedConversationDirectories);
    v20 = v23;
    sub_1A84E666C();
    (*(v10 + 8))(v29, v28);
    sub_1A84B0118(v20, v15 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationArchiver_conversationDirectories, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  }

  sub_1A8244788(v31);
  return v15;
}

uint64_t sub_1A84AFD60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A84AE84C(a1);
}

uint64_t sub_1A84AFDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1A84AFE94, v6, v8);
}

uint64_t sub_1A84AFE94()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A84AE84C(v2);
}

uint64_t sub_1A84AFF30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ConversationArchiver(0);
  v5 = swift_allocObject();
  result = ImportExport.ConversationArchiver.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A84AFFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B0018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A84B0078()
{
  result = qword_1EB2E89B8;
  if (!qword_1EB2E89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89B8);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ConversationArchiver(uint64_t a1)
{
  result = qword_1EB2E89D8;
  if (!qword_1EB2E89D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A84B0118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B0180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84B01D0(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Conversation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.ArchivingOptions(319);
    if (v3 <= 0x3F)
    {
      result = sub_1A84E558C();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ImportExport.ArchivedConversationDirectories(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportExport.ConversationArchiver.next()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

unint64_t sub_1A84B0528()
{
  result = qword_1EB2E89E8;
  if (!qword_1EB2E89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89E8);
  }

  return result;
}

unint64_t sub_1A84B0580()
{
  result = qword_1EB2E89F0;
  if (!qword_1EB2E89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89F0);
  }

  return result;
}

unint64_t sub_1A84B05D8()
{
  result = qword_1EB2E89F8;
  if (!qword_1EB2E89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89F8);
  }

  return result;
}

uint64_t sub_1A84B062C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85323B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A8533B40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531A50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8533B60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A84B0824(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29[-v7];
  v9 = *a2;
  v10 = a2[1];
  sub_1A84B28F4(a2, &v29[-v7], type metadata accessor for ImportExport.Message);
  v11 = type metadata accessor for ImportExport.Message(0);
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();

  sub_1A845EA08(v8, v9, v10);
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v3 + 40);

  LOBYTE(v8) = sub_1A84535C0(v9, v10, v12);

  if ((v8 & 1) == 0)
  {
    swift_beginAccess();

    sub_1A82493D0(&v30, v9, v10);
    swift_endAccess();

    v13 = *(v3 + 16);
    v14 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    v15 = *(v13 + v14);
    result = swift_beginAccess();
    v17 = *(v15 + 40);
    v18 = __CFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_9;
    }

    *(v15 + 40) = v19;
  }

  v20 = *(v3 + 16);
  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
  swift_beginAccess();
  v22 = *(v20 + v21);
  result = swift_beginAccess();
  v23 = *(v22 + 48);
  v18 = __CFADD__(v23, 1);
  v24 = v23 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 48) = v24;
    v25 = *(a1 + *(type metadata accessor for ImportExport.Attachment(0) + 60));
    result = swift_beginAccess();
    v26 = *(v22 + 56);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (!v27)
    {
      *(v22 + 56) = v28;
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t ImportExport.MessageAttachmentPair.init(withMessage:attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A84B27EC(a1, a3, type metadata accessor for ImportExport.Message);
  v5 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  return sub_1A84B27EC(a2, a3 + *(v5 + 20), type metadata accessor for ImportExport.Attachment);
}

uint64_t ImportExport.DownloadableAttachmentBatch.makeIterator()(uint64_t a1)
{
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v1 = swift_allocObject();

  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v2);
  return v1;
}

uint64_t ImportExport.AttachmentDownloadIterator.__allocating_init(withDownloadableAttachmentBatch:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(a1);
  return v2;
}

unint64_t sub_1A84B0C94()
{
  v1 = 0x704F74726F707865;
  v2 = 0x73736572676F7270;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1A84B0D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84B53FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84B0D48(uint64_t a1)
{
  v2 = sub_1A84B272C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B0D84(uint64_t a1)
{
  v2 = sub_1A84B272C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.DownloadableAttachmentBatch.deinit()
{
  sub_1A84B29B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  return v0;
}

uint64_t ImportExport.DownloadableAttachmentBatch.__deallocating_deinit()
{
  sub_1A84B29B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.DownloadableAttachmentBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8A00, &qword_1A8509F20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B272C();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  type metadata accessor for ImportExport.ExportOptions(0);
  sub_1A84B2780(&qword_1EB2E7D10, 255, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
  sub_1A84E672C();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);
    LOBYTE(v13) = 1;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2854(&qword_1EB2E8A18, &qword_1EB2E8A20, &protocol conformance descriptor for ImportExport.MessageAttachmentPair, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v14 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics);
    LOBYTE(v13) = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A84B2780(&qword_1EB2E7DE0, 255, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    v9 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    v13 = *(v3 + v9);
    v12[15] = 3;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    sub_1A84B2780(&qword_1EB2E8A28, v10, type metadata accessor for ImportExport.AttachmentDownloadBatchProgress, &protocol conformance descriptor for ImportExport.AttachmentDownloadBatchProgress);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.DownloadableAttachmentBatch.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.DownloadableAttachmentBatch.init(from:)(a1);
  return v2;
}

uint64_t *ImportExport.DownloadableAttachmentBatch.init(from:)(void *a1)
{
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v4);
  v16 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E8A30, &qword_1A8509F30);
  v14 = *(v6 - 8);
  v15 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B272C();
  v17 = v8;
  sub_1A84E689C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    sub_1A8244788(a1);
    return v1;
  }

  else
  {
    v9 = v14;
    LOBYTE(v19) = 0;
    sub_1A84B2780(&qword_1EB2E7D40, 255, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    sub_1A84E666C();
    v13 = v1;
    sub_1A84B27EC(v16, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    v18 = 1;
    sub_1A84B2854(&qword_1EB2E8A38, &qword_1EB2E8A40, &protocol conformance descriptor for ImportExport.MessageAttachmentPair, MEMORY[0x1E69E6330]);
    sub_1A84E666C();
    *(v13 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v19;
    type metadata accessor for ImportExport.ExportStatistics();
    v18 = 2;
    sub_1A84B2780(&qword_1EB2E7DF0, 255, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    *(v13 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v19;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    v18 = 3;
    sub_1A84B2780(&qword_1EB2E8A48, v10, type metadata accessor for ImportExport.AttachmentDownloadBatchProgress, &protocol conformance descriptor for ImportExport.AttachmentDownloadBatchProgress);
    sub_1A84E666C();
    (*(v9 + 8))(v17, v15);
    v11 = v13;
    *(v13 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v19;
    sub_1A8244788(a1);
    return v11;
  }
}

void *sub_1A84B1778@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v4 = swift_allocObject();
  result = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v3);
  *a1 = v4;
  return result;
}

void *sub_1A84B17D8()
{
  v0 = sub_1A84B474C();

  return v0;
}

void *sub_1A84B1834(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v8 = swift_allocObject();
  result = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v4);
  v10 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *a1 = v8;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = ImportExport.AttachmentDownloadIterator.next()();
    v10 = 0;
    if (v11)
    {
      while (1)
      {
        *(a2 + 8 * v10) = v11;
        if (a3 - 1 == v10)
        {
          break;
        }

        v11 = ImportExport.AttachmentDownloadIterator.next()();
        ++v10;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v10 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A84B18FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.DownloadableAttachmentBatch.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A84B19F8()
{
  if (*v0)
  {
    return 0x656D686361747461;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1A84B1A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A84B1B1C(uint64_t a1)
{
  v2 = sub_1A84B295C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B1B58(uint64_t a1)
{
  v2 = sub_1A84B295C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageAttachmentPair.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8A50, &qword_1A8509F38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B295C();
  sub_1A84E68AC();
  v8[15] = 0;
  type metadata accessor for ImportExport.Message(0);
  sub_1A84B2780(&qword_1EB2E7800, 255, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
  sub_1A84E672C();
  if (!v1)
  {
    type metadata accessor for ImportExport.MessageAttachmentPair(0);
    v8[14] = 1;
    type metadata accessor for ImportExport.Attachment(0);
    sub_1A84B2780(&qword_1EB2E73A0, 255, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
    sub_1A84E672C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImportExport.MessageAttachmentPair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ImportExport.Message(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A83EA2FC(&qword_1EB2E8A60, &unk_1A8509F40);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B295C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v17 = v9;
  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_1A84B2780(&qword_1EB2E7198, 255, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
  v14 = v23;
  v15 = v24;
  sub_1A84E666C();
  sub_1A84B27EC(v14, v13, type metadata accessor for ImportExport.Message);
  v25 = 1;
  sub_1A84B2780(&qword_1EB2E7398, 255, type metadata accessor for ImportExport.Attachment, &protocol conformance descriptor for ImportExport.Attachment);
  sub_1A84E666C();
  (*(v12 + 8))(v8, v15);
  sub_1A84B27EC(v5, v13 + *(v17 + 20), type metadata accessor for ImportExport.Attachment);
  sub_1A84B28F4(v13, v19, type metadata accessor for ImportExport.MessageAttachmentPair);
  sub_1A8244788(v18);
  return sub_1A84B29B0(v13, type metadata accessor for ImportExport.MessageAttachmentPair);
}

void *ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(uint64_t a1)
{
  v2 = v1;
  v61 = type metadata accessor for ImportExport.Message(0);
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v49 - v8;
  v59 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v9 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1[5] = MEMORY[0x1E69E7CD0];
  v50 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs;
  v51 = a1;
  v12 = *(a1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);
  v58 = *(v12 + 16);
  if (!v58)
  {
    v43 = 0;
    v44 = 0;
    v15 = MEMORY[0x1E69E7CC8];
    v41 = v50;
    v42 = v51;
LABEL_23:
    v45 = v15[2];
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    swift_allocObject();

    v46 = sub_1A84B39AC(v45, v43, v44);
    v2[2] = v42;
    v2[3] = *(v42 + v41);
    v2[4] = v15;
    v47 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    *(v42 + v47) = v46;

    return v2;
  }

  v49 = v1;
  v57 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v56 = (v4 + 56);

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC8];
  v52 = v11;
  v53 = v9;
  v55 = v13;
  while (v14 < *(v13 + 16))
  {
    sub_1A84B28F4(v57 + *(v9 + 72) * v14, v11, type metadata accessor for ImportExport.MessageAttachmentPair);
    v17 = v11 + *(v59 + 20);
    v54 = *&v17[*(type metadata accessor for ImportExport.Attachment(0) + 60)];
    v19 = *v11;
    v18 = v11[1];
    if (v15[2])
    {
      v20 = sub_1A824B390(*v11, v11[1]);
      if (v21)
      {
        v22 = v60;
        sub_1A84B28F4(v15[7] + *(v4 + 72) * v20, v60, type metadata accessor for ImportExport.Message);
        (*(v4 + 56))(v22, 0, 1, v61);
        sub_1A84B29B0(v11, type metadata accessor for ImportExport.MessageAttachmentPair);
        sub_1A824B2D4(v22, &qword_1EB2E7FA8, &qword_1A8506D10);
        goto LABEL_5;
      }
    }

    v23 = v4;
    v24 = v60;
    (*v56)(v60, 1, 1, v61);
    sub_1A824B2D4(v24, &qword_1EB2E7FA8, &qword_1A8506D10);
    v25 = v11;
    v26 = v6;
    sub_1A84B28F4(v25, v6, type metadata accessor for ImportExport.Message);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v15;
    v29 = sub_1A824B390(v19, v18);
    v30 = v15[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (v15[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v15 = v62;
        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1A848E5E4();
        v15 = v62;
        if ((v33 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1A848A588(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1A824B390(v19, v18);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v29 = v34;
      v15 = v62;
      if ((v33 & 1) == 0)
      {
LABEL_17:
        v15[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v15[6] + 16 * v29);
        *v36 = v19;
        v36[1] = v18;
        v4 = v23;
        v37 = v15[7] + *(v23 + 72) * v29;
        v6 = v26;
        sub_1A84B27EC(v26, v37, type metadata accessor for ImportExport.Message);
        v38 = v15[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_26;
        }

        v15[2] = v40;

        goto LABEL_4;
      }
    }

    v4 = v23;
    v16 = v15[7] + *(v23 + 72) * v29;
    v6 = v26;
    sub_1A84672B8(v26, v16);
LABEL_4:
    v11 = v52;
    sub_1A84B29B0(v52, type metadata accessor for ImportExport.MessageAttachmentPair);
    v9 = v53;
LABEL_5:
    v13 = v55;
    if (v58 == ++v14)
    {

      v41 = v50;
      v42 = v51;
      v43 = *(*(v51 + v50) + 16);
      v2 = v49;
      v44 = v54;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

unint64_t sub_1A84B272C()
{
  result = qword_1EB2E8A08;
  if (!qword_1EB2E8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A08);
  }

  return result;
}

uint64_t sub_1A84B2780(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A84B27EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B2854(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2780(a2, 255, type metadata accessor for ImportExport.MessageAttachmentPair, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84B28F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A84B295C()
{
  result = qword_1EB2E8A58;
  if (!qword_1EB2E8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A58);
  }

  return result;
}

uint64_t sub_1A84B29B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ImportExport.AttachmentDownloadIterator.next()()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E8A68, &qword_1A8509F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ImportExport.Message(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v37 - v15;
  v40 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v16 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 16);
  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
  swift_beginAccess();
  v21 = *(v19 + v20);
  swift_beginAccess();
  if (!*(v21 + 48))
  {

    ImportExport.Timer.start()();
  }

  swift_beginAccess();
  v22 = *(v1 + 24);
  if (!*(v22 + 16))
  {
    goto LABEL_10;
  }

  v38 = v4;
  v39 = v7;
  v37 = v11;
  v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  sub_1A84B28F4(v22 + v23, v18, type metadata accessor for ImportExport.MessageAttachmentPair);
  v25 = *v18;
  v24 = v18[1];
  swift_beginAccess();
  v26 = *(v1 + 32);
  if (!*(v26 + 16) || (v27 = sub_1A824B390(v25, v24), (v28 & 1) == 0))
  {
    swift_endAccess();
    sub_1A84B29B0(v18, type metadata accessor for ImportExport.MessageAttachmentPair);
LABEL_10:

    ImportExport.Timer.stop()();

    return 0;
  }

  sub_1A84B28F4(*(v26 + 56) + *(v41 + 72) * v27, v14, type metadata accessor for ImportExport.Message);
  v29 = v42;
  sub_1A84B27EC(v14, v42, type metadata accessor for ImportExport.Message);
  swift_endAccess();
  result = swift_beginAccess();
  v31 = *(v1 + 24);
  if (*(v31 + 16))
  {
    v32 = v39;
    sub_1A84B28F4(v31 + v23, v39, type metadata accessor for ImportExport.MessageAttachmentPair);
    v33 = v40;
    (*(v16 + 56))(v32, 0, 1, v40);
    result = sub_1A824B2D4(v32, &qword_1EB2E8A68, &qword_1A8509F50);
    if (*(v31 + 16))
    {
      sub_1A84B4A18(0, 1);
      swift_endAccess();
      v34 = v37;
      sub_1A84B27EC(v29, v37, type metadata accessor for ImportExport.Message);
      v35 = v38;
      sub_1A84B28F4(v18 + *(v33 + 20), v38, type metadata accessor for ImportExport.Attachment);
      sub_1A84B29B0(v18, type metadata accessor for ImportExport.MessageAttachmentPair);
      type metadata accessor for ImportExport.AttachmentDownloader(0);
      v36 = swift_allocObject();
      sub_1A84B27EC(v34, v36 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
      sub_1A84B27EC(v35, v36 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
      *(v36 + 16) = v1;

      return v36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A84B2F18()
{
  v1 = 0x656D686361747461;
  v2 = 0x736567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
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

uint64_t sub_1A84B2FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84B5578(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84B2FD0(uint64_t a1)
{
  v2 = sub_1A84B4AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B300C(uint64_t a1)
{
  v2 = sub_1A84B4AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ImportExport.AttachmentDownloadIterator.deinit()
{

  return v0;
}

uint64_t ImportExport.AttachmentDownloadIterator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.AttachmentDownloadIterator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8A70, &qword_1A8509F58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4AD8();
  sub_1A84E68AC();
  v14 = v3[2];
  LOBYTE(v13) = 0;
  type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
  sub_1A84B2780(&qword_1EB2E7EA8, 255, type metadata accessor for ImportExport.DownloadableAttachmentBatch, &protocol conformance descriptor for ImportExport.DownloadableAttachmentBatch);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v13 = v3[3];
    LOBYTE(v12) = 1;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2854(&qword_1EB2E8A18, &qword_1EB2E8A20, &protocol conformance descriptor for ImportExport.MessageAttachmentPair, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    swift_beginAccess();
    v12 = v3[4];
    LOBYTE(v11) = 2;
    sub_1A83EA2FC(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B4B4C();
    sub_1A84E672C();
    swift_beginAccess();
    v11 = v3[5];
    v10[15] = 3;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    sub_1A8483824(&qword_1EB2E82F8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.AttachmentDownloadIterator.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadIterator.init(from:)(a1);
  return v2;
}

void *ImportExport.AttachmentDownloadIterator.init(from:)(void *a1)
{
  v3 = v1;
  v15 = *v1;
  v14 = sub_1A83EA2FC(&qword_1EB2E8A90, &qword_1A8509F70);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  v1[5] = MEMORY[0x1E69E7CD0];
  v8 = v1 + 5;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4AD8();
  sub_1A84E689C();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    LOBYTE(v17) = 0;
    sub_1A84B2780(&qword_1EB2E7EB8, 255, type metadata accessor for ImportExport.DownloadableAttachmentBatch, &protocol conformance descriptor for ImportExport.DownloadableAttachmentBatch);
    v10 = v14;
    sub_1A84E666C();
    v1[2] = v16;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    LOBYTE(v17) = 1;
    sub_1A84B2854(&qword_1EB2E8A38, &qword_1EB2E8A40, &protocol conformance descriptor for ImportExport.MessageAttachmentPair, MEMORY[0x1E69E6330]);
    sub_1A84E666C();
    v1[3] = v16;
    sub_1A83EA2FC(&qword_1EB2E8A80, &unk_1A8509F60);
    LOBYTE(v17) = 2;
    sub_1A84B4C0C();
    sub_1A84E666C();
    v1[4] = v16;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    LOBYTE(v16) = 3;
    sub_1A8483824(&qword_1EB2E8308, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1A84E666C();
    (*(v9 + 8))(v7, v10);
    v12 = v17;
    swift_beginAccess();
    *v8 = v12;
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84B3850@<X0>(uint64_t *a1@<X8>)
{
  result = ImportExport.AttachmentDownloadIterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1A84B39AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v13 = sub_1A84E56DC();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v14(v10, 1, 1, v13);
  type metadata accessor for ImportExport.Timer(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v14((v15 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v13);
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v14((v15 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v13);
  swift_beginAccess();
  sub_1A843E9F0(v12, v15 + v16);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v10, v15 + v17);
  swift_endAccess();
  *(v3 + 64) = v15;
  return v3;
}

unint64_t sub_1A84B3BA8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x436567617373656DLL;
    if (a1 != 3)
    {
      v6 = 0x656D686361747461;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    v7 = 0xD000000000000011;
    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000016;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0x72656D6974;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84B3D34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84B56FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84B3D5C(uint64_t a1)
{
  v2 = sub_1A84B4CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B3D98(uint64_t a1)
{
  v2 = sub_1A84B4CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8AA0, &qword_1A8509F78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4CCC();
  sub_1A84E68AC();
  v14 = 0;
  sub_1A84E671C();
  if (!v2)
  {
    v14 = 1;
    sub_1A84E671C();
    v14 = 2;
    sub_1A84E673C();
    swift_beginAccess();
    v13 = 3;
    sub_1A84E671C();
    swift_beginAccess();
    v12 = 4;
    sub_1A84E671C();
    swift_beginAccess();
    LOBYTE(v11) = 5;
    sub_1A84E673C();
    v11 = *(v3 + 64);
    v10[15] = 6;
    type metadata accessor for ImportExport.Timer(0);
    sub_1A84B2780(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E672C();
    LOBYTE(v11) = 7;
    sub_1A84E671C();
    LOBYTE(v11) = 8;
    sub_1A84E671C();
    LOBYTE(v11) = 9;
    sub_1A84E671C();
    LOBYTE(v11) = 10;
    sub_1A84E671C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadBatchProgress.init(from:)(a1);
  return v2;
}

void *ImportExport.AttachmentDownloadBatchProgress.init(from:)(void *a1)
{
  v3 = v1;
  v11 = *v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8AB0, &qword_1A8509F80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4CCC();
  sub_1A84E689C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13) = 0;
    v1[2] = sub_1A84E665C();
    LOBYTE(v13) = 1;
    v1[3] = sub_1A84E665C();
    LOBYTE(v13) = 2;
    v1[4] = sub_1A84E667C();
    LOBYTE(v13) = 3;
    v1[5] = sub_1A84E665C();
    LOBYTE(v13) = 4;
    v1[6] = sub_1A84E665C();
    LOBYTE(v13) = 5;
    v1[7] = sub_1A84E667C();
    type metadata accessor for ImportExport.Timer(0);
    v12 = 6;
    sub_1A84B2780(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer, &protocol conformance descriptor for ImportExport.Timer);
    sub_1A84E666C();
    v1[8] = v13;
    LOBYTE(v13) = 7;
    v1[9] = sub_1A84E665C();
    LOBYTE(v13) = 8;
    v1[10] = sub_1A84E665C();
    LOBYTE(v13) = 9;
    v1[11] = sub_1A84E665C();
    LOBYTE(v13) = 10;
    v10 = sub_1A84E665C();
    (*(v6 + 8))(v8, v5);
    v3[12] = v10;
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84B45B8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_1A84B45F8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_1A84B4644()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_1A84B46C0@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

void *sub_1A84B474C()
{
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  swift_allocObject();

  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v0);
  result = ImportExport.AttachmentDownloadIterator.next()();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (result)
  {
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v6 = result;
        v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
        v9 = swift_allocObject();
        v10 = j__malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 25;
        }

        v12 = v11 >> 3;
        v9[2] = v8;
        v9[3] = (2 * (v11 >> 3)) | 1;
        v13 = (v9 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          v15 = v2 + 4;
          if (v9 != v2 || v13 >= v15 + 8 * v14)
          {
            memmove(v9 + 4, v15, 8 * v14);
          }

          v2[2] = 0;
        }

        v4 = (v13 + 8 * v14);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v9;
        result = v6;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v4++ = result;
      result = ImportExport.AttachmentDownloadIterator.next()();
      if (!result)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v3);
  v19 = v18 - v3;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1A84B48D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ImportExport.MessageAttachmentPair(0);
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

unint64_t sub_1A84B4A18(unint64_t result, uint64_t a2)
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

    v4 = sub_1A83EEBC4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A84B48D0(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1A84B4AD8()
{
  result = qword_1EB2E8A78;
  if (!qword_1EB2E8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A78);
  }

  return result;
}

unint64_t sub_1A84B4B4C()
{
  result = qword_1EB2E8A88;
  if (!qword_1EB2E8A88)
  {
    sub_1A83EC9D4(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B2780(&qword_1EB2E7800, 255, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A88);
  }

  return result;
}

unint64_t sub_1A84B4C0C()
{
  result = qword_1EB2E8A98;
  if (!qword_1EB2E8A98)
  {
    sub_1A83EC9D4(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B2780(&qword_1EB2E7198, 255, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A98);
  }

  return result;
}

unint64_t sub_1A84B4CCC()
{
  result = qword_1EB2E8AA8;
  if (!qword_1EB2E8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AA8);
  }

  return result;
}

uint64_t sub_1A84B4D70(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ExportOptions(319);
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

uint64_t sub_1A84B4E84(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Message(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.Attachment(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84B4FE0()
{
  result = qword_1EB2E8AE0;
  if (!qword_1EB2E8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AE0);
  }

  return result;
}

unint64_t sub_1A84B5038()
{
  result = qword_1EB2E8AE8;
  if (!qword_1EB2E8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AE8);
  }

  return result;
}

unint64_t sub_1A84B5090()
{
  result = qword_1EB2E8AF0;
  if (!qword_1EB2E8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AF0);
  }

  return result;
}

unint64_t sub_1A84B50E8()
{
  result = qword_1EB2E8AF8;
  if (!qword_1EB2E8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AF8);
  }

  return result;
}

unint64_t sub_1A84B5140()
{
  result = qword_1EB2E8B00;
  if (!qword_1EB2E8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B00);
  }

  return result;
}

unint64_t sub_1A84B5198()
{
  result = qword_1EB2E8B08;
  if (!qword_1EB2E8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B08);
  }

  return result;
}

unint64_t sub_1A84B51F0()
{
  result = qword_1EB2E8B10;
  if (!qword_1EB2E8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B10);
  }

  return result;
}

unint64_t sub_1A84B5248()
{
  result = qword_1EB2E8B18;
  if (!qword_1EB2E8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B18);
  }

  return result;
}

unint64_t sub_1A84B52A0()
{
  result = qword_1EB2E8B20;
  if (!qword_1EB2E8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B20);
  }

  return result;
}

unint64_t sub_1A84B52F8()
{
  result = qword_1EB2E8B28;
  if (!qword_1EB2E8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B28);
  }

  return result;
}

unint64_t sub_1A84B5350()
{
  result = qword_1EB2E8B30;
  if (!qword_1EB2E8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B30);
  }

  return result;
}

unint64_t sub_1A84B53A8()
{
  result = qword_1EB2E8B38;
  if (!qword_1EB2E8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B38);
  }

  return result;
}

uint64_t sub_1A84B53FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533BD0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

uint64_t sub_1A84B5578(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001A8533C40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF6575657551746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8533C70 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A84B56FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001A8532AA0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8532B80 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8533CD0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF746E756F43746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531E20 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531E40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531E60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533D10 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8533D30 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1A84B5AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchivingOptions.exportDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivingOptions(0) + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImportExport.ArchivingOptions(uint64_t a1)
{
  result = qword_1EB2E4690;
  if (!qword_1EB2E4690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ArchivingOptions.exportDirectoryURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchivingOptions(0) + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1A84B5CD4()
{
  v0 = sub_1A84E52BC();
  sub_1A82442B8(v0, qword_1EB2E8B40);
  sub_1A824431C(v0, qword_1EB2E8B40);
  sub_1A83EA2FC(&qword_1EB2E8B88, &qword_1A850A8D8);
  *(swift_allocObject() + 16) = xmmword_1A8501390;
  sub_1A84E528C();
  sub_1A84E527C();
  sub_1A84B7544(&qword_1EB2E8B90, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1A83EA2FC(&qword_1EB2E8B98, &qword_1A850A8E0);
  sub_1A84B758C();
  return sub_1A84E63CC();
}

uint64_t static ImportExport.ArchivingOptions.defaultJsonFormatting.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E52BC();
  v3 = sub_1A824431C(v2, qword_1EB2E8B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ImportExport.ArchivingOptions.jsonFormatting.getter()
{
  type metadata accessor for ImportExport.ArchivingOptions(0);

  return sub_1A84E529C();
}

uint64_t sub_1A84B5F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A84E52BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1A84E52AC();
  (*(v5 + 8))(v7, v4);
  result = type metadata accessor for ImportExport.ArchivingOptions(0);
  *(a2 + *(result + 24)) = v8;
  return result;
}

uint64_t ImportExport.ArchivingOptions.jsonFormatting.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E52AC();
  v5 = sub_1A84E52BC();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = type metadata accessor for ImportExport.ArchivingOptions(0);
  *(v2 + *(result + 24)) = v4;
  return result;
}

void (*ImportExport.ArchivingOptions.jsonFormatting.modify(void *a1))(uint64_t **a1, char a2)
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
  *v4 = v1;
  v6 = sub_1A84E52BC();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 10) = *(type metadata accessor for ImportExport.ArchivingOptions(0) + 24);
  sub_1A84E529C();
  return sub_1A84B61C4;
}

void sub_1A84B61C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    (*(v7 + 16))((*a1)[3], v5, v6);
    v9 = sub_1A84E52AC();
    v10 = *(v7 + 8);
    v10(v4, v6);
    *(v8 + v3) = v9;
    v10(v5, v6);
  }

  else
  {
    v11 = sub_1A84E52AC();
    (*(v7 + 8))(v5, v6);
    *(v8 + v3) = v11;
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t ImportExport.ArchivingOptions.init(withExportExportDirectoryURL:exportOptions:jsonFormatting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A84E54AC();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E56DC();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_1A84E558C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  v52 = a2;
  sub_1A84B7114(a2, a4, type metadata accessor for ImportExport.ExportOptions);
  v50 = a3;
  v23 = sub_1A84E52AC();
  v49 = type metadata accessor for ImportExport.ArchivingOptions(0);
  v24 = *(v49 + 24);
  v51 = a4;
  *(a4 + v24) = v23;
  v53 = a1;
  sub_1A84580FC(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1A8496E7C(v15);
    v25 = [objc_opt_self() defaultManager];
    v26 = [v25 temporaryDirectory];

    v27 = v20;
    sub_1A84E554C();

    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1A84E646C();

    v60 = 0xD000000000000016;
    v61 = 0x80000001A8533D50;
    v28 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v29 = sub_1A84E565C();
    (*(v44 + 8))(v12, v45);
    v30 = [v28 stringFromDate_];

    v31 = sub_1A84E5DBC();
    v33 = v32;

    v58 = v31;
    v59 = v33;
    v56 = 58;
    v57 = 0xE100000000000000;
    v54 = 45;
    v55 = 0xE100000000000000;
    sub_1A840D3B0();
    v34 = sub_1A84E637C();
    v36 = v35;

    MEMORY[0x1AC56A990](v34, v36);

    v38 = v46;
    v37 = v47;
    v39 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x1E6968F70], v48);
    sub_1A84E557C();
    v40 = sub_1A84E52BC();
    (*(*(v40 - 8) + 8))(v50, v40);
    sub_1A84B717C(v52, type metadata accessor for ImportExport.ExportOptions);
    sub_1A8496E7C(v53);
    (*(v37 + 8))(v38, v39);

    return (*(v17 + 8))(v27, v16);
  }

  else
  {
    v42 = sub_1A84E52BC();
    (*(*(v42 - 8) + 8))(v50, v42);
    sub_1A84B717C(v52, type metadata accessor for ImportExport.ExportOptions);
    sub_1A8496E7C(v53);
    v43 = *(v17 + 32);
    v43(v22, v15, v16);
    return (v43)(v51 + *(v49 + 20), v22, v16);
  }
}

unint64_t sub_1A84B68A4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x704F74726F707865;
  }
}

uint64_t sub_1A84B6910@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84B7418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84B6938(uint64_t a1)
{
  v2 = sub_1A84B6BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B6974(uint64_t a1)
{
  v2 = sub_1A84B6BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivingOptions.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8B58, &qword_1A850A738);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B6BE0();
  sub_1A84E68AC();
  v8[15] = 0;
  type metadata accessor for ImportExport.ExportOptions(0);
  sub_1A84B7544(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
  sub_1A84E672C();
  if (!v1)
  {
    type metadata accessor for ImportExport.ArchivingOptions(0);
    v8[14] = 1;
    sub_1A84E558C();
    sub_1A84B7544(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A84E672C();
    v8[13] = 2;
    sub_1A84E671C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A84B6BE0()
{
  result = qword_1EB2E8B60;
  if (!qword_1EB2E8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B60);
  }

  return result;
}

uint64_t ImportExport.ArchivingOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1A84E558C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A83EA2FC(&qword_1EB2E8B68, &qword_1A850A740);
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ImportExport.ArchivingOptions(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B6BE0();
  v31 = v9;
  v13 = v33;
  sub_1A84E689C();
  if (v13)
  {
    return sub_1A8244788(a1);
  }

  v25 = v10;
  v33 = a1;
  v14 = v12;
  v16 = v27;
  v15 = v28;
  v17 = v29;
  v36 = 0;
  sub_1A84B7544(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
  sub_1A84E666C();
  sub_1A84B70B0(v30, v14);
  v35 = 1;
  sub_1A84B7544(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1A84E666C();
  (*(v15 + 32))(v14 + *(v25 + 20), v5, v17);
  v34 = 2;
  v18 = v31;
  v19 = sub_1A84E665C();
  v20 = v33;
  v21 = v19;
  (*(v16 + 8))(v18, v32);
  v22 = v26;
  *(v14 + *(v25 + 24)) = v21;
  sub_1A84B7114(v14, v22, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A8244788(v20);
  return sub_1A84B717C(v14, type metadata accessor for ImportExport.ArchivingOptions);
}

uint64_t sub_1A84B70B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84B7114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B717C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84B7234(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ExportOptions(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A84E558C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84B72D4()
{
  result = qword_1EB2E8B70;
  if (!qword_1EB2E8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B70);
  }

  return result;
}

unint64_t sub_1A84B732C()
{
  result = qword_1EB2E8B78;
  if (!qword_1EB2E8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B78);
  }

  return result;
}

unint64_t sub_1A84B7384()
{
  result = qword_1EB2E8B80;
  if (!qword_1EB2E8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B80);
  }

  return result;
}

uint64_t sub_1A84B73D8()
{
  sub_1A84E52FC();
  swift_allocObject();
  result = sub_1A84E52EC();
  qword_1EB2FF3B8 = result;
  return result;
}

uint64_t sub_1A84B7418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533D70 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533D90 == a2)
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

uint64_t sub_1A84B7544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A84B758C()
{
  result = qword_1EB2E8BA0;
  if (!qword_1EB2E8BA0)
  {
    sub_1A83EC9D4(&qword_1EB2E8B98, &qword_1A850A8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8BA0);
  }

  return result;
}

uint64_t sub_1A84B77C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84BC37C;

  return sub_1A84B9878(v6);
}

uint64_t sub_1A84B7A24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84B7AF8;

  return sub_1A84BA620(v6);
}

uint64_t sub_1A84B7AF8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v1)
  {
    if (v5)
    {
      v10 = *(v4 + 32);
      v11 = sub_1A84E547C();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v13 = *(v4 + 32);
      type metadata accessor for IMPollOption(v9);
      v11 = sub_1A84E5FEC();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1A84B7E70(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84B7F44;

  return sub_1A84BB1EC(v6);
}

uint64_t sub_1A84B7F44(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v1)
  {
    if (v5)
    {
      v9 = *(v4 + 32);
      v10 = sub_1A84E547C();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v4 + 32);
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
      sub_1A84BC050();
      v10 = sub_1A84E5D2C();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

id sub_1A84B81FC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1A84E5D8C();

  return v3;
}

id _sSo12IMPollHelperC6IMCoreEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A84B8434()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B7E70(v2, v3, v4);
}

unsigned __int8 *sub_1A84B84E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1A84E5F4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A84B8A74(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A84E64CC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}
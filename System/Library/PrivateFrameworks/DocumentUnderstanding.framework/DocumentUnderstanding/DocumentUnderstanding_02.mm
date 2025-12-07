id DocumentGradingDocumentFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DocumentGradingDocumentFetcher.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for DUDocumentUpdater());
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding30DocumentGradingDocumentFetcher_documentUpdater] = DUDocumentUpdater.init(client:)(0);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DocumentGradingDocumentFetcher();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232B352F4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v2[10] = swift_task_alloc();
  v3 = sub_232CE8C00();
  v2[11] = v3;
  sub_232B27FBC(v3);
  v2[12] = v4;
  v2[13] = swift_task_alloc();
  v5 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);
  v2[14] = v5;
  sub_232B27FBC(v5);
  v2[15] = v6;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B35450, 0, 0);
}

uint64_t sub_232B35450()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_232B35508;

  return sub_232C6E0C8();
}

uint64_t sub_232B35508(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232B35670, 0, 0);
  }
}

void sub_232B35670()
{
  v1 = 0;
  v2 = v0[19];
  v32 = v0[14];
  v34 = *(v2 + 16);
  v31 = (v0[12] + 32);
  v33 = MEMORY[0x277D84F90];
  v3 = v2;
  v4 = v2 + 40;
  v30 = v2 + 40;
LABEL_2:
  v5 = (v4 + 16 * v1);
  while (v34 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
    swift_beginAccess();
    v9 = *(v6 + v8);
    if (v9)
    {
      v11 = v0[10];
      v10 = v0[11];
      v12 = *&v9[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument];
      v13 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
      swift_beginAccess();
      sub_232B35974(v12 + v13, v11);
      if (sub_232B12480(v11, 1, v10) != 1)
      {
        v14 = v0[16];
        v15 = v0[13];
        v28 = v0[11];
        v29 = v0[17];
        v16 = *v31;
        (*v31)(v15, v0[10]);
        v17 = *(v32 + 48);
        v18 = *(v32 + 64);
        *v14 = v9;
        v16(&v14[v17], v15, v28);
        *&v14[v18] = v7;
        sub_232B35A4C(v14, v29);
        v19 = v7;
        v20 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_232B36334(0, v33[2] + 1, 1, v33);
        }

        v22 = v33[2];
        v21 = v33[3];
        if (v22 >= v21 >> 1)
        {
          v33 = sub_232B36334((v21 > 1), v22 + 1, 1, v33);
        }

        ++v1;
        v33[2] = v22 + 1;
        sub_232B37B60();
        sub_232B35A4C(v26, v24 + v23 + *(v25 + 72) * v22);
        v4 = v30;
        goto LABEL_2;
      }

      sub_232B359E4(v0[10]);
    }

    v5 += 2;
    ++v1;
  }

  v27 = v0[1];

  v27(v33);
}

id DocumentGradingDocumentFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentGradingDocumentFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B35974(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B359E4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B35A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_232B35ABC()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v7 = sub_232B124A8(&qword_27DDC6B00, &unk_232CF6E80);
    v8 = sub_232B37B90(v7);
    sub_232B37B78(v8);
    sub_232B37B48();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = sub_232B37BCC();
  if (v1)
  {
    if (v8 != v0 || &v11[8 * v3] <= v10)
    {
      memmove(v10, v11, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 8 * v3);
  }
}

void sub_232B35BAC()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6C40, &unk_232CF6FD0);
    v4 = 56;
    v9 = swift_allocObject();
    sub_232B37B2C(v9);
    sub_232B37C00();
    *(v3 + 16) = v2;
    *(v3 + 24) = v10;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 56 * v2 <= v4)
    {
      v12 = sub_232B37B20();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C48, &qword_232CF89E0);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35CA8()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6C30, &qword_232CF6FC0);
    v4 = 24;
    v9 = swift_allocObject();
    sub_232B37B2C(v9);
    sub_232B37C00();
    *(v3 + 16) = v2;
    *(v3 + 24) = v10;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = sub_232B37B20();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C38, &qword_232CF6FC8);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35DC8()
{
  sub_232B37BD8();
  if (v6)
  {
    sub_232B37A48();
    if (v11 != v12)
    {
      sub_232B37AEC();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_232B37C38(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    sub_232B37B78(v15);
    v15[2] = v13;
    v15[3] = 2 * (v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = sub_232B37C0C();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(v2, v1);
    sub_232B37C0C();
    swift_arrayInitWithCopy();
  }
}

void sub_232B35ECC()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v7 = sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    v8 = sub_232B37B90(v7);
    j__malloc_size(v8);
    sub_232B37A58();
    *(v8 + 2) = v2;
    *(v8 + 3) = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B35FA0()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6B88, &unk_232CF6F10);
  v8 = sub_232B37B54();
  type metadata accessor for FoundInEventDataDetectorsOutput(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for FoundInEventDataDetectorsOutput, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36078()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6B28, &unk_232CF6EB0);
  v8 = sub_232B37B54();
  type metadata accessor for DUStructuredExtractionResult(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DUStructuredExtractionResult, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36178()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v13 = sub_232B37C38(v7, v8, v9, v10, v11, v12);
    v14 = sub_232B37B90(v13);
    sub_232B37B78(v14);
    sub_232B37B48();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = sub_232B37BCC();
  if (v1)
  {
    if (v14 != v0 || &v17[8 * v3] <= v16)
    {
      memmove(v16, v17, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 8 * v3);
  }
}

void sub_232B36248()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v9 = sub_232B124A8(&qword_27DDC6C00, &qword_232CF6F90);
    v10 = sub_232B37B90(v9);
    j__malloc_size(v10);
    sub_232B37A58();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v10 != v0 || v5 + 16 * v2 <= v4)
    {
      v13 = sub_232B37B20();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C08, &qword_232CF6F98);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void *sub_232B36334(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_232B37538(v8, v7);
  v10 = *(sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_232B3780C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t dispatch thunk of DocumentGradingDocumentFetcher.retrieveDocumentsForGrading(numberOfDocuments:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232B28D1C;

  return v7(a1);
}

void sub_232B36588()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v13 = sub_232B37C38(v7, v8, v9, v10, v11, v12);
    v14 = sub_232B37B90(v13);
    j__malloc_size(v14);
    sub_232B37A58();
    v14[2] = v3;
    v14[3] = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = sub_232B37BCC();
  if (v1)
  {
    if (v14 != v0 || &v17[16 * v3] <= v16)
    {
      memmove(v16, v17, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

void sub_232B36664()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6C60, &unk_232CF6FF0);
  sub_232B37B54();
  sub_232CE8D10();
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(MEMORY[0x277CC9578], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B3673C()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BF0, &qword_232CF6F80);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36814()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BE0, &qword_232CF6F70);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B368EC()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BE8, &qword_232CF6F78);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B369C4()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v7 = sub_232B124A8(&qword_27DDC6B78, &unk_232CF6F00);
    v8 = sub_232B37B90(v7);
    sub_232B37B78(v8);
    sub_232B37B48();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = sub_232B37BCC();
  if (v1)
  {
    if (v8 != v0 || &v11[4 * v3] <= v10)
    {
      memmove(v10, v11, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 4 * v3);
  }
}

void sub_232B36AB4()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6B48, &qword_232CF6ED0);
  sub_232B37B54();
  sub_232CE8AE0();
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(MEMORY[0x277CC8990], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36BB0()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v7 = sub_232B124A8(&qword_27DDC6AF8, &qword_232CF6E78);
    v8 = sub_232B37B90(v7);
    sub_232B37B2C(v8);
    sub_232B37B48();
    v3[2] = v2;
    v3[3] = v9;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = (v3 + 4);
  v11 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B36C84()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BC8, &qword_232CF6F58);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36D5C()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BD0, &qword_232CF6F60);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36E34()
{
  sub_232B37A7C();
  if (v4)
  {
    sub_232B37A6C();
    if (v6 != v7)
    {
      sub_232B37B6C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_232B37A8C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_232B37BB4(v2, v5, &qword_27DDC6BD8, &qword_232CF6F68);
  v8 = sub_232B37B54();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v8);
  sub_232B13FB4();
  sub_232B37B60();
  if (v1)
  {
    sub_232B37AF8(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B37A9C();
  }
}

void sub_232B36F0C()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v7 = sub_232B124A8(&qword_27DDC6BC0, &qword_232CF6F50);
    v8 = sub_232B37C18(v7);
    sub_232B37B78(v8);
    sub_232B37C00();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = sub_232B37BCC();
  if (v1)
  {
    if (v8 != v0 || &v11[40 * v3] <= v10)
    {
      memmove(v10, v11, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_232B3702C()
{
  sub_232B37BD8();
  if (v6)
  {
    sub_232B37A48();
    if (v11 != v12)
    {
      sub_232B37AEC();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    v15 = sub_232B37C38(v4, v5, v6, v7, v8, v9);
    v16 = sub_232B37B90(v15);
    sub_232B37B78(v16);
    sub_232B37B48();
    v16[2] = v13;
    v16[3] = v17;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v16 != v0 || &v0[v13 + 4] <= v16 + 4)
    {
      v19 = sub_232B37C0C();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(v2, v1);
    sub_232B37C0C();
    swift_arrayInitWithCopy();
  }
}

void sub_232B3711C()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v9 = sub_232B124A8(&qword_27DDC6B18, &qword_232CF6EA0);
    v10 = sub_232B37B90(v9);
    j__malloc_size(v10);
    sub_232B37A58();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v10 != v0 || v5 + 16 * v2 <= v4)
    {
      v13 = sub_232B37B20();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6B20, &qword_232CF6EA8);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B37208()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v9 = sub_232B124A8(&qword_27DDC6BB0, &qword_232CF6F40);
    v10 = sub_232B37B90(v9);
    sub_232B37B2C(v10);
    sub_232B37B48();
    *(v3 + 16) = v2;
    *(v3 + 24) = v11;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v13 = sub_232B37B20();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6BB8, &qword_232CF6F48);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B372F4()
{
  sub_232B37B14();
  if (v4)
  {
    sub_232B37A48();
    if (v5 != v6)
    {
      sub_232B37AEC();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ADC();
  if (v2)
  {
    v7 = sub_232B124A8(&qword_27DDC6BA0, &qword_232CF6F30);
    v8 = sub_232B37C18(v7);
    sub_232B37B78(v8);
    sub_232B37C00();
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v8 != v0 || &v0[5 * v3 + 4] <= v8 + 4)
    {
      v11 = sub_232B37B20();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6BA8, &qword_232CF6F38);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void sub_232B373E4()
{
  sub_232B37B14();
  if (v6)
  {
    sub_232B37A48();
    if (v7 != v8)
    {
      sub_232B37AEC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_232B37A38();
    }
  }

  sub_232B37ABC();
  if (v3)
  {
    v9 = sub_232B124A8(&qword_27DDC6B90, &qword_232CF6F20);
    v10 = sub_232B37B90(v9);
    j__malloc_size(v10);
    sub_232B37A58();
    v10[2] = v2;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_232B37BA8();
  if (v1)
  {
    if (v10 != v0 || v5 + 16 * v2 <= v4)
    {
      v13 = sub_232B37B20();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6B98, &qword_232CF6F28);
    sub_232B37ACC();
    swift_arrayInitWithCopy();
  }
}

void *sub_232B374D0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v4 = sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v5 = sub_232B37B90(v4);
  j__malloc_size(v5);
  sub_232B37A58();
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

void *sub_232B37538(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_232B124A8(&qword_27DDC6BF8, &qword_232CF6F88);
  v4 = *(sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232B37640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_232B124A8(a3, a4);
  v8 = sub_232B37B54();
  v9 = a5(v8);
  sub_232B27FBC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_232B37730(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v4 = sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v5 = sub_232B37B90(v4);
  sub_232B37B78(v5);
  v5[2] = a1;
  v5[3] = (2 * (v6 / 8)) | 1;
  return v5;
}

char *sub_232B377A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

char *sub_232B377C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

char *sub_232B377EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B3780C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_232B124A8(&qword_27DDC6AE0, &unk_232CF6E20);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_232B378F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B37930(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v13 = sub_232B37BEC();

    return MEMORY[0x2821FE828](v13, v14, v15, v16);
  }

  else if (a3 != a1)
  {
    v9 = sub_232B37BEC();

    return MEMORY[0x2821FE820](v9, v10, v11, v12);
  }

  return result;
}

char *sub_232B379F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B37A9C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_232B37AF8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_232B37930(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_232B37B90(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_232B37BB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_232B37640(v5, a2, a3, a4, v4);
}

uint64_t sub_232B37C18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232B37C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_232B124A8(a5, a6);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(uint64_t a1)
{
  result = qword_2814E1EB0;
  if (!qword_2814E1EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B37CC4(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B37D58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B37D58(uint64_t a1)
{
  if (!qword_2814E1DB0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(255);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E1DB0);
    }
  }
}

uint64_t sub_232B37DB0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232CE9330();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);

  return sub_232B12504(a1 + v3, 1, 1, v4);
}

uint64_t sub_232B37E1C@<X0>(void *a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B38B18(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  if (sub_232B12480(v5, 1, v7) != 1)
  {
    return sub_232B38BE4(v5, a1);
  }

  sub_232B2E158(a1);
  result = sub_232B12480(v5, 1, v7);
  if (result != 1)
  {
    return sub_232B13790(v5, &qword_27DDC6A98, &qword_232CF6D40);
  }

  return result;
}

uint64_t sub_232B37F18()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F08);
  sub_232B135C4(v0, qword_27DDD4F08);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "htmlString";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentEmailData";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B380E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B38168(a1, v5, a2, a3);
    }

    else if (result == 1)
    {
      sub_232CE94A0();
    }
  }

  return result;
}

uint64_t sub_232B38168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232B38C48(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6CB0);
  return sub_232CE94C0();
}

uint64_t sub_232B3821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_232CE95C0(), !v4))
  {
    result = sub_232B382E0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232B382E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B38B18(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC6A98, &qword_232CF6D40);
  }

  sub_232B38BE4(v7, v10);
  sub_232B38C48(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData, &unk_232CF6CB0);
  sub_232CE95E0();
  return sub_232B38B88(v10);
}

uint64_t sub_232B38480(void *a1, void *a2)
{
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v21 - v8);
  v10 = sub_232B124A8(&qword_27DDC6C80, &qword_232CF71A8);
  sub_232B13F24();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0) + 24);
  v16 = *(v10 + 48);
  sub_232B38B18(a1 + v15, v13);
  sub_232B38B18(a2 + v15, &v13[v16]);
  sub_232B38C90(v13);
  if (v14)
  {
    sub_232B38C90(&v13[v16]);
    if (v14)
    {
      sub_232B13790(v13, &qword_27DDC6A98, &qword_232CF6D40);
LABEL_17:
      sub_232CE9340();
      sub_232B38C48(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_232CE9CF0();
      return v18 & 1;
    }

    goto LABEL_14;
  }

  sub_232B38B18(v13, v9);
  sub_232B38C90(&v13[v16]);
  if (v17)
  {
    sub_232B38B88(v9);
LABEL_14:
    sub_232B13790(v13, &qword_27DDC6C80, &qword_232CF71A8);
    goto LABEL_15;
  }

  sub_232B38BE4(&v13[v16], v6);
  v19 = sub_232B2E9D4(v9, v6);
  sub_232B38B88(v6);
  sub_232B38B88(v9);
  sub_232B13790(v13, &qword_27DDC6A98, &qword_232CF6D40);
  if (v19)
  {
    goto LABEL_17;
  }

LABEL_15:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_232B3870C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B38C48(&qword_27DDC6C70, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF7068);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B387E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B38C48(&qword_27DDC6C88, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF70F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B38860@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6330 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B38908(uint64_t a1)
{
  v2 = sub_232B38C48(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF7130);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B38978(uint64_t a1, uint64_t a2)
{
  sub_232B38C48(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData, &unk_232CF7130);

  return sub_232CE9500();
}

uint64_t sub_232B38B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B38B88(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B38BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B38C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B38D08()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_232B38DD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F5C(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B38E30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B38DD8(v1, v2);
}

void *sub_232B38EF4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232B38F94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232B38FE4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232B38F94(v1);
}

id DUDocumentHTMLData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentHTMLData.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData] = 0;
  sub_232B13F5C(v1, v4);
  *v1 = xmmword_232CF71B0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUDocumentHTMLData();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_232B39150(void *a1)
{
  type metadata accessor for DUDocumentHTMLData();
  sub_232B3A3C8();
  sub_232B3A31C(v2, v3, v4, &protocol conformance descriptor for DUDocumentHTMLData);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentHTMLData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B3A3C8();
  sub_232B3A31C(v2, v3, v4, &protocol conformance descriptor for DUDocumentHTMLData);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3A3E0(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3A3E0(v6);
  return v5;
}

char *sub_232B393CC@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B39C78((v5 - v4));
  v7 = sub_232B39460(v6);
  result = sub_232B124A8(&qword_27DDC6CA8, &unk_232CF71C0);
  a1[3] = result;
  *a1 = v7;
  return result;
}

char *sub_232B39460(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = (v5 - v4);
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  v8 = sub_232B2D120(v7);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = (v10 - v9);
  v12 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
  sub_232B3A364(a1, v11);
  v14 = *v11;
  v13 = v11[1];
  v15 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], v22);
  *v15 = v14;
  *(v15 + 1) = v13;

  sub_232B37E1C(v6);
  sub_232B3068C(v6);
  v17 = v16;
  sub_232B39EF0(a1);
  sub_232B39EF0(v11);
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], v21);
  v19 = *&v12[v18];
  *&v12[v18] = v17;

  return v12;
}

char *sub_232B395B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_allocWithZone(v2) init];
  sub_232B3A364(a1, v9);
  v12 = *v9;
  v11 = *(v9 + 1);
  v13 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  swift_beginAccess();
  *v13 = v12;
  *(v13 + 1) = v11;

  sub_232B37E1C(v6);
  sub_232B3068C(v6);
  v15 = v14;
  sub_232B39EF0(a1);
  sub_232B39EF0(v9);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  swift_beginAccess();
  v17 = *&v10[v16];
  *&v10[v16] = v15;

  return v10;
}

char *DUDocumentHTMLData.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = (v9 - v8);
  v11 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v12 = sub_232B2D120(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v34[-v13];
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v19 = v18 - v17;
  v20 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = (v23 - v22);
  v25 = [objc_allocWithZone(v3) init];
  (*(v15 + 16))(v19, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v14, 0, 1, v20);
    sub_232B3A08C(v14, v24, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
    v27 = *v24;
    v26 = v24[1];
    v28 = &v25[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
    sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], v35);
    *v28 = v27;
    *(v28 + 1) = v26;

    sub_232B37E1C(v10);
    sub_232B3068C(v10);
    v30 = v29;
    (*(v15 + 8))(a1, a2);
    sub_232B39EF0(v24);
    v31 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
    sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], v34);
    v32 = *&v25[v31];
    *&v25[v31] = v30;
  }

  else
  {

    sub_232B12504(v14, 1, 1, v20);
    (*(v15 + 8))(a1, a2);
    sub_232B13790(v14, &qword_27DDC69B0, &qword_232CF6998);
    return 0;
  }

  return v25;
}

uint64_t sub_232B39A64(uint64_t a1)
{
  sub_232B3A01C(a1, v21);
  if (!v22)
  {
    sub_232B13790(v21, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_17;
  }

  type metadata accessor for DUDocumentHTMLData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    return v15 & 1;
  }

  v2 = v20;
  v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString, v21);
  v4 = *v3;
  v5 = v3[1];
  v6 = &v20[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
  sub_232B13F74(&v20[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], &v20);
  v7 = *(v6 + 1);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v4 == *v6 && v5 == v7;
    if (!v8 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v7)
  {
LABEL_16:

    goto LABEL_17;
  }

  v9 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, v19);
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], v18);
  v12 = *&v2[v11];
  if (!v10)
  {
    v17 = v12;

    if (!v12)
    {
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_17;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  type metadata accessor for DUDocumentEmailData(0);
  v13 = v12;
  v14 = v10;
  v15 = sub_232CEA310();

  return v15 & 1;
}

uint64_t sub_232B39C78@<X0>(void *a1@<X8>)
{
  v3 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-v5];
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v26[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v26[-v15];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v17 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  sub_232CE9330();
  v18 = *(v17 + 24);
  sub_232B3A400(a1 + v18, 1);
  v19 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString, v27);
  v20 = v19[1];
  if (v20)
  {
    *a1 = *v19;
    a1[1] = v20;
  }

  v21 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, v26);
  v22 = *(v1 + v21);
  if (v22)
  {

    v23 = v22;
    sub_232B31BCC(v13);

    v24 = swift_dynamicCast();
    sub_232B3A400(v6, v24 ^ 1u);
    if (sub_232B12480(v6, 1, v7) != 1)
    {
      sub_232B3A08C(v6, v16, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      sub_232B3A08C(v16, v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      sub_232B13790(a1 + v18, &qword_27DDC6A98, &qword_232CF6D40);
      sub_232B3A08C(v10, a1 + v18, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
      return sub_232B3A400(a1 + v18, 0);
    }
  }

  else
  {

    sub_232B3A400(v6, 1);
  }

  return sub_232B13790(v6, &qword_27DDC6A98, &qword_232CF6D40);
}

uint64_t sub_232B39EF0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentHTMLData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentHTMLData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B39FF4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B395B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3A01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3A08C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B3A31C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B3A364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3A3E0(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B3A400(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(uint64_t a1)
{
  result = qword_27DDC6CB0;
  if (!qword_27DDC6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B3A48C(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B28F10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B3A51C(uint64_t a1)
{
  sub_232CE9330();
  v1 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B2DF60(*(v1 + 20));
  sub_232B2DF60(*(v2 + 24));
  sub_232B2DF60(*(v3 + 28));
  sub_232B2DF60(*(v4 + 32));
  sub_232B2DF60(*(v5 + 36));
}

uint64_t sub_232B3A570()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F20);
  sub_232B135C4(v0, qword_27DDD4F20);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentNamespace";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentId";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "spotlightBundleID";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "spotlightDomainIdentifier";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "spotlightUniqueIdentifier";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B3A7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232B3A8B0(v6, v7, v8, v9);
        break;
      case 2:
        v22 = sub_232B13EE0();
        sub_232B3A914(v22, v23, v24, v25);
        break;
      case 3:
        v14 = sub_232B13EE0();
        sub_232B3A978(v14, v15, v16, v17);
        break;
      case 4:
        v18 = sub_232B13EE0();
        sub_232B3A9DC(v18, v19, v20, v21);
        break;
      case 5:
        v10 = sub_232B13EE0();
        sub_232B3AA40(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B3AAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232B3AB20(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232B3AB98(v9, v10, v11, v12);
    v13 = sub_232B13EF4();
    sub_232B3AC10(v13, v14, v15, v16);
    v17 = sub_232B13EF4();
    sub_232B3AC88(v17, v18, v19, v20);
    v21 = sub_232B13EF4();
    sub_232B3AD00(v21, v22, v23, v24);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B3AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B3AD78(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B2DF3C();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    sub_232B2DF50(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    sub_232B2DF50(v9);
    v13 = v7 && v11 == v12;
    if (!v13 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v16)
  {
    if (!v14)
    {
      return 0;
    }

    sub_232B2DF50(v15);
    v19 = v7 && v17 == v18;
    if (!v19 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    sub_232B2DF50(v21);
    v25 = v7 && v23 == v24;
    if (!v25 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v28)
  {
    if (v26)
    {
      sub_232B2DF50(v27);
      v31 = v7 && v29 == v30;
      if (v31 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_44;
      }
    }
  }

  else if (!v26)
  {
LABEL_44:
    sub_232CE9340();
    sub_232B3B30C(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B3AF00()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B3B30C(&qword_27DDC6CD0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF72D4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B3AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B3B30C(&qword_27DDC6CE0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF7364);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B3B054@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6338 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B3B0FC(uint64_t a1)
{
  v2 = sub_232B3B30C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF739C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B3B16C(uint64_t a1, uint64_t a2)
{
  sub_232B3B30C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF739C);

  return sub_232CE9500();
}

uint64_t sub_232B3B30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B3B3FC(void *a1)
{
  v2 = (v1 + *a1);
  sub_232B3CAE4(a1);
  v3 = *v2;

  return v3;
}

uint64_t sub_232B3B44C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_232B3CAB4(a1, a2, a3, a4);
  *v5 = v6;
  v5[1] = v4;
}

uint64_t static DUDocumentIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DDC6CE8 = a1;
  return result;
}

uint64_t sub_232B3B744@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC6CE8;
  return result;
}

uint64_t sub_232B3B790(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC6CE8 = v1;
  return result;
}

id DUDocumentIdentifier.init(documentNamespace:documentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentNamespace];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID];
  *v9 = a3;
  *(v9 + 1) = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DUDocumentIdentifier();
  return objc_msgSendSuper2(&v11, sel_init);
}

char *sub_232B3B8E0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232B3CA38(a1, v4 - v3);
  v6 = (v5 + v2[5]);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (v5 + v2[6]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

  v12 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v7, v8, v10, v11);
  v13 = sub_232B3BEC4(a1);
  if (*(v5 + v2[7] + 8))
  {
    sub_232B13F08(v13, v19);
    sub_232B3CB04();
  }

  if (*(v5 + v2[8] + 8))
  {
    sub_232B13F08(v13, v20);
    sub_232B3CB04();
  }

  v14 = (v5 + v2[9]);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;

    sub_232B3BEC4(v5);
    v17 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 1) = v15;
  }

  else
  {
    sub_232B3BEC4(v5);
  }

  return v12;
}

char *DUDocumentIdentifier.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = v14 - v13;
  (*(v7 + 16))(v11, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v6, 0, 1, v12);
    sub_232B3BE60(v6, v15);
    v16 = (v15 + v12[5]);
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v31 = v17;
      v32 = v18;
    }

    else
    {
      v31 = 0xE000000000000000;
      v32 = 0;
    }

    v20 = (v15 + v12[6]);
    if (v20[1])
    {
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

    v19 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v32, v31, v21, v22);
    v24 = (*(v7 + 8))(a1, a2);
    if (*(v15 + v12[7] + 8))
    {
      sub_232B13F08(v24, v33);
      sub_232B3CB04();
    }

    if (*(v15 + v12[8] + 8))
    {
      sub_232B13F08(v24, v34);
      sub_232B3CB04();
    }

    v25 = (v15 + v12[9]);
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;

      sub_232B3BEC4(v15);
      v28 = &v19[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
      swift_beginAccess();
      *v28 = v27;
      *(v28 + 1) = v26;
    }

    else
    {
      sub_232B3BEC4(v15);
    }
  }

  else
  {
    (*(v7 + 8))(a1, a2);
    sub_232B12504(v6, 1, 1, v12);
    sub_232B3BDF8(v6);
    return 0;
  }

  return v19;
}

uint64_t sub_232B3BDF8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B3BE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3BEC4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B3BF20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v7 = v6 - v5;
  sub_232CE9330();
  v8 = (v7 + v4[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v7 + v4[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v7 + v4[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v7 + v4[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v7 + v4[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentNamespace);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentNamespace, v30);
  v14 = *v13;
  v15 = v13[1];
  *v8 = v14;
  v8[1] = v15;
  v16 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID, v29);
  v17 = *v16;
  v18 = v16[1];
  *v9 = v17;
  v9[1] = v18;
  v19 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID, v28);
  v20 = v19[1];
  if (v20)
  {
    *v10 = *v19;
    v10[1] = v20;
  }

  v21 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier, v27);
  v22 = v21[1];
  if (v22)
  {
    *v11 = *v21;
    v11[1] = v22;
  }

  v23 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier);
  sub_232B13F74(v23, v26);
  v24 = v23[1];
  if (v24)
  {
    *v12 = *v23;
    v12[1] = v24;
  }

  sub_232B3BE60(v7, a1);
}

char *sub_232B3C0D8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232B3BF20(v4 - v3);
  v6 = sub_232B3B8E0(v5);
  result = sub_232B124A8(&qword_27DDC6D20, &qword_232CF7428);
  a1[3] = result;
  *a1 = v6;
  return result;
}

void sub_232B3C1D0(void *a1)
{
  type metadata accessor for DUDocumentIdentifier();
  sub_232B3CA9C();
  sub_232B3C9F0(v2, v3, v4, &protocol conformance descriptor for DUDocumentIdentifier);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentIdentifier.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B3CA9C();
  sub_232B3C9F0(v2, v3, v4, &protocol conformance descriptor for DUDocumentIdentifier);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3CB40(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3CB40(v6);
  return v5;
}

id DUDocumentIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B3C5B4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B3B8E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3C9F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B3CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3CAB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B3CAE4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B3CB04()
{
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B3CB20(uint64_t a1)
{
}

uint64_t sub_232B3CB40(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(uint64_t a1)
{
  result = qword_2814E1F60;
  if (!qword_2814E1F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B3CBD4(uint64_t a1)
{
  sub_232B2E0AC();
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232B3CC6C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  a1[4] = MEMORY[0x277D84F90];
  a1[5] = v1;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  return sub_232CE9330();
}

uint64_t sub_232B3CCC0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F38);
  sub_232B135C4(v0, qword_27DDD4F38);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF74B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "conversationIdentifier";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "creatorHandle";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "recipientHandles";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "recipientNames";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "attachmentFileName";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "attachmentFilePath";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B3CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 5:
      case 6:
        sub_232CE94A0();
        break;
      case 3:
      case 4:
        sub_232CE9460();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B3D040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B2F0F4();
  if (!v7 || (result = sub_232B2F128(v5, v6, 1), !v4))
  {
    sub_232B2F0F4();
    if (!v11 || (result = sub_232B2F128(v9, v10, 2), !v4))
    {
      v12 = *(v3 + 32);
      if (!*(v12 + 16) || (result = sub_232B2F108(v12, 3), !v4))
      {
        v13 = *(v3 + 40);
        if (!*(v13 + 16) || (result = sub_232B2F108(v13, 4), !v4))
        {
          sub_232B2F0F4();
          if (!v16 || (result = sub_232B2F128(v14, v15, 5), !v4))
          {
            sub_232B2F0F4();
            if (!v19 || (result = sub_232B2F128(v17, v18, 6), !v4))
            {
              type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
              return sub_232CE9320();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B3D154(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(a1[4], a2[4]) & 1) == 0 || (sub_232B32DC4(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v6 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232CE9340();
  sub_232B3D7AC(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B3D294()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  sub_232B3D7AC(&qword_27DDC6D98, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF752C);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B3D33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B3D3B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232B3D478(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B3D7AC(&qword_27DDC6DA8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF75BC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B3D4F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6340 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B3D59C(uint64_t a1)
{
  v2 = sub_232B3D7AC(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF75F4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B3D60C(uint64_t a1, uint64_t a2)
{
  sub_232B3D7AC(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData, &unk_232CF75F4);

  return sub_232CE9500();
}

uint64_t sub_232B3D7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_232B3D8A0(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v3 = a1;
  a3(a1, a2);
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232B3D91C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B3D9B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id sub_232B3DB1C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v3 = a1;
  if (a3(a1, a2))
  {
    sub_232CE9FD0();
    sub_232B26CE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_232B3DBA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9FE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

id DUDocumentMessageData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentMessageData.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  v5 = type metadata accessor for DUDocumentMessageData();
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_232B3DEE0(void *a1)
{
  type metadata accessor for DUDocumentMessageData();
  sub_232B3F428();
  sub_232B3F3E0(v2, v3, v4, &protocol conformance descriptor for DUDocumentMessageData);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentMessageData.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUDocumentMessageData.init(coder:)(v2);
}

uint64_t DUDocumentMessageData.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232B3F428();
  sub_232B3F3E0(v2, v3, v4, &protocol conformance descriptor for DUDocumentMessageData);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B3CB40(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B3CB40(v6);
  return v5;
}

char *sub_232B3E154@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B3EB74(v5 - v4);
  v7 = sub_232B3E1E8(v6);
  result = sub_232B124A8(&qword_27DDC6DE8, &qword_232CF7670);
  a1[3] = result;
  *a1 = v7;
  return result;
}

char *sub_232B3E1E8(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  v8 = sub_232B3ED3C(a1, v6);
  sub_232B3F45C(v8, v20);
  sub_232B3F440();

  sub_232B3F45C(v9, v19);
  sub_232B3F440();

  sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames], v18);
  sub_232B3F478();

  sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles], v17);
  sub_232B3F478();

  sub_232B3F45C(v10, v16);
  sub_232B3F440();

  v12 = *(v6 + 64);
  v11 = *(v6 + 72);

  sub_232B3EDA0(v6);
  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath], v15);
  *v13 = v12;
  *(v13 + 1) = v11;

  return v7;
}

char *sub_232B3E36C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_allocWithZone(v2) init];
  sub_232B3ED3C(a1, v6);
  v9 = v6[2];
  v8 = v6[3];
  v10 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  swift_beginAccess();
  *v10 = v9;
  *(v10 + 1) = v8;

  v12 = *v6;
  v11 = v6[1];
  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  swift_beginAccess();
  *v13 = v12;
  *(v13 + 1) = v11;

  v14 = v6[5];
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  swift_beginAccess();
  *&v7[v15] = v14;

  v16 = v6[4];
  v17 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  swift_beginAccess();
  *&v7[v17] = v16;

  v19 = v6[6];
  v18 = v6[7];
  v20 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  swift_beginAccess();
  *v20 = v19;
  *(v20 + 1) = v18;

  v22 = v6[8];
  v21 = v6[9];

  sub_232B3EDA0(v6);
  v23 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  swift_beginAccess();
  *v23 = v22;
  *(v23 + 1) = v21;

  return v7;
}

char *DUDocumentMessageData.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v5 = sub_232B2D120(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-v6];
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(v3) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v7, 0, 1, v8);
    v13 = sub_232B3ED3C(v7, v11);
    sub_232B3F45C(v13, v25);
    sub_232B3F440();

    sub_232B3F45C(v14, v24);
    sub_232B3F440();

    sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames], v23);
    sub_232B3F478();

    sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles], v22);
    sub_232B3F478();

    sub_232B3F45C(v15, v21);
    sub_232B3F440();

    v17 = *(v11 + 64);
    v16 = *(v11 + 72);

    sub_232B3EDA0(v11);
    v18 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
    sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath], v20);
    *v18 = v17;
    *(v18 + 1) = v16;
  }

  else
  {

    sub_232B12504(v7, 1, 1, v8);
    sub_232B267AC(v7, &qword_27DDC69A0, &qword_232CF6990);
    return 0;
  }

  return v12;
}

uint64_t sub_232B3E820(uint64_t a1)
{
  sub_232B3A01C(a1, v53);
  if (!v54)
  {
    sub_232B267AC(v53, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_49;
  }

  type metadata accessor for DUDocumentMessageData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    LOBYTE(v39) = 0;
    return v39 & 1;
  }

  v2 = v52;
  v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle, v53);
  v4 = *v3;
  v5 = v3[1];
  v6 = &v52[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  v7 = sub_232B13F74(&v52[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle], &v52);
  v9 = v6[1];
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_48;
    }

    v10 = v4 == *v6 && v5 == v9;
    if (!v10 && (sub_232B3F494(v7, v8, *v6, v9) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v9)
  {
    goto LABEL_48;
  }

  v11 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier, v51);
  v12 = *v11;
  v13 = v11[1];
  v14 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
  v15 = sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier], v50);
  v17 = v14[1];
  if (v13)
  {
    if (!v17)
    {
      goto LABEL_48;
    }

    v18 = v12 == *v14 && v13 == v17;
    if (!v18 && (sub_232B3F494(v15, v16, *v14, v17) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v17)
  {
    goto LABEL_48;
  }

  v19 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames, v49);
  v20 = *(v1 + v19);
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames], v48);
  v22 = *&v2[v21];
  if (v20)
  {
    if (!v22 || (sub_232B32DC4(v20, v22) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v22)
  {
    goto LABEL_48;
  }

  v23 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles, v47);
  v24 = *(v1 + v23);
  v25 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles], v46);
  v26 = *&v2[v25];
  if (v24)
  {
    if (!v26 || (sub_232B32DC4(v24, v26) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v26)
  {
    goto LABEL_48;
  }

  v27 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName, v45);
  v28 = *v27;
  v29 = v27[1];
  v30 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
  v31 = sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName], v44);
  v33 = v30[1];
  if (!v29)
  {
    if (!v33)
    {
      goto LABEL_39;
    }

LABEL_48:

    goto LABEL_49;
  }

  if (!v33)
  {
    goto LABEL_48;
  }

  v34 = v28 == *v30 && v29 == v33;
  if (!v34 && (sub_232B3F494(v31, v32, *v30, v33) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_39:
  v35 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath, v43);
  v36 = *v35;
  v37 = v35[1];
  v38 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
  sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath], v42);
  v39 = *(v38 + 1);
  if (!v37)
  {

    if (v39)
    {

      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v39)
  {
    if (v36 != *v38 || v37 != v39)
    {
      LOBYTE(v39) = sub_232CEA750();
      goto LABEL_46;
    }

LABEL_54:
    LOBYTE(v39) = 1;
    return v39 & 1;
  }

LABEL_46:

  return v39 & 1;
}

uint64_t sub_232B3EB74@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  v4 = sub_232B2D120(v3);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v7 = (v6 - v5);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = 0;
  v7[3] = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  v7[4] = MEMORY[0x277D84F90];
  v7[5] = v8;
  v7[6] = 0;
  v7[7] = 0xE000000000000000;
  v7[8] = 0;
  v7[9] = 0xE000000000000000;
  sub_232CE9330();
  v9 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle, v27);
  v10 = v9[1];
  if (v10)
  {
    v7[2] = *v9;
    v7[3] = v10;
  }

  v11 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier, v26);
  v12 = v11[1];
  if (v12)
  {
    *v7 = *v11;
    v7[1] = v12;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames, v25);
  v14 = *(v1 + v13);
  if (v14)
  {
    v7[5] = v14;
  }

  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles, v24);
  v16 = *(v1 + v15);
  if (v16)
  {
    v7[4] = v16;
  }

  v17 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName, v23);
  v18 = v17[1];
  if (v18)
  {
    v7[6] = *v17;
    v7[7] = v18;
  }

  v19 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath, v22);
  v20 = v19[1];
  if (v20)
  {
    v7[8] = *v19;
    v7[9] = v20;
  }

  sub_232B3ED3C(v7, a1);
}

uint64_t sub_232B3ED3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B3EDA0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentMessageData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentMessageData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B3EEF0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B3E36C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B3F3E0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B3F440()
{
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B3F45C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B3F478()
{
  *(v0 + v2) = v1;
}

uint64_t sub_232B3F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CEA750();
}

BOOL sub_232B3F4B0(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_232B3F504@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0) + 20);
  if (qword_27DDC6350 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DDC6DF0;
}

uint64_t sub_232B3F580()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F50);
  sub_232B135C4(v0, qword_27DDD4F50);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_232CF6730;
  v4 = v42 + v3 + v1[14];
  *(v42 + v3) = 1;
  *v4 = "text";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v42 + v3 + v2 + v1[14];
  *(v42 + v3 + v2) = 2;
  *v8 = "version";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v42 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "classDescriptor";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v42 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "fontSize";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v42 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "superviewClassNames";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v42 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "frameInWindow";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v42 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "absoluteOriginOnScreen";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v42 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "isOnScreen";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v42 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "isValidForContentExtraction";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v42 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frameInWindow_debugX";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v42 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "frameInWindow_debugY";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v42 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "frameInWindow_debugWidth";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  v29 = (v42 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "frameInWindow_debugHeight";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v42 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "absoluteOriginOnScreen_debugX";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v7();
  v33 = (v42 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "absoluteOriginOnScreen_debugY";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v7();
  v35 = (v42 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "superviewClassIndices";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v42 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "range";
  *(v38 + 1) = 5;
  v38[16] = 2;
  v7();
  v39 = (v42 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "styleProperties";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  return sub_232CE9600();
}

void sub_232B3FB58()
{
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
  swift_allocObject();
  sub_232B3FB98();
  qword_27DDC6DF0 = v0;
}

double sub_232B3FB98()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 64) = 0;
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_232CF76F0;
  *(v0 + 96) = xmmword_232CF76F0;
  *(v0 + 112) = 0;
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = v1;
  *(v0 + 176) = v1;
  *(v0 + 184) = v1;
  return result;
}

uint64_t sub_232B3FBE4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = xmmword_232CF76F0;
  *(v1 + 96) = xmmword_232CF76F0;
  *(v1 + 112) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 168) = v3;
  *(v1 + 176) = v3;
  *(v1 + 184) = v3;
  sub_232B13F74(a1 + 16, v67);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_232B13F5C(v1 + 16, v66);
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  sub_232B13F74(a1 + 32, v65);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_232B13F5C(v1 + 32, v64);
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;

  sub_232B13F74(a1 + 48, v63);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_232B13F5C(v1 + 48, v62);
  *(v1 + 48) = v9;
  *(v1 + 56) = v8;

  sub_232B13F74(a1 + 64, v61);
  v10 = *(a1 + 64);
  sub_232B13F5C(v1 + 64, v60);
  *(v1 + 64) = v10;
  sub_232B13F74(a1 + 72, v59);
  v11 = *(a1 + 72);
  sub_232B13F5C(v1 + 72, v58);
  *(v1 + 72) = v11;

  sub_232B13F74(a1 + 80, v57);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  sub_232B13F5C(v1 + 80, v56);
  v14 = *(v1 + 80);
  v15 = *(v1 + 88);
  *(v1 + 80) = v12;
  *(v1 + 88) = v13;
  sub_232B41B94(v12, v13);
  sub_232B41BEC(v14, v15);
  sub_232B13F74(a1 + 96, v55);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  sub_232B13F5C(v1 + 96, v54);
  *(v1 + 96) = v16;
  *(v1 + 104) = v17;
  v18 = sub_232B41C8C();
  sub_232B41B94(v18, v19);
  v20 = sub_232B37B20();
  sub_232B41BEC(v20, v21);
  sub_232B13F74(a1 + 112, v53);
  LOBYTE(v16) = *(a1 + 112);
  sub_232B13F5C(v1 + 112, v52);
  *(v1 + 112) = v16;
  sub_232B13F74(a1 + 113, v51);
  LOBYTE(v16) = *(a1 + 113);
  sub_232B13F5C(v1 + 113, v50);
  *(v1 + 113) = v16;
  sub_232B13F74(a1 + 120, v49);
  v22 = *(a1 + 120);
  sub_232B13F5C(v1 + 120, v48);
  *(v1 + 120) = v22;
  sub_232B13F74(a1 + 128, v47);
  v23 = *(a1 + 128);
  sub_232B13F5C(v1 + 128, v46);
  *(v1 + 128) = v23;
  sub_232B13F74(a1 + 136, v45);
  v24 = *(a1 + 136);
  sub_232B13F5C(v1 + 136, v44);
  *(v1 + 136) = v24;
  sub_232B13F74(a1 + 144, v43);
  v25 = *(a1 + 144);
  sub_232B13F5C(v1 + 144, v42);
  *(v1 + 144) = v25;
  sub_232B13F74(a1 + 152, v41);
  v26 = *(a1 + 152);
  sub_232B13F5C(v1 + 152, v40);
  *(v1 + 152) = v26;
  sub_232B13F74(a1 + 160, v39);
  v27 = *(a1 + 160);
  sub_232B13F5C(v1 + 160, v38);
  *(v1 + 160) = v27;
  sub_232B13F74(a1 + 168, v37);
  v28 = *(a1 + 168);
  sub_232B13F5C(v1 + 168, v36);
  *(v1 + 168) = v28;

  sub_232B13F74(a1 + 176, v35);
  v29 = *(a1 + 176);
  sub_232B13F5C(v1 + 176, v34);
  *(v1 + 176) = v29;

  sub_232B13F74(a1 + 184, v33);
  v30 = *(a1 + 184);

  sub_232B13F5C(v1 + 184, v32);
  *(v1 + 184) = v30;

  return v1;
}

void *sub_232B40014()
{

  sub_232B41BEC(*(v0 + 80), *(v0 + 88));
  sub_232B41BEC(*(v0 + 96), *(v0 + 104));

  return v0;
}

uint64_t sub_232B40074()
{
  v0 = sub_232B40014();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(uint64_t a1)
{
  result = qword_2814E1A68;
  if (!qword_2814E1A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B4013C(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B401C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    swift_allocObject();
    v10 = sub_232B3FBE4(v10);
    *(v4 + v8) = v10;
  }

  return sub_232B40268(v10, a1, a2, a3);
}

uint64_t sub_232B40268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2AB88(a2, a1, a3, a4);
        break;
      case 2:
        sub_232B2AC0C(a2, a1, a3, a4);
        break;
      case 3:
        sub_232B2AC90(a2, a1, a3, a4);
        break;
      case 4:
        sub_232B404D0(a2, a1, a3, a4);
        break;
      case 5:
        sub_232B40554(a2, a1, a3, a4);
        break;
      case 6:
        sub_232B405D8(a2, a1, a3, a4);
        break;
      case 7:
        sub_232B4065C(a2, a1, a3, a4);
        break;
      case 8:
        sub_232B406E0(a2, a1, a3, a4);
        break;
      case 9:
        sub_232B40764(a2, a1, a3, a4);
        break;
      case 10:
        sub_232B407E8(a2, a1, a3, a4);
        break;
      case 11:
        sub_232B4086C(a2, a1, a3, a4);
        break;
      case 12:
        sub_232B408F0(a2, a1, a3, a4);
        break;
      case 13:
        sub_232B40974(a2, a1, a3, a4);
        break;
      case 14:
        sub_232B409F8(a2, a1, a3, a4);
        break;
      case 15:
        sub_232B40A7C(a2, a1, a3, a4);
        break;
      case 16:
        sub_232B40B00(a2, a1, a3, a4);
        break;
      case 17:
        sub_232B40B84(a2, a1, a3, a4);
        break;
      case 18:
        sub_232B40C08(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B404D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B405D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9420();
  return swift_endAccess();
}

uint64_t sub_232B4065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9420();
  return swift_endAccess();
}

uint64_t sub_232B406E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232B40764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232B407E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B4086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B408F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B409F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B40B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9400();
  return swift_endAccess();
}

uint64_t sub_232B40B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9400();
  return swift_endAccess();
}

uint64_t sub_232B40C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B40C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  result = sub_232B40CF8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B40CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 56);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_232CE95C0();
    if (!v4)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  swift_beginAccess();
  if (*(a1 + 64) == 0.0 || (result = sub_232CE95B0(), !v4))
  {
    swift_beginAccess();
    if (*(*(a1 + 72) + 16))
    {

      sub_232CE95A0();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!sub_232B3F4B0(*(a1 + 80), *(a1 + 88)))
    {
      v13 = *(a1 + 80);
      v14 = *(a1 + 88);
      sub_232B41B94(v13, v14);
      sub_232CE9580();
      if (v4)
      {
        return sub_232B41BEC(v13, v14);
      }

      sub_232B41BEC(v13, v14);
    }

    swift_beginAccess();
    if (sub_232B3F4B0(*(a1 + 96), *(a1 + 104)) || (v15 = *(a1 + 96), v16 = *(a1 + 104), sub_232B41B94(v15, v16), sub_232CE9580(), result = sub_232B41BEC(v15, v16), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 112) != 1 || (result = sub_232CE9560(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 113) != 1 || (result = sub_232CE9560(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 120) == 0.0 || (result = sub_232CE95B0(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 128) == 0.0 || (result = sub_232CE95B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 136) == 0.0 || (result = sub_232CE95B0(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 144) == 0.0 || (result = sub_232CE95B0(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 152) == 0.0 || (result = sub_232CE95B0(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 160) == 0.0 || (result = sub_232CE95B0(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(*(a1 + 168) + 16) || (, sub_232CE9540(), result = , !v4))
                      {
                        swift_beginAccess();
                        if (!*(*(a1 + 176) + 16) || (, sub_232CE9540(), result = , !v4))
                        {
                          result = swift_beginAccess();
                          if (*(*(a1 + 184) + 16))
                          {

                            sub_232CE95A0();
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
  }

  return result;
}

uint64_t sub_232B412A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {

    v5 = sub_232B41C8C();
    v7 = sub_232B4138C(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B41C44(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B4138C(uint64_t a1, uint64_t a2)
{
  sub_232B13F74(a1 + 16, v81);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_232B13F74(a2 + 16, v80);
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_232B41C8C(), (sub_232CEA750())) && ((sub_232B13F74(a1 + 32, v79), v7 = *(a1 + 32), v8 = *(a1 + 40), sub_232B13F74(a2 + 32, v78), v7 == *(a2 + 32)) ? (v9 = v8 == *(a2 + 40)) : (v9 = 0), (v9 || (sub_232B41C8C(), (sub_232CEA750())) && ((sub_232B13F74(a1 + 48, v77), v10 = *(a1 + 48), v11 = *(a1 + 56), sub_232B13F74(a2 + 48, v76), v10 == *(a2 + 48)) ? (v12 = v11 == *(a2 + 56)) : (v12 = 0), (v12 || (sub_232B41C8C(), (sub_232CEA750())) && (sub_232B13F74(a1 + 64, v75), v13 = *(a1 + 64), sub_232B13F74(a2 + 64, v74), v13 == *(a2 + 64)) && (sub_232B13F74(a1 + 72, v73), v14 = *(a1 + 72), sub_232B13F74(a2 + 72, v72), (sub_232B32DC4(v14, *(a2 + 72))))))
  {
    sub_232B13F74(a1 + 80, v71);
    sub_232B13F74(a2 + 80, v70);

    v15 = sub_232B41C8C();
    sub_232B41B94(v15, v16);
    v17 = sub_232B37B20();
    sub_232B41B94(v17, v18);
    v19 = sub_232B41C8C();
    v20 = MEMORY[0x2383909F0](v19);
    v21 = sub_232B37B20();
    sub_232B41BEC(v21, v22);
    v23 = sub_232B41C8C();
    sub_232B41BEC(v23, v24);
    if (v20 & 1) != 0 && (sub_232B13F74(a1 + 96, v69), sub_232B13F74(a2 + 96, v68), v25 = sub_232B41C8C(), sub_232B41B94(v25, v26), v27 = sub_232B37B20(), sub_232B41B94(v27, v28), v29 = sub_232B41C8C(), v30 = MEMORY[0x2383909F0](v29), v31 = sub_232B37B20(), sub_232B41BEC(v31, v32), v33 = sub_232B41C8C(), sub_232B41BEC(v33, v34), (v30) && (sub_232B13F74(a1 + 112, v67), v35 = *(a1 + 112), sub_232B13F74(a2 + 112, v66), v35 == *(a2 + 112)) && (sub_232B13F74(a1 + 113, v65), v36 = *(a1 + 113), sub_232B13F74(a2 + 113, v64), v36 == *(a2 + 113)) && (sub_232B13F74(a1 + 120, v63), v37 = *(a1 + 120), sub_232B13F74(a2 + 120, v62), v37 == *(a2 + 120)) && (sub_232B13F74(a1 + 128, v61), v38 = *(a1 + 128), sub_232B13F74(a2 + 128, v60), v38 == *(a2 + 128)) && (sub_232B13F74(a1 + 136, v59), v39 = *(a1 + 136), sub_232B13F74(a2 + 136, v58), v39 == *(a2 + 136)) && (sub_232B13F74(a1 + 144, v57), v40 = *(a1 + 144), sub_232B13F74(a2 + 144, v56), v40 == *(a2 + 144)) && (sub_232B13F74(a1 + 152, v55), v41 = *(a1 + 152), sub_232B13F74(a2 + 152, v54), v41 == *(a2 + 152)) && (sub_232B13F74(a1 + 160, v53), v42 = *(a1 + 160), sub_232B13F74(a2 + 160, v52), v42 == *(a2 + 160)) && (sub_232B13F74(a1 + 168, v51), sub_232B13F74(a2 + 168, v50), (sub_232B34EB4()) && (sub_232B13F74(a1 + 176, v49), sub_232B13F74(a2 + 176, v48), (sub_232B34EB4()))
    {
      sub_232B13F74(a1 + 184, v47);
      v43 = *(a1 + 184);
      sub_232B13F74(a2 + 184, &v46);
      v44 = sub_232B32DC4(v43, *(a2 + 184));
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  return v44 & 1;
}

uint64_t sub_232B41788()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  sub_232B41C44(&qword_27DDC6E00, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF7808);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B41860(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B41C44(&unk_27DDC6E10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF7898);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B418DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6348 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B41984(uint64_t a1)
{
  v2 = sub_232B41C44(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF78D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B419F4(uint64_t a1, uint64_t a2)
{
  sub_232B41C44(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement, &unk_232CF78D0);

  return sub_232CE9500();
}

uint64_t sub_232B41B94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_232B41BEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_232B41C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_232B41D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_232CE9D20();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_232B41DC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B41E58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_232B41F10(uint64_t *a1)
{
  v2 = sub_232B459B0(*a1);
  sub_232B13F74(v2, v3);
  v4 = *v1;

  return v4;
}

float sub_232B41FE8()
{
  v1 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  sub_232B13F74(v1, v2);
  return *v0;
}

uint64_t sub_232B42044(float a1)
{
  v3 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  result = sub_232B13F5C(v3, v4);
  *v1 = a1;
  return result;
}

double sub_232B421C8()
{
  v1 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  sub_232B13F74(v1, v2);
  return *v0;
}

uint64_t sub_232B42228(double a1, double a2, double a3, double a4)
{
  v9 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  result = sub_232B13F5C(v9, v10);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_232B42284(uint64_t a1@<X8>)
{
  *a1 = sub_232B421C8();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_232B42350()
{
  v1 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  sub_232B13F74(v1, v2);
  return *v0;
}

uint64_t sub_232B423AC(double a1, double a2)
{
  v5 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  result = sub_232B13F5C(v5, v6);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_232B42490()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen, v3);
  return *(v0 + v1);
}

uint64_t sub_232B424F4(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232B425B0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction, v3);
  return *(v0 + v1);
}

uint64_t sub_232B42614(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction, v5);
  *(v1 + v3) = a1;
  return result;
}

id sub_232B426C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (a3())
  {
    v4 = sub_232CE9FD0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_232B42758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    v7 = sub_232CE9FE0();
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  a5(v7);
}

uint64_t static DUDocumentUIElement.supportsSecureCoding.setter(char a1)
{
  result = sub_232B13F5C(&byte_27DDC6E20, v3);
  byte_27DDC6E20 = a1;
  return result;
}

uint64_t sub_232B42B04@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC6E20;
  return result;
}

uint64_t sub_232B42B50(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC6E20 = v1;
  return result;
}

id DUDocumentUIElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUIElement.init()(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range] = 0;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties] = 0;
  v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen] = 0;
  v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction] = 1;
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize] = -1082130432;
  v5 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  v7 = type metadata accessor for DUDocumentUIElement();
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_232B42D00(void *a1)
{
  type metadata accessor for DUDocumentUIElement();
  sub_232B45A04();
  sub_232B45904(v2, v3, v4, &protocol conformance descriptor for DUDocumentUIElement);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentUIElement.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B45A04();
  sub_232B45904(v2, v3, v4, &protocol conformance descriptor for DUDocumentUIElement);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B45ABC(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B45ABC(v6);
  return v5;
}

char *sub_232B42F7C@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B44618(v5 - v4);
  v7 = sub_232B43010(v6);
  result = sub_232B124A8(&qword_27DDC6E98, &qword_232CF7950);
  a1[3] = result;
  *a1 = v7;
  return result;
}

char *sub_232B43010(uint64_t a1)
{
  v6 = sub_232CE9DA0();
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
  sub_232B4594C(a1, v12);
  v14 = *(v12 + *(v9 + 28));
  sub_232B13F74(v14 + 16, v78);
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v77);
  sub_232B35134();

  sub_232B13F74(v14 + 32, v76);
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version], v75);
  sub_232B35134();

  sub_232B13F74(v14 + 48, v74);
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor], &v73);
  sub_232B35134();

  sub_232B13F74(v14 + 64, &v72);
  *&v1 = *(v14 + 64);
  v15 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize], &v71);
  *v15 = v1;
  sub_232B13F74(v14 + 72, &v70);
  v16 = *(v14 + 72);
  v17 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], &v69);
  *&v13[v17] = v16;

  sub_232B13F74(v14 + 80, &v68);
  v18 = sub_232B45A34();
  sub_232B41B94(v18, v19);
  sub_232CE9D90();
  sub_232B45A34();
  sub_232CE9D70();
  v21 = v20;
  v22 = sub_232B45A34();
  sub_232B41BEC(v22, v23);
  if (v21)
  {
    sub_232B45A9C();
    if (v24)
    {
      v25 = sub_232CE9D20();

      CGRectFromString(v25);
      sub_232B45A88();

      v26 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
      v27 = v67;
      goto LABEL_6;
    }
  }

  sub_232B13F74(v14 + 120, v67);
  v4 = *(v14 + 120);
  sub_232B13F74(v14 + 128, &v66);
  v1 = *(v14 + 128);
  sub_232B13F74(v14 + 136, &v65);
  v2 = *(v14 + 136);
  sub_232B13F74(v14 + 144, &v64);
  v3 = *(v14 + 144);
  v26 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
  v27 = &v63;
LABEL_6:
  sub_232B13F5C(v26, v27);
  *v26 = v4;
  *(v26 + 1) = v1;
  *(v26 + 2) = v2;
  *(v26 + 3) = v3;
  sub_232B13F74(v14 + 96, &v62);
  v28 = *(v14 + 96);
  v29 = *(v14 + 104);
  sub_232B41B94(v28, v29);
  sub_232CE9D90();
  v30 = sub_232CE9D70();
  v32 = v31;
  sub_232B41BEC(v28, v29);
  if (!v32)
  {
    sub_232B44E50(a1);
LABEL_13:
    sub_232B13F74(v14 + 152, v61);
    v38 = *(v14 + 152);
    sub_232B13F74(v14 + 160, &v60);
    v39 = *(v14 + 160);
    v40 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen], &v59);
    *v40 = v38;
    *(v40 + 1) = v39;
    v41 = v13;
    goto LABEL_14;
  }

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    sub_232B44E50(a1);

    goto LABEL_13;
  }

  v34 = v13;
  v35 = sub_232CE9D20();

  v36 = CGPointFromString(v35);

  sub_232B44E50(a1);
  v37 = &v34[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  sub_232B13F5C(&v34[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen], v61);
  *v37 = v36;
LABEL_14:
  sub_232B13F74(v14 + 112, &v58);
  v42 = *(v14 + 112);
  v43 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen], &v57);
  v13[v43] = v42;
  sub_232B13F74(v14 + 113, &v56);
  v44 = *(v14 + 113);
  v45 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction], &v55);
  v13[v45] = v44;
  sub_232B13F74(v14 + 168, &v54);
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices], &v53);
  sub_232B45A40();

  sub_232B13F74(v14 + 176, &v52);
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range], &v51);
  sub_232B45A40();

  sub_232B13F74(v14 + 184, &v50);
  v46 = *(v14 + 184);

  sub_232B44E50(v12);
  v47 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties], &v49);
  *&v13[v47] = v46;

  return v13;
}

char *sub_232B43518(uint64_t a1)
{
  v3 = sub_232CE9DA0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(v1) init];
  sub_232B4594C(a1, v7);
  v9 = *&v7[*(v5 + 28)];
  swift_beginAccess();
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  swift_beginAccess();
  v14 = *(v9 + 32);
  v13 = *(v9 + 40);
  v15 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
  swift_beginAccess();
  *v15 = v14;
  *(v15 + 1) = v13;

  swift_beginAccess();
  v17 = *(v9 + 48);
  v16 = *(v9 + 56);
  v18 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
  swift_beginAccess();
  *v18 = v17;
  *(v18 + 1) = v16;

  swift_beginAccess();
  v19 = *(v9 + 64);
  v20 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
  swift_beginAccess();
  *v20 = v19;
  swift_beginAccess();
  v21 = *(v9 + 72);
  v22 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  swift_beginAccess();
  *&v8[v22] = v21;

  swift_beginAccess();
  v23 = *(v9 + 80);
  v24 = *(v9 + 88);
  sub_232B41B94(v23, v24);
  sub_232CE9D90();
  v25 = sub_232CE9D70();
  v27 = v26;
  sub_232B41BEC(v23, v24);
  if (v27)
  {
    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = sub_232CE9D20();

      v61 = CGRectFromString(v29);
      x = v61.origin.x;
      y = v61.origin.y;
      width = v61.size.width;
      height = v61.size.height;

      v34 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  x = *(v9 + 120);
  swift_beginAccess();
  y = *(v9 + 128);
  swift_beginAccess();
  width = *(v9 + 136);
  swift_beginAccess();
  height = *(v9 + 144);
  v34 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
LABEL_8:
  swift_beginAccess();
  *v34 = x;
  v34[1] = y;
  v34[2] = width;
  v34[3] = height;
  swift_beginAccess();
  v35 = *(v9 + 96);
  v36 = *(v9 + 104);
  sub_232B41B94(v35, v36);
  sub_232CE9D90();
  v37 = sub_232CE9D70();
  v39 = v38;
  sub_232B41BEC(v35, v36);
  if (!v39)
  {
    sub_232B44E50(a1);
LABEL_15:
    swift_beginAccess();
    v45 = *(v9 + 152);
    swift_beginAccess();
    v46 = *(v9 + 160);
    v47 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    swift_beginAccess();
    *v47 = v45;
    *(v47 + 1) = v46;
    v48 = v8;
    goto LABEL_16;
  }

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    sub_232B44E50(a1);

    goto LABEL_15;
  }

  v41 = v8;
  v42 = sub_232CE9D20();

  v43 = CGPointFromString(v42);

  sub_232B44E50(a1);
  v44 = &v41[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
  swift_beginAccess();
  *v44 = v43;
LABEL_16:
  swift_beginAccess();
  v49 = *(v9 + 112);
  v50 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  swift_beginAccess();
  v8[v50] = v49;
  swift_beginAccess();
  v51 = *(v9 + 113);
  v52 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  swift_beginAccess();
  v8[v52] = v51;
  swift_beginAccess();
  v53 = *(v9 + 168);
  v54 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  swift_beginAccess();
  *&v8[v54] = v53;

  swift_beginAccess();
  v55 = *(v9 + 176);
  v56 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
  swift_beginAccess();
  *&v8[v56] = v55;

  swift_beginAccess();
  v57 = *(v9 + 184);

  sub_232B44E50(v7);
  v58 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  swift_beginAccess();
  *&v8[v58] = v57;

  return v8;
}

char *DUDocumentUIElement.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v9 = sub_232CE9DA0();
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v11 = sub_232B124A8(&unk_27DDC6EA0, &unk_232CF7958);
  v12 = sub_232B2D120(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v68 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v17 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v20 = v19 - v18;
  v21 = [objc_allocWithZone(v2) init];
  v22 = sub_232B45AB0();
  v23(v22);
  if (swift_dynamicCast())
  {
    v68[1] = a1;
    sub_232B12504(v14, 0, 1, v17);
    sub_232B44DEC(v14, v20);
    v24 = *(v17 + 20);
    v69 = v20;
    v25 = *(v20 + v24);
    sub_232B13F74(v25 + 16, v99);
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v98);
    sub_232B45A6C();

    sub_232B13F74(v25 + 32, v97);
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version], v96);
    sub_232B45A6C();

    sub_232B13F74(v25 + 48, v95);
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor], &v94);
    sub_232B45A6C();

    sub_232B13F74(v25 + 64, &v93);
    *&v3 = *(v25 + 64);
    v26 = &v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize], &v92);
    *v26 = v3;
    sub_232B13F74(v25 + 72, &v91);
    v27 = *(v25 + 72);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], &v90);
    *&v21[v28] = v27;

    sub_232B13F74(v25 + 80, &v89);
    v29 = sub_232B45AB0();
    sub_232B41B94(v29, v30);
    sub_232CE9D90();
    sub_232B45AB0();
    v31 = sub_232CE9D70();
    v33 = v32;
    v34 = sub_232B45AB0();
    sub_232B41BEC(v34, v35);
    if (v33)
    {
      v36 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v36 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        v37 = sub_232CE9D20();

        CGRectFromString(v37);
        sub_232B45A88();

        v38 = &v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
        v39 = v88;
        goto LABEL_10;
      }
    }

    sub_232B13F74(v25 + 120, v88);
    v6 = *(v25 + 120);
    sub_232B13F74(v25 + 128, &v87);
    v3 = *(v25 + 128);
    sub_232B13F74(v25 + 136, &v86);
    v4 = *(v25 + 136);
    sub_232B13F74(v25 + 144, &v85);
    v5 = *(v25 + 144);
    v38 = &v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
    v39 = &v84;
LABEL_10:
    sub_232B13F5C(v38, v39);
    *v38 = v6;
    *(v38 + 1) = v3;
    *(v38 + 2) = v4;
    *(v38 + 3) = v5;
    sub_232B13F74(v25 + 96, &v83);
    v40 = sub_232B45A34();
    sub_232B41B94(v40, v41);
    sub_232CE9D90();
    sub_232B45A34();
    sub_232CE9D70();
    v43 = v42;
    v44 = sub_232B45A34();
    sub_232B41BEC(v44, v45);
    if (v43)
    {
      sub_232B45A9C();
      if (v46)
      {
        v47 = v21;
        v48 = sub_232CE9D20();

        v49 = CGPointFromString(v48);

        v50 = sub_232B45A5C();
        v51(v50);
        v52 = &v47[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
        sub_232B13F5C(&v47[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen], v82);
        *v52 = v49;
LABEL_16:
        sub_232B13F74(v25 + 112, &v79);
        v61 = *(v25 + 112);
        v62 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
        sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen], &v78);
        v21[v62] = v61;
        sub_232B13F74(v25 + 113, &v77);
        v63 = *(v25 + 113);
        v64 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
        sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction], &v76);
        v21[v64] = v63;
        sub_232B13F74(v25 + 168, &v75);
        sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices], &v74);
        sub_232B45A40();

        sub_232B13F74(v25 + 176, &v73);
        sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range], &v72);
        sub_232B45A40();

        sub_232B13F74(v25 + 184, &v71);
        v65 = *(v25 + 184);

        sub_232B44E50(v69);
        v66 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
        sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties], &v70);
        *&v21[v66] = v65;

        return v21;
      }

      v55 = sub_232B45A5C();
      v56(v55);
    }

    else
    {
      v53 = sub_232B45A5C();
      v54(v53);
    }

    sub_232B13F74(v25 + 152, v82);
    v57 = *(v25 + 152);
    sub_232B13F74(v25 + 160, &v81);
    v58 = *(v25 + 160);
    v59 = &v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
    sub_232B13F5C(&v21[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen], &v80);
    *v59 = v57;
    *(v59 + 1) = v58;
    v60 = v21;
    goto LABEL_16;
  }

  (*(v15 + 8))(a1, a2);

  sub_232B12504(v14, 1, 1, v17);
  sub_232B267AC(v14, &unk_27DDC6EA0, &unk_232CF7958);
  return 0;
}

uint64_t sub_232B4425C(uint64_t a1)
{
  sub_232B3A01C(a1, v73);
  if (v74)
  {
    type metadata accessor for DUDocumentUIElement();
    if (swift_dynamicCast())
    {
      v2 = v72;
      v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
      sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text, v73);
      v4 = *v3;
      v5 = v3[1];
      v6 = &v72[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      v7 = sub_232B13F74(&v72[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], &v72);
      v9 = v6[1];
      if (v5)
      {
        if (!v9)
        {
          goto LABEL_41;
        }

        v10 = v4 == *v6 && v5 == v9;
        if (!v10 && (sub_232B3F494(v7, v8, *v6, v9) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v9)
      {
        goto LABEL_41;
      }

      v11 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version);
      sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version, v71);
      v12 = *v11;
      v13 = v11[1];
      v14 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version];
      v15 = sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version], v70);
      v17 = v14[1];
      if (v13)
      {
        if (!v17)
        {
          goto LABEL_41;
        }

        v18 = v12 == *v14 && v13 == v17;
        if (!v18 && (sub_232B3F494(v15, v16, *v14, v17) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (v17)
      {
        goto LABEL_41;
      }

      v19 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor);
      sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor, v69);
      v20 = *v19;
      v21 = v19[1];
      v22 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor];
      v23 = sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor], v68);
      v25 = v22[1];
      if (v21)
      {
        if (!v25)
        {
          goto LABEL_41;
        }

        if (v20 != *v22 || v21 != v25)
        {
          v23 = sub_232B3F494(v23, v24, *v22, v25);
          if ((v23 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else if (v25)
      {
        goto LABEL_41;
      }

      v27 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
      v28 = sub_232B459E8(v23, v67);
      v29 = *v27;
      v30 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize];
      sub_232B459E8(v28, v66);
      if (v29 == *v30)
      {
        v31 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
        sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames, v65);
        v32 = *(v1 + v31);
        v33 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
        v34 = sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames], v64);
        v35 = *&v2[v33];
        if (v32)
        {
          if (!v35)
          {
            goto LABEL_41;
          }

          v34 = sub_232B32DC4(v32, v35);
          if ((v34 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_37:
          v36 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
          v37 = sub_232B459E8(v34, v63);
          v38 = *v36;
          v39 = v36[1];
          v40 = v36[2];
          v41 = v36[3];
          v42 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow];
          sub_232B459E8(v37, v62);
          v75.origin.x = v38;
          v75.origin.y = v39;
          v75.size.width = v40;
          v75.size.height = v41;
          v43 = CGRectEqualToRect(v75, *v42);
          if (v43)
          {
            v44 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
            v45 = sub_232B459E8(v43, v61);
            v47 = *v44;
            v46 = v44[1];
            v48 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen];
            sub_232B459E8(v45, v60);
            if (v47 == *v48 && v46 == v48[1])
            {
              v49 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
              sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen, v59);
              LODWORD(v49) = *(v1 + v49);
              v50 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
              sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen], v58);
              if (v49 == v2[v50])
              {
                v53 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
                sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction, v57);
                v54 = *(v1 + v53);
                v55 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
                sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction], v56);
                LOBYTE(v55) = v2[v55];

                v51 = v54 ^ v55 ^ 1;
                return v51 & 1;
              }
            }
          }

          goto LABEL_41;
        }

        if (!v35)
        {
          goto LABEL_37;
        }
      }

LABEL_41:
    }
  }

  else
  {
    sub_232B267AC(v73, &qword_27DDC68C8, &qword_232CF6210);
  }

  v51 = 0;
  return v51 & 1;
}

uint64_t sub_232B44618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v125 = sub_232CE9DA0();
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  sub_232B20704();
  v124 = v5 - v4;
  sub_232CE9330();
  v6 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0) + 20);
  if (qword_27DDC6350 != -1)
  {
    swift_once();
  }

  *(a1 + v6) = qword_27DDC6DF0;
  v7 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text, v157);
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v12);
      v13 = sub_232B459C0();
      sub_232B459DC(v13);
    }

    sub_232B13F5C(v11 + 16, &v128);
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
  }

  else
  {
  }

  v14 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_version, v156);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + v6);
    if ((v17 & 1) == 0)
    {
      v19 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v19);
      v20 = sub_232B459C0();
      sub_232B459DC(v20);
    }

    sub_232B13F5C(v18 + 32, &v129);
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
  }

  v21 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_classDescriptor, v155);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + v6);
    if ((v24 & 1) == 0)
    {
      v26 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v26);
      v27 = sub_232B459C0();
      sub_232B459DC(v27);
    }

    sub_232B13F5C(v25 + 48, &v130);
    *(v25 + 48) = v23;
    *(v25 + 56) = v22;
  }

  v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames, v154);
  v29 = *(v2 + v28);
  if (v29)
  {

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v6);
    if ((v30 & 1) == 0)
    {
      v32 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v32);
      v33 = sub_232B459C0();
      sub_232B459DC(v33);
    }

    sub_232B13F5C(v31 + 72, &v131);
    *(v31 + 72) = v29;
  }

  v34 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_fontSize, v153);
  v35 = *v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a1 + v6);
  if ((v36 & 1) == 0)
  {
    v38 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v38);
    v39 = sub_232B459C0();
    sub_232B459DC(v39);
  }

  sub_232B13F5C(v37 + 64, v152);
  *(v37 + 64) = v35;
  v126 = v2;
  v40 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_frameInWindow, &v151);
  v41 = NSStringFromCGRect(*v40);
  sub_232CE9D50();

  sub_232CE9D90();
  v42 = sub_232CE9D60();
  v44 = v43;

  v45 = *(v127 + 8);
  v45(v124, v125);
  if (v44 >> 60 != 15)
  {
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a1 + v6);
    if ((v46 & 1) == 0)
    {
      v48 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v48);
      v49 = sub_232B459C0();
      sub_232B459DC(v49);
    }

    sub_232B13F5C(v47 + 80, &v132);
    v50 = *(v47 + 80);
    v51 = *(v47 + 88);
    *(v47 + 80) = v42;
    *(v47 + 88) = v44;
    sub_232B41BEC(v50, v51);
  }

  v52 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_absoluteOriginOnScreen, &v150);
  v53 = NSStringFromCGPoint(*v52);
  sub_232CE9D50();

  sub_232CE9D90();
  v54 = sub_232CE9D60();
  v56 = v55;

  v45(v124, v125);
  if (v56 >> 60 != 15)
  {
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(a1 + v6);
    if ((v57 & 1) == 0)
    {
      v59 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v59);
      v60 = sub_232B459C0();
      sub_232B459DC(v60);
    }

    sub_232B13F5C(v58 + 96, &v133);
    v61 = *(v58 + 96);
    v62 = *(v58 + 104);
    *(v58 + 96) = v54;
    *(v58 + 104) = v56;
    sub_232B41BEC(v61, v62);
  }

  v63 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isOnScreen, &v149);
  v64 = *(v2 + v63);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *(a1 + v6);
  if ((v65 & 1) == 0)
  {
    v67 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v67);
    v68 = sub_232B459C0();
    sub_232B459DC(v68);
  }

  sub_232B13F5C(v66 + 112, &v148);
  *(v66 + 112) = v64;
  v69 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_isValidForContentExtraction, &v147);
  v70 = *(v2 + v69);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(a1 + v6);
  if ((v71 & 1) == 0)
  {
    v73 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v73);
    v74 = sub_232B459C0();
    sub_232B459DC(v74);
  }

  sub_232B13F5C(v72 + 113, &v146);
  *(v72 + 113) = v70;
  x = v40->origin.x;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(a1 + v6);
  if ((v76 & 1) == 0)
  {
    v78 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v78);
    v79 = sub_232B459C0();
    sub_232B459DC(v79);
  }

  sub_232B13F5C(v77 + 120, &v145);
  *(v77 + 120) = x;
  y = v40->origin.y;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(a1 + v6);
  if ((v81 & 1) == 0)
  {
    v83 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v83);
    v84 = sub_232B459C0();
    sub_232B459DC(v84);
  }

  sub_232B13F5C(v82 + 128, &v144);
  *(v82 + 128) = y;
  width = v40->size.width;
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *(a1 + v6);
  if ((v86 & 1) == 0)
  {
    v88 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v88);
    v89 = sub_232B459C0();
    sub_232B459DC(v89);
  }

  sub_232B13F5C(v87 + 136, &v143);
  *(v87 + 136) = width;
  height = v40->size.height;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *(a1 + v6);
  if ((v91 & 1) == 0)
  {
    v93 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v93);
    v94 = sub_232B459C0();
    sub_232B459DC(v94);
  }

  sub_232B13F5C(v92 + 144, &v142);
  *(v92 + 144) = height;
  v95 = v52->x;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(a1 + v6);
  if ((v96 & 1) == 0)
  {
    v98 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v98);
    v99 = sub_232B459C0();
    sub_232B459DC(v99);
  }

  sub_232B13F5C(v97 + 152, &v141);
  *(v97 + 152) = v95;
  v100 = v52->y;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(a1 + v6);
  if ((v101 & 1) == 0)
  {
    v103 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
    sub_232B45A1C(v103);
    v104 = sub_232B459C0();
    sub_232B459DC(v104);
  }

  sub_232B13F5C(v102 + 160, &v140);
  *(v102 + 160) = v100;
  v105 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices, &v139);
  v106 = *(v2 + v105);
  if (v106)
  {

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(a1 + v6);
    if ((v107 & 1) == 0)
    {
      v109 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v109);
      v110 = sub_232B459C0();
      sub_232B459DC(v110);
    }

    sub_232B13F5C(v108 + 168, &v134);
    *(v108 + 168) = v106;
  }

  v111 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
  sub_232B13F74(v126 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range, &v138);
  v112 = *(v126 + v111);
  if (v112)
  {

    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(a1 + v6);
    if ((v113 & 1) == 0)
    {
      v115 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v115);
      v116 = sub_232B459C0();
      sub_232B459DC(v116);
    }

    sub_232B13F5C(v114 + 176, &v135);
    *(v114 + 176) = v112;
  }

  v117 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  result = sub_232B13F74(v126 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties, &v137);
  v119 = *(v126 + v117);
  if (v119)
  {

    v120 = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(a1 + v6);
    if ((v120 & 1) == 0)
    {
      v122 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement._StorageClass();
      sub_232B45A1C(v122);
      v123 = sub_232B459C0();
      sub_232B459DC(v123);
    }

    sub_232B13F5C(v121 + 184, &v136);
    *(v121 + 184) = v119;
  }

  return result;
}

uint64_t sub_232B44DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B44E50(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDocumentUIElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUIElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B44FAC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B43518(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B45904(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B4594C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B459C0()
{

  return sub_232B3FBE4(v0);
}

uint64_t sub_232B459E8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B45A1C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232B45A40()
{
  *(v0 + v2) = v1;
}

uint64_t sub_232B45A6C()
{
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232B45ABC(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(uint64_t a1)
{
  result = qword_27DDC6F18;
  if (!qword_27DDC6F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B45B50(uint64_t a1)
{
  sub_232B45D10(319, &qword_27DDC6F28, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, MEMORY[0x277D83940]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_232CE9340();
    if (v4 <= 0x3F)
    {
      sub_232B45D10(319, &qword_27DDC6F30, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, MEMORY[0x277D83D88]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_232B21E3C(319, &qword_2814DFA10, MEMORY[0x277D837D0]);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_232B45D10(319, &qword_27DDC6F38, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, MEMORY[0x277D83D88]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_232B21E3C(319, &qword_27DDC6840, MEMORY[0x277D839F8]);
            v2 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_232B45D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232B45D74@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232CE9330();
  v3 = v2[6];
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B12504(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  result = sub_232B12504(a1 + v6, 1, 1, v7);
  v9 = (a1 + v2[9]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[10]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v2[11];
  *v11 = 0;
  v11[8] = 1;
  return result;
}

uint64_t sub_232B45E38()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F68);
  sub_232B135C4(v0, qword_27DDD4F68);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF79E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "documentBody";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "document";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "associatedFileURL";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 3;
  *v16 = "documentType";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 4;
  *v18 = "documentAttributes";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 5;
  *v20 = "updateTimestamp";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B46138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232B46218(v6, v7, v8, v9);
        break;
      case 2:
        v22 = sub_232B13EE0();
        sub_232B462CC(v22, v23, v24, v25);
        break;
      case 3:
        v14 = sub_232B13EE0();
        sub_232B46330(v14, v15, v16, v17);
        break;
      case 4:
        v18 = sub_232B13EE0();
        sub_232B46394(v18, v19, v20, v21);
        break;
      case 5:
        v10 = sub_232B13EE0();
        sub_232B46434(v10, v11, v12, v13);
        break;
      case 6:
        v26 = sub_232B13EE0();
        sub_232B46498(v26, v27, v28, v29);
        break;
      case 7:
        v30 = sub_232B13EE0();
        sub_232B464FC(v30, v31, v32, v33);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B46218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B4781C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF739C);
  return sub_232CE94C0();
}

uint64_t sub_232B46394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  sub_232B4781C(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6AEC);
  return sub_232CE94B0();
}

uint64_t sub_232B464FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B4781C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF6918);
  return sub_232CE94C0();
}

uint64_t sub_232B465B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_232B46708(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = sub_232B47864();
    sub_232B468DC(v6, v7, v8, v9);
    v10 = sub_232B47864();
    sub_232B46954(v10, v11, v12, v13);
    if (*(*v3 + 16))
    {
      type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
      sub_232B4781C(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute, &unk_232CF6AEC);
      sub_232CE95D0();
    }

    v14 = sub_232B47864();
    sub_232B469CC(v14, v15, v16, v17);
    v18 = sub_232B47864();
    sub_232B46A44(v18, v19, v20, v21);
    v22 = sub_232B47864();
    sub_232B46ABC(v22, v23, v24, v25);
    type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B46708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232B34D3C(a1 + *(v11 + 24), v7, &qword_27DDC6D18, &qword_232CF7420);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC6D18, &qword_232CF7420);
  }

  sub_232B47764(v7, v10, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B4781C(&qword_27DDC6CC8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier, &unk_232CF739C);
  sub_232CE95E0();
  return sub_232B477C4(v10, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
}

uint64_t sub_232B468DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B46954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B469CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B46A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B46ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232B34D3C(a1 + *(v11 + 32), v7, &qword_27DDC6F10, &unk_232CF8420);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC6F10, &unk_232CF8420);
  }

  sub_232B47764(v7, v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232B4781C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document, &unk_232CF6918);
  sub_232CE95E0();
  return sub_232B477C4(v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
}

uint64_t sub_232B46C90(uint64_t *a1, uint64_t *a2)
{
  v75 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v7;
  v74 = sub_232B124A8(&qword_27DDC6F68, &qword_232CF7BA0);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  v76 = &v71 - v9;
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = sub_232B124A8(&qword_27DDC6F70, &qword_232CF7BA8) - 8;
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  v77 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  v78 = a1;
  v20 = *(v77 + 24);
  v21 = *(v16 + 56);
  sub_232B34D3C(a1 + v20, v19, &qword_27DDC6D18, &qword_232CF7420);
  sub_232B34D3C(a2 + v20, &v19[v21], &qword_27DDC6D18, &qword_232CF7420);
  sub_232B478A8(v19);
  if (v22)
  {
    sub_232B478A8(&v19[v21]);
    if (v22)
    {
      sub_232B13790(v19, &qword_27DDC6D18, &qword_232CF7420);
      goto LABEL_14;
    }

LABEL_9:
    v23 = &qword_27DDC6F70;
    v24 = &qword_232CF7BA8;
    v25 = v19;
LABEL_10:
    sub_232B13790(v25, v23, v24);
    goto LABEL_11;
  }

  sub_232B34D3C(v19, v15, &qword_27DDC6D18, &qword_232CF7420);
  sub_232B478A8(&v19[v21]);
  if (v22)
  {
    sub_232B477C4(v15, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    goto LABEL_9;
  }

  sub_232B47764(&v19[v21], v12, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  v28 = sub_232B3AD78(v15, v12);
  sub_232B477C4(v12, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B477C4(v15, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
  sub_232B13790(v19, &qword_27DDC6D18, &qword_232CF7420);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = v77;
  v29 = v78;
  v31 = *(v77 + 28);
  v32 = *(a2 + v31 + 8);
  if (*(v78 + v31 + 8))
  {
    v33 = v76;
    if (!v32)
    {
      goto LABEL_11;
    }

    sub_232B2DF50(v78 + v31);
    v36 = v22 && v34 == v35;
    if (!v36 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v33 = v76;
    if (v32)
    {
      goto LABEL_11;
    }
  }

  v37 = *(v30 + 32);
  v38 = *(v74 + 48);
  sub_232B34D3C(v29 + v37, v33, &qword_27DDC6F10, &unk_232CF8420);
  sub_232B34D3C(a2 + v37, v33 + v38, &qword_27DDC6F10, &unk_232CF8420);
  v39 = v75;
  if (sub_232B12480(v33, 1, v75) != 1)
  {
    v40 = v73;
    sub_232B34D3C(v33, v73, &qword_27DDC6F10, &unk_232CF8420);
    if (sub_232B12480(v33 + v38, 1, v39) != 1)
    {
      v41 = v33 + v38;
      v42 = v72;
      sub_232B47764(v41, v72, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v43 = *(v39 + 20);
      v44 = *(v40 + v43);
      v45 = *(v42 + v43);
      if (v44 == v45 || (, , v46 = sub_232B2C168(v44, v45), , , v46))
      {
        sub_232CE9340();
        sub_232B4787C();
        sub_232B4781C(v47, v48, MEMORY[0x277D216D0]);
        v49 = v73;
        v50 = sub_232CE9CF0();
        sub_232B477C4(v42, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        sub_232B477C4(v49, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        sub_232B13790(v33, &qword_27DDC6F10, &unk_232CF8420);
        if ((v50 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_33;
      }

      sub_232B477C4(v42, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      sub_232B477C4(v73, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v23 = &qword_27DDC6F10;
      v24 = &unk_232CF8420;
      goto LABEL_29;
    }

    sub_232B477C4(v40, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
LABEL_28:
    v23 = &qword_27DDC6F68;
    v24 = &qword_232CF7BA0;
LABEL_29:
    v25 = v33;
    goto LABEL_10;
  }

  if (sub_232B12480(v33 + v38, 1, v39) != 1)
  {
    goto LABEL_28;
  }

  sub_232B13790(v33, &qword_27DDC6F10, &unk_232CF8420);
LABEL_33:
  sub_232B47894();
  if (v53)
  {
    if (!v51)
    {
      goto LABEL_11;
    }

    sub_232B2DF50(v52);
    v56 = v22 && v54 == v55;
    if (!v56 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v51)
  {
    goto LABEL_11;
  }

  sub_232B47894();
  if (v59)
  {
    if (!v57)
    {
      goto LABEL_11;
    }

    sub_232B2DF50(v58);
    v62 = v22 && v60 == v61;
    if (!v62 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v57)
  {
    goto LABEL_11;
  }

  sub_232B32B74(*v29, *a2);
  if (v63)
  {
    v64 = *(v30 + 44);
    v65 = (v29 + v64);
    v66 = *(v29 + v64 + 8);
    v67 = (a2 + v64);
    v68 = *(a2 + v64 + 8);
    if (v66)
    {
      if (v68)
      {
LABEL_59:
        sub_232CE9340();
        sub_232B4787C();
        sub_232B4781C(v69, v70, MEMORY[0x277D216D0]);
        v26 = sub_232CE9CF0();
        return v26 & 1;
      }
    }

    else
    {
      if (*v65 != *v67)
      {
        LOBYTE(v68) = 1;
      }

      if ((v68 & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_11:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_232B47358()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232B4781C(&qword_27DDC6F50, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate, &unk_232CF7A60);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B47430(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B4781C(&qword_27DDC6F60, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate, &unk_232CF7AF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B474AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6358 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4F68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B47554(uint64_t a1)
{
  v2 = sub_232B4781C(&qword_27DDC6F48, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate, &unk_232CF7B28);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B475C4(uint64_t a1, uint64_t a2)
{
  sub_232B4781C(&qword_27DDC6F48, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate, &unk_232CF7B28);

  return sub_232CE9500();
}

uint64_t sub_232B47764(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B477C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B4781C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B478C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = sub_232B47980;

  return sub_232B9A774();
}

uint64_t sub_232B47980()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232B47A7C()
{
  v1 = v0[16];
  v2 = v0[14];
  v0[7] = v0[13];
  v0[8] = v2;
  v0[9] = 4091452;
  v0[10] = 0xE300000000000000;
  v0[11] = 10;
  v0[12] = 0xE100000000000000;
  sub_232B48080();
  v3 = sub_232CEA3B0();
  v5 = v4;
  v6 = v0[5];
  v7 = v0[6];
  sub_232B203C8(v0 + 2, v6);
  v8 = (*(v7 + 8))(v3, v5, v6, v7);

  v9 = sub_232B2040C(v0 + 2);
  v10 = v0[1];
  if (!v1)
  {
    v9 = v8;
  }

  return v10(v9);
}

uint64_t sub_232B47BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = sub_232B47C94;

  return sub_232B9E390();
}

uint64_t sub_232B47C94()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232B47D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = sub_232B47C94;

  return sub_232BE40E8();
}

uint64_t sub_232B47E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = sub_232B47C94;

  return sub_232B9E390();
}

uint64_t sub_232B47F00()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B47F90()
{
  sub_232B26C44();
  v3 = v2;
  sub_232B26C70();
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_232B48080()
{
  result = qword_2814DFA30;
  if (!qword_2814DFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA30);
  }

  return result;
}

uint64_t sub_232B480D4()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B48164()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B481F4()
{
  sub_232B482F8();
  sub_232B482AC();
  v0 = sub_232B482CC();
  v1 = sub_232B482EC(v0);
  *v1 = v2;
  v3 = sub_232B48290(v1);

  return v4(v3);
}

uint64_t sub_232B482CC()
{

  return swift_task_alloc();
}

void sub_232B48310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v42 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v1, 0);
    v3 = v42;
    v4 = sub_232BD3E90(v2);
    v6 = v5;
    v8 = v7;
    v9 = v2 + 56;
    v10 = objc_opt_self();
    v11 = v6;
    v38 = v2;
    v39 = v10;
    v12 = 0;
    v35 = v2 + 64;
    v36 = v1;
    v37 = v2 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v2 + 32))
      {
        v13 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v11)
        {
          goto LABEL_26;
        }

        v41 = v8;
        v40 = v11;
        v14 = (*(v2 + 48) + 16 * v4);
        v15 = *v14;
        v16 = v14[1];

        v17 = v3;
        MEMORY[0x238391C30](v15, v16);
        v18 = sub_232CE9D20();

        v19 = [v39 escapedPatternForString_];

        v3 = v17;
        v20 = sub_232CE9D50();
        v22 = v21;

        v24 = *(v3 + 16);
        v23 = *(v3 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_232B649F4(v23 > 1, v24 + 1, 1);
        }

        *(v3 + 16) = v24 + 1;
        v25 = v3 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        if (v41)
        {
          goto LABEL_30;
        }

        v9 = v37;
        v2 = v38;
        v26 = 1 << *(v38 + 32);
        if (v4 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v37 + 8 * v13);
        if ((v27 & (1 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v38 + 36) != v40)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v4 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v3;
          v30 = v13 << 6;
          v31 = v13 + 1;
          v32 = (v35 + 8 * v13);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_232B48E94(v4, v40, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          sub_232B48E94(v4, v40, 0);
LABEL_19:
          v3 = v29;
        }

        if (++v12 == v36)
        {
          return;
        }

        v8 = 0;
        v11 = *(v38 + 36);
        v4 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

unint64_t sub_232B485EC(char a1)
{
  result = 2038004089;
  switch(a1)
  {
    case 1:
      result = 0x2D4D4D2D79797979;
      break;
    case 2:
      result = 0x73733A6D6D3A4848;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232B48690()
{
  result = sub_232C0D410(&unk_28480D620);
  qword_27DDC6F78 = result;
  return result;
}

id sub_232B486B8()
{
  result = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  qword_27DDC6F80 = result;
  return result;
}

void sub_232B486F4(uint64_t a1, unint64_t a2)
{
  v83 = a2;
  v85 = a1;
  sub_232CE89D0();
  sub_232B48F0C();
  v77 = v3;
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  v84 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE8DD0();
  sub_232B48F0C();
  v88 = v5;
  v89 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x277D84F90];
  v9 = 10;
  sub_232B649F4(0, 10, 0);
  v10 = v91;
  v11 = objc_opt_self();
  v12 = &unk_28480D588;
  do
  {

    v13 = sub_232CE9D20();
    v14 = [v11 escapedPatternForString_];

    v15 = sub_232CE9D50();
    v17 = v16;

    v91 = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_232B649F4(v18 > 1, v19 + 1, 1);
      v10 = v91;
    }

    *(v10 + 16) = v19 + 1;
    v20 = v10 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v12 += 16;
    --v9;
  }

  while (v9);
  v91 = v10;
  v21 = sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  v22 = sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
  v76 = sub_232B48EC4();
  v24 = v23;

  v25 = sub_232CE8DC0();
  v26 = *(v25 + 16);
  if (v26)
  {
    v80 = v22;
    v81 = v21;
    v82 = v24;
    v91 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v26, 0);
    v27 = v91;
    v28 = *(v89 + 16);
    v29 = *(v89 + 80);
    v79 = v25;
    v30 = v25 + ((v29 + 32) & ~v29);
    v86 = *(v89 + 72);
    v87 = v28;
    v89 += 16;
    v31 = (v89 - 8);
    do
    {
      v32 = v88;
      v87(v8, v30, v88);
      sub_232CE8D70();
      v33 = sub_232CE9DD0();
      v35 = v34;

      (*v31)(v8, v32);
      v91 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_232B649F4(v36 > 1, v37 + 1, 1);
        v27 = v91;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v30 += v86;
      --v26;
    }

    while (v26);

    v24 = v82;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v39 = sub_232BDC7F4(v27);
  if (qword_27DDC6360 != -1)
  {
    swift_once();
  }

  v41 = sub_232C0A4F4(v40, v39);
  sub_232B48310(v41);
  v43 = v42;

  v91 = v43;
  v44 = sub_232B48EC4();
  v46 = v45;

  v91 = 40;
  v92 = 0xE100000000000000;
  MEMORY[0x238391C30](v44, v46);

  MEMORY[0x238391C30](9257, 0xE200000000000000);
  v47 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v48 = sub_232B48EA0();
  v49 = v84;
  v50 = v48;
  if (v48)
  {
    v90 = 15;
    v91 = v85;
    v92 = v83;

    v51 = sub_232B124A8(&qword_27DDC6F88, &qword_232CFA0B0);
    v52 = sub_232B48E4C(&qword_27DDC6F90, &qword_27DDC6F88, &qword_232CFA0B0, MEMORY[0x277D84338]);
    sub_232B48080();
    v88 = v52;
    v89 = v51;
    sub_232CEA320();
    v53 = sub_232CE9D20();
    v54 = sub_232CE9D20();
    v55 = sub_232B48EE8(v50, sel_stringByReplacingMatchesInString_options_range_withTemplate_);

    v56 = sub_232CE9D50();
    v58 = v57;

    v91 = v56;
    v92 = v58;
    sub_232CE89B0();
    v85 = sub_232CEA3A0();
    v59 = v24;
    v61 = v60;
    v62 = v78;
    v63 = v49;
    v64 = *(v77 + 8);
    v64(v63, v78);

    v91 = 40;
    v92 = 0xE100000000000000;
    MEMORY[0x238391C30](v76, v59);

    MEMORY[0x238391C30](9257, 0xE200000000000000);
    v65 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v66 = sub_232B48EA0();
    v67 = v66;
    v87 = v64;
    if (v66)
    {
      v90 = 15;
      v91 = v85;
      v92 = v61;

      sub_232CEA320();
      v68 = v62;
      v69 = sub_232CE9D20();

      v70 = sub_232CE9D20();
      v71 = sub_232B48EE8(v67, sel_stringByReplacingMatchesInString_options_range_withTemplate_);

      v72 = sub_232CE9D50();
      v74 = v73;

      v91 = v72;
      v92 = v74;
      v75 = v84;
      sub_232CE89B0();
      v85 = sub_232CEA3A0();

      (v87)(v75, v68);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_232B48E4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B48E94(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id sub_232B48EA0()
{

  return sub_232BA1978(v0, v1, 1);
}

uint64_t sub_232B48EC4()
{

  return sub_232CE9CD0();
}

id sub_232B48EE8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232B48F58(char a1)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a1 & 1);
  return sub_232CEA850();
}

uint64_t sub_232B48FBC(uint64_t a1)
{
  v2 = *v1;
  sub_232CEA820();
  MEMORY[0x2383925C0](v2);
  return sub_232CEA850();
}

uint64_t sub_232B49010@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931808;
  *a1 = result;
  return result;
}

id sub_232B49058()
{
  sub_232B124A8(&qword_27DDC6FD8, &qword_232CF7CD0);
  sub_232B4ACFC();
  v48 = v1;
  MEMORY[0x28223BE20](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v6;
  MEMORY[0x28223BE20](v7);
  v50 = &v46 - v8;
  v9 = sub_232CE96F0();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  v12 = "DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData";
  if (v10)
  {
    v13 = v0;
    v51 = MEMORY[0x277D84F90];
    sub_232B64A14(0, v10, 0);
    v14 = 32;
    v15 = v51;
    v0 = 2139095039;
    while (1)
    {
      v16 = *(v9 + v14);
      if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v16 <= -2147500000.0)
      {
        goto LABEL_27;
      }

      if (v16 >= 2147500000.0)
      {
        goto LABEL_28;
      }

      v51 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_232B64A14(v17 > 1, v18 + 1, 1);
        v15 = v51;
      }

      *(v15 + 16) = v18 + 1;
      *(v15 + 4 * v18 + 32) = v16;
      v14 += 4;
      if (!--v10)
      {

        v0 = v13;
        v12 = "DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData";
        v11 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_11:
  v51 = v15;
  sub_232B124A8(&qword_27DDC6FE0, &qword_232CF7CD8);
  v10 = sub_232B4AAA4(&qword_27DDC6FE8, &qword_27DDC6FE0, &qword_232CF7CD8);
  sub_232CE9A50();
  v19 = sub_232CE96A0();
  v20 = *(v19 + 16);
  if (v20)
  {
    v47 = v0;
    v51 = v11;
    sub_232B64A14(0, v20, 0);
    v0 = 32;
    v21 = v51;
    v22 = *(v12 + 784);
    while (1)
    {
      v23 = *(v19 + v0);
      if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v23 <= v22)
      {
        goto LABEL_30;
      }

      if (v23 >= 2147500000.0)
      {
        goto LABEL_31;
      }

      v51 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_232B64A14(v24 > 1, v25 + 1, 1);
        v21 = v51;
      }

      *(v21 + 16) = v25 + 1;
      *(v21 + 4 * v25 + 32) = v23;
      v0 += 4;
      if (!--v20)
      {

        v0 = v47;
        goto LABEL_21;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    sub_232B4ACC0();
    swift_once();
    v35 = sub_232CE9A30();
    sub_232B135C4(v35, qword_2814E3DA8);
    v36 = v4;
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      v41 = v4;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_232B02000, v37, v38, "Error building embedding model inputs: %@", v39, 0xCu);
      sub_232B267AC(v40, &qword_27DDC6FD0, &unk_232CFA240);
      v10 = v48;
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v43 = 0;
    goto LABEL_25;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_21:
  v51 = v21;
  v26 = v49;
  sub_232CE9A50();
  sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF5E60;
  *(inited + 32) = 0x64695F7475706E69;
  *(inited + 40) = 0xE900000000000073;
  v28 = sub_232B4AA60();
  v10 = v48;
  v29 = *(v48 + 16);
  v29(v4, v50, v0);
  *(inited + 48) = sub_232CEA200();
  sub_232B4AD3C();
  *(inited + 72) = v28;
  *(inited + 80) = v30;
  sub_232B4AD28();
  *(inited + 88) = v31;
  v29(v4, v26, v0);
  v32 = sub_232CEA200();
  *(inited + 120) = v28;
  *(inited + 96) = v32;
  v33 = sub_232CE9C60();
  v34 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v43 = sub_232C3B328(v33);
LABEL_25:
  v44 = *(v10 + 8);
  v44(v49, v0);
  v44(v50, v0);
  return v43;
}

id sub_232B49694(uint64_t a1)
{
  sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  sub_232B4ACFC();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = *a1;
  v13 = sub_232CE9D20();
  v14 = [v12 featureValueForName_];

  if (v14)
  {
    v44 = *(a1 + 8);

    sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
    v43 = v1;
    sub_232B4AAA4(&qword_27DDC6FB8, &qword_27DDC6FB0, &unk_232CF8840);
    sub_232CE9A50();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 0x676E69646F636E65;
    *(inited + 40) = 0xE800000000000000;
    v16 = sub_232B4AA60();
    *(inited + 48) = v14;
    sub_232B4AD3C();
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    sub_232B4AD28();
    *(inited + 88) = v19;
    (*(v5 + 16))(v8, v11, v2);
    v20 = v14;
    v21 = sub_232CEA200();
    *(inited + 120) = v16;
    *(inited + 96) = v21;
    v22 = sub_232CE9C60();
    v23 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v24 = v43;
    v25 = sub_232C3B328(v22);
    if (v24)
    {
      v26 = v5;
      if (qword_2814DFA50 != -1)
      {
        sub_232B4ACC0();
        swift_once();
      }

      v27 = sub_232CE9A30();
      sub_232B135C4(v27, qword_2814E3DA8);
      v28 = v24;
      v29 = sub_232CE9A00();
      v14 = sub_232CEA1C0();

      v30 = v20;
      if (os_log_type_enabled(v29, v14))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = v24;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_232B02000, v29, v14, "Error building encoding model inputs: %@", v31, 0xCu);
        sub_232B267AC(v32, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      sub_232B4AA0C();
      sub_232B4ACD4();
      swift_allocError();
      *v35 = 1;
      swift_willThrow();

      (*(v26 + 8))(v11, v2);
    }

    else
    {
      v14 = v25;
      (*(v5 + 8))(v11, v2);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232B4ACC0();
      swift_once();
    }

    v36 = sub_232CE9A30();
    sub_232B135C4(v36, qword_2814E3DA8);
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_232B02000, v37, v38, "Error extracting encoding output from backbone model", v39, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232B4AA0C();
    sub_232B4ACD4();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_232B49B7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for FeatureProviderWithMask(0);
  v2[11] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  v2[12] = swift_task_alloc();
  v3 = sub_232CE9700();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B49CA4, 0, 0);
}

uint64_t sub_232B49CA4()
{
  v1 = 0xD00000000000001ALL;
  sub_232CE9810();
  if (MEMORY[0x238391530]())
  {
    if (sub_232CE9710())
    {
      type metadata accessor for DUWordPieceTokenizerSpecification();
      v0[16] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[17] = v2;
      *v2 = v0;
      v2[1] = sub_232B49E30;
      v3 = v0[12];
      v4 = v0[8];

      return sub_232B4EE70(v3, v4);
    }

    v6 = "Backbone model is disabled";
    v1 = 0xD000000000000027;
  }

  else
  {
    v6 = "molBERToImplementation";
  }

  v7 = v6 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4ACD4();
  swift_allocError();
  *v8 = v1;
  *(v8 + 8) = v7;
  *(v8 + 16) = 0;

  v9 = sub_232B4ACE0();

  return v10(v9, 1);
}

uint64_t sub_232B49E30()
{

  return MEMORY[0x2822009F8](sub_232B49F48, 0, 0);
}

uint64_t sub_232B49F48()
{
  v2 = v0[12];
  v1 = v0[13];
  if (sub_232B12480(v2, 1, v1) == 1)
  {
    sub_232B267AC(v2, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v4 = 0xD00000000000001ALL;
    *(v4 + 8) = 0x8000000232D04380;
    *(v4 + 16) = 0;
LABEL_10:

    v21 = v0[1];

    return v21(v3, 1);
  }

  (*(v0[14] + 32))(v0[15], v2, v1);
  v5 = sub_232B49058();
  v0[18] = v5;
  if (!v5)
  {
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v16 = 0xD00000000000002ALL;
    *(v16 + 8) = 0x8000000232D043A0;
    *(v16 + 16) = 0;
    (*(v14 + 8))(v13, v15);
    goto LABEL_10;
  }

  v6 = v5;
  type metadata accessor for DUTrialAssetLoader();
  v0[19] = swift_initStackObject();
  v0[20] = sub_232C14534();
  v7 = sub_232C149A0();
  v8 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000016, 0x8000000232D04420, v7 & 1);
  v0[21] = v8;
  if (!v8)
  {
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v20 = 0xD000000000000023;
    *(v20 + 8) = 0x8000000232D04440;
    *(v20 + 16) = 1;

    (*(v18 + 8))(v17, v19);
    goto LABEL_10;
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v10 = v6;
  v11 = [v9 init];
  v0[22] = v11;
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_232B4A284;

  return MEMORY[0x282111978](v10, v11);
}

uint64_t sub_232B4A284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_232B4A5C8;
  }

  else
  {
    v5 = *(v3 + 144);

    v4 = sub_232B4A3A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232B4A3A8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  swift_unknownObjectRetain();
  v6 = sub_232CE96A0();
  sub_232B12504(v4 + *(v5 + 24), 1, 1, v3);
  *v4 = v1;
  v4[1] = v6;
  sub_232B49694(v4);
  if (v2)
  {
    sub_232B4A9B0(v0[11]);
    swift_unknownObjectRelease();
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[14];
    v22 = v0[15];
    v10 = v0[13];
    sub_232CEA4F0();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_232B4AD50();
    v0[7] = v2;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232CEA5B0();
    sub_232B4A95C();
    sub_232B4ACD4();
    v11 = swift_allocError();
    sub_232B4AD14(v11, v12);

    (*(v9 + 8))(v22, v10);
  }

  else
  {
    v13 = v0[21];
    v14 = v0[18];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[13];
    v18 = v0[11];

    swift_unknownObjectRelease();

    sub_232B4A9B0(v18);
    (*(v16 + 8))(v15, v17);
  }

  v19 = sub_232B4ACE0();

  return v20(v19, v2 != 0);
}

uint64_t sub_232B4A5C8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v12 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  sub_232B4AD50();
  *(v0 + 56) = v2;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  sub_232B4A95C();
  sub_232B4ACD4();
  v7 = swift_allocError();
  sub_232B4AD14(v7, v8);

  (*(v5 + 8))(v12, v6);

  v9 = sub_232B4ACE0();

  return v10(v9, 1);
}

uint64_t sub_232B4A79C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232B49B7C(a2);
}

uint64_t sub_232B4A838(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_232B4A95C()
{
  result = qword_2814E01C0;
  if (!qword_2814E01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E01C0);
  }

  return result;
}

uint64_t sub_232B4A9B0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureProviderWithMask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B4AA0C()
{
  result = qword_27DDC6FA8;
  if (!qword_27DDC6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FA8);
  }

  return result;
}

unint64_t sub_232B4AA60()
{
  result = qword_27DDC6FC8;
  if (!qword_27DDC6FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6FC8);
  }

  return result;
}

uint64_t sub_232B4AAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuildSmolBERToHeadInputError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BuildSmolBERToHeadInputError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232B4AC6C()
{
  result = qword_27DDC6FF0;
  if (!qword_27DDC6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FF0);
  }

  return result;
}

void sub_232B4AD14(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
}

void sub_232B4AD50()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232B4AED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories, v5);
  *(v1 + v3) = a1;
}

void *sub_232B4AFD4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232B4B06C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232B4B0BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232B4B06C(v1);
}

char *sub_232B4B13C(uint64_t a1)
{
  v62 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v57 = v4 - v3;
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  sub_232B3516C();
  v56 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v59 = v55 - v10;
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  sub_232B350D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v64 = v55 - v19;
  v58 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v23 = (v22 - v21);
  v61 = [objc_allocWithZone(type metadata accessor for DUCategoryClassificationResponse()) init];
  sub_232B4D4C4(a1, v23, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  v60 = v23;
  v24 = *v23;
  v25 = MEMORY[0x277D84F90];
  v66[0] = MEMORY[0x277D84F90];
  v26 = *(v24 + 16);
  if (v26)
  {
    v55[1] = a1;
    v27 = v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v63 = *(v13 + 72);
    do
    {
      v28 = v64;
      sub_232B4D4C4(v27, v64, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B4D4C4(v28, v17, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      v29 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
      sub_232B4D560();
      sub_232B4D470();
      v30 = v11;
      v31 = (v17 + *(v11 + 20));
      if (v31[1])
      {
        v32 = *v31;
        v33 = v31[1];
      }

      else
      {
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = &v29[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      sub_232B13F5C(&v29[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], v68);
      *v34 = v32;
      *(v34 + 1) = v33;

      v11 = v30;
      v35 = v17 + *(v30 + 24);
      v36 = *v35;
      v37 = *(v35 + 8);
      sub_232B4D560();
      sub_232B4D470();
      if (v37)
      {
        v36 = 0.0;
      }

      v38 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v39 = sub_232B13F5C(&v29[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], v67);
      *&v29[v38] = v36;
      MEMORY[0x238391D50](v39);
      if (*((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v27 += v63;
      --v26;
    }

    while (v26);
    v25 = v66[0];
  }

  v40 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  v41 = v61;
  sub_232B13F5C(&v61[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories], v66);
  *&v41[v40] = v25;

  v42 = v59;
  v43 = *(v58 + 24);
  v44 = v60;
  sub_232B21B7C(v60 + v43, v59);
  v45 = v62;
  sub_232B351B0(v42, 1, v62);
  if (v47)
  {
    sub_232B4D470();
    sub_232B13790(v42, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B4D470();
  }

  else
  {
    sub_232B13790(v42, &qword_27DDC67C8, &unk_232CF5E70);
    v46 = v56;
    sub_232B21B7C(v44 + v43, v56);
    sub_232B351B0(v46, 1, v45);
    if (v47)
    {
      v48 = v57;
      sub_232CE9330();
      v49 = (v48 + *(v45 + 20));
      *v49 = 0;
      v49[1] = 0;
      sub_232B351B0(v46, 1, v45);
      if (!v47)
      {
        sub_232B13790(v46, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232B4D578();
      sub_232B4D104(v46, v57, v50);
    }

    v51 = sub_232B4C530();
    sub_232B4D470();
    sub_232B4D470();
    v52 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
    sub_232B13F5C(&v41[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo], v65);
    v53 = *&v41[v52];
    *&v41[v52] = v51;
  }

  return v41;
}

char *sub_232B4B67C(uint64_t a1)
{
  v53 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v53);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v8;
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v45 - v14;
  v49 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  MEMORY[0x28223BE20](v49);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = [objc_allocWithZone(v1) init];
  sub_232B4D4C4(a1, v16, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  v51 = v16;
  v17 = *v16;
  v18 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  v19 = *(v17 + 16);
  if (v19)
  {
    v46 = v4;
    v47 = a1;
    v20 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v54 = *(v10 + 72);
    do
    {
      v21 = v55;
      sub_232B4D4C4(v20, v55, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B4D4C4(v21, v12, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      v22 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
      sub_232B4D470();
      v23 = &v12[*(v9 + 20)];
      if (*(v23 + 1))
      {
        v24 = *v23;
        v25 = *(v23 + 1);
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      swift_beginAccess();
      *v26 = v24;
      *(v26 + 1) = v25;

      v27 = &v12[*(v9 + 24)];
      v28 = *v27;
      v29 = v27[8];
      sub_232B4D470();
      if (v29)
      {
        v28 = 0.0;
      }

      v30 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v31 = swift_beginAccess();
      *&v22[v30] = v28;
      MEMORY[0x238391D50](v31);
      if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v20 += v54;
      --v19;
    }

    while (v19);
    v18 = v56[0];
    v4 = v46;
  }

  v32 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  v33 = v52;
  swift_beginAccess();
  *&v33[v32] = v18;

  v34 = v50;
  v35 = *(v49 + 24);
  v36 = v51;
  sub_232B21B7C(v51 + v35, v50);
  v37 = v53;
  if (sub_232B12480(v34, 1, v53) == 1)
  {
    sub_232B4D470();
    sub_232B13790(v34, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B4D470();
  }

  else
  {
    sub_232B13790(v34, &qword_27DDC67C8, &unk_232CF5E70);
    v38 = v36 + v35;
    v39 = v48;
    sub_232B21B7C(v38, v48);
    if (sub_232B12480(v39, 1, v37) == 1)
    {
      sub_232CE9330();
      v40 = &v4[*(v37 + 20)];
      *v40 = 0;
      *(v40 + 1) = 0;
      if (sub_232B12480(v39, 1, v37) != 1)
      {
        sub_232B13790(v39, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232B4D104(v39, v4, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    }

    v41 = sub_232B4C530();
    sub_232B4D470();
    sub_232B4D470();
    v42 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
    swift_beginAccess();
    v43 = *&v33[v42];
    *&v33[v42] = v41;
  }

  return v33;
}

char *DUCategoryClassificationResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v77 = v8 - v7;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v79 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v70 - v14;
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  sub_232B350D8();
  v81 = v16;
  v82 = v15;
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v24 = sub_232B2D120(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  sub_232B350D8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_232B20704();
  v32 = v31 - v30;
  v33 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v34);
  sub_232B20704();
  v37 = (v36 - v35);
  v38 = v3;
  v39 = a1;
  v40 = [objc_allocWithZone(v38) init];
  (*(v28 + 16))(v32, v39, a2);
  if (swift_dynamicCast())
  {
    v74 = v28;
    v75 = v40;
    v76 = a2;
    v73 = v33;
    sub_232B12504(v26, 0, 1, v33);
    sub_232B4D104(v26, v37, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
    v41 = *v37;
    v42 = MEMORY[0x277D84F90];
    v84[0] = MEMORY[0x277D84F90];
    v43 = *(v41 + 16);
    if (v43)
    {
      v71 = v37;
      v72 = v39;
      v44 = v41 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v81 = *(v81 + 72);
      do
      {
        sub_232B4D4C4(v44, v22, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
        sub_232B4D4C4(v22, v19, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
        v45 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
        sub_232B4D560();
        sub_232B4D470();
        v46 = (v19 + *(v82 + 20));
        if (v46[1])
        {
          v47 = *v46;
          v48 = v46[1];
        }

        else
        {
          v47 = 0;
          v48 = 0xE000000000000000;
        }

        v49 = &v45[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
        sub_232B13F5C(&v45[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], v86);
        *v49 = v47;
        *(v49 + 1) = v48;

        v50 = v19 + *(v82 + 24);
        v51 = *v50;
        LODWORD(v49) = *(v50 + 8);
        sub_232B4D560();
        sub_232B4D470();
        if (v49)
        {
          v51 = 0.0;
        }

        v52 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
        v53 = sub_232B13F5C(&v45[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], v85);
        *&v45[v52] = v51;
        MEMORY[0x238391D50](v53);
        if (*((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v44 += v81;
        --v43;
      }

      while (v43);
      v42 = v84[0];
      v39 = v72;
      v37 = v71;
    }

    v55 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
    v54 = v75;
    sub_232B13F5C(&v75[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories], v84);
    *&v54[v55] = v42;

    v56 = *(v73 + 24);
    v57 = v78;
    sub_232B21B7C(v37 + v56, v78);
    v58 = v80;
    sub_232B351B0(v57, 1, v80);
    v59 = v76;
    v60 = v79;
    v61 = v74;
    if (v62)
    {
      (*(v74 + 8))(v39, v76);
      sub_232B13790(v57, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232B4D5E8();
    }

    else
    {
      sub_232B13790(v57, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232B21B7C(v37 + v56, v60);
      sub_232B351B0(v60, 1, v58);
      if (v62)
      {
        v63 = v77;
        sub_232CE9330();
        v64 = (v63 + *(v58 + 20));
        *v64 = 0;
        v64[1] = 0;
        sub_232B351B0(v60, 1, v58);
        if (!v62)
        {
          sub_232B13790(v60, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232B4D578();
        sub_232B4D104(v60, v77, v65);
      }

      v66 = sub_232B4C530();
      (*(v61 + 8))(v39, v59);
      sub_232B4D5E8();
      v67 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
      sub_232B13F5C(&v54[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo], v83);
      v68 = *&v54[v67];
      *&v54[v67] = v66;
    }
  }

  else
  {
    (*(v28 + 8))(v39, a2);

    sub_232B12504(v26, 1, 1, v33);
    sub_232B13790(v26, &qword_27DDC7008, &unk_232CFBAB0);
    return 0;
  }

  return v54;
}

char *sub_232B4C2DC()
{
  sub_232B4D640();
  v1 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  v3 = (v0 + *(v2 + 20));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  sub_232B13F5C(&v1[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], v13);
  *v6 = v4;
  *(v6 + 1) = v5;

  v7 = v0 + *(v2 + 24);
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_232B4D560();
  sub_232B4D470();
  if (v9)
  {
    v8 = 0.0;
  }

  v10 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F5C(&v1[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], &v12);
  *&v1[v10] = v8;
  return v1;
}

char *sub_232B4C3E8()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v5 = v4 - v3;
  v6 = [objc_allocWithZone(v0) init];
  v7 = sub_232B4D590();
  sub_232B4D104(v7, v5, v8);
  v9 = (v5 + *(v1 + 20));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  sub_232B13F5C(&v6[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], v19);
  *v12 = v10;
  *(v12 + 1) = v11;

  v13 = v5 + *(v1 + 24);
  v14 = *v13;
  v15 = *(v13 + 8);
  sub_232B4D560();
  sub_232B4D470();
  if (v15)
  {
    v14 = 0.0;
  }

  v16 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F5C(&v6[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], v18);
  *&v6[v16] = v14;
  return v6;
}

char *sub_232B4C530()
{
  v1 = sub_232B4D640();
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v1);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(type metadata accessor for DUDebugInfo()) init];
  sub_232B4D578();
  sub_232B4D104(v0, v6, v8);
  v9 = (v6 + *(v3 + 28));
  v11 = *v9;
  v10 = v9[1];

  sub_232B4D5C4();
  sub_232B4D470();
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString], v15);
  *v13 = v11;
  *(v13 + 1) = v12;

  return v7;
}

char *sub_232B4C624()
{
  v2 = sub_232B4D640();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v2);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v7 = v6 - v5;
  v8 = [objc_allocWithZone(v1) init];
  sub_232B4D578();
  sub_232B4D104(v0, v7, v9);
  v10 = (v7 + *(v4 + 28));
  v12 = *v10;
  v11 = v10[1];

  sub_232B4D5C4();
  sub_232B4D470();
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString], v16);
  *v14 = v12;
  *(v14 + 1) = v13;

  return v8;
}

id sub_232B4C714@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0) - 8;
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v7 = v6 - v5;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  v44 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v44 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  *a1 = MEMORY[0x277D84F90];
  v22 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232CE9330();
  v23 = *(v22 + 24);
  v45 = a1;
  sub_232B4D66C(a1 + v23, 1);
  v24 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (!v25)
  {
    sub_232B4D66C(v11, 1);
    goto LABEL_5;
  }

  v26 = v25;
  sub_232B55A40(v18);

  v27 = swift_dynamicCast();
  sub_232B4D66C(v11, v27 ^ 1u);
  sub_232B351B0(v11, 1, v12);
  if (v28)
  {
LABEL_5:
    sub_232B13790(v11, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232B4D104(v11, v21, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  v29 = v44;
  sub_232B4D104(v21, v44, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  v30 = v45;
  sub_232B13790(v45 + v23, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232B4D104(v29, v30 + v23, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B4D66C(v30 + v23, 0);
LABEL_6:
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  swift_beginAccess();
  v32 = *(v2 + v31);
  v33 = sub_232B26B10();

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v35)
    {

      *v45 = v36;
      return result;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383922C0](v35, v32);
    }

    else
    {
      if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      result = *(v32 + 8 * v35 + 32);
    }

    v37 = result;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    sub_232B519F8(v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B3673C();
      v36 = v42;
    }

    v38 = *(v36 + 16);
    if (v38 >= *(v36 + 24) >> 1)
    {
      sub_232B3673C();
      v36 = v43;
    }

    *(v36 + 16) = v38 + 1;
    v39 = sub_232B4D590();
    result = sub_232B4D104(v39, v40, v41);
    ++v35;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_232B4CB04@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B4C714((v5 - v4));
  v7 = sub_232B4B13C(v6);
  result = sub_232B124A8(&qword_27DDC7010, &qword_232CF7DF0);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B4CBF8(void *a1)
{
  type metadata accessor for DUCategoryClassificationResponse();
  sub_232B4D5AC();
  sub_232B4D3B8(v2, v3, v4, &protocol conformance descriptor for DUCategoryClassificationResponse);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUCategoryClassificationResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B4D5AC();
  sub_232B4D3B8(v2, v3, v4, &protocol conformance descriptor for DUCategoryClassificationResponse);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B4D64C(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B4D64C(v6);
  return v5;
}

id DUCategoryClassificationResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUCategoryClassificationResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryClassificationResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUCategoryClassificationResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryClassificationResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B4CFC4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B4B67C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B4CFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C();
  if (v4)
  {
    v5 = sub_232B4D628();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v5;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C();
  if (v4)
  {
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v5;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C();
  if (v4)
  {
    v5 = sub_232B4D628();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v5;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D104(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B4D3B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B4D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C();
  if (v4)
  {
    v5 = swift_unknownObjectRetain();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v5;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D470()
{
  v1 = sub_232B4D640();
  v2(v1);
  sub_232B13F24();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_232B4D4C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232B4D5E8()
{

  return sub_232B4D470();
}

void sub_232B4D610()
{

  JUMPOUT(0x2383922C0);
}

id sub_232B4D628()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_232B4D64C(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B4D66C(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

void *sub_232B4D684()
{
  sub_232B124A8(&qword_27DDC7028, &qword_232CF7EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF7E80;
  *(inited + 32) = 0x74656B636974;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_232C0D410(&unk_28480CEB0);
  *(inited + 56) = 0x74706965636572;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_232C0D410(&unk_28480CF10);
  *(inited + 80) = 0x6D726F46786174;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_232C0D410(&unk_28480CF50);
  *(inited + 104) = 1836216166;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_232C0D410(&unk_28480CFB0);
  strcpy((inited + 128), "identification");
  *(inited + 143) = -18;
  *(inited + 144) = sub_232C0D410(&unk_28480D000);
  *(inited + 152) = 1802465122;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = sub_232C0D410(&unk_28480D040);
  *(inited + 176) = 0x657069636572;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = sub_232C0D410(&unk_28480D0A0);
  *(inited + 200) = 0x6C61636964656DLL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = sub_232C0D410(&unk_28480D110);
  sub_232B124A8(&qword_27DDC7030, &qword_232CF7EE8);
  result = sub_232CE9C60();
  off_27DDC7020 = result;
  return result;
}

uint64_t sub_232B4D840@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUCategoryClassificationSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2819318B8;
  *a1 = result;
  return result;
}

uint64_t sub_232B4D8A8()
{
  v1 = *(v0[12] + 24);
  if (!v1)
  {
    v32 = 0x8000000232D04650;
    sub_232B4A95C();
    v33 = swift_allocError();
    v35 = 0xD000000000000015;
LABEL_27:
    *v34 = v35;
    *(v34 + 8) = v32;
    *(v34 + 16) = 0;
    v36 = 1;
    goto LABEL_28;
  }

  sub_232B5821C();
  if (!v2)
  {
    v32 = 0x8000000232D04670;
    sub_232B4A95C();
    v33 = swift_allocError();
    v35 = 0xD000000000000017;
    goto LABEL_27;
  }

  v47 = MEMORY[0x277D84F90];
  v45 = sub_232CE9DD0();
  v46 = v3;
  v39 = v1;

  if (qword_27DDC6370 != -1)
  {
LABEL_33:
    swift_once();
  }

  v4 = off_27DDC7020 + 64;
  sub_232B4DD98();
  v7 = v6 & v5;
  v9 = (63 - v8) >> 6;
  v43 = v10;

  v11 = 0;
  v40 = MEMORY[0x277D84F90];
  v42 = v4;
LABEL_5:
  v12 = v11;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v11 = v12;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v43 + 48) + 16 * v14);
    v16 = v15[1];
    v41 = *v15;
    v17 = *(*(v43 + 56) + 8 * v14);
    sub_232B4DD98();
    v20 = v19 & v18;
    v22 = (63 - v21) >> 6;
    swift_bridgeObjectRetain_n();
    v44 = v16;

    v23 = 0;
    while (v20)
    {
      v24 = v23;
LABEL_17:
      v25 = (*(v17 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v20)))));
      v27 = *v25;
      v26 = v25[1];
      v20 &= v20 - 1;
      v0[8] = v45;
      v0[9] = v46;
      v0[10] = v27;
      v0[11] = v26;
      sub_232B48080();
      if (sub_232CEA3F0())
      {

        v28 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
        v29 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
        swift_beginAccess();
        *v29 = v41;
        *(v29 + 1) = v44;

        v30 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
        v31 = swift_beginAccess();
        *&v28[v30] = 0x3FF0000000000000;
        MEMORY[0x238391D50](v31);
        v4 = v42;
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v40 = v47;
        goto LABEL_5;
      }
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v24 >= v22)
      {
        break;
      }

      v20 = *(v17 + 56 + 8 * v24);
      ++v23;
      if (v20)
      {
        v23 = v24;
        goto LABEL_17;
      }
    }

    v12 = v11;
    v4 = v42;
  }

  while (v7);
  while (1)
  {
LABEL_7:
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_32;
    }

    if (v11 >= v9)
    {
      break;
    }

    v7 = *&v4[8 * v11];
    ++v12;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  v36 = 0;
  v33 = v40;
LABEL_28:
  v37 = v0[1];

  return v37(v33, v36);
}
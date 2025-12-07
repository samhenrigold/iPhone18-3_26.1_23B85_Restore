uint64_t sub_232B4DD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232B4D888(a2);
}

uint64_t sub_232B4DDB4(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v3 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = (a1 + 36);
      v7 = 1;
      v8 = v4;
      do
      {
        v9 = *v6++;
        v10 = v9;
        if (v8 < v9)
        {
          v5 = v7;
          v4 = v10;
          v8 = v10;
        }

        ++v7;
      }

      while (v3 != v7);
      if (v5 == 4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v11 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
    if (v5 > 9)
    {
      __break(1u);
    }

    else
    {
      v12 = v11;
      v13 = &unk_28480D190 + 16 * v5;
      v15 = *(v13 + 4);
      v14 = *(v13 + 5);
      v16 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      swift_beginAccess();
      *v16 = v15;
      *(v16 + 1) = v14;

      v17 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v18 = swift_beginAccess();
      *&v12[v17] = v4;
      MEMORY[0x238391D50](v18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_12:
        sub_232CEA020();
        return v19;
      }
    }

    sub_232CEA000();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_232B4DF48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B4DFE4, 0, 0);
}

uint64_t sub_232B4DFE4()
{
  v1 = 0xD000000000000023;
  sub_232CE9810();
  if (MEMORY[0x238391580]())
  {
    if (sub_232CE9710())
    {
      type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
      v0[11] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[12] = v2;
      *v2 = v0;
      v2[1] = sub_232B4E154;
      v3 = v0[8];

      return sub_232B4EC3C(v3);
    }

    v5 = "Backbone model is disabled";
    v1 = 0xD000000000000027;
  }

  else
  {
    v5 = "ationSmolBERToImplementation";
  }

  v6 = v5 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v7 = v1;
  *(v7 + 8) = v6;
  *(v7 + 16) = 0;

  v8 = sub_232B4ACE0();

  return v9(v8, 1);
}

uint64_t sub_232B4E154()
{
  sub_232B482C0();
  *v2 = v1;
  v3 = *v0;
  sub_232B482C0();
  *v4 = v3;
  *(v6 + 104) = v5;

  return MEMORY[0x2822009F8](sub_232B4E26C, 0, 0);
}

uint64_t sub_232B4E26C()
{
  v1 = v0[13];
  if (v1)
  {
    type metadata accessor for DUTrialAssetLoader();
    v0[14] = swift_initStackObject();
    v0[15] = sub_232C14534();
    v2 = sub_232C149A0();
    v3 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000015, 0x8000000232D04740, v2 & 1);
    v0[16] = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v5 = v1;
      v6 = [v4 init];
      v0[17] = v6;
      v7 = swift_task_alloc();
      v0[18] = v7;
      *v7 = v0;
      v7[1] = sub_232B4E4A0;

      return MEMORY[0x282111978](v5, v6);
    }

    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v10 = 0xD000000000000022;
    *(v10 + 8) = 0x8000000232D04760;
    *(v10 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v9 = 0xD00000000000002BLL;
    *(v9 + 8) = 0x8000000232D04710;
    *(v9 + 16) = 0;
  }

  v11 = v0[1];

  return v11(v8, 1);
}

uint64_t sub_232B4E4A0()
{
  v2 = *v1;
  sub_232B482C0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  if (v0)
  {
    v5 = sub_232B4E828;
  }

  else
  {
    v6 = *(v2 + 104);

    v5 = sub_232B4E5C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232B4E5C0()
{
  v1 = v0[19];
  v2 = sub_232CE9D20();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v0[10];
  sub_232CEA1F0();

  v5 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v6 = sub_232B12480(v4, 1, v5);
  v7 = v0[10];
  if (v6 == 1)
  {
    sub_232B4EB58(v0[10]);
LABEL_4:
    v8 = v0[16];
    v9 = v0[13];
    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v10 = 0xD000000000000029;
    *(v10 + 8) = 0x8000000232D047C0;
    *(v10 + 16) = 0;

    swift_unknownObjectRelease();

    v11 = 1;
    goto LABEL_8;
  }

  sub_232B4EBC0();
  v12 = sub_232CE9A80();
  (*(*(v5 - 8) + 8))(v7, v5);
  v13 = sub_232B4DDB4(v12);

  v14 = v0[16];
  v15 = v0[13];
  if (v13)
  {
    swift_unknownObjectRelease();

    v11 = 0;
  }

  else
  {
    sub_232B4A95C();
    sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v16 = 0xD000000000000042;
    *(v16 + 8) = 0x8000000232D047F0;
    v11 = 1;
    *(v16 + 16) = 1;

    swift_unknownObjectRelease();
  }

LABEL_8:

  v17 = sub_232B4ACE0();

  return v18(v17, v11);
}

uint64_t sub_232B4E828()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238391C30](0xD00000000000002ALL, 0x8000000232D04790);
  *(v0 + 56) = v1;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_232B4A95C();
  sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
  *v6 = v4;
  *(v6 + 8) = v5;
  *(v6 + 16) = 1;

  v7 = sub_232B4ACE0();

  return v8(v7, 1);
}

uint64_t sub_232B4E99C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4EA38;

  return sub_232B4DF48(a2);
}

uint64_t sub_232B4EA38(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;
  sub_232B482C0();
  *v7 = v6;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_232B4EB58(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B4EBC0()
{
  result = qword_27DDC7040;
  if (!qword_27DDC7040)
  {
    sub_232B27EEC(&qword_27DDC6FA0, &unk_232CF7CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7040);
  }

  return result;
}

uint64_t sub_232B4EC24(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_232B4EC3C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4EC50()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  sub_232B51348(v0, &off_281931808);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4ECF8()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4EDDC()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    v2 = sub_232B51274();
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B4EE70(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return sub_232B512BC();
}

uint64_t sub_232B4EE88()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUWordPieceTokenizerSpecification();
  sub_232B51348(v0, &off_281932858);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4EF30()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4F014()
{
  sub_232B26C7C();
  sub_232B512CC();
  v2 = *(v0 + 168);
  if (v1)
  {
    sub_232B5120C(v0 + 96);
    v3 = sub_232CE9700();
    v4 = v2;
    v5 = 1;
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v6 = sub_232CE9700();
    v5 = swift_dynamicCast() ^ 1;
    v4 = v2;
    v3 = v6;
  }

  sub_232B12504(v4, v5, 1, v3);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_232B4F0F8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F10C()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  sub_232B51348(v0, &off_281931E60);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F1B4()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4F298()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    v2 = type metadata accessor for DUDocument();
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B4F32C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F340()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventDDSpecification();
  sub_232B51348(v0, &off_281931D88);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F3E8()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4F4CC()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC7070, &qword_232CF8048);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B4F570(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F584()
{
  sub_232B26C7C();
  v2 = type metadata accessor for DUConcatenatedDocumentTextSpecification();
  sub_232B51348(v2, &off_281931930);

  v3 = swift_task_alloc();
  *(v1 + 200) = v3;
  *v3 = v1;
  v3[1] = sub_232B4F648;

  return sub_232BEEB30(v1 + 56, v0);
}

uint64_t sub_232B4F648()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4F72C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C((v0 + 12));
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    if (swift_dynamicCast())
    {
      v2 = v0[21];
      v3 = v0[22];
      goto LABEL_6;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_232B4F7DC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F7F0()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  sub_232B51348(v0, &off_281931E10);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F898()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4F97C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F990()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUPosTaggingSpecification();
  sub_232B51348(v0, &off_2814E0E20);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FA38()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4FB1C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC7050, &qword_232CF8000);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B4FBC0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4FBD4()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  sub_232B51348(v0, &off_281932770);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FC7C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4FD60()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC7060, &qword_232CF8020);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B4FE04(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4FE18()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUPoemSpecification();
  sub_232B51348(v0, &off_2814E11E8);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FEC0()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B4FFA4()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC6AF0, &qword_232CF6E70);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B50048(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B5005C()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventSpecification();
  sub_232B51348(v0, &off_281932028);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50104()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B501E8()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    v2 = type metadata accessor for DUFoundInEventResult();
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B5027C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B50290()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DULanguageTaggingSpecification();
  sub_232B51348(v0, &off_281932220);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50338()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B5041C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B504C0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B504D4()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUStructuredExtractionSpecification();
  sub_232B51348(v0, &off_281932528);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B5057C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B50660()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC7058, &qword_232CF8010);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B50704(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_232B50724, 0, 0);
}

uint64_t sub_232B50724()
{
  sub_232B26C7C();
  v0 = type metadata accessor for DUCategoryClassificationSpecification();
  sub_232B51348(v0, &off_2819318B8);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B507CC()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B508B0()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v2 = sub_232B124A8(&qword_27DDC7048, &qword_232CF7FC0);
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B50954(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B50968()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventClassificationSpecification();
  sub_232B51348(v0, &off_281931D38);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50A10()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  sub_232B2040C((v2 + 16));
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232B50AF4()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    v2 = type metadata accessor for DUFoundInEventClassificationResult();
    sub_232B51314(v2);
    sub_232B51380();
  }

  sub_232B51374();

  return v3();
}

uint64_t sub_232B50BE8()
{
  sub_232B26C7C();
  v2 = v1;
  *(v0 + 184) = v3;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_232B50C94;

  return sub_232B50704(v2);
}

uint64_t sub_232B50C94()
{
  sub_232B26C44();
  sub_232B26C70();
  *(v1 + 200) = v0;

  v2 = sub_232B5138C();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_232B50D84()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[23];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DUCategoryClassificationResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
      swift_beginAccess();
      v11 = *(v9 + v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
    swift_beginAccess();
    *&v7[v12] = v11;

    v13 = *(v2 + v3);
    if (v13)
    {
      swift_beginAccess();
      v14 = v13;
      sub_232C5E4A4(v1);
      swift_endAccess();
    }

    else
    {
    }

    v15 = *(v2 + v3);
    if (v15)
    {
      v16 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
      swift_beginAccess();
      v17 = *&v15[v16];
      if (v17)
      {
        v18 = v15;
        v19 = v17;
        v20 = v17;
      }

      else
      {
        v21 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v22 = v15;
        v20 = [v21 init];
        v19 = *&v15[v16];
      }

      *&v15[v16] = v20;
      v23 = v17;

      v24 = *(v2 + v3);
      if (v24)
      {
        v25 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
        swift_beginAccess();
        v26 = *(v24 + v25);
        if (v26)
        {
          swift_beginAccess();
          v27 = v26;
          MEMORY[0x238391C30](0xD00000000000001DLL, 0x8000000232D04890);
          swift_endAccess();
        }
      }
    }
  }

  v28 = v0[1];

  return v28();
}

id sub_232B5100C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 256;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232B51068()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232B51110;

  return sub_232B50BE8();
}

uint64_t sub_232B51110()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232B5120C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B51274()
{
  result = qword_27DDC7068;
  if (!qword_27DDC7068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7068);
  }

  return result;
}

__n128 sub_232B512CC()
{
  *(v0 + 128) = *(v0 + 88);
  result = *(v0 + 56);
  v2 = *(v0 + 72);
  *(v0 + 96) = result;
  *(v0 + 112) = v2;
  return result;
}

__n128 sub_232B51300()
{
  *(v0 + 136) = *(v0 + 56);
  result = *(v0 + 72);
  *(v0 + 152) = result;
  return result;
}

uint64_t sub_232B51314(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_232B51348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[5] = result;
  v3[6] = a2;
  v3[2] = v2;
  return result;
}

char *DUCategoryResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7078, &qword_232CF8060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  MEMORY[0x28223BE20](v7);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v6, 0, 1, v7);
    sub_232B515F4(v6, v3);
    v9 = (v3 + *(v7 + 20));
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

    v12 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
    sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], v19);
    *v12 = v10;
    *(v12 + 1) = v11;

    v13 = v3 + *(v7 + 24);
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_232B51658(v3);
    if (v15)
    {
      v14 = 0.0;
    }

    v16 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
    sub_232B13F5C(&v8[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], v18);
    *&v8[v16] = v14;
  }

  else
  {

    sub_232B12504(v6, 1, 1, v7);
    sub_232B5158C(v6);
    return 0;
  }

  return v8;
}

uint64_t sub_232B5158C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7078, &qword_232CF8060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B515F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B51658(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUCategoryResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232B51734()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_232B517F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F5C(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B5184C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B517F4(v1, v2);
}

double sub_232B51900()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence, v3);
  return *(v0 + v1);
}

uint64_t sub_232B51960(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232B519F8@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  v5 = (a2 + *(v4 + 20));
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + *(v4 + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier, v13);
  v8 = *v7;
  v9 = v7[1];
  *v5 = v8;
  v5[1] = v9;
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence, &v12);
  *v6 = *(v2 + v10);
  *(v6 + 8) = 0;
}

char *sub_232B51A9C@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232B519F8(v1);
  v4 = sub_232B4C2DC();
  result = sub_232B124A8(&qword_27DDC7090, &qword_232CF8068);
  a1[3] = result;
  *a1 = v4;
  return result;
}

void sub_232B51B8C(void *a1)
{
  type metadata accessor for DUCategoryResult();
  sub_232B521B0();
  sub_232B52168(v2, v3, v4, &protocol conformance descriptor for DUCategoryResult);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUCategoryResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B521B0();
  sub_232B52168(v2, v3, v4, &protocol conformance descriptor for DUCategoryResult);
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

id DUCategoryResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUCategoryResult();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUCategoryResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B51F2C@<X0>(char **a1@<X8>)
{
  result = sub_232B4C3E8();
  *a1 = result;
  return result;
}

uint64_t sub_232B52168(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B521E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUConcatenatedDocumentTextSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931930;
  *a1 = result;
  return result;
}

uint64_t sub_232B52248()
{
  v1 = *(*(v0 + 40) + 24);
  if (v1)
  {
    v2 = sub_232B586E8();
    if (v2)
    {
      v3 = v2;
      result = sub_232B26B10();
      if (result)
      {
        v5 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v24 = v1;
        v6 = v1;
        for (i = 0; i != v5; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x2383922C0](i, v3);
          }

          else
          {
            v8 = *(v3 + 8 * i + 32);
          }

          v9 = v8;
          v10 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
          swift_beginAccess();
          v11 = *(v10 + 1);
          if (v11)
          {
            v12 = *v10;

            MEMORY[0x238391C30](10, 0xE100000000000000);
            MEMORY[0x238391C30](v12, v11);
          }
        }

        v13 = 0;
        v14 = 0xE000000000000000;
        v1 = v24;
        goto LABEL_17;
      }

      v17 = v1;
    }

    else
    {
      v16 = v1;
    }

    v13 = 0;
    v14 = 0xE000000000000000;
LABEL_17:
    sub_232B526F4();
    if (v18)
    {
    }

    else
    {
      sub_232B580E8();
      if (v19)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      sub_232B58168();
      if (v20)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      sub_232B5821C();
      if (v21)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      v13 = 0;
      v14 = 0xE000000000000000;

      sub_232B526F4();
      if (!v22)
      {

        v13 = 0;
        v14 = 0xE000000000000000;
      }
    }

    goto LABEL_27;
  }

  sub_232B4A95C();
  v13 = swift_allocError();
  v14 = 0;
  *v15 = 0xD000000000000015;
  *(v15 + 8) = 0x8000000232D04650;
  *(v15 + 16) = 0;
LABEL_27:
  v23 = *(v0 + 8);

  return v23(v13, v14, v1 == 0);
}

uint64_t sub_232B524F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B5258C;

  return sub_232B52228(a2);
}

uint64_t sub_232B5258C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  v8 = *(v10 + 8);

  return v8();
}

void sub_232B526B4()
{

  JUMPOUT(0x238391C30);
}

void sub_232B526D8()
{

  JUMPOUT(0x238391C30);
}

void sub_232B52768(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v205 = a2;
  v227 = *MEMORY[0x277D85DE8];
  v5 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v191[-v7];
  v9 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v208 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v191[-v13];
  v15 = type metadata accessor for CalendarEvent(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v213 = (v18 - v17);
  sub_232B554F0();
  v19 = sub_232CE8AE0();
  sub_232B48F0C();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v23);
  sub_232B55558();
  v220 = v24;
  sub_232B554F0();
  v216 = sub_232CE8F00();
  sub_232B48F0C();
  v214 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v191[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v30);
  sub_232B55558();
  v207 = v31;
  sub_232B554F0();
  sub_232CE8E90();
  sub_232B48F0C();
  v211 = v33;
  v212 = v32;
  MEMORY[0x28223BE20](v32);
  sub_232B20704();
  v218 = v35 - v34;
  sub_232B554F0();
  v221 = sub_232CE8D10();
  sub_232B48F0C();
  v219 = v36;
  MEMORY[0x28223BE20](v37);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v38);
  sub_232B20628();
  v210 = v39;
  MEMORY[0x28223BE20](v40);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v41);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v42);
  v44 = &v191[-v43];
  MEMORY[0x28223BE20](v45);
  sub_232B55558();
  v222 = v46;
  v47 = objc_allocWithZone(MEMORY[0x277CC5668]);
  v217 = a1;
  v48 = [v47 initWithDDScannerResult_];
  if (v48)
  {
    v49 = v48;
    v193 = v8;
    v50 = [v48 startDate];
    if (v50)
    {
      v51 = v50;
      v202 = v21;
      v209 = v19;
      v198 = v14;
      sub_232CE8CF0();

      v52 = *(v219 + 32);
      v53 = v221;
      v195 = v219 + 32;
      v194 = v52;
      v52(v222, v44, v221);
      v54 = v217;
      v55 = [v217 type];
      v56 = sub_232CE9D50();
      v58 = v57;

      sub_232B53BDC(v54);
      v60 = v59;
      if (!*MEMORY[0x277D04198])
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      sub_232CE9D50();
      sub_232B5557C();
      v63 = v63 && v58 == v62;
      if (v63)
      {
        goto LABEL_26;
      }

      sub_232B553E0(v61);
      sub_232B555E0();
      if (v55)
      {
LABEL_9:
        v204 = 1;
        goto LABEL_28;
      }

      if (!*MEMORY[0x277D040B0])
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      sub_232CE9D50();
      sub_232B5557C();
      if (v63 && v58 == v70)
      {
        goto LABEL_26;
      }

      sub_232B553E0(v69);
      sub_232B555E0();
      if (v55)
      {
        goto LABEL_9;
      }

      if (!*MEMORY[0x277D04190])
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        return;
      }

      sub_232CE9D50();
      sub_232B5557C();
      if (v63 && v58 == v73)
      {
LABEL_26:
        v204 = 1;
      }

      else
      {
        v204 = sub_232B553E0(v72);
      }

LABEL_28:
      if (*MEMORY[0x277D040A8])
      {
        sub_232CE9D50();
        sub_232B5557C();
        v77 = v63 && v58 == v76;
        v199 = v60;
        v196 = a3;
        v203 = v15;
        v215 = v49;
        v197 = v28;
        if (v77)
        {
          goto LABEL_48;
        }

        sub_232B553E0(v75);
        sub_232B555E0();
        if (v55)
        {
          goto LABEL_49;
        }

        if (*MEMORY[0x277D040B0])
        {
          sub_232CE9D50();
          sub_232B5557C();
          if (!v63 || v58 != v79)
          {
            sub_232B553E0(v78);
            sub_232B555E0();
            if ((v55 & 1) == 0)
            {
              if (*MEMORY[0x277D040A0])
              {
                if (v56 != sub_232CE9D50() || v58 != v81)
                {
                  v83 = sub_232CEA750();

                  if ((v83 & 1) == 0)
                  {
                    if ((v204 & 1) == 0)
                    {
                      (*(v219 + 8))(v222, v53);

                      sub_232B55484();
                      sub_232B12504(v188, v189, v190, v15);
LABEL_86:
                      sub_232B20A00();
                      return;
                    }

                    v192 = 0;
                    goto LABEL_52;
                  }

LABEL_50:
                  if ((v204 & 1) == 0)
                  {
                    v192 = 1;
                    v223 = MEMORY[0x277D84FA0];
LABEL_54:
                    v94 = v209;
                    v225 = 0x65626D754E796144;
                    v226 = 0xE900000000000072;
                    MEMORY[0x28223BE20](v84);
                    sub_232B55380();
                    v95 = &v225;
                    *(v96 - 16) = &v225;
                    v97 = sub_232C0A5F8();
                    if (v97 || (v98 = 0x6D754E68746E6F4DLL, v225 = 0x6D754E68746E6F4DLL, v226 = 0xEB00000000726562, MEMORY[0x28223BE20](v97), sub_232B55380(), *(v99 - 16) = &v225, v97 = sub_232C0A5F8()) || (sub_232B55390(), MEMORY[0x28223BE20](v100), sub_232B55380(), *(v101 - 16) = &v225, v97 = sub_232C0A5F8()))
                    {
                      v225 = 0x65626D754E796144;
                      v226 = 0xE900000000000072;
                      MEMORY[0x28223BE20](v97);
                      sub_232B55380();
                      *(v102 - 16) = &v225;
                      v103 = sub_232C0A5F8();
                      if (v103)
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v104 = sub_232CE8E80();
                        sub_232B48F0C();
                        v106 = v105;
                        v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
                        v108 = swift_allocObject();
                        *(v108 + 16) = xmmword_232CF6460;
                        (*(v106 + 104))(v108 + v107, *MEMORY[0x277CC9968], v104);
                        v103 = sub_232C0A394(v108, v223);
                        v223 = v103;
                      }

                      v225 = 0x6D754E68746E6F4DLL;
                      v226 = 0xEB00000000726562;
                      MEMORY[0x28223BE20](v103);
                      sub_232B55380();
                      *(v109 - 16) = &v225;
                      if (sub_232B555A0())
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v110 = sub_232CE8E80();
                        sub_232B48F0C();
                        v112 = v111;
                        v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
                        v114 = swift_allocObject();
                        *(v114 + 16) = xmmword_232CF6460;
                        (*(v112 + 104))(v114 + v113, *MEMORY[0x277CC9998], v110);
                        v223 = sub_232C0A394(v114, v223);
                      }

                      sub_232B55390();
                      MEMORY[0x28223BE20](v115);
                      sub_232B55380();
                      *(v116 - 16) = &v225;
                      if (sub_232B555A0())
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v117 = sub_232CE8E80();
                        sub_232B48F0C();
                        v119 = v118;
                        sub_232B55564();
                        v120 = swift_allocObject();
                        *(v120 + 16) = xmmword_232CF6460;
                        (*(v119 + 104))(&v225 + v120, *MEMORY[0x277CC9988], v117);
                        v223 = sub_232C0A394(v120, v223);
                      }

                      v94 = v209;
                      sub_232B55390();
                      MEMORY[0x28223BE20](v121);
                      sub_232B55380();
                      *(v122 - 16) = &v225;
                      v123 = sub_232B555A0();
                      if (v123 && (v225 = 0x6D754E68746E6F4DLL, v226 = 0xEB00000000726562, MEMORY[0x28223BE20](v123), sub_232B55380(), *(v124 - 16) = &v225, v125 = sub_232B555A0()))
                      {
                        v225 = 0x65626D754E796144;
                        v226 = 0xE900000000000072;
                        MEMORY[0x28223BE20](v125);
                        sub_232B55380();
                        *(v126 - 16) = &v225;
                        v127 = sub_232B555A0();
                      }

                      else
                      {

                        v127 = 0;
                      }

                      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                      sub_232B5139C();
                      v95 = sub_232CE8E80();
                      sub_232B48F0C();
                      v129 = v128;
                      sub_232B55564();
                      v130 = swift_allocObject();
                      *(v130 + 16) = xmmword_232CF6460;
                      v131 = *(v129 + 104);
                      v98 = v129 + 104;
                      v131(&v225 + v130, *MEMORY[0x277CC9988], v95);
                      v223 = sub_232C0A394(v130, v223);
                      sub_232B55518();
                    }

                    else
                    {

                      if (v192)
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        sub_232B5139C();
                        v176 = sub_232CE8E80();
                        sub_232B48F0C();
                        v178 = v177;
                        v180 = *(v179 + 72);
                        v181 = (*(v177 + 80) + 32) & ~*(v177 + 80);
                        v182 = swift_allocObject();
                        *(v182 + 16) = xmmword_232CF8180;
                        v95 = (v182 + v181);
                        v183 = *(v178 + 104);
                        v98 = v178 + 104;
                        v183(v95, *MEMORY[0x277CC9988], v176);
                        v183((v95 + v180), *MEMORY[0x277CC9998], v176);
                        v183((v95 + 2 * v180), *MEMORY[0x277CC9968], v176);
                        v223 = sub_232C0A394(v182, v223);
                      }

                      v127 = 0;
                      sub_232B55518();
                    }

                    sub_232CE8E50();
                    v132 = [v215 startTimeZone];
                    if (v132)
                    {
                      v133 = v132;
                      v134 = v206;
                      sub_232CE8EE0();

                      v135 = v214;
                      v136 = v207;
                      v137 = v134;
                      v138 = v216;
                      (*(v214 + 32))(v207, v137, v216);
                      (*(v135 + 16))(v197, v136, v138);
                      sub_232CE8E70();
                      (*(v135 + 8))(v136, v138);
                    }

                    sub_232CE8E20();
                    if (!v127)
                    {
                      v139 = v197;
                      sub_232CE8E60();
                      v140 = sub_232CE8ED0();
                      v141 = *(v214 + 8);
                      v142 = v216;
                      v141(v139, v216);
                      v224 = 0;
                      v95 = sub_232CE8CD0();
                      sub_232CE8E60();
                      v143 = sub_232CE8ED0();
                      v141(v139, v142);
                      v225 = v140;
                      v144 = [v217 dateFromReferenceDate:v95 referenceTimezone:v143 timezoneRef:&v225 allDayRef:&v224];

                      v94 = v209;
                      v145 = v225;

                      v98 = v221;
                      if (v144)
                      {
                        sub_232CE8CF0();

                        v146 = v200;
                        sub_232B555B8();
                        v147();
                        v148 = v201;
                        sub_232CE8E20();
                        (*(v219 + 8))(v146, v98);
                        v98 = v202;
                        v149 = v220;
                        (*(v202 + 8))(v220, v94);
                        (*(v98 + 32))(v149, v148, v94);
                      }

                      sub_232B55518();
                    }

                    v150 = v203;
                    v151 = v202;
                    v152 = v213;
                    (*(v202 + 16))(&v213[*(v203 + 20)], v98, v94);
                    v153 = *(v150 + 24);
                    sub_232B55484();
                    sub_232B12504(v154, v155, v156, v94);
                    *v152 = (v204 & 1) == 0;
                    sub_232B55484();
                    sub_232B12504(v157, v158, v159, v94);
                    v160 = v94;
                    v161 = v215;
                    v162 = [v215 endDate];
                    if (v162)
                    {
                      v163 = v162;
                      sub_232CE8CF0();

                      v164 = v210;
                      v165 = v221;
                      sub_232B555B8();
                      v166();
                      v167 = v208;
                      v168 = v218;
                      sub_232CE8E20();

                      sub_232B351FC();
                      sub_232B12504(v169, v170, v171, v160);
                      sub_232B55134(v167, v95);
                      if (!sub_232B12480(v95, 1, v160))
                      {
                        v172 = [v215 endTimeZone];
                        if (v172)
                        {
                          v173 = v172;
                          v174 = v193;
                          sub_232CE8EE0();

                          v175 = 0;
                        }

                        else
                        {
                          v175 = 1;
                          v174 = v193;
                        }

                        sub_232B12504(v174, v175, 1, v216);
                        sub_232CE8AD0();
                        v164 = v210;
                      }

                      v184 = *(v219 + 8);
                      v184(v164, v165);
                      (*(v202 + 8))(v220, v160);
                      (*(v211 + 8))(v168, v212);
                      v184(v222, v165);
                      sub_232B552D0(v95, &v152[v153]);
                    }

                    else
                    {

                      (*(v151 + 8))(v98, v160);
                      (*(v211 + 8))(v218, v212);
                      (*(v219 + 8))(v222, v221);
                    }

                    sub_232B5521C(v152, v196);
                    sub_232B351FC();
                    sub_232B12504(v185, v186, v187, v203);
                    sub_232B13790(v95, &qword_27DDC70B0, &unk_232CF81C0);
                    sub_232B55278(v152, type metadata accessor for CalendarEvent);
                    goto LABEL_86;
                  }

                  v192 = 1;
LABEL_52:
                  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                  v85 = sub_232CE8E80();
                  sub_232B48F0C();
                  v87 = v86;
                  v89 = *(v88 + 72);
                  v90 = (*(v86 + 80) + 32) & ~*(v86 + 80);
                  v91 = swift_allocObject();
                  *(v91 + 16) = xmmword_232CF8180;
                  v92 = v91 + v90;
                  v93 = *(v87 + 104);
                  v93(v92, *MEMORY[0x277CC9980], v85);
                  v93(v92 + v89, *MEMORY[0x277CC99A0], v85);
                  v93(v92 + 2 * v89, *MEMORY[0x277CC99A8], v85);
                  v84 = sub_232C0D110(v91);
                  v223 = v84;
                  goto LABEL_54;
                }

                goto LABEL_48;
              }

              goto LABEL_94;
            }

LABEL_49:

            goto LABEL_50;
          }

LABEL_48:

          goto LABEL_49;
        }

        goto LABEL_92;
      }

      goto LABEL_90;
    }
  }

  sub_232B55484();
  sub_232B20A00();

  sub_232B12504(v64, v65, v66, v67);
}

void sub_232B53BDC(void *a1)
{
  v1 = sub_232C0D76C(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = sub_232B26B10();
  if (!v3)
  {
LABEL_24:

    return;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](v5, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 type];
    v10 = sub_232CE9D50();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B35ECC();
      v6 = v23;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_232B35ECC();
      v6 = v24;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    v15 = sub_232B53BDC();
    v16 = *(v15 + 16);
    v17 = *(v6 + 16);
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v18 = v15;
    v19 = *(v6 + 24) >> 1;
    if (v19 < v17 + v16)
    {
      sub_232B35ECC();
      v6 = v25;
      v17 = *(v25 + 16);
      v19 = *(v25 + 24) >> 1;
      if (*(v18 + 16))
      {
LABEL_15:
        if (v19 - v17 < v16)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v6 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_28;
          }

          *(v6 + 16) = v22;
        }

        goto LABEL_21;
      }
    }

    else if (v16)
    {
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_26;
    }

LABEL_21:
    ++v5;

    if (v4 == v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_232B53E08(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC5698]) initWithDDScannerResult_];
  if (v1)
  {
    v2 = v1;
    sub_232C0D6D4(v1);
    v3 = MEMORY[0x277D84F98];
    if (v4)
    {

      sub_232C0D6D4(v2);
      if (v5)
      {
        v6 = sub_232B554AC();
        sub_232B553B8(v6);
        v3 = v106;
      }

      else
      {
        sub_232B20540();
        if (v7)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v8 = sub_232B55464();
          sub_232B554C8(v8, v9, v10, v11, v12, v13, v14, v15, v105, v106);
          sub_232B55444(v16, v17, v18, v19);
          sub_232B551A4(v20, v21, v22, v23);
          sub_232B55490();
        }
      }
    }

    sub_232C0D6E0(v2);
    if (v24)
    {

      sub_232C0D6E0(v2);
      if (v25)
      {
        v26 = sub_232B554AC();
        sub_232B553B8(v26);
        v3 = v106;
      }

      else
      {
        sub_232B20540();
        if (v27)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v28 = sub_232B55464();
          sub_232B554C8(v28, v29, v30, v31, v32, v33, v34, v35, v105, v106);
          sub_232B55444(v36, v37, v38, v39);
          sub_232B551A4(v40, v41, v42, v43);
          sub_232B55490();
        }
      }
    }

    sub_232C0D6EC(v2);
    if (v44)
    {

      sub_232C0D6EC(v2);
      if (v45)
      {
        v46 = sub_232B554AC();
        sub_232B553B8(v46);
        v3 = v106;
      }

      else
      {
        sub_232B20540();
        if (v47)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v48 = sub_232B55464();
          sub_232B554C8(v48, v49, v50, v51, v52, v53, v54, v55, v105, v106);
          sub_232B55444(v56, v57, v58, v59);
          sub_232B551A4(v60, v61, v62, v63);
          sub_232B55490();
        }
      }
    }

    sub_232C0D6F8(v2);
    if (v64)
    {

      sub_232C0D6F8(v2);
      if (v65)
      {
        v66 = sub_232B554AC();
        sub_232B553B8(v66);
        v3 = v106;
      }

      else
      {
        sub_232B20540();
        if (v67)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v68 = sub_232B55464();
          sub_232B554C8(v68, v69, v70, v71, v72, v73, v74, v75, v105, v106);
          sub_232B55444(v76, v77, v78, v79);
          sub_232B551A4(v80, v81, v82, v83);
          sub_232B55490();
        }
      }
    }

    sub_232C0D704(v2);
    if (v84)
    {

      sub_232C0D704(v2);
      if (v85)
      {
        v86 = sub_232B554AC();
        sub_232B553B8(v86);

        return v106;
      }

      sub_232B20540();
      if (v87)
      {
        sub_232B55588();
        sub_232B55434();
        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
        v88 = sub_232B55464();
        sub_232B554C8(v88, v89, v90, v91, v92, v93, v94, v95, v105, v106);
        sub_232B55444(v96, v97, v98, v99);
        sub_232B551A4(v100, v101, v102, v103);
        sub_232B55490();
      }
    }

    return v3;
  }

  return 0;
}

void sub_232B5414C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a5;
  v154 = a3;
  v155 = a4;
  v146 = a2;
  v156 = a6;
  v7 = sub_232CE8C00();
  sub_232B48F0C();
  v138 = v8;
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v137 = v11;
  v12 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  v150 = v136 - v14;
  v15 = sub_232B554F0();
  v151 = type metadata accessor for CalendarEvent(v15);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v149 = v18 - v17;
  v19 = sub_232B554F0();
  v20 = type metadata accessor for FoundInEventDataDetectorsOutput(v19);
  sub_232B13F24();
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  v25 = sub_232CE8AE0();
  sub_232B55484();
  sub_232B12504(v26, v27, v28, v25);
  v29 = sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v30, v31, v32, v29);
  v147 = v20[6];
  v148 = v25;
  sub_232B55484();
  sub_232B12504(v33, v34, v35, v25);
  sub_232B55484();
  sub_232B12504(v36, v37, v38, v29);
  v153 = v20[8];
  *(v24 + v153) = 0;
  sub_232B554E4(v20[9]);
  v144 = v39;
  sub_232B554E4(v20[10]);
  v145 = v40;
  sub_232B554E4(v20[11]);
  v140 = v41;
  sub_232B554E4(v20[12]);
  v141 = v42;
  sub_232B554E4(v20[13]);
  v143 = v43;
  sub_232B554E4(v20[14]);
  sub_232B554E4(v20[15]);
  v142 = v44;
  v136[0] = v20[16];
  sub_232B55484();
  v139 = v7;
  sub_232B12504(v45, v46, v47, v7);
  v48 = v20[17];
  *(v24 + v48) = 0;
  v49 = (v24 + v20[18]);
  v50 = v24 + v20[19];
  v51 = v24 + v20[20];
  v52 = [a1 type];
  sub_232CE9D50();

  v53 = sub_232CE9DD0();
  v55 = v54;

  v56 = v155;
  *v49 = v154;
  v49[1] = v56;
  v57 = a1;

  *v50 = [a1 range];
  *(v50 + 8) = 0;
  [a1 range];
  *v51 = v58;
  *(v51 + 8) = 0;
  v159 = v53;
  v160 = v55;
  sub_232B55528();
  v157 = v59;
  v158 = v60;
  sub_232B48080();
  v61 = sub_232CEA3F0();
  if (v61)
  {

    *(v24 + v153) = 4;
    v62 = sub_232B53E08(a1);
    if (v62)
    {
      *(v24 + v48) = v62;
LABEL_28:
      v68 = v156;
      sub_232B5521C(v24, v156);
      v67 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v63 = v153;
    v159 = v53;
    v160 = v55;
    v157 = 1702125924;
    v158 = 0xE400000000000000;
    v64 = sub_232B55404(v61, MEMORY[0x277D837D0]);
    if ((v64 & 1) == 0)
    {
      v159 = v53;
      v160 = v55;
      v157 = 1701669236;
      v158 = 0xE400000000000000;
      if ((sub_232B55404(v64, MEMORY[0x277D837D0]) & 1) == 0)
      {
        v159 = v53;
        v160 = v55;
        sub_232B55540();
        v157 = v74;
        v158 = v75;
        v77 = sub_232B55404(v76, MEMORY[0x277D837D0]);
        if (v77)
        {

          v78 = objc_opt_self();
          v79 = sub_232B554FC(v78);
          if (!v79)
          {
            goto LABEL_28;
          }

          v80 = v79;
          *(v24 + v63) = 10;
          v81 = &v159;
          v82 = [v80 trackingNumber];
          v83 = sub_232CE9D50();
          v85 = v84;

          v86 = v144;
          *v144 = v83;
          v86[1] = v85;
          v87 = [v80 carrier];
          v88 = sub_232CE9D50();
          v90 = v89;

          v91 = v145;
        }

        else
        {
          v159 = v53;
          v160 = v55;
          v157 = 0x656E6F6870;
          v158 = 0xE500000000000000;
          v92 = sub_232B55404(v77, MEMORY[0x277D837D0]);
          if (v92)
          {

            v93 = objc_opt_self();
            v94 = sub_232B554FC(v93);
            if (v94)
            {
              v95 = v94;
              *(v24 + v63) = 2;
              v96 = &v159;
              v97 = [v95 phoneNumber];
              v98 = sub_232CE9D50();
              v100 = v99;

              v101 = v143;
              *v143 = v98;
              v101[1] = v100;
            }

            goto LABEL_28;
          }

          v159 = v53;
          v160 = v55;
          v157 = 0x6C69616D65;
          v158 = 0xE500000000000000;
          if (sub_232B55404(v92, MEMORY[0x277D837D0]))
          {

            v102 = objc_opt_self();
            v103 = sub_232B554FC(v102);
            if (!v103)
            {
              goto LABEL_28;
            }

            v104 = v103;
            *(v24 + v63) = 8;
            v105 = &v159;
            v106 = [v104 emailAddress];
            v88 = sub_232CE9D50();
            v90 = v107;

            v91 = v142;
          }

          else
          {
            v159 = v53;
            v160 = v55;
            sub_232B555CC();
            v157 = v108;
            v158 = v109;
            v111 = sub_232B55404(v110, MEMORY[0x277D837D0]);
            if ((v111 & 1) == 0)
            {
              v159 = v53;
              v160 = v55;
              v157 = 7107189;
              v158 = 0xE300000000000000;
              v123 = sub_232B55404(v111, MEMORY[0x277D837D0]);

              if (v123)
              {
                v124 = [a1 url];
                if (v124)
                {
                  v125 = v124;
                  v126 = v136[1];
                  sub_232CE8BB0();

                  v127 = v138;
                  v128 = *(v138 + 32);
                  v129 = v137;
                  v130 = v126;
                  v131 = v139;
                  v128(v137, v130, v139);
                  if ([v57 category] == 1)
                  {
                    *(v24 + v63) = 3;
                    v132 = v136[0];
                    sub_232B13790(v24 + v136[0], &qword_27DDC6AD8, &unk_232CF82F0);
                    v128(v24 + v132, v129, v131);
                    sub_232B351FC();
                    sub_232B12504(v133, v134, v135, v131);
                  }

                  else
                  {
                    (*(v127 + 8))(v129, v131);
                  }
                }

                goto LABEL_28;
              }

              goto LABEL_8;
            }

            v112 = objc_opt_self();
            v113 = sub_232B554FC(v112);
            if (!v113)
            {
              goto LABEL_28;
            }

            v114 = v113;
            *(v24 + v63) = 9;
            v115 = &v159;
            v116 = [v114 flightNumber];
            v117 = sub_232CE9D50();
            v119 = v118;

            v120 = v140;
            *v140 = v117;
            v120[1] = v119;
            v121 = [v114 airline];
            v88 = sub_232CE9D50();
            v90 = v122;

            v91 = v141;
          }
        }

        *v91 = v88;
        v91[1] = v90;
        goto LABEL_28;
      }
    }

    *(v24 + v63) = 5;
    v65 = v150;
    sub_232B52768(a1, v152, v150);
    v66 = v151;
    if (sub_232B12480(v65, 1, v151) != 1)
    {
      v69 = v149;
      sub_232B550D8(v65, v149);
      sub_232B13790(v24, &qword_27DDC70B0, &unk_232CF81C0);
      v70 = v148;
      (*(*(v148 - 8) + 32))(v24, v69 + *(v66 + 20), v148);
      sub_232B351FC();
      sub_232B12504(v71, v72, v73, v70);
      sub_232B55134(v69 + *(v66 + 24), v24 + v147);
      goto LABEL_28;
    }

    sub_232B13790(v65, &qword_27DDC70A8, &unk_232CF81B0);
  }

LABEL_8:
  v67 = 1;
  v68 = v156;
LABEL_29:
  sub_232B12504(v68, v67, 1, v20);
  sub_232B55278(v24, type metadata accessor for FoundInEventDataDetectorsOutput);
  sub_232B20A00();
}

id sub_232B54A2C(void *a1)
{
  v2 = [a1 type];
  sub_232CE9D50();

  sub_232CE9DD0();

  sub_232B55528();
  v65 = v3;
  v4 = sub_232B48080();
  v11 = sub_232B5535C(v4, MEMORY[0x277D837D0], v5, v6, v7, v8, v9, v10, v65);
  if (v11)
  {
    v18 = 0x277CC5698;
LABEL_6:

    return [objc_allocWithZone(*v18) initWithDDScannerResult_];
  }

  v19 = sub_232B5535C(v11, MEMORY[0x277D837D0], v12, v13, v14, v15, v16, v17, 1702125924);
  if (v19 & 1) != 0 || (sub_232B5535C(v19, MEMORY[0x277D837D0], v20, v21, v22, v23, v24, v25, 1701669236))
  {
    v18 = 0x277CC5668;
    goto LABEL_6;
  }

  sub_232B55540();
  v35 = sub_232B5535C(v27, MEMORY[0x277D837D0], v28, v29, v30, v31, v32, v33, v34);
  if (v35)
  {
    v18 = 0x277CC56A0;
    goto LABEL_6;
  }

  v42 = sub_232B5535C(v35, MEMORY[0x277D837D0], v36, v37, v38, v39, v40, v41, 0x656E6F6870);
  if (v42)
  {
    v18 = 0x277CC5690;
    goto LABEL_6;
  }

  if (sub_232B5535C(v42, MEMORY[0x277D837D0], v43, v44, v45, v46, v47, v48, 0x6C69616D65))
  {
    v18 = 0x277CC5670;
    goto LABEL_6;
  }

  sub_232B555CC();
  v57 = sub_232B5535C(v49, MEMORY[0x277D837D0], v50, v51, v52, v53, v54, v55, v56);
  if (v57)
  {
    v18 = 0x277CC5678;
    goto LABEL_6;
  }

  v64 = sub_232B5535C(v57, MEMORY[0x277D837D0], v58, v59, v60, v61, v62, v63, 7107189);

  if (v64)
  {
    v18 = 0x277CC5680;
    return [objc_allocWithZone(*v18) initWithDDScannerResult_];
  }

  return 0;
}

void sub_232B54C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_232B124A8(&qword_27DDC70A0, &qword_232CF81A8);
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v48 = type metadata accessor for FoundInEventDataDetectorsOutput(0);
  sub_232B48F0C();
  v44[0] = v9;
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v47 = v11;
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v46 = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  v15 = objc_opt_self();
  v16 = sub_232CE9D20();
  v17 = [v15 scanString:v16 range:0 configuration:{MEMORY[0x238391CC0](a1, a2), v14}];

  sub_232B55094();
  v18 = sub_232CE9FE0();

  v19 = v18;
  v20 = sub_232B26B10();
  if (!v20)
  {
LABEL_23:

    sub_232B20A00();
    return;
  }

  v21 = v20;
  if (v20 >= 1)
  {
    v45 = v8;
    v22 = 0;
    v51 = MEMORY[0x277D84F90];
    v52 = v20;
    v23 = v19 & 0xC000000000000001;
    v24 = &off_2789A8000;
    v44[1] = a2;
    v50 = v19 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v25 = MEMORY[0x2383922C0](v22, v19);
      }

      else
      {
        v25 = *(v19 + 8 * v22 + 32);
      }

      v26 = v25;
      [v25 v24[142]];
      sub_232CEA110();
      if (v27)
      {
      }

      else
      {
        v28 = a1;
        v29 = sub_232CE9FB0();
        v30 = MEMORY[0x238391B80](v29);
        v32 = v31;

        v33 = sub_232B54A2C(v26);
        if (v33)
        {
          v34 = v33;
          v35 = v19;
          v36 = v14;
          v37 = v45;
          sub_232B5414C(v26, v33, v30, v32, v49, v45);

          if (sub_232B12480(v37, 1, v48) == 1)
          {

            sub_232B13790(v37, &qword_27DDC70A0, &qword_232CF81A8);
          }

          else
          {
            v38 = v46;
            sub_232B550D8(v37, v46);
            sub_232B5521C(v38, v47);
            v39 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_232B35FA0();
              v39 = v42;
            }

            v40 = *(v39 + 16);
            if (v40 >= *(v39 + 24) >> 1)
            {
              sub_232B35FA0();
              v51 = v43;
            }

            else
            {
              v51 = v39;
            }

            sub_232B55278(v46, type metadata accessor for FoundInEventDataDetectorsOutput);
            v41 = v51;
            *(v51 + 16) = v40 + 1;
            sub_232B550D8(v47, v41 + ((*(v44[0] + 80) + 32) & ~*(v44[0] + 80)) + *(v44[0] + 72) * v40);
          }

          v14 = v36;
          v19 = v35;
        }

        else
        {
        }

        v21 = v52;
        a1 = v28;
        v23 = v50;
        v24 = &off_2789A8000;
      }

      ++v22;
    }

    while (v21 != v22);
    goto LABEL_23;
  }

  __break(1u);
}

unint64_t sub_232B55094()
{
  result = qword_2814DF918;
  if (!qword_2814DF918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF918);
  }

  return result;
}

uint64_t sub_232B550D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B5139C();
  v5(v4);
  sub_232B13F24();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_232B55134(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_232B551A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_27DDC65C8;
  if (!qword_27DDC65C8)
  {
    type metadata accessor for NSTextCheckingKey(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC65C8);
  }

  return result;
}

uint64_t sub_232B5521C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B5139C();
  v5(v4);
  sub_232B13F24();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_232B55278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232B552D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_232CEA3F0();
}

id sub_232B553B8(uint64_t a1)
{

  return sub_232B1FAB4(v2, v3, v1, a1);
}

uint64_t sub_232B553E0(uint64_t a1)
{

  return sub_232CEA750();
}

uint64_t sub_232B55404(uint64_t a1, uint64_t a2)
{

  return sub_232CEA3F0();
}

void sub_232B55444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for NSTextCheckingKey(0, a2, a3, a4);
}

uint64_t sub_232B55464()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B55490()
{

  return sub_232CEA5E0();
}

uint64_t sub_232B554AC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232B554C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 8 * v10);
}

void sub_232B554E4(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B554FC(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_232B55588()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL sub_232B555A0()
{

  return sub_232C0A5F8();
}

uint64_t sub_232B555E0()
{
}

char *DUDebugInfo.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v5, 0, 1, v6);
    sub_232B21BEC(v5, v8);
    v10 = &v8[*(v6 + 20)];
    v12 = *v10;
    v11 = *(v10 + 1);

    sub_232B21C50(v8);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
    swift_beginAccess();
    *v14 = v12;
    *(v14 + 1) = v13;
  }

  else
  {

    sub_232B12504(v5, 1, 1, v6);
    sub_232B557A4(v5);
    return 0;
  }

  return v9;
}

uint64_t sub_232B557A4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDebugInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232B5588C(uint64_t a1)
{
  sub_232B56134(a1);
  v2 = *v1;

  return v2;
}

uint64_t sub_232B55940(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B559A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B55940(v1, v2);
}

uint64_t sub_232B55A40@<X0>(void *a2@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  v4 = (a2 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  sub_232B56134(v3);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
}

char *sub_232B55AA0@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B55A40((&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v4 = sub_232B4C530();
  result = sub_232B124A8(&qword_27DDC70D0, &qword_232CF81D8);
  a1[3] = result;
  *a1 = v4;
  return result;
}

void sub_232B55BA0(void *a1)
{
  type metadata accessor for DUDebugInfo();
  sub_232B5611C();
  sub_232B560D4(v2, v3, v4, &protocol conformance descriptor for DUDebugInfo);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDebugInfo.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5611C();
  sub_232B560D4(v2, v3, v4, &protocol conformance descriptor for DUDebugInfo);
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

id DUDebugInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUDebugInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUDebugInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDebugInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B55F34@<X0>(char **a1@<X8>)
{
  result = sub_232B4C624();
  *a1 = result;
  return result;
}

uint64_t sub_232B560D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B56134(uint64_t a2, ...)
{

  return swift_beginAccess();
}

double sub_232B5617C()
{
  v1 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow);
  sub_232B13F74(v1, v2);
  return *v0;
}

uint64_t sub_232B561DC(double a1, double a2, double a3, double a4)
{
  v9 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow);
  result = sub_232B13F5C(v9, v10);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_232B56238(uint64_t a1@<X8>)
{
  *a1 = sub_232B5617C();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_232B56308()
{
  v1 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen);
  sub_232B13F74(v1, v2);
  return *v0;
}

uint64_t sub_232B56364(double a1, double a2)
{
  v5 = sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen);
  result = sub_232B13F5C(v5, v6);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_232B5644C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen, v3);
  return *(v0 + v1);
}

uint64_t sub_232B564B0(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  result = sub_232B13F5C(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen, v5);
  *(v1 + v3) = a1;
  return result;
}

char *sub_232B56548(uint64_t a1)
{
  v6 = sub_232CE9DA0();
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(type metadata accessor for DUDisplayInfo()) init];
  sub_232B57B5C(a1, v11);
  sub_232CE9D90();
  sub_232CE9D70();
  if (v13)
  {
    sub_232B2F0F4();
    if (v14)
    {
      v15 = sub_232CE9D20();

      CGRectFromString(v15);
      sub_232B45A88();

      goto LABEL_17;
    }
  }

  v17 = sub_232B57BC0(v11 + v8[8]);
  if (v18)
  {
    v4 = v17;
  }

  else
  {
    v4 = 0.0;
  }

  v19 = sub_232B57BC0(v11 + v16);
  if (v18)
  {
    v1 = v19;
  }

  else
  {
    v1 = v20;
  }

  v22 = sub_232B57BC0(v11 + v8[10]);
  if (v18)
  {
    v2 = v22;
  }

  else
  {
    v2 = v23;
  }

  v24 = sub_232B57BC0(v11 + v21);
  if (v18)
  {
    v3 = v24;
  }

  else
  {
    v3 = v25;
  }

LABEL_17:
  v26 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow], v46);
  *v26 = v4;
  v26[1] = v1;
  v26[2] = v2;
  v26[3] = v3;
  sub_232CE9D90();
  sub_232CE9D70();
  if (v27)
  {
    sub_232B2F0F4();
    if (v28)
    {
      v29 = v12;
      v30 = sub_232CE9D20();

      v31 = CGPointFromString(v30);

      sub_232B57030(a1);
      v32 = &v29[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
      sub_232B13F5C(&v29[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen], v45);
      *v32 = v31;
      goto LABEL_29;
    }

    sub_232B57030(a1);
  }

  else
  {
    sub_232B57030(a1);
  }

  v34 = sub_232B57BC0(v11 + v8[12]);
  if (v18)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = sub_232B57BC0(v11 + v33);
  if (v18)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen], v45);
  *v39 = v35;
  v39[1] = v38;
  v40 = v12;
LABEL_29:
  v41 = *(v11 + 32);
  sub_232B57030(v11);
  v42 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  sub_232B13F5C(&v12[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen], v44);
  v12[v42] = v41;

  return v12;
}

char *sub_232B56804(uint64_t a1)
{
  v2 = v1;
  v4 = sub_232CE9DA0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(v2) init];
  sub_232B57B5C(a1, v7);
  sub_232CE9D90();
  v9 = sub_232CE9D70();
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = sub_232CE9D20();

      v39 = CGRectFromString(v12);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;

      goto LABEL_19;
    }
  }

  v17 = v5[9];
  v18 = &v7[v5[8]];
  if (v18[8])
  {
    x = 0.0;
  }

  else
  {
    x = *v18;
  }

  if (v7[v17 + 8])
  {
    y = 0.0;
  }

  else
  {
    y = *&v7[v17];
  }

  v19 = v5[11];
  v20 = &v7[v5[10]];
  if (v20[8])
  {
    width = 0.0;
  }

  else
  {
    width = *v20;
  }

  if (v7[v19 + 8])
  {
    height = 0.0;
  }

  else
  {
    height = *&v7[v19];
  }

LABEL_19:
  v21 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  swift_beginAccess();
  *v21 = x;
  v21[1] = y;
  v21[2] = width;
  v21[3] = height;
  sub_232CE9D90();
  v22 = sub_232CE9D70();
  if (v23)
  {
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = v8;
      v26 = sub_232CE9D20();

      v27 = CGPointFromString(v26);

      sub_232B57030(a1);
      v28 = &v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
      swift_beginAccess();
      *v28 = v27;
      goto LABEL_33;
    }

    sub_232B57030(a1);
  }

  else
  {
    sub_232B57030(a1);
  }

  v29 = v5[13];
  v30 = &v7[v5[12]];
  if (v30[8])
  {
    v31 = 0.0;
  }

  else
  {
    v31 = *v30;
  }

  if (v7[v29 + 8])
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *&v7[v29];
  }

  v33 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  swift_beginAccess();
  *v33 = v31;
  v33[1] = v32;
  v34 = v8;
LABEL_33:
  v35 = v7[32];
  sub_232B57030(v7);
  v36 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  swift_beginAccess();
  v8[v36] = v35;

  return v8;
}

char *DUDisplayInfo.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  v10 = sub_232CE9DA0();
  v11 = sub_232B2D120(v10);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v12 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v13 = sub_232B2D120(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v66[-v14 - 8];
  v16 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  sub_232B20704();
  v20 = v19 - v18;
  v21 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  v25 = [objc_allocWithZone(v7) init];
  (*(v16 + 16))(v20, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v15, 0, 1, v21);
    sub_232B56FCC(v15, v24);
    sub_232CE9D90();
    sub_232CE9D70();
    if (v26)
    {
      sub_232B2F0F4();
      if (v27)
      {
        v28 = sub_232CE9D20();

        CGRectFromString(v28);
        sub_232B45A88();

        goto LABEL_19;
      }
    }

    v32 = sub_232B57BC0(v24 + v21[8]);
    if (v33)
    {
      v6 = v32;
    }

    else
    {
      v6 = 0.0;
    }

    v34 = sub_232B57BC0(v24 + v31);
    if (v33)
    {
      v3 = v34;
    }

    else
    {
      v3 = v35;
    }

    v37 = sub_232B57BC0(v24 + v21[10]);
    if (v33)
    {
      v4 = v37;
    }

    else
    {
      v4 = v38;
    }

    v39 = sub_232B57BC0(v24 + v36);
    if (v33)
    {
      v5 = v39;
    }

    else
    {
      v5 = v40;
    }

LABEL_19:
    v41 = &v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
    sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow], v68);
    *v41 = v6;
    v41[1] = v3;
    v41[2] = v4;
    v41[3] = v5;
    sub_232CE9D90();
    sub_232CE9D70();
    if (v42)
    {
      sub_232B2F0F4();
      if (v43)
      {
        v44 = v25;
        v45 = sub_232CE9D20();

        v46 = CGPointFromString(v45);

        v47 = sub_232B57BE8();
        v48(v47);
        v49 = &v44[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
        sub_232B13F5C(&v44[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen], v67);
        *v49 = v46;
LABEL_31:
        v62 = *(v24 + 32);
        sub_232B57030(v24);
        v63 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
        sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen], v66);
        v25[v63] = v62;

        return v25;
      }

      v52 = sub_232B57BE8();
      v53(v52);
    }

    else
    {
      v50 = sub_232B57BE8();
      v51(v50);
    }

    v55 = sub_232B57BC0(v24 + v21[12]);
    if (v33)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0.0;
    }

    v57 = sub_232B57BC0(v24 + v54);
    if (v33)
    {
      v59 = v57;
    }

    else
    {
      v59 = v58;
    }

    v60 = &v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
    sub_232B13F5C(&v25[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen], v67);
    *v60 = v56;
    v60[1] = v59;
    v61 = v25;
    goto LABEL_31;
  }

  v29 = sub_232B57BE8();
  v30(v29);

  sub_232B12504(v15, 1, 1, v21);
  sub_232B56F64(v15);
  return 0;
}

uint64_t sub_232B56F64(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B56FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B57030(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B5708C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232CE9DA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v7 = v6 - v5;
  *a1 = xmmword_232CF76F0;
  *(a1 + 16) = xmmword_232CF76F0;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232CE9330();
  v9 = a1 + *(v8 + 32);
  *v9 = 0;
  v41 = v9;
  *(v9 + 8) = 1;
  sub_232B57BF8();
  v38 = v10;
  *(v10 + 8) = v11;
  sub_232B57BF8();
  v40 = v12;
  *(v12 + 8) = v13;
  sub_232B57BF8();
  v37 = v14;
  *(v14 + 8) = v15;
  sub_232B57BF8();
  v39 = v16;
  *(v16 + 8) = v17;
  sub_232B57BF8();
  v36 = v18;
  *(v18 + 8) = v19;
  v20 = v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow, v45);
  v21 = NSStringFromCGRect(*v20);
  sub_232CE9D50();

  sub_232CE9D90();
  v22 = sub_232CE9D60();
  v24 = v23;

  v25 = *(v4 + 8);
  v25(v7, v3);
  if (v24 >> 60 != 15)
  {
    sub_232B41BEC(*a1, *(a1 + 8));
    *a1 = v22;
    *(a1 + 8) = v24;
  }

  v42 = v1;
  v26 = v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen, v44);
  v27 = NSStringFromCGPoint(*v26);
  sub_232CE9D50();

  sub_232CE9D90();
  v28 = sub_232CE9D60();
  v30 = v29;

  v25(v7, v3);
  if (v30 >> 60 != 15)
  {
    sub_232B41BEC(*(a1 + 16), *(a1 + 24));
    *(a1 + 16) = v28;
    *(a1 + 24) = v30;
  }

  v31 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  result = sub_232B13F74(v42 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen, v43);
  *(a1 + 32) = *(v42 + v31);
  v33 = *(v20 + 8);
  *v41 = *v20;
  *(v41 + 8) = 0;
  *v38 = v33;
  *(v38 + 8) = 0;
  v34 = *(v20 + 24);
  *v40 = *(v20 + 16);
  *(v40 + 8) = 0;
  *v37 = v34;
  *(v37 + 8) = 0;
  v35 = *(v26 + 8);
  *v39 = *v26;
  *(v39 + 8) = 0;
  *v36 = v35;
  *(v36 + 8) = 0;
  return result;
}

char *sub_232B57378@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B5708C(v5 - v4);
  v7 = sub_232B56548(v6);
  result = sub_232B124A8(&qword_27DDC7100, &qword_232CF8268);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B5746C(void *a1)
{
  type metadata accessor for DUDisplayInfo();
  sub_232B57BD0();
  sub_232B57B14(v2, v3, v4, &protocol conformance descriptor for DUDisplayInfo);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDisplayInfo.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B57BD0();
  sub_232B57B14(v2, v3, v4, &protocol conformance descriptor for DUDisplayInfo);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B57C04(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B57C04(v6);
  return v5;
}

id DUDisplayInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDisplayInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  *v1 = 0u;
  v1[1] = 0u;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUDisplayInfo();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DUDisplayInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDisplayInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B5783C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B56804(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B57B14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B57B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B57C04(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B57C24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a1 && sub_232CE9E60() > a1)
  {

    v10 = sub_232B57E40(a1, a2, a3);
    a2 = MEMORY[0x238391B80](v10);
  }

  v11 = sub_232CE9E60();

  if (v11 > 100000)
  {
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;

      v15 = sub_232CE9E60();

      *(v14 + 4) = v15;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 100000;
      _os_log_impl(&dword_232B02000, v12, v13, "DUDocument: Document length %ld is beyond recommended maximum %ld.", v14, 0x16u);
      MEMORY[0x238393870](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  return a2;
}

uint64_t sub_232B57E40(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_232CE9E80();
    v3 = sub_232CE9FB0();

    return v3;
  }

  return result;
}

unint64_t sub_232B57F80(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = sub_232CEA620();

    return v15;
  }

  v9 = a3(a2);
  v10 = sub_232B59F6C(0, a1, v9);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_16;
  }

  a4(0, a2);
  a4(v12, a2);
  if ((a2 & 0xC000000000000001) != 0 && v12)
  {
    a5(0);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_232CEA520();
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_232B5810C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_232B582DC(void *a1)
{
  v2 = (*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument) + *a1);
  sub_232B13F74(v2, v5);
  v3 = *v2;

  return v3;
}

uint64_t sub_232B5839C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v9 = *a1;
  sub_232B13F74(v8 + *a1, v11);
  return sub_232B26744(v8 + v9, a4, a2, a3);
}

id sub_232B58424(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v8 = sub_232CE8C00();
  sub_232B5A088(v8);
  if (!v9)
  {
    a1 = v3;
    sub_232CE8B90();
    sub_232B5A014();
    (*(v10 + 8))(v3, a3);
  }

  return a1;
}

id sub_232B58524(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v8 = sub_232CE8D10();
  sub_232B5A088(v8);
  if (!v9)
  {
    a1 = v3;
    sub_232CE8CD0();
    sub_232B5A014();
    (*(v10 + 8))(v3, a3);
  }

  return a1;
}

void *sub_232B5876C(uint64_t a1)
{
  sub_232B59FE0(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

id DUDocument.__allocating_init(rawDocument:maxLength:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B5A008();
  return DUDocument.init(rawDocument:maxLength:)(v2, v3);
}

id DUDocument.init(rawDocument:maxLength:)(void *a1, uint64_t a2)
{
  v88 = a2;
  v3 = sub_232CE8D40();
  sub_232B350D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v91 = sub_232CE9A30();
  sub_232B350D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v87 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v84 - v19;
  [a1 copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  type metadata accessor for DURawDocument(0);
  if (swift_dynamicCast())
  {
    v89 = v101[0];
    v21 = (v101[0] + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
    sub_232B13F5C(v101[0] + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier, v102);
    v22 = v21[1];
    if (!v22 || ((v22 & 0x2000000000000000) != 0 ? (v23 = HIBYTE(v22) & 0xF) : (v23 = *v21 & 0xFFFFFFFFFFFFLL), !v23))
    {
      sub_232CE8D30();
      v24 = sub_232CE8D20();
      v26 = v25;
      (*(v5 + 8))(v9, v3);
      *v21 = v24;
      v21[1] = v26;
    }

    sub_232B5A03C();
    v27 = v88;
    if (v88 > v28)
    {
      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1C0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = v27;
        *(v31 + 12) = 2048;
        sub_232B5A03C();
        *(v32 + 14) = v33;
        _os_log_impl(&dword_232B02000, v29, v30, "DUDocument: Truncation string length %ld is beyond recommended maximum %ld.", v31, 0x16u);
        MEMORY[0x238393870](v31, -1, -1);
      }

      v11[1](v16, v91);
    }

    v34 = (v89 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F5C(v89 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text, v101);
    v35 = *v34;
    v20 = v34[1];
    if (v20)
    {

      v35 = sub_232B57C24(v27, v35, v20);
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    *v34 = v35;
    v34[1] = v37;

    v38 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    v39 = v89;
    sub_232B13F74(v89 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData, v100);
    v40 = *(v39 + v38);
    if (v40)
    {
      v41 = &v40[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
      sub_232B13F5C(&v40[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], v99);
      v42 = *v41;
      v43 = v41[1];
      v44 = v40;
      if (v43)
      {

        v42 = sub_232B57C24(100000, v42, v43);
        v20 = v45;
      }

      else
      {
        v20 = 0;
      }

      *v41 = v42;
      v41[1] = v20;
    }

    v46 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
    v47 = v89;
    sub_232B13F74(v89 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements, v98);
    v48 = *(v47 + v46);
    if (!v48)
    {
LABEL_42:
      v73 = v85;
      *&v85[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument] = v89;
      v74 = type metadata accessor for DUDocument();
      v96.receiver = v73;
      v96.super_class = v74;
      v75 = objc_msgSendSuper2(&v96, sel_init);

      return v75;
    }

    v84 = a1;
    v95 = sub_232B26B10();
    v94 = v48 & 0xC000000000000001;
    v93 = v48 & 0xFFFFFFFFFFFFFF8;
    v90 = v11 + 1;

    v49 = 0;
    *&v50 = 134218240;
    v86 = v50;
    v11 = v87;
    v51 = v48;
    v92 = v48;
    while (1)
    {
      if (v95 == v49)
      {

        a1 = v84;
        goto LABEL_42;
      }

      if (v94)
      {
        v52 = MEMORY[0x2383922C0](v49, v51);
      }

      else
      {
        if (v49 >= *(v93 + 16))
        {
          goto LABEL_44;
        }

        v52 = *(v51 + 8 * v49 + 32);
      }

      v20 = v52;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v53 = &v52[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      sub_232B13F5C(&v52[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text], v97);
      v54 = *v53;
      v55 = v53[1];
      if (v55)
      {
        swift_bridgeObjectRetain_n();
        if (v27 && sub_232CE9E60() > v27)
        {
          if (v27 < 0)
          {
            goto LABEL_45;
          }

          sub_232CE9E80();
          v56 = sub_232CE9FB0();
          v58 = v57;
          v60 = v59;
          v62 = v61;

          v54 = MEMORY[0x238391B80](v56, v58, v60, v62);
          v64 = v63;

          v51 = v92;
        }

        else
        {
          v64 = v55;
        }

        sub_232B5A008();
        v65 = sub_232CE9E60();

        sub_232B5A03C();
        if (v65 > v66)
        {
          sub_232CE9A20();
          v67 = sub_232CE9A00();
          v68 = sub_232CEA1C0();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = v86;

            sub_232B5A008();
            v70 = sub_232CE9E60();

            *(v69 + 4) = v70;
            v11 = v87;
            *(v69 + 12) = 2048;
            sub_232B5A03C();
            *(v69 + 14) = v71;
            _os_log_impl(&dword_232B02000, v67, v68, "DUDocument: Document length %ld is beyond recommended maximum %ld.", v69, 0x16u);
            v72 = v69;
            v27 = v88;
            MEMORY[0x238393870](v72, -1, -1);
          }

          (*v90)(v11, v91);
          v51 = v92;
        }
      }

      else
      {
        v64 = 0;
      }

      *v53 = v54;
      v53[1] = v64;

      ++v49;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  sub_232CE9A20();
  v77 = sub_232CE9A00();
  v78 = sub_232CEA1D0();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_232B02000, v77, v78, "Could not create a DURawDocument copy due to mismatched typing.", v79, 2u);
    MEMORY[0x238393870](v79, -1, -1);
  }

  v11[1](v20, v91);
  result = sub_232B59FB8("Fatal error", v80, v81, v82, v83, "DocumentUnderstanding/DUDocument.swift");
  __break(1u);
  return result;
}

id DUDocument.init(text:maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v8 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], v11);
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = [v3 initWithRawDocument:v7 maxLength:a3];

  return v9;
}

uint64_t sub_232B591FC()
{
  [*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument) copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  v1 = type metadata accessor for DURawDocument(0);
  if (sub_232B5A068(v1))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id DUDocument.init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for DURawDocument(0));
  v4 = a1;
  v5 = DURawDocument.init(coder:)(v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v2 initWithRawDocument:v5 maxLength:0];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

uint64_t sub_232B59448@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BF4C38(v5 - v4);
  v7 = sub_232B594EC(v6);
  result = sub_232B124A8(&qword_27DDC7120, &unk_232CF8300);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void *sub_232B594EC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B59EAC(a1, v5 - v4);
  v7 = sub_232BEFD64(v6);
  if (v7)
  {
    v8 = objc_allocWithZone(type metadata accessor for DUDocument());
    v7 = sub_232B5A048();
  }

  sub_232B59F10(a1);
  return v7;
}

void *DUDocument.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B350D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = v9 - v8;
  type metadata accessor for DURawDocument(0);
  (*(v6 + 16))(v10, a1, a2);
  v11 = DURawDocument.__allocating_init<A>(proto:)(v10, a2);
  if (v11)
  {
    v12 = objc_allocWithZone(type metadata accessor for DUDocument());
    v11 = sub_232B5A048();
  }

  v13 = sub_232B5A008();
  v14(v13);
  return v11;
}

id sub_232B596E8(uint64_t a1)
{
  sub_232B26744(a1, v8, &qword_27DDC68C8, &qword_232CF6210);
  if (!v9)
  {
    sub_232B598F4(v8);
    return 0;
  }

  v2 = type metadata accessor for DUDocument();
  if ((sub_232B5A068(v2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v4 = *&v7[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument];
  v5 = [v3 isEqual_];

  return v5;
}

id DUDocument.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DUDocument();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_232B598A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232B594EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B598F4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B59E54()
{
  result = qword_27DDC6978;
  if (!qword_27DDC6978)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6978);
  }

  return result;
}

uint64_t sub_232B59EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B59F10(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B59F6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_232B59FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_232CEA5F0();
}

uint64_t sub_232B59FE0(uint64_t a3, ...)
{

  return swift_beginAccess();
}

id sub_232B5A048()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 0);
}

uint64_t sub_232B5A068(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_232B5A118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_232B5A1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  sub_232B5B698(a1);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_232B5A274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B5A2FC(v1, v2);
}

uint64_t sub_232B5A2B4(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B3CAE4(a1);
  v3 = *v2;

  return v3;
}

uint64_t sub_232B5A2FC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B5B698(a1);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t static DUDocumentAttribute.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_232B5B698(a1);
  byte_27DDC7128 = v1;
  return result;
}

uint64_t sub_232B5A494@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC7128;
  return result;
}

uint64_t sub_232B5A4E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC7128 = v1;
  return result;
}

id DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeNamespace];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeType];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeID];
  *v14 = a5;
  *(v14 + 1) = a6;
  swift_beginAccess();
  *v11 = a7;
  *(v11 + 1) = a8;
  v16.receiver = v8;
  v16.super_class = type metadata accessor for DUDocumentAttribute();
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_232B5A67C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v5 = v4 - v3;
  v21 = a1;
  sub_232B5B61C(a1, v4 - v3);
  v6 = (v5 + v2[5]);
  if (v6[1])
  {
    v19 = v6[1];
    v20 = *v6;
  }

  else
  {
    v19 = 0xE000000000000000;
    v20 = 0;
  }

  v7 = (v5 + v2[6]);
  if (v7[1])
  {
    v17 = v7[1];
    v18 = *v7;
  }

  else
  {
    v17 = 0xE000000000000000;
    v18 = 0;
  }

  v8 = (v5 + v2[7]);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = (v5 + v2[8]);
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

  v15 = DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v20, v19, v18, v17, v9, v10, v12, v13);
  sub_232B5ABAC(v21);
  sub_232B5ABAC(v5);
  return v15;
}

id DUDocumentAttribute.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7150, &qword_232CF8390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = v14 - v13;
  (*(v7 + 16))(v11, a1, a2);
  if (swift_dynamicCast())
  {
    v38 = a1;
    sub_232B12504(v6, 0, 1, v12);
    sub_232B5AB48(v6, v15);
    v16 = (v15 + v12[5]);
    v17 = v16[1];
    if (v17)
    {
      v18 = *v16;
      v36 = v17;
      v37 = v18;
    }

    else
    {
      v36 = 0xE000000000000000;
      v37 = 0;
    }

    v20 = (v15 + v12[6]);
    v21 = v20[1];
    if (v21)
    {
      v22 = *v20;
      v34 = v21;
      v35 = v22;
    }

    else
    {
      v34 = 0xE000000000000000;
      v35 = 0;
    }

    v23 = (v15 + v12[7]);
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v32 = v24;
      v33 = v25;
    }

    else
    {
      v32 = 0xE000000000000000;
      v33 = 0;
    }

    v26 = (v15 + v12[8]);
    if (v26[1])
    {
      v27 = *v26;
      v28 = v26[1];
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

    v19 = DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v37, v36, v35, v34, v33, v32, v27, v28);
    (*(v7 + 8))(v38, a2);
    sub_232B5ABAC(v15);
  }

  else
  {
    (*(v7 + 8))(a1, a2);
    sub_232B12504(v6, 1, 1, v12);
    sub_232B5AAE0(v6);
    return 0;
  }

  return v19;
}

uint64_t sub_232B5AAE0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7150, &qword_232CF8390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B5AB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5ABAC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_232B5AC08@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
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
  v12 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeNamespace);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeNamespace, v27);
  v13 = *v12;
  v14 = v12[1];
  *v8 = v13;
  v8[1] = v14;
  v15 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeType);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeType, v26);
  v16 = *v15;
  v17 = v15[1];
  *v9 = v16;
  v9[1] = v17;
  v18 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeID);
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeID, v25);
  v19 = *v18;
  v20 = v18[1];
  *v10 = v19;
  v10[1] = v20;
  v21 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B13F74(v21, v24);
  v22 = v21[1];
  if (v22)
  {
    *v11 = *v21;
    v11[1] = v22;
  }

  sub_232B5AB48(v7, a1);

  return result;
}

uint64_t sub_232B5AD74@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232B5AC08(v4 - v3);
  v6 = sub_232B5A67C(v5);
  result = sub_232B124A8(&qword_27DDC7158, &qword_232CF8398);
  a1[3] = result;
  *a1 = v6;
  return result;
}

void sub_232B5AE6C(void *a1)
{
  type metadata accessor for DUDocumentAttribute();
  sub_232B5B680();
  sub_232B5B5D4(v2, v3, v4, &protocol conformance descriptor for DUDocumentAttribute);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentAttribute.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5B680();
  sub_232B5B5D4(v2, v3, v4, &protocol conformance descriptor for DUDocumentAttribute);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B5B6B8(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B5B6B8(v6);
  return v5;
}

id DUDocumentAttribute.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentAttribute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentAttribute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B5B24C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232B5A67C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B5B5D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232B5B61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5B698(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B5B6B8(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

id sub_232B5B704(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_232B5B748(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232B5B7DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B5B860(v1, v2);
}

uint64_t sub_232B5B81C(uint64_t a1)
{
  sub_232B3CAE4(a1);

  return sub_232B5EFF4();
}

uint64_t sub_232B5B860(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody);
  sub_232B5B698(a1);
  *v5 = a1;
  v5[1] = a2;
}

void sub_232B5B8FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232B5B968(v1);
}

void *sub_232B5B92C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232B5B968(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B26C50(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232B5BA80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232B5BB04(v1, v2);
}

uint64_t sub_232B5BAC0(uint64_t a1)
{
  sub_232B3CAE4(a1);

  return sub_232B5EFF4();
}

uint64_t sub_232B5BB04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType);
  sub_232B5B698(a1);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B5BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_232B124A8(a5, a6);
  sub_232B2D120(v11);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_232B5D6C0(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_232B5BC60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_232B13F74(v4 + *a1, v10);
  return sub_232B5D6C0(v4 + v8, a4, a2, a3);
}

uint64_t sub_232B5BCE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  sub_232B207D4(v4 + *a2, v10);
  sub_232B5BD4C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_232B5BD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24();
  v5 = sub_232B2080C();
  v6(v5);
  return v4;
}

double sub_232B5BE10(uint64_t a1)
{
  sub_232B26BFC(a1);

  return result;
}

uint64_t sub_232B5BE48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  sub_232B26C50(a1);
  *(v1 + v3) = a1;
}

uint64_t static DUDocumentUpdate.supportsSecureCoding.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_232B5B698(a1);
  byte_27DDC7168 = v1;
  return result;
}

uint64_t (*static DUDocumentUpdate.supportsSecureCoding.modify(__n128 a1))(uint64_t a1)
{
  v1 = sub_232B5EFF4();
  sub_232B207D4(v1, v2);
  return j_j__swift_endAccess;
}

uint64_t sub_232B5BFCC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC7168;
  return result;
}

uint64_t sub_232B5C018(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC7168 = v1;
  return result;
}

id DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document] = 0;
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_associatedFileURL;
  sub_232CE8C00();
  sub_232B55484();
  sub_232B12504(v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_updateTimestamp;
  sub_232CE8D10();
  sub_232B55484();
  sub_232B12504(v22, v23, v24, v25);
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes] = 0;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID] = a1;
  swift_beginAccess();
  *v14 = a2;
  *(v14 + 1) = a3;
  swift_beginAccess();
  *&v9[v15] = a4;
  sub_232B207D4(&v9[v16], v37);
  v27 = a4;
  v28 = a1;
  sub_232B5C310(a5, &v9[v16], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v29 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType];
  *v29 = a6;
  *(v29 + 1) = a7;
  sub_232B207D4(&v9[v21], v37);
  sub_232B5C310(a8, &v9[v21], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  swift_beginAccess();
  *&v9[v26] = a9;

  v36.receiver = v9;
  v36.super_class = type metadata accessor for DUDocumentUpdate(0);
  v30 = objc_msgSendSuper2(&v36, sel_init);

  sub_232B13790(a8, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B13790(a5, &qword_27DDC6AD8, &unk_232CF82F0);
  return v30;
}

uint64_t sub_232B5C310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24();
  v5 = sub_232B2080C();
  v6(v5);
  return v4;
}

uint64_t type metadata accessor for DUDocumentUpdate(uint64_t a1)
{
  result = qword_2814E1400;
  if (!qword_2814E1400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B5C3A8(uint64_t a1)
{
  sub_232B5F048();
  v3 = v2;
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v4);
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  sub_232B2D108();
  v111 = v6;
  v7 = sub_232B554F0();
  v117 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(v7);
  sub_232B48F0C();
  v123 = v8;
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v118 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  v125 = &v108 - v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v124 = v14;
  v15 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v16 = sub_232B2D120(v15);
  MEMORY[0x28223BE20](v16);
  sub_232B20714();
  v110 = v17;
  sub_232B20600();
  MEMORY[0x28223BE20](v18);
  sub_232B55558();
  v113 = v19;
  v20 = sub_232B554F0();
  v21 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v20);
  sub_232B13F24();
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v122 = v24 - v23;
  v25 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  v26 = sub_232B2D120(v25);
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  v121 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  v30 = &v108 - v29;
  v31 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v31);
  sub_232B2D114();
  MEMORY[0x28223BE20](v32);
  v33 = sub_232B5F064();
  sub_232B13F24();
  MEMORY[0x28223BE20](v34);
  sub_232B20704();
  v35 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v39 = v38 - v37;
  v112 = v3;
  sub_232B5EEF4(v3, v38 - v37, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  v114 = v35;
  v115 = v39;
  sub_232B5D6C0(v39 + *(v35 + 24), v1, &qword_27DDC6D18, &qword_232CF7420);
  v40 = sub_232B5F000();
  sub_232B351B0(v40, v41, v33);
  if (v42)
  {
    sub_232CE9330();
    sub_232B2DF60(v33[5]);
    sub_232B2DF60(v33[6]);
    sub_232B2DF60(v33[7]);
    sub_232B2DF60(v33[8]);
    sub_232B2DF60(v33[9]);
    v43 = sub_232B5F000();
    sub_232B351B0(v43, v44, v33);
    if (!v42)
    {
      sub_232B13790(v1, &qword_27DDC6D18, &qword_232CF7420);
    }
  }

  else
  {
    v45 = sub_232B5EFF4();
    sub_232B5E728(v45, v46, v47);
  }

  v48 = sub_232B3B8DC();
  if (v48)
  {
    v109 = v48;
    v49 = v115;
    v50 = v114[8];
    sub_232B5D6C0(v115 + v50, v30, &qword_27DDC6F10, &unk_232CF8420);
    v51 = sub_232B12480(v30, 1, v21);
    sub_232B13790(v30, &qword_27DDC6F10, &unk_232CF8420);
    if (v51 == 1)
    {
      v108 = 0;
      v52 = v49;
      v53 = v118;
    }

    else
    {
      v54 = v49 + v50;
      v55 = v121;
      sub_232B5D6C0(v54, v121, &qword_27DDC6F10, &unk_232CF8420);
      sub_232B351B0(v55, 1, v21);
      v52 = v49;
      v53 = v118;
      if (v42)
      {
        v58 = v122;
        sub_232CE9330();
        v56 = *(v21 + 20);
        if (qword_2814E2300 != -1)
        {
          sub_232B5EFA8(&qword_2814E2300);
        }

        *(v58 + v56) = qword_2814E2308;
        v57 = sub_232B12480(v55, 1, v21);

        if (v57 != 1)
        {
          sub_232B13790(v55, &qword_27DDC6F10, &unk_232CF8420);
        }
      }

      else
      {
        v58 = v122;
        sub_232B5E728(v55, v122, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      }

      v108 = sub_232B594E8(v58);
    }

    if (*(v52 + v114[9] + 8))
    {

      sub_232B5EFF4();
      sub_232CE8BD0();
    }

    else
    {
      sub_232CE8C00();
      sub_232B55484();
      sub_232B12504(v59, v60, v61, v62);
    }

    v63 = *v52;
    v64 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v65 = *(v63 + 16);
    if (v65)
    {
      v66 = v63 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
      v116 = *(v123 + 72);
      do
      {
        v67 = v124;
        sub_232B5EEF4(v66, v124, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        v68 = v67;
        v69 = v125;
        sub_232B5EEF4(v68, v125, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        sub_232B5EEF4(v69, v53, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        v70 = (v53 + v117[5]);
        v71 = v70[1];
        if (v71)
        {
          v72 = *v70;
          v122 = v71;
          v123 = v72;
        }

        else
        {
          v122 = 0xE000000000000000;
          v123 = 0;
        }

        v73 = (v53 + v117[6]);
        v74 = v73[1];
        if (v74)
        {
          v75 = *v73;
          v120 = v74;
          v121 = v75;
        }

        else
        {
          v120 = 0xE000000000000000;
          v121 = 0;
        }

        v76 = (v53 + v117[7]);
        v77 = v76[1];
        if (v77)
        {
          v119 = *v76;
          v78 = v77;
        }

        else
        {
          v119 = 0;
          v78 = 0xE000000000000000;
        }

        v79 = (v53 + v117[8]);
        if (v79[1])
        {
          v80 = *v79;
          v81 = v79[1];
        }

        else
        {
          v80 = 0;
          v81 = 0xE000000000000000;
        }

        v82 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

        DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v123, v122, v121, v120, v119, v78, v80, v81);
        sub_232B5EF50();
        v53 = v118;
        sub_232B5D70C(v118, v83);
        sub_232B5D70C(v125, v82);
        v84 = sub_232B5D70C(v124, v82);
        MEMORY[0x238391D50](v84);
        sub_232B5F018();
        if (v85)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v66 += v116;
        --v65;
      }

      while (v65);
      v64 = v126;
      v52 = v115;
    }

    v86 = sub_232B26B10();
    v88 = v111;
    v87 = v112;
    v89 = v113;
    v90 = v110;
    if (!v86)
    {

      v64 = 0;
    }

    v91 = v114;
    v92 = (v52 + v114[7]);
    v93 = v52;
    v94 = *v92;
    v95 = v92[1];
    sub_232B5D6C0(v89, v90, &qword_27DDC6AD8, &unk_232CF82F0);
    v96 = (v93 + v91[10]);
    if (v96[1])
    {
      v97 = *v96;
      v98 = v96[1];
    }

    else
    {
      v97 = 0;
      v98 = 0xE000000000000000;
    }

    if (*(v115 + v114[11] + 8))
    {
      sub_232CE8D10();
      sub_232B55484();
      sub_232B12504(v99, v100, v101, v102);
    }

    else
    {

      sub_232CE8CA0();
      sub_232CE8D10();
      sub_232B351FC();
      sub_232B12504(v103, v104, v105, v106);
    }

    v107 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v109, v94, v95, v108, v90, v97, v98, v88, v64);
    sub_232B5D70C(v87, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    sub_232B13790(v89, &qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B5D70C(v115, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  }

  else
  {
    sub_232B5D70C(v112, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    sub_232B5D70C(v115, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  }

  sub_232B5F02C();
}

void DUDocumentUpdate.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  sub_232B5F048();
  v4 = v3;
  v6 = v5;
  v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v7);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232B2D108();
  v139 = v9;
  v10 = sub_232B554F0();
  v144 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(v10);
  sub_232B48F0C();
  v148 = v11;
  MEMORY[0x28223BE20](v12);
  sub_232B20714();
  v145 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  v152 = &v133 - v15;
  sub_232B20600();
  MEMORY[0x28223BE20](v16);
  sub_232B55558();
  v151 = v17;
  v18 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v19 = sub_232B2D120(v18);
  MEMORY[0x28223BE20](v19);
  sub_232B20714();
  v140 = v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232B55558();
  v142 = v22;
  v23 = sub_232B554F0();
  v150 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v23);
  sub_232B13F24();
  MEMORY[0x28223BE20](v24);
  sub_232B20704();
  v147 = v26 - v25;
  v27 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  v28 = sub_232B2D120(v27);
  MEMORY[0x28223BE20](v28);
  sub_232B20714();
  v146 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B55558();
  v149 = v31;
  v32 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v32);
  sub_232B2D114();
  MEMORY[0x28223BE20](v33);
  v34 = sub_232B5F064();
  sub_232B13F24();
  MEMORY[0x28223BE20](v35);
  sub_232B20704();
  v38 = v37 - v36;
  v39 = sub_232B124A8(&qword_27DDC7188, &qword_232CF8430);
  sub_232B2D120(v39);
  sub_232B2D114();
  MEMORY[0x28223BE20](v40);
  v42 = &v133 - v41;
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v47 = v46 - v45;
  v48 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v49);
  sub_232B20704();
  v52 = v51 - v50;
  (*(v43 + 16))(v47, v6, v4);
  v53 = v48;
  v54 = v4;
  if (swift_dynamicCast())
  {
    v55 = v6;
    v138 = v43;
    sub_232B351FC();
    sub_232B12504(v56, v57, v58, v53);
    sub_232B5E728(v42, v52, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    v59 = *(v53 + 24);
    v141 = v52;
    sub_232B5D6C0(v52 + v59, v2, &qword_27DDC6D18, &qword_232CF7420);
    v60 = sub_232B5F000();
    sub_232B351B0(v60, v61, v34);
    if (v62)
    {
      sub_232CE9330();
      sub_232B5F00C(v34[5]);
      sub_232B5F00C(v34[6]);
      sub_232B5F00C(v34[7]);
      sub_232B5F00C(v34[8]);
      sub_232B5F00C(v34[9]);
      v63 = sub_232B5F000();
      sub_232B351B0(v63, v64, v34);
      v68 = v138;
      v69 = v145;
      v70 = v150;
      if (!v62)
      {
        sub_232B13790(v2, &qword_27DDC6D18, &qword_232CF7420);
      }
    }

    else
    {
      sub_232B5E728(v2, v38, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
      v68 = v138;
      v69 = v145;
      v70 = v150;
    }

    v71 = sub_232B3B8DC();
    if (v71)
    {
      v134 = v71;
      v137 = v53;
      v72 = *(v53 + 32);
      v73 = v141;
      v74 = v149;
      sub_232B5D6C0(v141 + v72, v149, &qword_27DDC6F10, &unk_232CF8420);
      v75 = sub_232B12480(v74, 1, v70);
      v76 = sub_232B2080C();
      sub_232B13790(v76, v77, &unk_232CF8420);
      if (v75 == 1)
      {
        v133 = 0;
        v78 = v73;
      }

      else
      {
        v79 = v73 + v72;
        v80 = v146;
        sub_232B5D6C0(v79, v146, &qword_27DDC6F10, &unk_232CF8420);
        sub_232B351B0(v80, 1, v70);
        v78 = v73;
        if (v62)
        {
          v83 = v147;
          sub_232CE9330();
          v81 = *(v70 + 20);
          if (qword_2814E2300 != -1)
          {
            sub_232B5EFA8(&qword_2814E2300);
          }

          *(v83 + v81) = qword_2814E2308;
          v82 = sub_232B12480(v80, 1, v70);

          if (v82 != 1)
          {
            sub_232B13790(v80, &qword_27DDC6F10, &unk_232CF8420);
          }
        }

        else
        {
          v83 = v147;
          sub_232B5E728(v80, v147, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        }

        v133 = sub_232B594E8(v83);
      }

      v84 = *(v78 + v137[9] + 8);
      v135 = v55;
      v136 = v54;
      if (v84)
      {

        sub_232B5EFF4();
        sub_232CE8BD0();
      }

      else
      {
        sub_232CE8C00();
        sub_232B55484();
        sub_232B12504(v85, v86, v87, v88);
      }

      v89 = *v78;
      v90 = MEMORY[0x277D84F90];
      v153 = MEMORY[0x277D84F90];
      v91 = *(v89 + 16);
      if (v91)
      {
        v92 = v89 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
        v143 = *(v148 + 72);
        do
        {
          v146 = v91;
          v93 = v151;
          sub_232B5EEF4(v92, v151, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          v94 = v93;
          v95 = v152;
          sub_232B5EEF4(v94, v152, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          sub_232B5EEF4(v95, v69, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          v96 = (v69 + v144[5]);
          if (v96[1])
          {
            v97 = *v96;
            v98 = v96[1];
          }

          else
          {
            v97 = 0;
            v98 = 0xE000000000000000;
          }

          v99 = (v69 + v144[6]);
          v100 = v99[1];
          if (v100)
          {
            v101 = *v99;
            v102 = v100;
          }

          else
          {
            v101 = 0;
            v102 = 0xE000000000000000;
          }

          v147 = v102;
          v148 = v101;
          v149 = v98;
          v150 = v97;
          v103 = (v69 + v144[7]);
          if (v103[1])
          {
            v104 = *v103;
            v105 = v103[1];
          }

          else
          {
            v104 = 0;
            v105 = 0xE000000000000000;
          }

          v106 = (v69 + v144[8]);
          if (v106[1])
          {
            v107 = *v106;
            v108 = v106[1];
          }

          else
          {
            v107 = 0;
            v108 = 0xE000000000000000;
          }

          v109 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

          DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v150, v149, v148, v147, v104, v105, v107, v108);
          sub_232B5EF50();
          sub_232B5D70C(v152, v110);
          v69 = v145;
          sub_232B5D70C(v145, v109);
          v111 = sub_232B5D70C(v151, v109);
          MEMORY[0x238391D50](v111);
          sub_232B5F018();
          if (v112)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v92 += v143;
          v91 = v146 - 1;
        }

        while (v146 != 1);
        v90 = v153;
        v78 = v141;
      }

      v113 = sub_232B26B10();
      v115 = v135;
      v114 = v136;
      if (!v113)
      {

        v90 = 0;
      }

      v116 = v137;
      v117 = (v78 + v137[7]);
      v118 = *v117;
      v119 = v117[1];
      sub_232B5D6C0(v142, v140, &qword_27DDC6AD8, &unk_232CF82F0);
      v120 = (v78 + v116[10]);
      if (v120[1])
      {
        v121 = *v120;
        v122 = v120[1];
      }

      else
      {
        v121 = 0;
        v122 = 0xE000000000000000;
      }

      if (*(v141 + v137[11] + 8))
      {
        sub_232CE8D10();
        v123 = v139;
        sub_232B55484();
        sub_232B12504(v124, v125, v126, v127);
      }

      else
      {

        v123 = v139;
        sub_232CE8CA0();
        sub_232CE8D10();
        sub_232B351FC();
        sub_232B12504(v128, v129, v130, v131);
      }

      v132 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
      DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v134, v118, v119, v133, v140, v121, v122, v123, v90);
      (*(v138 + 8))(v115, v114);
      sub_232B13790(v142, &qword_27DDC6AD8, &unk_232CF82F0);
      sub_232B5EF80();
    }

    else
    {
      (*(v68 + 8))(v6, v54);
      sub_232B5EF80();
    }
  }

  else
  {
    (*(v43 + 8))(v6, v4);
    sub_232B55484();
    sub_232B12504(v65, v66, v67, v53);
    sub_232B13790(v42, &qword_27DDC7188, &qword_232CF8430);
  }

  sub_232B5F02C();
}

uint64_t sub_232B5D6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24();
  v5 = sub_232B2080C();
  v6(v5);
  return v4;
}

uint64_t sub_232B5D70C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_232B5D764(uint64_t a1, uint64_t a2)
{
  sub_232B5F048();
  v149 = v2;
  v4 = v3;
  v5 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v10);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232B2D108();
  v147 = v12;
  sub_232B554F0();
  v148 = sub_232CE8D10();
  sub_232B48F0C();
  v140 = v13;
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  sub_232B5EFC8(v16 - v15);
  v17 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v17);
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  sub_232B2D108();
  v145 = v19;
  sub_232B554F0();
  v146 = sub_232CE8C00();
  sub_232B48F0C();
  v138 = v20;
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  sub_232B5EFC8(v23 - v22);
  v24 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  sub_232B2D120(v24);
  sub_232B2D114();
  MEMORY[0x28223BE20](v25);
  sub_232B2D108();
  v142 = v26;
  v27 = sub_232B554F0();
  v28 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v27);
  sub_232B13F24();
  MEMORY[0x28223BE20](v29);
  sub_232B20714();
  v132 = v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  v141 = &v130 - v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  sub_232B55558();
  sub_232B5EFC8(v34);
  v35 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v35);
  sub_232B2D114();
  MEMORY[0x28223BE20](v36);
  v38 = &v130 - v37;
  v39 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v40);
  sub_232B20714();
  v134 = v41;
  sub_232B20600();
  MEMORY[0x28223BE20](v42);
  v44 = &v130 - v43;
  MEMORY[0x28223BE20](v45);
  sub_232B55558();
  sub_232B5EFC8(v46);
  *v4 = MEMORY[0x277D84F90];
  v47 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  sub_232CE9330();
  v48 = v47[6];
  sub_232B55484();
  sub_232B12504(v49, v50, v51, v39);
  v52 = (v4 + v47[7]);
  *v52 = 0;
  v52[1] = 0;
  v130 = v47[8];
  sub_232B55484();
  v144 = v28;
  sub_232B12504(v53, v54, v55, v28);
  v56 = (v4 + v47[9]);
  *v56 = 0;
  v56[1] = 0;
  v135 = v56;
  v57 = (v4 + v47[10]);
  *v57 = 0;
  v57[1] = 0;
  v143 = v57;
  v58 = v4 + v47[11];
  *v58 = 0;
  v136 = v58;
  v58[8] = 1;
  v59 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  v60 = v149;
  sub_232B13F74(v149 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, &v156);
  v61 = *(v60 + v59);
  sub_232B3BF20(v44);

  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v62, v63, v64, v39);
    v65 = v133;
    sub_232B5E728(v38, v133, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    v66 = v65;
    v67 = v134;
    sub_232B5E728(v66, v134, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    sub_232B13790(v4 + v48, &qword_27DDC6D18, &qword_232CF7420);
    sub_232B5E728(v67, v4 + v48, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    sub_232B351FC();
    sub_232B12504(v68, v69, v70, v39);
  }

  else
  {
    sub_232B55484();
    sub_232B12504(v71, v72, v73, v39);
    sub_232B13790(v38, &qword_27DDC6D18, &qword_232CF7420);
  }

  v74 = v149;
  v75 = (v149 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody);
  sub_232B13F74(v149 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody, &v155);
  v76 = v75[1];
  v77 = v142;
  if (v76)
  {
    *v52 = *v75;
    v52[1] = v76;
  }

  v78 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74(v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document, &v154);
  v79 = *(v74 + v78);
  if (v79)
  {

    v80 = v79;
    sub_232BF4C38(v141);

    v81 = v144;
    v82 = swift_dynamicCast();
    sub_232B12504(v77, v82 ^ 1u, 1, v81);
    sub_232B351B0(v77, 1, v81);
    v83 = v148;
    v84 = v146;
    if (!v85)
    {
      v86 = v77;
      v87 = v131;
      sub_232B5E728(v86, v131, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v88 = v87;
      v89 = v132;
      sub_232B5E728(v88, v132, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v90 = v130;
      sub_232B13790(v4 + v130, &qword_27DDC6F10, &unk_232CF8420);
      sub_232B5E728(v89, v4 + v90, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      sub_232B351FC();
      sub_232B12504(v91, v92, v93, v81);
      goto LABEL_11;
    }
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v94, v95, v96, v144);
    v83 = v148;
    v84 = v146;
  }

  sub_232B13790(v77, &qword_27DDC6F10, &unk_232CF8420);
LABEL_11:
  v97 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_associatedFileURL;
  sub_232B13F74(v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_associatedFileURL, &v153);
  v98 = v74 + v97;
  v99 = v145;
  sub_232B5D6C0(v98, v145, &qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B351B0(v99, 1, v84);
  if (v85)
  {
    sub_232B13790(v99, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    v100 = v138;
    v101 = v137;
    (*(v138 + 32))(v137, v99, v84);
    v102 = sub_232CE8B60();
    v104 = v103;
    (*(v100 + 8))(v101, v84);
    v105 = v135;
    *v135 = v102;
    v105[1] = v104;
  }

  v106 = (v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType);
  sub_232B13F74(v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType, &v152);
  v107 = *v106;
  v108 = v106[1];
  v109 = v143;
  *v143 = v107;
  v109[1] = v108;
  v110 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_updateTimestamp;
  sub_232B13F74(v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_updateTimestamp, &v151);
  v111 = v74 + v110;
  v112 = v147;
  sub_232B5D6C0(v111, v147, &qword_27DDC6A80, &qword_232CF6D30);
  v113 = sub_232B5F000();
  sub_232B351B0(v113, v114, v83);
  if (v85)
  {

    sub_232B13790(v112, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v115 = v140;
    v116 = v139;
    (*(v140 + 32))(v139, v112, v83);

    sub_232CE8CB0();
    v118 = v117;
    (*(v115 + 8))(v116, v83);
    v119 = v136;
    *v136 = v118;
    *(v119 + 8) = 0;
  }

  v120 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  sub_232B13F74(v74 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes, &v150);
  v121 = *(v74 + v120);
  if (v121)
  {
    v149 = v4;
    v122 = sub_232B26B10();

    v123 = 0;
    v124 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v122 == v123)
      {

        *v149 = v124;
        goto LABEL_31;
      }

      if ((v121 & 0xC000000000000001) != 0)
      {
        v125 = MEMORY[0x2383922C0](v123, v121);
      }

      else
      {
        if (v123 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v125 = *(v121 + 8 * v123 + 32);
      }

      v126 = v125;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      sub_232B5AC08(v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B368EC();
        v124 = v128;
      }

      v127 = *(v124 + 16);
      if (v127 >= *(v124 + 24) >> 1)
      {
        sub_232B368EC();
        v124 = v129;
      }

      *(v124 + 16) = v127 + 1;
      sub_232B5E728(v9, v124 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v127, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
      ++v123;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_31:
    sub_232B5F02C();
  }
}

uint64_t sub_232B5E170@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate(0);
  v3 = sub_232B2D120(v2);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B5D764(v7, v8);
  sub_232B5C3A8(v6);
  v10 = v9;
  result = sub_232B124A8(&qword_27DDC7190, &qword_232CF8438);
  a1[3] = result;
  *a1 = v10;
  return result;
}

void sub_232B5E264(void *a1)
{
  type metadata accessor for DUDocumentUpdate(0);
  sub_232B5EF68();
  sub_232B5EEAC(v2, v3, &protocol conformance descriptor for DUDocumentUpdate);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    [a1 encodeObject:v5 forKey:v6];
  }
}

uint64_t DUDocumentUpdate.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5EF68();
  sub_232B5EEAC(v2, v3, &protocol conformance descriptor for DUDocumentUpdate);
  sub_232CE98B0();

  v4 = v6;
  if (!v6)
  {
LABEL_5:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id DUDocumentUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUpdate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B5E728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

void sub_232B5E7A8(uint64_t a1)
{
  sub_232B5EE58(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_232B5EE58(319, &qword_2814E25E0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_232B5EE58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232B5EEAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B5EEF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_232B13F24();
  v4 = sub_232B2080C();
  v5(v4);
  return a2;
}

uint64_t sub_232B5EF80()
{
  v2 = *(v0 - 208);

  return sub_232B5D70C(v2, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
}

uint64_t sub_232B5EFA8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_232B5EFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_232B124A8(a3, a4);
}

void sub_232B5F00C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B5F064()
{

  return type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier(0);
}

void sub_232B5F0CC(uint64_t a1)
{
  sub_232B5F16C(319);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B5F16C(uint64_t a1)
{
  if (!qword_27DDC71B0)
  {
    type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(255);
    v1 = sub_232CE9C70();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC71B0);
    }
  }
}

void sub_232B5F21C(uint64_t a1)
{
  sub_232B5F2A0();
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B5F2A0()
{
  if (!qword_27DDC71C8)
  {
    v0 = sub_232CEA030();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC71C8);
    }
  }
}

uint64_t sub_232B5F2F0@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  return sub_232CE9330();
}

uint64_t sub_232B5F330@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  a1[5] = sub_232B60768();
  a1[6] = sub_232B60768();
  type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  return sub_232CE9330();
}

uint64_t sub_232B5F3B8()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F80);
  sub_232B135C4(v0, qword_27DDD4F80);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_232CF6460;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "values";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_232CE9600();
}

uint64_t sub_232B5F524()
{
  sub_232B60720();
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_232B2F148();
      sub_232CE93F0();
    }
  }

  return result;
}

uint64_t sub_232B5F578()
{
  sub_232B606E4();
  if (!*(*v0 + 16) || (sub_232B60650(), result = sub_232CE9530(), !v1))
  {
    type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
    sub_232B2F148();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B5F5F0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_232B32944(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232CE9340();
  sub_232B60664();
  v4 = sub_232B60458(v2, v3, MEMORY[0x277D216D0]);
  return sub_232B606FC(v4) & 1;
}

uint64_t sub_232B5F6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B60458(&qword_27DDC7210, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF8778);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B5F768(uint64_t a1)
{
  v2 = sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF87B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B5F830(uint64_t a1, uint64_t a2)
{
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF87B0);

  return sub_232CE9500();
}

uint64_t sub_232B5F8B0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F98);
  sub_232B135C4(v0, qword_27DDD4F98);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF74B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modelName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hiddenLayerSize";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nHiddenLayers";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sequenceSize";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pooledHiddenLayerValues";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hiddenLayerValues";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B5FB74()
{
  sub_232B60720();
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      case 2:
      case 3:
      case 4:
        sub_232B2F148();
        sub_232CE9440();
        break;
      case 5:
        v3 = sub_232B13EE0();
        sub_232B5FC30(v3, v4, v5, v6);
        break;
      case 6:
        v7 = sub_232B13EE0();
        sub_232B5FD28(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B5FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232CE9300();
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF87B0);
  sub_232B60458(&qword_27DDC7200, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF86E8);
  return sub_232CE9380();
}

uint64_t sub_232B5FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232CE9300();
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF87B0);
  sub_232B60458(&qword_27DDC7200, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput, &unk_232CF86E8);
  return sub_232CE9380();
}

uint64_t sub_232B5FE20()
{
  sub_232B606E4();
  v6 = v1[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (v2 = v0, result = sub_232CE95C0(), !v0))
  {
    if (!v4[2] || (sub_232B60650(), result = sub_232CE9590(), !v2))
    {
      if (!v4[3] || (sub_232B60650(), result = sub_232CE9590(), !v2))
      {
        if (!v4[4] || (sub_232B60650(), result = sub_232CE9590(), !v2))
        {
          v9 = v4[5];
          if (!*(v9 + 16) || (v25 = sub_232CE9300(), type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0), sub_232B6067C(), sub_232B60458(v10, v5, &unk_232CF87B0), v11 = sub_232B60694(&qword_27DDC7200), result = sub_232B606BC(v9, 5, v12, v13, MEMORY[0x277D21668], v14, v11, v15, v3, v23, v24, v25), !v2))
          {
            v16 = v4[6];
            if (!*(v16 + 16) || (v26 = sub_232CE9300(), type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0), sub_232B6067C(), sub_232B60458(v17, v5, &unk_232CF87B0), v18 = sub_232B60694(&qword_27DDC7200), result = sub_232B606BC(v16, 6, v19, v20, MEMORY[0x277D21668], v21, v18, v22, v3, v23, v24, v26), !v2))
            {
              type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
              sub_232B2F148();
              return sub_232CE9320();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B6001C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  sub_232B323BC(a1[5], a2[5]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_232B323BC(a1[6], a2[6]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  sub_232CE9340();
  sub_232B60664();
  v9 = sub_232B60458(v7, v8, MEMORY[0x277D216D0]);
  return sub_232B606FC(v9) & 1;
}

uint64_t sub_232B60108(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_232CEA820();
  a1(0);
  sub_232B60458(a2, a3, a4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B601E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B60458(&qword_27DDC7218, type metadata accessor for DocumentUnderstanding_EncodingModelOutput, &unk_232CF8610);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B60280(uint64_t a1)
{
  v2 = sub_232B60458(&qword_27DDC71D8, type metadata accessor for DocumentUnderstanding_EncodingModelOutput, &unk_232CF8648);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B60348(uint64_t a1, uint64_t a2)
{
  sub_232B60458(&qword_27DDC71D8, type metadata accessor for DocumentUnderstanding_EncodingModelOutput, &unk_232CF8648);

  return sub_232CE9500();
}

uint64_t sub_232B60458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232B60694(unint64_t *a1)
{

  return sub_232B60458(a1, v1, &unk_232CF86E8);
}

uint64_t sub_232B606BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return MEMORY[0x28217E468](a1, a2, a12, v14, a5, v13, a7, v12);
}

uint64_t sub_232B606FC(uint64_t a1)
{

  return sub_232CE9CF0();
}

uint64_t sub_232B60754@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_232B60768()
{

  return sub_232CE9C60();
}

uint64_t sub_232B60788(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v31 = a3;
  v7 = a7;
  v8 = a6;
  v34 = a5;
  while (1)
  {
    v11 = a1 <= a2;
    if (a3 > 0)
    {
      v11 = a1 >= a2;
    }

    if (v11)
    {
    }

    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      v12 = ((a1 + a3) >> 63) ^ 0x8000000000000000;
    }

    v13 = a1 + v7;
    if (__OFADD__(a1, v7))
    {
      break;
    }

    if (v13 < a1)
    {
      goto LABEL_28;
    }

    if (a1 < 0)
    {
      goto LABEL_29;
    }

    v14 = *(v8 + 16);
    if (v14 < a1 || v14 < v13)
    {
      goto LABEL_30;
    }

    v36 = v12;
    v16 = *a5;
    swift_unknownObjectRetain();
    v17 = v8;
    if (v14 != v7)
    {
      sub_232BD31DC(v8, v8 + 32, a1, (2 * v13) | 1);
      v17 = v29;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v18 = a4;
    v19 = *a4;
    v37 = *a4;
    v20 = sub_232B20520(v16);
    if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
    {
      goto LABEL_31;
    }

    v22 = v20;
    v23 = v21;
    sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
    if (sub_232CEA5C0())
    {
      v24 = sub_232B20520(v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_34;
      }

      v22 = v24;
    }

    if (v23)
    {
      *(v37[7] + 8 * v22) = v17;
    }

    else
    {
      v37[(v22 >> 6) + 8] |= 1 << v22;
      *(v37[6] + 8 * v22) = v16;
      *(v37[7] + 8 * v22) = v17;
      v26 = v37[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_33;
      }

      v37[2] = v28;
    }

    *v18 = v37;
    v8 = a6;
    a5 = v34;
    if (__OFADD__(*v34, 1))
    {
      goto LABEL_32;
    }

    a4 = v18;
    ++*v34;
    a1 = v36;
    a3 = v31;
    v7 = a7;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

id DUEncodingModelOutput.__allocating_init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_232B66BC0();
  v15 = objc_allocWithZone(v7);
  return DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(v12, v11, v10, v9, v8, a6, a7);
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_232B66BC0();
  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v13 = 0;
  v13[8] = 1;
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  *&v7[v14] = sub_232CE9C60();
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v16 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v16 = v12;
  *(v16 + 1) = v11;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v10;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v9;
  *v13 = v8;
  v13[8] = 0;
  swift_beginAccess();
  *&v7[v14] = a6;

  *&v7[v15] = a7;

  v20.receiver = v7;
  v20.super_class = type metadata accessor for DUEncodingModelOutput();
  return objc_msgSendSuper2(&v20, sel_init);
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:pooledFeatureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  *&v6[v13] = sub_232CE9C60();
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v14 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = a3;
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = a4;
  v15 = type metadata accessor for DUEncodingModelOutput();
  v16 = sub_232B60D5C(a3, a4);
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    *&v6[v13] = v17;

    v22.receiver = v6;
    v22.super_class = v15;
    v18 = objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {

    v19 = sub_232B2080C();
    sub_232B66C14(v19, v20);
    return 0;
  }

  return v18;
}

uint64_t sub_232B60D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_232CEA1F0();
  v7 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    sub_232B13790(v6, &qword_27DDC7038, &unk_232CF7F40);
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v8 = sub_232CE9A30();
    sub_232B135C4(v8, qword_2814E3DA8);
    v9 = sub_232CE9A00();
    v10 = sub_232CEA1C0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_232B02000, v9, v10, "Unable to convert model output to scalar array", v11, 2u);
      MEMORY[0x238393870](v11, -1, -1);
    }

    return 0;
  }

  sub_232B48E4C(&qword_27DDC7040, &qword_27DDC6FA0, &unk_232CF7CB0, MEMORY[0x277CBFD28]);
  v13 = sub_232CE9A80();
  (*(*(v7 - 8) + 8))(v6, v7);
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = *(v13 + 16);
  if (v14 != a1 * a2)
  {
    if (qword_2814DFA50 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v15 = sub_232CE9C60();
  v22 = 0;
  v23 = v15;
  if (!a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_13:
    v16 = sub_232CE9A30();
    sub_232B135C4(v16, qword_2814E3DA8);

    v17 = sub_232CE9A00();
    v18 = sub_232CEA1C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218496;
      v20 = *(v13 + 16);

      *(v19 + 4) = v20;

      *(v19 + 12) = 2048;
      *(v19 + 14) = a2;
      *(v19 + 22) = 2048;
      *(v19 + 24) = a1;
      _os_log_impl(&dword_232B02000, v17, v18, "Model output of length: %ld does not conform to expected size [%ld, %ld]", v19, 0x20u);
      MEMORY[0x238393870](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  sub_232B60788(0, v14, a1, &v23, &v22, v13, a1);
  return v23;
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:featureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  *&v7[v15] = sub_232CE9C60();
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v17 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v17 = a1;
  *(v17 + 1) = a2;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = a3;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = a4;
  *v14 = a5;
  v14[8] = 0;
  v18 = type metadata accessor for DUEncodingModelOutput();
  v19 = sub_232B61308(a3, a4, a5);
  if (v19)
  {
    *&v7[v16] = v19;

    v22.receiver = v7;
    v22.super_class = v18;
    v20 = objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {

    sub_232B66C14(v7, v18);
    return 0;
  }

  return v20;
}

void *sub_232B61308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  sub_232CEA1F0();
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    sub_232B13790(v8, &qword_27DDC7038, &unk_232CF7F40);
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v16 = sub_232CE9A30();
    sub_232B135C4(v16, qword_2814E3DA8);
    v17 = sub_232CE9A00();
    v18 = sub_232CEA1C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_232B02000, v17, v18, "Unable to convert model output to MLShapedArray", v19, 2u);
      MEMORY[0x238393870](v19, -1, -1);
    }

    return 0;
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_232CE9A40();
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF8180;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;
  v21 = sub_232B34EB4();

  swift_setDeallocating();
  if ((v21 & 1) == 0)
  {
    if (qword_2814DFA50 == -1)
    {
LABEL_11:
      v24 = sub_232CE9A30();
      sub_232B135C4(v24, qword_2814E3DA8);
      (*(v10 + 16))(v12, v15, v9);
      v25 = sub_232CE9A00();
      v26 = sub_232CEA1C0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v27 = 136315906;
        v40 = v25;
        sub_232CE9A40();
        v36 = MEMORY[0x238391D80]();
        v39 = a3;
        v29 = v28;

        v37 = a1;
        v30 = *(v10 + 8);
        v38 = v26;
        v30(v12, v9);
        v31 = sub_232BAD2D4(v36, v29, &v42);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2048;
        *(v27 + 14) = a2;
        *(v27 + 22) = 2048;
        v32 = v40;
        *(v27 + 24) = v39;
        *(v27 + 32) = 2048;
        *(v27 + 34) = v37;
        _os_log_impl(&dword_232B02000, v32, v38, "Model output of shape: %s does not conform to expected size [%ld, %ld, %ld]", v27, 0x2Au);
        v33 = v41;
        sub_232B2040C(v41);
        MEMORY[0x238393870](v33, -1, -1);
        MEMORY[0x238393870](v27, -1, -1);
      }

      else
      {

        v30 = *(v10 + 8);
        v30(v12, v9);
      }

      v30(v15, v9);
      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v22 = sub_232CE9C60();
  v42 = v22;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v22);
  *(&v35 - 2) = &v42;
  *(&v35 - 1) = v15;
  sub_232B1D268(sub_232B66AB4, (&v35 - 4), 0, a2);
  v23 = v42;
  (*(v10 + 8))(v15, v9);
  return v23;
}

void sub_232B61878(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_232B124A8(&qword_27DDC72F8, &unk_232CFAAE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *a1;
  sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  sub_232CE9A60();
  sub_232B48E4C(&qword_27DDC7300, &qword_27DDC72F8, &unk_232CFAAE0, MEMORY[0x277CBFD68]);
  v9 = sub_232CE9A80();
  (*(v5 + 8))(v7, v4);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  sub_232B1FE44(v9, v8);
  *a2 = v11;
}

void *sub_232B619FC()
{
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v1 = sub_232CE9C60();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues, v26);
  v3 = *(v0 + v2) + 64;
  sub_232B34F88();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v24 = v9;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_7:
    v12 = *(*(v24 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v6)))));
    type metadata accessor for DUVectorUtils();

    v25 = sub_232C18940(v13);

    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_232B20520(v12);
    if (__OFADD__(v1[2], (v15 & 1) == 0))
    {
      goto LABEL_17;
    }

    v16 = v14;
    v17 = v15;
    sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
    if (sub_232CEA5C0())
    {
      v18 = sub_232B20520(v12);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v16 = v18;
    }

    v6 &= v6 - 1;
    if (v17)
    {
      *(v1[7] + 8 * v16) = v25;

      v10 = v11;
    }

    else
    {
      sub_232B66BE0(&v1[v16 >> 6]);
      *(v1[6] + 8 * v16) = v12;
      *(v1[7] + 8 * v16) = v25;
      v20 = v1[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v1[2] = v22;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v1;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232B61C3C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74(v0 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues, v9);

  v3 = sub_232B61DD0(v2);
  v5 = v4;

  v6 = MEMORY[0x277D84F90];
  if ((v5 & 1) == 0)
  {
    v7 = sub_232B1E270(v3, *(v0 + v1));
    if (v7)
    {
      return v7;
    }
  }

  return v6;
}

uint64_t sub_232B61CC8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (1)
    {
      v5 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return 0;
      }

      v11 = *(a1 + 72 + 8 * v10);
      v9 += 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) + v9;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_232B61DD0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (1)
    {
      v5 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        return 0;
      }

      v11 = *(a1 + 72 + 8 * v10);
      v9 += 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) + v9;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_232B61ED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

id sub_232B61F94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
  MEMORY[0x28223BE20](v4);
  v92 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v91 = &v86 - v7;
  v8 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v86 - v14);
  v16 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v21 = sub_232CE9C60();
  v100 = v20;
  *&v2[v20] = v21;
  v87 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  v88 = a1;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  sub_232B66A58(a1, v18, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
  v22 = v18[1];
  v23 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v23 = *v18;
  *(v23 + 1) = v22;
  v24 = v18[3];
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v18[2];
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v24;
  v25 = v18[4];
  v26 = v18[5];
  v89 = v18;
  *v19 = v25;
  v19[8] = 0;
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v90 = (v28 + 63) >> 6;

  v94 = v26;

  v31 = 0;
  v99 = v4;
  v95 = v15;
  v96 = v12;
  v97 = v26 + 64;
  if (v30)
  {
    while (1)
    {
      v32 = v31;
LABEL_9:
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v34 = v33 | (v32 << 6);
      v35 = v93;
      v36 = *(*(v94 + 48) + 8 * v34);
      sub_232B66A58(*(v94 + 56) + *(v98 + 72) * v34, v93, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v37 = *(v4 + 48);
      *v12 = v36;
      sub_232B66734(v35, v12 + v37, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v38 = 0;
LABEL_10:
      sub_232B12504(v12, v38, 1, v4);
      sub_232B34574(v12, v15);
      if (sub_232B12480(v15, 1, v4) == 1)
      {
        break;
      }

      v39 = *v15;
      v40 = *(v4 + 48);
      v41 = *(v15 + v40);

      sub_232B66790(v15 + v40, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v42 = v100;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v101 = *&v2[v42];
      v43 = v101;
      *&v2[v42] = 0x8000000000000000;
      v44 = sub_232B20520(v39);
      if (__OFADD__(v43[2], (v45 & 1) == 0))
      {
        goto LABEL_44;
      }

      v46 = v44;
      v47 = v45;
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      if (sub_232CEA5C0())
      {
        v48 = sub_232B20520(v39);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_52;
        }

        v46 = v48;
      }

      v27 = v97;
      v50 = v101;
      if (v47)
      {
        *(v101[7] + 8 * v46) = v41;
      }

      else
      {
        v101[(v46 >> 6) + 8] |= 1 << v46;
        *(v50[6] + 8 * v46) = v39;
        *(v50[7] + 8 * v46) = v41;
        v51 = v50[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_51;
        }

        v50[2] = v53;
      }

      *&v2[v100] = v50;
      swift_endAccess();
      v4 = v99;
      v15 = v95;
      v12 = v96;
      if (!v30)
      {
        goto LABEL_5;
      }
    }

    v54 = v89[6];
    v55 = *(v54 + 16);
    v100 = MEMORY[0x277D84F90];
    if (!v55)
    {
LABEL_42:
      v82 = sub_232B63228(v100, &qword_27DDC72E0, &qword_232CF89B8, sub_232B66430);
      sub_232B66790(v89, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
      *&v2[v87] = v82;

      v83 = type metadata accessor for DUEncodingModelOutput();
      v103.receiver = v2;
      v103.super_class = v83;
      v84 = objc_msgSendSuper2(&v103, sel_init);
      sub_232B66790(v88, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
      return v84;
    }

    v86 = v2;
    v102 = MEMORY[0x277D84F90];
    sub_232B64B40(0, v55, 0);
    v100 = v102;
    v58 = sub_232B666F4(v54);
    v59 = 0;
    v60 = v54 + 64;
    v93 = v56;
    v94 = v55;
    v90 = v54 + 72;
    v95 = (v54 + 64);
    while ((v58 & 0x8000000000000000) == 0 && v58 < 1 << *(v54 + 32))
    {
      v61 = v58 >> 6;
      if ((*(v60 + 8 * (v58 >> 6)) & (1 << v58)) == 0)
      {
        goto LABEL_46;
      }

      if (*(v54 + 36) != v56)
      {
        goto LABEL_47;
      }

      v97 = v56;
      LODWORD(v96) = v57;
      v62 = *(v4 + 48);
      v63 = *(*(v54 + 48) + 8 * v58);
      v64 = v91;
      sub_232B66A58(*(v54 + 56) + *(v98 + 72) * v58, &v91[v62], type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v65 = v54;
      v66 = v92;
      *v92 = v63;
      v67 = *(v4 + 48);
      sub_232B66734(&v64[v62], v66 + v67, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v68 = *(v66 + v67);

      sub_232B13790(v66, &qword_27DDC6AB8, &unk_232CF6DF0);
      v102 = v100;
      v70 = *(v100 + 16);
      v69 = *(v100 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_232B64B40((v69 > 1), v70 + 1, 1);
        v100 = v102;
      }

      v71 = v100;
      *(v100 + 16) = v70 + 1;
      v72 = v71 + 16 * v70;
      *(v72 + 32) = v63;
      *(v72 + 40) = v68;
      v73 = 1 << *(v65 + 32);
      if (v58 >= v73)
      {
        goto LABEL_48;
      }

      v60 = v95;
      v74 = v95[v61];
      if ((v74 & (1 << v58)) == 0)
      {
        goto LABEL_49;
      }

      v54 = v65;
      if (*(v65 + 36) != v97)
      {
        goto LABEL_50;
      }

      v75 = v74 & (-2 << (v58 & 0x3F));
      if (v75)
      {
        v73 = __clz(__rbit64(v75)) | v58 & 0x7FFFFFFFFFFFFFC0;
        v76 = v94;
      }

      else
      {
        v77 = v61 << 6;
        v78 = v61 + 1;
        v79 = (v90 + 8 * v61);
        v76 = v94;
        while (v78 < (v73 + 63) >> 6)
        {
          v81 = *v79++;
          v80 = v81;
          v77 += 64;
          ++v78;
          if (v81)
          {
            sub_232B48E94(v58, v97, v96 & 1);
            v73 = __clz(__rbit64(v80)) + v77;
            goto LABEL_40;
          }
        }

        sub_232B48E94(v58, v97, v96 & 1);
      }

LABEL_40:
      v57 = 0;
      ++v59;
      v58 = v73;
      v56 = v93;
      v4 = v99;
      if (v59 == v76)
      {
        v2 = v86;
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v90)
      {
        v30 = 0;
        v38 = 1;
        goto LABEL_10;
      }

      v30 = *(v27 + 8 * v32);
      ++v31;
      if (v30)
      {
        v31 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

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
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

id DUEncodingModelOutput.init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v129 = a1;
  v5 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20714();
  v128 = v7;
  sub_232B20600();
  MEMORY[0x28223BE20](v8);
  v127 = (&v119 - v9);
  v10 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v136 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  sub_232B20704();
  v131 = v12 - v11;
  v13 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  MEMORY[0x28223BE20](v13 - 8);
  sub_232B20714();
  v134 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v133 = &v119 - v16;
  v17 = sub_232B124A8(&qword_27DDC7250, &qword_232CF8850);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v119 - v18;
  v20 = *(a2 - 8);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  v25 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v29 = (v28 - v27);
  v30 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v30 = 0;
  i = v30;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v32 = sub_232CE9C60();
  v135 = v31;
  *&v3[v31] = v32;
  v33 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v34 = v20;
  v35 = *(v20 + 16);
  v36 = v129;
  v35(v24);
  v137 = v19;
  sub_232B2080C();
  if (swift_dynamicCast())
  {
    v124 = v33;
    v125 = v34;
    v126 = a2;
    v37 = 1;
    v38 = v137;
    sub_232B12504(v137, 0, 1, v25);
    sub_232B66734(v38, v29, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
    v39 = v29[1];
    v40 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
    *v40 = *v29;
    *(v40 + 1) = v39;
    v41 = v29[3];
    *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v29[2];
    *&v3[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v41;
    v42 = v29[4];
    v43 = v29[5];
    v121 = v29;
    v44 = i;
    *i = v42;
    v44[8] = 0;
    v45 = (v43 + 64);
    v46 = 1 << *(v43 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v43 + 64);
    v123 = (v46 + 63) >> 6;

    v130 = v43;

    v49 = 0;
    v137 = v5;
    v50 = v135;
    for (i = (v43 + 64); ; v45 = i)
    {
      v51 = v134;
      if (!v48)
      {
        while (1)
        {
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v52 >= v123)
          {
            v48 = 0;
            v60 = 1;
            goto LABEL_12;
          }

          v48 = *&v45[8 * v52];
          ++v49;
          if (v48)
          {
            v49 = v52;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v52 = v49;
LABEL_11:
      v53 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v54 = v131;
      v55 = *(*(v130 + 48) + 8 * (v53 | (v52 << 6)));
      sub_232B66AF4();
      sub_232B66A58(v56, v54, v57);
      *v51 = v55;
      sub_232B66ADC();
      sub_232B66734(v54, v51 + v58, v59);
      v60 = 0;
LABEL_12:
      sub_232B12504(v51, v60, 1, v5);
      v61 = v133;
      sub_232B34574(v51, v133);
      if (sub_232B12480(v61, 1, v5) == 1)
      {
        break;
      }

      v62 = *v61;
      v63 = *(v5 + 48);
      v64 = *(v61 + v63);

      sub_232B66B3C();
      sub_232B66790(v61 + v63, v65);
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v138 = *&v3[v50];
      v37 = v3;
      *&v3[v50] = 0x8000000000000000;
      sub_232B20520(v62);
      sub_232B66BA0();
      if (__OFADD__(v68, v69))
      {
        goto LABEL_48;
      }

      v70 = v66;
      v71 = v67;
      sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
      if (sub_232CEA5C0())
      {
        v72 = sub_232B20520(v62);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_56;
        }

        v70 = v72;
      }

      v74 = v138;
      if (v71)
      {
        *(v138[7] + 8 * v70) = v64;
      }

      else
      {
        sub_232B66BE0(&v138[v70 >> 6]);
        *(v74[6] + 8 * v70) = v62;
        *(v74[7] + 8 * v70) = v64;
        v75 = v74[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_55;
        }

        v74[2] = v77;
      }

      v3 = v37;
      v50 = v135;
      *(v37 + v135) = v74;
      swift_endAccess();
      v5 = v137;
    }

    v81 = v121;
    v82 = v121[6];
    v83 = *(v82 + 16);
    v135 = MEMORY[0x277D84F90];
    if (v83)
    {
      v120 = v3;
      v139 = MEMORY[0x277D84F90];
      v123 = v82;
      sub_232B64B40(0, v83, 0);
      v135 = v139;
      v86 = sub_232B666F4(v123);
      v87 = v123;
      v88 = 0;
      v89 = (v123 + 64);
      v130 = v84;
      v122 = v123 + 72;
      v90 = 1;
      v131 = v83;
      i = (v123 + 64);
      while ((v86 & 0x8000000000000000) == 0 && v86 < v90 << *(v87 + 32))
      {
        v37 = v86 >> 6;
        v91 = v90 << v86;
        if ((*&v89[8 * (v86 >> 6)] & (v90 << v86)) == 0)
        {
          goto LABEL_50;
        }

        if (*(v87 + 36) != v84)
        {
          goto LABEL_51;
        }

        v134 = v84;
        LODWORD(v133) = v85;
        v92 = v137;
        v93 = *(v137 + 12);
        v49 = *(*(v87 + 48) + 8 * v86);
        v94 = v87;
        sub_232B66AF4();
        v61 = v127;
        sub_232B66A58(v95, v127 + v93, v96);
        v97 = v128;
        *v128 = v49;
        v98 = *(v92 + 48);
        sub_232B66ADC();
        sub_232B66734(v61 + v93, v97 + v98, v99);
        v100 = *(v97 + v98);

        sub_232B13790(v97, &qword_27DDC6AB8, &unk_232CF6DF0);
        v139 = v135;
        v102 = *(v135 + 16);
        v101 = *(v135 + 24);
        v45 = (v102 + 1);
        if (v102 >= v101 >> 1)
        {
          v61 = &v139;
          sub_232B64B40((v101 > 1), v102 + 1, 1);
          v135 = v139;
        }

        v103 = v135;
        *(v135 + 16) = v45;
        v104 = v103 + 16 * v102;
        *(v104 + 32) = v49;
        *(v104 + 40) = v100;
        v105 = 1 << *(v94 + 32);
        if (v86 >= v105)
        {
          goto LABEL_52;
        }

        v106 = v94;
        v89 = i;
        v107 = *&i[8 * v37];
        if ((v107 & v91) == 0)
        {
          goto LABEL_53;
        }

        if (*(v106 + 36) != v134)
        {
          goto LABEL_54;
        }

        v108 = v107 & (-2 << (v86 & 0x3F));
        if (v108)
        {
          v105 = __clz(__rbit64(v108)) | v86 & 0x7FFFFFFFFFFFFFC0;
          sub_232B66BB0();
        }

        else
        {
          v109 = v37 << 6;
          sub_232B66BB0();
          while (v112 < v111)
          {
            v115 = *v113++;
            v114 = v115;
            v109 += 64;
            ++v112;
            if (v115)
            {
              sub_232B48E94(v86, v110, v133 & 1);
              v90 = 1;
              v87 = v123;
              v105 = __clz(__rbit64(v114)) + v109;
              goto LABEL_42;
            }
          }

          sub_232B48E94(v86, v110, v133 & 1);
          v90 = 1;
          v87 = v123;
        }

LABEL_42:
        v85 = 0;
        ++v88;
        v86 = v105;
        v84 = v130;
        if (v88 == v131)
        {
          v3 = v120;
          v81 = v121;
          goto LABEL_45;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      result = sub_232CEA7A0();
      __break(1u);
      return result;
    }

    sub_232B66BB0();
LABEL_45:
    v116 = sub_232B63228(v135, &qword_27DDC72E0, &qword_232CF89B8, sub_232B66430);
    sub_232B66790(v81, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);
    *&v3[v49] = v116;

    v117 = type metadata accessor for DUEncodingModelOutput();
    v140.receiver = v3;
    v140.super_class = v117;
    v80 = objc_msgSendSuper2(&v140, sel_init);
    (v61[1])(v45, v37);
  }

  else
  {
    (*(v34 + 8))(v36, a2);
    v78 = v137;
    sub_232B12504(v137, 1, 1, v25);
    sub_232B13790(v78, &qword_27DDC7250, &qword_232CF8850);

    v79 = type metadata accessor for DUEncodingModelOutput();
    sub_232B66C14(v3, v79);
    return 0;
  }

  return v80;
}

uint64_t sub_232B63228(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_232B124A8(a2, a3);
    v5 = sub_232CEA650();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_232B632DC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  sub_232B20714();
  v73 = v4;
  sub_232B20600();
  MEMORY[0x28223BE20](v5);
  v72 = (&v68 - v6);
  sub_232B20600();
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v68 - v11);
  a1[4] = 0;
  v13 = MEMORY[0x277D84F90];
  a1[5] = sub_232CE9C60();
  v77 = v3;
  a1[6] = sub_232CE9C60();
  type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  sub_232CE9330();
  v14 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName);
  a1[1] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers);
  a1[2] = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize);
  a1[3] = v15;
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8) & 1) == 0)
  {
    a1[4] = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize);
  }

  v16 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues, v79);
  v69 = v1;
  v17 = *(v1 + v16);
  v18 = v17 + 64;
  sub_232B34F88();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;

  v74 = v17;

  v24 = 0;
  v76 = a1;
  v70 = v23;
  v71 = v17 + 64;
  if (v21)
  {
LABEL_8:
    while (1)
    {
      sub_232B66C2C();
      sub_232B66BF0();
      sub_232CE9330();
      *v12 = v18;
      sub_232B66AF4();
      sub_232B66A58(v12, v9, v26);
      swift_isUniquelyReferenced_nonNull_native();
      v78 = a1[5];
      sub_232B20520(v13);
      sub_232B66BA0();
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v31 = v27;
      v32 = v28;
      sub_232B124A8(&qword_27DDC7258, &qword_232CF8858);
      if (sub_232CEA5C0())
      {
        v33 = sub_232B20520(v13);
        a1 = v76;
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_44;
        }

        v31 = v33;
      }

      else
      {
        a1 = v76;
      }

      v35 = v78;
      if (v32)
      {
        sub_232B66B54();
        sub_232B667E8(v9, v36);
      }

      else
      {
        sub_232B66BE0(v78 + 8 * (v31 >> 6));
        *(*(v35 + 48) + 8 * v31) = v13;
        sub_232B66B54();
        sub_232B66ADC();
        sub_232B66734(v9, v37, v38);
        v39 = *(v35 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_42;
        }

        *(v35 + 16) = v41;
      }

      v21 &= v21 - 1;
      a1[5] = v35;
      sub_232B66B3C();
      sub_232B66790(v12, v42);
      v23 = v70;
      v18 = v71;
      if (!v21)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v25 >= v23)
      {
        break;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_8;
      }
    }

    result = *(v69 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues);
    if (!result)
    {
      return result;
    }

    v44 = result + 64;
    sub_232B34F88();
    v47 = v46 & v45;
    v49 = (v48 + 63) >> 6;
    v50 = 0;

    if (v47)
    {
      goto LABEL_25;
    }

LABEL_21:
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {
      }

      v47 = *(v44 + 8 * v51);
      ++v50;
      if (v47)
      {
        v50 = v51;
LABEL_25:
        while (1)
        {
          sub_232B66C2C();
          sub_232B66BF0();
          v52 = v72;
          sub_232CE9330();
          *v52 = v18;
          sub_232B66AF4();
          sub_232B66A58(v52, v73, v53);
          swift_isUniquelyReferenced_nonNull_native();
          v78 = a1[6];
          sub_232B20520(v13);
          sub_232B66BA0();
          if (__OFADD__(v56, v57))
          {
            goto LABEL_41;
          }

          v58 = v54;
          v59 = v55;
          sub_232B124A8(&qword_27DDC7258, &qword_232CF8858);
          if (sub_232CEA5C0())
          {
            v60 = sub_232B20520(v13);
            a1 = v76;
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_44;
            }

            v58 = v60;
          }

          else
          {
            a1 = v76;
          }

          v18 = v78;
          if (v59)
          {
            sub_232B66B54();
            sub_232B667E8(v73, v62);
          }

          else
          {
            sub_232B66BE0(v78 + 8 * (v58 >> 6));
            *(*(v18 + 48) + 8 * v58) = v13;
            sub_232B66B54();
            sub_232B66ADC();
            sub_232B66734(v73, v63, v64);
            v65 = *(v18 + 16);
            v40 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v40)
            {
              goto LABEL_43;
            }

            *(v18 + 16) = v66;
          }

          v47 &= v47 - 1;
          a1[6] = v18;
          sub_232B66B3C();
          sub_232B66790(v72, v67);
          if (!v47)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232B63818@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232B632DC((v4 - v3));
  v6 = objc_allocWithZone(type metadata accessor for DUEncodingModelOutput());
  v7 = sub_232B61F94(v5);
  result = sub_232B124A8(&qword_27DDC7260, &unk_232CF8860);
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_232B6391C(uint64_t a1)
{
  sub_232B2036C(a1, v16, &qword_27DDC68C8, &qword_232CF6210);
  if (!v17)
  {
    sub_232B13790(v16, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_21;
  }

  type metadata accessor for DUEncodingModelOutput();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v13 = 0;
    return v13 & 1;
  }

  v2 = v15;
  v3 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName) == *&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName] && *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8) == *&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName + 8];
  if (!v3 && (sub_232CEA750() & 1) == 0 || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers) != *&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize) != *&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize])
  {
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8))
  {
    if ((v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8] & 1) == 0)
    {
LABEL_20:

      goto LABEL_21;
    }
  }

  else if ((v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize + 8] & 1) != 0 || *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize) != *&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize])
  {
    goto LABEL_20;
  }

  v4 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues, v16);
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B13F74(&v15[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues], &v15);
  v7 = *&v2[v6];

  sub_232B32808(v5, v7);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues];
  if (!*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues))
  {

    if (!v10)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  sub_232B32808(v11, v10);
  v13 = v12;

  return v13 & 1;
}

void sub_232B63BB4(void *a1)
{
  type metadata accessor for DUEncodingModelOutput();
  sub_232B66B80();
  sub_232B66A10(v2, v3, v4, &protocol conformance descriptor for DUEncodingModelOutput);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUEncodingModelOutput.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B66B80();
  sub_232B66A10(v4, v5, v6, &protocol conformance descriptor for DUEncodingModelOutput);
  sub_232CE98B0();

  v7 = v11;
  if (!v11)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B66C14(v2, ObjectType);
    return 0;
  }

  v8 = swift_getObjectType();
  sub_232B66C14(v2, v8);
  return v7;
}

id DUEncodingModelOutput.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUEncodingModelOutput.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUEncodingModelOutput();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B63F6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232B61F1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B63F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_232B124A8(&qword_27DDC7310, &qword_232CF89D8);
  v33 = v4;
  result = sub_232CEA640();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_232C4883C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 40 * v18);
    if (v33)
    {
      sub_232B0D220(v22, v34);
    }

    else
    {
      sub_232B25E34(v22, v34);
    }

    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_232B0D220(v34, *(v7 + 56) + 40 * v26);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_232B64268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_232B124A8(a3, a4);
  v36 = v6;
  result = sub_232CEA640();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v9;
    return result;
  }

  v35 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_32;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      sub_232C4883C(0, (v34 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = (*(v7 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v7 + 56) + 8 * v20);
    if ((v36 & 1) == 0)
    {
    }

    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v22;
    v33[1] = v23;
    *(*(v9 + 56) + 8 * v28) = v24;
    ++*(v9 + 16);
    v7 = v35;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v16 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_232B64504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_232B124A8(&qword_27DDC72E0, &qword_232CF89B8);
  result = sub_232CEA640();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v30 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      sub_232C4883C(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
    }

    result = sub_232CEA810();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_232B64770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B0C(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v11);
  }
}

void sub_232B6479C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_232B66B68(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * v4) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_232B66BD8(v5, v12);
  }
}

uint64_t sub_232B647E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_232B66B68(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_232B6482C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B0C(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v13);
  }
}

void sub_232B6486C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_232B66B68(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_232B66B98(v6, v13);
  }
}

void sub_232B648B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_232B66B68(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_232B66BD8(v5, v10);
  }
}

uint64_t sub_232B648F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_232B66B68(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 24 * result);
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}
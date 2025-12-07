void getLDAsset(for:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CE8E10();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_232CE9A30();
  sub_232B48F0C();
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_232CE9A20();
  v16 = *(v8 + 16);
  v43 = a3;
  v16(v11, a3, v6);

  v17 = sub_232CE9A00();
  v18 = sub_232CEA1A0();
  v19 = a2;

  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v20;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v21 = 136315394;
    v22 = sub_232CE8D60();
    v24 = v23;
    (*(v8 + 8))(v11, v6);
    v25 = sub_232BAD2D4(v22, v24, aBlock);
    v26 = v44;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v27 = v19;
    *(v21 + 14) = sub_232BAD2D4(v41, v19, aBlock);
    _os_log_impl(&dword_232B02000, v17, v18, "DULDAssetUtils: Enumerating LinguisticDataAssets for locale %s and asset name %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    a1 = v41;
    sub_232BA6A84();

    v28 = sub_232BDB93C();
    v18(v28, v26);
  }

  else
  {

    (*(v8 + 8))(v11, v6);
    v29 = sub_232BDB93C();
    v18(v29, v44);
    v27 = a2;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = sub_232CE8DA0();
  sub_232BC1E0C();
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = v27;
  v32[4] = v30;
  aBlock[4] = sub_232BDB7A0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BDAEC8;
  aBlock[3] = &unk_284812200;
  v33 = _Block_copy(aBlock);

  LDEnumerateAssetDataItems();
  _Block_release(v33);

  swift_beginAccess();
  if (!*(v30 + 16))
  {
    v34 = v40;
    sub_232CE9A20();
    v35 = sub_232CE9A00();
    v36 = sub_232CEA1A0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_232B02000, v35, v36, "DULDAssetUtils: Asset not found", v37, 2u);
      sub_232BA6A84();
    }

    v18(v34, v44);
  }

  v38 = *(v30 + 16);

  sub_232B20A00();
}

Swift::Void __swiftcall requestNLAsset(for:)(__C::NLLanguage a1)
{
  v2 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_232CE9A30();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (v14)
  {
    v15 = v14;
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_232B02000, v16, v17, "DULDAssetUtils: Requesting assets", v18, 2u);
      sub_232BA6A84();
    }

    (*(v7 + 8))(v13, v5);
    v19 = sub_232CEA090();
    sub_232B12504(v4, 1, 1, v19);
    sub_232BC1E0C();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    sub_232B23FB4(0, 0, v4, &unk_232CFAD38, v20);
  }

  else
  {
    sub_232CE9A20();
    v21 = a1._rawValue;
    v22 = sub_232CE9A00();
    v23 = sub_232CEA1A0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_232BC1F80();
      v25 = swift_slowAlloc();
      v33 = v21;
      v34 = v25;
      *v24 = 136315138;
      type metadata accessor for NLLanguage(0, v26, v27, v28);
      v29 = v21;
      v30 = sub_232CE9DC0();
      v32 = sub_232BAD2D4(v30, v31, &v34);

      *(v24 + 4) = v32;
      _os_log_impl(&dword_232B02000, v22, v23, "DULDAssetUtils: did not find embedding for language %s, skipping asset request", v24, 0xCu);
      sub_232B2040C(v25);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v7 + 8))(v10, v5);
  }

  sub_232B20A00();
}

void sub_232BDAEC8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v14 = a2;
  v12 = a4;
  v13 = a5;
  v11(a2, a3, a4, a5, a6);
}

uint64_t sub_232BDAF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = sub_232CE9A30();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BDB054, 0, 0);
}

uint64_t sub_232BDB054()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_232BDB170;
  v2 = swift_continuation_init();
  v0[17] = sub_232B124A8(&qword_27DDC7670, &unk_232CFA978);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232BBD66C;
  v0[13] = &unk_284812250;
  v0[14] = v2;
  [v1 requestAssetsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232BDB170()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_232BDB384;
  }

  else
  {
    v2 = sub_232BDB280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232BDB280(uint64_t a1)
{
  v2 = v1[18];
  sub_232CE9A20();
  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_232BC1F80();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_232B02000, v3, v4, "DULDAssetUtils: request assets complete, return code %ld", v5, 0xCu);
    sub_232BA6A84();
  }

  (*(v1[21] + 8))(v1[23], v1[20]);

  v6 = v1[1];

  return v6();
}

uint64_t sub_232BDB384(uint64_t a1)
{
  v2 = v1[24];
  swift_willThrow();
  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[24];
  if (v6)
  {
    v8 = sub_232BC1F80();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_232B02000, v4, v5, "DULDAssetUtils: Error when requesting assets %@", v8, 0xCu);
    sub_232BDB890(v9);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  else
  {
  }

  (*(v1[21] + 8))(v1[22], v1[20]);

  v12 = v1[1];

  return v12();
}

void sub_232BDB4F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_232CE8C00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v23 = &v33 - v22;
  if (a4)
  {
    v34 = a8;
    type metadata accessor for CFString(0, v19, v20, v21);
    v35 = a4;
    v24 = sub_232CE9D20();
    sub_232BC1928(v24, v25, v26, v27);
    v28 = sub_232CE8F80();

    if ((v28 & 1) != 0 && a1)
    {
      sub_232CE8BB0();
      (*(v12 + 32))(v23, v17, v11);
      sub_232BDB8F8();
      (*(v12 + 16))(v14, v23, v11);
      v29 = sub_232BBD328(v14);

      (*(v12 + 8))(v23, v11);
      v30 = v34;
      swift_beginAccess();
      v31 = *(v30 + 16);
      *(v30 + 16) = v29;
    }

    else
    {
      v32 = v35;
    }
  }
}

uint64_t sub_232BDB73C(void *a1)
{
  v1 = [a1 assetLocaleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

uint64_t sub_232BDB7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232BDB7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232BB0620;

  return sub_232BDAF88(a1, v4, v5, v6);
}

uint64_t sub_232BDB890(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6FD0, &unk_232CFA240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BDB8F8()
{
  result = qword_2814DF8C8;
  if (!qword_2814DF8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF8C8);
  }

  return result;
}

uint64_t static DULLMInput.cleanText(_:)(uint64_t a1, unint64_t a2)
{
  v87 = sub_232CE89D0();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_232BDC1EC(a1, a2);
  v12 = v11;
  v92 = v10;
  v93 = v11;
  v90 = 0x5DADC2A0C25BLL;
  v91 = 0xA600000000000000;
  v88 = 32;
  v89 = 0xE100000000000000;
  v13 = sub_232B48080();
  sub_232BDC76C(&v90, &v88, 1024, v14, v15, v16, v17, v18, MEMORY[0x277D837D0], v13, v13, v13);
  sub_232BDC790();
  v92 = &v92;
  v93 = v2;
  v90 = 9666786;
  v91 = 0xA300000000000000;
  v88 = 45;
  v89 = 0xE100000000000000;
  v19 = sub_232BDC750();
  sub_232BDC76C(v19, v20, 0, v21, v22, v23, v24, v25, v63, v69, v75, v81);
  sub_232BDC7D4();
  v92 = &v92;
  v93 = v12;
  v90 = 0x3B706D6126;
  v91 = 0xE500000000000000;
  v88 = 38;
  v89 = 0xE100000000000000;
  v26 = sub_232BDC750();
  sub_232BDC76C(v26, v27, 0, v28, v29, v30, v31, v32, v64, v70, v76, v82);
  sub_232BDC790();
  v92 = &v92;
  v93 = v2;
  v90 = 0x3B7073626E26;
  v91 = 0xE600000000000000;
  v88 = 32;
  v89 = 0xE100000000000000;
  v33 = sub_232BDC750();
  sub_232BDC76C(v33, v34, 0, v35, v36, v37, v38, v39, v65, v71, v77, v83);
  sub_232BDC7D4();
  v92 = &v92;
  v93 = v12;
  v90 = 0x7D2C337B09;
  v91 = 0xE500000000000000;
  v88 = 2313;
  v89 = 0xE200000000000000;
  v40 = sub_232BDC750();
  sub_232BDC76C(v40, v41, 1024, v42, v43, v44, v45, v46, v66, v72, v78, v84);
  sub_232BDC790();
  v92 = &v92;
  v93 = v2;
  v90 = 0x7D2C337B20;
  v91 = 0xE500000000000000;
  v88 = 8224;
  v89 = 0xE200000000000000;
  v47 = sub_232BDC750();
  sub_232BDC76C(v47, v48, 1024, v49, v50, v51, v52, v53, v67, v73, v79, v85);
  sub_232BDC7D4();
  v92 = &v92;
  v93 = v12;
  v90 = 0x7D2C337B0ALL;
  v91 = 0xE500000000000000;
  v88 = 2570;
  v89 = 0xE200000000000000;
  v54 = sub_232BDC750();
  sub_232BDC76C(v54, v55, 1024, v56, v57, v58, v59, v60, v68, v74, v80, v86);
  sub_232BDC790();
  v92 = &v92;
  v93 = v2;
  sub_232CE89B0();
  v61 = sub_232CEA3A0();
  (*(v6 + 8))(v9, v87);

  return v61;
}

Swift::String __swiftcall DULLMInput.constructModelInput()()
{
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v39 - v3;
  v5 = sub_232CE8D10();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v12 = sub_232CE9D20();
  [v11 setDateFormat_];

  v13 = type metadata accessor for DULLMInput(0);
  sub_232BB0C6C(v1 + *(v13 + 36), v4);
  if (sub_232B12480(v4, 1, v5) == 1)
  {
    sub_232CE8D00();
    if (sub_232B12480(v4, 1, v5) != 1)
    {
      sub_232BB0C04(v4);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
  }

  v14 = sub_232CE8CD0();
  (*(v7 + 8))(v10, v5);
  v15 = [v11 stringFromDate_];

  v16 = sub_232CE9D50();
  v18 = v17;

  v19 = static DULLMInput.cleanText(_:)(v1[1], v1[2]);
  v21 = sub_232BDC7B0(v19, v20);
  v22 = MEMORY[0x238391B80](v21);
  v24 = v23;

  v25 = *v1;
  if (*v1)
  {
    if (v25 != 1)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_232CEA4F0();

      v40 = 0xD00000000000001BLL;
      v41 = 0x8000000232D07DD0;
      v39[1] = v25;
      v37 = sub_232CEA720();
      MEMORY[0x238391C30](v37);

      MEMORY[0x238391C30](0xD000000000000012, 0x8000000232D07DF0);
      v35 = sub_232CEA5F0();
      __break(1u);
      goto LABEL_29;
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_232CEA4F0();

    v40 = 0xD000000000000010;
    v41 = 0x8000000232D07E10;
    MEMORY[0x238391C30](v16, v18);

    MEMORY[0x238391C30](0xD000000000000012, 0x8000000232D07E30);
    MEMORY[0x238391C30](v22, v24);
  }

  else
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_232CEA4F0();
    MEMORY[0x238391C30](0xD000000000000010, 0x8000000232D07E10);
    MEMORY[0x238391C30](v16, v18);

    MEMORY[0x238391C30](0xD00000000000001CLL, 0x8000000232D07E50);
    v26 = v1[6];
    if (v26)
    {
      v27 = v1[5];
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v1[6];
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v27, v28);

    MEMORY[0x238391C30](32, 0xE100000000000000);
    v29 = v1[8];
    if (v29)
    {
      v30 = v1[7];
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v1[8];
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v30, v31);

    MEMORY[0x238391C30](0xD000000000000015, 0x8000000232D07E70);
    v32 = v1[4];
    if (v32)
    {
      v33 = v1[3];
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v33, v34);

    MEMORY[0x238391C30](0xD000000000000013, 0x8000000232D07E90);
    MEMORY[0x238391C30](v22, v24);

    MEMORY[0x238391C30](0x3E79646F622F3CLL, 0xE700000000000000);
  }

  v35 = v40;
  v36 = v41;
LABEL_29:
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

void *sub_232BDC0B4()
{
  result = sub_232C0D594(&unk_28480CDB0);
  off_2814E0BF0 = result;
  return result;
}

double FormatUnicodeScalarsToRemove.getter()
{
  if (qword_2814E0BE8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t DULLMInput.init(documentType:documentText:subject:senderName:senderEmail:receivedDate:emailHeaders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  v13 = type metadata accessor for DULLMInput(0);
  result = sub_232BA4BBC(a11, a9 + *(v13 + 36));
  *(a9 + *(v13 + 40)) = a12;
  return result;
}

Swift::String __swiftcall DULLMInput.cleanAndTruncateText(_:)(Swift::String a1)
{
  v1 = static DULLMInput.cleanText(_:)(a1._countAndFlagsBits, a1._object);
  v3 = sub_232BDC7B0(v1, v2);
  v4 = MEMORY[0x238391B80](v3);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_232BDC1EC(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v19 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = 0;
    v20 = a2 & 0xFFFFFFFFFFFFFFLL;
    v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = sub_232CEA4E0();
        v10 = v9;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v20;
          v7 = v17 + v5;
          v8 = *(v17 + v5);
          if (*(v17 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
LABEL_26:
                v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
                v10 = 2;
                break;
              case 0x1Bu:
LABEL_27:
                v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
                v10 = 3;
                break;
              case 0x1Cu:
LABEL_28:
                v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
                v10 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = v16;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_232CEA550();
          }

          v7 = (v6 + v5);
          v8 = *(v6 + v5);
          if (*(v6 + v5) < 0)
          {
            switch(__clz(v8 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_26;
              case 0x1Bu:
                goto LABEL_27;
              case 0x1Cu:
                goto LABEL_28;
              default:
                break;
            }
          }
        }

LABEL_14:
        v10 = 1;
      }

LABEL_15:
      if (qword_2814E0BE8 != -1)
      {
        swift_once();
      }

      v11 = off_2814E0BF0;
      if (*(off_2814E0BF0 + 2))
      {
        sub_232CEA820();
        sub_232CEA840();
        v12 = sub_232CEA850();
        v13 = ~(-1 << v11[32]);
        while (1)
        {
          v14 = v12 & v13;
          if (((*&v11[(((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v12 & v13)) & 1) == 0)
          {
            break;
          }

          v12 = v14 + 1;
          if (*(*(v11 + 6) + 4 * v14) == v8)
          {
            goto LABEL_23;
          }
        }
      }

      sub_232CE9E00();
LABEL_23:
      v5 += v10;
      if (v5 >= v3)
      {

        return v18;
      }
    }
  }

  return 0;
}

uint64_t type metadata accessor for DULLMInput(uint64_t a1)
{
  result = qword_2814E18E8;
  if (!qword_2814E18E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DULLMInput.truncateText(_:limit:)(uint64_t a1, unint64_t a2, uint64_t a3)
{

  v6 = sub_232B57E40(a3, a1, a2);
  v7 = MEMORY[0x238391B80](v6);

  return v7;
}

Swift::tuple_String_String __swiftcall DULLMInput.constructClassifierInput()()
{
  v1 = static DULLMInput.cleanText(_:)(v0[1], v0[2]);
  v3 = sub_232BDC7B0(v1, v2);
  v4 = MEMORY[0x238391B80](v3);
  v6 = v5;

  if (v0[4])
  {
    v11 = v0[3];
    v12 = v0[4];

    MEMORY[0x238391C30](32, 0xE100000000000000);

    MEMORY[0x238391C30](v4, v6);

    v7 = v11;
    v8 = v12;
  }

  else
  {

    v7 = v4;
    v8 = v6;
  }

  v9 = v4;
  v10 = v6;
  result._1._object = v8;
  result._1._countAndFlagsBits = v7;
  result._0._object = v10;
  result._0._countAndFlagsBits = v9;
  return result;
}

void sub_232BDC628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DUDocumentType(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_232B28F10();
    if (v5 <= 0x3F)
    {
      sub_232B33904(319);
      if (v6 <= 0x3F)
      {
        sub_232BDC6EC(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_232BDC6EC(uint64_t a1)
{
  if (!qword_2814DFA18)
  {
    sub_232B27EEC(&qword_27DDC6B40, &qword_232CF6EC8);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_2814DFA18);
    }
  }
}

uint64_t sub_232BDC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_232CEA3B0();
}

uint64_t sub_232BDC790()
{
}

uint64_t sub_232BDC7B0(uint64_t a1, unint64_t a2)
{

  return sub_232B57E40(6000, a1, a2);
}

uint64_t sub_232BDC7D4()
{
}

uint64_t sub_232BDC7F4(uint64_t a1)
{
  result = MEMORY[0x238391E80](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232C48B20(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t DUModelRunner.__allocating_init(extractionCategory:pid:)(char *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  type metadata accessor for DUModelRunner();
  sub_232BDCE60();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  sub_232B0D220(&v8, v6 + 40);
  return v6;
}

void sub_232BDC964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
LABEL_13:
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v23 = v4;
          v14 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
          v16 = *v14;
          v15 = v14[1];
          sub_232CEA820();

          sub_232CE9E40();
          v17 = sub_232CEA850();
          v18 = ~(-1 << *(v6 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(v6 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              v4 = v23;
              goto LABEL_13;
            }

            v20 = (*(v6 + 48) + 16 * v19);
            if (*v20 == v16 && v20[1] == v15)
            {
              break;
            }

            v22 = sub_232CEA750();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          return;
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

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_232BDCB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
      v17 = v4;
      if (v9)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          do
          {
LABEL_17:
            sub_232B1FA04(*(v4 + 48) + 40 * (__clz(__rbit64(v9)) | (v11 << 6)), v21);
            v19[0] = v21[0];
            v19[1] = v21[1];
            v20 = v22;
            if (*(v6 + 16))
            {
              v13 = sub_232CEA470();
              v14 = ~(-1 << *(v6 + 32));
              while (1)
              {
                v15 = v13 & v14;
                if (((*(v6 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
                {
                  break;
                }

                sub_232B1FA04(*(v6 + 48) + 40 * v15, v18);
                v16 = MEMORY[0x238392210](v18, v19);
                sub_232B1FA60(v18);
                v13 = v15 + 1;
                if (v16)
                {

                  sub_232B1FA60(v19);
                  return;
                }
              }
            }

            v9 &= v9 - 1;
            sub_232B1FA60(v19);
            v4 = v17;
          }

          while (v9);
        }
      }

      __break(1u);
    }
  }
}

DocumentUnderstanding::DUExtractionCategory_optional __swiftcall DUExtractionCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232CEA670();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DUExtractionCategory.rawValue.getter()
{
  result = 0x73746E657645;
  switch(*v0)
  {
    case 1:
      result = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
      break;
    case 2:
      result = 1685217603;
      break;
    case 3:
      result = sub_232BDF410();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232BDCE28@<X0>(uint64_t *a1@<X8>)
{
  result = DUExtractionCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_232BDCE60()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_232CE9A30();
  sub_232B48F0C();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = *v5;
  if (v1)
  {
    v16 = 0xE700000000000000;
    v43 = 0x746E6572727563;
  }

  else
  {
    v45 = v3;
    sub_232BDF28C();
    v43 = sub_232CEA410();
    v16 = v17;
  }

  sub_232CE9A20();

  v18 = sub_232CE9A00();
  v19 = sub_232CEA1B0();

  if (os_log_type_enabled(v18, v19))
  {
    v44 = v15;
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = 0xE600000000000000;
    v22 = sub_232BDF3A0();
    switch(v44)
    {
      case 1:
        v21 = 0xEB00000000746661;
        v22 = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
        break;
      case 2:
        v21 = 0xE400000000000000;
        v22 = 1685217603;
        break;
      case 3:
        v21 = 0xE900000000000074;
        v22 = sub_232BDF410();
        break;
      default:
        break;
    }

    v23 = sub_232BAD2D4(v22, v21, &v45);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = sub_232BAD2D4(v43, v16, &v45);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_232B02000, v18, v19, "DUModelRunner: Init %s adapter for %s process", v20, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    (*(v10 + 8))(v14, v8);
    v15 = v44;
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  switch(v15)
  {
    case 0:
      LOBYTE(v45) = 0;
      v25 = type metadata accessor for DUEventAdapter();
      sub_232BDF3B0(v25);
      v26 = sub_232BDF36C();
      v29 = sub_232B9B864(v26, v27, v28);
      v30 = &off_284810C70;
      break;
    case 1:
      LOBYTE(v45) = 1;
      v39 = type metadata accessor for DUEventDraftGating();
      sub_232BDF3B0(v39);
      v40 = sub_232BDF36C();
      v29 = sub_232B9EB70(v40, v41, v42);
      v30 = &off_284810C20;
      break;
    case 2:
      LOBYTE(v45) = 2;
      v31 = type metadata accessor for DUPersonalIDAdapter();
      sub_232BDF3B0(v31);
      v32 = sub_232BDF36C();
      v29 = sub_232BE4ECC(v32, v33, v34);
      v30 = &off_284812418;
      break;
    case 3:
      LOBYTE(v45) = 3;
      v35 = type metadata accessor for DUPersonalIDAdapterDraft();
      sub_232BDF3B0(v35);
      v36 = sub_232BDF36C();
      v29 = sub_232BE7678(v36, v37, v38);
      v30 = &off_2848123C8;
      break;
    default:
      JUMPOUT(0);
  }

  v7[3] = v8;
  v7[4] = v30;
  *v7 = v29;
  sub_232B20A00();
}

void static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v56 = v9 - v8;
  v10 = sub_232CE8E00();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  v17 = sub_232B124A8(&qword_27DDC7848, &unk_232CFAD60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - v18;
  v20 = *v3;
  v57 = v6;
  v58 = v4;
  v55 = v20;
  if (v1)
  {
    v21 = v1;
  }

  else
  {
    v21 = sub_232CE8D90();
  }

  v22 = *(v21 + 16);
  v23 = (v12 + 8);

  v24 = 0;
  v25 = v21 + 40;
  v61 = MEMORY[0x277D84F90];
  v62 = v21;
  v60 = v21 + 40;
LABEL_5:
  v26 = v25 + 16 * v24;
  while (v22 != v24)
  {
    if (v24 >= *(v21 + 16))
    {
      __break(1u);
      return;
    }

    swift_bridgeObjectRetain_n();
    sub_232CE8DE0();
    sub_232CE8DF0();
    (*v23)(v16, v10);
    v27 = sub_232CE8D80();
    if (sub_232B12480(v19, 1, v27) != 1)
    {
      v28 = sub_232CE8D70();
      v59 = v29;

      (*(*(v27 - 8) + 8))(v19, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B35ECC();
        v61 = v34;
      }

      v21 = v62;
      v30 = *(v61 + 16);
      if (v30 >= *(v61 + 24) >> 1)
      {
        sub_232B35ECC();
        v61 = v35;
      }

      ++v24;
      v31 = v61;
      *(v61 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      v33 = v59;
      v25 = v60;
      *(v32 + 32) = v28;
      *(v32 + 40) = v33;
      goto LABEL_5;
    }

    sub_232BDEC24(v19);
    v26 += 16;
    ++v24;
    v21 = v62;
  }

  v36 = [objc_opt_self() supportedLanguages];
  v37 = sub_232CEA0D0();

  v38 = sub_232BDC7F4(v61);
  sub_232BDD76C(v38);
  v40 = v39;

  sub_232BDCB3C(v40, v37);
  v42 = v41;

  if (v42)
  {
    v43 = v56;
    sub_232CE9A20();
    v44 = v62;

    v45 = sub_232CE9A00();
    v46 = sub_232CEA1E0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v47 = 136315394;
      v48 = 0xE600000000000000;
      v49 = sub_232BDF3A0();
      switch(v55)
      {
        case 1:
          v48 = 0xEB00000000746661;
          v49 = sub_232BDF3A0() & 0xFFFFFFFFFFFFLL | 0x7244000000000000;
          break;
        case 2:
          v48 = 0xE400000000000000;
          v49 = 1685217603;
          break;
        case 3:
          v48 = 0xE900000000000074;
          v49 = sub_232BDF410();
          break;
        default:
          break;
      }

      v50 = sub_232BAD2D4(v49, v48, &v64);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2080;
      v63 = v44;
      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
      v51 = sub_232CE9CD0();
      v53 = v52;

      v54 = sub_232BAD2D4(v51, v53, &v64);

      *(v47 + 14) = v54;
      _os_log_impl(&dword_232B02000, v45, v46, "DUModelRunner: %s model is not supported for device with languages: %s", v47, 0x16u);
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v57 + 8))(v43, v58);
  }

  else
  {
  }

  sub_232B20A00();
}

void sub_232BDD76C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC7870, qword_232CFAEF0);
    v2 = sub_232CEA4C0();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:

    swift_dynamicCast();
    v10 = sub_232CEA470();
    v11 = -1 << *(v2 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *(v7 + 8 * v13);
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v7 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v5 &= v5 - 1;
    v19 = *(v2 + 48) + 40 * v14;
    *(v19 + 32) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void static DUModelRunner.isLLMAvailable(for:)()
{
  sub_232B35110();
  v1 = v0;
  sub_232CE9090();
  sub_232B48F0C();
  v54 = v3;
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v53 = v5 - v4;
  sub_232CE9A30();
  sub_232B48F0C();
  v51 = v7;
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v56 = v9 - v8;
  v50 = sub_232CE90D0();
  sub_232B48F0C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = v14 - v13;
  v49 = sub_232CE90B0();
  sub_232B48F0C();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_232B20704();
  v21 = v20 - v19;
  v22 = sub_232CE90F0();
  sub_232B48F0C();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  v58 = *v1;
  static DUModelRunner.getUseCaseIdentifier(for:)();
  (*(v11 + 104))(v15, *MEMORY[0x277D0E2D8], v50);
  sub_232CE90A0();
  sub_232CE90E0();
  (*(v17 + 8))(v21, v49);
  sub_232CE9A20();
  v31 = *(v24 + 16);
  v49 = v27;
  v50 = v30;
  v32 = v27;
  v33 = v22;
  v31(v32, v30, v22);
  v34 = sub_232CE9A00();
  v35 = sub_232CEA1B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v36 = 136315138;
    sub_232BDEC8C();
    v37 = v49;
    v38 = sub_232CEA720();
    v40 = v39;
    v41 = *(v24 + 8);
    v41(v37, v33);
    v42 = sub_232BAD2D4(v38, v40, &v57);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_232B02000, v34, v35, "DUModelRunner: GenerativeModelsAvailability is %s", v36, 0xCu);
    sub_232B2040C(v48);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  else
  {

    v41 = *(v24 + 8);
    v41(v49, v33);
  }

  (*(v51 + 8))(v56, v52);
  v43 = v53;
  v44 = v50;
  sub_232CE90C0();
  v41(v44, v33);
  v46 = v54;
  v45 = v55;
  (*(v54 + 88))(v43, v55);
  (*(v46 + 8))(v43, v45);
  sub_232B20A00();
}

void static DUModelRunner.getUseCaseIdentifier(for:)()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232CE9A30();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v8 = v7 - v6;
  v9 = *v1;
  if (v9 != 2 && *v1)
  {
    sub_232CE9A20();
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      v14 = 0xEB00000000746661;
      v15 = 0x724473746E657645;
      if (v9 != 1)
      {
        v15 = 0x6661724464726143;
        v14 = 0xE900000000000074;
      }

      v16 = sub_232BAD2D4(v15, v14, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_232B02000, v10, v11, "DUModelRunner: getUseCaseIdentifier is called with unknown modelType = %s", v12, 0xCu);
      sub_232B2040C(v13);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v4 + 8))(v8, v2);
  }

  sub_232B20A00();
}

uint64_t sub_232BDE050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_232CE9970();
  v4[6] = v5;
  sub_232B27FBC(v5);
  v4[7] = v6;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = sub_232CE9A30();
  v4[10] = v7;
  sub_232B27FBC(v7);
  v4[11] = v8;
  v4[12] = swift_task_alloc();
  v9 = sub_232CE99A0();
  v4[13] = v9;
  sub_232B27FBC(v9);
  v4[14] = v10;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BDE1C0, 0, 0);
}

uint64_t sub_232BDE1C0()
{
  if (qword_2814DFA58 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_232B135C4(v3, qword_2814E3DC0);
  (*(v2 + 16))(v1, v4, v3);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v5 = sub_232CE9990();
  v6 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v5, v6, v8, "DUModelRunner:extractAttributes", "", v7, 2u);
    sub_232BA6A84();
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  (*(v12 + 16))(v9, v10, v11);
  sub_232CE99E0();
  swift_allocObject();
  v0[16] = sub_232CE99D0();
  (*(v12 + 8))(v10, v11);
  v14 = v13[9];
  sub_232B203C8(v13 + 5, v13[8]);
  v18 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v16 = sub_232BDF380(v15);

  return v18(v16);
}

uint64_t sub_232BDE44C()
{
  sub_232BDF3E8();
  v4 = v3;
  v5 = *v2;
  sub_232B26B3C();
  *v6 = v5;
  *(v4 + 144) = v0;

  if (v0)
  {
    v7 = sub_232BDE62C;
  }

  else
  {
    *(v4 + 152) = v1;
    v7 = sub_232BDE564;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_232BDE564()
{
  sub_232BDF424();
  sub_232BDF438(v4, "DUModelRunner:extractAttributes");

  (*(v3 + 8))(v0, v1);

  v5 = *(v2 + 8);
  v6 = *(v2 + 152);

  return v5(v6);
}

uint64_t sub_232BDE62C()
{
  sub_232BDF424();
  sub_232BDF438(v4, "DUModelRunner:extractAttributes");

  (*(v3 + 8))(v0, v1);

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_232BDE6F0(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_232CE99B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_232CE9970();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_232CE9990();
  sub_232CE99C0();
  v21 = sub_232CEA260();
  result = sub_232CEA340();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_232CE99F0();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x238393870](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_232BDE98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_232BDE9B0, 0, 0);
}

uint64_t sub_232BDE9B0()
{
  v1 = *(v0 + 40);
  v2 = v1[9];
  sub_232B203C8(v1 + 5, v1[8]);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v4 = sub_232BDF380(v3);

  return v6(v4);
}

uint64_t sub_232BDEACC(uint64_t a1, uint64_t a2)
{
  sub_232BDF3E8();
  v6 = *v4;
  sub_232B26B3C();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = v3;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t DUModelRunner.__deallocating_deinit()
{
  sub_232B2040C((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_232BDEC24(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7848, &unk_232CFAD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232BDEC8C()
{
  result = qword_27DDC7850;
  if (!qword_27DDC7850)
  {
    sub_232CE90F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7850);
  }

  return result;
}

unint64_t sub_232BDECE8()
{
  result = qword_27DDC7858;
  if (!qword_27DDC7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DUExtractionCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of DUModelRunner.extractAttributes(from:locale:)()
{
  sub_232BDF3F8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_232BDF3CC(v1);

  return v3(v2);
}

uint64_t sub_232BDEF88(uint64_t a1)
{
  v3 = *v1;
  sub_232B26B3C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t dispatch thunk of DUModelRunner.invokeModel(with:locale:)()
{
  sub_232BDF3F8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_232BDF3CC(v1);

  return v3(v2);
}

uint64_t sub_232BDF190(uint64_t a1, uint64_t a2)
{
  sub_232BDF3E8();
  v5 = *v3;
  sub_232B26B3C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2, a2);
}

unint64_t sub_232BDF28C()
{
  result = qword_2814DFA28;
  if (!qword_2814DFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA28);
  }

  return result;
}

uint64_t sub_232BDF2E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BDF320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BDF3B0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232BDF438(uint64_t a1, const char *a2)
{

  return sub_232BDE6F0(v2, a2, 31, 2, v3);
}

unint64_t sub_232BDF458(unint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v8 = sub_232BA2B04(v3, a2, 10);
    v27 = v26;

    if (v27)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_232CEA550();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_62:
      v29 = v4;
      if (v4)
      {
LABEL_63:

        return v3;
      }

LABEL_65:
      v28[0] = v8;
      return sub_232CEA720();
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v28;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v28 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_232BDF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v73 = a3;
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v65 - v4;
  v6 = sub_232CE8E10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232CE8D50();
  v11 = sub_232CE8DA0();
  (*(v7 + 8))(v9, v6);
  [v10 setLocale_];

  sub_232CE8EC0();
  v12 = sub_232CE8F00();
  v13 = 0;
  if (sub_232B12480(v5, 1, v12) != 1)
  {
    v13 = sub_232CE8ED0();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  [v10 setTimeZone_];

  v14 = sub_232CE9D20();
  [v10 setDateFormat_];

  v15 = sub_232CE8CD0();
  v16 = [v10 stringFromDate_];

  v17 = sub_232CE9D50();
  v19 = v18;

  v20 = sub_232B77D44(2uLL, v17, v19);
  v68 = MEMORY[0x238391B80](v20);
  v71 = v21;

  v22 = sub_232CE9D20();
  [v10 &off_2789A82E0 + 3];

  v23 = sub_232CE8CD0();
  v24 = [v10 &selRef:v23 initWithDDScannerResult:?];

  v25 = sub_232CE9D50();
  v27 = v26;

  v67 = sub_232BDF458(v25, v27);
  v70 = v28;
  v29 = sub_232CE9D20();
  [v10 &off_2789A82E0 + 3];

  v30 = sub_232CE8CD0();
  v31 = [v10 &selRef:v30 initWithDDScannerResult:?];

  v32 = sub_232CE9D50();
  v34 = v33;

  v66 = sub_232BDF458(v32, v34);
  v36 = v35;
  v37 = sub_232CE9D20();
  [v10 setDateFormat_];

  v38 = sub_232CE8CD0();
  v39 = [v10 stringFromDate_];

  v65[1] = sub_232CE9D50();
  v69 = v40;

  v41 = v17;
  v42 = v72;
  v43 = v73;
  sub_232B714A0(v41, v19, v72, v73, v44);
  LOBYTE(v39) = v45;

  if (v39)
  {
    v47 = 1;
  }

  else
  {
    sub_232B714A0(v68, v71, v42, v43, v46);
    v47 = v48;
  }

  sub_232B714A0(v25, v27, v42, v43, v49);
  v51 = v50;

  if (v51)
  {
    v53 = 1;
  }

  else
  {
    sub_232B714A0(v67, v70, v42, v43, v52);
    v53 = v54;
  }

  sub_232B714A0(v32, v34, v42, v43, v55);
  v57 = v56;

  if (v57)
  {
  }

  else
  {
    sub_232B714A0(v66, v36, v42, v43, v58);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      v76 = sub_232CE9DD0();
      v77 = v62;
      v74 = sub_232CE9DD0();
      v75 = v63;
      sub_232B48080();
      v61 = sub_232CEA3F0();

      return v47 & v53 & v61 & 1;
    }
  }

  v61 = 1;
  return v47 & v53 & v61 & 1;
}

uint64_t sub_232BDFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v57 = a1;
  v56 = sub_232CE8D10();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232CE9A30();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  sub_232B6FF88();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_232B7BB24(v20, a4, v53);
    v27 = v26;
    if (v25)
    {
      sub_232B34D3C(v20, v17, &qword_27DDC6A80, &qword_232CF6D30);
      v28 = v56;
      if (sub_232B12480(v17, 1, v56) == 1)
      {

        sub_232BA4D50(v17, &qword_27DDC6A80, &qword_232CF6D30);
        v29 = v28;
      }

      else
      {
        v41 = v51;
        v40 = v52;
        v42 = *(v52 + 32);
        v53 = v52 + 32;
        v49 = v42;
        v42(v51, v17, v28);
        v29 = v28;
        if (v27)
        {
          v43 = sub_232BDF780(v41, v23, v24);

          if (v43)
          {
            sub_232BA4D50(v20, &qword_27DDC6A80, &qword_232CF6D30);
            v35 = v57;
            v49(v57, v41, v29);
            v34 = 0;
            v33 = 1;
            goto LABEL_13;
          }

          v44 = v50;
          sub_232CE9A20();
          v45 = sub_232CE9A00();
          v46 = sub_232CEA1A0();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_232B02000, v45, v46, "DUAdapterPostProcessing: No extraction for isoDate since isoDate is not grounded in stringDate", v47, 2u);
            MEMORY[0x238393870](v47, -1, -1);
          }

          (*(v54 + 8))(v44, v55);
          (*(v52 + 8))(v41, v29);
          goto LABEL_12;
        }

        (*(v40 + 8))(v41, v28);
      }
    }

    else
    {

      v29 = v56;
    }

    sub_232CE9A20();
    v36 = sub_232CE9A00();
    v37 = sub_232CEA1A0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_232B02000, v36, v37, "DUAdapterPostProcessing: No extraction for isoDate since isoDate is not valid.", v38, 2u);
      MEMORY[0x238393870](v38, -1, -1);
    }

    (*(v54 + 8))(v9, v55);
LABEL_12:
    sub_232BA4D50(v20, &qword_27DDC6A80, &qword_232CF6D30);
    v33 = 0;
    v34 = 1;
    v35 = v57;
    goto LABEL_13;
  }

  sub_232CE9A20();
  v30 = sub_232CE9A00();
  v31 = sub_232CEA1A0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_232B02000, v30, v31, "DUAdapterPostProcessing: No extraction for isoDate since stringDate is not grounded in sourceText.", v32, 2u);
    MEMORY[0x238393870](v32, -1, -1);
  }

  (*(v54 + 8))(v14, v55);
  v33 = 0;
  v34 = 1;
  v29 = v56;
  v35 = v57;
LABEL_13:
  sub_232B12504(v35, v34, 1, v29);
  return v33;
}

void sub_232BE02E0(uint64_t a1)
{
  v2 = sub_232CE8D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - v7;
  MEMORY[0x28223BE20](v8);
  v38 = &v37 - v9;
  v10 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30) - 8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = *(a1 + 16);
  v42 = v3;
  if (v17)
  {
    v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = v5;
    v19 = *(v14 + 72);
    v20 = (v3 + 32);
    v21 = MEMORY[0x277D84F90];
    v39 = v20;
    do
    {
      sub_232B34D3C(v18, v16, &qword_27DDC6A80, &qword_232CF6D30);
      sub_232BA4BBC(v16, v12);
      if (sub_232B12480(v12, 1, v2) == 1)
      {
        sub_232BA4D50(v12, &qword_27DDC6A80, &qword_232CF6D30);
      }

      else
      {
        v22 = *v20;
        (*v20)(v41, v12, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B36664();
          v21 = v25;
        }

        v23 = *(v21 + 16);
        if (v23 >= *(v21 + 24) >> 1)
        {
          sub_232B36664();
          v21 = v26;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v23;
        v20 = v39;
        v22(v24, v41, v2);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v41 = *(v21 + 16);
  if (v41)
  {
    v39 = (v42 + 8);
    v27 = 1;
    v28 = v38;
    while (v41 != v27)
    {
      v29 = *(v21 + 16);
      if (v27 - 1 >= v29)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v30 = v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v31 = *(v42 + 72);
      v32 = *(v42 + 16);
      v32(v28, v30 + v31 * (v27 - 1), v2);
      if (v27 >= v29)
      {
        goto LABEL_21;
      }

      v33 = v30 + v31 * v27;
      v34 = v40;
      v32(v40, v33, v2);
      sub_232BEA068(&qword_27DDC7518, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v35 = sub_232CE9CE0();
      v36 = *v39;
      (*v39)(v34, v2);
      v36(v28, v2);
      ++v27;
      if ((v35 & 1) == 0)
      {
        break;
      }
    }
  }
}

unint64_t sub_232BE0738(uint64_t a1, uint64_t a2)
{
  v2 = sub_232CEA670();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_232BE0784(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x65746174735F6469;
      break;
    case 3:
      result = 0x70737361705F6469;
      break;
    case 4:
      result = 0x6E656572675F6469;
      break;
    case 5:
      result = 0x6E73735F6469;
      break;
    case 6:
      result = 0x6F6974616E5F6469;
      break;
    case 7:
      result = 0x65647574735F6469;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = sub_232BA56F8();
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x636E617275736E69;
      break;
    case 12:
      result = 0x68737265626D656DLL;
      break;
    case 13:
      result = 0x5F7469736E617274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232BE0984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232BE0738(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_232BE09B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232BE0784(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_232BE09F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_232CE9A30();
  sub_232B48F0C();
  v213 = v7;
  v214 = v6;
  MEMORY[0x28223BE20](v6);
  v212 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v10 = sub_232B27FBC(v9);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v222 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v221 = &v205 - v16;
  MEMORY[0x28223BE20](v17);
  v220 = &v205 - v18;
  v19 = *MEMORY[0x277D064F8];
  sub_232B6FF88();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223 = v24;
    sub_232B1FCE4(v22, v23, v19, isUniquelyReferenced_nonNull_native);
    v26 = v223;
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
    sub_232BEA524();
    if (v27)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v28, v29, v30, v31);
      sub_232BEA0DC();
      sub_232BEA068(v32, v33, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v34)
  {
    sub_232BEA398();
    v35 = sub_232BEA1BC();
    sub_232B1FCE4(v35, v36, v37, v38);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v39)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v40, v41, v42, v43);
      sub_232BEA0DC();
      sub_232BEA068(v44, v45, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v46)
  {
    sub_232BEA398();
    v47 = sub_232BEA1BC();
    sub_232B1FCE4(v47, v48, v49, v50);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v51)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v52, v53, v54, v55);
      sub_232BEA0DC();
      sub_232BEA068(v56, v57, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v58)
  {
    sub_232BEA398();
    v59 = sub_232BEA1BC();
    sub_232B1FCE4(v59, v60, v61, v62);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v63)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v64, v65, v66, v67);
      sub_232BEA0DC();
      sub_232BEA068(v68, v69, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v70)
  {
    sub_232BEA398();
    v71 = sub_232BEA1BC();
    sub_232B1FCE4(v71, v72, v73, v74);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v75)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v76, v77, v78, v79);
      sub_232BEA0DC();
      sub_232BEA068(v80, v81, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v82)
  {
    sub_232BEA398();
    v83 = sub_232BEA1BC();
    sub_232B1FCE4(v83, v84, v85, v86);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v87)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v88, v89, v90, v91);
      sub_232BEA0DC();
      sub_232BEA068(v92, v93, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA404();
  if (v94)
  {
    sub_232BEA398();
    v95 = sub_232BEA1BC();
    sub_232B1FCE4(v95, v96, v97, v98);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v99)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v100, v101, v102, v103);
      sub_232BEA0DC();
      sub_232BEA068(v104, v105, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  v106 = v220;
  v209 = sub_232BDFD2C(v220, v3[28], v3[29], v3[30], v3[31]);
  v206 = v107;
  v217 = v108;
  v109 = v221;
  v210 = sub_232BDFD2C(v221, v3[18], v3[19], v3[20], v3[21]);
  v207 = v110;
  v216 = v111;
  v112 = v3[22];
  v113 = v3[23];
  v114 = v3[24];
  v115 = v3[25];
  v116 = v222;
  v218 = a1;
  v219 = a2;
  v211 = sub_232BDFD2C(v222, v112, v113, v114, v115);
  v208 = v117;
  v215 = v118;
  sub_232B124A8(&qword_27DDC7900, &unk_232CFB560);
  v119 = *(v12 + 72);
  v120 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_232CF8180;
  v122 = v121 + v120;
  sub_232B34D3C(v106, v122, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B34D3C(v109, v122 + v119, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B34D3C(v116, v122 + 2 * v119, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232BE02E0(v121);
  LOBYTE(v122) = v123;
  swift_setDeallocating();
  sub_232C78808();
  if (v122)
  {
    v125 = v216;
    v124 = v217;
    v126 = v215;
    if (v209)
    {
      if (v217)
      {
        v127 = *MEMORY[0x277D064A8];
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232B1FCE4(v206, v124, v127, v128);
        v26 = v223;
      }
    }

    else
    {
    }

    if (v210)
    {
      if (v125)
      {
        v133 = *MEMORY[0x277D06638];
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232B1FCE4(v207, v125, v133, v134);
        v26 = v223;
      }
    }

    else
    {
    }

    if (v211)
    {
      if (v126)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BEA1F4();
        sub_232BEA588();
        sub_232B1FCE4(v135, v136, v137, v138);
        v26 = v223;
      }
    }

    else
    {
    }
  }

  else
  {

    v129 = v212;
    sub_232CE9A20();
    v130 = sub_232CE9A00();
    v131 = sub_232CEA1A0();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_232B02000, v130, v131, "(DUPersonaIDAdapter): No extraction for dates not in chronological order.", v132, 2u);
      MEMORY[0x238393870](v132, -1, -1);
    }

    (*(v213 + 8))(v129, v214);
  }

  sub_232BEA474();
  if (v139)
  {
    sub_232BEA398();
    v140 = sub_232BEA1BC();
    sub_232B1FCE4(v140, v141, v142, v143);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v144)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v145, v146, v147, v148);
      sub_232BEA0DC();
      sub_232BEA068(v149, v150, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA474();
  if (v151)
  {
    sub_232BEA398();
    v152 = sub_232BEA1BC();
    sub_232B1FCE4(v152, v153, v154, v155);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v156)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v157, v158, v159, v160);
      sub_232BEA0DC();
      sub_232BEA068(v161, v162, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA474();
  if (v163)
  {
    sub_232BEA398();
    v164 = sub_232BEA1BC();
    sub_232B1FCE4(v164, v165, v166, v167);
    v26 = v223;
  }

  else
  {
    sub_232BEA524();
    if (v168)
    {
      sub_232BEA3B4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BEA204();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BEA27C();
      sub_232BEA348();
      sub_232BEA25C(v169, v170, v171, v172);
      sub_232BEA0DC();
      sub_232BEA068(v173, v174, &unk_232CF5390);
      sub_232BEA364();
    }
  }

  sub_232BEA474();
  v175 = sub_232BA4E6C();
  v177 = v176;

  if (v177)
  {

    v178 = *MEMORY[0x277D06430];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BEA1F4();
    v180 = v175;
    v181 = v177;
    v182 = v178;
LABEL_61:
    sub_232B1FCE4(v180, v181, v182, v179);
    v26 = v223;
    goto LABEL_62;
  }

  v175 = *MEMORY[0x277D06430];
  sub_232BEA474();
  if (v183)
  {
    sub_232BEA398();
    v180 = sub_232BEA1BC();
    goto LABEL_61;
  }

  sub_232BEA524();
  if (v198)
  {
    sub_232BEA3B4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BEA204();
    sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
    sub_232BEA27C();
    sub_232BEA348();
    sub_232BEA25C(v199, v200, v201, v202);
    sub_232BEA0DC();
    sub_232BEA068(v203, v204, &unk_232CF5390);
    sub_232BEA364();
  }

LABEL_62:
  sub_232BC2214(v26);
  sub_232BEA3B4();

  v187 = sub_232B8066C(v175, v184, v185, v186);

  sub_232BEA588();
  sub_232BA4D50(v188, v189, v190);
  sub_232BEA588();
  sub_232BA4D50(v191, v192, v193);
  sub_232BEA588();
  sub_232BA4D50(v194, v195, v196);
  return v187;
}

void sub_232BE1658()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232CE98C0();
  if (v0)
  {
    sub_232CE98D0();
    sub_232BA5190();
    (*(v5 + 8))(v2);
  }

  else
  {
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BEA5CC();
    sub_232CE98C0();
    sub_232BEA57C();
    v18 = v6;
    sub_232BA6F7C(0xD000000000000018);
    sub_232BEA57C();
    v17 = v7;
    sub_232BA6F7C(0xD000000000000014);
    sub_232BEA57C();
    v16 = v8;
    sub_232BA6F7C(0xD000000000000015);
    sub_232BEA57C();
    v15 = v9;
    sub_232BA6F7C(0xD000000000000017);
    sub_232BEA57C();
    v14 = v10;
    sub_232BEA5B8();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232BEA458(0x6974617269707865);
    v11 = sub_232BEA5B8();
    sub_232BEA53C(v11);
    sub_232BEA458(0x6E5F6E6F73726570);
    sub_232BEA458(0x5F666F5F65746164);
    sub_232BEA53C(0xD000000000000011);
    sub_232BEA53C(7890291);
    sub_232BEA458(0x666F5F6563616C70);
    sub_232BEA458(0x6C616E6F6974616ELL);
    v12 = sub_232BA7040();
    sub_232BEA53C(v12);
    sub_232CE98D0();
    sub_232BA5190();
    (*(v13 + 8))(v2);
    __src[0] = v21;
    __src[1] = v22;
    v23 = v21;
    __src[2] = v21;
    __src[3] = v22;
    v24 = v22;
    v25 = v21;
    __src[4] = v21;
    __src[5] = v22;
    v26 = v22;
    v27 = 0;
    __src[6] = 0;
    __src[7] = v18;
    v28 = v18;
    v29 = 0;
    __src[8] = 0;
    __src[9] = v17;
    v30 = v17;
    v31 = 0;
    __src[10] = 0;
    __src[11] = v16;
    v32 = v16;
    v33 = 0;
    __src[12] = 0;
    __src[13] = v15;
    v34 = v15;
    v35 = 0;
    __src[14] = 0;
    __src[15] = v14;
    v36 = v14;
    v37 = v21;
    __src[16] = v21;
    __src[17] = v22;
    v38 = v22;
    v39 = v21;
    __src[18] = v21;
    __src[19] = v22;
    v40 = v22;
    v41 = v21;
    __src[20] = v21;
    __src[21] = v22;
    v42 = v22;
    v43 = v21;
    __src[22] = v21;
    __src[23] = v22;
    v44 = v22;
    v45 = v21;
    __src[24] = v21;
    __src[25] = v22;
    v46 = v22;
    v47 = v21;
    __src[26] = v21;
    __src[27] = v22;
    v48 = v22;
    v49 = v21;
    __src[28] = v21;
    __src[29] = v22;
    v50 = v22;
    v51 = v21;
    __src[30] = v21;
    __src[31] = v22;
    v52 = v22;
    v53 = v21;
    __src[32] = v21;
    __src[33] = v22;
    v54 = v22;
    v55 = v21;
    __src[34] = v21;
    __src[35] = v22;
    v56 = v22;
    __src[36] = v21;
    __src[37] = v22;
    v57 = v21;
    v58 = v22;
    v59 = v61;
    __src[38] = v61;
    __src[39] = v62;
    v60 = v62;
    sub_232BE9964(__src, v19);
    sub_232BE999C(&v21);
    memcpy(v4, __src, 0x140uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232BE25B4()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD4FE8);
  sub_232B135C4(v0, qword_27DDD4FE8);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  sub_232CE9920();
  *(swift_allocObject() + 16) = xmmword_232CFAF80;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

uint64_t sub_232BE2A8C()
{
  v0 = *MEMORY[0x277D064D0];
  sub_232B70A14();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v5;
    sub_232B1FCE4(v3, v4, v0, isUniquelyReferenced_nonNull_native);
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
    sub_232BA658C();
    if (v8)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v9 = sub_232BA5828();
      sub_232BEA3E8(v9, v10, v11, v12, v13, v14, v15, v16, v141, v142);
      sub_232BA5744(v17, v18, v19, v20);
      sub_232BEA0DC();
      sub_232BEA068(v21, v22, &unk_232CF5390);
      sub_232BEA420();
    }
  }

  sub_232BEA3CC();
  if (v23)
  {
    sub_232BEA43C();
    v24 = sub_232BEA1D8();
    sub_232B1FCE4(v24, v25, v26, v27);
    v7 = v142;
  }

  else
  {
    sub_232BA658C();
    if (v28)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v29 = sub_232BA5828();
      sub_232BEA3E8(v29, v30, v31, v32, v33, v34, v35, v36, v141, v142);
      sub_232BA5744(v37, v38, v39, v40);
      sub_232BEA0DC();
      sub_232BEA068(v41, v42, &unk_232CF5390);
      sub_232BEA420();
    }
  }

  sub_232B37C0C();
  sub_232BEA3CC();
  v43 = sub_232BA4E6C();
  v45 = v44;

  if (v45)
  {

    v46 = *MEMORY[0x277D06430];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v7;
    v48 = v43;
    v49 = v45;
    v50 = v46;
LABEL_13:
    sub_232B1FCE4(v48, v49, v50, v47);
    v7 = v142;
    goto LABEL_14;
  }

  sub_232B37C0C();
  sub_232BEA3CC();
  if (v51)
  {
    sub_232BEA43C();
    v48 = sub_232BEA1D8();
    goto LABEL_13;
  }

  sub_232BA658C();
  if (v126)
  {
    sub_232BA5CA0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5538();
    sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
    v127 = sub_232BA5828();
    sub_232BEA3E8(v127, v128, v129, v130, v131, v132, v133, v134, v141, v142);
    sub_232BA5744(v135, v136, v137, v138);
    sub_232BEA0DC();
    sub_232BEA068(v139, v140, &unk_232CF5390);
    sub_232BEA420();
  }

LABEL_14:
  sub_232BEA3CC();
  if (v52)
  {
    sub_232BEA43C();
    v53 = sub_232BEA1D8();
    sub_232B1FCE4(v53, v54, v55, v56);
    v7 = v142;
  }

  else
  {
    sub_232BA658C();
    if (v57)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v58 = sub_232BA5828();
      sub_232BEA3E8(v58, v59, v60, v61, v62, v63, v64, v65, v141, v142);
      sub_232BA5744(v66, v67, v68, v69);
      sub_232BEA0DC();
      sub_232BEA068(v70, v71, &unk_232CF5390);
      sub_232BEA420();
    }
  }

  sub_232BEA3CC();
  if (v72)
  {
    sub_232BEA43C();
    v73 = sub_232BEA1D8();
    sub_232B1FCE4(v73, v74, v75, v76);
    v7 = v142;
  }

  else
  {
    sub_232BA658C();
    if (v77)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v78 = sub_232BA5828();
      sub_232BEA3E8(v78, v79, v80, v81, v82, v83, v84, v85, v141, v142);
      sub_232BA5744(v86, v87, v88, v89);
      sub_232BEA0DC();
      sub_232BEA068(v90, v91, &unk_232CF5390);
      sub_232BEA420();
    }
  }

  sub_232BEA3CC();
  if (v92)
  {
    sub_232BEA43C();
    v93 = sub_232BEA1D8();
    sub_232B1FCE4(v93, v94, v95, v96);
    v7 = v142;
  }

  else
  {
    sub_232BA658C();
    if (v97)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      v98 = sub_232BA5828();
      sub_232BEA3E8(v98, v99, v100, v101, v102, v103, v104, v105, v141, v142);
      sub_232BA5744(v106, v107, v108, v109);
      sub_232BEA0DC();
      sub_232BEA068(v110, v111, &unk_232CF5390);
      sub_232BEA420();
    }
  }

  v112 = *MEMORY[0x277D064C8];
  sub_232BEA3CC();
  if (v113)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v114 = sub_232BA5FEC();
    sub_232B1FCE4(v114, v115, v112, v116);
  }

  else
  {
    v117 = sub_232BA658C();
    if (v118)
    {
      v119 = v117;
      swift_isUniquelyReferenced_nonNull_native();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232CEA5C0();

      type metadata accessor for DUExtractionAttributeKey(0, v120, v121, v122);
      sub_232BEA0DC();
      sub_232BEA068(v123, v124, &unk_232CF5390);
      sub_232BEA3C0();
      sub_232CEA5E0();
    }
  }

  return v7;
}

void sub_232BE3078()
{
  sub_232BA66A0();
  v2 = v1;
  v4 = v3;
  sub_232BA56F8();
  sub_232CE98C0();
  if (v0)
  {
    sub_232CE98D0();
    sub_232BA5190();
    (*(v5 + 8))(v2);
  }

  else
  {
    sub_232CE98C0();
    sub_232BA7040();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98C0();
    sub_232CE98D0();
    sub_232BA5190();
    (*(v6 + 8))(v2);
    __src[0] = v9;
    __src[1] = v10;
    __src[2] = v9;
    __src[3] = v10;
    __src[4] = v9;
    __src[5] = v10;
    __src[6] = v9;
    __src[7] = v10;
    __src[8] = v9;
    __src[9] = v10;
    __src[10] = v9;
    __src[11] = v10;
    __src[12] = v23;
    __src[13] = v24;
    v11 = v9;
    v12 = v10;
    v13 = v9;
    v14 = v10;
    v15 = v9;
    v16 = v10;
    v17 = v9;
    v18 = v10;
    v19 = v9;
    v20 = v10;
    v21 = v23;
    v22 = v24;
    sub_232BE99CC(__src, v7);
    sub_232BE9A04(&v9);
    memcpy(v4, __src, 0x70uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232BE350C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD5000);
  sub_232B135C4(v0, qword_27DDD5000);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  sub_232CE9920();
  *(swift_allocObject() + 16) = xmmword_232CF79E0;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232BE3748()
{
  sub_232BA66A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  v49 = v9;
  if (((1 << v5) & 0x3DFE) == 0)
  {
    if (!v5)
    {
      sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_232CF6460;
      type metadata accessor for DUExtractionAttributeKey(0, v35, v36, v37);
      sub_232BEA0DC();
      sub_232BEA068(v38, v39, &unk_232CF5390);
      *(v34 + 32) = sub_232CE9C60();
      goto LABEL_10;
    }

    v46[1] = v7;
    v40 = v1;
    v41 = *(v1 + 16);
    if (v41 != 1)
    {
      v47 = v16;
      v48 = v15;
      sub_232CE9A20();

      v42 = sub_232CE9A00();
      v43 = sub_232CEA1C0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v41;

        _os_log_impl(&dword_232B02000, v42, v43, "(DUPersonaIDAdapter) convertToDUSchema: unexpected %ld business_card_info", v44, 0xCu);
        MEMORY[0x238393870](v44, -1, -1);
      }

      else
      {
      }

      (*(v47 + 8))(v13, v48);
      if (!v41)
      {
        goto LABEL_7;
      }
    }

    memcpy(v52, (v40 + 32), 0x70uLL);
    sub_232BE99CC(v52, v50);
    v45 = sub_232BE2A8C();
    sub_232BE9A04(v52);
    v25 = *MEMORY[0x277D06510];
    swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v45;
    v30 = sub_232BA56F8();
    v31 = 0xED0000647261635FLL;
LABEL_9:
    sub_232B1FCE4(v30, v31, v25, isUniquelyReferenced_nonNull_native);
    v32 = v50[0];
    sub_232B124A8(&qword_27DDC6C50, &unk_232CF6FE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_232CF6460;
    *(v33 + 32) = v32;
    goto LABEL_10;
  }

  v19 = *(v3 + 16);
  if (v19 == 1)
  {
    goto LABEL_8;
  }

  v47 = v16;
  v48 = v15;
  sub_232CE9A20();

  v20 = sub_232CE9A00();
  v21 = sub_232CEA1C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v19;

    _os_log_impl(&dword_232B02000, v20, v21, "(DUPersonaIDAdapter) convertToDUSchema: unexpected %ld id_card_info", v22, 0xCu);
    MEMORY[0x238393870](v22, -1, -1);
  }

  else
  {
  }

  (*(v47 + 8))(v18, v48);
  if (v19)
  {
LABEL_8:
    memcpy(v51, (v3 + 32), sizeof(v51));
    sub_232BE9964(v51, v50);
    v24 = sub_232BE09F0(v49, v7);
    sub_232BE999C(v51);
    v25 = *MEMORY[0x277D06510];
    v26 = sub_232BE0784(v5);
    v28 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v24;
    v30 = v26;
    v31 = v28;
    goto LABEL_9;
  }

LABEL_7:
  sub_232BEA014();
  swift_allocError();
  *v23 = 0xD00000000000002CLL;
  v23[1] = 0x8000000232D08240;
  swift_willThrow();
LABEL_10:
  sub_232BA6688();
}

uint64_t sub_232BE3C10(uint64_t a1)
{
  sub_232BE9A34();
  sub_232CE98C0();
  sub_232B124A8(&qword_27DDC78B0, &qword_232CFB2D0);
  sub_232BE9ADC(&qword_27DDC78B8, &qword_27DDC78B0, &qword_232CFB2D0, sub_232BE9A88);
  sub_232BEA5CC();
  sub_232CE98C0();
  sub_232B124A8(&qword_27DDC78C8, &qword_232CFB2D8);
  sub_232BE9ADC(&qword_27DDC78D0, &qword_27DDC78C8, &qword_232CFB2D8, sub_232BE9B58);
  sub_232CE98C0();
  sub_232CE98D0();
  sub_232BA5190();
  (*(v3 + 8))(a1);
  return v4;
}

uint64_t sub_232BE3E28()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_27DDD5018);
  sub_232B135C4(v0, qword_27DDD5018);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  sub_232CE9920();
  *(swift_allocObject() + 16) = xmmword_232CF8180;
  sub_232BE9A34();
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC78B0, &qword_232CFB2D0);
  sub_232BE9ADC(&qword_27DDC78B8, &qword_27DDC78B0, &qword_232CFB2D0, sub_232BE9A88);
  sub_232CE9910();
  sub_232B124A8(&qword_27DDC78C8, &qword_232CFB2D8);
  sub_232BE9ADC(&qword_27DDC78D0, &qword_27DDC78C8, &qword_232CFB2D8, sub_232BE9B58);
  sub_232CE9910();
  return sub_232CE9930();
}

uint64_t sub_232BE406C()
{
  v0 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  sub_232B135FC(v0, qword_2814E3E98);
  sub_232B135C4(v0, qword_2814E3E98);
  return sub_232CE8F30();
}

uint64_t sub_232BE40C4()
{
  result = sub_232CE8F50();
  qword_27DDD5030 = result;
  *algn_27DDD5038 = v1;
  return result;
}

uint64_t sub_232BE40E8()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_232CE9780();
  v1[7] = v6;
  sub_232B27FBC(v6);
  v1[8] = v7;
  v1[9] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BE4198()
{
  sub_232B26C44();
  sub_232BE7008();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_232BE423C;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];

  return sub_232BE4470(v2, v4, v5, v3);
}

uint64_t sub_232BE423C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232BEA640();
  sub_232B482F8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_232B26C70();
  v12 = v11;
  sub_232B51338();
  *v13 = v12;
  v14 = *v4;
  sub_232B26B3C();
  *v15 = v14;
  *(v12 + 88) = v3;

  if (!v3)
  {
    *(v12 + 96) = v6;
    *(v12 + 104) = v8;
    *(v12 + 112) = v10;
  }

  sub_232B48304();
  sub_232BA7440();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_232BE4354()
{
  sub_232B26C44();
  v1 = v0[7].i8[0];
  v2 = v0[4].i64[0];
  v3 = v0[4].i64[1];
  v4 = v0[3].i64[1];
  v5 = v0[1].i64[0];
  v6 = v0[6];
  *(v5 + 24) = &type metadata for UnifiedID;
  *(v5 + 32) = &off_2848126D0;
  *v5 = v1;
  *(v5 + 8) = vextq_s8(v6, v6, 8uLL);
  (*(v2 + 8))(v3, v4);

  sub_232B26CF4();

  return v7();
}

uint64_t sub_232BE43F8()
{
  sub_232B26C44();
  (*(v0[8] + 8))(v0[9], v0[7]);

  sub_232B26CF4();

  return v1();
}

uint64_t sub_232BE4470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v5 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v4[5] = v5;
  sub_232B27FBC(v5);
  v4[6] = v6;
  v4[7] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v4[8] = v7;
  *v7 = v8;
  sub_232BEA29C(v7);
  sub_232BA7440();

  return sub_232BE5CC4(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_232BE455C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[10] = v10;
    sub_232BEA244();
    v13 = sub_232BEA068(v11, v12, MEMORY[0x277D71A70]);
    v14 = sub_232BE9868();
    *v10 = v5;
    v10[1] = sub_232BE470C;
    v15 = v3[5];

    return MEMORY[0x282165A90](v3 + 2, &type metadata for UnifiedID, &type metadata for UnifiedID, v15, &type metadata for UnifiedID, v13, v14);
  }
}

uint64_t sub_232BE470C()
{
  sub_232B26C7C();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 88) = v0;

  v7 = sub_232BA5FEC();
  v8(v7);
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BE4860()
{
  sub_232B26C44();

  sub_232B26CF4();

  return v0();
}

uint64_t sub_232BE48BC()
{
  sub_232B26C7C();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_232BE4938()
{
  sub_232B26C44();

  sub_232B26CF4();

  return v0();
}

uint64_t sub_232BE4994()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BE4A40()
{
  sub_232B26C44();
  sub_232BE7008();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = sub_232BEA4D0(v1);

  return sub_232BE4AD0(v2, v3, v4, v5);
}

uint64_t sub_232BE4AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v5 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v4[2] = v5;
  sub_232B27FBC(v5);
  v4[3] = v6;
  v4[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v4[5] = v7;
  *v7 = v8;
  sub_232BEA29C(v7);
  sub_232BA7440();

  return sub_232BE4F00(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_232BE4BBC()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    sub_232BEA244();
    sub_232BEA068(v11, v12, MEMORY[0x277D71A40]);
    *v10 = v5;
    v13 = sub_232BA6F94();

    return MEMORY[0x282165A78](v13);
  }
}

uint64_t sub_232BE4D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v8 = v7;
  *v8 = *v5;
  *(v7 + 64) = v4;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v4)
  {
    sub_232B48304();
    sub_232BA7440();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    sub_232BA5FEC();
    sub_232BA7440();

    return v16(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_232BE4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  sub_232B124A8(&qword_27DDC7350, &unk_232CF9020);
  v6[34] = swift_task_alloc();
  v6[35] = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[36] = swift_task_alloc();
  v7 = sub_232CE9280();
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  v8 = sub_232CE92A0();
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC7360, &unk_232CF9030);
  v6[43] = swift_task_alloc();
  v9 = sub_232CE9900();
  v6[44] = v9;
  v6[45] = *(v9 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_232CE9210();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v11 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[51] = v11;
  v6[52] = *(v11 - 8);
  v6[53] = swift_task_alloc();
  v12 = sub_232CE9B10();
  v6[54] = v12;
  v6[55] = *(v12 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE5294, 0, 0);
}

uint64_t sub_232BE5294()
{
  sub_232BEA2F0();
  *(sub_232BEA600() + 16) = v0;
  sub_232BEA5E0();

  sub_232CE9B00();
  v7 = sub_232BEA4EC();
  v8 = v5(v7);
  sub_232B9CC54(v8);
  v9 = sub_232BEA564();
  v10(v9);
  sub_232BEA214();
  v1[64] = sub_232BEA068(v11, v12, MEMORY[0x277D42D70]);
  sub_232BA6050();
  sub_232CE9BE0();
  (*(v6 + 8))(v3, v2);
  (v5)(v5, v4);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v14 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BEA594(v14, MEMORY[0x277D42EC0], v36, v38, v40);
  v1[65] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  v15 = sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v5)(v48, v4);
  sub_232CE9C60();
  v16 = v44;
  sub_232BA6050();
  sub_232CE9B90();

  (v5)(v42, v4);
  v1[66] = *(v43 + 32);
  v17 = sub_232BEA4B0();
  v25 = sub_232BEA490(v17, v18, v19, v20, v21, v22, v23, v24, v37, v39, v41, v42, v43, v44, v45, v46, v47);
  v26(v25);
  sub_232BA6050();
  sub_232CE9BF0();
  v27 = sub_232BEA554();
  v28(v27, v15);
  (v5)(v16, v4);
  v29 = sub_232CE98F0();
  sub_232BEA508(v29, v30, v31, v29);
  sub_232BA6870();
  swift_task_alloc();
  sub_232BA6740();
  v1[67] = v32;
  *v32 = v33;
  v34 = sub_232BEA2D4(v32);

  return MEMORY[0x282166B60](v34);
}

uint64_t sub_232BE5594()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 544) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BE5690()
{
  v2 = v0[34];
  sub_232B124A8(&qword_27DDC7380, &unk_232CF9050);
  v3 = sub_232BA5CA0();
  if (sub_232B12480(v3, 1, v1) == 1)
  {
    sub_232BA4D50(v2, &qword_27DDC7350, &unk_232CF9020);
  }

  else
  {
    v42 = v0[62];
    v39 = v0[61];
    v41 = v0[54];
    v43 = v0[42];
    v40 = v0[41];
    v5 = v0[37];
    v4 = v0[38];
    v38 = v0[40];
    v6 = v0[35];
    v7 = v0[36];
    v37 = v0[29];
    v33 = *(v1 + 48);
    v34 = v0[39];
    v32 = *(v6 + 48);
    v8 = *(v40 + 32);
    sub_232BA5C64();
    v8();
    v9 = *(v4 + 32);
    v9(v7 + v32, v2 + v33, v5);
    v10 = *(v6 + 48);
    sub_232BA6050();
    v8();
    v9(v34, v7 + v10, v5);
    sub_232CE9270();
    v11 = sub_232BEA3C0();
    v12(v11);
    v13 = sub_232BA5FEC();
    v14(v13);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC7388, &qword_232CF9060);
    inited = swift_initStackObject();
    v16 = sub_232BA6308(inited, xmmword_232CF6460);
    inited[4].n128_u64[1] = v16;
    sub_232BEA22C();
    inited[5].n128_u64[0] = sub_232BEA068(v17, v18, MEMORY[0x277D0E678]);
    v19 = sub_232BA18A8(&inited[3]);
    (*(*(v16 - 8) + 16))(v19, v37, v16);
    sub_232B124A8(&qword_27DDC7390, &qword_232CF9068);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA620(v39);

    v20 = sub_232B37C0C();
    v21(v20);
    (*(v40 + 8))(v43, v38);
    v42(v39, v41);
    v22 = sub_232BA7224();
    v23(v22);
  }

  v24 = v0[66];
  v25 = v0[61];
  v36 = v0[62];
  v26 = v0[60];
  v27 = v0[54];
  v28 = v0[47];
  v29 = v0[45];
  v35 = v0[44];
  sub_232CE9B80();
  v0[27] = *(v24 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v36(v26, v27);
  (*(v29 + 8))(v28, v35);
  v36(v25, v27);

  sub_232B26CF4();

  return v30();
}

uint64_t sub_232BE5B60()
{
  v1 = v0[62];
  v2 = v0[61];
  v3 = v0[54];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v2, v3);

  sub_232B26CF4();

  return v4();
}

uint64_t sub_232BE5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  sub_232B124A8(&qword_27DDC7350, &unk_232CF9020);
  v6[34] = swift_task_alloc();
  v6[35] = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[36] = swift_task_alloc();
  v7 = sub_232CE9280();
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  v8 = sub_232CE92A0();
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC7360, &unk_232CF9030);
  v6[43] = swift_task_alloc();
  v9 = sub_232CE9900();
  v6[44] = v9;
  v6[45] = *(v9 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_232CE9210();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v11 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[51] = v11;
  v6[52] = *(v11 - 8);
  v6[53] = swift_task_alloc();
  v12 = sub_232CE9B10();
  v6[54] = v12;
  v6[55] = *(v12 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE6058, 0, 0);
}

uint64_t sub_232BE6058()
{
  sub_232BEA2F0();
  *(sub_232BEA600() + 16) = v0;
  sub_232BEA5E0();

  sub_232CE9B00();
  v7 = sub_232BEA4EC();
  v8 = v5(v7);
  sub_232B9CC54(v8);
  v9 = sub_232BEA564();
  v10(v9);
  sub_232BEA214();
  v1[64] = sub_232BEA068(v11, v12, MEMORY[0x277D42D70]);
  sub_232BA6050();
  sub_232CE9BE0();
  (*(v6 + 8))(v3, v2);
  (v5)(v5, v4);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v14 = sub_232BA5A90(inited, xmmword_232CF6460);
  sub_232BEA594(v14, MEMORY[0x277D42EC0], v36, v38, v40);
  v1[65] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  v15 = sub_232CE9C60();
  sub_232BA6050();
  sub_232CE9C10();

  (v5)(v48, v4);
  sub_232CE9C60();
  v16 = v44;
  sub_232BA6050();
  sub_232CE9B90();

  (v5)(v42, v4);
  v1[66] = *(v43 + 32);
  v17 = sub_232BEA4B0();
  v25 = sub_232BEA490(v17, v18, v19, v20, v21, v22, v23, v24, v37, v39, v41, v42, v43, v44, v45, v46, v47);
  v26(v25);
  sub_232BA6050();
  sub_232CE9BF0();
  v27 = sub_232BEA554();
  v28(v27, v15);
  (v5)(v16, v4);
  v29 = sub_232CE98F0();
  sub_232BEA508(v29, v30, v31, v29);
  sub_232BA6870();
  swift_task_alloc();
  sub_232BA6740();
  v1[67] = v32;
  *v32 = v33;
  v34 = sub_232BEA2D4(v32);

  return MEMORY[0x282166B60](v34);
}

uint64_t sub_232BE6358()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 544) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_232BE6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v20;
  a20 = v21;
  v22 = sub_232CE9B10();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &a9 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9780();
  sub_232BEA22C();
  sub_232BEA068(v26, v27, MEMORY[0x277D0E678]);
  sub_232CE9B40();
  sub_232B124A8(&qword_27DDC73A8, &qword_232CF9080);
  v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_232CF6460;
  (*(v23 + 16))(v29 + v28, v25, v22);
  MEMORY[0x2383918C0](v29);

  (*(v23 + 8))(v25, v22);
  sub_232BA6688();
}

unsigned __int8 *sub_232BE65EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v55 = a4;
  v58 = a3;
  v10 = sub_232CE8FE0();
  MEMORY[0x28223BE20](v10 - 8);
  v54[2] = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232CE9080();
  MEMORY[0x28223BE20](v12 - 8);
  v54[1] = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - v16;
  v18 = sub_232CE9210();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v57 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v19 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig, v21, v18);
  v22 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v24 = v23;

  if (v24)
  {
    v26 = HIBYTE(v24) & 0xF;
    v27 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v28 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v28 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      goto LABEL_64;
    }

    if ((v24 & 0x1000000000000000) != 0)
    {
      sub_232BA2B04(v22, v24, 10);
      goto LABEL_64;
    }

    if ((v24 & 0x2000000000000000) != 0)
    {
      v59[0] = v22;
      v59[1] = v24 & 0xFFFFFFFFFFFFFFLL;
      if (v22 == 43)
      {
        if (v26)
        {
          if (--v26)
          {
            v42 = 0;
            v43 = v59 + 1;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v42;
              if ((v42 * 10) >> 64 != (10 * v42) >> 63)
              {
                break;
              }

              v42 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v26)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_73:
        __break(1u);
        return result;
      }

      if (v22 != 45)
      {
        if (v26)
        {
          v49 = 0;
          v50 = v59;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            v52 = 10 * v49;
            if ((v49 * 10) >> 64 != (10 * v49) >> 63)
            {
              break;
            }

            v49 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            ++v50;
            if (!--v26)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v26)
      {
        if (--v26)
        {
          v34 = 0;
          v35 = v59 + 1;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v37 - v36;
            if (__OFSUB__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v26)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v22 & 0x1000000000000000) != 0)
      {
        result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_232CEA550();
      }

      v29 = *result;
      if (v29 == 43)
      {
        if (v27 >= 1)
        {
          v26 = v27 - 1;
          if (v27 != 1)
          {
            v38 = 0;
            if (result)
            {
              v39 = result + 1;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  goto LABEL_62;
                }

                v41 = 10 * v38;
                if ((v38 * 10) >> 64 != (10 * v38) >> 63)
                {
                  goto LABEL_62;
                }

                v38 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  goto LABEL_62;
                }

                ++v39;
                if (!--v26)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      if (v29 != 45)
      {
        if (v27)
        {
          v46 = 0;
          if (result)
          {
            while (1)
            {
              v47 = *result - 48;
              if (v47 > 9)
              {
                goto LABEL_62;
              }

              v48 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                goto LABEL_62;
              }

              v46 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v27)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        LOBYTE(v26) = 1;
        goto LABEL_63;
      }

      if (v27 >= 1)
      {
        v26 = v27 - 1;
        if (v27 != 1)
        {
          v30 = 0;
          if (result)
          {
            v31 = result + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                goto LABEL_62;
              }

              v33 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                goto LABEL_62;
              }

              v30 = v33 - v32;
              if (__OFSUB__(v33, v32))
              {
                goto LABEL_62;
              }

              ++v31;
              if (!--v26)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v26) = 0;
LABEL_63:
          v60 = v26;
LABEL_64:

          goto LABEL_65;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_65:
  sub_232CE8FC0();
  if (qword_2814E0BF8 != -1)
  {
    swift_once();
  }

  v53 = sub_232B135C4(v14, qword_2814E3E98);
  (*(v15 + 16))(v17, v53, v14);
  sub_232CE8FD0();
  sub_232CE9070();
  *(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding19DUPersonalIDAdapterP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model) = sub_232CE8FB0();
  return v6;
}

uint64_t sub_232BE6D08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232BE6DB8;

  return sub_232BE4994();
}

uint64_t sub_232BE6DB8()
{
  sub_232B26C7C();
  v3 = v2;
  v5 = v4;
  sub_232B26C70();
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_232BE6EB8()
{
  v0 = sub_232BA5FEC();
  v2 = sub_232B124A8(v0, v1);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B3516C();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_232CE8FF0();
  v9 = sub_232CE9000();
  sub_232B12504(v8, 0, 1, v9);
  sub_232B34D3C(v8, v5, &qword_27DDC73A0, &qword_232CFB2C0);
  sub_232CE9040();
  sub_232CE9030();
  sub_232CE9010();
  sub_232CE9020();
  sub_232BEA588();
  return sub_232BA4D50(v10, v11, v12);
}

uint64_t sub_232BE7008()
{
  v0 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  sub_232B48F0C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  if (qword_2814E0BF8 != -1)
  {
    swift_once();
  }

  v6 = sub_232B135C4(v0, qword_2814E3E98);
  (*(v2 + 16))(v5, v6, v0);

  return sub_232CE9770();
}

uint64_t sub_232BE7140()
{
  sub_232B26C44();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_232CE9780();
  v1[6] = v5;
  sub_232B27FBC(v5);
  v1[7] = v6;
  v1[8] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BE71EC()
{
  sub_232B26C44();
  sub_232BE7008();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = sub_232BEA4D0(v1);

  return sub_232BE727C(v2, v3, v4, v5);
}

uint64_t sub_232BE727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BEA380();
  v5 = sub_232B124A8(&qword_27DDC7340, &qword_232CF9010);
  v4[2] = v5;
  sub_232B27FBC(v5);
  v4[3] = v6;
  v4[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v4[5] = v7;
  *v7 = v8;
  sub_232BEA29C(v7);
  sub_232BA7440();

  return sub_232BE7798(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_232BE7368()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    sub_232BEA244();
    sub_232BEA068(v11, v12, MEMORY[0x277D71A40]);
    *v10 = v5;
    v13 = sub_232BA6F94();

    return MEMORY[0x282165A78](v13);
  }
}

uint64_t sub_232BE74EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_232BEA640();
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v8 = v7;
  *v8 = *v5;
  *(v7 + 64) = v4;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v4)
  {
    sub_232B48304();
    sub_232BA7440();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    sub_232BA5FEC();
    sub_232BA7440();

    return v16(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_232BE76AC(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(unint64_t, unint64_t, uint64_t, void, uint64_t))
{
  v9 = v6;
  v12 = *a3;
  *(v9 + 24) = sub_232CE9C60();
  *(v9 + 16) = v12;
  v13 = sub_232CE9C60();
  a5(0);
  swift_allocObject();
  *(v9 + 32) = a6(0xD000000000000026, 0x8000000232D07EB0, a1, a2 & 1, v13);
  return v9;
}

uint64_t sub_232BE7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  sub_232B124A8(&qword_27DDC7350, &unk_232CF9020);
  v6[34] = swift_task_alloc();
  v6[35] = sub_232B124A8(&qword_27DDC7358, &unk_232CFB250);
  v6[36] = swift_task_alloc();
  v7 = sub_232CE9280();
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  v8 = sub_232CE92A0();
  v6[40] = v8;
  v6[41] = *(v8 - 8);
  v6[42] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC7360, &unk_232CF9030);
  v6[43] = swift_task_alloc();
  v9 = sub_232CE9900();
  v6[44] = v9;
  v6[45] = *(v9 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = sub_232CE9210();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v11 = sub_232CE9120();
  v6[51] = v11;
  v6[52] = *(v11 - 8);
  v6[53] = swift_task_alloc();
  v12 = sub_232CE9110();
  v6[54] = v12;
  v6[55] = *(v12 - 8);
  v6[56] = swift_task_alloc();
  v13 = sub_232B124A8(&qword_27DDC73D8, &unk_232CFB2B0);
  v6[57] = v13;
  v6[58] = *(v13 - 8);
  v6[59] = swift_task_alloc();
  v14 = sub_232CE91C0();
  v6[60] = v14;
  v6[61] = *(v14 - 8);
  v6[62] = swift_task_alloc();
  v15 = sub_232CE91B0();
  v6[63] = v15;
  v6[64] = *(v15 - 8);
  v6[65] = swift_task_alloc();
  v16 = sub_232B124A8(&qword_27DDC73E0, &qword_232CF90E0);
  v6[66] = v16;
  v6[67] = *(v16 - 8);
  v6[68] = swift_task_alloc();
  v17 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v6[69] = v17;
  v6[70] = *(v17 - 8);
  v6[71] = swift_task_alloc();
  v18 = sub_232CE9B10();
  v6[72] = v18;
  v6[73] = *(v18 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BE7D84, 0, 0);
}

uint64_t sub_232BE7D84()
{
  v60 = v0[80];
  v56 = v0[79];
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v32 = v0[69];
  v33 = v0[76];
  v43 = v0[68];
  v44 = v0[67];
  v45 = v0[66];
  v36 = v0[77];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[62];
  v41 = v0[61];
  v42 = v0[60];
  v52 = v0[59];
  v53 = v0[58];
  v54 = v0[57];
  v46 = v0[56];
  v47 = v0[55];
  v48 = v0[54];
  v51 = v0[53];
  v49 = v0[52];
  v50 = v0[51];
  v57 = v0[49];
  v58 = v0[48];
  v59 = v0[50];
  v34 = v0[32];
  v35 = v0[33];
  v55 = v0[31];
  v5 = v0[29];
  *(swift_task_alloc() + 16) = v5;
  sub_232CE9B20();

  sub_232CE9B00();
  v6 = *(v1 + 8);
  v0[82] = v6;
  v0[83] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = sub_232BA7224();
  v6(v7);
  sub_232BE6EB8();
  v61 = *MEMORY[0x277D0E550];
  (*(v4 + 104))(v3);
  sub_232BEA214();
  v0[84] = sub_232BEA068(v8, v9, MEMORY[0x277D42D70]);
  sub_232BA5C64();
  sub_232CE9BE0();
  (*(v4 + 8))(v3, v32);
  v10 = sub_232BA7224();
  v6(v10);
  sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v12 = sub_232BA5A90(inited, xmmword_232CF6460);
  v13 = MEMORY[0x277D42EC0];
  v12[4].n128_u64[1] = MEMORY[0x277D837D0];
  v12[5].n128_u64[0] = v13;
  v12[3].n128_u64[0] = v34;
  inited[3].n128_u64[1] = v35;

  v0[85] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9C10();

  (v6)(v33, v2);
  v14 = sub_232CE91D0();
  sub_232BEA508(v14, v15, v16, v14);
  (*(v38 + 104))(v37, *MEMORY[0x277D0E5C0], v39);
  v17 = sub_232CE91A0();
  sub_232B12504(v40, 1, 1, v17);
  (*(v41 + 104))(v40, *MEMORY[0x277D0E5C8], v42);
  sub_232CE91E0();
  (*(v44 + 104))(v43, v61, v45);
  sub_232BA5C64();
  sub_232CE9BB0();
  (*(v44 + 8))(v43, v45);
  (v6)(v36, v2);
  v18 = sub_232CE9130();
  sub_232B12504(v46, 1, 1, v18);
  (*(v47 + 104))(v46, *MEMORY[0x277D0E578], v48);
  v19 = sub_232CE9100();
  sub_232B12504(v51, 1, 1, v19);
  (*(v49 + 104))(v51, *MEMORY[0x277D0E580], v50);
  sub_232B37C0C();
  sub_232CE9140();
  (*(v53 + 104))(v52, v61, v54);
  sub_232BA5C64();
  sub_232CE9BD0();
  (*(v53 + 8))(v52, v54);
  v20 = sub_232BEA3C0();
  v6(v20);
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9B90();

  (v6)(v56, v2);
  v21 = *(v55 + 32);
  v0[86] = v21;
  v22 = OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig;
  sub_232BEA4B0();
  (*(v57 + 16))(v59, v21 + v22, v58);
  sub_232BEA3C0();
  sub_232CE9BF0();
  v23 = sub_232BEA554();
  v24(v23, v58);
  (v6)(v60, v2);
  v25 = sub_232CE98F0();
  sub_232BEA508(v25, v26, v27, v25);
  sub_232BA6870();
  swift_task_alloc();
  sub_232BA6740();
  v0[87] = v28;
  *v28 = v29;
  v30 = sub_232BEA2D4(v28);

  return MEMORY[0x282166B60](v30);
}

uint64_t sub_232BE83D4()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 704) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BE84D0()
{
  v2 = v0[34];
  sub_232B124A8(&qword_27DDC7380, &unk_232CF9050);
  v3 = sub_232BA5CA0();
  if (sub_232B12480(v3, 1, v1) == 1)
  {
    sub_232BA4D50(v2, &qword_27DDC7350, &unk_232CF9020);
  }

  else
  {
    v42 = v0[82];
    v39 = v0[81];
    v41 = v0[72];
    v43 = v0[42];
    v40 = v0[41];
    v5 = v0[37];
    v4 = v0[38];
    v38 = v0[40];
    v6 = v0[35];
    v7 = v0[36];
    v37 = v0[29];
    v35 = *(v1 + 48);
    v36 = v0[39];
    v34 = *(v6 + 48);
    v8 = *(v40 + 32);
    sub_232BA5C64();
    v8();
    v9 = *(v4 + 32);
    v9(v7 + v34, v2 + v35, v5);
    v10 = *(v6 + 48);
    sub_232BA6050();
    v8();
    v9(v36, v7 + v10, v5);
    sub_232CE9270();
    v11 = sub_232BEA3C0();
    v12(v11);
    v13 = sub_232BA5FEC();
    v14(v13);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232B124A8(&qword_27DDC7388, &qword_232CF9060);
    inited = swift_initStackObject();
    v16 = sub_232BA6308(inited, xmmword_232CF6460);
    inited[4].n128_u64[1] = v16;
    sub_232BEA22C();
    inited[5].n128_u64[0] = sub_232BEA068(v17, v18, MEMORY[0x277D0E678]);
    v19 = sub_232BA18A8(&inited[3]);
    (*(*(v16 - 8) + 16))(v19, v37, v16);
    sub_232B124A8(&qword_27DDC7390, &qword_232CF9068);
    sub_232BEA3C0();
    sub_232CE9C60();
    sub_232BEA620(v39);

    v20 = sub_232B37C0C();
    v21(v20);
    (*(v40 + 8))(v43, v38);
    v42(v39, v41);
    v22 = sub_232BA7224();
    v23(v22);
  }

  v32 = v0[86];
  v24 = v0[82];
  v25 = v0[80];
  v26 = v0[72];
  v27 = v0[47];
  v28 = v0[45];
  v33 = v0[44];
  sub_232CE9B80();
  v0[27] = *(v32 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v24(v25, v26);
  (*(v28 + 8))(v27, v33);
  v29 = sub_232BA5FEC();
  (v24)(v29);

  sub_232B26CF4();

  return v30();
}

uint64_t sub_232BE8A34()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[72];
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1(v2, v3);

  sub_232B26CF4();

  return v4();
}

unsigned __int8 *sub_232BE8C1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_232CE8FE0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232CE9080();
  MEMORY[0x28223BE20](v15 - 8);
  v54[3] = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  MEMORY[0x28223BE20](v17 - 8);
  v54[2] = v54 - v18;
  v19 = sub_232CE9210();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v20 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo_trackingConfig, v22, v19);
  v23 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v25 = v24;

  v56 = v6;
  v55 = a4;
  v54[4] = v14;
  if (v25)
  {
    v27 = HIBYTE(v25) & 0xF;
    v28 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v25 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v29 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      if ((v25 & 0x1000000000000000) != 0)
      {
        v31 = sub_232BA2B04(v23, v25, 10);
        v49 = v53;
        goto LABEL_65;
      }

      if ((v25 & 0x2000000000000000) != 0)
      {
        v57[0] = v23;
        v57[1] = v25 & 0xFFFFFFFFFFFFFFLL;
        if (v23 == 43)
        {
          if (v27)
          {
            if (--v27)
            {
              v31 = 0;
              v41 = v57 + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                v43 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  break;
                }

                v31 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  break;
                }

                ++v41;
                if (!--v27)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (v23 != 45)
        {
          if (v27)
          {
            v31 = 0;
            v46 = v57;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                break;
              }

              ++v46;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v27)
        {
          if (--v27)
          {
            v31 = 0;
            v35 = v57 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_232CEA550();
        }

        v30 = *result;
        if (v30 == 43)
        {
          if (v28 >= 1)
          {
            v27 = v28 - 1;
            if (v28 != 1)
            {
              v31 = 0;
              if (result)
              {
                v38 = result + 1;
                while (1)
                {
                  v39 = *v38 - 48;
                  if (v39 > 9)
                  {
                    goto LABEL_63;
                  }

                  v40 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v31 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    goto LABEL_63;
                  }

                  ++v38;
                  if (!--v27)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_77;
        }

        if (v30 != 45)
        {
          if (v28)
          {
            v31 = 0;
            if (result)
            {
              while (1)
              {
                v44 = *result - 48;
                if (v44 > 9)
                {
                  goto LABEL_63;
                }

                v45 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_63;
                }

                v31 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_63;
                }

                ++result;
                if (!--v28)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v31 = 0;
          LOBYTE(v27) = 1;
          goto LABEL_64;
        }

        if (v28 >= 1)
        {
          v27 = v28 - 1;
          if (v28 != 1)
          {
            v31 = 0;
            if (result)
            {
              v32 = result + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  goto LABEL_63;
                }

                v34 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_63;
                }

                v31 = v34 - v33;
                if (__OFSUB__(v34, v33))
                {
                  goto LABEL_63;
                }

                ++v32;
                if (!--v27)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v27) = 0;
LABEL_64:
            v58 = v27;
            v49 = v27;
LABEL_65:

            if (v49)
            {
              v50 = 0;
            }

            else
            {
              v50 = v31;
            }

            v54[0] = v50;
            goto LABEL_69;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v54[0] = 0;
LABEL_69:
  v54[1] = a3;
  sub_232CE8FC0();
  if (qword_27DDC63C0 != -1)
  {
    swift_once();
  }

  sub_232CE8F60();
  sub_232BEA068(&qword_27DDC7490, MEMORY[0x277D29B48], MEMORY[0x277D29B40]);

  sub_232CE8F70();
  sub_232CE8FD0();
  sub_232CE9070();
  v51 = sub_232CE8FB0();
  v52 = v56;
  *(v56 + OBJC_IVAR____TtCC21DocumentUnderstanding24DUPersonalIDAdapterDraftP33_DFC7AC96D26C0FEAD7B098345177CD0411_ClientInfo__model) = v51;
  return v52;
}

uint64_t sub_232BE92B0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  sub_232CE9210();
  sub_232B13F24();
  return (*(v6 + 16))(a2, v4 + v5);
}

uint64_t sub_232BE9400(uint64_t a1)
{
  result = sub_232CE9210();
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

uint64_t sub_232BE94A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232BEA0CC;

  return sub_232BE7140();
}

uint64_t sub_232BE95A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232BE98BC();
  v5 = sub_232BE9910();

  return MEMORY[0x2821662E8](a1, a2, v4, v5);
}

uint64_t sub_232BE9608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232BE98BC();
  sub_232BE9910();
  return sub_232CEA500();
}

void sub_232BE9698(void *a1@<X8>)
{
  sub_232BE1658();
  if (!v1)
  {
    memcpy(a1, v3, 0x140uLL);
  }
}

void sub_232BE9710(void *a1@<X8>)
{
  sub_232BE3078();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_232BE9780@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_232CE9940();
  v7 = sub_232B135C4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_232BE981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232BE3C10(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_232BE9868()
{
  result = qword_2814DFA70;
  if (!qword_2814DFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA70);
  }

  return result;
}

unint64_t sub_232BE98BC()
{
  result = qword_27DDC7898;
  if (!qword_27DDC7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7898);
  }

  return result;
}

unint64_t sub_232BE9910()
{
  result = qword_27DDC78A0;
  if (!qword_27DDC78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78A0);
  }

  return result;
}

unint64_t sub_232BE9A34()
{
  result = qword_27DDC78A8;
  if (!qword_27DDC78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78A8);
  }

  return result;
}

unint64_t sub_232BE9A88()
{
  result = qword_27DDC78C0;
  if (!qword_27DDC78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78C0);
  }

  return result;
}

uint64_t sub_232BE9ADC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232BE9B58()
{
  result = qword_27DDC78D8;
  if (!qword_27DDC78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CardType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232BE9D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BE9E04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_232BE9EB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_232BE9EC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BE9F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232BE9F58()
{
  result = qword_27DDC78E0;
  if (!qword_27DDC78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78E0);
  }

  return result;
}

unint64_t sub_232BE9FB0()
{
  result = qword_27DDC78E8;
  if (!qword_27DDC78E8)
  {
    sub_232B27EEC(&qword_27DDC78F0, &qword_232CFB510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78E8);
  }

  return result;
}

unint64_t sub_232BEA014()
{
  result = qword_27DDC78F8;
  if (!qword_27DDC78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC78F8);
  }

  return result;
}

uint64_t sub_232BEA068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_232BEA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

uint64_t sub_232BEA27C()
{

  return sub_232CEA5C0();
}

void sub_232BEA348()
{
  v3 = *(*(*(v1 - 88) + 48) + 8 * v0);
}

uint64_t sub_232BEA364()
{

  return sub_232CEA5E0();
}

uint64_t sub_232BEA398()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232BEA3CC()
{

  sub_232B70A14();
}

void sub_232BEA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 8 * v10);
}

void sub_232BEA404()
{

  sub_232B6FF88();
}

uint64_t sub_232BEA420()
{

  return sub_232CEA5E0();
}

uint64_t sub_232BEA43C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BEA458(uint64_t a1)
{

  return sub_232CE98C0();
}

void sub_232BEA474()
{

  sub_232B6FF88();
}

uint64_t sub_232BEA4B0()
{

  return swift_beginAccess();
}

uint64_t sub_232BEA4EC()
{
  *(v1 + 496) = *(v2 + 8);
  *(v1 + 504) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_232BEA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(v4, 1, 1, a4);
}

uint64_t sub_232BEA524()
{

  return sub_232B20540();
}

uint64_t sub_232BEA53C(uint64_t a1)
{

  return sub_232CE98C0();
}

double sub_232BEA594@<D0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[9] = v5;
  a1[10] = a2;
  a1[6] = a4;
  *(v6 + 56) = a5;

  return result;
}

uint64_t sub_232BEA5E0()
{

  return sub_232CE9B20();
}

uint64_t sub_232BEA600()
{

  return swift_task_alloc();
}

uint64_t sub_232BEA620(uint64_t a1)
{

  return sub_232CE9260();
}

void sub_232BEA654(uint64_t a1, uint64_t *a2)
{
  v5 = sub_232B26B10();
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_232BEB8EC(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

uint64_t sub_232BEA724@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUPoemSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2814E11E8;
  *a1 = result;
  return result;
}

uint64_t sub_232BEA76C()
{
  sub_232B26C44();
  v0[12] = v1;
  v2 = sub_232CE89D0();
  v0[13] = v2;
  v0[14] = *(v2 - 8);
  v0[15] = swift_task_alloc();
  v3 = sub_232CE9A30();
  v0[16] = v3;
  v0[17] = *(v3 - 8);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232BEA8A0()
{
  v0[11] = MEMORY[0x277D84F90];
  v0[5] = &type metadata for IntelligencePlatform;
  v0[6] = sub_232BEC9D8();
  v1 = sub_232CE8F10();
  sub_232B2040C(v0 + 2);
  if ((v1 & 1) != 0 && (v2 = v0[12], sub_232B5821C(), v3))
  {
    sub_232BECA40();
    v4 = objc_allocWithZone(MEMORY[0x277D1F418]);
    v5 = sub_232BEC74C(v2, v1, &unk_28480CC88, 0, 0, 0, 0);
    v0[22] = v5;
    v6 = objc_allocWithZone(sub_232CE92F0());
    v0[23] = sub_232CE92E0();
    v11 = (*MEMORY[0x277D1F3C8] + MEMORY[0x277D1F3C8]);
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_232BEAB74;

    return v11(v5);
  }

  else
  {

    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_232BEAB74()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  if (v0)
  {
    v5 = sub_232BEB5BC;
  }

  else
  {
    v5 = sub_232BEAC78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_232BEAC78()
{
  v102 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = [v1 rankedResults];
  sub_232BA4DEC(0, &qword_27DDC7910, 0x277D1F470);
  v4 = sub_232CE9FE0();

  v5 = sub_232B26B10();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v81 = v4 + 32;
    v82 = v4 & 0xFFFFFFFFFFFFFF8;
    v100 = (*(v0 + 136) + 8);
    v87 = (*(v0 + 112) + 8);
    v84 = MEMORY[0x277D84F90];
    v79 = v5;
    v80 = v4;
    v78 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v9 = MEMORY[0x2383922C0](v7, v4);
      }

      else
      {
        if (v7 >= *(v82 + 16))
        {
          goto LABEL_53;
        }

        v9 = *(v81 + 8 * v7);
      }

      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v85 = v9;
      v11 = [v9 span];
      if (v11)
      {
        v12 = v11;
        [v11 range];
        sub_232BECA40();
        v88 = v12;
        v13 = [v12 text];
        sub_232CE9D50();

        sub_232CEA110();
        v15 = v14;

        if ((v15 & 1) == 0)
        {
          v16 = [v85 rankedItems];
          sub_232BA4DEC(0, &qword_27DDC7918, 0x277D1F468);
          v17 = sub_232CE9FE0();

          if (v17 >> 62)
          {
            v18 = sub_232CEA610();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v83 = v7;
          if (v18)
          {
            v19 = 0;
            v96 = v17 & 0xC000000000000001;
            v86 = v17 & 0xFFFFFFFFFFFFFF8;
            v94 = v18;
            v95 = v17;
            while (1)
            {
              if (v96)
              {
                v20 = MEMORY[0x2383922C0](v19, v17);
              }

              else
              {
                if (v19 >= *(v86 + 16))
                {
                  goto LABEL_51;
                }

                v20 = *(v17 + 8 * v19 + 32);
              }

              v21 = v20;
              v22 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              sub_232CE9A20();
              v7 = v21;
              v23 = sub_232CE9A00();
              v24 = sub_232CEA1B0();
              if (os_log_type_enabled(v23, v24))
              {
                v4 = v19 + 1;
                v25 = v19;
                v26 = swift_slowAlloc();
                v27 = swift_slowAlloc();
                v101[0] = v27;
                *v26 = 136315138;
                v28 = sub_232BEC968([v7 entityID]);
                if (!v29)
                {
                  goto LABEL_54;
                }

                v30 = v28;
                v31 = v29;
                v97 = *(v0 + 168);
                v91 = *(v0 + 128);

                v32 = sub_232BAD2D4(v30, v31, v101);

                *(v26 + 4) = v32;
                _os_log_impl(&dword_232B02000, v23, v24, "Found ecr extraction with id %s", v26, 0xCu);
                sub_232B2040C(v27);
                sub_232B26D28();
                sub_232BA6A84();

                v33 = *v100;
                (*v100)(v97, v91);
                v19 = v25;
                v22 = v4;
              }

              else
              {
                v34 = *(v0 + 168);
                v35 = *(v0 + 128);

                v33 = *v100;
                (*v100)(v34, v35);
              }

              [v7 score];
              if (v36 <= 0.0)
              {
                sub_232CE9A20();
                v4 = v7;
                v56 = sub_232CE9A00();
                v7 = sub_232CEA1B0();
                if (os_log_type_enabled(v56, v7))
                {
                  v99 = v33;
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  v101[0] = v58;
                  *v57 = 136315394;
                  v59 = sub_232BEC968([v4 entityID]);
                  if (!v60)
                  {
                    goto LABEL_55;
                  }

                  v61 = v59;
                  v62 = v60;
                  v90 = *(v0 + 128);
                  v93 = *(v0 + 152);

                  v63 = sub_232BAD2D4(v61, v62, v101);

                  *(v57 + 4) = v63;
                  *(v57 + 12) = 2048;
                  [v4 score];
                  *(v57 + 14) = v64;
                  _os_log_impl(&dword_232B02000, v56, v7, "Ignoring ecr extraction with id %s and score %f", v57, 0x16u);
                  sub_232B2040C(v58);
                  sub_232B26D28();
                  sub_232BA6A84();

                  v99(v93, v90);
                }

                else
                {
                  v65 = *(v0 + 152);
                  v66 = *(v0 + 128);

                  v33(v65, v66);
                }

                v67 = v94;
                v17 = v95;
              }

              else
              {
                v98 = v33;
                v89 = v7;
                v92 = v19;
                v37 = *(v0 + 120);
                v7 = *(v0 + 104);
                v38 = [v88 text];
                v39 = sub_232CE9D50();

                sub_232CE9FB0();
                sub_232BECA40();
                v41 = v40;
                v43 = v42;

                MEMORY[0x238391B80](v38, v39, v41, v43);
                sub_232BECA40();

                *(v0 + 56) = v38;
                *(v0 + 64) = v39;
                sub_232CE89A0();
                sub_232B48080();
                v44 = sub_232CEA3A0();
                v46 = v45;
                v47 = *v87;
                (*v87)(v37, v7);

                *(v0 + 72) = v44;
                *(v0 + 80) = v46;
                sub_232CE89B0();
                v48 = sub_232CEA3A0();
                v50 = v49;
                v47(v37, v7);

                v51 = HIBYTE(v50) & 0xF;
                if ((v50 & 0x2000000000000000) == 0)
                {
                  v51 = v48 & 0xFFFFFFFFFFFFLL;
                }

                if (v51)
                {
                  v7 = v89;
                  v52 = sub_232BEC968([v89 entityID]);
                  v54 = v53;
                  [v89 score];
                  v4 = sub_232CEA0B0();
                  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
                  sub_232CEA300();
                  v55 = objc_allocWithZone(MEMORY[0x277CF1680]);
                  sub_232BECA2C();
                  sub_232BEC84C(0, v48, v50, v52, v54, v4, 0, 0, v76, v77);
                  MEMORY[0x238391D50]();
                  v19 = v92;
                  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_232CEA000();
                  }

                  sub_232CEA020();
                  v84 = *(v0 + 88);
                }

                else
                {

                  sub_232CE9A20();
                  v68 = sub_232CE9A00();
                  v69 = sub_232CEA1B0();
                  v70 = os_log_type_enabled(v68, v69);
                  v71 = *(v0 + 160);
                  v72 = *(v0 + 128);
                  v19 = v92;
                  v4 = v89;
                  if (v70)
                  {
                    v73 = swift_slowAlloc();
                    *v73 = 0;
                    _os_log_impl(&dword_232B02000, v68, v69, "No need to have extractions with empty string", v73, 2u);
                    sub_232B26D28();
                  }

                  else
                  {
                  }

                  v98(v71, v72);
                }

                v67 = v94;
                v17 = v95;
              }

              ++v19;
              if (v22 == v67)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
            break;
          }

LABEL_41:

          v6 = v79;
          v4 = v80;
          v7 = v83;
          v8 = v78;
        }
      }

      if (v7 == v6)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    __break(1u);
LABEL_55:

    __break(1u);
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
LABEL_47:
    v74 = *(v0 + 200);

    v75 = *(v0 + 8);

    v75(v84);
  }
}

uint64_t sub_232BEB5BC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 208);
  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_232B02000, v4, v5, "Error while calling ecr: %@", v6, 0xCu);
    sub_232BDB890(v7);
    sub_232B26D28();
    sub_232BA6A84();
  }

  else
  {
  }

  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_232BEB758(uint64_t a1)
{
  sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v2 = MEMORY[0x277D84F90];
  v14 = sub_232CE9C60();
  sub_232BEA654(a1, &v14);
  v3 = v14;
  v13 = v2;
  v4 = v14 + 64;
  v5 = 1 << *(v14 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v14 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_8;
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

      swift_bridgeObjectRelease_n();
      return v2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
        MEMORY[0x238391D50]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        v7 &= v7 - 1;
        result = sub_232CEA020();
        v2 = v13;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

void sub_232BEB8EC(void **a1, uint64_t *a2)
{
  v5 = sub_232CE9A30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = *a1;
  v16 = sub_232C49E98(v15);
  if (!v17)
  {
    return;
  }

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v43 = v2;
    v19 = sub_232C4B888(v16);
    v21 = v20;

    if (sub_232CE9E60() < 2)
    {

      sub_232CE9A20();
      v22 = sub_232CE9A00();
      v23 = sub_232CEA1A0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_232B02000, v22, v23, "Discarding span because it's a single character", v24, 2u);
        MEMORY[0x238393870](v24, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
      return;
    }

    if (sub_232C4B964())
    {

      sub_232CE9A20();
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_232B02000, v28, v29, "Discarding span because it resembles a URL", v30, 2u);
        MEMORY[0x238393870](v30, -1, -1);
      }

      (*(v6 + 8))(v14, v5);
      return;
    }

    v31 = sub_232B1E2BC(v19, v21, *a2);
    if (!v31)
    {
      v41 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *a2;
      sub_232B1FF44(v41, v19, v21, isUniquelyReferenced_nonNull_native);
      *a2 = v44;

      return;
    }

    v32 = sub_232B1E2BC(v19, v21, *a2);
    if (v32)
    {
      v33 = v32;
      sub_232C49EA4(v32);
      if (!v34)
      {
        goto LABEL_21;
      }

      sub_232C49EA4(v15);
      if (v35)
      {

        [v15 confidenceScore];
        v37 = v36;
        [v33 confidenceScore];
        if (v38 >= v37)
        {

          return;
        }

LABEL_21:
        v39 = v15;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v44 = *a2;
        sub_232B1FF44(v39, v19, v21, v40);
        *a2 = v44;

        return;
      }
    }

    return;
  }

  sub_232CE9A20();
  v25 = sub_232CE9A00();
  v26 = sub_232CEA1C0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_232B02000, v25, v26, "Found an empty span while filtering", v27, 2u);
    MEMORY[0x238393870](v27, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
}

void sub_232BEBD64(uint64_t a1, uint64_t a2)
{
  v23 = MEMORY[0x277D84F90];
  v3 = sub_232B26B10();
  for (i = 0; v3 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2383922C0](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(a2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v7 = *&v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
    v8 = *&v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
    if (v7 == sub_232CE9D50() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_232CEA750();

      if ((v11 & 1) == 0)
      {

        continue;
      }
    }

    sub_232CEA560();
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
  }

  v12 = sub_232B26B10();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  sub_232CEA580();
  if (v13 < 0)
  {
    goto LABEL_29;
  }

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v14 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2383922C0](v14, v23);
    }

    else
    {
      v15 = *(v23 + 8 * v14 + 32);
    }

    v16 = v15;
    ++v14;
    v17 = *&v15[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
    v18 = *&v15[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];

    v19 = sub_232CEA300();
    sub_232CEA300();
    v20 = objc_allocWithZone(MEMORY[0x277CF1680]);
    sub_232BECA2C();
    sub_232BEC84C(1, v17, v18, 0, 0, v19, 0, 0, v21, v22);

    sub_232CEA560();
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
  }

  while (v13 != v14);
}

uint64_t sub_232BEC014(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = sub_232B5138C();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BEC03C()
{
  sub_232B26C7C();
  v1 = *(v0[3] + 24);
  v0[5] = v1;
  if (v1)
  {
    type metadata accessor for DUPosTaggingSpecification();
    v0[6] = swift_allocObject();
    v2 = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_232BEC190;
    v4 = v0[3];

    return sub_232B4F97C(v4);
  }

  else
  {
    sub_232B4A95C();
    v6 = swift_allocError();
    *v7 = 0xD000000000000015;
    *(v7 + 8) = 0x8000000232D04650;
    *(v7 + 16) = 0;
    v8 = v0[1];

    return v8(v6, 1);
  }
}

uint64_t sub_232BEC190()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v1 = v0;
  *(v0 + 64) = v2;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BEC298()
{
  sub_232B26C7C();
  if (v0[8])
  {
    sub_232BEBD64(v1, v0[8]);
    v3 = v2;

    v0[2] = v3;
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_232BEC3D4;

    return sub_232BEA76C();
  }

  else
  {
    v6 = v0[5];
    sub_232B4A95C();
    v7 = swift_allocError();
    *v8 = 0xD000000000000016;
    *(v8 + 8) = 0x8000000232D082B0;
    *(v8 + 16) = 0;

    v9 = v0[1];

    return v9(v7, 1);
  }
}

uint64_t sub_232BEC3D4()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232BEC4BC()
{
  sub_232B26C7C();
  v1 = v0[5];
  sub_232C5E360(v0[10]);
  v2 = sub_232BEB758(v0[2]);

  v3 = v0[1];

  return v3(v2, 0);
}

uint64_t sub_232BEC594(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BEC630;

  return sub_232BEC014(a2);
}

uint64_t sub_232BEC630()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 16);
  v9 = *v0;

  *v6 = v4;
  *(v6 + 8) = v2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

id sub_232BEC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = sub_232CE9D20();

  if (!a3)
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_232CE9FD0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_232BA4DEC(0, &qword_27DDC7920, 0x277CCAE60);
  v16 = sub_232CE9FD0();

LABEL_6:
  v17 = [v8 initWithText:v14 entityClassFilter:v15 spans:v16 mode:a5 constraint:a6 includeInferredNames:a7 & 1];

  return v17;
}

id sub_232BEC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned int a9, void *a10)
{
  if (a3)
  {
    v15 = sub_232CE9D20();
  }

  else
  {
    v15 = 0;
  }

  if (a5)
  {
    v16 = sub_232CE9D20();
  }

  else
  {
    v16 = 0;
  }

  if (a8)
  {
    v17 = sub_232CE9D20();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v10 initWithType:a1 text:v15 identifier:v16 confidenceScore:a6 contactIdentifier:v17 role:a9 isCoref:a10];

  return v18;
}

uint64_t sub_232BEC968(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232BEC9D8()
{
  result = qword_2814E0F20;
  if (!qword_2814E0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E0F20);
  }

  return result;
}

uint64_t sub_232BECA90(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v4 = sub_232CE9A30();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[9] = v5;
  *v5 = v2;
  v5[1] = sub_232BECB9C;

  return sub_232B4FE04(a2);
}

uint64_t sub_232BECB9C(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_232BECC9C, 0, 0);
}

uint64_t sub_232BECC9C(uint64_t a1)
{
  v18 = v1;
  if (v1[10])
  {
    sub_232CE9A20();
    v2 = sub_232CE9A00();
    v3 = sub_232CEA1B0();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v1[7];
    v5 = v1[8];
    v7 = v1[6];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = sub_232BECA70();
      *(v8 + 4) = sub_232BAD2D4(v10, v11, &v17);
      _os_log_impl(&dword_232B02000, v2, v3, "POEM phase ID: %s", v8, 0xCu);
      sub_232B2040C(v9);
      MEMORY[0x238393870](v9, -1, -1);
      MEMORY[0x238393870](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    v12 = v1[10];
    v13 = v1[5];
    v14 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
    swift_beginAccess();
    *(v13 + v14) = v12;
  }

  v15 = v1[1];

  return v15();
}

id sub_232BECE2C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BECE88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232BECA90(a1, a2);
}

id sub_232BECF48(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v5;
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  DURequestContentType.formIntersection(_:)(a1, v8, v9);
  return v7;
}

BOOL sub_232BECFE4(void *a1, void *a2)
{
  v4 = sub_232BECF48(a2);
  type metadata accessor for DURequestContentType();
  v5 = sub_232CEA310();
  if ((v5 & 1) == 0)
  {

    DURequestContentType.formUnion(_:)(a2, v6, v7);
    v4 = a2;
  }

  *a1 = v4;
  return (v5 & 1) == 0;
}

id sub_232BED070(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0, v2, v3, v4);
  v5 = sub_232CE9FD0();

  v6 = [v1 initWithTagSchemes_];

  return v6;
}

uint64_t sub_232BED0E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUPosTaggingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2814E0E20;
  *a1 = result;
  return result;
}

uint64_t sub_232BED150()
{
  v1 = *(v0[10] + 24);
  if (v1)
  {
    v2 = v0 + 9;
    v3 = MEMORY[0x277D84F90];
    v0[9] = MEMORY[0x277D84F90];
    v4 = sub_232B5821C();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      sub_232BED5DC();
      sub_232B124A8(&qword_27DDC7658, &qword_232CFB6D0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_232CF6460;
      v9 = *MEMORY[0x277CD8968];
      *(v8 + 32) = *MEMORY[0x277CD8968];
      v25 = v1;
      v10 = v9;
      v11 = sub_232BED070(v8);
      sub_232BED620(v6, v7, v11);
      sub_232B124A8(&qword_27DDC7928, &qword_232CFB6D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_232CF8180;
      v13 = *MEMORY[0x277CD8920];
      v14 = *MEMORY[0x277CD8928];
      *(inited + 32) = *MEMORY[0x277CD8920];
      *(inited + 40) = v14;
      v15 = *MEMORY[0x277CD8908];
      *(inited + 48) = *MEMORY[0x277CD8908];
      v16 = v13;
      v17 = v14;
      v18 = v15;
      sub_232C0CF18(inited);
      v20 = v19;
      v21 = swift_task_alloc();
      v21[2] = v20;
      v21[3] = v6;
      v21[4] = v7;
      v21[5] = v2;
      sub_232CEA2E0();

      v3 = *v2;
    }
  }

  else
  {
    sub_232B4A95C();
    v3 = swift_allocError();
    *v22 = 0xD000000000000015;
    *(v22 + 8) = 0x8000000232D04650;
    *(v22 + 16) = 0;
  }

  v23 = v0[1];

  return v23(v3, v1 == 0);
}

uint64_t sub_232BED3C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v8 = a1;
    if (sub_232BA8004(v8, a4))
    {
      v9 = sub_232CE9FB0();
      v10 = MEMORY[0x238391B80](v9);
      v12 = v11;

      v13 = sub_232CE9F00();
      type metadata accessor for PosTaggingResult();
      v14 = sub_232CE9D50();
      v16 = v15;
      v17 = sub_232CE9E60();
      PosTaggingResult.__allocating_init(tag:text:start:len:)(v14, v16, v10, v12, v13, v17);
      MEMORY[0x238391D50]();
      sub_232BAE05C();
      sub_232CEA020();
    }
  }

  return 1;
}

uint64_t sub_232BED544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BED130(a2);
}

unint64_t sub_232BED5DC()
{
  result = qword_27DDC7650;
  if (!qword_27DDC7650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7650);
  }

  return result;
}

void sub_232BED620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_232CE9D20();
  [a3 setString_];
}

uint64_t sub_232BED6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_232BED794;

  return sub_232B4F97C(a2);
}

uint64_t sub_232BED794(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_232BED894, 0, 0);
}

uint64_t sub_232BED894()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_posTags;
    swift_beginAccess();
    *(v2 + v3) = v1;
  }

  v4 = v0[1];

  return v4();
}

id sub_232BED92C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 1024;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BED988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232BED6E4(a1, a2);
}

uint64_t sub_232BEDA48()
{
  sub_232B124A8(&qword_27DDC7950, &unk_232CFB760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_232CFB730;
  v2 = type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  v3 = sub_232BEE358(v2);
  *(v1 + 56) = v0;
  *(v1 + 64) = &off_281931808;
  *(v1 + 32) = v3;
  v4 = type metadata accessor for DUTopicEncodingSmolBERToSpecification();
  v5 = sub_232BEE358(v4);
  *(v1 + 96) = v0;
  *(v1 + 104) = &off_2819325A0;
  *(v1 + 72) = v5;
  v6 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  v7 = sub_232BEE358(v6);
  *(v1 + 136) = v0;
  *(v1 + 144) = &off_281931E10;
  *(v1 + 112) = v7;
  v8 = type metadata accessor for DUConcatenatedDocumentTextSpecification();
  v9 = sub_232BEE358(v8);
  *(v1 + 176) = v0;
  *(v1 + 184) = &off_281931930;
  *(v1 + 152) = v9;
  v10 = type metadata accessor for DULanguageTaggingSpecification();
  v11 = sub_232BEE358(v10);
  *(v1 + 216) = v0;
  *(v1 + 224) = &off_281932220;
  *(v1 + 192) = v11;
  v12 = type metadata accessor for DUStructuredExtractionSpecification();
  v13 = sub_232BEE358(v12);
  *(v1 + 256) = v0;
  *(v1 + 264) = &off_281932528;
  *(v1 + 232) = v13;
  v14 = type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  v15 = sub_232BEE358(v14);
  *(v1 + 296) = v0;
  *(v1 + 304) = &off_281932770;
  *(v1 + 272) = v15;
  v16 = type metadata accessor for DUCategoryClassificationSpecification();
  v17 = sub_232BEE358(v16);
  *(v1 + 336) = v0;
  *(v1 + 344) = &off_2819318B8;
  *(v1 + 312) = v17;
  v18 = type metadata accessor for DUPoemSpecification();
  v19 = sub_232BEE358(v18);
  *(v1 + 376) = v0;
  *(v1 + 384) = &off_2814E11E8;
  *(v1 + 352) = v19;
  v20 = type metadata accessor for DUPosTaggingSpecification();
  v21 = sub_232BEE358(v20);
  *(v1 + 416) = v0;
  *(v1 + 424) = &off_2814E0E20;
  *(v1 + 392) = v21;
  v22 = type metadata accessor for DUFoundInEventSpecification();
  v23 = sub_232BEE358(v22);
  *(v1 + 456) = v0;
  *(v1 + 464) = &off_281932028;
  *(v1 + 432) = v23;
  v24 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  v25 = sub_232BEE358(v24);
  *(v1 + 496) = v0;
  *(v1 + 504) = &off_281931E60;
  *(v1 + 472) = v25;
  v26 = type metadata accessor for DUFoundInEventDDSpecification();
  v27 = sub_232BEE358(v26);
  *(v1 + 536) = v0;
  *(v1 + 544) = &off_281931D88;
  *(v1 + 512) = v27;
  v28 = type metadata accessor for DUFoundInEventClassificationSpecification();
  result = sub_232BEE358(v28);
  *(v1 + 576) = v0;
  *(v1 + 584) = &off_281931D38;
  *(v1 + 552) = result;
  qword_2814E3EF0 = v1;
  return result;
}

uint64_t sub_232BEDC2C()
{
  if (qword_2814E13D0 != -1)
  {
    swift_once();
  }

  result = qword_2814E3EF0;
  v1 = *(qword_2814E3EF0 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v2 = qword_2814E3EF0 + 32;

  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_232B25E34(v2, v16);
    sub_232B0D220(v16, v15);
    sub_232B124A8(&qword_27DDC7930, &qword_232CFB740);
    sub_232B124A8(&qword_27DDC6C18, &qword_232CF6FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_13:
      sub_232B267AC(&v12, &qword_27DDC7938, &qword_232CFB748);
      goto LABEL_14;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_13;
    }

    sub_232B0D220(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_232BEE374();
      sub_232B35DA4(v6, v7, v8, v9);
      v3 = v10;
    }

    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_232B35DA4(v4 > 1, v5 + 1, 1, v3);
      v3 = v11;
    }

    *(v3 + 16) = v5 + 1;
    sub_232B0D220(v15, v3 + 40 * v5 + 32);
LABEL_14:
    v2 += 40;
    --v1;
  }

  while (v1);

LABEL_17:
  qword_2814E3EC8 = v3;
  return result;
}

void *sub_232BEDE10()
{
  sub_232B124A8(&qword_27DDC7948, &qword_232CFB758);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_232CF6730;
  v1 = type metadata accessor for DUBackboneEncodingSmolBERToImplementation();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_2819317D0;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DUTopicEncodingSmolBERToImplementation();
  v4 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_281932568;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for DUCategoryClassificationSmolBERToImplementation();
  v6 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v0 + 144) = &off_281931880;
  *(v0 + 112) = v6;
  v7 = type metadata accessor for DUWordPieceTokenizerImplementation();
  v8 = swift_allocObject();
  *(v0 + 176) = v7;
  *(v0 + 184) = &off_281932820;
  *(v0 + 152) = v8;
  v9 = type metadata accessor for DUConcatenatedDocumentTextDefaultImplementation();
  v10 = swift_allocObject();
  *(v0 + 216) = v9;
  *(v0 + 224) = &off_2819318F8;
  *(v0 + 192) = v10;
  v11 = type metadata accessor for DULanguageTaggingDefaultImplementation();
  v12 = swift_allocObject();
  *(v0 + 256) = v11;
  *(v0 + 264) = &off_2819321C0;
  *(v0 + 232) = v12;
  v13 = type metadata accessor for DUStructuredExtractionLocalImplementation();
  v14 = swift_allocObject();
  *(v0 + 296) = v13;
  *(v0 + 304) = &off_281932440;
  *(v0 + 272) = v14;
  v15 = type metadata accessor for DUUserInterfaceUnderstandingDefaultImplementation();
  v16 = swift_allocObject();
  *(v0 + 336) = v15;
  *(v0 + 344) = &off_2819326E8;
  *(v0 + 312) = v16;
  v17 = type metadata accessor for DUCategoryClassificationRuleBasedImplementation();
  v18 = swift_allocObject();
  *(v0 + 376) = v17;
  *(v0 + 384) = &off_281931848;
  *(v0 + 352) = v18;
  v19 = type metadata accessor for DUPoemImplementation();
  v20 = swift_allocObject();
  *(v0 + 416) = v19;
  *(v0 + 424) = &off_2814E0FE0;
  *(v0 + 392) = v20;
  v21 = type metadata accessor for DUPosTaggingImplementation();
  v22 = swift_allocObject();
  *(v0 + 456) = v21;
  *(v0 + 464) = &off_2814E0D48;
  *(v0 + 432) = v22;
  v23 = type metadata accessor for DUFoundInEventMultilingualBERTImplementation();
  swift_allocObject();
  v24 = sub_232BC0324();
  *(v0 + 496) = v23;
  *(v0 + 504) = &off_281931F90;
  *(v0 + 472) = v24;
  v25 = type metadata accessor for DUFoundInEventSmolBERToImplementation();
  v26 = swift_allocObject();
  *(v0 + 536) = v25;
  *(v0 + 544) = &off_281931FF0;
  *(v0 + 512) = v26;
  v27 = type metadata accessor for DUFoundInEventEncodingSmolBERToImplementation();
  v28 = swift_allocObject();
  *(v0 + 576) = v27;
  *(v0 + 584) = &off_281931DD8;
  *(v0 + 552) = v28;
  v29 = type metadata accessor for DUFoundInEventHTMLPreprocessingImplementation();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v0 + 616) = v29;
  *(v0 + 624) = &off_281931E28;
  *(v0 + 592) = v30;
  v31 = type metadata accessor for DUFoundInEventDefaultImplementation();
  v32 = swift_allocObject();
  *(v0 + 656) = v31;
  *(v0 + 664) = &off_281931DA0;
  *(v0 + 632) = v32;
  v33 = type metadata accessor for DUFoundInEventDDImplementation();
  v34 = swift_allocObject();
  *(v0 + 696) = v33;
  *(v0 + 704) = &off_281931D50;
  *(v0 + 672) = v34;
  v35 = type metadata accessor for DUFoundInEventClassificationImplementation(0);
  swift_allocObject();
  result = DUFoundInEventClassificationImplementation.init()();
  *(v0 + 736) = v35;
  *(v0 + 744) = &off_281931C68;
  *(v0 + 712) = result;
  qword_2814E3E90 = v0;
  return result;
}

void sub_232BEE168()
{
  if (qword_2814E0BE0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_2814E3E90 + 16);
  if (v0)
  {
    v1 = qword_2814E3E90 + 32;

    v2 = MEMORY[0x277D84F90];
    do
    {
      sub_232BEE2E8(v1, &v14);
      v11[0] = v14;
      v11[1] = v15;
      v12 = v16;
      if (*(&v15 + 1))
      {
        sub_232B0D220(v11, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_232BEE374();
          sub_232B35B88(v5, v6, v7, v8);
          v2 = v9;
        }

        v4 = *(v2 + 16);
        v3 = *(v2 + 24);
        if (v4 >= v3 >> 1)
        {
          sub_232B35B88(v3 > 1, v4 + 1, 1, v2);
          v2 = v10;
        }

        *(v2 + 16) = v4 + 1;
        sub_232B0D220(v13, v2 + 40 * v4 + 32);
      }

      else
      {
        sub_232B267AC(v11, &qword_27DDC7940, &qword_232CFB750);
      }

      v1 += 40;
      --v0;
    }

    while (v0);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  qword_2814E3EE8 = v2;
}

uint64_t sub_232BEE2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7940, &qword_232CFB750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BEE358(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232BEE38C(uint64_t a1)
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

uint64_t sub_232BEE3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BEE3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_232BEE42C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_232BEE454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[3] = AssociatedTypeWitness;
  v4[4] = *(AssociatedTypeWitness - 8);
  v4[5] = swift_task_alloc();
  sub_232B27EEC(&qword_27DDC6900, &unk_232CF6480);
  v7 = sub_232CEA860();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v11 = (*(a4 + 48) + **(a4 + 48));
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v9 = sub_232BEE92C(v8);

  return v11(v9);
}

uint64_t sub_232BEE6C8()
{

  return MEMORY[0x2822009F8](sub_232BEE7C4, 0, 0);
}

uint64_t sub_232BEE7C4()
{
  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[2];
    (*(v4 + 8))(v0[9], v0[6]);
    *v5 = *v2;
  }

  else
  {
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = *(v0[4] + 32);
    v13 = v0[9];
    v9(v6, v2, v7);
    v8[3] = v7;
    v10 = sub_232BA18A8(v8);
    v9(v10, v6, v7);
    (*(v4 + 8))(v13, v3);
  }

  *(v0[2] + 32) = EnumCaseMultiPayload == 1;

  v11 = v0[1];

  return v11();
}

uint64_t sub_232BEE948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 255)
  {
    sub_232B267AC(a1, &qword_27DDC7958, qword_232CFB920);
    sub_232BEF2A0(a2, a3, v9);

    return sub_232B267AC(v9, &qword_27DDC7958, qword_232CFB920);
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v10 = *(a1 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_232B1FBF0(v9, a2, a3);

    *v3 = v8;
  }

  return result;
}

uint64_t sub_232BEEA28(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 40) = 2;
  sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  v5 = sub_232CE9C60();
  v6 = *(v2 + 24);
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;

  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_232BEEAA8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  *(v3 + 40) = 2;
  sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  v7 = sub_232CE9C60();
  v8 = *(v3 + 24);
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_232BEEB30(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  return MEMORY[0x2822009F8](sub_232BEEB54, 0, 0);
}

uint64_t sub_232BEEB54()
{
  v1 = *(v0 + 344);
  sub_232BEF4D0();
  sub_232BEF3B8();
  v3 = v2();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 16);

  sub_232B1E1C4(v3, v5, v6, v0 + 56);

  if (*(v0 + 88) != 255)
  {
    v7 = *(v0 + 328);
    v8 = *(v0 + 56);
    v9 = *(v0 + 72);
    *(v7 + 32) = *(v0 + 88);
    *v7 = v8;
    *(v7 + 16) = v9;
    goto LABEL_3;
  }

  v12 = *(v0 + 336);
  sub_232B267AC(v0 + 56, &qword_27DDC7958, qword_232CFB920);

  v13 = sub_232BEF8E8(v12);
  *(v0 + 352) = v13;

  v14 = *(v13 + 16);
  *(v0 + 360) = v14;
  *(v0 + 368) = 0;
  result = *(v0 + 352);
  if (!v14)
  {
    v22 = *(v0 + 328);

    v23 = sub_232BEF400();
    sub_232BEF4B8(v23);
    sub_232BEF3B8();
    v24();
    sub_232BEF41C();

    sub_232BEF24C();
    v25 = swift_allocError();
    *v26 = v29;
    v26[1] = v30;
    *v22 = v25;
    *(v22 + 32) = 1;
    v27 = sub_232BEF400();
    sub_232BEF4B8(v27);
    sub_232BEF3B8();
    v28();
    sub_232BEF440();
    sub_232BEF498();
    sub_232BEF478();
    swift_endAccess();
LABEL_3:
    sub_232BEF460();

    __asm { BRAA            X1, X16 }
  }

  if (*(result + 16))
  {
    sub_232B25E34(result + 32, v0 + 16);
    sub_232B203C8((v0 + 16), *(v0 + 40));
    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    sub_232BEF3C8(v16);
    sub_232BEF460();

    return sub_232BEE454(v17, v18, v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232BEEDC4()
{

  return MEMORY[0x2822009F8](sub_232BEEEC0, 0, 0);
}

uint64_t sub_232BEEEC0()
{
  sub_232BEF1DC(v0 + 96, v0 + 136);
  if ((*(v0 + 168) & 1) == 0)
  {
    v10 = *(v0 + 328);

    sub_232BEF4D0();
    sub_232BEF3B8();
    v12 = v11();
    v14 = v13;
    sub_232BEF1DC(v0 + 96, v0 + 176);
    swift_beginAccess();
    sub_232BEE948(v0 + 176, v12, v14);
    swift_endAccess();
    sub_232B2040C((v0 + 16));
    v15 = *(v0 + 96);
    v16 = *(v0 + 112);
    *(v10 + 32) = *(v0 + 128);
    *v10 = v15;
    *(v10 + 16) = v16;
    sub_232B267AC(v0 + 136, &qword_27DDC6778, &unk_232CF7FB0);
LABEL_5:
    sub_232BEF460();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 368) + 1;
  sub_232B267AC(v0 + 96, &qword_27DDC6778, &unk_232CF7FB0);
  sub_232B2040C((v0 + 16));
  sub_232B267AC(v0 + 136, &qword_27DDC6778, &unk_232CF7FB0);
  *(v0 + 368) = v1;
  result = *(v0 + 352);
  if (v1 == *(v0 + 360))
  {
    v3 = *(v0 + 328);

    v4 = sub_232BEF400();
    sub_232BEF4B8(v4);
    sub_232BEF3B8();
    v5();
    sub_232BEF41C();

    sub_232BEF24C();
    v6 = swift_allocError();
    *v7 = v25;
    v7[1] = v26;
    *v3 = v6;
    *(v3 + 32) = 1;
    v8 = sub_232BEF400();
    sub_232BEF4B8(v8);
    sub_232BEF3B8();
    v9();
    sub_232BEF440();
    sub_232BEF498();
    sub_232BEF478();
    swift_endAccess();
    goto LABEL_5;
  }

  if (v1 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_232B25E34(result + 40 * v1 + 32, v0 + 16);
    sub_232B203C8((v0 + 16), *(v0 + 40));
    v19 = swift_task_alloc();
    *(v0 + 376) = v19;
    *v19 = v0;
    sub_232BEF3C8(v19);
    sub_232BEF460();

    return sub_232BEE454(v20, v21, v22, v23);
  }

  return result;
}

uint64_t sub_232BEF154()
{

  return v0;
}

uint64_t sub_232BEF184()
{
  sub_232BEF154();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_232BEF1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BEF24C()
{
  result = qword_27DDC7960;
  if (!qword_27DDC7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7960);
  }

  return result;
}

double sub_232BEF2A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_232B1F160(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_232B124A8(&qword_27DDC6770, &unk_232CF5DD0);
    sub_232CEA5C0();

    v8 = *(v11 + 56) + 40 * v7;
    v9 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 16) = v9;
    *(a3 + 32) = *(v8 + 32);
    sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
    sub_232CEA5E0();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
  }

  return result;
}

void *sub_232BEF400()
{
  v2 = v0[3];

  return sub_232B203C8(v0, v2);
}

void sub_232BEF41C()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232BEF440()
{

  return sub_232BEF1DC(v0, v1 + 216);
}

uint64_t sub_232BEF478()
{

  return sub_232BEE948(v1 + 216, v0, v2);
}

uint64_t sub_232BEF498()
{

  return swift_beginAccess();
}

uint64_t sub_232BEF4B8(uint64_t a1)
{

  return swift_getDynamicType();
}

uint64_t sub_232BEF4D0()
{
  sub_232B203C8(v0, v0[3]);

  return swift_getDynamicType();
}

uint64_t sub_232BEF508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_232B25E34(v2, &v15);
      sub_232BEFCCC(&v15);
      *&v12 = (*(v16 + 16))();
      *(&v12 + 1) = v4;
      sub_232B0D220(&v15, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B35BAC();
        v3 = v9;
      }

      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_232B35BAC();
        v3 = v10;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 56 * v5;
      v7 = v13[0];
      v8 = v13[1];
      *(v6 + 80) = v14;
      *(v6 + 48) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v12;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return sub_232B631D8(v3);
}

uint64_t sub_232BEF640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_232B25E34(v3, &v16);
      sub_232BEFCCC(&v16);
      (*(v17 + 24))(v15);
      v4 = sub_232BEFCCC(v15);
      v5 = v15[4];
      sub_232B2040C(v15);
      v6 = (*(v5 + 16))(v4, v5);
      v8 = v7;
      sub_232B124A8(&qword_27DDC6C20, &unk_232CF6FB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_232CF6460;
      sub_232B0D220(&v16, v9 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B35CA8();
        v2 = v12;
      }

      v10 = *(v2 + 16);
      if (v10 >= *(v2 + 24) >> 1)
      {
        sub_232B35CA8();
        v2 = v13;
      }

      *(v2 + 16) = v10 + 1;
      v11 = (v2 + 24 * v10);
      v11[4] = v6;
      v11[5] = v8;
      v11[6] = v9;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  return sub_232BEF7EC(v2);
}

uint64_t sub_232BEF7EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_232B124A8(&qword_27DDC7308, &qword_232CF89D0);
    v3 = sub_232CEA650();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_232BEFA10(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_232BEF884(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DUProcessingScheduler();
  v5 = sub_232BEF508(a1);

  *(v2 + 16) = v5;
  v6 = sub_232BEF640(a2);

  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_232BEF8E8(void *a1)
{
  sub_232B203C8(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 16))();

  v2 = sub_232B20544();

  if (v2)
  {
    return v2;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_232BEF990()
{

  return v0;
}

uint64_t sub_232BEF9B8()
{
  sub_232BEF990();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_232BEFA10(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v37 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v37 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v39 = v6;
    v9 = *v6;
    v10 = *a3;

    v12 = sub_232B1F160(v7, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_30;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        sub_232B124A8(&qword_27DDC7968, &qword_232CFB9D8);
        sub_232CEA5D0();
      }
    }

    else
    {
      sub_232B64254(v15, a2 & 1);
      v17 = sub_232B1F160(v7, v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_36;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v36 = v5;
      v20 = a3;
      v21 = *(v19[7] + 8 * v12);
      v22 = *(v9 + 16);
      v23 = *(v21 + 16);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v26 = *(v21 + 24) >> 1, v26 < v24))
      {
        if (v23 <= v24)
        {
          v27 = v23 + v22;
        }

        else
        {
          v27 = v23;
        }

        sub_232B35B88(isUniquelyReferenced_nonNull_native, v27, 1, v21);
        v21 = v28;
        v26 = *(v28 + 24) >> 1;
      }

      a3 = v20;
      if (*(v9 + 16))
      {
        if (v26 - *(v21 + 16) < v22)
        {
          goto LABEL_34;
        }

        sub_232B124A8(&qword_27DDC6C28, &qword_232CFB9E0);
        a3 = v20;
        swift_arrayInitWithCopy();

        v5 = v36;
        if (v22)
        {
          v29 = *(v21 + 16);
          v30 = __OFADD__(v29, v22);
          v31 = v29 + v22;
          if (v30)
          {
            goto LABEL_35;
          }

          *(v21 + 16) = v31;
        }
      }

      else
      {

        v5 = v36;
        if (v22)
        {
          goto LABEL_33;
        }
      }

      *(v19[7] + 8 * v12) = v21;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v32 = (v19[6] + 16 * v12);
      *v32 = v7;
      v32[1] = v8;
      *(v19[7] + 8 * v12) = v9;
      v33 = v19[2];
      v30 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v30)
      {
        goto LABEL_31;
      }

      v19[2] = v34;
    }

    v6 = v39 + 3;
    ++v5;
    a2 = 1;
  }

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
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232BEFCCC(void *a1)
{
  sub_232B203C8(a1, v1);

  return swift_getDynamicType();
}

id DURawDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_232BEFD64(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v2);
  sub_232B2D114();
  MEMORY[0x28223BE20](v3);
  sub_232B2D108();
  v103 = v4;
  v5 = sub_232B554F0();
  v101 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(v5);
  sub_232B13F24();
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v102 = (v8 - v7);
  v9 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v9);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  v99 = v11;
  v12 = sub_232B554F0();
  v97 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(v12);
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v98 = (v15 - v14);
  v16 = sub_232B554F0();
  v17 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(v16);
  v18 = sub_232B27FBC(v17);
  v95 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v95 - v23;
  v25 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v25);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  sub_232B2D108();
  v96 = v27;
  v28 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v28);
  sub_232B2D114();
  MEMORY[0x28223BE20](v29);
  sub_232BF7454();
  v30 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  sub_232B20704();
  v34 = v33 - v32;
  v35 = objc_allocWithZone(type metadata accessor for DURawDocument(0));
  v36 = [v35 init];
  v104 = a1;
  sub_232BF712C();
  v37 = *(v31 + 28);
  v100 = v34;
  v38 = *(v34 + v37);
  v39 = sub_232B13F74(v38 + 16, v135);
  sub_232BF71EC(v39, v134);
  sub_232BF7270();

  v40 = sub_232B13F74(v38 + 32, v133);
  sub_232BF71EC(v40, v132);
  sub_232BF7270();

  v41 = sub_232B13F74(v38 + 48, v131);
  sub_232BF71EC(v41, v130);
  sub_232BF7270();

  v42 = sub_232B13F74(v38 + 64, v129);
  sub_232BF71EC(v42, &v128);
  sub_232BF7270();

  v43 = sub_232B13F74(v38 + 80, &v127);
  sub_232BF71EC(v43, &v126);
  sub_232BF7270();

  v44 = sub_232B13F74(v38 + 96, &v125);
  sub_232BF71EC(v44, &v124);
  sub_232BF7270();

  v45 = sub_232B13F74(v38 + 112, &v123);
  sub_232BF71EC(v45, &v122);
  sub_232BF7270();

  v46 = sub_232B13F74(v38 + 128, &v121);
  sub_232BF71EC(v46, &v120);
  sub_232BF7270();

  sub_232B13F74(v38 + 144, &v119);
  v47 = *(v38 + 144);
  v48 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  sub_232B13F5C(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords + v36, &v118);
  *&v48[v36] = v47;

  v49 = sub_232B13F74(v38 + 152, &v117);
  sub_232BF71EC(v49, &v116);
  sub_232BF7270();

  sub_232B13F74(v38 + 168, &v115);

  sub_232BF7498();

  sub_232B207D4(v36 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url, v114);
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74(v38 + 184, v114);

  sub_232BF7498();

  sub_232B207D4(v36 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_thumbnailUrl, v113);
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74(v38 + 200, v113);

  sub_232BF7498();

  sub_232B207D4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_significantLink + v36, v112);
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74(v38 + 216, v112);
  sub_232CE8CA0();
  v50 = sub_232CE8D10();
  v51 = sub_232BF7244();
  sub_232B12504(v51, v52, v53, v50);
  sub_232B207D4(v36 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated, v111);
  v54 = v36;
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74(v38 + 224, v111);
  sub_232CE8CA0();
  v55 = sub_232BF7244();
  sub_232B12504(v55, v56, v57, v50);
  sub_232B207D4(OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateModified + v36, v110);
  sub_232BF6164();
  swift_endAccess();
  sub_232B13F74(v38 + 232, v110);
  v58 = *(v38 + 232);
  v59 = MEMORY[0x277D84F90];
  v109[0] = MEMORY[0x277D84F90];
  v60 = *(v58 + 16);
  if (v60)
  {
    v96 = v36;
    sub_232BF7444();
    v63 = v61 + v62;
    v65 = *(v64 + 72);
    v95 = v61;

    v66 = MEMORY[0x277D84F90];
    do
    {
      sub_232BF72F8();
      sub_232BF712C();
      sub_232BF712C();
      v67 = sub_232B43010(v21);
      sub_232BF72E0();
      v69 = sub_232BF610C(v24, v68);
      if (v67)
      {
        MEMORY[0x238391D50](v69);
        if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v66 = v109[0];
      }

      v63 += v65;
      --v60;
    }

    while (v60);

    v54 = v96;
    v59 = MEMORY[0x277D84F90];
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v70 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  sub_232B13F5C(&v54[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements], v109);
  *&v54[v70] = v66;

  sub_232B13F74(v38 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &v108);
  v71 = v99;
  sub_232BF5EEC();
  v72 = sub_232BF74D4();
  v73 = v97;
  sub_232B351B0(v72, v74, v97);
  if (v75)
  {
    v82 = v98;
    *v98 = 0;
    *(v82 + 8) = 0xE000000000000000;
    sub_232CE9330();
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
    sub_232B55484();
    sub_232B12504(v76, v77, v78, v79);
    v80 = sub_232BF74D4();
    sub_232B351B0(v80, v81, v73);
    v83 = v103;
    v84 = v101;
    if (!v75)
    {
      sub_232B13790(v71, &qword_27DDC69B0, &qword_232CF6998);
    }
  }

  else
  {
    sub_232BF71B4();
    v82 = v98;
    sub_232BF61BC();
    v83 = v103;
    v84 = v101;
  }

  v85 = sub_232B39460(v82);
  v86 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C(&v54[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v107);
  v87 = *&v54[v86];
  *&v54[v86] = v85;

  sub_232B13F74(v38 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &v106);
  sub_232BF5EEC();
  sub_232B351B0(v83, 1, v84);
  if (v75)
  {
    v88 = v102;
    *v102 = 0;
    v88[1] = 0xE000000000000000;
    v88[2] = 0;
    v88[3] = 0xE000000000000000;
    v88[4] = v59;
    v88[5] = v59;
    v88[6] = 0;
    v88[7] = 0xE000000000000000;
    v88[8] = 0;
    v88[9] = 0xE000000000000000;
    sub_232CE9330();
    sub_232B351B0(v83, 1, v84);
    v89 = v104;
    v90 = v100;
    if (!v75)
    {
      sub_232B13790(v83, &qword_27DDC69A0, &qword_232CF6990);
    }
  }

  else
  {
    sub_232BF7184();
    v88 = v102;
    sub_232BF61BC();
    v89 = v104;
    v90 = v100;
  }

  v91 = sub_232B3E1E8(v88);
  sub_232BF610C(v89, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232BF610C(v90, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  v92 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C(&v54[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], &v105);
  v93 = *&v54[v92];
  *&v54[v92] = v91;

  return v54;
}

char *sub_232BF073C(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v85 - v4;
  v91 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData(0);
  MEMORY[0x28223BE20](v91);
  v92 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v85 - v7;
  v87 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData(0);
  MEMORY[0x28223BE20](v87);
  v88 = (&v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(0);
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v85 - v13;
  v15 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v85 - v16;
  v17 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(v1) init];
  v94 = a1;
  sub_232BF712C();
  v23 = *(v19 + 28);
  v90 = v21;
  v24 = *&v21[v23];
  swift_beginAccess();
  v25 = v24[2];
  v26 = v24[3];
  v27 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  swift_beginAccess();
  *v27 = v25;
  *(v27 + 1) = v26;

  swift_beginAccess();
  v28 = v24[4];
  v29 = v24[5];
  v30 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_subHeadline];
  swift_beginAccess();
  *v30 = v28;
  *(v30 + 1) = v29;

  swift_beginAccess();
  v31 = v24[6];
  v32 = v24[7];
  v33 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_version];
  swift_beginAccess();
  *v33 = v31;
  *(v33 + 1) = v32;

  swift_beginAccess();
  v34 = v24[8];
  v35 = v24[9];
  v36 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  swift_beginAccess();
  *v36 = v34;
  *(v36 + 1) = v35;

  swift_beginAccess();
  v37 = v24[10];
  v38 = v24[11];
  v39 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_abstract];
  swift_beginAccess();
  *v39 = v37;
  *(v39 + 1) = v38;

  swift_beginAccess();
  v40 = v24[12];
  v41 = v24[13];
  v42 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_comment];
  swift_beginAccess();
  *v42 = v40;
  *(v42 + 1) = v41;

  swift_beginAccess();
  v43 = v24[14];
  v44 = v24[15];
  v45 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  swift_beginAccess();
  *v45 = v43;
  *(v45 + 1) = v44;

  swift_beginAccess();
  v46 = v24[16];
  v47 = v24[17];
  v48 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_inLanguage];
  swift_beginAccess();
  *v48 = v46;
  *(v48 + 1) = v47;

  swift_beginAccess();
  v49 = v24[18];
  v50 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_keywords;
  swift_beginAccess();
  *&v50[v22] = v49;

  swift_beginAccess();
  v51 = v24[19];
  v52 = v24[20];
  v53 = &v22[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  swift_beginAccess();
  *v53 = v51;
  *(v53 + 1) = v52;

  swift_beginAccess();

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();

  sub_232CE8BD0();

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v54 = v86;
  sub_232CE8CA0();
  v55 = sub_232CE8D10();
  sub_232B12504(v54, 0, 1, v55);
  swift_beginAccess();
  v56 = v22;
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  sub_232CE8CA0();
  sub_232B12504(v54, 0, 1, v55);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  swift_beginAccess();
  v57 = v24[29];
  v58 = MEMORY[0x277D84F90];
  v95[0] = MEMORY[0x277D84F90];
  v59 = *(v57 + 16);
  if (v59)
  {
    v86 = v22;
    v60 = v57 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v61 = *(v85 + 72);
    v85 = v57;

    v62 = MEMORY[0x277D84F90];
    do
    {
      sub_232BF712C();
      sub_232BF712C();
      v63 = sub_232B43010(v11);
      v64 = sub_232BF610C(v14, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
      if (v63)
      {
        MEMORY[0x238391D50](v64);
        if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v62 = v95[0];
      }

      v60 += v61;
      --v59;
    }

    while (v59);

    v56 = v86;
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v65 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
  swift_beginAccess();
  *&v56[v65] = v62;

  swift_beginAccess();
  v66 = v89;
  sub_232BF5EEC();
  v67 = v87;
  if (sub_232B12480(v66, 1, v87) == 1)
  {
    v68 = v88;
    *v88 = 0;
    *(v68 + 8) = 0xE000000000000000;
    sub_232CE9330();
    v69 = *(v67 + 24);
    v70 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData(0);
    sub_232B12504(v68 + v69, 1, 1, v70);
    v71 = sub_232B12480(v66, 1, v67);
    v72 = v93;
    v73 = v91;
    if (v71 != 1)
    {
      sub_232B13790(v66, &qword_27DDC69B0, &qword_232CF6998);
    }
  }

  else
  {
    v68 = v88;
    sub_232BF61BC();
    v72 = v93;
    v73 = v91;
  }

  v74 = sub_232B39460(v68);
  v75 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  swift_beginAccess();
  v76 = *&v56[v75];
  *&v56[v75] = v74;

  swift_beginAccess();
  sub_232BF5EEC();
  if (sub_232B12480(v72, 1, v73) == 1)
  {
    v77 = v92;
    *v92 = 0;
    v77[1] = 0xE000000000000000;
    v77[2] = 0;
    v77[3] = 0xE000000000000000;
    v77[4] = v58;
    v77[5] = v58;
    v77[6] = 0;
    v77[7] = 0xE000000000000000;
    v77[8] = 0;
    v77[9] = 0xE000000000000000;
    sub_232CE9330();
    v78 = sub_232B12480(v72, 1, v73);
    v79 = v94;
    v80 = v90;
    if (v78 != 1)
    {
      sub_232B13790(v72, &qword_27DDC69A0, &qword_232CF6990);
    }
  }

  else
  {
    v77 = v92;
    sub_232BF61BC();
    v79 = v94;
    v80 = v90;
  }

  v81 = sub_232B3E1E8(v77);
  sub_232BF610C(v79, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232BF610C(v80, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  v82 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  swift_beginAccess();
  v83 = *&v56[v82];
  *&v56[v82] = v81;

  return v56;
}
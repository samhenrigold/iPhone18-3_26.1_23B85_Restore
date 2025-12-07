uint64_t sub_23D7B58C0(uint64_t a1, uint64_t a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = sub_23D80D97C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D89C();
  v6 = sub_23D80D88C();
  v7 = sub_23D80D7DC();
  v8 = *MEMORY[0x277CB8030];
  v23[0] = 0;
  v9 = [v7 setCategory:v8 error:v23];

  if (v9)
  {
    v10 = v23[0];
  }

  else
  {
    v11 = v23[0];
    v12 = sub_23D80D5DC();

    swift_willThrow();
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_27E2E5348);
    swift_beginAccess();
    (*(v3 + 16))(v5, v13, v2);
    v14 = v12;
    v15 = sub_23D80D95C();
    v16 = sub_23D80E07C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_23D78A000, v15, v16, "Failed to configure reader mode audio session with error: %@", v17, 0xCu);
      sub_23D790730(v18, &qword_27E2E45B0, &unk_23D810330);
      MEMORY[0x23EEED790](v18, -1, -1);
      MEMORY[0x23EEED790](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_23D80D7EC();
  return v6;
}

uint64_t AXRBlockManager.preferredLanguage.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AXRBlockManager.preferredLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AXRBlockManager.shouldShowNowPlayingControls.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.shouldShowNowPlayingControls.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*AXRBlockManager.pages.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B5ECC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$pages.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$pages.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.pageContentAtIndex(_:)(int64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v5);

  v2 = *(v5 + 16);

  if (v2 <= a1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v5);

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > a1)
  {
    v4 = *(v5 + 8 * a1 + 32);

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t AXRBlockManager.currentBlock.getter()
{
  v66 = sub_23D80D67C();
  v67 = *(v66 - 8);
  v0 = MEMORY[0x28223BE20](v66);
  v64 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v65 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = sub_23D80D6CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v18);

  v19 = AXRBlockManager.blockAtIndexPath(_:)();
  (*(v16 + 8))(v18, v15);
  if (!v19)
  {
    v60 = v12;
    v61 = v6;
    v59 = *(v16 + 56);
    v63 = v14;
    v59(v14, 1, 1, v15);
    v20 = sub_23D80D5BC();
    v21 = *(v20 - 8);
    v57 = *(v21 + 56);
    v58 = (v21 + 56);
    v62 = v8;
    v57(v8, 1, 1, v20);
    sub_23D80D66C();
    type metadata accessor for AXRTextBlock(0);
    v19 = swift_allocObject();
    v22 = v64;
    sub_23D80D66C();
    v23 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
    v24 = v67;
    v53 = *(v67 + 32);
    v53(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v22, v66);
    v25 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
    v26 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
    v27 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
    *v27 = 4;
    *(v27 + 4) = 1;
    v54 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
    v28 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
    *v28 = 0;
    *(v28 + 8) = 1;
    v55 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
    v56 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
    v59((v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath), 1, 1, v15);
    v57((v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText), 1, 1, v20);
    v29 = v66;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
    v57 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
    v30 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
    *v30 = 0;
    v30[1] = 0;
    v58 = v30;
    v31 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
    sub_23D80D72C();
    (*(v24 + 16))(v22, v65, v29);
    v32 = *(v24 + 8);
    v67 = v24 + 8;
    v59 = v32;
    (v32)(v19 + v23, v29);
    v53(v19 + v23, v22, v29);
    v33 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
    swift_beginAccess();
    if (*(v19 + v25))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v52 - 2) = v19;
      *(&v52 - 8) = 0;
      v70[3] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v19 + v25) = 0;
    }

    swift_beginAccess();
    v35 = *(v26 + 16) == 1;
    v64 = v31;
    if (v35)
    {
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
    }

    else
    {
      v36 = swift_getKeyPath();
      MEMORY[0x28223BE20](v36);
      *(&v52 - 3) = 0;
      *(&v52 - 2) = 0;
      *(&v52 - 4) = v19;
      *(&v52 - 8) = 1;
      v70[0] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    v37 = v62;
    sub_23D7D339C(MEMORY[0x277D84F90]);
    LODWORD(v70[0]) = 4;
    BYTE4(v70[0]) = 1;
    sub_23D7D37C0(v70);
    v38 = v54;
    swift_beginAccess();
    if (*(v19 + v38))
    {
      v39 = swift_getKeyPath();
      MEMORY[0x28223BE20](v39);
      *(&v52 - 2) = v19;
      *(&v52 - 8) = 0;
      v69[10] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v19 + v38) = 0;
    }

    v40 = v55;
    sub_23D7D42EC(0, 0);
    swift_beginAccess();
    if (*(v19 + v40))
    {
      v41 = swift_getKeyPath();
      MEMORY[0x28223BE20](v41);
      *(&v52 - 2) = v19;
      *(&v52 - 8) = 0;
      v69[7] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v19 + v40) = 0;
    }

    v42 = v56;
    swift_beginAccess();
    if (*(v19 + v42))
    {
      v43 = swift_getKeyPath();
      MEMORY[0x28223BE20](v43);
      *(&v52 - 2) = v19;
      *(&v52 - 8) = 0;
      v69[4] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *(v19 + v42) = 0;
    }

    v44 = v61;
    v45 = v60;
    sub_23D790648(v63, v60, &qword_27E2E43F8, &qword_23D811650);
    sub_23D7D4AF8(v45);
    sub_23D790648(v37, v44, &qword_27E2E43F0, &unk_23D811FD0);
    sub_23D7D512C(v44);
    v46 = sub_23D7A1CF4(0, 0xE000000000000000);
    v47 = v57;
    swift_beginAccess();
    if (v46 == *(v47 + v19))
    {
      *(v47 + v19) = v46;
    }

    else
    {
      v48 = swift_getKeyPath();
      MEMORY[0x28223BE20](v48);
      *(&v52 - 2) = v19;
      *(&v52 - 8) = v46;
      v69[0] = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    v49 = v58;
    swift_beginAccess();
    if (v49[1])
    {
      v50 = swift_getKeyPath();
      MEMORY[0x28223BE20](v50);
      *(&v52 - 3) = 0;
      *(&v52 - 2) = 0;
      *(&v52 - 4) = v19;
      v68 = v19;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6EC();
    }

    else
    {
      *v49 = 0;
      v49[1] = 0;
    }

    (v59)(v65, v66);
    sub_23D790730(v37, &qword_27E2E43F0, &unk_23D811FD0);
    sub_23D790730(v63, &qword_27E2E43F8, &qword_23D811650);
  }

  return v19;
}

uint64_t AXRBlockManager.blockIndex.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);
}

unint64_t AXRBlockManager.blockAtIndexPath(_:)()
{
  if (sub_23D80D6AC() < 2)
  {
    return 0;
  }

  v0 = sub_23D80D6DC();
  v1 = sub_23D80D6DC();
  v2 = AXRBlockManager.pageContentAtIndex(_:)(v0);
  if ((v0 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v8);

  v4 = *(v8 + 16);

  if (v0 >= v4)
  {
    goto LABEL_11;
  }

  result = v3;
  if (v1 < 0)
  {
    goto LABEL_11;
  }

  if (v3 >> 62)
  {
    v7 = sub_23D80E31C();
    result = v3;
    if (v1 < v7)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x23EEECB80](v1, result);
    goto LABEL_10;
  }

  if (v1 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v1 + 32);

LABEL_10:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t AXRBlockManager.totalCharacterCount.getter()
{
  v1 = v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  if (*(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount + 8) != 1)
  {
    return *v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v11);

  v2 = sub_23D7B7534(v11[0]);

  v10 = v1;
  if (v2 >> 62)
  {
LABEL_20:
    v1 = sub_23D80E31C();
  }

  else
  {
    v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = 0;
  while (v1 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EEECB80](v3, v2);
      if (__OFADD__(v3, 1))
      {
LABEL_14:
        __break(1u);
        return *v1;
      }
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }
    }

    swift_getKeyPath();
    v11[3] = v5;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v7 = *(v5 + v6);

    ++v3;
    v8 = __OFADD__(v4, v7);
    v4 += v7;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  *v10 = v4;
  *(v10 + 8) = 0;
  return v4;
}

uint64_t AXRBlockManager.totalCharacterCount.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_23D7B7534(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_23D80E31C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_23D80E31C();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_23D80E31C();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_23D80E27C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_23D7CE9C0(&qword_27E2E4A40, &qword_27E2E43C0, &qword_23D811E40, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
        v16 = sub_23D7CD090(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for AXRTextBlock(0);
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_23D80E31C();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t (*AXRBlockManager.totalCharacterCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = AXRBlockManager.totalCharacterCount.getter();
  return sub_23D7B784C;
}

void *sub_23D7B784C(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t AXRBlockManager.totalVisibleCharacterCount.getter()
{
  v0 = sub_23D7B78B0();
  v2 = v1;
  v3 = AXRBlockManager.totalCharacterCount.getter();
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  result = v4 - v0;
  if (__OFSUB__(v4, v0))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D7B78B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v0 = *&v5[0] * 7200.0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v2 = ceil(v0 * (v5[0] * 5.0 / 60.0));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v3 = *&v5[1] * 7200.0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v4 = ceil(v3 * (v5[0] * 5.0 / 60.0));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 9.22337204e18)
  {
    return v2;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.visibleChunkRange.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

double AXRBlockManager.estimatedWPM.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

uint64_t sub_23D7B7BF0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v3);

  return v3;
}

uint64_t sub_23D7B7C84(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23D80DA1C();
}

uint64_t sub_23D7B7D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visiblePages.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B7E34(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$visiblePages.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visiblePages.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4900, &unk_23D811640);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7B8270@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_23D7B82F0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.visibleChunkRange.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visibleChunkRange.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B84A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$visibleChunkRange.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visibleChunkRange.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4938, &qword_23D8118C0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.visibleChunkCharacterOffset.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

uint64_t sub_23D7B8940@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23D7B89C0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.visibleChunkCharacterOffset.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.visibleChunkCharacterOffset.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B8B5C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$visibleChunkCharacterOffset.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$visibleChunkCharacterOffset.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4950, &qword_23D811918);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.totalVisibleChunks.getter()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  v2 = v0 / (v4 * 5.0 / 60.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  v3 = ceil(v2 / 7200.0);
  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23D7B9090@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a2);
}

uint64_t sub_23D7B910C(uint64_t a1, void **a2)
{
  v4 = sub_23D80D6CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v11(v8, v10, v4);
  v13 = v12;
  sub_23D80DA1C();
  return (*(v5 + 8))(v10, v4);
}

uint64_t AXRBlockManager.blockIndex.setter(uint64_t a1)
{
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v7 = v1;
  sub_23D80DA1C();
  return (*(v4 + 8))(a1, v3);
}

void (*AXRBlockManager.blockIndex.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7B9440;
}

uint64_t sub_23D7B9460(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$blockIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$blockIndex.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4960, &qword_23D811928);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void (*AXRBlockManager.needsRefresh.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7B999C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$needsRefresh.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$needsRefresh.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.playbackSpeed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t AXRBlockManager.playbackSpeed.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return sub_23D7B9E80();
}

uint64_t sub_23D7B9E80()
{
  swift_beginAccess();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_23D80DA1C();
}

uint64_t AXRBlockManager.estimatedWPM.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_23D80DA1C();
}

uint64_t (*AXRBlockManager.playbackSpeed.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23D7BA030;
}

uint64_t sub_23D7BA030(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_23D7B9E80();
  }

  return result;
}

uint64_t AXRBlockManager.useAXRuntimeFetch.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.useAXRuntimeFetch.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double AXRBlockManager.defaultWPM.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.defaultWPM.setter(double a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_23D7BA24C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_23D7BA2CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.estimatedWPM.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7BA404(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$estimatedWPM.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$estimatedWPM.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double AXRBlockManager.articles.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t AXRBlockManager.articles.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AXRBlockManager.speechSkippingInProgress.getter()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXRBlockManager.speechSkippingInProgress.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23D7BAA38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v3);

  return v3;
}

uint64_t sub_23D7BAACC(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_23D80DA1C();
}

uint64_t sub_23D7BAB4C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23D80DA1C();
}

void (*AXRBlockManager.nowPlayingRequestScrollPositionUpdate.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7BAC74(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$nowPlayingRequestScrollPositionUpdate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$nowPlayingRequestScrollPositionUpdate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t AXRBlockManager.speechState.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);
}

uint64_t sub_23D7BB118@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  *a2 = v4;
  return result;
}

void sub_23D7BB198(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_23D80DA1C();
  sub_23D7BB288();
}

void AXRBlockManager.speechState.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_23D80DA1C();
  sub_23D7BB288();
}

void sub_23D7BB288()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-v6];
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls;
  swift_beginAccess();
  if (*(v1 + v8) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v21);

    if (v21 - 2 < 2)
    {
      if (qword_27E2E4250 != -1)
      {
        swift_once();
      }

      v9 = [objc_opt_self() defaultCenter];
      [v9 setPlaybackState_];

      sub_23D80B03C();
      return;
    }

    if (!v21)
    {
      if (qword_27E2E4250 != -1)
      {
        swift_once();
      }

      v10 = qword_27E2E5360;
      v11 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
      swift_beginAccess();
      v12 = *(v1 + v11);
      v13 = *(v12 + 16);
      v14 = type metadata accessor for AXRArticle(0);
      v15 = *(v14 - 8);
      if (v13)
      {
        sub_23D7CD444(v12 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), v7, type metadata accessor for AXRArticle);
        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      (*(v15 + 56))(v7, v16, 1, v14);
      swift_unknownObjectWeakAssign();
      sub_23D790648(v7, v5, &qword_27E2E4A90, &unk_23D815170);
      v18 = OBJC_IVAR____TtC23AccessibilityReaderData20AXRNowPlayingManager_article;
      swift_beginAccess();
      sub_23D7CEC14(v5, v10 + v18);
      swift_endAccess();
      sub_23D80A798();
      sub_23D790730(v7, &qword_27E2E4A90, &unk_23D815170);
      return;
    }

    if (qword_27E2E4250 == -1)
    {
LABEL_18:
      v17 = [objc_opt_self() defaultCenter];
      [v17 setPlaybackState_];

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v20);

  if (v20[0] <= 1u)
  {
    if (qword_27E2E4250 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (qword_27E2E4250 != -1)
  {
    swift_once();
  }

  sub_23D80B3A4();
}

void (*AXRBlockManager.speechState.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7BB768;
}

void sub_23D7BB768(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  *(a1 + 9) = v2;
  v4 = v3;
  sub_23D80DA1C();
  sub_23D7BB288();
}

uint64_t sub_23D7BB7FC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AXRBlockManager.$speechState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXRBlockManager.$speechState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A8, &qword_23D811A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

id AXRBlockManager.init(document:withPlaybackSpeed:bundleID:appName:preferredLanguage:)(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v114 = a7;
  v115 = a8;
  v120 = a5;
  v121 = a6;
  v122 = a3;
  v123 = a4;
  v117 = a1;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v10 - 8);
  v118 = &v93 - v11;
  v116 = type metadata accessor for AXRArticle(0);
  MEMORY[0x28223BE20](v116);
  v119 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v93 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v93 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v93 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v93 - v16;
  v17 = sub_23D80D6CC();
  v18 = *(v17 - 8);
  v126 = v17;
  v127 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v125 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v124 = &v93 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v97 = *(v98 - 1);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v24 = &v93 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v93 - v28;
  v101 = *a2;
  v100 = *(a2 + 4);
  v30 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v8[v30] = sub_23D7B58C0(v27, v31);
  v32 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v32 = 0;
  v32[1] = 0;
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v33 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v34 = MEMORY[0x277D84F90];
  *&v129 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v35 = *(v26 + 32);
  v35(&v8[v33], v29, v25);
  v36 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v36 = 0;
  v36[8] = 1;
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v129 = v34;
  sub_23D80D9CC();
  v35(&v8[v37], v29, v25);
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v129 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v94 + 32))(&v8[v38], v24, v95);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v129 = 0;
  v40 = v96;
  sub_23D80D9CC();
  (*(v97 + 32))(&v8[v39], v40, v98);
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v42 = v124;
  MEMORY[0x23EEEBFA0](&unk_284FCE308);
  v43 = v127;
  v97 = *(v127 + 16);
  v44 = v126;
  (v97)(v125, v42, v126);
  v45 = v99;
  sub_23D80D9CC();
  v46 = *(v43 + 8);
  v127 = v43 + 8;
  v98 = v46;
  v46(v42, v44);
  (*(v102 + 32))(&v8[v41], v45, v103);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v129) = 0;
  v48 = v104;
  sub_23D80D9CC();
  v49 = *(v105 + 32);
  v50 = v106;
  v49(&v8[v47], v48, v106);
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v129 = 0x4069000000000000;
  v52 = v107;
  sub_23D80D9CC();
  (*(v108 + 32))(&v8[v51], v52, v109);
  *&v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v53 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v129) = 0;
  sub_23D80D9CC();
  v49(&v8[v53], v48, v50);
  v54 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v129) = 3;
  v55 = v110;
  sub_23D80D9CC();
  (*(v111 + 32))(&v8[v54], v55, v112);
  v56 = &v8[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v56 = v101;
  v56[4] = v100;
  swift_beginAccess();
  v57 = v115;
  *v32 = v114;
  v32[1] = v57;

  v128.receiver = v8;
  v128.super_class = ObjectType;
  v58 = objc_msgSendSuper2(&v128, sel_init);
  v59 = v124;
  MEMORY[0x23EEEBFA0](&unk_284FCE340);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v126;
  (v97)(v125, v59, v126);
  v62 = v116;
  v61 = v117;
  v63 = v58;
  sub_23D80DA1C();
  v98(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v64 = (type metadata accessor for AXRTextContent(0) - 8);
  v65 = (*(*v64 + 80) + 32) & ~*(*v64 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_23D80FB00;
  v67 = v66 + v65;
  v68 = VNDocumentObservation.text.getter();
  v70 = v69;
  v71 = sub_23D80D5BC();
  v72 = v118;
  (*(*(v71 - 8) + 56))(v118, 1, 1, v71);
  v73 = v64[15];
  *(v67 + v73) = 0;
  sub_23D80D66C();
  v74 = (v67 + v64[7]);
  *v74 = v68;
  v74[1] = v70;
  *(v67 + v64[8]) = 0;
  *(v67 + v64[11]) = 0;
  sub_23D7AF7D0(v72, v67 + v64[12], &qword_27E2E43F0, &unk_23D811FD0);
  v75 = v67 + v64[9];
  *v75 = 1;
  *(v75 + 8) = 0;
  *(v67 + v64[10]) = 0;
  *(v67 + v64[13]) = 0;
  *(v67 + v64[14]) = 0;
  v76 = *(v67 + v73);
  *(v67 + v73) = 0;
  v77 = v119;

  v78 = v62[9];
  v79 = sub_23D80D63C();
  (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
  v80 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v81 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v82 = qword_27E2E4610;
    v83 = sub_23D80DD4C();
    v84 = sub_23D80DD4C();
    v85 = [v82 localizedStringForKey:v83 value:0 table:v84];

    v81 = sub_23D80DD7C();
    v80 = v86;
  }

  sub_23D80D66C();
  v87 = (v77 + v62[5]);
  v88 = v121;
  *v87 = v120;
  v87[1] = v88;
  v89 = (v77 + v62[6]);
  v90 = v123;
  *v89 = v122;
  v89[1] = v90;
  v91 = (v77 + v62[7]);
  *v91 = v81;
  v91[1] = v80;
  *(v77 + v62[8]) = v66;
  *(v77 + v62[10]) = 0;
  *(v77 + v62[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v77, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v77, type metadata accessor for AXRArticle);
  return v63;
}

uint64_t AXRBlockManager.appendArticle(_:splitStrings:)(uint64_t a1, int a2)
{
  LODWORD(v115) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = &v101 - v4;
  v5 = sub_23D80D6CC();
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v110 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v101 - v8;
  v109 = sub_23D80D5BC();
  v106 = *(v109 - 8);
  v9 = MEMORY[0x28223BE20](v109);
  v102 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v101 - v11;
  v105 = type metadata accessor for AXRTextContent(0);
  v120 = *(v105 - 8);
  v12 = MEMORY[0x28223BE20](v105);
  v118 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v111 = &v101 - v14;
  v15 = type metadata accessor for AXRArticle(0);
  v113 = *(v15 - 1);
  v16 = MEMORY[0x28223BE20](v15);
  v112 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  v126 = *(a1 + *(v18 + 32));

  _s23AccessibilityReaderData14AXRTextContentV25clearIntermediateElements2inySayACGz_tFZ_0(&v126);
  v21 = (a1 + v15[5]);
  v22 = *v21;
  v23 = v21[1];
  v24 = (a1 + v15[6]);
  v25 = *v24;
  v26 = v24[1];
  v116 = v22;
  v117 = v25;
  v27 = v126;
  v28 = v15[9];
  v29 = sub_23D80D63C();
  (*(*(v29 - 8) + 56))(&v20[v28], 1, 1, v29);
  v30 = 0x800000023D815CB0;
  v31 = qword_27E2E4228;

  v32 = v26;

  if (v31 != -1)
  {
    swift_once();
  }

  v33 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v34 = v27;
    v35 = v20;
    v36 = qword_27E2E4610;
    v37 = sub_23D80DD4C();
    v38 = sub_23D80DD4C();
    v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

    v33 = sub_23D80DD7C();
    v30 = v40;

    v20 = v35;
    v27 = v34;
  }

  sub_23D80D66C();
  v41 = &v20[v15[5]];
  v42 = v117;
  *v41 = v116;
  *(v41 + 1) = v23;
  v43 = &v20[v15[6]];
  *v43 = v42;
  *(v43 + 1) = v32;
  v44 = &v20[v15[7]];
  *v44 = v33;
  v44[1] = v30;
  *&v20[v15[8]] = v27;
  v20[v15[10]] = 0;
  v20[v15[11]] = 0;
  v117 = *(v27 + 16);
  if (v117)
  {
    v125 = MEMORY[0x277D84F90];
    v114 = v20;
    v104 = v27;
    if (v115)
    {
      v45 = v111;
      sub_23D7CD444(v27 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v111, type metadata accessor for AXRTextContent);
      v46 = v105;
      v47 = v107;
      sub_23D790648(v45 + *(v105 + 40), v107, &qword_27E2E43F0, &unk_23D811FD0);
      v48 = v106;
      v49 = v109;
      if ((*(v106 + 48))(v47, 1, v109) == 1)
      {
        sub_23D790730(v47, &qword_27E2E43F0, &unk_23D811FD0);
        v50 = (v45 + *(v46 + 20));
        v51 = *v50;
        v52 = v50[1];
        v53 = v121;
        v54 = v121 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
        swift_beginAccess();
        v55 = *(v54 + 4);
        v122 = *v54;
        v123 = v55;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v124);

        v56 = *(v124[0] + 16);

        v57 = (v53 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
        swift_beginAccess();
        v59 = *v57;
        v58 = v57[1];

        v60 = String.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(&v122, v56, v59, v58, v51, v52);

        sub_23D7952C8(v60, v61);
      }

      else
      {
        v74 = v103;
        (*(v48 + 32))(v103, v47, v49);
        sub_23D7936F0(0, &qword_27E2E49C8, 0x277CCA898);
        (*(v48 + 16))(v102, v74, v49);
        v75 = sub_23D80E0EC();
        v76 = v121;
        v77 = v121 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
        swift_beginAccess();
        v78 = *(v77 + 4);
        v122 = *v77;
        v123 = v78;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v124);

        v79 = *(v124[0] + 16);

        v80 = (v76 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage);
        swift_beginAccess();
        v82 = *v80;
        v81 = v80[1];

        v83 = NSAttributedString.readerTextBlocks(withPlaybackSpeed:pageIndex:preferredLanguage:)(&v122, v79, v82, v81);

        sub_23D7952C8(v83, v84);

        (*(v48 + 8))(v74, v49);
      }

      sub_23D7CD3E4(v45, type metadata accessor for AXRTextContent);
    }

    else
    {
      v62 = v121 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
      v116 = v27 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      swift_beginAccess();
      v63 = 0;
      v64 = (v108 + 16);
      v65 = (v108 + 56);
      v66 = (v108 + 8);
      v115 = xmmword_23D80FAF0;
      v67 = v110;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
        v68 = swift_allocObject();
        *(v68 + 16) = v115;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v124);

        v69 = *(v124[0] + 16);

        *(v68 + 32) = v69;
        *(v68 + 40) = v63;
        MEMORY[0x23EEEBFA0](v68);
        v70 = v118;
        sub_23D7CD444(v116 + *(v120 + 72) * v63, v118, type metadata accessor for AXRTextContent);
        v71 = *(v62 + 4);
        LODWORD(v124[0]) = *v62;
        BYTE4(v124[0]) = v71;
        v72 = v119;
        (*v64)(v119, v67, v5);
        (*v65)(v72, 0, 1, v5);
        sub_23D801090(v124, v72);
        sub_23D790730(v72, &qword_27E2E43F8, &qword_23D811650);
        v73 = sub_23D7CD3E4(v70, type metadata accessor for AXRTextContent);
        MEMORY[0x23EEEC7D0](v73);
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23D80DF0C();
        }

        ++v63;
        sub_23D80DF2C();
        (*v66)(v67, v5);
      }

      while (v117 != v63);
    }

    v85 = v125;
    swift_getKeyPath();
    swift_getKeyPath();
    v86 = sub_23D80D9FC();
    v88 = v87;
    v89 = *v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v88 = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v89 = sub_23D790020(0, v89[2] + 1, 1, v89);
      *v88 = v89;
    }

    v92 = v89[2];
    v91 = v89[3];
    if (v92 >= v91 >> 1)
    {
      v89 = sub_23D790020((v91 > 1), v92 + 1, 1, v89);
      *v88 = v89;
    }

    v89[2] = v92 + 1;
    v89[v92 + 4] = v85;
    v86(v124, 0);

    v93 = v112;
    sub_23D7CD444(v114, v112, type metadata accessor for AXRArticle);
    v94 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
    v95 = v121;
    swift_beginAccess();
    v96 = *(v95 + v94);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *(v95 + v94) = v96;
    if ((v97 & 1) == 0)
    {
      v96 = sub_23D78FFF8(0, v96[2] + 1, 1, v96);
      *(v121 + v94) = v96;
    }

    v99 = v96[2];
    v98 = v96[3];
    if (v99 >= v98 >> 1)
    {
      v96 = sub_23D78FFF8((v98 > 1), v99 + 1, 1, v96);
    }

    v96[2] = v99 + 1;
    sub_23D7CD4AC(v93, v96 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v99);
    *(v121 + v94) = v96;
    swift_endAccess();
    sub_23D7CD3E4(v114, type metadata accessor for AXRArticle);
  }

  else
  {
    sub_23D7CD3E4(v20, type metadata accessor for AXRArticle);
  }
}

uint64_t sub_23D7BD6E0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v37 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = sub_23D80D6CC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v42 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = v37 - v14;
  v15 = sub_23D7B78B0();
  v41 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v15;
  v17 = v0;
  sub_23D80DA1C();
  v18 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v15, 0);
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  v40 = ObjectType;
  swift_getKeyPath();
  v46 = v19;
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v20 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v19 + v20, v9, &qword_27E2E43F8, &qword_23D811650);
  v21 = v19;
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {

    sub_23D790730(v9, &qword_27E2E43F8, &qword_23D811650);
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v44);

    v23 = v44[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v44[0] = v23;
    v17;
    sub_23D80DA1C();
    sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager, &protocol conformance descriptor for AXRBlockManager);
    sub_23D80D9AC();
    sub_23D80D9BC();
  }

  v37[2] = v21;
  v38 = v11;
  v37[0] = *(v11 + 32);
  v37[1] = v11 + 32;
  (v37[0])(v43, v9, v10);
  v25 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v41, 0);
  v26 = v10;
  if (!v25)
  {
LABEL_9:
    v29 = sub_23D7CC51C();
    if (v29)
    {
      v30 = v29;
      swift_getKeyPath();
      v44[0] = v30;
      sub_23D80D6FC();

      v31 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
      swift_beginAccess();
      v7 = v39;
      sub_23D790648(v30 + v31, v39, &qword_27E2E43F8, &qword_23D811650);

      if (v22(v7, 1, v10) != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v39;
      (*(v38 + 56))(v39, 1, 1, v10);
    }

    sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v45);

    v36 = v45;
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v36;
    v17;
    sub_23D80DA1C();
    sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager, &protocol conformance descriptor for AXRBlockManager);
    sub_23D80D9AC();
    sub_23D80D9BC();

    return (*(v38 + 8))(v43, v26);
  }

  v27 = v25;
  swift_getKeyPath();
  v44[0] = v27;
  sub_23D80D6FC();

  v28 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v27 + v28, v7, &qword_27E2E43F8, &qword_23D811650);

  if (v22(v7, 1, v10) == 1)
  {
    sub_23D790730(v7, &qword_27E2E43F8, &qword_23D811650);
    goto LABEL_9;
  }

LABEL_11:
  (v37[0])(v42, v7, v10);
  v32 = sub_23D80D6DC();
  sub_23D80D6DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v45);

  v33 = *(v45 + 16);

  if (v32 < v33)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v45);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v45);

  v34 = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v34;
  v17;
  sub_23D80DA1C();
  sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager, &protocol conformance descriptor for AXRBlockManager);
  sub_23D80D9AC();
  sub_23D80D9BC();

  v35 = *(v38 + 8);
  v35(v42, v26);
  return (v35)(v43, v26);
}

id AXRBlockManager.init(document:withPlaybackSpeed:preferredLanguage:)(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v113 = a3;
  v114 = a4;
  v111 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v89 - v7;
  v105 = type metadata accessor for AXRArticle(0);
  MEMORY[0x28223BE20](v105);
  v116 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x28223BE20](v9);
  v108 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v106 = *(v11 - 8);
  v107 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v89 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v89 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v89 - v14;
  v15 = sub_23D80D6CC();
  v16 = *(v15 - 8);
  v118 = v15;
  v119 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v89 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v93 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v92 = &v89 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v89 - v26;
  v98 = *a2;
  v97 = *(a2 + 4);
  v28 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v4[v28] = sub_23D7B58C0(v25, v29);
  v30 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v30 = 0;
  v30[1] = 0;
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v31 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v32 = MEMORY[0x277D84F90];
  *&v121 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v33 = *(v24 + 32);
  v33(&v4[v31], v27, v23);
  v34 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v34 = 0;
  v34[8] = 1;
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v121 = v32;
  sub_23D80D9CC();
  v33(&v4[v35], v27, v23);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v121 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v90 + 32))(&v4[v36], v22, v91);
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v121 = 0;
  v38 = v92;
  sub_23D80D9CC();
  (*(v93 + 32))(&v4[v37], v38, v94);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v40 = v95;
  MEMORY[0x23EEEBFA0](&unk_284FCE378);
  v41 = v119;
  v93 = *(v119 + 16);
  v42 = v118;
  (v93)(v117, v40, v118);
  v43 = v96;
  sub_23D80D9CC();
  v44 = *(v41 + 8);
  v119 = v41 + 8;
  v94 = v44;
  v44(v40, v42);
  (*(v99 + 32))(&v4[v39], v43, v100);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v121) = 0;
  v46 = v101;
  sub_23D80D9CC();
  v47 = *(v102 + 32);
  v48 = v103;
  v47(&v4[v45], v46, v103);
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v121 = 0x4069000000000000;
  v50 = v104;
  sub_23D80D9CC();
  (*(v106 + 32))(&v4[v49], v50, v107);
  *&v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v121) = 0;
  sub_23D80D9CC();
  v52 = &v4[v51];
  v53 = v111;
  v47(v52, v46, v48);
  v54 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v121) = 3;
  v55 = v108;
  sub_23D80D9CC();
  (*(v109 + 32))(&v4[v54], v55, v110);
  v56 = &v4[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v56 = v98;
  v56[4] = v97;
  swift_beginAccess();
  v57 = v114;
  *v30 = v113;
  v30[1] = v57;

  v120.receiver = v4;
  v120.super_class = ObjectType;
  v58 = objc_msgSendSuper2(&v120, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE3B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v118;
  (v93)(v117, v40, v118);
  v60 = v58;
  sub_23D80DA1C();
  v94(v40, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v61 = (type metadata accessor for AXRTextContent(0) - 8);
  v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_23D80FB00;
  v64 = v63 + v62;
  v65 = VNDocumentObservation.text.getter();
  v67 = v66;
  v68 = sub_23D80D5BC();
  v69 = v115;
  (*(*(v68 - 8) + 56))(v115, 1, 1, v68);
  v70 = v61[15];
  *(v64 + v70) = 0;
  sub_23D80D66C();
  v71 = (v64 + v61[7]);
  *v71 = v65;
  v71[1] = v67;
  *(v64 + v61[8]) = 0;
  *(v64 + v61[11]) = 0;
  sub_23D7AF7D0(v69, v64 + v61[12], &qword_27E2E43F0, &unk_23D811FD0);
  v72 = v64 + v61[9];
  *v72 = 1;
  *(v72 + 8) = 0;
  *(v64 + v61[10]) = 0;
  *(v64 + v61[13]) = 0;
  *(v64 + v61[14]) = 0;
  v73 = *(v64 + v70);
  *(v64 + v70) = 0;
  v74 = v116;

  v75 = v105;
  v76 = *(v105 + 36);
  v77 = sub_23D80D63C();
  (*(*(v77 - 8) + 56))(v74 + v76, 1, 1, v77);
  v78 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v79 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v80 = qword_27E2E4610;
    v81 = sub_23D80DD4C();
    v82 = sub_23D80DD4C();
    v83 = [v80 localizedStringForKey:v81 value:0 table:v82];

    v79 = sub_23D80DD7C();
    v78 = v84;
  }

  sub_23D80D66C();
  v85 = (v74 + v75[5]);
  *v85 = 0;
  v85[1] = 0xE000000000000000;
  v86 = (v74 + v75[6]);
  *v86 = 0;
  v86[1] = 0xE000000000000000;
  v87 = (v74 + v75[7]);
  *v87 = v79;
  v87[1] = v78;
  *(v74 + v75[8]) = v63;
  *(v74 + v75[10]) = 0;
  *(v74 + v75[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v74, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v74, type metadata accessor for AXRArticle);
  return v60;
}

id AXRBlockManager.init(string:withPlaybackSpeed:preferredLanguage:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v110 = a4;
  v111 = a5;
  v113 = a1;
  v114 = a2;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v87 - v9;
  v107 = type metadata accessor for AXRArticle(0);
  MEMORY[0x28223BE20](v107);
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v105 = *(v11 - 8);
  v106 = v11;
  MEMORY[0x28223BE20](v11);
  v104 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13);
  v101 = &v87 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v87 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v87 - v16;
  v17 = sub_23D80D6CC();
  v18 = *(v17 - 8);
  v116 = v17;
  v117 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v92 = &v87 - v21;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v89 = &v87 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v24 = &v87 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v87 - v28;
  v95 = *a3;
  v94 = *(a3 + 4);
  v30 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v5[v30] = sub_23D7B58C0(v27, v31);
  v32 = &v5[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v32 = 0;
  v32[1] = 0;
  v5[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v33 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v34 = MEMORY[0x277D84F90];
  *&v119 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v35 = *(v26 + 32);
  v35(&v6[v33], v29, v25);
  v36 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v36 = 0;
  v36[8] = 1;
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v119 = v34;
  sub_23D80D9CC();
  v35(&v6[v37], v29, v25);
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v119 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v87 + 32))(&v6[v38], v24, v88);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v119 = 0;
  v40 = v89;
  sub_23D80D9CC();
  (*(v90 + 32))(&v6[v39], v40, v91);
  v41 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v42 = v92;
  MEMORY[0x23EEEBFA0](&unk_284FCE3E8);
  v43 = v117;
  v90 = *(v117 + 16);
  v44 = v116;
  (v90)(v115, v42, v116);
  v45 = v93;
  sub_23D80D9CC();
  v46 = *(v43 + 8);
  v117 = v43 + 8;
  v91 = v46;
  v46(v42, v44);
  (*(v96 + 32))(&v6[v41], v45, v97);
  v47 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v119) = 0;
  v48 = v98;
  sub_23D80D9CC();
  v49 = *(v99 + 32);
  v50 = v100;
  v49(&v6[v47], v48, v100);
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v119 = 0x4069000000000000;
  v52 = v101;
  sub_23D80D9CC();
  (*(v102 + 32))(&v6[v51], v52, v103);
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v53 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v119) = 0;
  sub_23D80D9CC();
  v49(&v6[v53], v48, v50);
  v54 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v119) = 3;
  v55 = v104;
  sub_23D80D9CC();
  (*(v105 + 32))(&v6[v54], v55, v106);
  v56 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v56 = v95;
  v56[4] = v94;
  swift_beginAccess();
  v57 = v111;
  *v32 = v110;
  v32[1] = v57;

  v118.receiver = v6;
  v58 = v107;
  v118.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v118, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE420);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v116;
  (v90)(v115, v42, v116);
  v61 = v108;
  v62 = v59;
  sub_23D80DA1C();
  v91(v42, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
  v63 = (type metadata accessor for AXRTextContent(0) - 8);
  v64 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_23D80FB00;
  v66 = v65 + v64;
  v67 = sub_23D80D5BC();
  v68 = v112;
  (*(*(v67 - 8) + 56))(v112, 1, 1, v67);
  v69 = v63[15];
  *(v66 + v69) = 0;
  sub_23D80D66C();
  v70 = (v66 + v63[7]);
  v71 = v114;
  *v70 = v113;
  v70[1] = v71;
  *(v66 + v63[8]) = 0;
  *(v66 + v63[11]) = 0;
  sub_23D7AF7D0(v68, v66 + v63[12], &qword_27E2E43F0, &unk_23D811FD0);
  v72 = v66 + v63[9];
  *v72 = 1;
  *(v72 + 8) = 0;
  *(v66 + v63[10]) = 0;
  *(v66 + v63[13]) = 0;
  *(v66 + v63[14]) = 0;
  v73 = *(v66 + v69);
  *(v66 + v69) = 0;

  v74 = v58[9];
  v75 = sub_23D80D63C();
  (*(*(v75 - 8) + 56))(v61 + v74, 1, 1, v75);
  v76 = 0x800000023D815CB0;
  if (qword_27E2E4228 != -1)
  {
    swift_once();
  }

  v77 = 0xD00000000000001FLL;
  if (qword_27E2E4610)
  {
    v78 = qword_27E2E4610;
    v79 = sub_23D80DD4C();
    v80 = sub_23D80DD4C();
    v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

    v77 = sub_23D80DD7C();
    v76 = v82;
  }

  sub_23D80D66C();
  v83 = (v61 + v58[5]);
  *v83 = 0;
  v83[1] = 0xE000000000000000;
  v84 = (v61 + v58[6]);
  *v84 = 0;
  v84[1] = 0xE000000000000000;
  v85 = (v61 + v58[7]);
  *v85 = v77;
  v85[1] = v76;
  *(v61 + v58[8]) = v65;
  *(v61 + v58[10]) = 0;
  *(v61 + v58[11]) = 0;
  AXRBlockManager.appendArticle(_:splitStrings:)(v61, 1);
  sub_23D7BD6E0();

  sub_23D7CD3E4(v61, type metadata accessor for AXRArticle);
  return v62;
}

_BYTE *AXRBlockManager.__allocating_init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v86 = a3;
  v87 = a6;
  v83 = a4;
  v84 = a5;
  v85 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v80 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v62 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v62 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v62 - v14;
  v15 = sub_23D80D6CC();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v62 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v65 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = objc_allocWithZone(v7);
  v70 = *a2;
  v69 = *(a2 + 4);
  v28 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v27[v28] = sub_23D7B58C0(v27, v29);
  v30 = &v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v30 = 0;
  v30[1] = 0;
  v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v31 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v32 = MEMORY[0x277D84F90];
  *&v92 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v33 = *(v24 + 32);
  v33(&v27[v31], v26, v23);
  v34 = &v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v34 = 0;
  v34[8] = 1;
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v92 = v32;
  sub_23D80D9CC();
  v33(&v27[v35], v26, v23);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v92 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v62 + 32))(&v27[v36], v22, v63);
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v92 = 0;
  v38 = v64;
  sub_23D80D9CC();
  (*(v65 + 32))(&v27[v37], v38, v66);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v40 = v67;
  MEMORY[0x23EEEBFA0](&unk_284FCE458);
  v41 = v90;
  v65 = *(v90 + 16);
  v42 = v89;
  (v65)(v88, v40, v89);
  v43 = v68;
  sub_23D80D9CC();
  v44 = *(v41 + 8);
  v90 = v41 + 8;
  v66 = v44;
  v44(v40, v42);
  (*(v72 + 32))(&v27[v39], v43, v73);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v92) = 0;
  v46 = v74;
  sub_23D80D9CC();
  v47 = *(v75 + 32);
  v48 = v76;
  v47(&v27[v45], v46, v76);
  v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v92 = 0x4069000000000000;
  v50 = v77;
  sub_23D80D9CC();
  (*(v78 + 32))(&v27[v49], v50, v79);
  *&v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v92) = 0;
  sub_23D80D9CC();
  v47(&v27[v51], v46, v48);
  v52 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v92) = 3;
  v53 = v80;
  sub_23D80D9CC();
  (*(v81 + 32))(&v27[v52], v53, v82);
  v54 = &v27[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v54 = v70;
  v54[4] = v69;
  swift_beginAccess();
  v55 = v84;
  *v30 = v83;
  v30[1] = v55;

  v91.receiver = v27;
  v91.super_class = v71;
  v56 = objc_msgSendSuper2(&v91, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE490);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v89;
  (v65)(v88, v40, v89);
  v58 = v56;
  sub_23D80DA1C();
  v66(v40, v57);
  v59 = v85;
  AXRBlockManager.appendArticle(_:splitStrings:)(v85, v86);
  v60 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  v58[v60] = v87;
  sub_23D7BD6E0();

  sub_23D7CD3E4(v59, type metadata accessor for AXRArticle);
  return v58;
}

_BYTE *AXRBlockManager.init(article:withPlaybackSpeed:splitStrings:preferredLanguage:useAXRuntimeFetch:)(uint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v86 = a3;
  v87 = a6;
  v83 = a4;
  v84 = a5;
  v85 = a1;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = &v62 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v62 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v62 - v14;
  v15 = sub_23D80D6CC();
  v16 = *(v15 - 8);
  v89 = v15;
  v90 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v62 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v65 = *(v66 - 1);
  MEMORY[0x28223BE20](v66);
  v64 = &v62 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  v70 = *a2;
  v69 = *(a2 + 4);
  v28 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v7[v28] = sub_23D7B58C0(v25, v29);
  v30 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v30 = 0;
  v30[1] = 0;
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v31 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  v32 = MEMORY[0x277D84F90];
  *&v92 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v33 = *(v24 + 32);
  v33(&v7[v31], v27, v23);
  v34 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v34 = 0;
  v34[8] = 1;
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v92 = v32;
  sub_23D80D9CC();
  v33(&v7[v35], v27, v23);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v92 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v62 + 32))(&v7[v36], v22, v63);
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v92 = 0;
  v38 = v64;
  sub_23D80D9CC();
  (*(v65 + 32))(&v7[v37], v38, v66);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v40 = v67;
  MEMORY[0x23EEEBFA0](&unk_284FCE458);
  v41 = v90;
  v65 = *(v90 + 16);
  v42 = v89;
  (v65)(v88, v40, v89);
  v43 = v68;
  sub_23D80D9CC();
  v44 = *(v41 + 8);
  v90 = v41 + 8;
  v66 = v44;
  v44(v40, v42);
  (*(v71 + 32))(&v7[v39], v43, v72);
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v92) = 0;
  v46 = v73;
  sub_23D80D9CC();
  v47 = *(v74 + 32);
  v48 = v75;
  v47(&v7[v45], v46, v75);
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v92 = 0x4069000000000000;
  v50 = v76;
  sub_23D80D9CC();
  (*(v77 + 32))(&v7[v49], v50, v78);
  *&v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v92) = 0;
  sub_23D80D9CC();
  v47(&v7[v51], v46, v48);
  v52 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v92) = 3;
  v53 = v79;
  sub_23D80D9CC();
  (*(v80 + 32))(&v7[v52], v53, v81);
  v54 = &v7[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v54 = v70;
  v54[4] = v69;
  swift_beginAccess();
  v55 = v84;
  *v30 = v83;
  v30[1] = v55;

  v91.receiver = v7;
  v91.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v91, sel_init);
  MEMORY[0x23EEEBFA0](&unk_284FCE490);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v89;
  (v65)(v88, v40, v89);
  v58 = v56;
  sub_23D80DA1C();
  v66(v40, v57);
  v59 = v85;
  AXRBlockManager.appendArticle(_:splitStrings:)(v85, v86);
  v60 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  v58[v60] = v87;
  sub_23D7BD6E0();

  sub_23D7CD3E4(v59, type metadata accessor for AXRArticle);
  return v58;
}

id AXRBlockManager.__allocating_init(articles:withPlaybackSpeed:splitStrings:preferredLanguage:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  return AXRBlockManager.init(articles:withPlaybackSpeed:splitStrings:preferredLanguage:)(a1, a2, v8, a4, a5);
}

id AXRBlockManager.init(articles:withPlaybackSpeed:splitStrings:preferredLanguage:)(uint64_t a1, int *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v90 = a4;
  v91 = a5;
  v92 = a1;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for AXRArticle(0);
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49A0, &qword_23D811A28);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  v86 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v84 = *(v14 - 8);
  v85 = v14;
  MEMORY[0x28223BE20](v14);
  v83 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x28223BE20](v16);
  v80 = &v68 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4958, &qword_23D811920);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - v18;
  v19 = sub_23D80D6CC();
  v20 = *(v19 - 8);
  v95 = v19;
  v96 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v94 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v93 = &v68 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4948, &qword_23D811910);
  v72 = *(v73 - 1);
  MEMORY[0x28223BE20](v73);
  v71 = &v68 - v24;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4930, &qword_23D8118B8);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E48F8, &qword_23D811638);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  v77 = *a2;
  v76 = *(a2 + 4);
  v32 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  *&v6[v32] = sub_23D7B58C0(v29, v33);
  v34 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  v74 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_preferredLanguage];
  *v34 = 0;
  v34[1] = 0;
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_shouldShowNowPlayingControls] = 1;
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__pages;
  *&v98 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49B8, &qword_23D811A38);
  sub_23D80D9CC();
  v36 = *(v28 + 32);
  v36(&v6[v35], v31, v27);
  v37 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v37 = 0;
  v37[8] = 1;
  v38 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visiblePages;
  *&v98 = MEMORY[0x277D84F90];
  sub_23D80D9CC();
  v36(&v6[v38], v31, v27);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkRange;
  v98 = xmmword_23D8115D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49C0, &unk_23D811A40);
  sub_23D80D9CC();
  (*(v69 + 32))(&v6[v39], v26, v70);
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__visibleChunkCharacterOffset;
  *&v98 = 0;
  v41 = v71;
  sub_23D80D9CC();
  (*(v72 + 32))(&v6[v40], v41, v73);
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__blockIndex;
  v43 = v93;
  MEMORY[0x23EEEBFA0](&unk_284FCE4C8);
  v44 = v96;
  v72 = *(v96 + 16);
  v45 = v95;
  (v72)(v94, v43, v95);
  v46 = v75;
  sub_23D80D9CC();
  v47 = *(v44 + 8);
  v96 = v44 + 8;
  v73 = v47;
  v47(v43, v45);
  (*(v78 + 32))(&v6[v42], v46, v79);
  v48 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__needsRefresh;
  LOBYTE(v98) = 0;
  v49 = v80;
  sub_23D80D9CC();
  v50 = v82;
  v51 = *(v81 + 32);
  v51(&v6[v48], v49, v82);
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch] = 1;
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_defaultWPM] = 0x4069000000000000;
  v52 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__estimatedWPM;
  *&v98 = 0x4069000000000000;
  v53 = v83;
  sub_23D80D9CC();
  (*(v84 + 32))(&v6[v52], v53, v85);
  *&v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles] = MEMORY[0x277D84F90];
  v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress] = 0;
  v54 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__nowPlayingRequestScrollPositionUpdate;
  LOBYTE(v98) = 0;
  sub_23D80D9CC();
  v51(&v6[v54], v49, v50);
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager__speechState;
  LOBYTE(v98) = 3;
  v56 = v86;
  sub_23D80D9CC();
  (*(v87 + 32))(&v6[v55], v56, v88);
  v57 = &v6[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  *v57 = v77;
  v57[4] = v76;
  v58 = v74;
  swift_beginAccess();
  v59 = v91;
  *v58 = v90;
  v58[1] = v59;

  v97.receiver = v6;
  v97.super_class = ObjectType;
  v60 = objc_msgSendSuper2(&v97, sel_init);
  v61 = v93;
  MEMORY[0x23EEEBFA0](&unk_284FCE500);
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v95;
  (v72)(v94, v61, v95);
  v63 = v60;
  sub_23D80DA1C();
  v73(v61, v62);
  v64 = *(v92 + 16);
  if (v64)
  {
    v65 = v92 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
    v66 = *(v68 + 72);
    do
    {
      sub_23D7CD444(v65, v11, type metadata accessor for AXRArticle);
      AXRBlockManager.appendArticle(_:splitStrings:)(v11, a3 & 1);
      sub_23D7CD3E4(v11, type metadata accessor for AXRArticle);
      v65 += v66;
      --v64;
    }

    while (v64);
  }

  sub_23D7BD6E0();

  return v63;
}

uint64_t AXRBlockManager.updateContent(article:splitStrings:)(uint64_t a1, int a2)
{
  LODWORD(v35) = a2;
  v34 = a1;
  v36 = sub_23D80D6CC();
  v3 = *(v36 - 8);
  v4 = MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_23D80DF8C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_23D80DF6C();
  v13 = v2;
  v14 = sub_23D80DF5C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_23D7C2104(0, 0, v11, &unk_23D811A70, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  v38[0] = 3;
  v17 = v13;
  sub_23D80DA1C();
  sub_23D7BB288();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = sub_23D80D9FC();
  v19 = MEMORY[0x277D84F90];
  *v20 = MEMORY[0x277D84F90];

  v18(v38, 0);

  v21 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  swift_beginAccess();
  *&v17[v21] = v19;

  AXRBlockManager.appendArticle(_:splitStrings:)(v34, v35);
  MEMORY[0x23EEEBFA0](&unk_284FCE538);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v36;
  (*(v3 + 16))(v6, v8, v36);
  v23 = v17;
  sub_23D80DA1C();
  (*(v3 + 8))(v8, v22);
  AXRBlockManager.currentBlock.getter();
  sub_23D7D8A48();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v37);

  v24 = sub_23D7B7534(v37[0]);

  v35 = v23;
  if (v24 >> 62)
  {
LABEL_17:
    v25 = sub_23D80E31C();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v27 = 0;
  while (v25 != v26)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23EEECB80](v26, v24);
      if (__OFADD__(v26, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v28 = *(v24 + 8 * v26 + 32);

      if (__OFADD__(v26, 1))
      {
        goto LABEL_13;
      }
    }

    swift_getKeyPath();
    v37[3] = v28;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v29 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v30 = *(v28 + v29);

    ++v26;
    v31 = __OFADD__(v27, v30);
    v27 += v30;
    if (v31)
    {
      goto LABEL_16;
    }
  }

  v32 = &v35[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
  *v32 = v27;
  v32[8] = 0;
  return sub_23D7BD6E0();
}

uint64_t sub_23D7C1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C1E5C, v6, v5);
}

uint64_t sub_23D7C1E5C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_23D7C1F64;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23D7C1F64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7C20A4, v4, v3);
}

uint64_t sub_23D7C20A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D7C2104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23D790648(a3, v25 - v10, &qword_27E2E4550, &qword_23D810160);
  v12 = sub_23D80DF8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D790730(v11, &qword_27E2E4550, &qword_23D810160);
  }

  else
  {
    sub_23D80DF7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D80DF3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23D80DD8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D790730(a3, &qword_27E2E4550, &qword_23D810160);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id AXRBlockManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AXRBlockManager.speak(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_23D80DF8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23D80DF6C();
  v7 = v1;
  v8 = sub_23D80DF5C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v7;
  *(v9 + 40) = a1;
  sub_23D7C2104(0, 0, v5, &unk_23D811A80, v9);
}

uint64_t sub_23D7C2834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 374) = a5;
  *(v5 + 64) = a4;
  v6 = sub_23D80D7FC();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A48, &qword_23D811E58);
  *(v5 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A50, &qword_23D811E60);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A58, &qword_23D811E68);
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v9 = sub_23D80D85C();
  *(v5 + 160) = v9;
  *(v5 + 168) = *(v9 - 8);
  *(v5 + 176) = swift_task_alloc();
  v10 = sub_23D80D7CC();
  *(v5 + 184) = v10;
  *(v5 + 192) = *(v10 - 8);
  *(v5 + 200) = swift_task_alloc();
  v11 = sub_23D80D7BC();
  *(v5 + 208) = v11;
  *(v5 + 216) = *(v11 - 8);
  *(v5 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A60, &qword_23D811E70);
  *(v5 + 232) = swift_task_alloc();
  v12 = sub_23D80D87C();
  *(v5 + 240) = v12;
  *(v5 + 248) = *(v12 - 8);
  *(v5 + 256) = swift_task_alloc();
  v13 = sub_23D80D6CC();
  *(v5 + 264) = v13;
  *(v5 + 272) = *(v13 - 8);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = sub_23D80DF6C();
  *(v5 + 296) = sub_23D80DF5C();
  v15 = sub_23D80DF3C();
  *(v5 + 304) = v15;
  *(v5 + 312) = v14;

  return MEMORY[0x2822009F8](sub_23D7C2C48, v15, v14);
}

uint64_t sub_23D7C2C48()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v1);

  v4 = sub_23D80D6DC();
  v5 = *(v2 + 8);
  v5(v1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C((v0 + 40));

  v6 = *(*(v0 + 40) + 16);

  if (v4 >= v6)
  {

    goto LABEL_12;
  }

  v7 = *(v0 + 280);
  v8 = *(v0 + 264);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v7);

  v9 = sub_23D80D6DC();
  v5(v7, v8);
  v10 = AXRBlockManager.pageContentAtIndex(_:)(v4);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x23EEECB80](v9, v10);
    goto LABEL_6;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
  }

  v41 = *(v10 + 8 * v9 + 32);

LABEL_6:
  *(v0 + 320) = v41;
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v38 = *(v0 + 208);
  v39 = *(v0 + 200);
  v19 = *(v0 + 374);
  v20 = *(v0 + 64);
  v40 = *(v0 + 184);

  v21 = sub_23D80D80C();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  *(v22 + 24) = v41;
  *(v22 + 32) = v20;
  (*(v17 + 104))(v15, *MEMORY[0x277D70198], v38);
  (*(v18 + 104))(v39, *MEMORY[0x277D701A0], v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A68, &qword_23D811E78);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23D8115E0;
  sub_23D80D84C();
  sub_23D80D83C();
  sub_23D80D82C();
  *(v0 + 48) = v23;
  sub_23D7CE978(&qword_27E2E4A70, MEMORY[0x277D70340], MEMORY[0x277D70348]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A78, &qword_23D811E80);
  sub_23D7CE9C0(&qword_27E2E4A80, &qword_27E2E4A78, &qword_23D811E80, MEMORY[0x277D83970]);
  sub_23D80E1DC();
  sub_23D80D86C();

  v24 = *(v20 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v25 = *(v0 + 256);
  if (v24)
  {
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = v24;
    sub_23D80D81C();

    (*(v29 + 32))(v26, v27, v28);
    sub_23D80DFAC();
    *(v0 + 328) = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
    swift_beginAccess();
    v31 = MEMORY[0x277D701E8];
    *(v0 + 352) = *MEMORY[0x277D701F0];
    *(v0 + 356) = *v31;
    *(v0 + 360) = *MEMORY[0x277D701D8];
    *(v0 + 364) = *MEMORY[0x277D701E0];
    v32 = sub_23D80DF5C();
    *(v0 + 336) = v32;
    v33 = swift_task_alloc();
    *(v0 + 344) = v33;
    *v33 = v0;
    v33[1] = sub_23D7C32A4;
    v10 = *(v0 + 96);
    v13 = *(v0 + 104);
    v12 = MEMORY[0x277D85700];
    v14 = v0 + 56;
    v11 = v32;

    return MEMORY[0x2822005A8](v10, v11, v12, v13, v14);
  }

  v34 = *(v0 + 240);
  v35 = *(v0 + 248);

  (*(v35 + 8))(v25, v34);
LABEL_12:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_23D7C32A4()
{
  v2 = *v1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_23D7C39A4;
  }

  else
  {
    v5 = sub_23D7C33C4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23D7C33C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 248);
    v30 = *(v0 + 256);
    v5 = *(v0 + 240);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v30, v5);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 352);
  v15 = *(v0 + 88);
  (*(v3 + 32))(v15, v1, v2);
  v16 = (*(v3 + 88))(v15, v2);
  if (v16 == v14)
  {
    v17 = *(v0 + 88);
    (*(*(v0 + 80) + 96))(v17, *(v0 + 72));
    v18 = *v17;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C((v0 + 368));

    if (*(v0 + 368) == 2)
    {
    }

    else
    {
      v21 = sub_23D80E4DC();

      if ((v21 & 1) == 0)
      {
        if (v18 && (*(*(v0 + 64) + *(v0 + 328)) & 1) == 0)
        {
          sub_23D7D8A48();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C((v0 + 369));

          if (*(v0 + 369) <= 1u || *(v0 + 369) == 2)
          {
            v24 = sub_23D80E4DC();

            if ((v24 & 1) == 0)
            {
              _s23AccessibilityReaderData15AXRBlockManagerC4nextyySbF_0();
            }
          }

          else
          {
          }
        }

        goto LABEL_27;
      }
    }

    v22 = *(v0 + 64);
    sub_23D7D8A48();
    AXRBlockManager.reset(_:)(0);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 370) = 3;
    v22;
    sub_23D80DA1C();
    sub_23D7BB288();
LABEL_27:
    *(*(v0 + 64) + *(v0 + 328)) = 0;
    goto LABEL_28;
  }

  if (v16 == *(v0 + 356))
  {
    v19 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 373) = 0;
    v19;
  }

  else if (v16 == *(v0 + 360))
  {
    v20 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 372) = 1;
    v20;
  }

  else
  {
    if (v16 != *(v0 + 364))
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
      goto LABEL_28;
    }

    v23 = *(v0 + 64);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 371) = 0;
    v23;
  }

  sub_23D80DA1C();
  sub_23D7BB288();
LABEL_28:
  v25 = sub_23D80DF5C();
  *(v0 + 336) = v25;
  v26 = swift_task_alloc();
  *(v0 + 344) = v26;
  *v26 = v0;
  v26[1] = sub_23D7C32A4;
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v29 = MEMORY[0x277D85700];

  return MEMORY[0x2822005A8](v27, v25, v29, v28, v0 + 56);
}

uint64_t sub_23D7C39A4()
{
  v1 = *(v0 + 248);
  v11 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v11, v2);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23D7C3B1C(char a1, uint64_t a2)
{
  v6 = sub_23D80D6CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_getKeyPath();
    *&v27[0] = a2;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v10 = a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    swift_beginAccess();
    if (*(v10 + 16) == 1)
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_23D80D8EC();
      sub_23D790730(v27, &qword_27E2E4A88, &qword_23D811E88);
    }

    else
    {
      sub_23D7D7ED0(*v10, *(v10 + 8), v26);
      sub_23D80D8AC();
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_23D80D8AC();
      sub_23D7CEA08(v25, v24);
      sub_23D80D8EC();
      sub_23D790730(v24, &qword_27E2E4A88, &qword_23D811E88);
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    sub_23D80D8AC();
    sub_23D80D8AC();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v9);

    v11 = sub_23D80D6AC();
    v12 = *(v7 + 8);
    v13 = v12(v9, v6);
    if (v11 < 3)
    {
      sub_23D7D7664(v13, v14, v26);
      sub_23D80D8AC();
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_23D80D8AC();
      sub_23D80D8AC();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v9);

      v15 = sub_23D80D6DC();
      v12(v9, v6);
      swift_getKeyPath();
      *&v27[0] = a2;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6FC();

      swift_beginAccess();

      v16 = sub_23D80E04C();
      v18 = v17;
      v20 = v19;

      if (!v15 || (v20 & 1) != 0)
      {
        sub_23D7D7664(v21, v22, v27);
        sub_23D80D8AC();
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_23D80D8AC();
        sub_23D80D8AC();
      }

      else
      {
        sub_23D7D7ED0(v16, v18, v27);
        sub_23D80D8AC();
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_23D80D8AC();
        sub_23D80D8AC();
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_23D80D8AC();
      sub_23D80D8AC();
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_23D80D8AC();
    sub_23D80D8AC();
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_23D80D8AC();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

Swift::Void __swiftcall AXRBlockManager.reset(_:)(Swift::Bool a1)
{
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20[-v11];
  v13 = sub_23D80DF8C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_23D80DF6C();
  v14 = v1;
  v15 = sub_23D80DF5C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  sub_23D7C2104(0, 0, v12, &unk_23D811A90, v16);

  swift_getKeyPath();
  swift_getKeyPath();
  v20[15] = 3;
  v18 = v14;
  sub_23D80DA1C();
  sub_23D7BB288();
  AXRBlockManager.currentBlock.getter();
  sub_23D7D8A48();

  if (!a1)
  {
    MEMORY[0x23EEEBFA0](&unk_284FCE568);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v4 + 16))(v7, v9, v3);
    v19 = v18;
    sub_23D80DA1C();
    (*(v4 + 8))(v9, v3);
  }

  if (qword_27E2E4250 != -1)
  {
    swift_once();
  }

  sub_23D80B3A4();
}

uint64_t AXRBlockManager.activateAudioSession()(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v4 = sub_23D80D97C();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_23D80DF6C();
  v3[15] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C4430, v6, v5);
}

uint64_t sub_23D7C4430()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];

  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v3)
  {
    v4 = v3;
    v5 = sub_23D80D7DC();

    v6 = *MEMORY[0x277CB8030];
    v0[8] = 0;
    v7 = [v5 setCategory:v6 error:v0 + 8];

    v8 = v0[8];
    if (!v7)
    {
      goto LABEL_6;
    }

    v9 = *(v1 + v2);
    v10 = v8;
    if (!v9)
    {
      goto LABEL_11;
    }

    v11 = v9;
    v12 = sub_23D80D7DC();

    v0[10] = 0;
    v13 = [v12 setActive:1 error:v0 + 10];

    v8 = v0[10];
    if (v13)
    {
      v14 = v8;
    }

    else
    {
LABEL_6:
      v15 = v8;
      v16 = sub_23D80D5DC();

      swift_willThrow();
      if (qword_27E2E4248 != -1)
      {
        swift_once();
      }

      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[12];
      v20 = __swift_project_value_buffer(v19, qword_27E2E5348);
      swift_beginAccess();
      (*(v18 + 16))(v17, v20, v19);
      v21 = v16;
      v22 = sub_23D80D95C();
      v23 = sub_23D80E07C();

      v24 = os_log_type_enabled(v22, v23);
      v26 = v0[13];
      v25 = v0[14];
      v27 = v0[12];
      if (v24)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = sub_23D80E51C();
        v32 = sub_23D79FD34(v30, v31, v35);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_23D78A000, v22, v23, "Failed to activate audio session: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x23EEED790](v29, -1, -1);
        MEMORY[0x23EEED790](v28, -1, -1);

        (*(v26 + 8))(v25, v27);
      }

      else
      {

        (*(v26 + 8))(v25, v27);
      }
    }
  }

LABEL_11:

  v33 = v0[1];

  return v33();
}

uint64_t AXRBlockManager.deactivateAudioSession()(uint64_t a1, uint64_t a2)
{
  v3[10] = v2;
  v4 = sub_23D80D97C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_23D80DF6C();
  v3[14] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C4884, v6, v5);
}

uint64_t sub_23D7C4884()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = v0[10];

  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v2)
  {
    v3 = v2;
    v4 = sub_23D80D7DC();

    v0[8] = 0;
    v5 = [v4 setActive:0 withOptions:1 error:v0 + 8];

    v6 = v0[8];
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v8 = v6;
      v9 = sub_23D80D5DC();

      swift_willThrow();
      if (qword_27E2E4248 != -1)
      {
        swift_once();
      }

      v11 = v0[12];
      v10 = v0[13];
      v12 = v0[11];
      v13 = __swift_project_value_buffer(v12, qword_27E2E5348);
      swift_beginAccess();
      (*(v11 + 16))(v10, v13, v12);
      v14 = v9;
      v15 = sub_23D80D95C();
      v16 = sub_23D80E07C();

      v17 = os_log_type_enabled(v15, v16);
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[11];
      if (v17)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v28[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = sub_23D80E51C();
        v25 = sub_23D79FD34(v23, v24, v28);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_23D78A000, v15, v16, "Failed to deactivate audio session: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x23EEED790](v22, -1, -1);
        MEMORY[0x23EEED790](v21, -1, -1);

        (*(v19 + 8))(v18, v20);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
      }
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_23D7C4B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v4[3] = swift_task_alloc();
  v4[4] = sub_23D80DF6C();
  v4[5] = sub_23D80DF5C();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_23D7C4C68;

  return AXRBlockManager.activateAudioSession()(v5, v6);
}

uint64_t sub_23D7C4C68()
{

  v1 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C4DA4, v1, v0);
}

uint64_t sub_23D7C4DA4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_23D80DF8C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_23D80DF5C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0;
  sub_23D7C2104(0, 0, v1, &unk_23D811E50, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23D7C4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  v4[3] = swift_task_alloc();
  v4[4] = sub_23D80DF6C();
  v4[5] = sub_23D80DF5C();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_23D7C4FC4;

  return AXRBlockManager.activateAudioSession()(v5, v6);
}

uint64_t sub_23D7C4FC4()
{

  v1 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7C5100, v1, v0);
}

uint64_t sub_23D7C5100()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v2)
  {
    v3 = v2;
    if ([v3 isPaused])
    {
      v4 = *(v0 + 24);
      v5 = *(v0 + 16);
      v6 = sub_23D80DF8C();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = v5;
      v8 = sub_23D80DF5C();
      v9 = swift_allocObject();
      v10 = MEMORY[0x277D85700];
      *(v9 + 16) = v8;
      *(v9 + 24) = v10;
      *(v9 + 32) = v7;
      *(v9 + 40) = 1;
      sub_23D7C2104(0, 0, v4, &unk_23D811E48, v9);
    }

    v11 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 56) = 0;
    v11;
    sub_23D80DA1C();
    sub_23D7BB288();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23D7C52C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_23D80DF8C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23D80DF6C();
  v8 = v2;
  v9 = sub_23D80DF5C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_23D7C2104(0, 0, v6, a2, v10);
}

uint64_t sub_23D7C53E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C547C, v6, v5);
}

uint64_t sub_23D7C547C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v6 = (*MEMORY[0x277D70318] + MEMORY[0x277D70318]);
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_23D7C55B4;

    return v6();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_23D7C570C;

    return AXRBlockManager.deactivateAudioSession()(v4, v5);
  }
}

uint64_t sub_23D7C55B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_23D7C570C;

  return AXRBlockManager.deactivateAudioSession()(v4, v5);
}

uint64_t sub_23D7C570C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7C582C, v3, v2);
}

uint64_t sub_23D7C582C()
{
  v1 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;
  v1;
  sub_23D80DA1C();
  sub_23D7BB288();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D7C58E4()
{
  v1 = AXRBlockManager.cumulativeCharacterCount(upTo:)();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v9);

  v3 = floor(v1 / (v9 * 5.0 / 60.0) / 7200.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v9);

  if (*&v9 > v4 || v10 <= v4)
  {
    result = AXRBlockManager.totalVisibleChunks.getter();
    v6 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      if (v6 >= v4)
      {
        v6 = v4;
      }

      v7 = v6 & ~(v6 >> 63);
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = *&v7;
      v10 = v7 + 1;
      v8 = v0;
      sub_23D80DA1C();
      return sub_23D7BD6E0();
    }

LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_23D80D6CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v55 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - v15);
  result = sub_23D80D6AC();
  if (result >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v9;
    sub_23D80DA0C(v16);

    v18 = sub_23D80D6AC();
    v52 = *(v53 + 8);
    result = (v52)(v16, v8);
    if (v18 >= 2)
    {
      v19 = sub_23D80D6DC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v16);

      v20 = sub_23D80D6DC();
      v52(v16, v8);
      if (v19 != v20 || (v21 = sub_23D80D6DC(), swift_getKeyPath(), swift_getKeyPath(), sub_23D80DA0C(v16), , , v22 = sub_23D80D6DC(), v52(v16, v8), v21 != v22))
      {
        AXRBlockManager.currentBlock.getter();
        sub_23D7D8A48();
      }

      v23 = sub_23D80D6DC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v56);

      v24 = *(v56[0] + 16);

      if (v24 >= v23)
      {
        v25 = sub_23D80D6DC();
        v26 = AXRBlockManager.pageContentAtIndex(_:)(v23);
        if (v23 < 0)
        {
        }

        if (v25 < 0)
        {
        }

        v50 = v25;
        v51 = v26;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v56);

        v27 = *(v56[0] + 16);

        if (v23 >= v27)
        {
        }

        v28 = v51 >> 62 ? sub_23D80E31C() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v50;

        if (v29 < v28)
        {
          v30 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
          swift_beginAccess();
          v51 = v30;
          v3[v30] = 1;
          v50 = sub_23D80D6DC();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(v16);

          v31 = sub_23D80D6DC();
          v32 = v52;
          v52(v16, v8);
          if (v50 == v31)
          {
            v50 = sub_23D80D6DC();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23D80DA0C(v16);

            v33 = sub_23D80D6DC();
            v32(v16, v8);
            v34 = 0;
            if (v54)
            {
              v35 = v50 == v33;
              v36 = v55;
              v37 = v53;
              if (!v35)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v36 = v55;
              v37 = v53;
            }
          }

          else
          {
            v36 = v55;
            v37 = v53;
            if (v54)
            {
LABEL_20:
              v34 = 1;
              goto LABEL_23;
            }

            v34 = 0;
          }

LABEL_23:
          v3[v51] = v34;
          v53 = *(v37 + 16);
          (v53)(v36, a1, v8);
          if (v54)
          {
            AXRBlockManager.resetCharacterIndex(of:)(a1, v16);
            v52(v36, v8);
            (*(v37 + 32))(v36, v16, v8);
            if (AXRBlockManager.blockAtIndexPath(_:)())
            {
              sub_23D7D8A48();
            }
          }

          v38 = v36;
          v39 = v53;
          (v53)(v16, v38, v8);
          swift_getKeyPath();
          swift_getKeyPath();
          v39(v12, v16, v8);
          v40 = v3;
          sub_23D80DA1C();
          v41 = v52;
          v52(v16, v8);
          v42 = sub_23D80DF8C();
          (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
          sub_23D80DF6C();
          v43 = v40;
          v44 = sub_23D80DF5C();
          v45 = swift_allocObject();
          v46 = MEMORY[0x277D85700];
          *(v45 + 16) = v44;
          *(v45 + 24) = v46;
          *(v45 + 32) = v43;
          *(v45 + 40) = 0;
          sub_23D7C2104(0, 0, v7, &unk_23D811AD8, v45);

          if (AXIsInternalInstall())
          {
            v47 = sub_23D80DD4C();
            v48 = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(v48, v47, 0, 0, 1u);
          }

          return v41(v55, v8);
        }
      }
    }
  }

  return result;
}

void sub_23D7C6284()
{
  v1 = sub_23D80D6CC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = 3;
  v8 = v0;
  sub_23D80DA1C();
  sub_23D7BB288();
  MEMORY[0x23EEEBFA0](&unk_284FCE598);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v2 + 16))(v5, v7, v1);
  v9 = v8;
  sub_23D80DA1C();
  (*(v2 + 8))(v7, v1);
  if (AXIsInternalInstall())
  {
    v10 = sub_23D80DD4C();
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v11, v10, 0, 0, 1u);
  }
}

Swift::Void __swiftcall AXRBlockManager.prev()()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v3);

  v4 = sub_23D80D6DC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v15);

  v6 = *(v15 + 16);

  if (v4 < v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v3);

    v7 = sub_23D80D6DC();
    v5(v3, v0);
    v8 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(&v15);

        v12 = *(v15 + 16);

        if (v4 >= v12)
        {
          sub_23D7C6284();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_23D80FAF0;
          *(v13 + 32) = v4;
          *(v13 + 40) = v8;
          MEMORY[0x23EEEBFA0]();
          sub_23D7C58E4();
          AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v3, 1);
          v5(v3, v0);
        }

        return;
      }

      if (!__OFSUB__(v4--, 1))
      {
        if (v4 < 0)
        {
          return;
        }

        v10 = AXRBlockManager.pageContentAtIndex(_:)(v4);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_8;
        }

LABEL_15:
        v11 = sub_23D80E31C();
LABEL_8:

        v8 = v11 - 1;
        if (__OFSUB__(v11, 1))
        {
          __break(1u);
          return;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

Swift::Void __swiftcall AXRBlockManager.sendAutomationNotification(_:)(AccessibilityReaderData::AXRAutomationNotification a1)
{
  if (AXIsInternalInstall())
  {
    v1 = sub_23D80DD4C();

    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v2, v1, 0, 0, 1u);
  }
}

uint64_t AXRBlockManager.resetCharacterIndex(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D80D6AC();
  v5 = sub_23D80D6CC();
  if (v4 >= 3)
  {
    sub_23D7CE978(&qword_27E2E49D0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B30]);
    v6 = sub_23D80E01C();
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = v6;
      v17 = MEMORY[0x277D84F90];
      sub_23D795418(0, v6 & ~(v6 >> 63), 0);
      v7 = v17;
      result = sub_23D80E00C();
      if (v8 < 0)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      do
      {
        v10 = sub_23D80E03C();
        v12 = *v11;
        v10(v16, 0);
        v17 = v7;
        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          sub_23D795418((v13 > 1), v14 + 1, 1);
          v7 = v17;
        }

        v7[2] = v14 + 1;
        v7[v14 + 4] = v12;
        sub_23D80E02C();
        --v8;
      }

      while (v8);
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23D7CD068(v7);
      v7 = result;
    }

    if (v7[2] >= 3uLL)
    {
      v7[6] = 0;
      return MEMORY[0x23EEEBFD0](v7);
    }

    __break(1u);
    goto LABEL_16;
  }

  v15 = *(*(v5 - 8) + 16);

  return v15(a2, a1, v5);
}

unint64_t AXRBlockManager.resetSelectedTextRange(of:)()
{
  result = AXRBlockManager.blockAtIndexPath(_:)();
  if (result)
  {
    sub_23D7D8A48();
  }

  return result;
}

uint64_t sub_23D7C6ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23D80DF6C();
  v4[3] = sub_23D80DF5C();
  v6 = sub_23D80DF3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23D7C6B74, v6, v5);
}

uint64_t sub_23D7C6B74()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  v0[6] = v1;
  if (v1)
  {
    v5 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v1;
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_23D7C6C7C;

    return v5();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23D7C6C7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23D7CECC4, v4, v3);
}

Swift::Bool __swiftcall AXRBlockManager.isSpeaking()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  if (v4 > 1u || v4)
  {
    v2 = sub_23D80E4DC();

    if (v2)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
      if (v1)
      {
        LOBYTE(v1) = [v1 isSpeaking];
      }
    }
  }

  else
  {

    LOBYTE(v1) = 1;
  }

  return v1;
}

Swift::Bool __swiftcall AXRBlockManager.isPaused()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  if (v4 <= 1u && v4)
  {

    goto LABEL_7;
  }

  v1 = sub_23D80E4DC();

  if (v1)
  {
LABEL_7:
    LOBYTE(v2) = 1;
    return v2;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v2)
  {
    LOBYTE(v2) = [v2 isPaused];
  }

  return v2;
}

void AXRBlockManager.updateSpeed(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v46 - v4;
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = &v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 4) = v6;
  sub_23D7B9E80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v74);

  v8 = v74[0];
  v68 = *(v74[0] + 16);
  if (v68)
  {
    v47 = v1;
    v9 = 0;
    v67 = v74[0] + 32;
    if (LODWORD(v5) > 0xF)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (LODWORD(v5) == 15)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    v64 = v11;
    v65 = v10;
    if (LODWORD(v5) == 14)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    if (LODWORD(v5) == 13)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }

    v62 = v13;
    v63 = v12;
    if (LODWORD(v5) == 12)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    if (LODWORD(v5) == 11)
    {
      v15 = v6;
    }

    else
    {
      v15 = 0;
    }

    v60 = v15;
    v61 = v14;
    if (LODWORD(v5) == 10)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0;
    }

    if (LODWORD(v5) == 9)
    {
      v17 = v6;
    }

    else
    {
      v17 = 0;
    }

    v58 = v17;
    v59 = v16;
    if (LODWORD(v5) == 8)
    {
      v18 = v6;
    }

    else
    {
      v18 = 0;
    }

    v57 = v18;
    if (LODWORD(v5) == 7)
    {
      v19 = v6;
    }

    else
    {
      v19 = 0;
    }

    v56 = v19;
    if (LODWORD(v5) == 6)
    {
      v20 = v6;
    }

    else
    {
      v20 = 0;
    }

    v55 = v20;
    if (LODWORD(v5) == 5)
    {
      v21 = v6;
    }

    else
    {
      v21 = 0;
    }

    v54 = v21;
    if (LODWORD(v5) == 4)
    {
      v22 = v6;
    }

    else
    {
      v22 = 0;
    }

    v53 = v22;
    if (LODWORD(v5) == 3)
    {
      v23 = v6;
    }

    else
    {
      v23 = 0;
    }

    v52 = v23;
    if (LODWORD(v5) == 2)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0;
    }

    v51 = v24;
    if (LODWORD(v5) == 1)
    {
      v25 = v6;
    }

    else
    {
      v25 = 0;
    }

    v50 = v25;
    if (v5 == 0.0)
    {
      v26 = v6;
    }

    else
    {
      v26 = 0;
    }

    v49 = v26;
    v66 = v74[0];
    while (v9 < *(v8 + 16))
    {
      v27 = *(v67 + 8 * v9);
      if (!(v27 >> 62))
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }

      v36 = v8;
      v28 = sub_23D80E31C();
      v8 = v36;
      if (v28)
      {
LABEL_59:
        if (v28 >= 1)
        {
          v69 = v9;
          v29 = v27 & 0xC000000000000001;

          v30 = 0;
          v70 = v27 & 0xC000000000000001;
          v71 = v27;
          while (1)
          {
            if (v29)
            {
              v31 = MEMORY[0x23EEECB80](v30, v27);
            }

            else
            {
              v31 = *(v27 + 8 * v30 + 32);
            }

            v32 = v31 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
            swift_beginAccess();
            if (*(v32 + 4) == 1)
            {
              switch(*v32)
              {
                case 1:
                  v33 = &v76;
                  break;
                case 2:
                  v33 = &v76 + 4;
                  break;
                case 3:
                  v33 = &v77;
                  break;
                case 4:
                  v33 = &v77 + 4;
                  break;
                case 5:
                  v33 = &v78;
                  break;
                case 6:
                  v33 = &v78 + 4;
                  break;
                case 7:
                  v33 = &v79;
                  break;
                case 8:
                  v33 = &v79 + 4;
                  break;
                case 9:
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xA:
                  if ((v59 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xB:
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xC:
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xD:
                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xE:
                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0xF:
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                case 0x10:
                  if (!v65)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_61;
                default:
                  v33 = &v75 + 4;
                  break;
              }

              if ((*(v33 - 64) & 1) == 0)
              {
LABEL_99:
                KeyPath = swift_getKeyPath();
                v72 = &v46;
                MEMORY[0x28223BE20](KeyPath);
                *(&v46 - 2) = v31;
                *(&v46 - 2) = v5;
                *(&v46 - 4) = v6;
                v73 = v31;
                sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
                sub_23D80D6EC();

                v29 = v70;

                v27 = v71;
                goto LABEL_62;
              }
            }

            else
            {
              if (*v32 == v5)
              {
                v34 = v6;
              }

              else
              {
                v34 = 1;
              }

              if (v34)
              {
                goto LABEL_99;
              }
            }

LABEL_61:
            *v32 = v5;
            *(v32 + 4) = v6;

LABEL_62:
            if (v28 == ++v30)
            {

              v8 = v66;
              v9 = v69;
              goto LABEL_55;
            }
          }
        }

LABEL_114:
        __break(1u);
LABEL_115:
        swift_once();
        goto LABEL_109;
      }

LABEL_55:
      if (++v9 == v68)
      {

        v1 = v47;
        goto LABEL_104;
      }
    }

    __break(1u);
    goto LABEL_114;
  }

LABEL_104:
  v37 = *&v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth];
  if (v37)
  {
    v38 = v37;
    if ([v38 isSpeaking])
    {
      v39 = sub_23D80DF8C();
      v40 = v48;
      (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
      sub_23D80DF6C();
      v41 = v1;
      v42 = sub_23D80DF5C();
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D85700];
      *(v43 + 16) = v42;
      *(v43 + 24) = v44;
      *(v43 + 32) = v41;
      *(v43 + 40) = 1;
      sub_23D7C2104(0, 0, v40, &unk_23D811B08, v43);
    }
  }

  if (qword_27E2E4250 != -1)
  {
    goto LABEL_115;
  }

LABEL_109:
  if (v6)
  {
    v45 = dbl_23D811EA8[SLODWORD(v5)];
  }

  else
  {
    v45 = v5;
  }

  sub_23D80B1C0(v45);
}

id AXRBlockManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23D7C7740@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_23D80D9AC();
  *a2 = result;
  return result;
}

uint64_t sub_23D7C7780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D80E25C();
  *a1 = result;
  return result;
}

uint64_t AXRBlockManager.insertArticle(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v69 - v6;
  v7 = type metadata accessor for AXRTextContent(0);
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23D80D6CC();
  v76 = *(v81 - 8);
  v9 = MEMORY[0x28223BE20](v81);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v72 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E49D8, &qword_23D811B10);
  MEMORY[0x28223BE20](v14 - 8);
  *&v79 = &v69 - v15;
  v16 = type metadata accessor for AXRArticle(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(a1 + *(v17 + 32));

  _s23AccessibilityReaderData14AXRTextContentV25clearIntermediateElements2inySayACGz_tFZ_0(&v86);
  v20 = (a1 + v16[5]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (a1 + v16[6]);
  v24 = v23[1];
  v80 = *v23;
  v25 = v86;
  v26 = v16[9];
  v27 = sub_23D80D63C();
  (*(*(v27 - 8) + 56))(&v19[v26], 1, 1, v27);
  v28 = 0x800000023D815CB0;
  v29 = qword_27E2E4228;

  v30 = v24;

  if (v29 != -1)
  {
    swift_once();
  }

  v31 = 0xD00000000000001FLL;
  v83 = v25;
  if (qword_27E2E4610)
  {
    v32 = v19;
    v33 = v3;
    v34 = qword_27E2E4610;
    v35 = sub_23D80DD4C();
    v36 = sub_23D80DD4C();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    v31 = sub_23D80DD7C();
    v28 = v38;

    v3 = v33;
    v19 = v32;
    v25 = v83;
  }

  sub_23D80D66C();
  v39 = &v19[v16[5]];
  *v39 = v21;
  *(v39 + 1) = v22;
  v40 = &v19[v16[6]];
  *v40 = v80;
  *(v40 + 1) = v30;
  v41 = &v19[v16[7]];
  *v41 = v31;
  v41[1] = v28;
  *&v19[v16[8]] = v25;
  v19[v16[10]] = 0;
  v19[v16[11]] = 0;
  v42 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  result = swift_beginAccess();
  v44 = v73;
  if (*(*&v3[v42] + 16) < v73)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v73 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45 = v79;
  sub_23D7CD444(v19, v79, type metadata accessor for AXRArticle);
  sub_23D7CCF80(v44, v44, v45);
  swift_endAccess();
  v46 = *(v25 + 16);
  if (!v46)
  {
    sub_23D7CD3E4(v19, type metadata accessor for AXRArticle);
  }

  v69 = v19;
  v85 = MEMORY[0x277D84F90];
  v80 = v3;
  v47 = &v3[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed];
  v74 = v25 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
  swift_beginAccess();
  v48 = 0;
  v49 = (v76 + 7);
  v75 = (v76 + 2);
  ++v76;
  v79 = xmmword_23D80FAF0;
  v50 = v72;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v51 = swift_allocObject();
    *(v51 + 16) = v79;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_23D80DA0C(v84);

    v53 = *(v84[0] + 16);

    *(v51 + 32) = v53;
    *(v51 + 40) = v48;
    MEMORY[0x23EEEBFA0](v51);
    if (v46 > *(v25 + 16))
    {
      break;
    }

    --v46;
    v54 = v78;
    sub_23D7CD444(v74 + *(v82 + 72) * v46, v78, type metadata accessor for AXRTextContent);
    v55 = v47[4];
    LODWORD(v84[0]) = *v47;
    BYTE4(v84[0]) = v55;
    v53 = *v75;
    v56 = v77;
    v57 = v81;
    (*v75)(v77, v50, v81);
    (*v49)(v56, 0, 1, v57);
    sub_23D801090(v84, v56);
    sub_23D790730(v56, &qword_27E2E43F8, &qword_23D811650);
    v58 = sub_23D7CD3E4(v54, type metadata accessor for AXRTextContent);
    MEMORY[0x23EEEC7D0](v58);
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23D80DF0C();
    }

    sub_23D80DF2C();
    KeyPath = *v76;
    (*v76)(v50, v57);
    ++v48;
    v25 = v83;
    if (!v46)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v59 = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v80;
  result = sub_23D80D9FC();
  v62 = v73;
  if (*(*v61 + 16) < v73)
  {
    goto LABEL_24;
  }

  v63 = result;
  sub_23D7CDCF8(v73, v73, v59);

  v63(v84, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v71;
  sub_23D80DA0C(v71);

  v65 = sub_23D80D6DC();
  v66 = v81;
  KeyPath(v64, v81);
  if (v65 <= v62)
  {
LABEL_20:
    sub_23D7CD3E4(v69, type metadata accessor for AXRArticle);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v64);

  v67 = sub_23D80D6DC();
  KeyPath(v64, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
  result = swift_allocObject();
  *(result + 16) = v79;
  if (!__OFADD__(v65, 1))
  {
    *(result + 32) = v65 + 1;
    *(result + 40) = v67;
    MEMORY[0x23EEEBFA0]();
    swift_getKeyPath();
    swift_getKeyPath();
    v53(v70, v64, v66);
    v68 = v60;
    sub_23D80DA1C();
    KeyPath(v64, v66);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.fetchContentIn(direction:using:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_23D80D97C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v5 = sub_23D80D6CC();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for AXRArticle(0);
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_23D80DF6C();
  v3[38] = sub_23D80DF5C();
  v8 = sub_23D80DF3C();
  v3[39] = v8;
  v3[40] = v7;

  return MEMORY[0x2822009F8](sub_23D7C832C, v8, v7);
}

uint64_t sub_23D7C832C()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_useAXRuntimeFetch;
  swift_beginAccess();
  if (*(v1 + v2) == 1 && (v3 = v0[24], v4 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles, swift_beginAccess(), v5 = *(v3 + v4), *(v5 + 16)))
  {
    v6 = v0[37];
    v7 = v0[34];
    v8 = v0[22];
    v9 = *(v0[35] + 80);
    sub_23D7CD444(v5 + ((v9 + 32) & ~v9), v6, type metadata accessor for AXRArticle);
    sub_23D7C92F8(v8);
    v11 = v10;
    v0[41] = v10;
    v12 = (v6 + *(v7 + 24));
    v13 = *v12;
    v0[42] = *v12;
    v14 = v12[1];
    v0[43] = v14;
    v15 = swift_task_alloc();
    v0[44] = v15;
    *v15 = v0;
    v15[1] = sub_23D7C8524;
    v16 = v0[22];

    return AXRuntimeClient.fetchContentIn(direction:bundleID:currentElement:)(v16, v13, v14, v11);
  }

  else
  {

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_23D7C8524(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 320);
  v6 = *(v3 + 312);
  if (v1)
  {
    v7 = sub_23D7C8FF0;
  }

  else
  {
    v7 = sub_23D7C8668;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23D7C8668()
{
  v91 = v0;
  v1 = v0[45];

  if (!*(v1 + 16))
  {
    v26 = v0[41];

    goto LABEL_40;
  }

  v2 = v0[36];
  v3 = v0[34];
  v4 = (v0[37] + *(v3 + 20));
  v5 = v4[1];
  v88 = *v4;
  v6 = *(v3 + 36);
  v7 = sub_23D80D63C();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  v8 = 0x800000023D815CB0;
  v9 = qword_27E2E4228;
  v86 = v5;

  if (v9 != -1)
  {
LABEL_45:
    swift_once();
  }

  v10 = 0xD00000000000001FLL;
  v85 = v1;
  if (qword_27E2E4610)
  {
    v11 = qword_27E2E4610;
    v12 = sub_23D80DD4C();
    v13 = sub_23D80DD4C();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v10 = sub_23D80DD7C();
    v8 = v15;
  }

  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[43];
  v19 = v0[36];
  v20 = v0[34];
  v21 = v0[22];
  sub_23D80D66C();
  v22 = (v19 + *(v3 + 20));
  *v22 = v88;
  v22[1] = v86;
  v23 = (v19 + v20[6]);
  *v23 = v17;
  v23[1] = v18;
  v24 = (v19 + v20[7]);
  *v24 = v10;
  v24[1] = v8;
  *(v19 + v20[8]) = v16;
  *(v19 + v20[10]) = 0;
  *(v19 + v20[11]) = 0;
  if (v21 == 2)
  {
    v27 = v0[36];
    v28 = v0[33];
    v29 = v0[30];
    v30 = v0[31];

    AXRBlockManager.insertArticle(_:at:)(v27, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v28);

    v31 = sub_23D80D6DC();
    v32 = *(v30 + 8);
    v32(v28, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v28);

    v33 = sub_23D80D6DC();
    v32(v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_23D80FAF0;
    v35 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      v37 = v0[32];
      v36 = v0[33];
      v38 = v0[30];
      v39 = v0[31];
      v40 = v0[24];
      *(v34 + 32) = v35;
      *(v34 + 40) = v33;
      MEMORY[0x23EEEBFA0]();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v39 + 16))(v37, v36, v38);
      v41 = v40;
      sub_23D80DA1C();
      v32(v36, v38);
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (v21 == 1)
    {
      v25 = v0[36];

      AXRBlockManager.appendArticle(_:splitStrings:)(v25, 0);
      goto LABEL_15;
    }

    v42 = qword_27E2E4248;

    if (v42 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v43 = v0[29];
  v44 = v0[25];
  v45 = v0[26];
  v46 = __swift_project_value_buffer(v44, qword_27E2E5348);
  swift_beginAccess();
  (*(v45 + 16))(v43, v46, v44);
  v47 = sub_23D80D95C();
  v48 = sub_23D80E07C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v0[22];
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v49;
    _os_log_impl(&dword_23D78A000, v47, v48, "Unknown direction : %ld", v50, 0xCu);
    MEMORY[0x23EEED790](v50, -1, -1);
  }

  v51 = v0[29];
  v52 = v0[25];
  v53 = v0[26];

  (*(v53 + 8))(v51, v52);
LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v0 + 20);

  v1 = v0[20];
  v8 = sub_23D7B7534(v1);

  if (v8 >> 62)
  {
    v54 = sub_23D80E31C();
  }

  else
  {
    v54 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = 0;
  v56 = 0;
  v3 = v8 & 0xC000000000000001;
  while (v54 != v55)
  {
    if (v3)
    {
      v57 = MEMORY[0x23EEECB80](v55, v8);
      if (__OFADD__(v55, 1))
      {
LABEL_27:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v55 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v57 = *(v8 + 8 * v55 + 32);

      if (__OFADD__(v55, 1))
      {
        goto LABEL_27;
      }
    }

    swift_getKeyPath();
    v0[21] = v57;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v58 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
    swift_beginAccess();
    v1 = *(v57 + v58);

    ++v55;
    v59 = __OFADD__(v56, v1);
    v56 += v1;
    if (v59)
    {
      goto LABEL_44;
    }
  }

  v60 = v0[24];

  v61 = v60 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v61 = v56;
  *(v61 + 8) = 0;
  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v62 = v0[28];
  v63 = v0[25];
  v64 = v0[26];
  v65 = __swift_project_value_buffer(v63, qword_27E2E5348);
  swift_beginAccess();
  (*(v64 + 16))(v62, v65, v63);

  v66 = sub_23D80D95C();
  v67 = sub_23D80E06C();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[41];
  v70 = v0[36];
  v71 = v0[28];
  v73 = v0[25];
  v72 = v0[26];
  if (v68)
  {
    v74 = v0[22];
    v89 = v0[28];
    v75 = swift_slowAlloc();
    v87 = v73;
    v76 = swift_slowAlloc();
    v90 = v76;
    *v75 = 134218242;
    v84 = v70;
    v77 = *(v85 + 16);

    *(v75 + 4) = v77;

    *(v75 + 12) = 2080;
    if (v74 == 1)
    {
      v78 = 1954047342;
    }

    else
    {
      v78 = 0x73756F6976657270;
    }

    if (v74 == 1)
    {
      v79 = 0xE400000000000000;
    }

    else
    {
      v79 = 0xE800000000000000;
    }

    v80 = sub_23D79FD34(v78, v79, &v90);

    *(v75 + 14) = v80;
    _os_log_impl(&dword_23D78A000, v66, v67, "Added %ld %s content blocks", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x23EEED790](v76, -1, -1);
    MEMORY[0x23EEED790](v75, -1, -1);

    (*(v72 + 8))(v89, v87);
    v81 = v84;
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (*(v72 + 8))(v71, v73);
    v81 = v70;
  }

  sub_23D7CD3E4(v81, type metadata accessor for AXRArticle);
LABEL_40:
  sub_23D7CD3E4(v0[37], type metadata accessor for AXRArticle);

  v82 = v0[1];

  return v82(0);
}

uint64_t sub_23D7C8FF0()
{
  v29 = v0;
  v1 = v0[41];

  if (qword_27E2E4248 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = __swift_project_value_buffer(v5, qword_27E2E5348);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_23D80D95C();
  v9 = sub_23D80E07C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[46];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  if (v10)
  {
    v27 = v0[27];
    v15 = v0[22];
    v26 = v0[25];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v16 = 136315394;
    if (v15 == 1)
    {
      v19 = 1954047342;
    }

    else
    {
      v19 = 0x73756F6976657270;
    }

    if (v15 == 1)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE800000000000000;
    }

    v21 = sub_23D79FD34(v19, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v11;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_23D78A000, v8, v9, "Failed to fetch %s content : %@", v16, 0x16u);
    sub_23D790730(v17, &qword_27E2E45B0, &unk_23D810330);
    MEMORY[0x23EEED790](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x23EEED790](v18, -1, -1);
    MEMORY[0x23EEED790](v16, -1, -1);

    (*(v13 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  sub_23D7CD3E4(v0[37], type metadata accessor for AXRArticle);

  v24 = v0[1];

  return v24(0);
}

void sub_23D7C92F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_articles;
  if (a1 == 1)
  {
    swift_beginAccess();

    v5 = sub_23D7C9448(v4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + v3);
  }

  v6 = 0;
  v7 = v5[2];
  while (1)
  {
    if (v7 == v6)
    {
LABEL_8:

      return;
    }

    if (v6 >= v5[2])
    {
      break;
    }

    v8 = type metadata accessor for AXRArticle(0);
    v9 = v6 + 1;
    v10 = *(v5 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6 + *(v8 + 32));

    v11 = _s23AccessibilityReaderData14AXRTextContentV34getElementForPaginationInDirection_4fromSo9AXElementCSgSo11AXDirectionV_SayACGtFZ_0(a1, v10);

    v6 = v9;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *sub_23D7C9448(void *a1)
{
  v2 = type metadata accessor for AXRArticle(0);
  v15 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_23D7CD444(a1 + v13 + v14 * v9, v16, type metadata accessor for AXRArticle);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_23D7CD444(a1 + v13 + v14 * i, v5, type metadata accessor for AXRArticle);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_23D7CD07C(a1);
    }

    result = sub_23D7CE8BC(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_23D7CE8BC(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(uint64_t a1, int a2)
{
  v37 = a2;
  v51 = a1;
  v3 = sub_23D80D6CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v39 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v36[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v36[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-v13];
  v40 = v4;
  v42 = *(v4 + 56);
  v43 = v4 + 56;
  v42(&v36[-v13], 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v2;
  sub_23D80DA0C(v52);

  v15 = *(v52[0] + 16);

  v48 = v15;
  if (!v15)
  {
LABEL_22:
    v31 = v39;
    sub_23D790648(v14, v39, &qword_27E2E43F8, &qword_23D811650);
    v32 = v40;
    if ((*(v40 + 48))(v31, 1, v3) == 1)
    {
      sub_23D790730(v14, &qword_27E2E43F8, &qword_23D811650);
      v33 = 0;
    }

    else
    {
      v34 = v38;
      (*(v32 + 32))(v38, v31, v3);
      v33 = AXRBlockManager.blockAtIndexPath(_:)();
      if (v33)
      {
        if (v37)
        {
          v35 = v44;
          (*(v32 + 16))(v44, v34, v3);
          v42(v35, 0, 1, v3);
          sub_23D7D4AF8(v35);
        }
      }

      (*(v32 + 8))(v34, v3);
      v31 = v14;
    }

    sub_23D790730(v31, &qword_27E2E43F8, &qword_23D811650);
    return v33;
  }

  v16 = 0;
  v17 = 0;
  v47 = (v40 + 48);
  v41 = xmmword_23D8115E0;
  v45 = v14;
  v46 = v3;
  while (1)
  {
    result = AXRBlockManager.pageContentAtIndex(_:)(v17);
    v19 = result;
    if (!(result >> 62))
    {
      v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    result = sub_23D80E31C();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v20 = result;
    if (result)
    {
LABEL_5:
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x23EEECB80](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        swift_getKeyPath();
        v52[3] = v22;
        sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
        sub_23D80D6FC();

        v23 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
        result = swift_beginAccess();
        v24 = *(v22 + v23);
        v25 = v16 + v24;
        if (__OFADD__(v16, v24))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v25 >= v51)
        {
          break;
        }

        ++v21;

        v16 = v25;
        if (v20 == v21)
        {
          goto LABEL_19;
        }
      }

      v26 = v51 - v16;
      if (__OFSUB__(v51, v16))
      {
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
      v27 = swift_allocObject();
      *(v27 + 16) = v41;
      *(v27 + 32) = v17;
      *(v27 + 40) = v21;
      *(v27 + 48) = v26;
      v28 = v44;
      MEMORY[0x23EEEBFA0]();

      v14 = v45;
      sub_23D790730(v45, &qword_27E2E43F8, &qword_23D811650);
      v3 = v46;
      v42(v28, 0, 1, v46);
      sub_23D7AF7D0(v28, v14, &qword_27E2E43F8, &qword_23D811650);
      goto LABEL_20;
    }

LABEL_18:
    v25 = v16;
LABEL_19:

    v16 = v25;
    v14 = v45;
    v3 = v46;
LABEL_20:
    v29 = v49;
    sub_23D790648(v14, v49, &qword_27E2E43F8, &qword_23D811650);
    v30 = (*v47)(v29, 1, v3);
    sub_23D790730(v29, &qword_27E2E43F8, &qword_23D811650);
    if (v30 == 1 && ++v17 != v48)
    {
      continue;
    }

    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t AXRBlockManager.cumulativeCharacterCount(upTo:)()
{
  v1 = v0;
  v2 = sub_23D80D6DC();
  KeyPath = sub_23D80D6DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v31);

  v4 = *(v31[0] + 16);

  v5 = 0;
  if (v2 >= v4)
  {
    return v5;
  }

  if (v2 < 0)
  {
    goto LABEL_53;
  }

  if (!v2)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v6 = 0;
  v5 = 0;
  v7 = &unk_23D8115F0;
  v30 = KeyPath;
  do
  {
    KeyPath = v6;
    while (1)
    {
      if (KeyPath >= v2)
      {
        goto LABEL_48;
      }

      v6 = KeyPath + 1;
      if (__OFADD__(KeyPath, 1))
      {
        goto LABEL_49;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v31);

      v8 = *(v31[0] + 16);

      if (KeyPath >= v8)
      {
LABEL_26:
        KeyPath = v30;
        goto LABEL_28;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v31);

      v9 = *(v31[0] + 16);

      v11 = MEMORY[0x277D84F90];
      if (v9 > KeyPath)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23D80DA0C(v31);

        if (KeyPath >= *(v31[0] + 16))
        {
          goto LABEL_52;
        }

        v11 = *(v31[0] + 8 * KeyPath + 32);
      }

      v12 = v1;
      v1 = v7;
      if (!(v11 >> 62))
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          break;
        }

        goto LABEL_14;
      }

      result = sub_23D80E31C();
      v13 = result;
      if (result)
      {
        break;
      }

LABEL_14:

      ++KeyPath;
      v7 = v1;
      v1 = v12;
      if (v6 == v2)
      {
        goto LABEL_26;
      }
    }

    v29 = v2;
    if (v13 < 1)
    {
      goto LABEL_61;
    }

    for (i = 0; i != v13; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EEECB80](i, v11);
      }

      else
      {
        v15 = *(v11 + 8 * i + 32);
      }

      KeyPath = swift_getKeyPath();
      v31[0] = v15;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6FC();

      v16 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
      swift_beginAccess();
      v17 = *(v15 + v16);

      v18 = __OFADD__(v5, v17);
      v5 += v17;
      if (v18)
      {
        goto LABEL_51;
      }
    }

    v2 = v29;
    KeyPath = v30;
    v7 = v1;
    v1 = v12;
  }

  while (v6 != v29);
LABEL_28:
  v19 = AXRBlockManager.pageContentAtIndex(_:)(v2);
  v1 = v19;
  if (v19 >> 62)
  {
    goto LABEL_54;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (KeyPath >= result)
  {
LABEL_55:

    return v5;
  }

  while (1)
  {
    if (KeyPath < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v20 = v1 & 0xC000000000000001;
    if (!KeyPath)
    {
      break;
    }

    if (!v20 && KeyPath > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    v21 = 0;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x23EEECB80](v21, v1);
      }

      else
      {
        v22 = *(v1 + 8 * v21 + 32);
      }

      swift_getKeyPath();
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6FC();

      v23 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
      swift_beginAccess();
      v24 = *(v22 + v23);

      v18 = __OFADD__(v5, v24);
      v5 += v24;
      if (v18)
      {
        break;
      }

      if (KeyPath == ++v21)
      {
        goto LABEL_40;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    result = sub_23D80E31C();
    if (KeyPath >= result)
    {
      goto LABEL_55;
    }
  }

LABEL_40:
  if (v20)
  {
LABEL_58:
    v25 = MEMORY[0x23EEECB80](KeyPath, v1);
    goto LABEL_43;
  }

  if (KeyPath < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v1 + 8 * KeyPath + 32);

LABEL_43:

    swift_getKeyPath();
    KeyPath = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v26 = v25 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
    swift_beginAccess();
    if (*(v26 + 16) == 1)
    {

      return v5;
    }

    swift_getKeyPath();
    sub_23D80D6FC();

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4390, &qword_23D811B50);
    sub_23D7CE9C0(&qword_27E2E4398, &qword_27E2E4390, &qword_23D811B50, MEMORY[0x277D83D30]);
    sub_23D7904FC();
    v27 = sub_23D80E14C();
    v1 = v28;

    v18 = __OFADD__(v5, v27 + v1);
    v5 += v27 + v1;
    if (!v18)
    {
      return v5;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

BOOL static IndexPath.!= infix(_:_:)()
{
  v0 = sub_23D80D6DC();
  if (v0 != sub_23D80D6DC())
  {
    return 1;
  }

  v1 = sub_23D80D6DC();
  return v1 != sub_23D80D6DC();
}

double AXRBlockManager.currentSpeechTime.getter()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v3);

  v4 = AXRBlockManager.cumulativeCharacterCount(upTo:)();
  (*(v1 + 8))(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v7);

  return v4 / (v7 * 5.0 / 60.0);
}

double _s23AccessibilityReaderData15AXRBlockManagerC15totalSpeechTimeSdvg_0()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v2);

  return v0 / (v2 * 5.0 / 60.0);
}

void AXRBlockManager.remainingSpeechTimeInMinutes.getter()
{
  v0 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v2);

  v1 = ceil((v0 / (v2 * 5.0 / 60.0) - AXRBlockManager.currentSpeechTime.getter()) / 60.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

Swift::Void __swiftcall AXRBlockManager.fastForward()()
{
  v0 = AXRBlockManager.currentSpeechTime.getter() + 10.0;

  AXRBlockManager.seek(to:)(v0);
}

Swift::Void __swiftcall AXRBlockManager.seek(to:)(Swift::Double to)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_23D80D6CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = &v49 - v15;
  v16 = AXRBlockManager.totalCharacterCount.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v58);

  if (v16 / (v58[0] * 5.0 / 60.0) >= to)
  {
    v17 = *&v1[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(v58);

    v20 = v17 / (v58[0] * 5.0 / 60.0);
    if (v20 >= to)
    {
      v20 = to;
    }

    if (v20 < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v20;
    }

    v22 = floor(v21 / 7200.0);
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        v19 = AXRBlockManager.totalVisibleChunks.getter();
        v23 = v19 - 1;
        if (!__OFSUB__(v19, 1))
        {
          if (v23 >= v22)
          {
            v23 = v22;
          }

          v24 = v23 & ~(v23 >> 63);
          swift_getKeyPath();
          swift_getKeyPath();
          *&v58[0] = v24;
          *&v58[1] = v24 + 1;
          v2 = v1;
          sub_23D80DA1C();
          sub_23D7BD6E0();
          swift_getKeyPath();
          KeyPath = swift_getKeyPath();
          sub_23D80DA0C(v58);

          v25 = ceil(v21 * (v58[0] * 5.0 / 60.0));
          if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v25 > -9.22337204e18)
            {
              if (v25 < 9.22337204e18)
              {
                *&v26 = COERCE_DOUBLE(AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v25, 1));
                if (*&v26 == 0.0)
                {
                  return;
                }

                v27 = *&v26;
                swift_getKeyPath();
                v58[0] = v27;
                v28 = sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
                sub_23D80D6FC();

                v29 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
                swift_beginAccess();
                sub_23D790648(*&v27 + v29, v6, &qword_27E2E43F8, &qword_23D811650);
                if ((*(v8 + 48))(v6, 1, v7) == 1)
                {

                  sub_23D790730(v6, &qword_27E2E43F8, &qword_23D811650);
                  return;
                }

                v51 = v28;
                v52 = v27;
                v30 = v55;
                (*(v8 + 32))(v55, v6, v7);
                v50 = sub_23D80D6DC();
                v31 = sub_23D80D6DC();
                swift_getKeyPath();
                swift_getKeyPath();
                sub_23D80DA0C(v14);

                v32 = sub_23D80D6DC();
                KeyPath = *(v8 + 8);
                KeyPath(v14, v7);
                v53 = v8 + 8;
                if (v31 != v32 || (v33 = sub_23D80D6DC(), swift_getKeyPath(), swift_getKeyPath(), sub_23D80DA0C(v14), , , v34 = sub_23D80D6DC(), KeyPath(v14, v7), v33 != v34))
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_23D80DA0C(v14);

                  v35 = AXRBlockManager.blockAtIndexPath(_:)();
                  KeyPath(v14, v7);
                  if (v35)
                  {
                    sub_23D7D8A48();
                  }
                }

                v36 = *(v8 + 16);
                v36(v14, v30, v7);
                swift_getKeyPath();
                swift_getKeyPath();
                v36(v11, v14, v7);
                v2 = v2;
                v8 = v55;
                sub_23D80DA1C();
                KeyPath(v14, v7);
                swift_getKeyPath();
                swift_getKeyPath();
                sub_23D80DA0C(v14);

                sub_23D7C58E4();
                KeyPath(v14, v7);
                v37 = sub_23D80D6DC();
                v11 = AXRBlockManager.pageContentAtIndex(_:)(v37);
                v19 = sub_23D80D6DC();
                if ((v11 & 0xC000000000000001) == 0)
                {
                  if ((v19 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v19 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v38 = *(v11 + 8 * v19 + 32);

                    goto LABEL_27;
                  }

                  __break(1u);
                  return;
                }

LABEL_49:
                v38 = MEMORY[0x23EEECB80](v19, v11);
LABEL_27:

                swift_getKeyPath();
                v57 = v38;
                sub_23D80D6FC();

                v39 = (v38 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
                swift_beginAccess();
                v40 = v50;
                if (v50 < 1)
                {
                  sub_23D7D8A48();
                  goto LABEL_38;
                }

                v42 = *v39;
                v41 = v39[1];

                if (sub_23D80DDBC() >= v40)
                {
                  v46 = sub_23D80DE5C();
                  v48 = v47;

                  if (v48)
                  {
                    goto LABEL_38;
                  }

                  v45 = v46;
                }

                else
                {

                  v43 = HIBYTE(v41) & 0xF;
                  if ((v41 & 0x2000000000000000) == 0)
                  {
                    v43 = v42;
                  }

                  v44 = 7;
                  if (((v41 >> 60) & ((v42 & 0x800000000000000) == 0)) != 0)
                  {
                    v44 = 11;
                  }

                  v45 = v44 | (v43 << 16);
                }

                sub_23D7D2E58(0xFuLL, v45, 0);
LABEL_38:
                swift_getKeyPath();
                swift_getKeyPath();
                v56 = 1;
                v2;
                sub_23D80DA1C();
                sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager, &protocol conformance descriptor for AXRBlockManager);
                sub_23D80D9AC();
                sub_23D80D9BC();

                if (AXRBlockManager.isSpeaking()())
                {
                  AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v8, 0);

                  KeyPath(v8, v7);
                }

                else
                {
                  KeyPath(v8, v7);
                }

                return;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_44;
  }
}

Swift::Void __swiftcall AXRBlockManager.rewind()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = AXRBlockManager.currentSpeechTime.getter();
  v5 = v4 + -10.0;
  if (v4 + -10.0 < 0.0)
  {
    v5 = 0.0;
  }

  if (v4 >= 10.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_23D80DF8C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_23D80DF6C();
  v8 = v0;
  v9 = sub_23D80DF5C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = v6;
  sub_23D7C2104(0, 0, v3, &unk_23D815210, v10);
}

uint64_t sub_23D7CB218(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a1;
  *(v5 + 72) = a5;
  v6 = sub_23D80DC7C();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  v7 = sub_23D80DCAC();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = sub_23D80DCCC();
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  sub_23D80DF6C();
  *(v5 + 168) = sub_23D80DF5C();
  v10 = sub_23D80DF3C();

  return MEMORY[0x2822009F8](sub_23D7CB3D4, v10, v9);
}

uint64_t sub_23D7CB3D4()
{
  v14 = *(v0 + 20);
  v2 = *(v0 + 18);
  v1 = *(v0 + 19);
  v3 = *(v0 + 17);
  v19 = *(v0 + 15);
  v20 = *(v0 + 14);
  v15 = *(v0 + 16);
  v16 = *(v0 + 13);
  v17 = *(v0 + 11);
  v18 = *(v0 + 12);
  v4 = v0[10];
  v5 = *(v0 + 9);

  AXRBlockManager.seek(to:)(v4);
  type metadata accessor for AXRBlockManager(0);
  sub_23D7CE978(&qword_27E2E49E0, type metadata accessor for AXRBlockManager, &protocol conformance descriptor for AXRBlockManager);
  sub_23D80D9AC();
  sub_23D80D9BC();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 176) = 0;
  v6 = v5;
  sub_23D80DA1C();
  sub_23D7936F0(0, &qword_27E2E45B8, 0x277D85C78);
  v7 = sub_23D80E0BC();
  sub_23D80DCBC();
  sub_23D80DCDC();
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v0 + 6) = sub_23D7CE89C;
  *(v0 + 7) = v9;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_23D79FA1C;
  *(v0 + 5) = &block_descriptor_0;
  v10 = _Block_copy(v0 + 2);
  v11 = v6;
  sub_23D80DC9C();
  *(v0 + 8) = MEMORY[0x277D84F90];
  sub_23D7CE978(&qword_27E2E45C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
  sub_23D7CE9C0(&qword_27E2E45D0, &qword_27E2E45C8, &qword_23D811F70, MEMORY[0x277D83970]);
  sub_23D80E1DC();
  MEMORY[0x23EEEC9C0](v14, v15, v16, v10);
  _Block_release(v10);

  (*(v18 + 8))(v16, v17);
  (*(v19 + 8))(v15, v20);
  v8(v14, v3);

  v12 = *(v0 + 1);

  return v12();
}

uint64_t sub_23D7CB778(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_23D80DA1C();
}

Swift::Void __swiftcall AXRBlockManager.startSpeakingFromCharacterIndex(_:)(Swift::Int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4550, &qword_23D810160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_23D80DF8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23D80DF6C();
  v7 = v1;
  v8 = sub_23D80DF5C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;
  sub_23D7C2104(0, 0, v5, &unk_23D811B98, v9);
}

uint64_t sub_23D7CB918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  v5[11] = swift_task_alloc();
  v6 = sub_23D80D6CC();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  sub_23D80DF6C();
  v5[15] = sub_23D80DF5C();
  v8 = sub_23D80DF3C();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x2822009F8](sub_23D7CBA44, v8, v7);
}

uint64_t sub_23D7CBA44()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth;
  v3 = *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_synth);
  if (v3 && [v3 isSpeaking] && (v4 = *(v1 + v2), (*(v0 + 144) = v4) != 0))
  {
    v23 = (*MEMORY[0x277D701C8] + MEMORY[0x277D701C8]);
    v4;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_23D7CBD60;

    return v23();
  }

  else
  {

    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
    swift_beginAccess();
    *(v8 + v9) = 0;
    v10 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v7, 1);
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 88);
      swift_getKeyPath();
      *(v0 + 64) = v11;
      sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
      sub_23D80D6FC();

      v15 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
      swift_beginAccess();
      sub_23D790648(v11 + v15, v14, &qword_27E2E43F8, &qword_23D811650);
      if ((*(v13 + 48))(v14, 1, v12) == 1)
      {
        v16 = *(v0 + 88);

        sub_23D790730(v16, &qword_27E2E43F8, &qword_23D811650);
      }

      else
      {
        v18 = *(v0 + 104);
        v17 = *(v0 + 112);
        v19 = *(v0 + 96);
        v20 = *(v0 + 72);
        (*(v18 + 32))(v17, *(v0 + 88), v19);
        AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v17, 0);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 160) = 1;
        v21 = v20;
        sub_23D80DA1C();

        (*(v18 + 8))(v17, v19);
      }
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_23D7CBD60()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23D7CBEA0, v4, v3);
}

uint64_t sub_23D7CBEA0()
{

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_speechSkippingInProgress;
  swift_beginAccess();
  *(v2 + v3) = 0;
  v4 = AXRBlockManager.blockAtCharacterIndex(_:setCharacterIndex:)(v1, 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);
    swift_getKeyPath();
    *(v0 + 64) = v5;
    sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6FC();

    v9 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
    swift_beginAccess();
    sub_23D790648(v5 + v9, v8, &qword_27E2E43F8, &qword_23D811650);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      v10 = *(v0 + 88);

      sub_23D790730(v10, &qword_27E2E43F8, &qword_23D811650);
    }

    else
    {
      v12 = *(v0 + 104);
      v11 = *(v0 + 112);
      v13 = *(v0 + 96);
      v14 = *(v0 + 72);
      (*(v12 + 32))(v11, *(v0 + 88), v13);
      AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v11, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 160) = 1;
      v15 = v14;
      sub_23D80DA1C();

      (*(v12 + 8))(v11, v13);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

Swift::Int __swiftcall AXRBlockManager.showNextVisibleChunk()()
{
  if (AXRBlockManager.totalVisibleChunks.getter() < 1)
  {

    return sub_23D80D43C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v18);

    v1 = v19;
    if (v1 < AXRBlockManager.totalVisibleChunks.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(&v18);

      v3 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
      }

      else
      {
        v4 = AXRBlockManager.totalVisibleChunks.getter();
        if (v4 >= v3)
        {
          v5 = v3;
        }

        else
        {
          v5 = v4;
        }

        v6 = sub_23D7B78B0();
        v8 = v7;
        result = AXRBlockManager.totalCharacterCount.getter();
        if (result >= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = result;
        }

        v10 = v9 - v6;
        if (!__OFSUB__(v9, v6))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v18);

          v11 = v18;
          if (v5 >= v18)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v18 = v11;
            v19 = v5;
            v12 = v0;
            sub_23D80DA1C();
            sub_23D7BD6E0();
            result = sub_23D7B78B0();
            v14 = *&v12[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
            if (v14 >= v13)
            {
              v14 = v13;
            }

            v15 = __OFSUB__(v14, result);
            v16 = v14 - result;
            if (!v15)
            {
              v15 = __OFSUB__(v16, v10);
              v17 = v16 - v10;
              if (!v15)
              {
                return v17 & ~(v17 >> 63);
              }

              goto LABEL_26;
            }

LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    return sub_23D80D43C();
  }
}

Swift::Int __swiftcall AXRBlockManager.showPreviousVisibleChunk()()
{
  if (AXRBlockManager.totalVisibleChunks.getter() < 1)
  {

    return sub_23D80D43C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v16);

    if (v16 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(&v16);

      v2 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        __break(1u);
      }

      else
      {
        v3 = sub_23D7B78B0();
        v5 = v4;
        result = AXRBlockManager.totalCharacterCount.getter();
        if (result >= v5)
        {
          v6 = v5;
        }

        else
        {
          v6 = result;
        }

        v7 = v6 - v3;
        if (!__OFSUB__(v6, v3))
        {
          v8 = v2 & ~(v2 >> 63);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_23D80DA0C(&v16);

          v9 = v17;
          if (v17 >= v8)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v16 = v8;
            v17 = v9;
            v10 = v0;
            sub_23D80DA1C();
            sub_23D7BD6E0();
            result = sub_23D7B78B0();
            v12 = *&v10[OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount];
            if (v12 >= v11)
            {
              v12 = v11;
            }

            v13 = __OFSUB__(v12, result);
            v14 = v12 - result;
            if (!v13)
            {
              v13 = __OFSUB__(v14, v7);
              v15 = v14 - v7;
              if (!v13)
              {
                return v15 & ~(v15 >> 63);
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            return result;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    return sub_23D80D43C();
  }
}

unint64_t sub_23D7CC51C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v6);

  v0 = *(v6 + 16);
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = *(v6 + 8 * v0 + 24);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_12:

    return 0;
  }

  v2 = sub_23D80E31C();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v5 = MEMORY[0x23EEECB80](result, v1);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 8 * result + 32);

LABEL_9:

    return v5;
  }

  __break(1u);
  return result;
}

double sub_23D7CC64C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_23D7CC718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D7D2424(v1, v2);
}

uint64_t sub_23D7CC758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

__n128 sub_23D7CC844@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_23D7CC948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a2 = *v4;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_23D7CCA18(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_23D7D37C0(&v3);
}

uint64_t sub_23D7CCA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  return sub_23D790648(v3 + v4, a2, &qword_27E2E43F8, &qword_23D811650);
}

uint64_t sub_23D7CCB30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23D790648(a1, &v6 - v3, &qword_27E2E43F8, &qword_23D811650);
  return sub_23D7D4AF8(v4);
}

double sub_23D7CCBDC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7CE978(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_23D7CCCA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D7D6068(v1, v2);
}

uint64_t sub_23D7CCCF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23D7CCDE8;

  return v6(a1);
}

uint64_t sub_23D7CCDE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D7CCEE0(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23D80E31C();
LABEL_9:
  result = sub_23D80E27C();
  *v3 = result;
  return result;
}

unint64_t sub_23D7CCF80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_23D78FFF8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_23D7CFEA8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t (*sub_23D7CD090(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEECB80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23D7CD110;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7CD118(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23D80E31C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23D80E31C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23D7CE9C0(&qword_27E2E4A40, &qword_27E2E43C0, &qword_23D811E40, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
            v9 = sub_23D7CD090(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AXRTextBlock(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D7CD2C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D7D6068(v1, v2);
}

uint64_t sub_23D7CD3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D7CD444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D7CD4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7CD518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7A0C28;

  return sub_23D7C1DC4(a1, v4, v5, v6);
}

uint64_t sub_23D7CD5D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7CECB0;

  return sub_23D7C2834(a1, v4, v5, v6, v7);
}

uint64_t sub_23D7CD698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C6ADC(a1, v4, v5, v6);
}

void _s23AccessibilityReaderData15AXRBlockManagerC4nextyySbF_0()
{
  v0 = sub_23D80D6CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v3);

  v4 = sub_23D80D6DC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v16);

  v6 = *(v16 + 16);

  if (v4 >= v6)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v3);

  v7 = sub_23D80D6DC();
  v5(v3, v0);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = AXRBlockManager.pageContentAtIndex(_:)(v4);
  if (v9 >> 62)
  {
LABEL_16:
    v10 = sub_23D80E31C();
    goto LABEL_5;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v8 < v10)
  {
    v11 = v4;
  }

  else
  {
    v11 = v4 + 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v16);

  v12 = *(v16 + 16);

  if (v11 >= v12)
  {
    sub_23D7C6284();
  }

  else
  {
    if (v8 < v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A8, &qword_23D810090);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_23D80FAF0;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    MEMORY[0x23EEEBFA0]();
    sub_23D7C58E4();
    AXRBlockManager.startSpeakingBlock(atIndexPath:clearSelectedText:)(v3, 1);
    v5(v3, v0);
  }
}

uint64_t sub_23D7CDA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C4B80(a1, v4, v5, v6);
}

uint64_t sub_23D7CDB14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C4EDC(a1, v4, v5, v6);
}

uint64_t sub_23D7CDBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D7CECB0;

  return sub_23D7C53E4(a1, v4, v5, v6);
}

uint64_t sub_23D7CDC80(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_23D7D37C0(&v3);
}

void sub_23D7CDCF8(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_23D790020(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  sub_23D7D01BC(result, a2, 1, a3);
  *v3 = v5;
}

uint64_t sub_23D7CDDD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D7D2424(v1, v2);
}

uint64_t type metadata accessor for AXRBlockManager(uint64_t a1)
{
  result = qword_27E2E49F8;
  if (!qword_27E2E49F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7CDE6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D7CECB0;

  return sub_23D7CB918(a1, v4, v5, v7, v6);
}

unint64_t sub_23D7CDF30()
{
  result = qword_27E2E49E8;
  if (!qword_27E2E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E49E8);
  }

  return result;
}

unint64_t sub_23D7CDF88()
{
  result = qword_27E2E49F0;
  if (!qword_27E2E49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E49F0);
  }

  return result;
}

uint64_t sub_23D7CE01C@<X0>(uint64_t *a1@<X8>)
{
  result = AXRBlockManager.totalCharacterCount.getter();
  *a1 = result;
  return result;
}

void *sub_23D7CE048(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager____lazy_storage___totalCharacterCount;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_23D7CE16C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_23D7CE1C8(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC23AccessibilityReaderData15AXRBlockManager_playbackSpeed;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return sub_23D7B9E80();
}

uint64_t getEnumTagSinglePayload for AXRSpeechState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXRSpeechState(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_23D7CE430(uint64_t a1)
{
  sub_23D7CE76C(319, &qword_27E2E4A08, &qword_27E2E49B8, &qword_23D811A38);
  if (v1 <= 0x3F)
  {
    sub_23D7CE76C(319, &qword_27E2E4A10, &qword_27E2E49C0, &unk_23D811A40);
    if (v2 <= 0x3F)
    {
      sub_23D7CE818(319, &qword_27E2E4A18, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_23D7CE7C0(319);
        if (v4 <= 0x3F)
        {
          sub_23D7CE818(319, &qword_27E2E4A28, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_23D7CE818(319, &qword_27E2E4A30, MEMORY[0x277D839F8]);
            if (v6 <= 0x3F)
            {
              sub_23D7CE818(319, &qword_27E2E4A38, &type metadata for AXRSpeechState);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D7CE76C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D80DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23D7CE7C0(uint64_t a1)
{
  if (!qword_27E2E4A20)
  {
    sub_23D80D6CC();
    v1 = sub_23D80DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2E4A20);
    }
  }
}

void sub_23D7CE818(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23D80DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D7CE864()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D7CE8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRArticle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23D7CE978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D7CE9C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D7CEA08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D7CEA6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7CEAA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D7CECB0;

  return sub_23D7CCCF0(a1, v4);
}

uint64_t sub_23D7CEB5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D7A0C28;

  return sub_23D7CCCF0(a1, v4);
}

uint64_t sub_23D7CEC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A90, &unk_23D815170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AXReaderLaunchHelper.launchAccessibilityReader(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23D80D60C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D7CED8C, 0, 0);
}

uint64_t sub_23D7CED8C()
{
  if (v0[4])
  {
    v1 = VNDocumentObservation.text.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  v4 = v0[8];
  sub_23D7CF060(v0[2], v0[3], v1, v3, v4);

  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23D7CEEC4;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0x284C52556E65706FLL, 0xEB00000000293A5FLL, sub_23D7CFAC0, v5, v7);
}

uint64_t sub_23D7CEEC4()
{

  return MEMORY[0x2822009F8](sub_23D7CEFDC, 0, 0);
}

uint64_t sub_23D7CEFDC()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23D7CF060@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4AA0, &qword_23D811F78);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4AA8, &unk_23D811F80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_23D80D51C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23D80D57C();
  v24 = MEMORY[0x28223BE20](v23);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    sub_23D80D5FC();
    v32 = sub_23D80D60C();
    v33 = *(v32 - 8);
    result = (*(v33 + 48))(v11, 1, v32);
    if (result != 1)
    {
      return (*(v33 + 32))(a5, v11, v32);
    }

    __break(1u);
    goto LABEL_18;
  }

  v39 = v25;
  v40 = v24;
  v41 = a5;
  sub_23D80D56C();
  sub_23D80D55C();
  MEMORY[0x23EEEBE60](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43A0, &qword_23D80FB18);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23D80FB00;
  sub_23D80D50C();
  if (v43)
  {
    sub_23D80D50C();
    (*(v20 + 32))(v18, v22, v19);
    v45 = v29;
    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      v45 = sub_23D790258(1, v30 + 1, 1, v29);
    }

    v31 = v44;
    sub_23D7D0020(0, 0, 1, v18);
  }

  else
  {
    v31 = v44;
  }

  sub_23D80D52C();
  sub_23D80D53C();
  v35 = sub_23D80D60C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v15, 1, v35) != 1)
  {
    (*(v39 + 8))(v27, v40);

    return (*(v36 + 32))(v41, v15, v35);
  }

  sub_23D80D5FC();
  result = (v37)(v31, 1, v35);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  (*(v39 + 8))(v27, v40);

  (*(v36 + 32))(v41, v31, v35);
  result = (v37)(v15, 1, v35);
  if (result != 1)
  {
    return sub_23D790730(v15, &qword_27E2E4AA0, &qword_23D811F78);
  }

  return result;
}

uint64_t sub_23D7CF5DC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v33 = sub_23D80DC7C();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D80DCAC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - v6;
  v7 = sub_23D80D60C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D80DC8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D7CFC18();
  (*(v12 + 104))(v14, *MEMORY[0x277D851B8], v11);
  v28 = sub_23D80E0DC();
  (*(v12 + 8))(v14, v11);
  (*(v8 + 16))(v10, v29, v7);
  v16 = v26;
  v15 = v27;
  (*(v5 + 16))(v26, v30, v27);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = (v9 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v17, v10, v7);
  (*(v5 + 32))(v19 + v18, v16, v15);
  aBlock[4] = sub_23D7CFDB8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D79FA1C;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);
  v21 = v31;
  sub_23D80DC9C();
  v37 = MEMORY[0x277D84F90];
  sub_23D7A1144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45C8, &qword_23D811F70);
  sub_23D7A119C();
  v23 = v32;
  v22 = v33;
  sub_23D80E1DC();
  v24 = v28;
  MEMORY[0x23EEEC9E0](0, v21, v23, v20);
  _Block_release(v20);

  (*(v36 + 8))(v23, v22);
  (*(v34 + 8))(v21, v35);
}

id sub_23D7CFAC8()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_23D80D5EC();
    sub_23D793ACC(MEMORY[0x277D84F90]);
    v3 = sub_23D80DCEC();

    [v1 openSensitiveURL:v2 withOptions:v3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
    return sub_23D80DF4C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23D7CFC18()
{
  result = qword_27E2E45B8;
  if (!qword_27E2E45B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E45B8);
  }

  return result;
}

uint64_t sub_23D7CFC64()
{
  v1 = sub_23D80D60C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

id sub_23D7CFDB8()
{
  sub_23D80D60C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4A98, &qword_23D811F68);

  return sub_23D7CFAC8();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D7CFEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for AXRArticle(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

  if (v17 < 1)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

  result = sub_23D7B47E0(a4, v15);
  if (v12 >= v17)
  {
    return sub_23D790730(a4, &qword_27E2E49D8, &qword_23D811B10);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_23D7D0020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_23D80D51C();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

  if (v18 < 1)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_23D790730(v25, &qword_27E2E4AA8, &unk_23D811F80);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_23D7D01BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C0, &qword_23D811E40);
  swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      v15 = &v10[a3];
      v16 = (v9 + 32 + 8 * a2);
      if (v15 != v16 || v15 >= &v16[8 * v14])
      {
        memmove(v15, v16, 8 * v14);
      }

      v18 = *(v9 + 16);
      v11 = __OFADD__(v18, v12);
      v19 = v18 + v12;
      if (!v11)
      {
        *(v9 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void *AXRViewInReaderService.__allocating_init(store:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23D7CEA08(a1, v3 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void *AXRViewInReaderService.init(store:)(void *a1)
{
  sub_23D7CEA08(a1, v1 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXRViewInReaderService();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23D7D045C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for AXRArticle(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23D80D4EC();
  if (result)
  {
    v9 = result;
    v60 = 0xD000000000000020;
    v61 = 0x800000023D816520;
    sub_23D80E21C();
    if (*(v9 + 16) && (v10 = sub_23D7AC760(v57), (v11 & 1) != 0))
    {
      sub_23D793694(*(v9 + 56) + 32 * v10, &v60);
      sub_23D7AF764(v57);
      v12 = swift_dynamicCast();
      v13 = v55;
      if (!v12)
      {
        v13 = 0;
      }

      v54 = v13;
      if (v12)
      {
        v14 = v56;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v57);
      v54 = 0;
      v14 = 0;
    }

    v60 = 0xD000000000000021;
    v61 = 0x800000023D816550;
    sub_23D80E21C();
    if (*(v9 + 16) && (v15 = sub_23D7AC760(v57), (v16 & 1) != 0))
    {
      sub_23D793694(*(v9 + 56) + 32 * v15, &v60);
      sub_23D7AF764(v57);
      v17 = swift_dynamicCast();
      v18 = v55;
      if (!v17)
      {
        v18 = 0;
      }

      v53 = v18;
      if (v17)
      {
        v19 = v56;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v57);
      v53 = 0;
      v19 = 0;
    }

    v60 = 0xD000000000000020;
    v61 = 0x800000023D816580;
    sub_23D80E21C();
    if (*(v9 + 16) && (v20 = sub_23D7AC760(v57), (v21 & 1) != 0))
    {
      sub_23D793694(*(v9 + 56) + 32 * v20, &v60);
      sub_23D7AF764(v57);
      v22 = swift_dynamicCast();
      v23 = v55;
      if (!v22)
      {
        v23 = 0;
      }

      v52 = v23;
      if (v22)
      {
        v24 = v56;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      sub_23D7AF764(v57);
      v52 = 0;
      v24 = 0;
    }

    v60 = 0xD00000000000001ELL;
    v61 = 0x800000023D8165B0;
    sub_23D80E21C();
    if (*(v9 + 16) && (v25 = sub_23D7AC760(v57), (v26 & 1) != 0))
    {
      sub_23D793694(*(v9 + 56) + 32 * v25, &v60);
      sub_23D7AF764(v57);

      v27 = swift_dynamicCast();
      if (v27)
      {
        v28 = v55;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v56;
      }

      else
      {
        v29 = 0;
      }

      if (!v14)
      {
        goto LABEL_41;
      }
    }

    else
    {

      sub_23D7AF764(v57);
      v28 = 0;
      v29 = 0;
      if (!v14)
      {
LABEL_41:
      }
    }

    if (v19 && v24 && v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43C8, &unk_23D811FC0);
      v51 = v1;
      v30 = type metadata accessor for AXRTextContent(0);
      v50 = v14;
      v31 = (v30 - 8);
      v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
      v33 = swift_allocObject();
      v49 = v33;
      *(v33 + 16) = xmmword_23D80FB00;
      v34 = v33 + v32;
      v35 = sub_23D80D5BC();
      (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
      v36 = v31[15];
      *(v34 + v36) = 0;
      sub_23D80D66C();
      v37 = (v34 + v31[7]);
      *v37 = v52;
      v37[1] = v24;
      *(v34 + v31[8]) = 0;
      *(v34 + v31[11]) = 0;
      sub_23D7D0FB0(v4, v34 + v31[12]);
      v38 = v34 + v31[9];
      *v38 = 1;
      *(v38 + 8) = 0;
      *(v34 + v31[10]) = 0;
      *(v34 + v31[13]) = 0;
      *(v34 + v31[14]) = 0;
      v39 = *(v34 + v36);
      *(v34 + v36) = 0;

      v40 = v5[9];
      v41 = sub_23D80D63C();
      (*(*(v41 - 8) + 56))(&v7[v40], 1, 1, v41);
      sub_23D80D66C();
      v42 = &v7[v5[5]];
      v43 = v50;
      *v42 = v54;
      *(v42 + 1) = v43;
      v44 = &v7[v5[6]];
      *v44 = v53;
      *(v44 + 1) = v19;
      v45 = &v7[v5[7]];
      *v45 = v28;
      *(v45 + 1) = v29;
      *&v7[v5[8]] = v49;
      v7[v5[10]] = 0;
      v7[v5[11]] = 0;
      sub_23D7CEA08(v51 + OBJC_IVAR____TtC23AccessibilityReaderData22AXRViewInReaderService_store, v57);
      v46 = v58;
      v47 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      (*(v47 + 16))(v7, v46, v47);
      sub_23D7B4844(v7);
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    goto LABEL_41;
  }

  return result;
}
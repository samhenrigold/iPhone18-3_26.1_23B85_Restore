void sub_1B4896AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t static RecentsListItemViewHelper.shouldUseCompactHorizontalLayout.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB8A2B00 = a1;
  return result;
}

uint64_t sub_1B4897524()
{
  type metadata accessor for TaskQueue();
  v0 = TaskQueue.__allocating_init()();
  if (qword_1EB8A3BD0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B48E65A4();
  __swift_project_value_buffer(v1, qword_1EB8A3BD8);
  v2 = sub_1B48E6584();
  v3 = sub_1B48E6AC4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B4894000, v2, v3, "Starting TipKitHelper taskQueue with delayed start.", v4, 2u);
    MEMORY[0x1B8C7A710](v4, -1, -1);
  }

  (*(*v0 + 128))(&unk_1B48EC140, 0);

  qword_1EB8A3C80 = v0;
  return result;
}

uint64_t sub_1B4897680()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27E8, &qword_1B48ECE58);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t TaskQueue.__allocating_init(priority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v3 = sub_1B48E6A74();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t sub_1B489772C()
{
  v0 = sub_1B48E65A4();
  __swift_allocate_value_buffer(v0, qword_1EB8A3BD8);
  __swift_project_value_buffer(v0, qword_1EB8A3BD8);
  return sub_1B48E6594();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B4897848(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  os_unfair_lock_lock((v2 + 112));
  v8 = *(v2 + 120);
  v9 = sub_1B48E6A74();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  v11 = sub_1B48C5FA4(0, 0, v7, &unk_1B48ECDE0, v10);
  *(v2 + 120) = v11;

  os_unfair_lock_unlock((v2 + 112));
  return v11;
}

uint64_t sub_1B4897984()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B48979CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B4897A50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4898804;

  return sub_1B4897D1C(a1, v4);
}

uint64_t sub_1B4897B08()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B4898804;

  return sub_1B4897BB0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1B4897BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[4] = v8;
    *v8 = v6;
    v8[1] = sub_1B4898528;
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v8, a4, v9);
  }

  else
  {
    v12 = (a5 + *a5);
    v10 = swift_task_alloc();
    v6[5] = v10;
    *v10 = v6;
    v10[1] = sub_1B4898710;

    return v12();
  }
}

uint64_t sub_1B4897D1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B48988FC;

  return v6(a1);
}

uint64_t sub_1B4897E14()
{
  v1 = sub_1B48E6B44();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4897ED0, 0, 0);
}

uint64_t sub_1B4897ED0()
{
  sub_1B48E6B34();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B48C65EC;

  return sub_1B4897F9C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1B4897F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B48E6B24();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B48980E4, 0, 0);
}

uint64_t sub_1B489809C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B48980E4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B48E6B44();
  v5 = sub_1B489809C(&qword_1EB8A21F0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B48E6BD4();
  sub_1B489809C(&qword_1EB8A21F8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B48E6B54();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B48C5588;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

id TPStringForNumberPadCharacter(int a1)
{
  if (TPStringForNumberPadCharacter_onceToken != -1)
  {
    TPStringForNumberPadCharacter_cold_1();
  }

  if (a1 >= [TPStringForNumberPadCharacter_numberPadStrings count])
  {
    v2 = 0;
  }

  else
  {
    v2 = [TPStringForNumberPadCharacter_numberPadStrings objectAtIndexedSubscript:a1];
  }

  return v2;
}

void __TPStringForNumberPadCharacter_block_invoke()
{
  v0 = TPStringForNumberPadCharacter_numberPadStrings;
  TPStringForNumberPadCharacter_numberPadStrings = &unk_1F2CB11D8;
}

uint64_t sub_1B4898528()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4898624, 0, 0);
}

uint64_t sub_1B4898624()
{
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B4898710;

  return v3();
}

uint64_t sub_1B4898710()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4898808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B48988FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B4898ACC(void *a1)
{
  v2 = sub_1B48E65C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B48E6604();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = a1;
  sub_1B48E65E4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC350], v2);
  sub_1B48E65D4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v13[3] = sub_1B48E6634();
  v13[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1B48E6644();
  sub_1B48E6AD4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

BOOL TPNumberPadKeyInitializeMetrics()
{
  if (thinFont)
  {
    CFRelease(thinFont);
  }

  if (lightFont)
  {
    CFRelease(lightFont);
  }

  if (regularFont)
  {
    CFRelease(regularFont);
  }

  if (semiBoldFont)
  {
    CFRelease(semiBoldFont);
  }

  if (boldFont)
  {
    CFRelease(boldFont);
  }

  thinFont = CTFontDescriptorCreateWithTextStyle();
  lightFont = CTFontDescriptorCreateWithTextStyle();
  regularFont = CTFontDescriptorCreateWithTextStyle();
  semiBoldFont = CTFontDescriptorCreateWithTextStyle();
  boldFont = CTFontDescriptorCreateWithTextStyle();
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = whiteColor;
  whiteColor = v0;

  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = blackColor;
  blackColor = v2;

  result = UIAccessibilityIsBoldTextEnabled();
  isBold = result;
  return result;
}

BOOL TPNumberPadKeyResetLocale()
{
  v0 = MEMORY[0x1E69AAE08];
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 numberingSystemForLocaleID:v2];
  useIndicDigits = [v3 isEqualToString:@"latn"] ^ 1;

  return TPNumberPadKeyInitializeMetrics();
}

id TPDefaultLog(uint64_t a1)
{
  if (TPDefaultLog_onceToken != -1)
  {
    TPDefaultLog_cold_1();
  }

  v2 = TPDefaultLog_TPDefaultLog;

  return v2;
}

uint64_t static TPTipsHelper.taskQueue.getter()
{
  if (qword_1EB8A3C78 != -1)
  {
    swift_once();
  }
}

uint64_t static TPTipsHelper.shared.getter()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  v1[3] = swift_task_alloc();
  v2 = sub_1B48E6B44();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = sub_1B48E6A44();
  v1[8] = sub_1B48E6A34();
  v4 = sub_1B48E6A24();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B489A1B0, v4, v3);
}

uint64_t sub_1B489A1B0()
{
  if (qword_1EB8A3C90)
  {
    v1 = qword_1EB8A3C90;

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    if (qword_1EB8A3BD0 != -1)
    {
      swift_once();
    }

    v4 = sub_1B48E65A4();
    __swift_project_value_buffer(v4, qword_1EB8A3BD8);
    v5 = sub_1B48E6584();
    v6 = sub_1B48E6AC4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B4894000, v5, v6, "TipKit is initializing", v7, 2u);
      MEMORY[0x1B8C7A710](v7, -1, -1);
    }

    sub_1B48E6B34();
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_1B48C4FE8;

    return sub_1B4897F9C(1000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1B489A3F0(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  if (*(v5 + 16) && (v6 = sub_1B48C9A94(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    sub_1B48E66F4();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 32;
      do
      {
        sub_1B48CADD0(v10, v15);

        sub_1B48CAE08(v15);
        sub_1B48E6A94();

        v10 += 56;
        --v9;
      }

      while (v9);
    }

    v11 = (*((*v4 & *v2) + 0x90))(v15);
    sub_1B48C6F94(0, v3);
    v11(v15, 0);
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v12 = (*((*v4 & *v2) + 0xA8))(v14);
    sub_1B48C7054(v15, v3);
    return v12(v14, 0);
  }

  else
  {
  }
}

uint64_t sub_1B489A678(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  sub_1B48E6934();
  return swift_endAccess();
}

uint64_t sub_1B489A910()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B489A950()
{
  MEMORY[0x1B8C7A780](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B489A988()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B489A9C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B489AA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B489AAA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B489AAF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B489AB00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B489AB3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__CFString *_TPInComingCallUISnapshotOverlayAttachmentIdentifierStringForStyle(uint64_t a1)
{
  v1 = @"TPUI_MobileLabel";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 3)
  {
    return @"TPUI_MobileLabelAndBottomBarAndInfoLabel";
  }

  else
  {
    return v1;
  }
}

void sub_1B489C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B489C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B489D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_ptr;
  v7 = getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_ptr;
  if (!getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_ptr)
  {
    v1 = PosterBoardUIServicesLibrary();
    v5[3] = dlsym(v1, "PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel");
    getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B489D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B489DF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRPosterLabelClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7C0C130;
    v5 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    __getPRPosterLabelClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PRPosterLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterLabelClass_block_invoke_cold_1();
  }

  getPRPosterLabelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNImageDerivedColorGeneratorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7C0C168;
    v5 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    __getCNImageDerivedColorGeneratorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNImageDerivedColorGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNImageDerivedColorGeneratorClass_block_invoke_cold_1();
  }

  getCNImageDerivedColorGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterBoardUIServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __PosterBoardUIServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7C0C180;
    v4 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PosterBoardUIServicesLibraryCore_frameworkLibrary;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    PosterBoardUIServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterAppearanceObservingAttachmentProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke_cold_1();
  }

  getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISIncomingCallPosterContextClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISIncomingCallPosterContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISIncomingCallPosterContextClass_block_invoke_cold_1();
  }

  getPRUISIncomingCallPosterContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISIncomingCallSnapshotDefinition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke_cold_1();
  }

  getPRUISIncomingCallSnapshotDefinitionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISMutablePosterSnapshotRequestClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISMutablePosterSnapshotRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISMutablePosterSnapshotRequestClass_block_invoke_cold_1();
  }

  getPRUISMutablePosterSnapshotRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISPosterAttachmentConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterAttachmentConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterAttachmentConfigurationClass_block_invoke_cold_1();
  }

  getPRUISPosterAttachmentConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPRUISPosterSnapshotControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  result = objc_getClass("PRUISPosterSnapshotController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRUISPosterSnapshotControllerClass_block_invoke_cold_1();
  }

  getPRUISPosterSnapshotControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id TPCreateImageWithDrawing(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (fabs(a4) < 2.22044605e-16)
  {
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];
    a4 = v9;
  }

  CGContext = TPImageDrawingCreateCGContext(a2, a3, a4);
  Width = CGBitmapContextGetWidth(CGContext);
  Height = CGBitmapContextGetHeight(CGContext);
  if (v7)
  {
    v7[2](v7, CGContext, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), Width, Height);
  }

  Image = CGBitmapContextCreateImage(CGContext);
  v14 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:a4];
  CGImageRelease(Image);
  CGContextRelease(CGContext);

  return v14;
}

CGContext *TPImageDrawingCreateCGContext(double a1, double a2, double a3)
{
  v3 = a3;
  if (fabs(a3) < 2.22044605e-16)
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v3 = v7;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(0, vcvtpd_u64_f64(a1 * v3), vcvtpd_u64_f64(a2 * v3), 8uLL, 0, DeviceRGB, 0x2002u);
  CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
  CGContextSetFillColorSpace(v9, DeviceRGB);
  CGColorSpaceRelease(DeviceRGB);
  return v9;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t _MKBGetDeviceLockState()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v6 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v2[3] = &unk_1E7C0C110;
    v2[4] = &v3;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    _MKBGetDeviceLockState_cold_1();
  }

  return v0(0);
}

void sub_1B48ABC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7C0C388;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B48ADBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B48ADD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B48AE080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B48AE56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B48AE7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B48AE970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B48AEB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TelephonyUIBundle(uint64_t a1, uint64_t a2)
{
  v2 = __TelephonyUIBundle;
  if (!__TelephonyUIBundle)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = __TelephonyUIBundle;
    __TelephonyUIBundle = v3;

    v2 = __TelephonyUIBundle;
  }

  return v2;
}

uint64_t TPIsUnknown(uint64_t a1, uint64_t a2)
{
  if (TPIsUnknown_onceToken != -1)
  {
    TPIsUnknown_cold_1();
  }

  return TPIsUnknown_isUnknown;
}

void __TPIsUnknown_block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;

  v6 = 0;
  if (v3 >= 2208)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v6 = 1;
    }
  }

  TPIsUnknown_isUnknown = v6;
}

double TPMainScreenScale(uint64_t a1, uint64_t a2)
{
  if (TPMainScreenScale_once != -1)
  {
    TPMainScreenScale_cold_1();
  }

  return *&TPMainScreenScale_sMainScreenScale;
}

void __TPMainScreenScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  TPMainScreenScale_sMainScreenScale = v0;
}

double TPPixelCGCeiling(uint64_t a1, uint64_t a2, double a3)
{
  if (TPMainScreenScale_once != -1)
  {
    TPMainScreenScale_cold_1();
  }

  return ceil(*&TPMainScreenScale_sMainScreenScale * a3) / *&TPMainScreenScale_sMainScreenScale;
}

double TPPixelCGFloor(uint64_t a1, uint64_t a2, double a3)
{
  if (TPMainScreenScale_once != -1)
  {
    TPMainScreenScale_cold_1();
  }

  return floor(*&TPMainScreenScale_sMainScreenScale * a3) / *&TPMainScreenScale_sMainScreenScale;
}

CGFloat TPRectIntegral(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  if (v9 == 1.0)
  {
    v11.origin.x = a1;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    *&a1 = CGRectIntegral(v11);
  }

  return a1;
}

void sub_1B48B36E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __TPDefaultLog_block_invoke()
{
  TPDefaultLog_TPDefaultLog = os_log_create("com.apple.calls.telephonyui", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id __imageForRoundedRectProperties(uint64_t a1, __n128 a2, __n128 a3)
{
  if (!a1)
  {
    __imageForRoundedRectProperties_cold_1();
  }

  v4 = *MEMORY[0x1E695F060] == *a1 && *(MEMORY[0x1E695F060] + 8) == *(a1 + 8);
  if (v4 || !__TPRoundedRectPathIsValid((a1 + 16)))
  {
    v17 = 0;
  }

  else
  {
    if (__imageForRoundedRectProperties___once != -1)
    {
      __imageForRoundedRectProperties_cold_2();
    }

    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    BSSizeCeilForScale();
    v7 = v6;
    v9 = v8;

    v10 = __imageForRoundedRectProperties___imageCache;
    v11 = MEMORY[0x1E696AEC0];
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"__path{rect=[{%.2f, %.2f}{%.2f, %.2f}], radius:%.2f}", *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48)];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"__path{rect=[{%.2f, %.2f}{%.2f, %.2f}], radius:%.2f}", *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
    v16 = [v11 stringWithFormat:@"__key{size={%.2f, %.2f}, op=%@, ip=%@, circle:%d, drawsOutside:%d}", *&v12, v13, v14, v15, *(a1 + 96), *(a1 + 97)];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ____imageForRoundedRectProperties_block_invoke_2;
    v19[3] = &__block_descriptor_56_e18___UIImage_16__0_Q8l;
    v19[4] = v7;
    v19[5] = v9;
    v19[6] = a1;
    v17 = [v10 imageForKey:v16 generatingIfNecessaryWithBlock:v19];
  }

  return v17;
}

void ____imageForRoundedRectProperties_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E698E7F0]);
  v3 = +[TPRevealingRingView classIdentifier];
  v1 = [v0 initWithUniqueIdentifier:v3];
  v2 = __imageForRoundedRectProperties___imageCache;
  __imageForRoundedRectProperties___imageCache = v1;
}

id ____imageForRoundedRectProperties_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  UIGraphicsBeginImageContextWithOptions(*(a1 + 32), 0, v3);

  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setFill];

  v5 = *(a1 + 48);
  if (*(v5 + 97) == 1)
  {
    v11.origin.x = *MEMORY[0x1E695EFF8];
    v11.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v11.size.width = *(a1 + 32);
    v11.size.height = *(a1 + 40);
    UIRectFill(v11);
    v6 = __bezierPathFromInfo(*(*(a1 + 48) + 96), (*(a1 + 48) + 16));
    [v6 fillWithBlendMode:16 alpha:1.0];
  }

  else
  {
    v6 = __bezierPathFromInfo(*(v5 + 96), (v5 + 16));
    if (__TPRoundedRectPathIsValid((*(a1 + 48) + 56)))
    {
      v7 = __bezierPathFromInfo(*(*(a1 + 48) + 96), (*(a1 + 48) + 56));
      [v6 appendPath:v7];

      [v6 setUsesEvenOddFillRule:1];
    }

    [v6 fill];
  }

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

id __bezierPathFromInfo(int a1, double *a2)
{
  if (a1)
  {
    [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{*a2, a2[1], a2[2], a2[3]}];
  }

  else
  {
    [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*a2 cornerRadius:{a2[1], a2[2], a2[3], a2[4]}];
  }
  v2 = ;

  return v2;
}

BOOL __TPRoundedRectPathIsValid(CGRect *a1)
{
  if (CGRectEqualToRect(*a1, *MEMORY[0x1E695F050]))
  {
    return 0;
  }

  if (a1->size.height == *(MEMORY[0x1E695F060] + 8))
  {
    return a1->size.width != *MEMORY[0x1E695F060];
  }

  return 1;
}

id getPRIncomingCallTextViewAdapterWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRIncomingCallTextViewAdapterWrapperClass_softClass;
  v7 = getPRIncomingCallTextViewAdapterWrapperClass_softClass;
  if (!getPRIncomingCallTextViewAdapterWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke;
    v3[3] = &unk_1E7C0C110;
    v3[4] = &v4;
    __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B48BE3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPRIncomingCallMetricsProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRIncomingCallMetricsProviderClass_softClass;
  v7 = getPRIncomingCallMetricsProviderClass_softClass;
  if (!getPRIncomingCallMetricsProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRIncomingCallMetricsProviderClass_block_invoke;
    v3[3] = &unk_1E7C0C110;
    v3[4] = &v4;
    __getPRIncomingCallMetricsProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B48BE708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRIncomingCallTextViewAdapterWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke_cold_1();
  }

  getPRIncomingCallTextViewAdapterWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PosterKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __PosterKitLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7C0C6B8;
    v2 = 0;
    PosterKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary_0)
  {
    PosterKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __PosterKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPRIncomingCallMetricsProviderClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRIncomingCallMetricsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRIncomingCallMetricsProviderClass_block_invoke_cold_1();
  }

  getPRIncomingCallMetricsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _userNotificationHandler(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [pendingAlerts copy];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 userNotification] == a1)
        {
          v10 = 0;
          if (a2 > 1)
          {
            if (a2 == 2)
            {
              [v9 otherResponse];
              v10 = 3;
            }

            else if (a2 == 3)
            {
              v10 = 4;
            }
          }

          else if (a2)
          {
            if (a2 == 1)
            {
              [v9 alternateResponse];
              v10 = 2;
            }
          }

          else
          {
            [v9 defaultResponse];
            v10 = 1;
          }

          [pendingAlerts removeObject:v9];
          v11 = [v9 completion];

          if (v11)
          {
            v12 = [v9 completion];
            v12[2](v12, v10);
          }

          goto LABEL_21;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

uint64_t RecentsCallItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v1);
  return sub_1B48E6C24();
}

uint64_t sub_1B48C480C()
{
  v1 = *v0;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v1);
  return sub_1B48E6C24();
}

uint64_t sub_1B48C4880(uint64_t a1)
{
  v2 = *v1;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v2);
  return sub_1B48E6C24();
}

unint64_t sub_1B48C48C8()
{
  result = qword_1EB8A2178;
  if (!qword_1EB8A2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2178);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecentsCallItemStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentsCallItemStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B48C4C4C(uint64_t a1, uint64_t a2)
{
  sub_1B48C4CE0();
  v2 = sub_1B48DECB0();
  v3 = sub_1B48E64A4();

  return v3;
}

unint64_t sub_1B48C4CE0()
{
  result = qword_1EB8A2130;
  if (!qword_1EB8A2130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A2130);
  }

  return result;
}

uint64_t TPTipsHelper.Entry.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v1);
  return sub_1B48E6C24();
}

uint64_t sub_1B48C4DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TPTipsHelper.Entry.init(_:tip:observationTask:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = sub_1B48C4E8C(a2, a4 + 8);
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_1B48C4E8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1B48C4EA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2688, &qword_1B48EC148);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B48EBF10;
  v1 = sub_1B48CBC70();
  *(v0 + 32) = &type metadata for FavoritesTip;
  *(v0 + 40) = v1;
  v2 = sub_1B48CBB64();
  *(v0 + 48) = &type metadata for RecentsSaveAsContactTip;
  *(v0 + 56) = v2;
  v3 = sub_1B48CBCC4();
  *(v0 + 64) = &type metadata for RecentsSaveAsFavoritesTip;
  *(v0 + 72) = v3;
  v4 = sub_1B48CBD18();
  *(v0 + 80) = &type metadata for RecentsBrandedCallingTip;
  *(v0 + 88) = v4;
  v5 = sub_1B48CBD6C();
  *(v0 + 96) = &type metadata for RecentsUnknownCallersTip;
  *(v0 + 104) = v5;
  v6 = sub_1B48CBDC0();
  *(v0 + 112) = &type metadata for LiveVoicemailTip;
  *(v0 + 120) = v6;
  v7 = sub_1B48CBE14();
  *(v0 + 128) = &type metadata for FaceTimeLinkTip;
  *(v0 + 136) = v7;
  v8 = sub_1B48CBE68();
  *(v0 + 144) = &type metadata for FaceInFrameTip;
  *(v0 + 152) = v8;
  v9 = sub_1B48CBEBC();
  *(v0 + 160) = &type metadata for VideoReactionPickerTip;
  *(v0 + 168) = v9;
  v10 = sub_1B48CBF10();
  *(v0 + 176) = &type metadata for SOSMiniTip;
  *(v0 + 184) = v10;
  v11 = sub_1B48CBF64();
  *(v0 + 192) = &type metadata for CallHistorySearchTip;
  *(v0 + 200) = v11;
  v12 = sub_1B48CBFB8();
  *(v0 + 208) = &type metadata for WaitOnHoldTip;
  *(v0 + 216) = v12;
  v13 = sub_1B48CC00C();
  *(v0 + 224) = &type metadata for FilterUnknownCallersTip;
  *(v0 + 232) = v13;
  v14 = sub_1B48CC060();
  *(v0 + 240) = &type metadata for FilterUnknownFaceTimeCallersTip;
  *(v0 + 248) = v14;
  result = sub_1B48CC0B4();
  *(v0 + 256) = &type metadata for ScreenUnknownCallersTip;
  *(v0 + 264) = result;
  qword_1EB8A4098 = v0;
  return result;
}

uint64_t sub_1B48C4FE8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B48CC17C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1B48C517C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B48C517C()
{

  v1 = [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = sub_1B48E69D4();
    v5 = [v3 arrayForKey_];

    if (v5)
    {
      v6 = sub_1B48E6A14();

      v7 = sub_1B48C57B0(v6);

      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v27 = v2;
          if (qword_1EB8A4090 != -1)
          {
LABEL_28:
            swift_once();
          }

          v9 = qword_1EB8A4098;
          v28 = qword_1EB8A4098 + 32;
          v10 = MEMORY[0x1E69E7CC0];
          v11 = 32;
          do
          {
            v12 = *(v7 + v11);
            if (v12 < *(v9 + 16))
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

              v29 = *(v28 + 16 * v12);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_1B48C9744(0, *(v10 + 2) + 1, 1, v10);
              }

              v14 = *(v10 + 2);
              v13 = *(v10 + 3);
              if (v14 >= v13 >> 1)
              {
                v10 = sub_1B48C9744((v13 > 1), v14 + 1, 1, v10);
              }

              *(v10 + 2) = v14 + 1;
              *&v10[16 * v14 + 32] = v29;
              if (v12 >= *(v9 + 16))
              {
                goto LABEL_27;
              }

              if (swift_dynamicCastMetatype())
              {
                static FilterUnknownCallersTip.didDisplay.setter(0);
              }

              else if (swift_dynamicCastMetatype())
              {
                static FilterUnknownFaceTimeCallersTip.didDisplay.setter(0);
              }

              else if (swift_dynamicCastMetatype())
              {
                static ScreenUnknownCallersTip.didDisplay.setter(0);
              }
            }

            v11 += 8;
            --v8;
          }

          while (v8);

          sub_1B48E66E4();

          v2 = v27;
        }

        else
        {
        }
      }
    }
  }

  v15 = v0[2];
  v16 = v0[3];
  sub_1B48E6A54();
  v17 = sub_1B48E6A74();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = v2;
  v19 = sub_1B48E6A34();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v2;
  v20[5] = v15;
  sub_1B48C5FA4(0, 0, v16, &unk_1B48EBF68, v20);

  v22 = [objc_allocWithZone(type metadata accessor for TPTipsHelper()) init];
  v23 = qword_1EB8A3C90;
  qword_1EB8A3C90 = v22;
  v24 = v22;

  v25 = v0[1];

  return v25(v24);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B48C5588()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B48C5744, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B48C5744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B48C57B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B48C9970(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B48CC108(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B48C9970((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B48C58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B48E6A44();
  *(v4 + 24) = sub_1B48E6A34();
  v6 = sub_1B48E6A24();

  return MEMORY[0x1EEE6DFA0](sub_1B48C5954, v6, v5);
}

uint64_t sub_1B48C5954()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2708, &unk_1B48EC170);
  sub_1B48E6864();
  *(swift_allocObject() + 16) = xmmword_1B48EBF20;
  v1 = sub_1B48E67E4();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  sub_1B48E67D4();
  sub_1B48E67F4();
  (*(v2 + 8))(v3, v1);

  v4 = sub_1B48E6814();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  sub_1B48E6804();
  sub_1B48E6824();
  (*(v5 + 8))(v6, v4);

  v7 = sub_1B48E6844();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  sub_1B48E6834();
  sub_1B48E6854();
  (*(v8 + 8))(v9, v7);

  sub_1B48E6954();

  if (qword_1EB8A3BD0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v10 = sub_1B48E65A4();
  __swift_project_value_buffer(v10, qword_1EB8A3BD8);
  v11 = sub_1B48E6584();
  v12 = sub_1B48E6AC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B4894000, v11, v12, "TipKit has been initialized", v13, 2u);
    MEMORY[0x1B8C7A710](v13, -1, -1);
  }

  v14 = *(v0 + 16);

  if (v14)
  {
    v15 = *(v0 + 16);
    v16 = sub_1B48E69D4();
    v17 = [v15 arrayForKey_];

    if (v17)
    {
      v18 = sub_1B48E6A14();

      v19 = sub_1B48C57B0(v18);

      if (v19)
      {
        v20 = *(v19 + 16);
        if (v20)
        {
          if (qword_1EB8A4090 != -1)
          {
            swift_once();
          }

          v21 = qword_1EB8A4098;
          v22 = 32;
          while (1)
          {
            v23 = *(v19 + v22);
            if (v23 < *(v21 + 16))
            {
              if (v23 < 0)
              {
                __break(1u);
                goto LABEL_26;
              }

              if (swift_dynamicCastMetatype())
              {
                static FilterUnknownCallersTip.didDisplay.setter(0);
              }

              else if (swift_dynamicCastMetatype())
              {
                static FilterUnknownFaceTimeCallersTip.didDisplay.setter(0);
              }

              else if (swift_dynamicCastMetatype())
              {
                static ScreenUnknownCallersTip.didDisplay.setter(0);
              }
            }

            v22 += 8;
            if (!--v20)
            {

              v24 = sub_1B48E6A04();
              v25 = sub_1B48E69D4();
              [v15 setObject:v24 forKey:v25];

              goto LABEL_22;
            }
          }
        }
      }
    }
  }

LABEL_22:
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B48C5F10()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4898804;

  return sub_1B48C58BC(v3, v4, v5, v2);
}

uint64_t sub_1B48C5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B48CBC08(a3, v25 - v10, &qword_1EB8A25F0, &qword_1B48EBF50);
  v12 = sub_1B48E6A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B48979CC(v11, &qword_1EB8A25F0, &qword_1B48EBF50);
  }

  else
  {
    sub_1B48E6A64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B48E6A24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B48E69F4() + 32;
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

      sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);

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

  sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);
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

uint64_t sub_1B48C62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B48CBC08(a3, v25 - v10, &qword_1EB8A25F0, &qword_1B48EBF50);
  v12 = sub_1B48E6A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B48979CC(v11, &qword_1EB8A25F0, &qword_1B48EBF50);
  }

  else
  {
    sub_1B48E6A64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B48E6A24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B48E69F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2650, &qword_1B48EC108);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);

      return v22;
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

  sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2650, &qword_1B48EC108);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id TPTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B48C65EC()
{
  v2 = *v1;
  v3 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);

    return MEMORY[0x1EEE6DFA0](sub_1B48C67B4, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1B48C67B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_1B48C6814()
{
  if (qword_1EB8A3C78 != -1)
  {
    swift_once();
  }

  return &qword_1EB8A3C80;
}

void *sub_1B48C68B8()
{
  v1 = OBJC_IVAR___TPTipsHelper_Swift_popoverController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B48C6964(uint64_t a1)
{
  v3 = OBJC_IVAR___TPTipsHelper_Swift_popoverController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B48C69BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1B48C6A18(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1B48C6AEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1B48C6B48(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v3 = sub_1B48E66F4();
  return v2(v3);
}

uint64_t sub_1B48C6C24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1B48C6C80(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v3 = sub_1B48E66F4();
  return v2(v3);
}

uint64_t sub_1B48C6CFC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1B48C6DB8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  if (*(v6 + 16) && (v7 = sub_1B48C9A94(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    sub_1B48E66F4();
  }

  else
  {

    v10 = (*((*v5 & *v2) + 0x90))(v21);
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v12;
    *v12 = 0x8000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B48CA3D4(MEMORY[0x1E69E7CC0], v4, isUniquelyReferenced_nonNull_native);
    *v12 = v23;
    v10(v21, 0);
  }

  sub_1B48CADD0(a1, v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1B48C9848(0, *(v9 + 2) + 1, 1, v9);
  }

  v15 = *(v9 + 2);
  v14 = *(v9 + 3);
  if (v15 >= v14 >> 1)
  {
    v9 = sub_1B48C9848((v14 > 1), v15 + 1, 1, v9);
  }

  *(v9 + 2) = v15 + 1;
  v16 = &v9[56 * v15];
  v17 = v21[0];
  v18 = v21[1];
  v19 = v21[2];
  *(v16 + 10) = v22;
  *(v16 + 3) = v18;
  *(v16 + 4) = v19;
  *(v16 + 2) = v17;
}

uint64_t sub_1B48C6F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1B48CA3D4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1B48C9A94(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B48CA6BC();
        v11 = v13;
      }

      result = sub_1B48CA0A0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1B48C7054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1B48C4E8C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1B48CA520(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1B48979CC(a1, &qword_1EB8A2660, &qword_1B48EC118);
    v7 = sub_1B48C9A94(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B48CA818();
        v11 = v13;
      }

      sub_1B48C4E8C((*(v11 + 56) + 40 * v9), v14);
      sub_1B48CA234(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1B48979CC(v14, &qword_1EB8A2660, &qword_1B48EC118);
  }

  return result;
}

uint64_t sub_1B48C725C(uint64_t a1)
{
  v1[2] = a1;
  sub_1B48E6A44();
  v1[3] = sub_1B48E6A34();
  v3 = sub_1B48E6A24();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B48C72F4, v3, v2);
}

uint64_t sub_1B48C72F4()
{
  sub_1B48E6574();
  v1 = sub_1B48E69E4();
  v3 = v2;
  v0[6] = v2;
  v4 = sub_1B48E69E4();
  v6 = v5;
  v0[7] = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B48C73EC;

  return MEMORY[0x1EEE49A88](v1, v3, v4, v6, 0);
}

uint64_t sub_1B48C73EC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1B48CC178;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1B48C7560;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B48C7560()
{
  v1 = v0[9];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B48C7638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, char *, uint64_t, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1B48E6A74();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1B48E6A44();
  v9 = sub_1B48E6A34();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  a3(0, 0, v7, a2, v10);
}

uint64_t sub_1B48C7750()
{
  sub_1B48E6A44();
  v0[2] = sub_1B48E6A34();
  v2 = sub_1B48E6A24();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B48C77E4, v2, v1);
}

uint64_t sub_1B48C77E4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  v3 = sub_1B48E69E4();
  v5 = v4;
  if (v2)
  {
  }

  v0[5] = v5;
  sub_1B48E6574();
  v6 = sub_1B48E69E4();
  v8 = v7;
  v0[6] = v7;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1B48C793C;

  return MEMORY[0x1EEE49A88](v6, v8, v3, v5, 0);
}

uint64_t sub_1B48C793C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1B48CC188;
  }

  else
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1B48C7AAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1B48C7AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B48C7B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1B48E6A74();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1B48E6A44();
  v11 = sub_1B48E6A34();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  a5(0, 0, v9, a4, v12);
}

uint64_t sub_1B48C7C58()
{
  sub_1B48D282C(0);
  v0 = sub_1B48D2024();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  (*(v2 + 16))(&v6 - v3, v0, v1);
  sub_1B48E68C4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1B48C7EBC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, v1, v2);
  sub_1B48E68C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B48C7FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, v3, v4);
  sub_1B48E68C4();
  return (*(v5 + 8))(v7, v4);
}

id TPTipsHelper.init()()
{
  *&v0[OBJC_IVAR___TPTipsHelper_Swift_popoverController] = 0;
  v1 = OBJC_IVAR___TPTipsHelper_Swift_entries;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_1B48CABA0(MEMORY[0x1E69E7CC0]);
  v3 = OBJC_IVAR___TPTipsHelper_Swift_currentTip;
  *&v0[v3] = sub_1B48CACB0(v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TPTipsHelper();
  return objc_msgSendSuper2(&v5, sel_init);
}

double sub_1B48C8264()
{
  v1 = v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1B48C82B0(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset);
  v10 = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return (*((*MEMORY[0x1E69E7D40] & *v4) + 0xC0))(v10);
}

uint64_t (*sub_1B48C8350(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B48C83B4;
}

uint64_t TPTipHeaderView.displaysBottomSeparator.getter()
{
  v1 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B48C8404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B48C845C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC0))(v5);
}

uint64_t TPTipHeaderView.displaysBottomSeparator.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v4);
}

uint64_t (*TPTipHeaderView.displaysBottomSeparator.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B48CC184;
}

uint64_t sub_1B48C85CC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xC0))(result);
  }

  return result;
}

uint64_t sub_1B48C8630@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1B48C868C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B48C86F4()
{
  v1 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B48C8740(void *a1)
{
  v3 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1B48C92CC();
}

void (*sub_1B48C87A8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B48C880C;
}

void sub_1B48C880C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1B48C92CC();
  }
}

void *TPTipHeaderView.init(frame:separatorInset:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = &v8[OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset];
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  *v17 = *MEMORY[0x1E69DDCE0];
  v17[1] = v18;
  *&v8[OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_bottomSeparatorView] = 0;
  v8[OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator] = 0;
  *&v8[OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView] = 0;
  v27.receiver = v8;
  v27.super_class = type metadata accessor for TPTipHeaderView();
  v19 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setLayoutMargins_];
  v20 = (v19 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset);
  swift_beginAccess();
  *v20 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  v21 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView;
  swift_beginAccess();
  v22 = *(v19 + v21);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 tertiarySystemFillColor];
    [v24 setBackgroundColor_];
  }

  sub_1B48C92CC();
  (*((*MEMORY[0x1E69E7D40] & *v19) + 0xC8))();

  return v19;
}

id sub_1B48C8AA8(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1B48C8AEC()
{
  v1 = (v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_separatorEdgeInset);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_bottomSeparatorView) = 0;
  *(v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_hostingView) = 0;
  sub_1B48E6B64();
  __break(1u);
}

void sub_1B48C8C24()
{
  v1 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_bottomSeparatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_bottomSeparatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    v4 = *(v0 + v1);
    if (v4)
    {
LABEL_9:
      v13 = v4;
      [v0 addSubview_];
      v14 = [objc_opt_self() mainScreen];
      [v14 scale];
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1B48EBF30;
      v18 = [v13 leadingAnchor];
      v19 = [v0 leadingAnchor];
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
      v21 = [v18 constraintEqualToAnchor:v19 constant:v20];

      *(v17 + 32) = v21;
      v22 = [v13 heightAnchor];
      v23 = [v22 constraintEqualToConstant_];

      *(v17 + 40) = v23;
      v24 = [v13 widthAnchor];
      v25 = [v0 widthAnchor];
      v26 = [v24 constraintEqualToAnchor_];

      *(v17 + 48) = v26;
      v27 = [v0 bottomAnchor];
      v28 = [v13 bottomAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      *(v17 + 56) = v29;
      sub_1B48CB148();
      v30 = sub_1B48E6A04();

      [v0 addConstraints_];

      return;
    }
  }

  v5 = OBJC_IVAR____TtC11TelephonyUI15TPTipHeaderView_displaysBottomSeparator;
  swift_beginAccess();
  if (*(v0 + v5) != 1)
  {
LABEL_8:
    v4 = *(v0 + v1);
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v9 = *(v0 + v1);
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 separatorColor];
    [v11 setBackgroundColor_];

    goto LABEL_8;
  }
}

void sub_1B48C8FC0()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x1E69DDC48];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_1B48CB194;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1B48C90EC;
  v5[3] = &block_descriptor;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

uint64_t sub_1B48C90EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B48E6494();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B48E6484();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B48C9214()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v2 = v1();
  v3 = [v2 superview];

  if (v3)
  {

    v4 = v1();
    [v4 removeFromSuperview];
  }

  sub_1B48C92CC();
}

void sub_1B48C92CC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (v1)
  {
    v2 = v1;
    v20 = [v1 superview];
    if (!v20)
    {
      [v0 addSubview_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1B48EBF30;
      v4 = [v2 leadingAnchor];
      v5 = [v0 layoutMarginsGuide];
      v6 = [v5 leadingAnchor];

      v7 = [v4 constraintEqualToAnchor_];
      *(v3 + 32) = v7;
      v8 = [v2 topAnchor];
      v9 = [v0 layoutMarginsGuide];
      v10 = [v9 topAnchor];

      v11 = [v8 constraintEqualToAnchor_];
      *(v3 + 40) = v11;
      v12 = [v2 trailingAnchor];
      v13 = [v0 layoutMarginsGuide];
      v14 = [v13 trailingAnchor];

      v15 = [v12 constraintEqualToAnchor_];
      *(v3 + 48) = v15;
      v16 = [v0 layoutMarginsGuide];
      v17 = [v16 bottomAnchor];

      v18 = [v2 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor_];

      *(v3 + 56) = v19;
      sub_1B48CB148();
      v20 = sub_1B48E6A04();

      [v0 addConstraints_];
    }
  }
}

id TPTipHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1B48C96C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1B48C9744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2688, &qword_1B48EC148);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B48C9848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2670, &qword_1B48EC128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B48C9970(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B48C9990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B48C9990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2700, &qword_1B48EC150);
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

unint64_t sub_1B48C9A94(uint64_t a1)
{
  v1 = a1;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v1);
  v2 = sub_1B48E6C24();

  return sub_1B48C9B00(v1, v2);
}

unint64_t sub_1B48C9B00(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B48C9B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2678, &qword_1B48EC130);
  v30 = v4;
  result = sub_1B48E6B94();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_1B48E66F4();
      }

      sub_1B48E6C04();
      MEMORY[0x1B8C797D0](v20);
      result = sub_1B48E6C24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B48C9E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2668, &qword_1B48EC120);
  result = sub_1B48E6B94();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_1B48C4E8C(v21, v30);
      }

      else
      {
        sub_1B48C4DE0(v21, v30);
      }

      sub_1B48E6C04();
      MEMORY[0x1B8C797D0](v20);
      result = sub_1B48E6C24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_1B48C4E8C(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B48CA0A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B48E6B04() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1B48E6C04();
      MEMORY[0x1B8C797D0](v9);
      result = sub_1B48E6C24();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B48CA234(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B48E6B04() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      sub_1B48E6C04();
      MEMORY[0x1B8C797D0](v11);
      result = sub_1B48E6C24();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B48CA3D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B48C9A94(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B48C9B70(v14, a3 & 1);
      result = sub_1B48C9A94(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1B48E6BC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B48CA6BC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1B48CA520(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B48C9A94(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B48CA818();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B48C9E00(v14, a3 & 1);
    v9 = sub_1B48C9A94(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1B48E6BC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1B48C4E8C(a1, v20);
  }

  else
  {

    return sub_1B48CA650(v9, a2, a1, v19);
  }
}

uint64_t sub_1B48CA650(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1B48C4E8C(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1B48CA6BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2678, &qword_1B48EC130);
  v2 = *v0;
  v3 = sub_1B48E6B84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1B48E66F4();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B48CA818()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2668, &qword_1B48EC120);
  v2 = *v0;
  v3 = sub_1B48E6B84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_1B48C4DE0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B48C4E8C(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B48CA998(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B48CAA8C;

  return v5(v2 + 32);
}

uint64_t sub_1B48CAA8C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void *sub_1B48CABA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2678, &qword_1B48EC130);
  v3 = sub_1B48E6BA4();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1B48C9A94(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1B48E66F4();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_1B48E66F4();
    v8 = sub_1B48C9A94(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B48CACB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2668, &qword_1B48EC120);
    v3 = sub_1B48E6BA4();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1B48CBC08(i, v10, &qword_1EB8A2680, &qword_1B48EC138);
      result = sub_1B48C9A94(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1B48C4E8C(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B48CB000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4898804;

  return sub_1B48C725C(a1);
}

uint64_t sub_1B48CB098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4898804;

  return sub_1B48C7750();
}

unint64_t sub_1B48CB148()
{
  result = qword_1EB8A2640;
  if (!qword_1EB8A2640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A2640);
  }

  return result;
}

void sub_1B48CB194(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xD0))(a1);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B48CB238()
{
  result = qword_1EB8A2210;
  if (!qword_1EB8A2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2210);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B48CB614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B48CB65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TPTipsHelper.Entry.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TPTipsHelper.Entry.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B48CB8CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B48CB8EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for UIEdgeInsets()
{
  if (!qword_1EB8A2648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB8A2648);
    }
  }
}

uint64_t sub_1B48CB968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4898808;

  return sub_1B48C7750();
}

uint64_t sub_1B48CB9F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4898804;

  return sub_1B48CA998(a1, v4);
}

uint64_t sub_1B48CBAAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4898808;

  return sub_1B48CA998(a1, v4);
}

unint64_t sub_1B48CBB64()
{
  result = qword_1EB8A2658;
  if (!qword_1EB8A2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2658);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1B48CBC08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B48CBC70()
{
  result = qword_1EB8A2690;
  if (!qword_1EB8A2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2690);
  }

  return result;
}

unint64_t sub_1B48CBCC4()
{
  result = qword_1EB8A2698;
  if (!qword_1EB8A2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2698);
  }

  return result;
}

unint64_t sub_1B48CBD18()
{
  result = qword_1EB8A26A0;
  if (!qword_1EB8A26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26A0);
  }

  return result;
}

unint64_t sub_1B48CBD6C()
{
  result = qword_1EB8A26A8;
  if (!qword_1EB8A26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26A8);
  }

  return result;
}

unint64_t sub_1B48CBDC0()
{
  result = qword_1EB8A26B0;
  if (!qword_1EB8A26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26B0);
  }

  return result;
}

unint64_t sub_1B48CBE14()
{
  result = qword_1EB8A26B8;
  if (!qword_1EB8A26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26B8);
  }

  return result;
}

unint64_t sub_1B48CBE68()
{
  result = qword_1EB8A26C0;
  if (!qword_1EB8A26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26C0);
  }

  return result;
}

unint64_t sub_1B48CBEBC()
{
  result = qword_1EB8A26C8;
  if (!qword_1EB8A26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26C8);
  }

  return result;
}

unint64_t sub_1B48CBF10()
{
  result = qword_1EB8A26D0;
  if (!qword_1EB8A26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26D0);
  }

  return result;
}

unint64_t sub_1B48CBF64()
{
  result = qword_1EB8A26D8;
  if (!qword_1EB8A26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26D8);
  }

  return result;
}

unint64_t sub_1B48CBFB8()
{
  result = qword_1EB8A26E0;
  if (!qword_1EB8A26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26E0);
  }

  return result;
}

unint64_t sub_1B48CC00C()
{
  result = qword_1EB8A26E8;
  if (!qword_1EB8A26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26E8);
  }

  return result;
}

unint64_t sub_1B48CC060()
{
  result = qword_1EB8A26F0;
  if (!qword_1EB8A26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26F0);
  }

  return result;
}

unint64_t sub_1B48CC0B4()
{
  result = qword_1EB8A26F8;
  if (!qword_1EB8A26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A26F8);
  }

  return result;
}

uint64_t sub_1B48CC108(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B48CC1A0()
{
  if (qword_1EB8A34F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A34F8);
}

uint64_t sub_1B48CC234()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_allocate_value_buffer(v0, qword_1EB8A4400);
  __swift_project_value_buffer(v0, qword_1EB8A4400);
  return sub_1B48E6944();
}

uint64_t sub_1B48CC2E4()
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);

  return __swift_project_value_buffer(v0, qword_1EB8A4400);
}

uint64_t sub_1B48CC354@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48CC420(uint64_t a1)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4400);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48CC520(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_project_value_buffer(v1, qword_1EB8A4400);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_1B48CC5C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  v3[5] = v4;
  v3[6] = __swift_project_value_buffer(v4, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = v3[4];
  swift_endAccess();
  v3[3] = v5;
  return sub_1B48D8A18;
}

uint64_t FavoritesTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC180;
  if (qword_1EB8A34F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A34F8);
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(&v11 - v2);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  v5 = __swift_project_value_buffer(v4, qword_1EB8A4400);
  v6 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v11 - v7, v5, v4);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v9 = sub_1B48E66F4();

  return v9;
}

uint64_t sub_1B48CCA8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B48E6714();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B48CCAD0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  result = sub_1B48E68E4();
  *a1 = result;
  return result;
}

uint64_t sub_1B48CCB20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = sub_1B48E64E4();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2770, "dD");
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27C8, &qword_1B48ECDA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  sub_1B48D8578(&qword_1EB8A21A8, &qword_1EB8A27C8, &qword_1B48ECDA0, MEMORY[0x1E6968DA8]);
  sub_1B48E6504();
  v19 = 1;
  sub_1B48E64F4();
  v13 = v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968C40], v17);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27D0, &qword_1B48ECDA8);
  a2[4] = sub_1B48D8864();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B48D8578(&qword_1EB8A2258, &qword_1EB8A2770, "dD", MEMORY[0x1E6968D20]);
  v14 = v18;
  sub_1B48E64D4();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B48CCE4C()
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_project_value_buffer(v0, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6924();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B48CCEF4@<X0>(void *a1@<X8>)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_project_value_buffer(v2, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6924();
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1B48CCFAC(uint64_t *a1)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_project_value_buffer(v1, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6934();
  return swift_endAccess();
}

uint64_t sub_1B48CD060(uint64_t a1)
{
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  __swift_project_value_buffer(v1, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6934();
  return swift_endAccess();
}

uint64_t (*static FavoritesTip.favoritesCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3510 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2710, &qword_1B48EC1C0);
  v3[5] = v4;
  v3[6] = __swift_project_value_buffer(v4, qword_1EB8A4400);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = v3[4];
  swift_endAccess();
  v3[3] = v5;
  return sub_1B48CD210;
}

void sub_1B48CD214(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 32) = *(*a1 + 24);
  swift_beginAccess();
  sub_1B48E6934();
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B48CD308()
{
  if (qword_1EB8A2EB8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A40A0);
}

uint64_t sub_1B48CD3B0()
{
  if (qword_1EB8A2E08 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A2E10);
}

uint64_t RecentsSaveAsContactTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v10[3] = *(*(sub_1B48E6894() - 8) + 72);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B48EC180;
  if (qword_1EB8A2E08 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v10[2] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v10[0] = __swift_project_value_buffer(v1, qword_1EB8A2E10);
  v10[1] = v10;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v10[0]);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = *(v2 + 16);
  v5(v10 - v4);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  v6 = sub_1B48E68A4();
  MEMORY[0x1EEE9AC00](v6);
  (v5)(v10 - v4, v10[0], v1);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v7 = sub_1B48E66F4();

  return v7;
}

uint64_t sub_1B48CD7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v10[3] = *(*(sub_1B48E6894() - 8) + 72);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B48EC180;
  if (qword_1EB8A2E08 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v10[2] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v10[0] = __swift_project_value_buffer(v1, qword_1EB8A2E10);
  v10[1] = v10;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v10[0]);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = *(v2 + 16);
  v5(v10 - v4);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  v6 = sub_1B48E68A4();
  MEMORY[0x1EEE9AC00](v6);
  (v5)(v10 - v4, v10[0], v1);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v7 = sub_1B48E66F4();

  return v7;
}

uint64_t sub_1B48CDAB4()
{
  if (qword_1EB8A2A58 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A2A60);
}

uint64_t RecentsSaveAsFavoritesTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v0 = *(sub_1B48E6894() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v11[2] = *(v0 + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B48EC180;
  v11[3] = v2 + v1;
  if (qword_1EB8A34F0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v4 = __swift_project_value_buffer(v3, qword_1EB8A34F8);
  v11[1] = v11;
  v5 = *(v3 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v5 + 16);
  v7(v11 - v6);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A2A58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_1EB8A2A60);
  MEMORY[0x1EEE9AC00](v8);
  v7(v11 - v6);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v9 = sub_1B48E66F4();

  return v9;
}

uint64_t sub_1B48CDEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v0 = *(sub_1B48E6894() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v11[2] = *(v0 + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B48EC180;
  v11[3] = v2 + v1;
  if (qword_1EB8A34F0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v4 = __swift_project_value_buffer(v3, qword_1EB8A34F8);
  v11[1] = v11;
  v5 = *(v3 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v5 + 16);
  v7(v11 - v6);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A2A58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_1EB8A2A60);
  MEMORY[0x1EEE9AC00](v8);
  v7(v11 - v6);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v9 = sub_1B48E66F4();

  return v9;
}

uint64_t sub_1B48CE1F0()
{
  if (qword_1EB8A2CD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A2CE0);
}

uint64_t sub_1B48CE2F4(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RecentsBrandedCallingTip.personalizedText(for:)(uint64_t a1)
{
  if (*(*v1 + 16) && (sub_1B48D7660(a1), (v2 & 1) != 0))
  {
    sub_1B48D76A4();
    sub_1B48E66F4();
    return sub_1B48E6984();
  }

  else
  {
    sub_1B48E6964();
    return sub_1B48E6974();
  }
}

uint64_t sub_1B48CE544()
{
  if (qword_1EB8A2BA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A2BB0);
}

uint64_t sub_1B48CE5EC()
{
  if (qword_1EB8A40B8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A40C0);
}

uint64_t sub_1B48CE694()
{
  if (qword_1EB8A40D8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A40E0);
}

uint64_t RecentsUnknownCallersTip.asset.getter()
{
  v0 = sub_1B48E69D4();
  v1 = [objc_opt_self() imageNamed_];

  if (v1)
  {
    return sub_1B48E6994();
  }

  else
  {
    return sub_1B48E69A4();
  }
}

uint64_t sub_1B48CE874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v7 = __swift_project_value_buffer(v6, a2);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v12 - v8);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v10 = sub_1B48E66F4();

  return v10;
}

uint64_t sub_1B48CEB1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v9 = __swift_project_value_buffer(v8, a4);
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v14 - v10);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v12 = sub_1B48E66F4();

  return v12;
}

uint64_t sub_1B48CED70()
{
  if (qword_1EB8A3178 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A3180);
}

uint64_t sub_1B48CEE04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v0, qword_1EB8A3250);
  __swift_project_value_buffer(v0, qword_1EB8A3250);
  return sub_1B48E68D4();
}

uint64_t sub_1B48CEE74()
{
  if (qword_1EB8A3248 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A3250);
}

uint64_t sub_1B48CEF08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v0, qword_1EB8A3230);
  __swift_project_value_buffer(v0, qword_1EB8A3230);
  return sub_1B48E68D4();
}

uint64_t sub_1B48CEF8C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  sub_1B48E69E4();
  return sub_1B48E68D4();
}

uint64_t sub_1B48CEFF8()
{
  if (qword_1EB8A3148 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A3150);
}

uint64_t LiveVoicemailTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2740, &qword_1B48EC1F0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2748, &qword_1B48EC1F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2750, &qword_1B48EC200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B48EC180;
  v9 = sub_1B48E6874();
  v10 = MEMORY[0x1E6982B18];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_1B48E67B4();
  v11 = sub_1B48E6764();
  v12 = MEMORY[0x1E6982A90];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_1B48E6774();
  sub_1B48E6724();

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1B8C79310](v7, v4, OpaqueTypeConformance2);
  v16[0] = v4;
  v16[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1B48E6744();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t LiveVoicemailTip.title.getter()
{
  sub_1B48C4C4C(0xD000000000000012, 0x80000001B48EF4E0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t LiveVoicemailTip.message.getter()
{
  sub_1B48C4C4C(0xD000000000000014, 0x80000001B48EF500);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48CF3B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_allocate_value_buffer(v0, qword_1EB8A43E8);
  __swift_project_value_buffer(v0, qword_1EB8A43E8);
  TUCallScreeningDisabledUserDefault();
  return sub_1B48E6944();
}

uint64_t sub_1B48CF46C()
{
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A43E8);
}

uint64_t sub_1B48CF4DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43E8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48CF5A8(uint64_t a1)
{
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43E8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48CF6A8(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A43E8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48CF790(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A43E8);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

void __swiftcall LiveVoicemailTip.init()()
{
  TUCallScreeningDisabledUserDefault();
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v0, qword_1EB8A43E8);
  swift_beginAccess();
  sub_1B48E6934();
  swift_endAccess();
}

uint64_t LiveVoicemailTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v0 = *(sub_1B48E6894() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v24[7] = *(v0 + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B48EC1A0;
  v24[6] = v2;
  v3 = v2 + v1;
  if (qword_1EB8A3178 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v5 = __swift_project_value_buffer(v4, qword_1EB8A3180);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v10 = *(v6 + 16);
  v9 = v6 + 16;
  v25 = v10;
  v10(v24 - v8);
  v11 = sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  v12 = sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A3228 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_1EB8A3230);
  MEMORY[0x1EEE9AC00](v13);
  v25(v24 - v8);
  sub_1B48E68A4();
  v24[4] = v3;
  if (qword_1EB8A3248 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_1EB8A3250);
  MEMORY[0x1EEE9AC00](v14);
  v24[1] = v7;
  v24[3] = v9;
  v25(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[5] = v11;
  v24[2] = v12;
  sub_1B48E68A4();
  if (qword_1EB8A3168 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v16 = __swift_project_value_buffer(v15, qword_1EB8A43E8);
  v17 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v17);
  (*(v19 + 16))(v24 - v18, v16, v15);
  sub_1B48E68B4();
  if (qword_1EB8A3148 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v4, qword_1EB8A3150);
  MEMORY[0x1EEE9AC00](v20);
  v25(v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B48E68A4();
  sub_1B48E66F4();

  v22 = sub_1B48E66F4();

  return v22;
}

uint64_t sub_1B48CFF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v31 = a2;
  v28 = a1;
  v32 = sub_1B48E64E4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2770, "dD");
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2778, "hD");
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2780, &qword_1B48ECCF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2788, &qword_1B48ECCF8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  sub_1B48D8578(&qword_1EB8A2230, &qword_1EB8A2788, &qword_1B48ECCF8, MEMORY[0x1E6968DA8]);
  sub_1B48E6504();
  swift_getKeyPath();
  sub_1B48E64C4();

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v19 = MEMORY[0x1E6968D58];
  sub_1B48D8578(&qword_1EB8A2250, &qword_1EB8A2780, &qword_1B48ECCF0, MEMORY[0x1E6968D58]);
  sub_1B48E64C4();

  (*(v12 + 8))(v14, v11);
  v39 = v31;
  sub_1B48E64F4();
  v21 = v29;
  v20 = v30;
  v22 = v32;
  (*(v30 + 104))(v29, *v34, v32);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27B8, &qword_1B48ECD90);
  v24 = v35;
  v35[3] = v23;
  v24[4] = sub_1B48D86FC(&qword_1EB8A21C8, &qword_1EB8A27B8, &qword_1B48ECD90, MEMORY[0x1EEE822C0]);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_1B48D8578(&qword_1EB8A2240, &qword_1EB8A2778, "hD", v19);
  sub_1B48D8578(&qword_1EB8A2258, &qword_1EB8A2770, "dD", MEMORY[0x1E6968D20]);
  v25 = v33;
  v26 = v37;
  sub_1B48E64D4();
  (*(v20 + 8))(v21, v22);
  (*(v38 + 8))(v8, v26);
  return (*(v36 + 8))(v10, v25);
}

uint64_t LiveVoicemailTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v0 = sub_1B48E6914();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD000000000000014, 0x80000001B48EF520);
  sub_1B48D76A4();
  sub_1B48E68F4();
  v4 = sub_1B48D795C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_1B48D0644()
{
  sub_1B48C4C4C(0xD000000000000012, 0x80000001B48EF4E0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D069C()
{
  sub_1B48C4C4C(0xD000000000000014, 0x80000001B48EF500);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D06F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v0 = sub_1B48E6914();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD000000000000014, 0x80000001B48EF520);
  sub_1B48D76A4();
  sub_1B48E68F4();
  v4 = sub_1B48D795C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_1B48D0978()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v0, qword_1EB8A2ED8);
  __swift_project_value_buffer(v0, qword_1EB8A2ED8);
  return sub_1B48E68D4();
}

uint64_t sub_1B48D09E8()
{
  if (qword_1EB8A2ED0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A2ED8);
}

uint64_t sub_1B48D0ACC()
{
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A43A0);
}

uint64_t sub_1B48D0B3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D0C08(uint64_t a1)
{
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D0D08(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A43A0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D0DA8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A43A0);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t VideoReactionPickerTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC180;
  if (qword_1EB8A2ED0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A2ED8);
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(&v11 - v2);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v5 = __swift_project_value_buffer(v4, qword_1EB8A43A0);
  v6 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v11 - v7, v5, v4);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v9 = sub_1B48E66F4();

  return v9;
}

uint64_t sub_1B48D1214@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2798, &qword_1B48ECD70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27A0, &qword_1B48ECD78);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1B48D8578(&qword_1EB8A2218, &qword_1EB8A27A0, &qword_1B48ECD78, MEMORY[0x1E6968DA8]);
  sub_1B48E6504();
  v15 = v14;
  sub_1B48E64F4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27A8, &qword_1B48ECD80);
  a3[4] = sub_1B48D85C0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B48D8578(&qword_1EB8A2268, &qword_1EB8A2798, &qword_1B48ECD70, MEMORY[0x1E6968D20]);
  sub_1B48E64B4();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t (*static VideoReactionPickerTip.shouldShow.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A2EC0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A43A0);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t sub_1B48D1680()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2718, &qword_1B48EC1C8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2720, &qword_1B48EC1D0);
  v4 = sub_1B48E67A4();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  sub_1B48E67B4();
  v5 = MEMORY[0x1E6982AB8];
  sub_1B48E6734();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2728, &qword_1B48EC1D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v13 = v4;
  v14 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1B8C79310](v3, v0, OpaqueTypeConformance2);
  v13 = v0;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1B48E6744();
  (*(v7 + 8))(v9, v6);
  (*(v1 + 8))(v3, v0);
  return v11;
}

uint64_t sub_1B48D1934(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v3 = sub_1B48E6914();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48D76A4();
  sub_1B48E68F4();
  v7 = sub_1B48D795C(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_1B48D1AE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v5 = sub_1B48E6914();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48D76A4();
  sub_1B48E68F4();
  v9 = sub_1B48D795C(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  return v9;
}

uint64_t CallHistorySearchTip.title.getter()
{
  sub_1B48C4C4C(0xD00000000000001FLL, 0x80000001B48EF5F0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t CallHistorySearchTip.message.getter()
{
  sub_1B48C4C4C(0xD000000000000021, 0x80000001B48EF610);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t CallHistorySearchTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2740, &qword_1B48EC1F0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2748, &qword_1B48EC1F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2750, &qword_1B48EC200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B48EC180;
  v9 = sub_1B48E6764();
  v10 = MEMORY[0x1E6982A90];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_1B48E6774();
  v11 = sub_1B48E67A4();
  v12 = MEMORY[0x1E6982AB8];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_1B48E67B4();
  sub_1B48E6724();

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1B8C79310](v7, v4, OpaqueTypeConformance2);
  v16[0] = v4;
  v16[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1B48E6744();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1B48D1FB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v0, qword_1EB8A30A0);
  __swift_project_value_buffer(v0, qword_1EB8A30A0);
  return sub_1B48E68D4();
}

uint64_t sub_1B48D2024()
{
  if (qword_1EB8A3098 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A30A0);
}

uint64_t sub_1B48D20DC()
{
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A43B8);
}

uint64_t sub_1B48D214C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D2218(uint64_t a1)
{
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43B8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D2318(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A43B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D2400(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A43B8);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t sub_1B48D252C()
{
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A43D0);
}

uint64_t sub_1B48D259C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D2668(uint64_t a1)
{
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A43D0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D2768(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A43D0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D2850(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A43D0);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t CallHistorySearchTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v14[1] = *(*(sub_1B48E6894() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1B48EBF20;
  if (qword_1EB8A3098 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A30A0);
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(v14 - v2);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  if (qword_1EB8A2FF8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v5 = __swift_project_value_buffer(v4, qword_1EB8A43B8);
  v6 = swift_beginAccess();
  v7 = *(v4 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v7 + 16);
  v9(v14 - v8, v5, v4);
  sub_1B48E68B4();
  if (qword_1EB8A3000[0] != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EB8A43D0);
  v11 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v11);
  v9(v14 - v8, v10, v4);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v12 = sub_1B48E66F4();

  return v12;
}

uint64_t sub_1B48D2DD4()
{
  sub_1B48C4C4C(0xD00000000000001FLL, 0x80000001B48EF5F0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D2E2C()
{
  sub_1B48C4C4C(0xD000000000000021, 0x80000001B48EF610);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t WaitOnHoldTip.title.getter()
{
  sub_1B48C4C4C(0xD000000000000015, 0x80000001B48EF640);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t WaitOnHoldTip.message.getter()
{
  sub_1B48C4C4C(0xD000000000000017, 0x80000001B48EF660);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t WaitOnHoldTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  sub_1B48E6914();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD00000000000001BLL, 0x80000001B48EF680);
  sub_1B48D76A4();
  sub_1B48E68F4();
  return v0;
}

uint64_t WaitOnHoldTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2740, &qword_1B48EC1F0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2748, &qword_1B48EC1F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2750, &qword_1B48EC200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B48EC180;
  v9 = sub_1B48E6874();
  v10 = MEMORY[0x1E6982B18];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_1B48E67B4();
  v11 = sub_1B48E67A4();
  v12 = MEMORY[0x1E6982AB8];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_1B48E67B4();
  sub_1B48E6724();

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1B8C79310](v7, v4, OpaqueTypeConformance2);
  v16[0] = v4;
  v16[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1B48E6744();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1B48D3334(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27B0, &qword_1B48ECD88);
  sub_1B48E6794();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  sub_1B48E6784();
  return sub_1B48E6944();
}

uint64_t sub_1B48D3480()
{
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4490);
}

uint64_t sub_1B48D34F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4490);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D35BC(uint64_t a1)
{
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4490);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D36BC(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4490);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D3780(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4490);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D387C;
}

uint64_t WaitOnHoldTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A4490);
  v2 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7 - v3, v1, v0);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v5 = sub_1B48E66F4();

  return v5;
}

uint64_t sub_1B48D3ABC()
{
  sub_1B48C4C4C(0xD000000000000015, 0x80000001B48EF640);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D3B14()
{
  sub_1B48C4C4C(0xD000000000000017, 0x80000001B48EF660);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D3B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  sub_1B48E6914();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD00000000000001BLL, 0x80000001B48EF680);
  sub_1B48D76A4();
  sub_1B48E68F4();
  return v0;
}

uint64_t sub_1B48D3C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC190;
  if (qword_1EB8A40F8[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A4490);
  v2 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7 - v3, v1, v0);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v5 = sub_1B48E66F4();

  return v5;
}

uint64_t sub_1B48D3ED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B48CBFB8();
  result = MEMORY[0x1B8C79220](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B48D3F9C()
{
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4478);
}

uint64_t sub_1B48D400C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4478);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D40D8(uint64_t a1)
{
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4478);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D41D8(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4478);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D4278(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4478);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t (*static FilterUnknownCallersTip.didDisplay.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4478);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t sub_1B48D452C()
{
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4460);
}

uint64_t sub_1B48D459C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4460);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D4668(uint64_t a1)
{
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4460);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D4768(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4460);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D4808(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4460);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t (*static FilterUnknownCallersTip.enabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4460);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t FilterUnknownCallersTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v10[1] = *(*(sub_1B48E6894() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1B48EC180;
  if (qword_1EB8A3940[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A4478);
  v2 = swift_beginAccess();
  v3 = *(v0 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v5 = *(v3 + 16);
  v5(v10 - v4, v1, v0);
  sub_1B48E68B4();
  if (qword_1EB8A3938 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EB8A4460);
  v7 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v7);
  v5(v10 - v4, v6, v0);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v8 = sub_1B48E66F4();

  return v8;
}

uint64_t _s11TelephonyUI23FilterUnknownCallersTipV5title05SwiftB04TextVvg_0()
{
  sub_1B48C4C4C(0xD000000000000020, 0x80000001B48EF6A0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t _s11TelephonyUI23FilterUnknownCallersTipV7message05SwiftB04TextVSgvg_0()
{
  sub_1B48C4C4C(0xD000000000000022, 0x80000001B48EF6D0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t _s11TelephonyUI23FilterUnknownCallersTipV7actionsSay0F3Kit4TipsO6ActionVGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v0 = sub_1B48E6914();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD000000000000028, 0x80000001B48EF700);
  sub_1B48D76A4();
  sub_1B48E68F4();
  v4 = sub_1B48D795C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_1B48D50C0()
{
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4430);
}

uint64_t sub_1B48D5130@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4430);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D51FC(uint64_t a1)
{
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4430);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D52FC(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4430);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D539C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4430);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t (*static FilterUnknownFaceTimeCallersTip.didDisplay.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4430);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t sub_1B48D5650()
{
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4418);
}

uint64_t sub_1B48D56C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D578C(uint64_t a1)
{
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4418);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D588C(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4418);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D592C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4418);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t (*static FilterUnknownFaceTimeCallersTip.enabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4418);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t FilterUnknownFaceTimeCallersTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  v10[1] = *(*(sub_1B48E6894() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1B48EC180;
  if (qword_1EB8A36E0[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A4430);
  v2 = swift_beginAccess();
  v3 = *(v0 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v5 = *(v3 + 16);
  v5(v10 - v4, v1, v0);
  sub_1B48E68B4();
  if (qword_1EB8A36D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EB8A4418);
  v7 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v7);
  v5(v10 - v4, v6, v0);
  sub_1B48E68B4();
  sub_1B48E66F4();

  v8 = sub_1B48E66F4();

  return v8;
}

uint64_t ScreenUnknownCallersTip.title.getter()
{
  sub_1B48C4C4C(0xD000000000000020, 0x80000001B48EF7A0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t ScreenUnknownCallersTip.message.getter()
{
  sub_1B48C4C4C(0xD000000000000022, 0x80000001B48EF7D0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t ScreenUnknownCallersTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v0 = sub_1B48E6914();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD000000000000028, 0x80000001B48EF800);
  sub_1B48D76A4();
  sub_1B48E68F4();
  v4 = sub_1B48D795C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_1B48D61C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  return sub_1B48E6944();
}

uint64_t sub_1B48D6274()
{
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);

  return __swift_project_value_buffer(v0, qword_1EB8A4448);
}

uint64_t sub_1B48D62E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4448);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1B48D63B0(uint64_t a1)
{
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v3 = __swift_project_value_buffer(v2, qword_1EB8A4448);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1B48D64B0(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v1, qword_1EB8A4448);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_1B48D6550(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4448);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

uint64_t sub_1B48D6670(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v4, a2);
  swift_beginAccess();
  sub_1B48E6924();
  swift_endAccess();
  return v6;
}

uint64_t sub_1B48D6728@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  sub_1B48E6924();
  result = swift_endAccess();
  *a4 = v8;
  return result;
}

uint64_t sub_1B48D67EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  sub_1B48E6934();
  return swift_endAccess();
}

uint64_t (*static ScreenUnknownCallersTip.didDisplay.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_1EB8A4448);
  swift_beginAccess();
  sub_1B48E6924();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1B48D8A20;
}

void sub_1B48D69AC(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  sub_1B48E6934();
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B48D6A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  __swift_allocate_value_buffer(v0, qword_1EB8A3800);
  __swift_project_value_buffer(v0, qword_1EB8A3800);
  return sub_1B48E68D4();
}

uint64_t sub_1B48D6A90()
{
  if (qword_1EB8A37F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);

  return __swift_project_value_buffer(v0, qword_1EB8A3800);
}

uint64_t sub_1B48D6B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t ScreenUnknownCallersTip.rules.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2730, &qword_1B48EC1E0);
  sub_1B48E6894();
  *(swift_allocObject() + 16) = xmmword_1B48EC180;
  if (qword_1EB8A3820[0] != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2758, &qword_1B48EC208);
  v1 = __swift_project_value_buffer(v0, qword_1EB8A4448);
  v2 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v11 - v3, v1, v0);
  sub_1B48E68B4();
  if (qword_1EB8A37F8 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v6 = __swift_project_value_buffer(v5, qword_1EB8A3800);
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v11 - v7);
  sub_1B48E6714();
  sub_1B48CCA8C(&qword_1EB8A2200, MEMORY[0x1EEE82440]);
  sub_1B48CCA8C(&qword_1EB8A2208, MEMORY[0x1EEE82438]);
  sub_1B48E68A4();
  sub_1B48E66F4();

  v9 = sub_1B48E66F4();

  return v9;
}

uint64_t sub_1B48D6F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2770, "dD");
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2778, "hD");
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2780, &qword_1B48ECCF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2788, &qword_1B48ECCF8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  sub_1B48D8578(&qword_1EB8A2230, &qword_1EB8A2788, &qword_1B48ECCF8, MEMORY[0x1E6968DA8]);
  sub_1B48E6504();
  swift_getKeyPath();
  sub_1B48E64C4();

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v19 = MEMORY[0x1E6968D58];
  sub_1B48D8578(&qword_1EB8A2250, &qword_1EB8A2780, &qword_1B48ECCF0, MEMORY[0x1E6968D58]);
  sub_1B48E64C4();

  (*(v12 + 8))(v14, v11);
  v32 = v26;
  sub_1B48E64F4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2790, &qword_1B48ECD68);
  v21 = v27;
  v27[3] = v20;
  v21[4] = sub_1B48D86FC(&qword_1EB8A2280, &qword_1EB8A2790, &qword_1B48ECD68, MEMORY[0x1EEE822C8]);
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1B48D8578(&qword_1EB8A2240, &qword_1EB8A2778, "hD", v19);
  sub_1B48D8578(&qword_1EB8A2258, &qword_1EB8A2770, "dD", MEMORY[0x1E6968D20]);
  v22 = v28;
  v23 = v30;
  sub_1B48E64B4();
  (*(v31 + 8))(v6, v23);
  return (*(v29 + 8))(v10, v22);
}

uint64_t sub_1B48D73CC()
{
  sub_1B48C4C4C(0xD000000000000020, 0x80000001B48EF7A0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D7424()
{
  sub_1B48C4C4C(0xD000000000000022, 0x80000001B48EF7D0);
  sub_1B48D76A4();
  return sub_1B48E6984();
}

uint64_t sub_1B48D74AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v0 = sub_1B48E6914();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B48EC190;
  sub_1B48E69E4();
  sub_1B48C4C4C(0xD000000000000028, 0x80000001B48EF800);
  sub_1B48D76A4();
  sub_1B48E68F4();
  v4 = sub_1B48D795C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

unint64_t sub_1B48D7660(uint64_t a1)
{
  v2 = sub_1B48E6BF4();

  return sub_1B48D76F8(a1, v2);
}

unint64_t sub_1B48D76A4()
{
  result = qword_1EB8A2148;
  if (!qword_1EB8A2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2148);
  }

  return result;
}

unint64_t sub_1B48D76F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B48D7764(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B48D7784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B48D7784(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2738, &qword_1B48EC1E8);
  v10 = *(sub_1B48E6914() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B48E6914() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B48D795C(uint64_t a1)
{
  v42 = MEMORY[0x1E69E7CC0];
  sub_1B48D7764(0, 0, 0);
  v2 = v42;
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27C0, &qword_1B48ECD98);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v33 - v9;
  v40 = v3;
  if (v3)
  {
    v11 = v8;
    v12 = sub_1B48E6914();
    v13 = v11;
    v14 = 0;
    v15 = *(v12 - 8);
    v16 = v15;
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v37 = *(v15 + 72);
    v38 = v17;
    v18 = a1 + v17;
    v20 = v15 + 16;
    v19 = *(v15 + 16);
    v35 = v20;
    v36 = v19;
    v39 = v16;
    v34 = (v16 + 32);
    do
    {
      v41 = v13;
      v21 = *(v4 + 48);
      *v10 = v14;
      v36(&v10[v21], v18, v12);
      v22 = sub_1B48D878C(v10, v7);
      MEMORY[0x1EEE9AC00](v22);
      v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1B48E6904();
      sub_1B48D87FC(v7);
      v42 = v2;
      v25 = v12;
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B48D7764((v26 > 1), v27 + 1, 1);
        v2 = v42;
      }

      ++v14;
      *(v2 + 16) = v27 + 1;
      v28 = v37;
      (*v34)(v2 + v38 + v27 * v37, v24, v25);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27C0, &qword_1B48ECD98);
      v29 = MEMORY[0x1EEE9AC00](v4);
      v7 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v29);
      v10 = &v33 - v31;
      v18 += v28;
      v12 = v25;
    }

    while (v40 != v14);
  }

  return v2;
}

unint64_t sub_1B48D7C8C()
{
  result = qword_1EB8A21A0;
  if (!qword_1EB8A21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21A0);
  }

  return result;
}

unint64_t sub_1B48D7CF0()
{
  result = qword_1EB8A2168;
  if (!qword_1EB8A2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2168);
  }

  return result;
}

unint64_t sub_1B48D7D48()
{
  result = qword_1EB8A2150;
  if (!qword_1EB8A2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2150);
  }

  return result;
}

unint64_t sub_1B48D7DA0()
{
  result = qword_1EB8A2160;
  if (!qword_1EB8A2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2160);
  }

  return result;
}

unint64_t sub_1B48D7E04()
{
  result = qword_1EB8A2158;
  if (!qword_1EB8A2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2158);
  }

  return result;
}

unint64_t sub_1B48D7E5C()
{
  result = qword_1EB8A2188;
  if (!qword_1EB8A2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2188);
  }

  return result;
}

unint64_t sub_1B48D7EB4()
{
  result = qword_1EB8A2190;
  if (!qword_1EB8A2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2190);
  }

  return result;
}

unint64_t sub_1B48D7F0C()
{
  result = qword_1EB8A2198;
  if (!qword_1EB8A2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2198);
  }

  return result;
}

unint64_t sub_1B48D7F64()
{
  result = qword_1EB8A2170;
  if (!qword_1EB8A2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2170);
  }

  return result;
}

unint64_t sub_1B48D7FBC()
{
  result = qword_1EB8A2760;
  if (!qword_1EB8A2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2760);
  }

  return result;
}

unint64_t sub_1B48D8014()
{
  result = qword_1EB8A2180;
  if (!qword_1EB8A2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2180);
  }

  return result;
}

unint64_t sub_1B48D806C()
{
  result = qword_1EB8A2768;
  if (!qword_1EB8A2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2768);
  }

  return result;
}

unint64_t sub_1B48D80C4()
{
  result = qword_1EB8A21E0;
  if (!qword_1EB8A21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21E0);
  }

  return result;
}

unint64_t sub_1B48D811C()
{
  result = qword_1EB8A21D0;
  if (!qword_1EB8A21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21D0);
  }

  return result;
}

unint64_t sub_1B48D8174()
{
  result = qword_1EB8A21D8;
  if (!qword_1EB8A21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21D8);
  }

  return result;
}

uint64_t sub_1B48D8208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B48D8250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11TelephonyUI10SOSMiniTipVwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s11TelephonyUI10SOSMiniTipVwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B48D8468()
{
  result = qword_1EB8A2238;
  if (!qword_1EB8A2238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A2778, "hD");
    sub_1B48D84E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2238);
  }

  return result;
}

unint64_t sub_1B48D84E0()
{
  result = qword_1EB8A2248;
  if (!qword_1EB8A2248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A2780, &qword_1B48ECCF0);
    sub_1B48D8578(&qword_1EB8A2228, &qword_1EB8A2788, &qword_1B48ECCF8, MEMORY[0x1EEE822E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2248);
  }

  return result;
}

uint64_t sub_1B48D8578(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1B48D85C0()
{
  result = qword_1EB8A2278;
  if (!qword_1EB8A2278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A27A8, &qword_1B48ECD80);
    sub_1B48D8578(&qword_1EB8A2220, &qword_1EB8A27A0, &qword_1B48ECD78, MEMORY[0x1E6968DA0]);
    sub_1B48D8678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2278);
  }

  return result;
}

unint64_t sub_1B48D8678()
{
  result = qword_1EB8A2270;
  if (!qword_1EB8A2270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A2798, &qword_1B48ECD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2270);
  }

  return result;
}

uint64_t sub_1B48D86FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1B48D8468();
    sub_1B48D8578(&qword_1EB8A2260, &qword_1EB8A2770, "dD", MEMORY[0x1EEE822D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B48D878C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27C0, &qword_1B48ECD98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B48D87FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27C0, &qword_1B48ECD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B48D8864()
{
  result = qword_1EB8A21C0;
  if (!qword_1EB8A21C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A27D0, &qword_1B48ECDA8);
    sub_1B48D8578(&qword_1EB8A21B0, &qword_1EB8A27C8, &qword_1B48ECDA0, MEMORY[0x1E6968DA0]);
    sub_1B48D891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21C0);
  }

  return result;
}

unint64_t sub_1B48D891C()
{
  result = qword_1EB8A21B8;
  if (!qword_1EB8A21B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A2770, "dD");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A21B8);
  }

  return result;
}

uint64_t TaskQueue.init(priority:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v3 = sub_1B48E6A74();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v1;
}

uint64_t TaskQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t TaskQueue.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_1B48D8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B48D8B60, 0, 0);
}

uint64_t sub_1B48D8B60()
{
  v11 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  os_unfair_lock_lock((v2 + 112));
  sub_1B48DA348((v2 + 120), v4, v3, v1, &unk_1B48ECED0, &unk_1F2CA7DB0, &unk_1B48ECEE0, &v10);
  sub_1B48E6AA4();
  os_unfair_lock_unlock((v2 + 112));
  v5 = v10;
  v0[7] = v10;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1B48D8C9C;
  v7 = v0[5];
  v8 = v0[2];

  return MEMORY[0x1EEE6DA40](v8, v5, v7);
}

uint64_t sub_1B48D8C9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B48D8D98, 0, 0);
}

uint64_t sub_1B48D8D98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B48D8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[5] = v8;
    *v8 = v6;
    v8[1] = sub_1B48D8F70;
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v8, a4, v9);
  }

  else
  {
    v13 = (a5 + *a5);
    v10 = swift_task_alloc();
    v6[6] = v10;
    *v10 = v6;
    v10[1] = sub_1B48D9160;
    v11 = v6[2];

    return v13(v11);
  }
}

uint64_t sub_1B48D8F70()
{

  return MEMORY[0x1EEE6DFA0](sub_1B48D906C, 0, 0);
}

uint64_t sub_1B48D906C()
{
  v4 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B48D9160;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1B48D9160()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B48D9254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_1B48DB024(a3, &v26[-1] - v12);
  v14 = sub_1B48E6A74();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1B48979CC(v13, &qword_1EB8A25F0, &qword_1B48EBF50);
  }

  else
  {
    sub_1B48E6A64();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B48E6A24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B48E69F4();
      sub_1B48DB094(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B48D94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = *(a5 - 8);
  v8 = swift_task_alloc();
  v5[4] = v8;
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_1B48D9600;

  return MEMORY[0x1EEE6DA40](v8, a4, a5);
}

uint64_t sub_1B48D9600()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B48C67B4, 0, 0);
}

uint64_t sub_1B48D9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B48D9780, 0, 0);
}

uint64_t sub_1B48D9780()
{
  v13 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  os_unfair_lock_lock((v2 + 112));
  sub_1B48D9A80((v2 + 120), v4, v3, v1, &v12);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A27E0, &qword_1B48ECDD0);
  v6 = MEMORY[0x1E69E7288];
  sub_1B48E6AA4();
  os_unfair_lock_unlock((v2 + 112));
  v7 = v12;
  v0[7] = v12;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1B48D98A4;
  v9 = v0[5];
  v10 = v0[2];

  return MEMORY[0x1EEE6DA10](v10, v7, v9, v5, v6);
}

uint64_t sub_1B48D98A4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B48D9A1C;
  }

  else
  {
    v2 = sub_1B48D99B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B48D99B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B48D9A1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B48D9A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = sub_1B48E6A74();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = v12;
  v15[6] = a2;
  v15[7] = a3;

  v16 = sub_1B48D9C54(0, 0, v11, &unk_1B48ECEB0, v15, a4);
  v14(v11, 1, 1, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = v16;

  v18 = sub_1B48C5FA4(0, 0, v11, &unk_1B48ECEC0, v17);

  *a1 = v18;
  *v21 = v16;
  return result;
}

uint64_t sub_1B48D9C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1B48DB024(a3, &v24[-1] - v11);
  v13 = sub_1B48E6A74();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B48979CC(v12, &qword_1EB8A25F0, &qword_1B48EBF50);
  }

  else
  {
    sub_1B48E6A64();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B48E6A24();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B48E69F4();
      sub_1B48DB394(v20 + 32, v24);

      v21 = v24[0];
      sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B48979CC(a3, &qword_1EB8A25F0, &qword_1B48EBF50);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B48D9EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v8 = sub_1B48E6AF4();
  v5[3] = v8;
  v5[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[5] = v9;
  v10 = swift_task_alloc();
  v5[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A27E0, &qword_1B48ECDD0);
  *v10 = v5;
  v10[1] = sub_1B48DA000;
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v9, a4, a5, v11, v12);
}

uint64_t sub_1B48DA000()
{

  if (v0)
  {

    v1 = sub_1B48DA1D4;
  }

  else
  {
    v1 = sub_1B48DA118;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B48DA118()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(*(v0[2] - 8) + 56))(v1, 0, 1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B48DA1D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(*(v0[2] - 8) + 56))(v1, 1, 1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B48DA290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 112));
  sub_1B48DA348((v3 + 120), a1, a2, a3, &unk_1B48ECE68, &unk_1F2CA7C70, &unk_1B48ECE78, &v8);
  sub_1B48E6AA4();
  os_unfair_lock_unlock((v3 + 112));
  return v8;
}

uint64_t sub_1B48DA348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v24[1] = a7;
  v25 = a8;
  v24[0] = a6;
  v26 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v24 - v14;
  v16 = *a1;
  v17 = sub_1B48E6A74();
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a4;
  v19[5] = v16;
  v19[6] = a2;
  v19[7] = a3;

  v20 = sub_1B48D9254(0, 0, v15, v24[0], v19, a4);
  v18(v15, 1, 1, v17);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a4;
  v21[5] = v20;

  v22 = sub_1B48C5FA4(0, 0, v15, v25, v21);

  *a1 = v22;
  *v26 = v20;
  return result;
}

uint64_t sub_1B48DA500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[5] = v8;
    *v8 = v6;
    v8[1] = sub_1B48DA678;
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v8, a4, v9);
  }

  else
  {
    v13 = (a5 + *a5);
    v10 = swift_task_alloc();
    v6[6] = v10;
    *v10 = v6;
    v10[1] = sub_1B48DB624;
    v11 = v6[2];

    return v13(v11);
  }
}

uint64_t sub_1B48DA678()
{

  return MEMORY[0x1EEE6DFA0](sub_1B48DA774, 0, 0);
}

uint64_t sub_1B48DA774()
{
  v4 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B48DB624;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1B48DA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = *(a5 - 8);
  v8 = swift_task_alloc();
  v5[4] = v8;
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_1B48DA974;

  return MEMORY[0x1EEE6DA40](v8, a4, a5);
}

uint64_t sub_1B48DA974()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B48DB628, 0, 0);
}

uint64_t TaskQueue.deinit()
{
  os_unfair_lock_lock((v0 + 112));
  if (*(v0 + 120))
  {
    sub_1B48E6A94();
  }

  os_unfair_lock_unlock((v0 + 112));
  sub_1B48979CC(v0 + 120, &qword_1EB8A27D8, &unk_1B48ECDC0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskQueue.__deallocating_deinit()
{
  os_unfair_lock_lock((v0 + 112));
  if (*(v0 + 120))
  {
    sub_1B48E6A94();
  }

  os_unfair_lock_unlock((v0 + 112));
  sub_1B48979CC(v0 + 120, &qword_1EB8A27D8, &unk_1B48ECDC0);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of TaskQueue.sync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 112) + **(*v4 + 112));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B4898804;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TaskQueue.throwingSync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B4898804;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B48DAED8(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4898804;

  return sub_1B48DA500(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1B48DAF8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B4898804;

  return sub_1B48DA868(v4, v5, v6, v3, v2);
}

uint64_t sub_1B48DB024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A25F0, &qword_1B48EBF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B48DB094@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B48DB180(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4898804;

  return sub_1B4897D1C(a1, v4);
}

uint64_t sub_1B48DB248(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4898808;

  return sub_1B48D8DF8(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1B48DB2FC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B4898808;

  return sub_1B48D9EC8(v4, v5, v6, v3, v2);
}

uint64_t sub_1B48DB394@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B48DB498(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4898804;

  return sub_1B48D8DF8(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B48DB58C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B4898804;

  return sub_1B48D94F4(v4, v5, v6, v3, v2);
}

id sub_1B48DB634()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCC10]);

  return [v0 init];
}

id sub_1B48DB66C()
{
  v0 = [objc_opt_self() videoMessageRecordGlyphImage];
  v1 = [objc_opt_self() secondaryLabelColor];
  v2 = [v0 imageWithTintColor_];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v3 setContentMode_];
  return v3;
}

id sub_1B48DB73C()
{
  v1 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_location))
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v5 = [objc_opt_self() secondarySystemBackgroundColor];
      [v4 setBackgroundColor_];
    }

    else
    {
      v6 = [objc_opt_self() effectWithStyle_];
      v7 = [objc_opt_self() effectForBlurEffect:v6 style:5];

      v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
      v8 = [v4 contentView];
      v5 = [objc_opt_self() whiteColor];
      [v8 setBackgroundColor_];
    }

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1B48DB8E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setZeroFormattingBehavior_];
  [v0 setAllowedUnits_];
  result = [v0 setUnitsStyle_];
  qword_1EB8A4298 = v0;
  return result;
}

id sub_1B48DB958()
{
  v1 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_viewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B48DB9AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_viewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B48DBA70@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1B48DDCC8;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1B48DBB10(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B48DDCA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);
  sub_1B489AAF0(v3, v4);
  return v7(v6, v5);
}

uint64_t sub_1B48DBBD8()
{
  v1 = (v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_tapHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1B489AAF0(*v1, v1[1]);
  return v2;
}

uint64_t sub_1B48DBC34(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_tapHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B48DBC94(v6, v7);
}

uint64_t sub_1B48DBC94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

char *sub_1B48DBD48(char *a1, void *a2)
{
  v4 = *a1;
  *&v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_textPadding] = 0x402A000000000000;
  v5 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView;
  v8 = [objc_opt_self() videoMessageRecordGlyphImage];
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = [v8 imageWithTintColor_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v11 setContentMode_];
  *&v2[v7] = v11;
  *&v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView] = 0;
  v12 = &v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_tapHandler];
  *v12 = 0;
  v12[1] = 0;
  v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_location] = v4;
  *&v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_viewModel] = a2;
  *&v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_padding] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_cornerRadius] = 0x4024000000000000;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for MessageIndicatorView();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xF0);
  v17 = v14;
  v18 = v16(v13);
  (*((*v15 & *v17) + 0xF8))(v18);
  v19 = sub_1B48DB73C();
  v20 = [v19 layer];

  [v20 setCornerCurve_];
  v21 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView;
  v22 = [*&v17[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView] layer];
  [v22 setCornerRadius_];

  v23 = [*&v17[v21] layer];
  [v23 setMasksToBounds_];

  (*((*v15 & *v17) + 0x108))();
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v17 action:sel_handleTapGesture];
  [v17 addGestureRecognizer_];

  return v17;
}

void sub_1B48DC108()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MessageIndicatorView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v1 = sub_1B48DB73C();
  [v1 setAutoresizingMask_];

  v2 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView;
  v3 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView);
  [v0 bounds];
  [v3 setFrame_];

  v4 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  [v4 sizeToFit];
  v5 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  [v5 sizeToFit];
  v6 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView);
  v7 = [v6 sizeToFit];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  v9 = (v8)(v7);
  [v9 indicatorImageSize];
  v11 = v10;
  v13 = v12;

  if (v11 != 0.0 || v13 != 0.0)
  {
    v14 = v8();
    [v14 indicatorImageSize];

    [v6 frame];
    [v6 setFrame_];
  }

  v15 = *(v0 + v2);
  [v4 frame];
  [v15 frame];
  [v15 setFrame_];

  [*(v0 + v2) frame];
  CGRectGetMidY(v20);
  [v6 center];
  [v6 setCenter_];
  [*(v0 + v2) frame];
  CGRectGetMidY(v21);
  [v4 center];
  [v4 setCenter_];
  [*(v0 + v2) frame];
  CGRectGetMidY(v22);
  [v5 center];
  [v5 setCenter_];
  [v6 frame];
  [v6 setFrame_];
  [v6 frame];
  v16 = CGRectGetMaxX(v23) + 10.0;
  [v4 frame];
  [v4 setFrame_];
  [*(v0 + v2) frame];
  MaxX = CGRectGetMaxX(v24);
  [v5 frame];
  v18 = MaxX - CGRectGetWidth(v25) + -15.0;
  [v5 frame];
  [v5 setFrame_];
  sub_1B48DCB80();
}

uint64_t sub_1B48DC504(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MessageIndicatorView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(result);
  }

  v5 = sub_1B48E69E4();
  v7 = v6;
  if (v5 == sub_1B48E69E4() && v7 == v8)
  {
  }

  v10 = sub_1B48E6BB4();

  if ((v10 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(result);
  }

  return result;
}

void sub_1B48DC6DC(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v3 = a1;
  v2();
  v21 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_location);
  v20 = 0;
  LOBYTE(v2) = static RecentsListItemLocation.== infix(_:_:)(&v21, &v20);
  v4 = objc_opt_self();
  v5 = &selRef_systemGreenColor;
  if ((v2 & 1) == 0)
  {
    v5 = &selRef_systemBlueColor;
  }

  v6 = [v4 *v5];
  v7 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView);
  v19 = v6;
  v8 = [v3 indicatorImageWithDefaultTintColor_];
  [v7 setImage_];

  if ([v3 isRead])
  {
    v9 = [objc_opt_self() labelColor];
  }

  else
  {
    v9 = v19;
  }

  v10 = v9;
  [v7 setTintColor_];

  v11 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  v12 = [v3 isVideo];
  v13 = "AUDIO_MESSAGE_INDICATOR";
  if (v12)
  {
    v13 = "VIDEO_MESSAGE_INDICATOR";
  }

  sub_1B48C4C4C(0xD000000000000017, (v13 - 32) | 0x8000000000000000);

  v14 = sub_1B48E69D4();

  [v11 setText_];

  [v3 duration];
  v15 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  if (v16 <= 0.0)
  {
    [*(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel) setText_];
  }

  else
  {
    if (qword_1EB8A4290 != -1)
    {
      swift_once();
    }

    v17 = qword_1EB8A4298;
    [v3 duration];
    v18 = [v17 stringFromTimeInterval_];
    [v15 setText_];
  }

  [v1 setNeedsLayout];
}

id sub_1B48DC99C()
{
  v1 = sub_1B48DB73C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel];

  return [v0 addSubview_];
}

void sub_1B48DCA34()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:1];
  if (!v2)
  {
    v2 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  v4 = objc_opt_self();
  v5 = [v4 fontWithDescriptor:v2 size:0.0];
  [v3 setFont_];

  v6 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  v7 = [v4 fontWithDescriptor:v2 size:0.0];
  [v6 setFont_];
}

void sub_1B48DCB80()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B48ECEF0;
    v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView];
    *(inited + 32) = v2;
    v3 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel];
    *(inited + 40) = v3;
    v4 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel];
    *(inited + 48) = v4;
    v5 = v2;
    v6 = v3;
    v7 = v4;
    v8 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8C796D0](v8, inited);
      }

      else
      {
        if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(inited + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v0 bounds];
      Width = CGRectGetWidth(v15);
      [v10 frame];
      v13 = Width - v12;
      [v10 frame];
      v14 = v13 - CGRectGetMinX(v16);
      [v10 frame];
      [v10 setFrame_];

      if (v8 == 3)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }
    }
  }
}

void (*sub_1B48DCD24())(char *)
{
  v1 = sub_1B48E6524();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v6);
  if (result)
  {
    v12 = result;
    v13 = v11;
    v14 = (*((*v9 & *v0) + 0xB8))();
    v15 = [v14 mediaURL];

    if (v15)
    {
      sub_1B48E6514();

      (*(v2 + 32))(v8, v5, v1);
      v12(v8);
      sub_1B48DBC94(v12, v13);
      return (*(v2 + 8))(v8, v1);
    }

    else
    {

      return sub_1B48DBC94(v12, v13);
    }
  }

  return result;
}

id MessageIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1B48DD0D0(void *a1)
{
  sub_1B48DC6DC(a1);
  v2 = *(v1 + OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel);
  sub_1B48C4C4C(0xD00000000000001FLL, 0x80000001B48EFA40);
  v3 = sub_1B48E69D4();

  [v2 setText_];
}

id sub_1B48DD168()
{
  v1 = sub_1B48DB73C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel];

  return [v0 addSubview_];
}

void sub_1B48DD218()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:1];
  v3 = *MEMORY[0x1E69DDCF8];
  if (!v2)
  {
    v2 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  v5 = objc_opt_self();
  v6 = [v5 fontWithDescriptor:v2 size:0.0];
  [v4 setFont_];

  v7 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  v8 = [v5 fontWithDescriptor:v2 size:0.0];
  [v7 setFont_];

  v9 = [v1 preferredFontDescriptorWithTextStyle:v3 addingSymbolicTraits:0 options:1];
  if (!v9)
  {
    v9 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v10 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  v11 = *(v0 + OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel);
  v12 = [v5 fontWithDescriptor:v9 size:0.0];
  [v11 setFont_];

  v13 = *(v0 + v10);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 secondaryLabelColor];
  [v15 setTextColor_];
}

void sub_1B48DD45C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  [*&v0[OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel] sizeToFit];
  v2 = *&v0[v1];
  [v2 frame];
  [v2 setFrame_];

  v3 = *&v0[v1];
  [v0 frame];
  [*&v0[v1] frame];
  v4 = [*&v0[v1] font];
  if (v4)
  {
    v5 = v4;
    [v4 descender];

    [v3 frame];
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}
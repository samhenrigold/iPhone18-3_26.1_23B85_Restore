uint64_t sub_25E78D970(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E78D980()
{
  MEMORY[0x25F8BFFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E78D9B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E78D9F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E78DA30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t soft_AXSPhotosensitiveVisualDebuggingEnabled(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr;
  v10 = get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr)
  {
    v3 = libAccessibilityLibrary();
    v8[3] = dlsym(v3, "_AXSPhotosensitiveVisualDebuggingEnabled");
    get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    +[PSEVideoProcessor needsProcessing];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2();
}

uint64_t soft_AXSPhotosensitiveSourceCopyDebuggingEnabled(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr;
  v10 = get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr)
  {
    v3 = libAccessibilityLibrary();
    v8[3] = dlsym(v3, "_AXSPhotosensitiveSourceCopyDebuggingEnabled");
    get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    +[PSEVideoProcessor needsProcessing];
    v6 = v5;
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2();
}

uint64_t libAccessibilityLibrary()
{
  v12 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary;
  v9 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __libAccessibilityLibraryCore_block_invoke;
    v3[4] = &unk_279A34AB8;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_279A34A98;
    v11 = 0;
    v7[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v3[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_25E791580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A34AD8;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXDeviceSupportsPhotosensitiveMitigation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXDeviceSupportsPhotosensitiveMitigationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "kAXSPhotosensitiveVisualDebuggingEnabledNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXSPhotosensitiveVisualDebuggingEnabledNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXSPhotosensitiveSourceCopyDebuggingEnabledNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t sub_25E791984(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061C0, &qword_25E79DC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E79DC20;
  *(inited + 32) = sub_25E79A788();
  *(inited + 40) = v5;
  *(inited + 48) = 1;
  *(inited + 56) = sub_25E79A788();
  *(inited + 64) = v6;
  *(inited + 72) = 2;
  *(inited + 80) = sub_25E79A788();
  *(inited + 88) = v7;
  *(inited + 96) = 4;
  *(inited + 104) = sub_25E79A788();
  *(inited + 112) = v8;
  *(inited + 120) = 5;
  *(inited + 128) = sub_25E79A788();
  *(inited + 136) = v9;
  *(inited + 144) = 6;
  *(inited + 152) = sub_25E79A788();
  *(inited + 160) = v10;
  *(inited + 168) = 7;
  *(inited + 176) = sub_25E79A788();
  *(inited + 184) = v11;
  *(inited + 192) = 9;
  *(inited + 200) = sub_25E79A788();
  *(inited + 208) = v12;
  *(inited + 216) = 10;
  *(inited + 224) = sub_25E79A788();
  *(inited + 232) = v13;
  *(inited + 240) = 11;
  *(inited + 248) = sub_25E79A788();
  *(inited + 256) = v14;
  *(inited + 264) = 12;
  *(inited + 272) = sub_25E79A788();
  *(inited + 280) = v15;
  *(inited + 288) = 13;
  *(inited + 296) = sub_25E79A788();
  *(inited + 304) = v16;
  *(inited + 312) = 14;
  *(inited + 320) = sub_25E79A788();
  *(inited + 328) = v17;
  *(inited + 336) = 15;
  *(inited + 344) = sub_25E79A788();
  *(inited + 352) = v18;
  *(inited + 360) = 16;
  *(inited + 368) = sub_25E79A788();
  *(inited + 376) = v19;
  *(inited + 384) = 17;
  *(inited + 392) = sub_25E79A788();
  *(inited + 400) = v20;
  *(inited + 408) = 18;
  *(inited + 416) = sub_25E79A788();
  *(inited + 424) = v21;
  *(inited + 432) = 19;
  *(inited + 440) = sub_25E79A788();
  *(inited + 448) = v22;
  *(inited + 456) = 20;
  *(inited + 464) = sub_25E79A788();
  *(inited + 472) = v23;
  *(inited + 480) = 21;
  *(inited + 488) = sub_25E79A788();
  *(inited + 496) = v24;
  *(inited + 504) = 22;
  *(inited + 512) = sub_25E79A788();
  *(inited + 520) = v25;
  *(inited + 528) = 25;
  *(inited + 536) = sub_25E79A788();
  *(inited + 544) = v26;
  *(inited + 552) = 28;
  v27 = sub_25E7921D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061C8, &qword_25E79DC38);
  swift_arrayDestroy();
  if (*(v27 + 16) && (v28 = sub_25E7920A0(a1, a2), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 4 * v28);
  }

  else
  {
    v30 = 0;
  }

  return v30;
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

uint64_t sub_25E791D28(uint64_t a1)
{
  v1 = *(a1 + 59);
  if (v1 > 8)
  {
    if (v1 == 9)
    {
      v7 = *(a1 + 60);
      if (v7 > 0xF)
      {
        if (v7 == 16)
        {
          return 24;
        }

        if (v7 == 18)
        {
          return 34;
        }
      }

      else
      {
        if (v7 == 1)
        {
          return 20;
        }

        if (v7 == 8)
        {
          return 25;
        }
      }

      return 22;
    }

    if (v1 == 11)
    {
      if (*(a1 + 60) == 17)
      {
        return 19;
      }

      return 0;
    }

    if (v1 != 12)
    {
      return 0;
    }

    v3 = *(a1 + 60);
    if (v3 == 18)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (v3 == 16)
    {
      v5 = 29;
    }

    else
    {
      v5 = v4;
    }

    if (v3 == 8)
    {
      return 33;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 5)
      {
        return 31;
      }

      if (v1 == 6)
      {
        return 30;
      }

      return 0;
    }

    v6 = *(a1 + 60);
    if (v6 <= 0xC)
    {
      if (v6 != 1)
      {
        if (v6 == 8)
        {
          return 6;
        }

        return 0;
      }

      return 20;
    }

    if (v6 != 16)
    {
      if (v6 == 13)
      {
        return 5;
      }

      return 0;
    }

    return 35;
  }
}

uint64_t sub_25E791E58(__IOSurface *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = IOSurfaceCopyValue(a1, *MEMORY[0x277CD29C0]);
  if (v2)
  {
    v3 = CGColorSpaceCreateWithPropertyList(v2);
    if (v3)
    {
      v4 = v3;
      v5 = CGColorSpaceCopyName(v3);
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v17[0] = 0uLL;
          sub_25E79A778();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_8:
  v7 = IOSurfaceCopyValue(a1, *MEMORY[0x277CD2A30]);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDataGetTypeID() || (v10 = CGColorSpaceCreateWithICCData(v8)) == 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v11 = v10;
  v12 = CGColorSpaceCopyName(v10);
  if (!v12)
  {

    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_25E79A778();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_17:
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  if (!IOSurfaceGetBulkAttachments())
  {
    v14 = sub_25E791D28(v17);
    if (v14)
    {
      return v14;
    }
  }

  v15 = sub_25E791984(0, 0);

  return v15;
}

_DWORD *sub_25E792084@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_25E7920A0(uint64_t a1, uint64_t a2)
{
  sub_25E79A8D8();
  sub_25E79A798();
  v4 = sub_25E79A8E8();

  return sub_25E792118(a1, a2, v4);
}

unint64_t sub_25E792118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E79A898())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E7921D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD061D8, &qword_25E79DCD8);
    v3 = sub_25E79A888();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E7920A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void type metadata accessor for PSEColorSpace()
{
  if (!qword_27FD061D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FD061D0);
    }
  }
}

uint64_t VideoProcessor.validationCallback.getter()
{
  v1 = (v0 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_25E78D970(*v1, v1[1]);
  return v2;
}

uint64_t sub_25E792454(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

uint64_t VideoProcessor.validationCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_25E78D970(a1, a2);
  sub_25E79268C(v6, v7);
  if (a1)
  {
    sub_25E79268C(a1, a2);
  }

  v8 = a1 != 0;
  v9 = v2 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v9 + 6) = v8;
  return result;
}

uint64_t sub_25E79268C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E79269C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25E799048;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25E78D970(v4, v5);
}

uint64_t sub_25E79273C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25E799004;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = (*a2 + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v5;
  sub_25E78D970(v6, v5);
  sub_25E78D970(v3, v4);
  sub_25E79268C(v9, v10);
  if (v3)
  {
    sub_25E79268C(v6, v5);
  }

  v11 = v3 != 0;
  v12 = v7 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v12 + 6) = v11;
  return result;
}

uint64_t (*VideoProcessor.validationCallback.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___SwiftVideoProcessor_validationCallback;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E7928D4;
}

void sub_25E7928D4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]) != 0;
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 6) = v5;
  }

  free(v3);
}

uint64_t VideoProcessor.inTestingMode.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.inTestingMode.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VideoProcessor.debugMode.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.debugMode.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v4 + 5) = a1;
  return result;
}

uint64_t sub_25E792C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E792CB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = v3 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v5 + 5) = v2;
  return result;
}

uint64_t (*VideoProcessor.debugMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E792DB8;
}

void sub_25E792DB8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 5) = v5;
  }

  free(v3);
}

uint64_t VideoProcessor.copySourceOnlyDebugging.getter()
{
  v1 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VideoProcessor.copySourceOnlyDebugging.setter(char a1)
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v4 + 7) = a1;
  return result;
}

uint64_t sub_25E792FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25E793000(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = v3 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  result = swift_beginAccess();
  *(v5 + 7) = v2;
  return result;
}

uint64_t (*VideoProcessor.copySourceOnlyDebugging.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25E793100;
}

void sub_25E793100(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    *(v6 + 7) = v5;
  }

  free(v3);
}

id VideoProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoProcessor.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SwiftVideoProcessor_needsInitialization] = 1;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_device] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_commandQueue] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_library] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3] = 0;
  v2 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06240, &qword_25E79DE18);
  v3 = sub_25E79A7B8();
  v3[2] = 2;
  v3[4] = 0;
  v3[5] = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
  v5 = sub_25E79A7B8();
  v5[2] = 2;
  v5[4] = 0;
  v5[5] = 0;
  *&v0[v4] = v5;
  v6 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
  v7 = sub_25E79A7B8();
  v7[2] = 2;
  v7[4] = 0;
  v7[5] = 0;
  *&v0[v6] = v7;
  v8 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
  v9 = sub_25E79A7B8();
  v9[2] = 2;
  v9[4] = 0;
  v9[5] = 0;
  *&v0[v8] = v9;
  v10 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
  v11 = sub_25E79A7B8();
  v11[2] = 2;
  v11[4] = 0;
  v11[5] = 0;
  *&v0[v10] = v11;
  v12 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
  v13 = sub_25E79A7B8();
  v13[2] = 2;
  v13[4] = 0;
  v13[5] = 0;
  *&v0[v12] = v13;
  v14 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
  v15 = sub_25E79A7B8();
  v15[2] = 2;
  v15[4] = 0;
  v15[5] = 0;
  *&v0[v14] = v15;
  v16 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
  v17 = sub_25E79A7B8();
  v17[2] = 2;
  v17[4] = 0;
  v17[5] = 0;
  *&v0[v16] = v17;
  v18 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
  v19 = sub_25E79A7B8();
  v19[2] = 2;
  v19[4] = 0;
  v19[5] = 0;
  *&v0[v18] = v19;
  v20 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
  v21 = sub_25E79A7B8();
  v21[2] = 2;
  v21[4] = 0;
  v21[5] = 0;
  *&v0[v20] = v21;
  v22 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
  v23 = sub_25E79A7B8();
  v23[2] = 2;
  v23[4] = 0;
  v23[5] = 0;
  *&v0[v22] = v23;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_sourceTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_processedTexture] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_fps] = 1114636288;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_nits] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_area] = 1151218729;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_avl] = 1041865114;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_gain] = 1065353216;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaShape] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolExponent] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaScale] = 1041865114;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_probabilityPoolGammaShape] = 1082130432;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_probabilityPoolExponent] = 1082130432;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_cA] = 1049012208;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_tauAdapt] = 1065353216;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_tauMitigation] = 0x40000000;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxFrameRate] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex] = 0;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_framePoolIndex] = 0;
  v24 = &v0[OBJC_IVAR___SwiftVideoProcessor_validationCallback];
  *v24 = 0;
  v24[1] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_inTestingMode] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_debugMode] = 0;
  v0[OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging] = 0;
  v25 = sub_25E79A7B8();
  *(v25 + 16) = 10;
  memset_pattern16((v25 + 32), &unk_25E79DE00, 0x50uLL);
  *&v0[OBJC_IVAR___SwiftVideoProcessor_frameDeltas] = v25;
  *&v0[OBJC_IVAR___SwiftVideoProcessor_protectionStatus] = 0;
  v26 = &v0[OBJC_IVAR___SwiftVideoProcessor_bufferConstants];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *(v26 + 6) = 0;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_25E7935CC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___SwiftVideoProcessor_device);
  if (v2)
  {
    v3 = result;
    result = [swift_unknownObjectRetain() heapBufferSizeAndAlignWithLength:4 options:544];
    v5 = result + v4;
    if (__OFADD__(result, v4))
    {
      goto LABEL_118;
    }

    v6 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
LABEL_119:
      __break(1u);
    }

    else
    {
      v7 = v4 - 1;
      if (!__OFSUB__(v4, 1))
      {
        result = [v2 heapBufferSizeAndAlignWithLength:56 options:544];
        v9 = result + v8;
        if (!__OFADD__(result, v8))
        {
          v10 = __OFSUB__(v9, 1);
          v11 = v9 - 1;
          if (!v10)
          {
            if (!__OFSUB__(v8, 1))
            {
              v12 = v6 & ~v7;
              v13 = v11 & ~(v8 - 1);
              v14 = v12 + v13;
              if (!__OFADD__(v12, v13))
              {
                result = [v2 heapBufferSizeAndAlignWithLength:144 options:544];
                v16 = result + v15;
                if (!__OFADD__(result, v15))
                {
                  v10 = __OFSUB__(v16, 1);
                  v17 = v16 - 1;
                  if (!v10)
                  {
                    if (!__OFSUB__(v15, 1))
                    {
                      v18 = v17 & ~(v15 - 1);
                      v10 = __OFADD__(v14, v18);
                      v19 = v14 + v18;
                      if (!v10)
                      {
                        result = [v2 heapBufferSizeAndAlignWithLength:1024 options:544];
                        v21 = result + v20;
                        if (!__OFADD__(result, v20))
                        {
                          v10 = __OFSUB__(v21, 1);
                          v22 = v21 - 1;
                          if (!v10)
                          {
                            if (!__OFSUB__(v20, 1))
                            {
                              v23 = v22 & ~(v20 - 1);
                              v10 = __OFADD__(v19, v23);
                              v24 = v19 + v23;
                              if (!v10)
                              {
                                result = [v2 heapBufferSizeAndAlignWithLength:5120 options:544];
                                v26 = result + v25;
                                if (!__OFADD__(result, v25))
                                {
                                  v10 = __OFSUB__(v26, 1);
                                  v27 = v26 - 1;
                                  if (!v10)
                                  {
                                    if (!__OFSUB__(v25, 1))
                                    {
                                      v28 = v27 & ~(v25 - 1);
                                      v10 = __OFADD__(v24, v28);
                                      v29 = v24 + v28;
                                      if (!v10)
                                      {
                                        result = [v2 heapBufferSizeAndAlignWithLength:5120 options:544];
                                        v31 = result + v30;
                                        if (!__OFADD__(result, v30))
                                        {
                                          v10 = __OFSUB__(v31, 1);
                                          v32 = v31 - 1;
                                          if (!v10)
                                          {
                                            if (!__OFSUB__(v30, 1))
                                            {
                                              v33 = v32 & ~(v30 - 1);
                                              v10 = __OFADD__(v29, v33);
                                              v34 = v29 + v33;
                                              if (!v10)
                                              {
                                                result = [v2 heapBufferSizeAndAlignWithLength:640 options:544];
                                                v36 = result + v35;
                                                if (!__OFADD__(result, v35))
                                                {
                                                  v10 = __OFSUB__(v36, 1);
                                                  v37 = v36 - 1;
                                                  if (!v10)
                                                  {
                                                    if (!__OFSUB__(v35, 1))
                                                    {
                                                      v38 = v37 & ~(v35 - 1);
                                                      v10 = __OFADD__(v34, v38);
                                                      v39 = v34 + v38;
                                                      if (!v10)
                                                      {
                                                        result = [v2 heapBufferSizeAndAlignWithLength:640 options:544];
                                                        v41 = result + v40;
                                                        if (!__OFADD__(result, v40))
                                                        {
                                                          v10 = __OFSUB__(v41, 1);
                                                          v42 = v41 - 1;
                                                          if (!v10)
                                                          {
                                                            if (!__OFSUB__(v40, 1))
                                                            {
                                                              v43 = v42 & ~(v40 - 1);
                                                              v10 = __OFADD__(v39, v43);
                                                              v44 = v39 + v43;
                                                              if (!v10)
                                                              {
                                                                result = [v2 heapBufferSizeAndAlignWithLength:20 options:544];
                                                                v46 = result + v45;
                                                                if (!__OFADD__(result, v45))
                                                                {
                                                                  v10 = __OFSUB__(v46, 1);
                                                                  v47 = v46 - 1;
                                                                  if (!v10)
                                                                  {
                                                                    if (!__OFSUB__(v45, 1))
                                                                    {
                                                                      v48 = v47 & ~(v45 - 1);
                                                                      v10 = __OFADD__(v44, v48);
                                                                      v49 = v44 + v48;
                                                                      if (!v10)
                                                                      {
                                                                        result = [v2 heapBufferSizeAndAlignWithLength:20 options:544];
                                                                        v51 = result + v50;
                                                                        if (!__OFADD__(result, v50))
                                                                        {
                                                                          v10 = __OFSUB__(v51, 1);
                                                                          v52 = v51 - 1;
                                                                          if (!v10)
                                                                          {
                                                                            if (!__OFSUB__(v50, 1))
                                                                            {
                                                                              v53 = v52 & ~(v50 - 1);
                                                                              v10 = __OFADD__(v49, v53);
                                                                              v54 = v49 + v53;
                                                                              if (!v10)
                                                                              {
                                                                                result = [v2 heapBufferSizeAndAlignWithLength:40 options:544];
                                                                                v56 = result + v55;
                                                                                if (!__OFADD__(result, v55))
                                                                                {
                                                                                  v10 = __OFSUB__(v56, 1);
                                                                                  v57 = v56 - 1;
                                                                                  if (!v10)
                                                                                  {
                                                                                    if (!__OFSUB__(v55, 1))
                                                                                    {
                                                                                      v58 = v57 & ~(v55 - 1);
                                                                                      v59 = v54 + v58;
                                                                                      if (!__OFADD__(v54, v58))
                                                                                      {
                                                                                        v60 = [objc_allocWithZone(MEMORY[0x277CD6E48]) init];
                                                                                        [v60 setSize_];
                                                                                        [v60 setHazardTrackingMode_];
                                                                                        v109 = [v2 newHeapWithDescriptor_];
                                                                                        [v60 setProtectionOptions_];
                                                                                        v108 = v60;
                                                                                        result = [v2 newHeapWithDescriptor_];
                                                                                        v119 = result;
                                                                                        if (PSELog)
                                                                                        {
                                                                                          v61 = PSELog;
                                                                                          v62 = sub_25E79A7F8();
                                                                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
                                                                                          v63 = swift_allocObject();
                                                                                          *(v63 + 16) = xmmword_25E79DD20;
                                                                                          v107 = v3;
                                                                                          v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
                                                                                          v65 = sub_25E798620();
                                                                                          *(v63 + 56) = v65;
                                                                                          v66 = sub_25E79866C();
                                                                                          *(v63 + 64) = v66;
                                                                                          *(v63 + 32) = v64;
                                                                                          v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
                                                                                          *(v63 + 96) = v65;
                                                                                          *(v63 + 104) = v66;
                                                                                          *(v63 + 72) = v67;
                                                                                          sub_25E79A758("Making new protected heap with %@, %@", 37, 2, &dword_25E78C000, v61, v62, v63);

                                                                                          v68 = 0;
                                                                                          v69 = 0;
                                                                                          v117 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                                                                          v118 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
                                                                                          v115 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                                                                                          v116 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                                                                          v113 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                                                                          v114 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                                                                          v111 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                                                                          v112 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                                                                                          v110 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                                                                                          v70 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                                                                          v71 = v109;
                                                                                          v72 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                                                                          while (1)
                                                                                          {
                                                                                            v73 = v68;
                                                                                            if (v71)
                                                                                            {
                                                                                              v74 = [swift_unknownObjectRetain() newBufferWithLength:4 options:544];
                                                                                              if (v74)
                                                                                              {
                                                                                                v75 = v74;
                                                                                                swift_beginAccess();
                                                                                                v76 = *(v1 + v118);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v118) = v76;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v76);
                                                                                                  v76 = result;
                                                                                                  *(v1 + v118) = result;
                                                                                                }

                                                                                                if (v69 >= *(v76 + 16))
                                                                                                {
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
                                                                                                  goto LABEL_119;
                                                                                                }

                                                                                                *(v76 + 8 * v69 + 32) = v75;
                                                                                                *(v1 + v118) = v76;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v77 = [v71 newBufferWithLength:56 options:544];
                                                                                              if (v77)
                                                                                              {
                                                                                                v78 = v77;
                                                                                                swift_beginAccess();
                                                                                                v79 = *(v1 + v117);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v117) = v79;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v79);
                                                                                                  v79 = result;
                                                                                                  *(v1 + v117) = result;
                                                                                                }

                                                                                                if (v69 >= *(v79 + 16))
                                                                                                {
                                                                                                  goto LABEL_108;
                                                                                                }

                                                                                                *(v79 + 8 * v69 + 32) = v78;
                                                                                                *(v1 + v117) = v79;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v80 = [v71 newBufferWithLength:144 options:544];
                                                                                              if (v80)
                                                                                              {
                                                                                                v81 = v80;
                                                                                                swift_beginAccess();
                                                                                                v82 = *(v1 + v116);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v116) = v82;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v82);
                                                                                                  v82 = result;
                                                                                                  *(v1 + v116) = result;
                                                                                                }

                                                                                                if (v69 >= *(v82 + 16))
                                                                                                {
                                                                                                  goto LABEL_109;
                                                                                                }

                                                                                                *(v82 + 8 * v69 + 32) = v81;
                                                                                                *(v1 + v116) = v82;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v83 = [v71 newBufferWithLength:1024 options:544];
                                                                                              if (v83)
                                                                                              {
                                                                                                v84 = v83;
                                                                                                swift_beginAccess();
                                                                                                v85 = *(v1 + v115);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v115) = v85;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v85);
                                                                                                  v85 = result;
                                                                                                  *(v1 + v115) = result;
                                                                                                }

                                                                                                if (v69 >= *(v85 + 16))
                                                                                                {
                                                                                                  goto LABEL_110;
                                                                                                }

                                                                                                *(v85 + 8 * v69 + 32) = v84;
                                                                                                *(v1 + v115) = v85;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v86 = [v71 newBufferWithLength:5120 options:544];
                                                                                              if (v86)
                                                                                              {
                                                                                                v87 = v86;
                                                                                                swift_beginAccess();
                                                                                                v88 = *(v1 + v114);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v114) = v88;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v88);
                                                                                                  v88 = result;
                                                                                                  *(v1 + v114) = result;
                                                                                                }

                                                                                                if (v69 >= *(v88 + 16))
                                                                                                {
                                                                                                  goto LABEL_111;
                                                                                                }

                                                                                                *(v88 + 8 * v69 + 32) = v87;
                                                                                                *(v1 + v114) = v88;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v89 = [v71 newBufferWithLength:5120 options:544];
                                                                                              if (v89)
                                                                                              {
                                                                                                v90 = v89;
                                                                                                swift_beginAccess();
                                                                                                v91 = *(v1 + v113);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v113) = v91;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v91);
                                                                                                  v91 = result;
                                                                                                  *(v1 + v113) = result;
                                                                                                }

                                                                                                if (v69 >= *(v91 + 16))
                                                                                                {
                                                                                                  goto LABEL_112;
                                                                                                }

                                                                                                *(v91 + 8 * v69 + 32) = v90;
                                                                                                *(v1 + v113) = v91;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v92 = [v71 newBufferWithLength:640 options:544];
                                                                                              if (v92)
                                                                                              {
                                                                                                v93 = v92;
                                                                                                swift_beginAccess();
                                                                                                v94 = *(v1 + v112);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v112) = v94;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v94);
                                                                                                  v94 = result;
                                                                                                  *(v1 + v112) = result;
                                                                                                }

                                                                                                if (v69 >= *(v94 + 16))
                                                                                                {
                                                                                                  goto LABEL_113;
                                                                                                }

                                                                                                *(v94 + 8 * v69 + 32) = v93;
                                                                                                *(v1 + v112) = v94;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v95 = [v71 newBufferWithLength:640 options:544];
                                                                                              if (v95)
                                                                                              {
                                                                                                v96 = v95;
                                                                                                swift_beginAccess();
                                                                                                v97 = *(v1 + v111);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v111) = v97;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v97);
                                                                                                  v97 = result;
                                                                                                  *(v1 + v111) = result;
                                                                                                }

                                                                                                if (v69 >= *(v97 + 16))
                                                                                                {
                                                                                                  goto LABEL_114;
                                                                                                }

                                                                                                *(v97 + 8 * v69 + 32) = v96;
                                                                                                *(v1 + v111) = v97;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v98 = [v71 newBufferWithLength:20 options:544];
                                                                                              if (v98)
                                                                                              {
                                                                                                v99 = v98;
                                                                                                swift_beginAccess();
                                                                                                v100 = *(v1 + v110);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v110) = v100;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v100);
                                                                                                  v100 = result;
                                                                                                  *(v1 + v110) = result;
                                                                                                }

                                                                                                if (v69 >= *(v100 + 16))
                                                                                                {
                                                                                                  goto LABEL_115;
                                                                                                }

                                                                                                *(v100 + 8 * v69 + 32) = v99;
                                                                                                *(v1 + v110) = v100;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v101 = [v71 newBufferWithLength:20 options:544];
                                                                                              if (v101)
                                                                                              {
                                                                                                v102 = v101;
                                                                                                swift_beginAccess();
                                                                                                v103 = *(v1 + v70);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v70) = v103;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v103);
                                                                                                  v103 = result;
                                                                                                  *(v1 + v70) = result;
                                                                                                }

                                                                                                if (v69 >= *(v103 + 16))
                                                                                                {
                                                                                                  goto LABEL_116;
                                                                                                }

                                                                                                *(v103 + 8 * v69 + 32) = v102;
                                                                                                *(v1 + v70) = v103;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              v104 = [v71 newBufferWithLength:40 options:544];
                                                                                              if (v104)
                                                                                              {
                                                                                                v105 = v104;
                                                                                                swift_beginAccess();
                                                                                                v106 = *(v1 + v72);
                                                                                                swift_unknownObjectRetain();
                                                                                                result = swift_isUniquelyReferenced_nonNull_native();
                                                                                                *(v1 + v72) = v106;
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = sub_25E7985F8(v106);
                                                                                                  v106 = result;
                                                                                                  *(v1 + v72) = result;
                                                                                                }

                                                                                                if (v69 >= *(v106 + 16))
                                                                                                {
                                                                                                  goto LABEL_117;
                                                                                                }

                                                                                                *(v106 + 8 * v69 + 32) = v105;
                                                                                                *(v1 + v72) = v106;
                                                                                                swift_endAccess();
                                                                                                swift_unknownObjectRelease();
                                                                                                swift_unknownObjectRelease();
                                                                                              }

                                                                                              swift_unknownObjectRelease();
                                                                                            }

                                                                                            v68 = 1;
                                                                                            v71 = v119;
                                                                                            v69 = 1;
                                                                                            if (v73)
                                                                                            {

                                                                                              swift_unknownObjectRelease();
                                                                                              swift_unknownObjectRelease();
                                                                                              result = swift_unknownObjectRelease();
                                                                                              *(v1 + OBJC_IVAR___SwiftVideoProcessor_protectionStatus) = v107;
                                                                                              return result;
                                                                                            }
                                                                                          }
                                                                                        }

                                                                                        goto LABEL_161;
                                                                                      }

LABEL_160:
                                                                                      __break(1u);
LABEL_161:
                                                                                      __break(1u);
                                                                                      return result;
                                                                                    }

LABEL_159:
                                                                                    __break(1u);
                                                                                    goto LABEL_160;
                                                                                  }

LABEL_158:
                                                                                  __break(1u);
                                                                                  goto LABEL_159;
                                                                                }

LABEL_157:
                                                                                __break(1u);
                                                                                goto LABEL_158;
                                                                              }

LABEL_156:
                                                                              __break(1u);
                                                                              goto LABEL_157;
                                                                            }

LABEL_155:
                                                                            __break(1u);
                                                                            goto LABEL_156;
                                                                          }

LABEL_154:
                                                                          __break(1u);
                                                                          goto LABEL_155;
                                                                        }

LABEL_153:
                                                                        __break(1u);
                                                                        goto LABEL_154;
                                                                      }

LABEL_152:
                                                                      __break(1u);
                                                                      goto LABEL_153;
                                                                    }

LABEL_151:
                                                                    __break(1u);
                                                                    goto LABEL_152;
                                                                  }

LABEL_150:
                                                                  __break(1u);
                                                                  goto LABEL_151;
                                                                }

LABEL_149:
                                                                __break(1u);
                                                                goto LABEL_150;
                                                              }

LABEL_148:
                                                              __break(1u);
                                                              goto LABEL_149;
                                                            }

LABEL_147:
                                                            __break(1u);
                                                            goto LABEL_148;
                                                          }

LABEL_146:
                                                          __break(1u);
                                                          goto LABEL_147;
                                                        }

LABEL_145:
                                                        __break(1u);
                                                        goto LABEL_146;
                                                      }

LABEL_144:
                                                      __break(1u);
                                                      goto LABEL_145;
                                                    }

LABEL_143:
                                                    __break(1u);
                                                    goto LABEL_144;
                                                  }

LABEL_142:
                                                  __break(1u);
                                                  goto LABEL_143;
                                                }

LABEL_141:
                                                __break(1u);
                                                goto LABEL_142;
                                              }

LABEL_140:
                                              __break(1u);
                                              goto LABEL_141;
                                            }

LABEL_139:
                                            __break(1u);
                                            goto LABEL_140;
                                          }

LABEL_138:
                                          __break(1u);
                                          goto LABEL_139;
                                        }

LABEL_137:
                                        __break(1u);
                                        goto LABEL_138;
                                      }

LABEL_136:
                                      __break(1u);
                                      goto LABEL_137;
                                    }

LABEL_135:
                                    __break(1u);
                                    goto LABEL_136;
                                  }

LABEL_134:
                                  __break(1u);
                                  goto LABEL_135;
                                }

LABEL_133:
                                __break(1u);
                                goto LABEL_134;
                              }

LABEL_132:
                              __break(1u);
                              goto LABEL_133;
                            }

LABEL_131:
                            __break(1u);
                            goto LABEL_132;
                          }

LABEL_130:
                          __break(1u);
                          goto LABEL_131;
                        }

LABEL_129:
                        __break(1u);
                        goto LABEL_130;
                      }

LABEL_128:
                      __break(1u);
                      goto LABEL_129;
                    }

LABEL_127:
                    __break(1u);
                    goto LABEL_128;
                  }

LABEL_126:
                  __break(1u);
                  goto LABEL_127;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }

LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    __break(1u);
    goto LABEL_121;
  }

  return result;
}

uint64_t sub_25E794280(uint64_t a1)
{
  v241 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v3 = fminf(vabds_f32(24.0, v2), 1000.0);
  v4 = vabds_f32(25.0, v2);
  v5 = v4 <= v3;
  if (v4 <= v3)
  {
    v3 = v4;
  }

  v6 = vabds_f32(30.0, v2);
  if (v6 <= v3)
  {
    v3 = v6;
    v5 = 2;
  }

  v7 = vabds_f32(50.0, v2);
  if (v7 <= v3)
  {
    v3 = v7;
    v5 = 3;
  }

  v8 = vabds_f32(60.0, v2);
  if (v8 <= v3)
  {
    v3 = v8;
    v5 = 4;
  }

  v9 = vabds_f32(90.0, v2);
  if (v9 <= v3)
  {
    v3 = v9;
    v5 = 5;
  }

  LODWORD(v212) = 1123024896;
  if (vabds_f32(120.0, v2) > v3)
  {
    v10 = v5;
  }

  else
  {
    v10 = 6;
  }

  v210 = xmmword_25E79DD30;
  v211 = 0x42B4000042700000;
  if (!PSELog)
  {
    goto LABEL_182;
  }

  v12 = *(&v210 + v10);
  v13 = PSELog;
  v14 = sub_25E79A7C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25E79DD40;
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v17) = v12;
  v18 = [v16 initWithFloat_];
  v199 = sub_25E798620();
  *(v15 + 56) = v199;
  v198 = sub_25E79866C();
  *(v15 + 64) = v198;
  *(v15 + 32) = v18;
  v19 = 2;
  sub_25E79A758("Choosing standard FPS: %@", 25, 2, &dword_25E78C000, v13, v14, v15);

  v194 = OBJC_IVAR___SwiftVideoProcessor_idxFrameRate;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxFrameRate) = v10;
  v20 = sub_25E79A768();
  LODWORD(v14) = MGGetSInt32Answer();

  v21 = v14 - 1;
  v22 = v1;
  if ((v14 - 1) > 5)
  {
    v24 = 1151218688;
    v23 = 3;
  }

  else
  {
    v19 = qword_25E79DFE0[v21];
    v23 = qword_25E79E010[v21];
    v24 = dword_25E79E040[v21];
  }

  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex) = v19;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize) = v23;
  *(v1 + OBJC_IVAR___SwiftVideoProcessor_area) = v24;
  v25 = v1 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  *(v25 + 48) = 0;
  *(v25 + 8) = 0;
  v26 = OBJC_IVAR___SwiftVideoProcessor_fps;
  v205 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v27 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaShape);
  v28 = *(v22 + OBJC_IVAR___SwiftVideoProcessor_energyPoolGammaScale);
  v29 = sub_25E79A7B8();
  *(v29 + 16) = 256;
  v196 = v29 + 32;
  bzero((v29 + 32), 0x400uLL);
  v30 = v27 + -1.0;
  if (COERCE_INT(fabs(v27 + -1.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_170;
  }

  if (v30 <= -9.2234e18)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v30 >= 9.2234e18)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v31 = v30;
  if (v30 < 0)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (v31 > 7)
  {
    goto LABEL_173;
  }

  v191 = v29;
  v192 = v26;
  v32 = 0;
  v33 = flt_28706F800[v31 + 8];
  v34 = -v27;
  v35 = 0.0;
  v36 = 0.0;
  v190 = a1;
  do
  {
    if (v35 >= 2.0 && (v36 / v205) > 0.99)
    {
      v197 = v32;
      goto LABEL_29;
    }

    v35 = (1.0 / v205) + v35;
    v37 = expf(-v35 / v28);
    v38 = v37 * powf(v28, v34);
    v39 = (v38 * powf(v35, v30)) / v33;
    v36 = v36 + v39;
    *(v29 + 4 * v32++ + 32) = v39;
  }

  while (v32 != 256);
  v197 = 256;
LABEL_29:
  v40 = sub_25E79A7B8();
  *(v40 + 16) = 640;
  v41 = v40 + 32;
  bzero((v40 + 32), 0xA00uLL);
  v42 = sub_25E79A7B8();
  *(v42 + 16) = 5;
  *(v42 + 32) = 0u;
  v43 = v42 + 32;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0;
  type metadata accessor for UMFKernels();
  v44 = 0;
  v204 = v22;
  v206 = *(*sub_25E7991D8() + 120);
  v200 = OBJC_IVAR___SwiftVideoProcessor_idxFrameRate;
  v203 = OBJC_IVAR___SwiftVideoProcessor_idxEquivalentKernelIndex;
  while (1)
  {
    if (v44 >= *(v42 + 16))
    {
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
      goto LABEL_136;
    }

    *(v43 + 8 * v44) = 0;
    v45 = *(v22 + v203);
    v46 = *(v22 + v200);
    v47 = v206();
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_131;
    }

    if (v45 >= *(v47 + 16))
    {
      goto LABEL_132;
    }

    v48 = *(v47 + 8 * v45 + 32);

    if (v44 >= *(v48 + 16))
    {
      goto LABEL_133;
    }

    v49 = *(v48 + 8 * v44 + 32);

    if ((v46 & 0x8000000000000000) != 0)
    {
      goto LABEL_134;
    }

    if (v46 >= *(v49 + 16))
    {
      goto LABEL_135;
    }

    v50 = *(v49 + 8 * v46 + 32);

    v51 = *(v50 + 16);
    v22 = v204;
    if (v51)
    {
      break;
    }

LABEL_30:
    ++v44;

    if (v44 == 5)
    {

      v210 = xmmword_25E79DD50;
      if (!PSELog)
      {
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
      }

      v58 = *(&v210 + *(v204 + OBJC_IVAR___SwiftVideoProcessor_idxEquivalentSize));
      v207 = PSELog;
      v201 = sub_25E79A7C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_25E79DD20;
      v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v61 = v58;
      v62 = [v60 initWithFloat_];
      *(v59 + 56) = v199;
      *(v59 + 64) = v198;
      *(v59 + 32) = v62;
      v63 = *(v204 + v192);
      v64 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v65) = v63;
      v66 = [v64 initWithFloat_];
      *(v59 + 96) = v199;
      *(v59 + 104) = v198;
      *(v59 + 72) = v66;
      sub_25E79A758("Choosing standard screen size: %@, fps: %@", 42, 2, &dword_25E78C000, v207, v201, v59);

      if (!HIDWORD(v197))
      {
        *&v67 = *(v204 + OBJC_IVAR___SwiftVideoProcessor_nits) * *(v204 + OBJC_IVAR___SwiftVideoProcessor_avl);
        v68 = *(v204 + v192);
        v69 = 1.0 - expf(-1.0 / (*(v204 + OBJC_IVAR___SwiftVideoProcessor_tauAdapt) * v68));
        v70 = 1.0 - expf(-1.0 / (v68 * *(v204 + OBJC_IVAR___SwiftVideoProcessor_tauMitigation)));
        v71 = powf(sqrtf(*(v204 + OBJC_IVAR___SwiftVideoProcessor_area) * 1.6) / v58, *(v204 + OBJC_IVAR___SwiftVideoProcessor_cA) + *(v204 + OBJC_IVAR___SwiftVideoProcessor_cA));
        v72 = *(v204 + OBJC_IVAR___SwiftVideoProcessor_gain);
        v73 = powf(v68, 1.0 / *(v204 + OBJC_IVAR___SwiftVideoProcessor_energyPoolExponent));
        LODWORD(v210) = 0;
        *(&v210 + 4) = __PAIR64__(v67, v197);
        *(&v210 + 3) = v69;
        *&v211 = v70;
        *(&v211 + 1) = v71 * (v72 / v73);
        v212 = 0u;
        v213 = 0u;
        v214 = 1065353216;
        v215 = 0u;
        memset(v216, 0, sizeof(v216));
        v217 = 0u;
        v218 = 0;
        if (!PSELog)
        {
          goto LABEL_191;
        }

        v74 = PSELog;
        v75 = sub_25E79A7C8();
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_25E79DD40;
        v77 = HIDWORD(v210);
        v78 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v79) = v77;
        v80 = [v78 initWithFloat_];
        *(v76 + 56) = v199;
        *(v76 + 64) = v198;
        *(v76 + 32) = v80;
        sub_25E79A758("Current value for mu: %@", 24, 2, &dword_25E78C000, v74, v75, v76);

        if (*(v42 + 16))
        {
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = (v40 + 48);
          while (1)
          {
            v85 = *(v43 + 8 * v83);
            if (HIDWORD(v85))
            {
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
              goto LABEL_136;
            }

            *(v216 + v83 + 2) = v85;
            if (v83 >= *(v42 + 16))
            {
              goto LABEL_164;
            }

            v86 = *(v43 + 8 * v83);
            if (v86 < 0)
            {
              goto LABEL_165;
            }

            if (v86)
            {
              break;
            }

            v93 = 0.0;
LABEL_72:
            *(&v216[1] + v83 + 3) = v93;
            v231 = xmmword_25E79DD60;
            v232 = xmmword_25E79DD70;
            v233 = xmmword_25E79DD80;
            v234 = xmmword_25E79DD90;
            v235 = xmmword_25E79DDA0;
            v236 = xmmword_25E79DDB0;
            v237 = xmmword_25E79DDC0;
            v238 = xmmword_25E79DDD0;
            v239 = 0x4000000040100000;
            v240 = 0x40000000;
            v103 = &v231 + 140 * *(v204 + v194);
            v221 = 1068708659;
            v222 = *(v103 + 4);
            v223 = *(v103 + 20);
            v224 = *(v103 + 36);
            v225 = *(v103 + 52);
            v226 = *(v103 + 68);
            v227 = *(v103 + 84);
            v228 = *(v103 + 100);
            v229 = *(v103 + 116);
            v230 = *(v103 + 132);
            *(&v217 + v83) = *(&v221 + v83);
            if (v83 == 4)
            {
              goto LABEL_75;
            }

            ++v83;
            v84 += 8;
            v82 += 32;
            v81 -= 32;
            if (v83 >= *(v42 + 16))
            {
              goto LABEL_74;
            }
          }

          v87 = 32 * v83;
          v88 = *(v40 + 16);
          if (v88 > 32 * v83)
          {
            v87 = *(v40 + 16);
          }

          v89 = v87 - 32 * v83;
          v90 = v86 - 1;
          if (v89 >= v86 - 1)
          {
            v89 = v86 - 1;
          }

          v91 = v89 + 1;
          if (v91 >= 9)
          {
            v94 = v91 & 7;
            if ((v91 & 7) == 0)
            {
              v94 = 8;
            }

            v92 = v91 - v94;
            if (v88 <= v82)
            {
              v95 = v82;
            }

            else
            {
              v95 = *(v40 + 16);
            }

            v96 = v95 + v81;
            if (v96 < v90)
            {
              v90 = v96;
            }

            v97 = v90 - v94 + 1;
            v93 = 0.0;
            v98 = v84;
            do
            {
              v99 = vmulq_f32(v98[-1], v98[-1]);
              v100 = vmulq_f32(*v98, *v98);
              v93 = (((((((v93 + v99.f32[0]) + v99.f32[1]) + v99.f32[2]) + v99.f32[3]) + v100.f32[0]) + v100.f32[1]) + v100.f32[2]) + v100.f32[3];
              v98 += 2;
              v97 -= 8;
            }

            while (v97);
          }

          else
          {
            v92 = 0;
            v93 = 0.0;
          }

          v101 = v92 + v82;
          v102 = v86 - v92;
          while (v101 < v88)
          {
            v93 = v93 + (*(v41 + 4 * v101) * *(v41 + 4 * v101));
            ++v101;
            if (!--v102)
            {
              goto LABEL_72;
            }
          }

          __break(1u);
          goto LABEL_125;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        v104 = PSELog;
        if (PSELog)
        {
          v208 = *(&v216[1] + 12);
          v105 = 4;
          while (1)
          {
            v106 = v104;
            v107 = sub_25E79A7C8();
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_25E79DD40;
            v109 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithFloat_];
            *(v108 + 56) = v199;
            *(v108 + 64) = v198;
            *(v108 + 32) = v109;
            sub_25E79A758("Current value for fContrastKernelMagnitude: %@", 46, 2, &dword_25E78C000, v106, v107, v108);

            if (v105 == 20)
            {
              break;
            }

            v231 = *(&v216[1] + 12);
            LODWORD(v232) = HIDWORD(v216[2]);
            LODWORD(v110) = *(&v231 + v105);
            v208 = v110;
            v104 = PSELog;
            v105 += 4;
            if (!PSELog)
            {
              goto LABEL_79;
            }
          }
        }

        else
        {
LABEL_79:
          __break(1u);
        }

        v111 = *(v204 + OBJC_IVAR___SwiftVideoProcessor_device);
        if (!v111)
        {
          goto LABEL_126;
        }

        v112 = [swift_unknownObjectRetain() newBufferWithBytes:v41 length:640 options:0];
        if (v112)
        {
          v113 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066A8, &qword_25E79DFC0);
          v209 = v111;
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_25E79DD40;
          v115 = [swift_unknownObjectRetain() contents];
          v116 = v113;
          *(v114 + 56) = MEMORY[0x277D83ED8];
          *(v114 + 32) = v115;
          sub_25E79A8C8();

          *&v231 = v40;
          v117 = swift_allocObject();
          *(v117 + 16) = xmmword_25E79DD40;
          *(v117 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B0, &qword_25E79DFC8);
          *(v117 + 32) = &v231;
          sub_25E79A8C8();

          v118 = [v209 newBufferWithBytes:v196 length:4 * v197 options:0];
          if (v118)
          {
            v193 = 4 * v197;
            v195 = v113;
            v202 = v118;
            v119 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
            result = swift_beginAccess();
            v189 = v119;
            if (*(v204 + v119) == 1)
            {
              if (!PSELog)
              {
                __break(1u);
                return result;
              }

              v121 = PSELog;
              v122 = sub_25E79A7D8();
              v123 = swift_allocObject();
              *(v123 + 16) = xmmword_25E79DD40;
              v124 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
              *(v123 + 56) = v199;
              *(v123 + 64) = v198;
              *(v123 + 32) = v124;
              sub_25E79A758("Current Gamma Kernel LENGTH: %@", 31, 2, &dword_25E78C000, v121, v122, v123);

              if (v197)
              {
                v125 = 0;
                while (PSELog)
                {
                  v126 = PSELog;
                  v127 = sub_25E79A7D8();
                  v128 = swift_allocObject();
                  *(v128 + 16) = xmmword_25E79DD40;
                  if (v125 >= *(v191 + 16))
                  {
                    goto LABEL_174;
                  }

                  v129 = v128;
                  v130 = *(v196 + 4 * v125);
                  v131 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                  LODWORD(v132) = v130;
                  v133 = [v131 initWithFloat_];
                  v129[7] = v199;
                  v129[8] = v198;
                  v129[4] = v133;
                  sub_25E79A758("Current Gamma Kernel: %@", 24, 2, &dword_25E78C000, v126, v127, v129);

                  if (v197 == ++v125)
                  {
                    goto LABEL_90;
                  }
                }

                goto LABEL_183;
              }
            }

LABEL_90:

            v134 = *(v204 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
            if (v134)
            {
              swift_unknownObjectRetain();
              v135 = [v209 newBufferWithBytes:&v210 length:144 options:0];
              if (!v135)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return swift_unknownObjectRelease();
              }

              v136 = v135;
              if ([v134 commandBuffer])
              {
                v220 = &unk_28708A558;
                v137 = swift_dynamicCastObjCProtocolConditional();
                if (v137)
                {
                  v138 = v137;
                  v139 = [v137 blitCommandEncoder];
                  if (!v139)
                  {
                    goto LABEL_116;
                  }

                  v140 = v139;
                  v141 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                  swift_beginAccess();
                  v142 = *(v204 + v141);
                  if (*(v142 + 16))
                  {
                    v143 = *(v142 + 32);
                    if (v143)
                    {
                      [v140 copyFromBuffer:v136 sourceOffset:0 toBuffer:v143 destinationOffset:0 size:144];
                    }

                    v144 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                    swift_beginAccess();
                    v145 = *(v204 + v144);
                    if (*(v145 + 16))
                    {
                      v146 = *(v145 + 32);
                      if (v146)
                      {
                        [v140 copyFromBuffer:v202 sourceOffset:0 toBuffer:v146 destinationOffset:0 size:v193];
                      }

                      v147 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                      swift_beginAccess();
                      v148 = *(v204 + v147);
                      if (*(v148 + 16))
                      {
                        v149 = *(v148 + 32);
                        if (v149)
                        {
                          [v140 copyFromBuffer:v195 sourceOffset:0 toBuffer:v149 destinationOffset:0 size:640];
                        }

                        v150 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                        swift_beginAccess();
                        v151 = *(v204 + v150);
                        if (*(v151 + 16))
                        {
                          if (*(v151 + 32))
                          {
                            ObjectType = swift_getObjectType();
                            v153 = swift_unknownObjectRetain();
                            MEMORY[0x25F8BF750](v153, 0, 640, 0, ObjectType);
                            swift_unknownObjectRelease();
                          }

                          v154 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                          swift_beginAccess();
                          v155 = *(v204 + v154);
                          if (*(v155 + 16))
                          {
                            if (*(v155 + 32))
                            {
                              v156 = swift_getObjectType();
                              v157 = swift_unknownObjectRetain();
                              MEMORY[0x25F8BF750](v157, 0, v193, 0, v156);
                              swift_unknownObjectRelease();
                            }

                            v158 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                            swift_beginAccess();
                            v159 = *(v204 + v158);
                            if (*(v159 + 16))
                            {
                              if (*(v159 + 32))
                              {
                                v160 = swift_getObjectType();
                                v161 = swift_unknownObjectRetain();
                                MEMORY[0x25F8BF750](v161, 0, v193, 0, v160);
                                swift_unknownObjectRelease();
                              }

                              if (*(v204 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug))
                              {
                                v162 = swift_getObjectType();
                                v163 = swift_unknownObjectRetain();
                                MEMORY[0x25F8BF750](v163, 0, 56, 0, v162);
                                swift_unknownObjectRelease();
                              }

                              [v140 endEncoding];
                              swift_unknownObjectRelease();
LABEL_116:
                              [v138 commit];
                              if (*(v204 + v189) != 1 && [v134 commandBuffer])
                              {
                                v219 = &unk_28708A558;
                                v164 = swift_dynamicCastObjCProtocolConditional();
                                if (v164)
                                {
                                  v165 = v164;
                                  if ([v164 respondsToSelector_])
                                  {
                                    [v165 setProtectionOptions_];
                                  }

                                  v166 = [v165 blitCommandEncoder];
                                  if (v166)
                                  {
                                    v167 = v166;
                                    v168 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                    swift_beginAccess();
                                    v169 = *(v204 + v168);
                                    if (*(v169 + 16) < 2uLL)
                                    {
LABEL_184:
                                      __break(1u);
LABEL_185:
                                      __break(1u);
LABEL_186:
                                      __break(1u);
LABEL_187:
                                      __break(1u);
LABEL_188:
                                      __break(1u);
LABEL_189:
                                      __break(1u);
                                      goto LABEL_190;
                                    }

                                    v170 = *(v169 + 40);
                                    if (v170)
                                    {
                                      [v167 copyFromBuffer:v136 sourceOffset:0 toBuffer:v170 destinationOffset:0 size:144];
                                    }

                                    v171 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                                    swift_beginAccess();
                                    v172 = *(v204 + v171);
                                    if (*(v172 + 16) < 2uLL)
                                    {
                                      goto LABEL_185;
                                    }

                                    v173 = *(v172 + 40);
                                    if (v173)
                                    {
                                      [v167 copyFromBuffer:v202 sourceOffset:0 toBuffer:v173 destinationOffset:0 size:v193];
                                    }

                                    v174 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                                    swift_beginAccess();
                                    v175 = *(v204 + v174);
                                    if (*(v175 + 16) < 2uLL)
                                    {
                                      goto LABEL_186;
                                    }

                                    v176 = *(v175 + 40);
                                    if (v176)
                                    {
                                      [v167 copyFromBuffer:v195 sourceOffset:0 toBuffer:v176 destinationOffset:0 size:640];
                                    }

                                    v177 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                    swift_beginAccess();
                                    v178 = *(v204 + v177);
                                    if (*(v178 + 16) < 2uLL)
                                    {
                                      goto LABEL_187;
                                    }

                                    if (*(v178 + 40))
                                    {
                                      v179 = swift_getObjectType();
                                      v180 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v180, 0, 640, 0, v179);
                                      swift_unknownObjectRelease();
                                    }

                                    v181 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                    swift_beginAccess();
                                    v182 = *(v204 + v181);
                                    if (*(v182 + 16) < 2uLL)
                                    {
                                      goto LABEL_188;
                                    }

                                    if (*(v182 + 40))
                                    {
                                      v183 = swift_getObjectType();
                                      v184 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v184, 0, v193, 0, v183);
                                      swift_unknownObjectRelease();
                                    }

                                    v185 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                    swift_beginAccess();
                                    v186 = *(v204 + v185);
                                    if (*(v186 + 16) < 2uLL)
                                    {
                                      goto LABEL_189;
                                    }

                                    if (*(v186 + 40))
                                    {
                                      v187 = swift_getObjectType();
                                      v188 = swift_unknownObjectRetain();
                                      MEMORY[0x25F8BF750](v188, 0, v193, 0, v187);
                                      swift_unknownObjectRelease();
                                    }

                                    [v167 endEncoding];
                                    swift_unknownObjectRelease();
                                  }

                                  [v165 commit];
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                else
                                {
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                  swift_unknownObjectRelease();
                                }

                                swift_unknownObjectRelease();
                                return swift_unknownObjectRelease();
                              }

                              goto LABEL_136;
                            }

                            goto LABEL_181;
                          }

LABEL_180:
                          __break(1u);
LABEL_181:
                          __break(1u);
LABEL_182:
                          __break(1u);
LABEL_183:
                          __break(1u);
                          goto LABEL_184;
                        }

LABEL_179:
                        __break(1u);
                        goto LABEL_180;
                      }

LABEL_178:
                      __break(1u);
                      goto LABEL_179;
                    }

LABEL_177:
                    __break(1u);
                    goto LABEL_178;
                  }

LABEL_176:
                  __break(1u);
                  goto LABEL_177;
                }

LABEL_136:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_137;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

LABEL_137:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

LABEL_125:
        swift_unknownObjectRelease();
        goto LABEL_126;
      }

LABEL_175:
      __break(1u);
      goto LABEL_176;
    }
  }

  v52 = 32 * v44;
  v53 = (v50 + 32);
  while (v52 < *(v40 + 16))
  {
    v54 = *v53;
    *(v41 + 4 * v52) = v54;
    if (v44 >= *(v42 + 16))
    {
      goto LABEL_119;
    }

    v55 = *(v43 + 8 * v44);
    v56 = __CFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_120;
    }

    *(v43 + 8 * v44) = v57;
    ++v52;
    ++v53;
    if (!--v51)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_126:
}

Swift::Void __swiftcall VideoProcessor.processSurface(sourceSurface:timestamp:destinationSurface:options:)(IOSurfaceRef sourceSurface, Swift::Double timestamp, IOSurfaceRef destinationSurface, NSDictionary options)
{
  v5 = v4;
  v7 = sourceSurface;
  v8 = 0x27FD06000uLL;
  if (*(v4 + OBJC_IVAR___SwiftVideoProcessor_needsInitialization) == 1)
  {
    swift_getObjectType();
    if (!PSELog)
    {
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v9 = PSELog;
    v10 = sub_25E79A7F8();
    sub_25E79A758("PSE V8.1 Initialization Called", 30, 2, &dword_25E78C000, v9, v10, MEMORY[0x277D84F90]);

    type metadata accessor for UMFKernels();
    v11 = sub_25E7991D8();
    (*(*v11 + 152))(v11);

    v12 = MTLCreateSystemDefaultDevice();
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_device) = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = [v12 newCommandQueue];
      *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue) = v13;
      swift_unknownObjectRelease();
      v14 = objc_opt_self();
      v15 = [v14 sharedCaptureManager];
      v16 = [v15 newCaptureScopeWithDevice_];

      v17 = [v14 sharedCaptureManager];
      [v17 setDefaultCaptureScope_];

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      *&aBlock = 0;
      v20 = [v12 newDefaultLibraryWithBundle:v19 error:&aBlock];

      v21 = aBlock;
      if (v20)
      {
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_library) = v20;
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = aBlock;
        v24 = sub_25E79A748();

        swift_willThrow();
        if (!PSELog)
        {
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        v25 = PSELog;
        v26 = sub_25E79A7E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_25E79DD40;
        swift_getErrorValue();
        v28 = sub_25E79A8B8();
        v30 = v29;
        *(v27 + 56) = MEMORY[0x277D837D0];
        *(v27 + 64) = sub_25E79907C();
        *(v27 + 32) = v28;
        *(v27 + 40) = v30;
        sub_25E79A758("Error making library: %@", 24, 2, &dword_25E78C000, v25, v26, v27);

        v7 = sourceSurface;
        v8 = 0x27FD06000;
      }

      sub_25E7935CC(0);
      v31 = [v12 newBufferWithLength:56 options:0];
      *(v5 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug) = v31;
      swift_unknownObjectRelease();
      sub_25E794280(0);
      v32 = OBJC_IVAR___SwiftVideoProcessor_library;
      v33 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_library);
      if (!v33)
      {
        goto LABEL_32;
      }

      swift_unknownObjectRetain();
      v34 = sub_25E79A768();
      v35 = [v33 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v35)
      {
        *&v341 = 0;
        v36 = [v12 newComputePipelineStateWithFunction:v35 error:&v341];
        v37 = v341;
        if (!v36)
        {
          v53 = v37;
          v54 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_305:
            __break(1u);
            goto LABEL_306;
          }

          v55 = PSELog;
          v335 = sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v57 = sub_25E79A8B8();
          v59 = v58;
          *(v56 + 56) = MEMORY[0x277D837D0];
          *(v56 + 64) = sub_25E79907C();
          *(v56 + 32) = v57;
          *(v56 + 40) = v59;
          sub_25E79A758("Error creating cs_compute_risk_pass0: %@", 40, 2, &dword_25E78C000, v55, v335, v56);
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000;
          v38 = *(v5 + v32);
          if (!v38)
          {
            goto LABEL_32;
          }

          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0) = v36;
        swift_unknownObjectRelease();
      }

      v38 = *(v5 + v32);
      if (!v38)
      {
        goto LABEL_32;
      }

LABEL_13:
      swift_unknownObjectRetain();
      v39 = sub_25E79A768();
      v40 = [v38 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v40)
      {
        *&v341 = 0;
        v41 = [v12 newComputePipelineStateWithFunction:v40 error:&v341];
        v42 = v341;
        if (!v41)
        {
          v60 = v42;
          v61 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_306:
            __break(1u);
            goto LABEL_307;
          }

          v62 = PSELog;
          v336 = sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v64 = sub_25E79A8B8();
          v66 = v65;
          *(v63 + 56) = MEMORY[0x277D837D0];
          *(v63 + 64) = sub_25E79907C();
          *(v63 + 32) = v64;
          *(v63 + 40) = v66;
          sub_25E79A758("Error creating cs_compute_risk_pass1: %@", 40, 2, &dword_25E78C000, v62, v336, v63);
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000;
          v43 = *(v5 + v32);
          if (!v43)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1) = v41;
        swift_unknownObjectRelease();
      }

      v43 = *(v5 + v32);
      if (!v43)
      {
        goto LABEL_32;
      }

LABEL_17:
      swift_unknownObjectRetain();
      v44 = sub_25E79A768();
      v45 = [v43 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (v45)
      {
        *&v341 = 0;
        v46 = [v12 newComputePipelineStateWithFunction:v45 error:&v341];
        v47 = v341;
        if (!v46)
        {
          v67 = v47;
          v68 = sub_25E79A748();

          swift_willThrow();
          if (!PSELog)
          {
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          v69 = PSELog;
          v337 = sub_25E79A7E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_25E79DD40;
          swift_getErrorValue();
          v71 = sub_25E79A8B8();
          v73 = v72;
          *(v70 + 56) = MEMORY[0x277D837D0];
          *(v70 + 64) = sub_25E79907C();
          *(v70 + 32) = v71;
          *(v70 + 40) = v73;
          sub_25E79A758("Error creating cs_compute_risk_pass2: %@", 40, 2, &dword_25E78C000, v69, v337, v70);
          swift_unknownObjectRelease();

          v7 = sourceSurface;
          v8 = 0x27FD06000uLL;
          v48 = *(v5 + v32);
          if (!v48)
          {
            goto LABEL_32;
          }

LABEL_21:
          swift_unknownObjectRetain();
          v49 = sub_25E79A768();
          v50 = [v48 newFunctionWithName_];

          swift_unknownObjectRelease();
          if (v50)
          {
            *&v341 = 0;
            v51 = [v12 newComputePipelineStateWithFunction:v50 error:&v341];
            v52 = v341;
            if (!v51)
            {
              v314 = v52;
              v315 = sub_25E79A748();

              swift_willThrow();
              if (!PSELog)
              {
LABEL_308:
                __break(1u);
                return;
              }

              v316 = PSELog;
              v317 = sub_25E79A7E8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
              v318 = swift_allocObject();
              *(v318 + 16) = xmmword_25E79DD40;
              swift_getErrorValue();
              v319 = sub_25E79A8B8();
              v321 = v320;
              *(v318 + 56) = MEMORY[0x277D837D0];
              *(v318 + 64) = sub_25E79907C();
              *(v318 + 32) = v319;
              *(v318 + 40) = v321;
              sub_25E79A758("Error creating cs_compute_risk_pass3: %@", 40, 2, &dword_25E78C000, v316, v317, v318);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v7 = sourceSurface;
              v8 = 0x27FD06000;
              goto LABEL_34;
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3) = v51;
LABEL_33:
            swift_unknownObjectRelease();
LABEL_34:
            *(v5 + *(v8 + 624)) = 0;
            goto LABEL_35;
          }

LABEL_32:
          swift_unknownObjectRelease();
          goto LABEL_33;
        }

        swift_unknownObjectRelease();
        *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2) = v46;
        swift_unknownObjectRelease();
      }

      v48 = *(v5 + v32);
      if (!v48)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }
  }

LABEL_35:
  v74 = OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime;
  v75 = timestamp - *(v5 + OBJC_IVAR___SwiftVideoProcessor_previousSurfaceTime);
  if (v75 <= 0.00833333333)
  {
    v75 = 0.00833333333;
  }

  if (v75 <= 0.0416666667)
  {
    v76 = v75;
  }

  else
  {
    v76 = 0.0416666667;
  }

  v77 = OBJC_IVAR___SwiftVideoProcessor_framePoolIndex;
  v78 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_framePoolIndex);
  v79 = OBJC_IVAR___SwiftVideoProcessor_frameDeltas;
  v80 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_frameDeltas);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v79) = v80;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v78 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v80 = sub_25E79860C(v80);
  if ((v78 & 0x8000000000000000) != 0)
  {
    goto LABEL_265;
  }

LABEL_42:
  v82 = *(v80 + 2);
  if (v78 >= v82)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  *&v80[8 * v78 + 32] = v76;
  *(v5 + v79) = v80;
  v83 = *(v5 + v77);
  _VF = __OFADD__(v83, 1);
  v85 = v83 + 1;
  if (_VF)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  *(v5 + v77) = v85 % 10;
  if (v82 < 0xA)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v87 = *(v80 + 5);
  v86 = *(v80 + 6);
  v88 = *(v80 + 13);
  v90 = *(v80 + 3);
  v89 = *(v80 + 4);
  v91 = *(v80 + 11);
  v92 = *(v80 + 9);
  v93 = *(v80 + 2);
  v94 = *(v80 + 7);
  v95 = fmin(v93.f64[0], 10.0);
  v96 = fmax(v93.f64[0], 0.001);
  v97 = *(v80 + 5);
  if (v97 < v95)
  {
    v95 = *(v80 + 5);
  }

  if (v96 <= v97)
  {
    v96 = *(v80 + 5);
  }

  if (v90.f64[0] < v95)
  {
    v95 = *(v80 + 6);
  }

  if (v96 <= v90.f64[0])
  {
    v96 = *(v80 + 6);
  }

  if (v94 < v95)
  {
    v95 = *(v80 + 7);
  }

  if (v96 <= v94)
  {
    v96 = *(v80 + 7);
  }

  v98 = v93.f64[0] + 0.0 + v97 + v90.f64[0] + v94;
  if (v89.f64[0] < v95)
  {
    v95 = *(v80 + 8);
  }

  if (v96 <= v89.f64[0])
  {
    v96 = *(v80 + 8);
  }

  v99 = v98 + v89.f64[0];
  if (v92 < v95)
  {
    v95 = *(v80 + 9);
  }

  if (v96 <= v92)
  {
    v96 = *(v80 + 9);
  }

  v100 = v99 + v92;
  if (v87.f64[0] >= v95)
  {
    v101 = v95;
  }

  else
  {
    v101 = *(v80 + 10);
  }

  if (v96 > v87.f64[0])
  {
    v102 = v96;
  }

  else
  {
    v102 = *(v80 + 10);
  }

  v103 = v100 + v87.f64[0];
  if (v91 < v101)
  {
    v101 = *(v80 + 11);
  }

  if (v102 <= v91)
  {
    v102 = *(v80 + 11);
  }

  v104 = v103 + v91;
  if (v86.f64[0] >= v101)
  {
    v105 = v101;
  }

  else
  {
    v105 = *(v80 + 12);
  }

  if (v102 > v86.f64[0])
  {
    v106 = v102;
  }

  else
  {
    v106 = *(v80 + 12);
  }

  v107 = v104 + v86.f64[0];
  if (v88 < v105)
  {
    v105 = *(v80 + 13);
  }

  if (v106 <= v88)
  {
    v106 = *(v80 + 13);
  }

  v108 = v107 + v88;
  v109 = vdupq_lane_s64(COERCE__INT64(v108 / 10.0), 0);
  v110 = vsubq_f64(v93, v109);
  __asm { FMOV            V18.2D, #10.0 }

  v115 = vdivq_f64(vmulq_f64(v110, v110), _Q18);
  v116 = vsubq_f64(v90, v109);
  v117 = vdivq_f64(vmulq_f64(v116, v116), _Q18);
  v118 = vsubq_f64(v89, v109);
  v119 = vdivq_f64(vmulq_f64(v118, v118), _Q18);
  v120 = vsubq_f64(v87, v109);
  v121 = vdivq_f64(vmulq_f64(v120, v120), _Q18);
  v122 = vsubq_f64(v86, v109);
  v123 = vdivq_f64(vmulq_f64(v122, v122), _Q18);
  v123.f64[0] = vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v115, vdupq_laneq_s64(v115, 1)), v117), vdupq_laneq_s64(v117, 1)), v119), vdupq_laneq_s64(v119, 1)), v121), vdupq_laneq_s64(v121, 1)), v123), vdupq_laneq_s64(v123, 1)).f64[0];
  v124 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_fps);
  v125 = fabs(sqrt(v123.f64[0]));
  _ZF = v123.f64[0] == -INFINITY;
  v126 = INFINITY;
  if (!_ZF)
  {
    v126 = v125;
  }

  v127 = v108 - v105 - v106;
  v326 = OBJC_IVAR___SwiftVideoProcessor_fps;
  *(v5 + OBJC_IVAR___SwiftVideoProcessor_fps) = 8.0 / v127;
  *(v5 + v74) = timestamp;
  v128 = v126 / (v108 / 10.0) > 0.1;
  v129 = v5 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  *(v129 + 7) = v128;
  Width = IOSurfaceGetWidth(v7);
  Height = IOSurfaceGetHeight(v7);
  v130 = sub_25E791E58(v7);
  if (!PSELog)
  {
    goto LABEL_298;
  }

  v131 = v130;
  v132 = PSELog;
  v133 = sub_25E79A7D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_25E79DD40;
  v135 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v339 = sub_25E798620();
  *(v134 + 56) = v339;
  v338 = sub_25E79866C();
  *(v134 + 64) = v338;
  *(v134 + 32) = v135;
  sub_25E79A758("PSE ColorSpace value: %@", 24, 2, &dword_25E78C000, v132, v133, v134);

  v136 = v131 - 1;
  if (v131 - 1) < 0x1E && ((0x29AB10FBu >> v136))
  {
    v137 = dword_25E79E058[v136];
    v138 = dword_25E79E0D0[v136];
  }

  else
  {
    if (!PSELog)
    {
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    v139 = PSELog;
    v140 = sub_25E79A7D8();
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_25E79DD40;
    v142 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    *(v141 + 56) = v339;
    *(v141 + 64) = v338;
    *(v141 + 32) = v142;
    sub_25E79A758("Unsupported color space: %@", 27, 2, &dword_25E78C000, v139, v140, v141);

    v138 = 0;
    v137 = 1;
  }

  *(v129 + 12) = v137;
  *(v129 + 16) = v138;
  ProtectionOptions = IOSurfaceGetProtectionOptions();
  v144 = ProtectionOptions;
  if (ProtectionOptions)
  {
    v145 = OBJC_IVAR___SwiftVideoProcessor_protectionStatus;
    if (ProtectionOptions != *(v5 + OBJC_IVAR___SwiftVideoProcessor_protectionStatus))
    {
      if (!PSELog)
      {
LABEL_303:
        __break(1u);
        goto LABEL_304;
      }

      v150 = PSELog;
      v327 = sub_25E79A7C8();
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_25E79DD20;
      v152 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      *(v151 + 56) = v339;
      *(v151 + 64) = v338;
      *(v151 + 32) = v152;
      v153 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      *(v151 + 96) = v339;
      *(v151 + 104) = v338;
      *(v151 + 72) = v153;
      sub_25E79A758("Resetting state due to protection options new: %@ old %@", 56, 2, &dword_25E78C000, v150, v327, v151);

      sub_25E7935CC(v144);
      isa = options.super.isa;
LABEL_101:
      sub_25E794280(v144);
      goto LABEL_102;
    }
  }

  v146 = timestamp - *(v5 + v74);
  isa = options.super.isa;
  if (v146 > 1.0 || vabds_f32(*(v5 + v326), v124) >= 5.0)
  {
    if (!PSELog)
    {
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v148 = PSELog;
    v149 = sub_25E79A7C8();
    sub_25E79A758("Resetting state due to time or fps", 34, 2, &dword_25E78C000, v148, v149, MEMORY[0x277D84F90]);

    goto LABEL_101;
  }

LABEL_102:
  v154 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_device);
  if (!v154)
  {
    return;
  }

  v343 = &unk_287089EA8;
  v155 = swift_dynamicCastObjCProtocolConditional();
  swift_unknownObjectRetain();
  if (v155)
  {
    PixelFormat = IOSurfaceGetPixelFormat(sourceSurface);
    if (PixelFormat == 1953903154)
    {
      if ([v155 supportsYCBCRFormats12])
      {
        goto LABEL_111;
      }

      v158 = 0x100000002;
    }

    else
    {
      if (PixelFormat != 1953903152)
      {
        goto LABEL_111;
      }

      v157 = [v155 supportsYCBCRFormats12];
      v158 = 0x200000002;
      if (v157)
      {
        goto LABEL_111;
      }
    }

    *(v129 + 48) = 1;
    *(v129 + 8) = 1;
    *(v129 + 40) = v158;
  }

LABEL_111:
  if (*(v129 + 48) == 1)
  {
    WidthOfPlane = IOSurfaceGetWidthOfPlane(sourceSurface, 0);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(sourceSurface, 0);
    v161 = [objc_opt_self() texture2DDescriptorWithPixelFormat:115 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
    [v161 setUsage_];
    [v161 setProtectionOptions_];
    v162 = [v154 newTextureWithDescriptor:v161 iosurface:destinationSurface plane:0];
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_processedTexture) = v162;
    swift_unknownObjectRelease();
    [v161 setUsage_];
    [v161 setPixelFormat_];
    v163 = [v154 newTextureWithDescriptor:v161 iosurface:sourceSurface plane:0];
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) = v163;
    swift_unknownObjectRelease();
    [v161 setWidth_];
    [v161 setHeight_];
    [v161 setPixelFormat_];
    v164 = [v154 newTextureWithDescriptor:v161 iosurface:sourceSurface plane:1];
    v165 = &OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture;
  }

  else
  {
    v166 = objc_opt_self();
    v161 = [v166 texture2DDescriptorWithPixelFormat:sub_25E7987C8(sourceSurface) width:Width height:Height mipmapped:0];
    [v161 setUsage_];
    [v161 setProtectionOptions_];
    v167 = [v154 newTextureWithDescriptor:v161 iosurface:sourceSurface plane:0];
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) = v167;
    swift_unknownObjectRelease();
    *(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture) = 0;
    swift_unknownObjectRelease();
    [v161 setUsage_];
    [v161 setPixelFormat_];
    v164 = [v154 newTextureWithDescriptor:v161 iosurface:destinationSurface plane:0];
    v165 = &OBJC_IVAR___SwiftVideoProcessor_processedTexture;
  }

  *(v5 + *v165) = v164;
  swift_unknownObjectRelease();
  strcpy(&v341, "displayMaxNits");
  HIBYTE(v341) = -18;
  v168 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v168)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v341 = 0u;
    v342 = 0u;
  }

  aBlock = v341;
  v349 = v342;
  v322 = v144;
  if (*(&v342 + 1))
  {
    if (swift_dynamicCast())
    {
      v169 = v346;
      goto LABEL_122;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v169 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_122:
  [v169 floatValue];
  v171 = v170;

  *(v129 + 20) = v171;
  *&v341 = 0xD000000000000010;
  *(&v341 + 1) = 0x800000025E79E480;
  v172 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v172)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v341 = 0u;
    v342 = 0u;
  }

  aBlock = v341;
  v349 = v342;
  if (*(&v342 + 1))
  {
    if (swift_dynamicCast())
    {
      v173 = v346;
      goto LABEL_130;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v173 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_130:
  [v173 floatValue];
  v175 = v174;

  *(v129 + 24) = v175;
  *&v341 = 0xD000000000000010;
  *(&v341 + 1) = 0x800000025E79E4A0;
  v176 = [(objc_class *)isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v176)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v341 = 0u;
    v342 = 0u;
  }

  aBlock = v341;
  v349 = v342;
  if (*(&v342 + 1))
  {
    if (swift_dynamicCast())
    {
      v177 = v346;
      goto LABEL_138;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v177 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_138:
  [v177 floatValue];
  v179 = v178;

  *(v129 + 28) = v179;
  if (!PSELog)
  {
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v180 = PSELog;
  v181 = sub_25E79A7C8();
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_25E79DDE0;
  v183 = *(v129 + 20);
  v184 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v185) = v183;
  v186 = [v184 initWithFloat_];
  *(v182 + 56) = v339;
  *(v182 + 64) = v338;
  *(v182 + 32) = v186;
  v187 = *(v129 + 24);
  v188 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v189) = v187;
  v190 = [v188 initWithFloat_];
  *(v182 + 96) = v339;
  *(v182 + 104) = v338;
  *(v182 + 72) = v190;
  v191 = *(v129 + 28);
  v192 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v193) = v191;
  v194 = [v192 initWithFloat_];
  *(v182 + 136) = v339;
  *(v182 + 144) = v338;
  *(v182 + 112) = v194;
  sub_25E79A758("nits: %@, EDR %@, Display EDR %@", 32, 2, &dword_25E78C000, v180, v181, v182);

  *&v341 = 0x46746E6572727563;
  *(&v341 + 1) = 0xEA00000000005350;
  v195 = [(objc_class *)options.super.isa __swift_objectForKeyedSubscript:sub_25E79A8A8()];
  swift_unknownObjectRelease();
  if (v195)
  {
    sub_25E79A858();
    swift_unknownObjectRelease();
  }

  else
  {
    v341 = 0u;
    v342 = 0u;
  }

  aBlock = v341;
  v349 = v342;
  if (*(&v342 + 1))
  {
    if (swift_dynamicCast())
    {
      v196 = v346;
      goto LABEL_147;
    }
  }

  else
  {
    sub_25E798A10(&aBlock);
  }

  v196 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef_commandBuffer];
LABEL_147:
  [v196 floatValue];
  v198 = v197;

  if (v198 <= 0.0)
  {
    v198 = *(v5 + v326);
  }

  *(v129 + 32) = v198;
  v199 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_commandQueue);
  if (!v199)
  {
    goto LABEL_259;
  }

  swift_unknownObjectRetain();
  v200 = dispatch_semaphore_create(0);
  if ([v199 commandBuffer])
  {
    v201 = swift_dynamicCastObjCProtocolConditional();
    if (v201)
    {
      v202 = v201;
      if ([v201 respondsToSelector_])
      {
        [v202 setProtectionOptions_];
      }

      v203 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v204 = swift_allocObject();
      *(v204 + 16) = v203;
      *(v204 + 24) = v200;
      *&v350 = sub_25E798A78;
      *(&v350 + 1) = v204;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v349 = sub_25E7982D8;
      *(&v349 + 1) = &block_descriptor;
      v205 = _Block_copy(&aBlock);
      v334 = v200;

      [v202 addCompletedHandler_];
      _Block_release(v205);
      swift_unknownObjectRetain();
      v352 = &unk_28708A558;
      v206 = swift_dynamicCastObjCProtocolUnconditional();
      if (([v206 respondsToSelector_] & 1) != 0 && !objc_msgSend(v206, sel_protectionOptions))
      {
        v207 = 0;
        v208 = 0;
      }

      else
      {
        v207 = 1;
        v208 = 1;
      }

      v209 = v5 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
      swift_beginAccess();
      *(v209 + 9) = v207;
      v210 = IOSurfaceGetWidth(sourceSurface);
      v211 = IOSurfaceGetHeight(sourceSurface);
      if ((v210 * v211) >> 64 == (v210 * v211) >> 63)
      {
        v212 = v211;
        v213 = v210;
        v340 = v209;
        *v209 = (v210 * v211);
        v214 = [v202 blitCommandEncoder];
        if (!v214)
        {
          goto LABEL_164;
        }

        v215 = v214;
        v216 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
        swift_beginAccess();
        v217 = *(v5 + v216);
        if (v208 < *(v217 + 16))
        {
          v218 = *(v217 + 8 * v208 + 32);
          if (!v218)
          {
LABEL_163:
            swift_unknownObjectRelease();
LABEL_164:
            v221 = [v202 computeCommandEncoder];
            if (!v221)
            {
LABEL_258:
              swift_unknownObjectRelease();
              [v202 commit];
              sub_25E79A818();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_259;
            }

            v222 = v221;
            v223 = sub_25E79A768();
            [v222 setLabel_];

            v224 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass0);
            if (!v224)
            {
              goto LABEL_182;
            }

            swift_unknownObjectRetain();
            [v222 setComputePipelineState_];
            [v222 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceTexture) atIndex:0];
            [v222 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_sourceCbCrTexture) atIndex:1];
            [v222 setTexture:*(v5 + OBJC_IVAR___SwiftVideoProcessor_processedTexture) atIndex:2];
            swift_beginAccess();
            [v222 setBytes:v209 length:56 atIndex:0];
            swift_endAccess();
            v225 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
            swift_beginAccess();
            v226 = *(v5 + v225);
            if (v208 < *(v226 + 16))
            {
              v227 = *(v226 + 8 * v208 + 32);
              if (v227)
              {
                [v222 setBuffer:v227 offset:0 atIndex:1];
              }

              v228 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
              swift_beginAccess();
              v229 = *(v5 + v228);
              if (v208 < *(v229 + 16))
              {
                v230 = *(v229 + 8 * v208 + 32);
                if (v230)
                {
                  [v222 setBuffer:v230 offset:0 atIndex:2];
                }

                v231 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                swift_beginAccess();
                v232 = *(v5 + v231);
                if (v208 < *(v232 + 16))
                {
                  v233 = *(v232 + 8 * v208 + 32);
                  if (v233)
                  {
                    [v222 setBuffer:v233 offset:0 atIndex:3];
                  }

                  v234 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                  swift_beginAccess();
                  v235 = *(v5 + v234);
                  if (v208 < *(v235 + 16))
                  {
                    v236 = *(v235 + 8 * v208 + 32);
                    if (v236)
                    {
                      [v222 setBuffer:v236 offset:0 atIndex:4];
                    }

                    v237 = [v224 threadExecutionWidth];
                    v238 = [v224 maxTotalThreadsPerThreadgroup];
                    if (v237)
                    {
                      if (v238 == 0x8000000000000000 && v237 == -1)
                      {
                        goto LABEL_279;
                      }

                      MTLSizeMake(v237, v238 / v237, &aBlock);
                      *v330 = aBlock;
                      v239 = v349;
                      MTLSizeMake(v213, v212, &aBlock);
                      v346 = *v330;
                      v347 = v239;
                      [v222 dispatchThreads:&aBlock threadsPerThreadgroup:&v346];
                      swift_unknownObjectRelease();
LABEL_182:
                      if (*(v209 + 7))
                      {
                        goto LABEL_246;
                      }

                      v240 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass1);
                      if (!v240)
                      {
LABEL_209:
                        v268 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass2);
                        if (!v268)
                        {
                          goto LABEL_235;
                        }

                        swift_unknownObjectRetain();
                        [v222 setComputePipelineState_];
                        swift_beginAccess();
                        [v222 setBytes:v340 length:56 atIndex:0];
                        swift_endAccess();
                        v269 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                        swift_beginAccess();
                        v270 = *(v5 + v269);
                        if (v208 < *(v270 + 16))
                        {
                          v271 = *(v270 + 8 * v208 + 32);
                          if (v271)
                          {
                            [v222 setBuffer:v271 offset:0 atIndex:2];
                          }

                          v272 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                          swift_beginAccess();
                          v273 = *(v5 + v272);
                          if (v208 < *(v273 + 16))
                          {
                            v274 = *(v273 + 8 * v208 + 32);
                            if (v274)
                            {
                              [v222 setBuffer:v274 offset:0 atIndex:3];
                            }

                            v275 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                            swift_beginAccess();
                            v276 = *(v5 + v275);
                            if (v208 < *(v276 + 16))
                            {
                              v277 = *(v276 + 8 * v208 + 32);
                              if (v277)
                              {
                                [v222 setBuffer:v277 offset:0 atIndex:4];
                              }

                              v278 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                              swift_beginAccess();
                              v279 = *(v5 + v278);
                              if (v208 < *(v279 + 16))
                              {
                                v280 = *(v279 + 8 * v208 + 32);
                                if (v280)
                                {
                                  [v222 setBuffer:v280 offset:0 atIndex:7];
                                }

                                v281 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                swift_beginAccess();
                                v282 = *(v5 + v281);
                                if (v208 < *(v282 + 16))
                                {
                                  v283 = *(v282 + 8 * v208 + 32);
                                  if (v283)
                                  {
                                    [v222 setBuffer:v283 offset:0 atIndex:8];
                                  }

                                  v284 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy;
                                  swift_beginAccess();
                                  v285 = *(v5 + v284);
                                  if (v208 >= *(v285 + 16))
                                  {
                                    goto LABEL_292;
                                  }

                                  v286 = *(v285 + 8 * v208 + 32);
                                  if (v286)
                                  {
                                    [v222 setBuffer:v286 offset:0 atIndex:9];
                                  }

                                  v287 = OBJC_IVAR___SwiftVideoProcessor_bufferEnergy2;
                                  swift_beginAccess();
                                  v288 = *(v5 + v287);
                                  if (v208 >= *(v288 + 16))
                                  {
                                    goto LABEL_294;
                                  }

                                  v289 = *(v288 + 8 * v208 + 32);
                                  if (v289)
                                  {
                                    [v222 setBuffer:v289 offset:0 atIndex:10];
                                  }

                                  v290 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                  swift_beginAccess();
                                  v291 = *(v5 + v290);
                                  if (v208 >= *(v291 + 16))
                                  {
                                    goto LABEL_296;
                                  }

                                  v292 = *(v291 + 8 * v208 + 32);
                                  if (v292)
                                  {
                                    [v222 setBuffer:v292 offset:0 atIndex:11];
                                  }

                                  MTLSizeMake(1280, 1, &aBlock);
                                  *v332 = aBlock;
                                  v293 = v349;
                                  MTLSizeMake(256, 1, &aBlock);
                                  v294 = v349;
                                  v295 = aBlock;
                                  aBlock = *v332;
                                  *&v349 = v293;
                                  v346 = v295;
                                  v347 = v294;
                                  [v222 dispatchThreads:&aBlock threadsPerThreadgroup:&v346];
                                  swift_unknownObjectRelease();
LABEL_235:
                                  v296 = *(v5 + OBJC_IVAR___SwiftVideoProcessor_cptPSO_RiskComputePass3);
                                  if (v296)
                                  {
                                    swift_unknownObjectRetain();
                                    [v222 setComputePipelineState_];
                                    swift_beginAccess();
                                    [v222 setBytes:v340 length:56 atIndex:0];
                                    swift_endAccess();
                                    v297 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                                    swift_beginAccess();
                                    v298 = *(v5 + v297);
                                    if (v208 < *(v298 + 16))
                                    {
                                      v299 = *(v298 + 8 * v208 + 32);
                                      if (v299)
                                      {
                                        [v222 setBuffer:v299 offset:0 atIndex:4];
                                      }

                                      v300 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                      swift_beginAccess();
                                      v301 = *(v5 + v300);
                                      if (v208 < *(v301 + 16))
                                      {
                                        v302 = *(v301 + 8 * v208 + 32);
                                        if (v302)
                                        {
                                          [v222 setBuffer:v302 offset:0 atIndex:2];
                                        }

                                        v303 = OBJC_IVAR___SwiftVideoProcessor_bufferResults;
                                        swift_beginAccess();
                                        v304 = *(v5 + v303);
                                        if (v208 < *(v304 + 16))
                                        {
                                          v305 = *(v304 + 8 * v208 + 32);
                                          if (v305)
                                          {
                                            [v222 setBuffer:v305 offset:0 atIndex:11];
                                          }

                                          MTLSizeMake(1, 1, &aBlock);
                                          *v333 = aBlock;
                                          v306 = v349;
                                          MTLSizeMake(1, 1, &aBlock);
                                          v307 = v349;
                                          v308 = aBlock;
                                          aBlock = *v333;
                                          *&v349 = v306;
                                          v344 = v308;
                                          v345 = v307;
                                          [v222 dispatchThreads:&aBlock threadsPerThreadgroup:&v344];
                                          swift_unknownObjectRelease();
                                          goto LABEL_246;
                                        }

                                        goto LABEL_295;
                                      }

                                      goto LABEL_293;
                                    }

                                    goto LABEL_291;
                                  }

LABEL_246:
                                  [v222 endEncoding];
                                  v309 = v340[1];
                                  aBlock = *v340;
                                  v349 = v309;
                                  v350 = v340[2];
                                  v351 = *(v340 + 6);
                                  if (!IncludesDebugInfo(&aBlock) || (*(v340 + 9) & 1) != 0 || (v310 = [v202 blitCommandEncoder]) == 0)
                                  {
LABEL_257:
                                    swift_unknownObjectRelease();
                                    goto LABEL_258;
                                  }

                                  v311 = v310;
                                  v312 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                                  swift_beginAccess();
                                  v313 = *(v5 + v312);
                                  if (*(v313 + 16))
                                  {
                                    if (*(v313 + 32))
                                    {
                                      if (*(v5 + OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug))
                                      {
                                        [v311 copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_];
                                      }
                                    }

                                    [v311 endEncoding];
                                    swift_unknownObjectRelease();
                                    goto LABEL_257;
                                  }

                                  goto LABEL_297;
                                }

LABEL_290:
                                __break(1u);
LABEL_291:
                                __break(1u);
LABEL_292:
                                __break(1u);
LABEL_293:
                                __break(1u);
LABEL_294:
                                __break(1u);
LABEL_295:
                                __break(1u);
LABEL_296:
                                __break(1u);
LABEL_297:
                                __break(1u);
LABEL_298:
                                __break(1u);
                                goto LABEL_299;
                              }

LABEL_289:
                              __break(1u);
                              goto LABEL_290;
                            }

                            goto LABEL_287;
                          }

                          goto LABEL_285;
                        }

                        goto LABEL_283;
                      }

                      swift_unknownObjectRetain();
                      [v222 setComputePipelineState_];
                      swift_beginAccess();
                      [v222 setBytes:v340 length:56 atIndex:0];
                      swift_endAccess();
                      v241 = OBJC_IVAR___SwiftVideoProcessor_bufferFrameLumaSum;
                      swift_beginAccess();
                      v242 = *(v5 + v241);
                      if (v208 < *(v242 + 16))
                      {
                        v243 = *(v242 + 8 * v208 + 32);
                        if (v243)
                        {
                          [v222 setBuffer:v243 offset:0 atIndex:1];
                        }

                        v244 = OBJC_IVAR___SwiftVideoProcessor_bufferData;
                        swift_beginAccess();
                        v245 = *(v5 + v244);
                        if (v208 < *(v245 + 16))
                        {
                          v246 = *(v245 + 8 * v208 + 32);
                          if (v246)
                          {
                            [v222 setBuffer:v246 offset:0 atIndex:2];
                          }

                          v247 = OBJC_IVAR___SwiftVideoProcessor_bufferGammaKernel;
                          swift_beginAccess();
                          v248 = *(v5 + v247);
                          if (v208 < *(v248 + 16))
                          {
                            v249 = *(v248 + 8 * v208 + 32);
                            if (v249)
                            {
                              [v222 setBuffer:v249 offset:0 atIndex:3];
                            }

                            v250 = OBJC_IVAR___SwiftVideoProcessor_bufferCurState;
                            swift_beginAccess();
                            v251 = *(v5 + v250);
                            if (v208 < *(v251 + 16))
                            {
                              v252 = *(v251 + 8 * v208 + 32);
                              if (v252)
                              {
                                [v222 setBuffer:v252 offset:0 atIndex:4];
                              }

                              v253 = OBJC_IVAR___SwiftVideoProcessor_bufferContrastKernel;
                              swift_beginAccess();
                              v254 = *(v5 + v253);
                              if (v208 < *(v254 + 16))
                              {
                                v255 = *(v254 + 8 * v208 + 32);
                                if (v255)
                                {
                                  [v222 setBuffer:v255 offset:0 atIndex:5];
                                }

                                v256 = OBJC_IVAR___SwiftVideoProcessor_bufferContrast;
                                swift_beginAccess();
                                v257 = *(v5 + v256);
                                if (v208 >= *(v257 + 16))
                                {
                                  goto LABEL_284;
                                }

                                v258 = *(v257 + 8 * v208 + 32);
                                if (v258)
                                {
                                  [v222 setBuffer:v258 offset:0 atIndex:6];
                                }

                                v259 = OBJC_IVAR___SwiftVideoProcessor_bufferResponses;
                                swift_beginAccess();
                                v260 = *(v5 + v259);
                                if (v208 >= *(v260 + 16))
                                {
                                  goto LABEL_286;
                                }

                                v261 = *(v260 + 8 * v208 + 32);
                                if (v261)
                                {
                                  [v222 setBuffer:v261 offset:0 atIndex:7];
                                }

                                v262 = OBJC_IVAR___SwiftVideoProcessor_bufferResponsesNorm;
                                swift_beginAccess();
                                v263 = *(v5 + v262);
                                if (v208 >= *(v263 + 16))
                                {
                                  goto LABEL_288;
                                }

                                v264 = *(v263 + 8 * v208 + 32);
                                if (v264)
                                {
                                  [v222 setBuffer:v264 offset:0 atIndex:8];
                                }

                                MTLSizeMake(160, 1, &aBlock);
                                *v331 = aBlock;
                                v265 = v349;
                                MTLSizeMake(32, 1, &aBlock);
                                v266 = v349;
                                v267 = aBlock;
                                aBlock = *v331;
                                *&v349 = v265;
                                v346 = v267;
                                v347 = v266;
                                [v222 dispatchThreads:&aBlock threadsPerThreadgroup:&v346];
                                swift_unknownObjectRelease();
                                goto LABEL_209;
                              }

LABEL_282:
                              __break(1u);
LABEL_283:
                              __break(1u);
LABEL_284:
                              __break(1u);
LABEL_285:
                              __break(1u);
LABEL_286:
                              __break(1u);
LABEL_287:
                              __break(1u);
LABEL_288:
                              __break(1u);
                              goto LABEL_289;
                            }

LABEL_281:
                            __break(1u);
                            goto LABEL_282;
                          }

LABEL_280:
                          __break(1u);
                          goto LABEL_281;
                        }

                        goto LABEL_278;
                      }

LABEL_277:
                      __break(1u);
LABEL_278:
                      __break(1u);
LABEL_279:
                      __break(1u);
                      goto LABEL_280;
                    }

LABEL_276:
                    __break(1u);
                    goto LABEL_277;
                  }

LABEL_275:
                  __break(1u);
                  goto LABEL_276;
                }

LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

LABEL_273:
              __break(1u);
              goto LABEL_274;
            }

LABEL_272:
            __break(1u);
            goto LABEL_273;
          }

          ObjectType = swift_getObjectType();
          v220 = [swift_unknownObjectRetain() length];
          if ((v220 & 0x8000000000000000) == 0)
          {
            MEMORY[0x25F8BF750](v218, 0, v220, 0, ObjectType);
            [v215 endEncoding];
            swift_unknownObjectRelease();
            goto LABEL_163;
          }

LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_259:
  swift_unknownObjectRelease();
}

uint64_t sub_25E7982D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id VideoProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_25E7985DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_25E798620()
{
  result = qword_27FD063D0;
  if (!qword_27FD063D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD063D0);
  }

  return result;
}

unint64_t sub_25E79866C()
{
  result = qword_27FD063D8;
  if (!qword_27FD063D8)
  {
    sub_25E798620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD063D8);
  }

  return result;
}

char *sub_25E7986C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B8, &unk_25E79DFD0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25E7987C8(__IOSurface *a1)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  result = 508;
  if (PixelFormat <= 1380401728)
  {
    if (PixelFormat <= 645166643)
    {
      if (PixelFormat > 645166639)
      {
        if (PixelFormat == 645166640)
        {
          return 580;
        }

        if (PixelFormat == 645166642)
        {
          return 581;
        }

        return 70;
      }

      if (PixelFormat != 641230384 && PixelFormat != 641234480)
      {
        return 70;
      }
    }

    else
    {
      if (PixelFormat <= 875704421)
      {
        if (PixelFormat == 645166644)
        {
          return 582;
        }

        v3 = 645428784;
        goto LABEL_26;
      }

      if (PixelFormat != 875704422 && PixelFormat != 875704438)
      {
        if (PixelFormat == 1111970369)
        {
          return 80;
        }

        return 70;
      }
    }

    return 500;
  }

  if (PixelFormat > 1953903151)
  {
    if (PixelFormat <= 1999843441)
    {
      if (PixelFormat == 1953903152)
      {
        return 570;
      }

      if (PixelFormat == 1953903154)
      {
        return 571;
      }

      return 70;
    }

    if (PixelFormat == 1999843442)
    {
      return 554;
    }

    if (PixelFormat == 2016686640)
    {
      return 505;
    }

    v3 = 2019963440;
LABEL_26:
    if (PixelFormat == v3)
    {
      return result;
    }

    return 70;
  }

  if (PixelFormat <= 1815162993)
  {
    if (PixelFormat == 1380411457)
    {
      return 115;
    }

    return 70;
  }

  if (PixelFormat == 1815162994)
  {
    return 94;
  }

  if (PixelFormat != 1882468912)
  {
    v3 = 1885745712;
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_25E798A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06440, &qword_25E79DE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E798A78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
    swift_beginAccess();
    v17 = *v2;
    v18 = *(v2 + 16);
    v19 = *(v2 + 32);
    v20 = *(v2 + 48);
    if ((IncludesDebugInfo(&v17) & 1) == 0)
    {
      goto LABEL_10;
    }

    if (*(v2 + 9))
    {
      goto LABEL_10;
    }

    v3 = *&v1[OBJC_IVAR___SwiftVideoProcessor_bufferDataDebug];
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = [swift_unknownObjectRetain() contents];
    v5 = v3;
    if (*(v2 + 5) != 1)
    {
LABEL_8:
      v10 = &v1[OBJC_IVAR___SwiftVideoProcessor_validationCallback];
      swift_beginAccess();
      v11 = *v10;
      if (*v10)
      {
        v12 = *(v10 + 1);
        v13 = *v4;
        v14 = v4[7];
        v15 = v4[8] * 100.0;

        v11(v16, v13, v14, v15);
        sub_25E79268C(v11, v12);
      }

LABEL_10:
      sub_25E79A828();

      return;
    }

    if (PSELog)
    {
      v6 = PSELog;
      sub_25E79A7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD063C8, &qword_25E79DE20);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25E79DDF0;
      v8 = MEMORY[0x277D83A90];
      v9 = MEMORY[0x277D83B08];
      *(v7 + 56) = MEMORY[0x277D83A90];
      *(v7 + 64) = v9;
      *(v7 + 32) = *v4;
      *(v7 + 96) = v8;
      *(v7 + 104) = v9;
      *(v7 + 72) = v4[1];
      *(v7 + 136) = v8;
      *(v7 + 144) = v9;
      *(v7 + 112) = v4[2];
      *(v7 + 176) = v8;
      *(v7 + 184) = v9;
      *(v7 + 152) = v4[3];
      *(v7 + 216) = v8;
      *(v7 + 224) = v9;
      *(v7 + 192) = v4[4];
      *(v7 + 256) = v8;
      *(v7 + 264) = v9;
      *(v7 + 232) = v4[5];
      *(v7 + 296) = v8;
      *(v7 + 304) = v9;
      *(v7 + 272) = v4[6];
      *(v7 + 336) = v8;
      *(v7 + 344) = v9;
      *(v7 + 312) = v4[7];
      *(v7 + 376) = v8;
      *(v7 + 384) = v9;
      *(v7 + 352) = v4[13];
      *(v7 + 416) = v8;
      *(v7 + 424) = v9;
      *(v7 + 392) = v4[8];
      *(v7 + 456) = v8;
      *(v7 + 464) = v9;
      *(v7 + 432) = v4[11];
      *(v7 + 496) = v8;
      *(v7 + 504) = v9;
      *(v7 + 472) = v4[12];
      *(v7 + 536) = v8;
      *(v7 + 544) = v9;
      *(v7 + 512) = v4[9];
      *(v7 + 576) = v8;
      *(v7 + 584) = v9;
      *(v7 + 552) = v4[10];
      sub_25E79A758("APL:%7.2fnits, AdaptLevel:%5.1fnits, Contrast:%6.2f, Response:%6.2f, Response2:%6.2f, Energy:%6.1f, E2:%4.3f, Risk:%6.2f, VFML:%6.2f, MitigateCF:%5.2f, MuAdapt:%5.3f, FPS:%3.0f, EDR:%4.2f, DisplayEDR:%4.2f", *&v17, *(&v17 + 1), *&v18, *(&v18 + 1), *&v19, *(&v19 + 1), v20, v21, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5]);

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    sub_25E79A828();
  }
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25E798D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E798DDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25E798E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E798E70(uint64_t result, int a2, int a3)
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

uint64_t sub_25E798EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25E798F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

void sub_25E798FA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_25E799004(double a1, double a2, double a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t sub_25E79907C()
{
  result = qword_27FD066A0;
  if (!qword_27FD066A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD066A0);
  }

  return result;
}

uint64_t IncludesDebugInfo(uint64_t a1)
{
  if (*(a1 + 6))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 5);
  }

  return v1 & 1;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_25E799140(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_25E7991D8()
{
  v0 = swift_allocObject();
  sub_25E799210();
  return v0;
}

uint64_t sub_25E799210()
{
  *(v0 + 16) = xmmword_25E79E150;
  *(v0 + 32) = xmmword_25E79E160;
  v1 = sub_25E79A7B8();
  *(v1 + 16) = 10;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06840, &qword_25E79E170);
  v2 = sub_25E79A7B8();
  v2[2] = 7;
  v2[4] = v1;
  v2[5] = v1;
  v2[6] = v1;
  v2[7] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[10] = v1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06848, &qword_25E79E178);
  v3 = sub_25E79A7B8();
  v3[2] = 5;
  v3[4] = v2;
  v3[5] = v2;
  v3[6] = v2;
  v3[7] = v2;
  v3[8] = v2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD06850, &unk_25E79E180);
  v4 = sub_25E79A7B8();
  v4[2] = 3;
  v4[4] = v3;
  v4[5] = v3;
  v4[6] = v3;
  *(v0 + 48) = v4;
  v5 = *(*v0 + 152);
  v6 = swift_bridgeObjectRetain_n();
  v5(v6);
  return v0;
}

void sub_25E799368()
{
  v1 = v0;
  v68 = sub_25E79A738();
  v2 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VideoProcessor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_25E79A768();
  v8 = sub_25E79A768();
  v9 = [v6 pathForResource:v7 ofType:v8];

  if (!v9)
  {
    return;
  }

  v10 = sub_25E79A788();
  v12 = v11;

  v13 = objc_allocWithZone(MEMORY[0x277CCACA8]);

  v14 = sub_25E799BDC(v10, v12, 1);

  if (!v14)
  {
    return;
  }

  v15 = sub_25E79A768();
  v16 = [v14 componentsSeparatedByString_];

  v17 = sub_25E79A7A8();
  v62 = *(v17 + 16);
  if (!v62)
  {

    return;
  }

  v56 = v14;
  v55 = 0;
  v18 = (*v1 + 136);
  v61 = *v18;
  v60 = v18;
  v59 = v17 + 32;
  sub_25E799EC4();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = (v2 + 8);
  v23 = 0;
  v57 = v1;
  v58 = v17;
  while (1)
  {
    v66 = v20;
    v67 = v19;
    v65 = v23;
    v24 = *(v59 + 16 * v23 + 8);
    v69 = *(v59 + 16 * v23);
    v70 = v24;
    v73 = 44;
    v74 = 0xE100000000000000;
    v25 = sub_25E79A838();
    v26 = *(v25 + 16);
    if (v26)
    {
      v64 = v21;
      v73 = MEMORY[0x277D84F90];
      sub_25E799F18(0, v26, 0);
      v27 = v73;
      v63 = v25;
      v28 = (v25 + 40);
      while (1)
      {
        v29 = *v28;
        v69 = *(v28 - 1);
        v70 = v29;

        sub_25E79A728();
        v30 = sub_25E79A848();
        v32 = v31;
        v33 = (*v22)(v4, v68);
        v72 = 0.0;
        MEMORY[0x28223BE20](v33);
        *(&v55 - 2) = &v72;
        if ((v32 & 0x1000000000000000) != 0)
        {
LABEL_29:
          v39 = v55;
          sub_25E79A868();
          v55 = v39;
          goto LABEL_22;
        }

        if ((v32 & 0x2000000000000000) != 0)
        {
          v69 = v30;
          v70 = v32 & 0xFFFFFFFFFFFFFFLL;
          if (v30 < 0x21u && ((0x100003E01uLL >> v30) & 1) != 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v30 & 0x1000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v34 = *((v32 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v34 < 0x21 && ((0x100003E01uLL >> v34) & 1) != 0)
          {
LABEL_21:
            v71 = 0;
            goto LABEL_22;
          }
        }

        v35 = _swift_stdlib_strtod_clocale();
        if (!v35)
        {
          goto LABEL_21;
        }

        v71 = *v35 == 0;
LABEL_22:

        if (v71)
        {
          v36 = v72;
        }

        else
        {
          v36 = 0.0;
        }

        v73 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_25E799F18((v37 > 1), v38 + 1, 1);
          v27 = v73;
        }

        *(v27 + 16) = v38 + 1;
        *(v27 + 8 * v38 + 32) = v36;
        v28 += 2;
        if (!--v26)
        {

          v21 = v64;
          goto LABEL_31;
        }
      }
    }

    v27 = MEMORY[0x277D84F90];
LABEL_31:
    v40 = v61(&v69);
    v42 = v41;
    v43 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v42 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_25E799D48(v43);
      *v42 = v43;
    }

    v45 = v65;
    if ((v67 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v67 >= v43[2])
    {
      goto LABEL_66;
    }

    v46 = v21;
    v47 = v43 + 4;
    v48 = v43[v67 + 4];
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v47[v67] = v48;
    if (v49)
    {
      v50 = v66;
      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v48 = sub_25E799D00(v48);
      v47[v67] = v48;
      v50 = v66;
      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }
    }

    if (v50 >= v48[2])
    {
      goto LABEL_68;
    }

    v51 = v48 + 4;
    v52 = v48[v50 + 4];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v51[v66] = v52;
    if (v53)
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v52 = sub_25E799CB8(v52);
      v51[v66] = v52;
      if ((v46 & 0x8000000000000000) != 0)
      {
LABEL_60:
        __break(1u);
LABEL_61:

        return;
      }
    }

    if (v46 >= v52[2])
    {
      goto LABEL_69;
    }

    v23 = v45 + 1;
    v52[v46 + 4] = v27;

    v40(&v69, 0);
    if (v46 < 6)
    {
      v21 = v46 + 1;
      v20 = v66;
      v19 = v67;
      v54 = v58;
      if (v66 < 5)
      {
        if (v23 == v62)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      goto LABEL_49;
    }

    v19 = v67;
    v54 = v58;
    if (v66 > 3)
    {
      v21 = 0;
LABEL_49:
      if (v19 > 1)
      {
        if (v23 == v62)
        {
          goto LABEL_61;
        }

        v19 = 0;
        v20 = 0;
      }

      else
      {
        if (v23 == v62)
        {
          goto LABEL_61;
        }

        v20 = 0;
        ++v19;
      }

      goto LABEL_8;
    }

    v20 = v66 + 1;
    if (v67 > 2)
    {
      if (v23 == v62)
      {
        goto LABEL_61;
      }

      v19 = 0;
    }

    else if (v23 == v62)
    {
      goto LABEL_61;
    }

    v21 = 0;
LABEL_8:
    if (v23 >= *(v54 + 16))
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  __break(1u);
}

uint64_t sub_25E799BA4()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_25E799BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25E79A768();

  v10[0] = 0;
  v6 = [v3 initWithContentsOfFile:v5 encoding:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_25E79A748();

    swift_willThrow();
  }

  return v6;
}

void *sub_25E799D90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_25E799EC4()
{
  result = qword_27FD06858;
  if (!qword_27FD06858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD06858);
  }

  return result;
}

char *sub_25E799F18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E799FDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_BYTE *sub_25E799F38@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

char *sub_25E799FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD066B8, &unk_25E79DFD0);
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
    v10 = MEMORY[0x277D84F90];
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
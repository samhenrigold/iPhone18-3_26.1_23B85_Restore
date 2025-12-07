id TTSUIAppImageForBundleID(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(getISIconClass()) initWithBundleIdentifier:v1];
  if (v2 || ([getISIconClass() genericApplicationIcon], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v4 = getISImageDescriptorClass_softClass;
    v26 = getISImageDescriptorClass_softClass;
    if (!getISImageDescriptorClass_softClass)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getISImageDescriptorClass_block_invoke;
      v21 = &unk_279DBA998;
      v22 = &v23;
      __getISImageDescriptorClass_block_invoke(&v18);
      v4 = v24[3];
    }

    v5 = v4;
    _Block_object_dispose(&v23, 8);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v6 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
    v26 = getkISImageDescriptorTableUINameSymbolLoc_ptr;
    if (!getkISImageDescriptorTableUINameSymbolLoc_ptr)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __getkISImageDescriptorTableUINameSymbolLoc_block_invoke;
      v21 = &unk_279DBA998;
      v22 = &v23;
      v7 = IconServicesLibrary();
      v8 = dlsym(v7, "kISImageDescriptorTableUIName");
      *(v22[1] + 24) = v8;
      getkISImageDescriptorTableUINameSymbolLoc_ptr = *(v22[1] + 24);
      v6 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v6)
    {
      TTSUIAppImageForBundleID_cold_1();
      v17 = v16;
      _Block_object_dispose(&v23, 8);
      _Unwind_Resume(v17);
    }

    v9 = [v4 imageDescriptorNamed:*v6];
    [v9 setDrawBorder:1];
    v10 = [v3 prepareImageForDescriptor:v9];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0x277D755B8];
      v13 = [v10 CGImage];
      [v11 scale];
      v14 = [v12 imageWithCGImage:v13 scale:0 orientation:?];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_279DBA998;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26EE0357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TTSDeviceTemplateType()
{
  v0 = NSClassFromString(&cfstr_Obdevice.isa);
  if (v0)
  {
    v1 = v0;
    if (objc_opt_respondsToSelector())
    {
      v2 = [(objc_class *)v1 currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v2 templateType];

        return v3;
      }

      v19 = AXTTSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        TTSDeviceTemplateType_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    else
    {
      v2 = AXTTSLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        TTSDeviceTemplateType_cold_1(v2, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v2 = AXTTSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      TTSDeviceTemplateType_cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return 0;
}

Class __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISIconClass_block_invoke_cold_1();
    return IconServicesLibrary();
  }

  return result;
}

uint64_t IconServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IconServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279DBA9B8;
    v5 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISImageDescriptorClass_block_invoke_cold_1();
    return __getkISImageDescriptorTableUINameSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_26EE0391C()
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  v0 = swift_allocObject();
  sub_26EE0CDF8();
  return v0;
}

uint64_t sub_26EE03958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v5 = a2 + *(v4 + 20);
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE151B0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *v5 = sub_26EF3973C();
  *(v5 + 8) = v6 & 1;
  v7 = a2 + *(v4 + 24);
  *v7 = sub_26EE0391C;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v8 = sub_26EF37EDC();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t sub_26EE03A84@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v29 = *(v2 - 8);
  v28 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26EF39B2C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65C8, &qword_26EF3C6D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65D0, &qword_26EF3C6D8);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v22 - v11;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65D8, &qword_26EF3C6E0);
  sub_26EE154C8(&qword_2806C65E0, &qword_2806C65D8, &qword_26EF3C6E0, MEMORY[0x277CE14C0]);
  sub_26EF3A50C();
  sub_26EF39B1C();
  v13 = sub_26EE154C8(&qword_2806C65E8, &qword_2806C65C8, &qword_26EF3C6D0, MEMORY[0x277CDE5A0]);
  v14 = MEMORY[0x277CDDAC8];
  sub_26EF3A95C();
  (*(v22 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  sub_26EF39EAC();
  v31 = v7;
  v32 = v4;
  v33 = v13;
  v34 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v26;
  v16 = v23;
  sub_26EF3A74C();

  (*(v25 + 8))(v12, v16);
  v17 = v27;
  sub_26EE12360(v24, v27, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v18 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v19 = swift_allocObject();
  sub_26EE123CC(v17, v19 + v18, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F0, &qword_26EF3C6F8) + 36));
  sub_26EF3990C();
  result = sub_26EF3B2EC();
  *v20 = &unk_26EF3C6F0;
  v20[1] = v19;
  return result;
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

uint64_t sub_26EE03F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6980, &qword_26EF3CEC8);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6728, &qword_26EF3C9E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v58 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6720, &qword_26EF3C9D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6718, &qword_26EF3C9D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v57 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6710, &qword_26EF3C9C8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v47 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v47 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v47 - v32;
  v53 = &v47 - v32;
  sub_26EE04600(&v47 - v32);
  v51 = v31;
  sub_26EE048FC(v31);
  v50 = v21;
  sub_26EE04BF8(v21);
  v48 = v16;
  sub_26EE04EF8(v16);
  sub_26EE051F0(v11);
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6988, &qword_26EF3CED0);
  sub_26EE14B88();
  v34 = v60;
  sub_26EF3AD6C();
  v35 = v28;
  v52 = v28;
  sub_26EE13B88(v33, v28, &qword_2806C6710, &qword_26EF3C9C8);
  v49 = v25;
  sub_26EE13B88(v31, v25, &qword_2806C6710, &qword_26EF3C9C8);
  v36 = v57;
  sub_26EE13B88(v21, v57, &qword_2806C6718, &qword_26EF3C9D0);
  v37 = v16;
  v38 = v59;
  sub_26EE13B88(v37, v59, &qword_2806C6720, &qword_26EF3C9D8);
  v39 = v54;
  sub_26EE13B88(v58, v54, &qword_2806C6728, &qword_26EF3C9E0);
  v47 = *(v61 + 16);
  v40 = v55;
  v47(v55, v34, v62);
  v41 = v35;
  v42 = v56;
  sub_26EE13B88(v41, v56, &qword_2806C6710, &qword_26EF3C9C8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69A8, &qword_26EF3CEE0);
  sub_26EE13B88(v25, v42 + v43[12], &qword_2806C6710, &qword_26EF3C9C8);
  sub_26EE13B88(v36, v42 + v43[16], &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE13B88(v38, v42 + v43[20], &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE13B88(v39, v42 + v43[24], &qword_2806C6728, &qword_26EF3C9E0);
  v44 = v62;
  v47((v42 + v43[28]), v40, v62);
  v45 = *(v61 + 8);
  v45(v60, v44);
  sub_26EE14578(v58, &qword_2806C6728, &qword_26EF3C9E0);
  sub_26EE14578(v48, &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE14578(v50, &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE14578(v51, &qword_2806C6710, &qword_26EF3C9C8);
  sub_26EE14578(v53, &qword_2806C6710, &qword_26EF3C9C8);
  v45(v40, v44);
  sub_26EE14578(v39, &qword_2806C6728, &qword_26EF3C9E0);
  sub_26EE14578(v59, &qword_2806C6720, &qword_26EF3C9D8);
  sub_26EE14578(v57, &qword_2806C6718, &qword_26EF3C9D0);
  sub_26EE14578(v49, &qword_2806C6710, &qword_26EF3C9C8);
  return sub_26EE14578(v52, &qword_2806C6710, &qword_26EF3C9C8);
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

uint64_t sub_26EE04600@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v6)
  {
    MEMORY[0x28223BE20](v2);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    sub_26EE0C3A8();
    sub_26EF3AD5C();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_26EE048FC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v6)
  {
    MEMORY[0x28223BE20](v2);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    sub_26EE0C3A8();
    sub_26EF3AD5C();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C65F8, &qword_26EF3C748);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_26EE04BF8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v6)
  {
    MEMORY[0x28223BE20](v2);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6640, &qword_26EF3C808);
    sub_26EE0C5DC();
    sub_26EF3AD5C();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6638, &qword_26EF3C800);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6638, &qword_26EF3C800);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_26EE04EF8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v6)
  {
    MEMORY[0x28223BE20](v2);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6660, &qword_26EF3C868);
    sub_26EE0C7A0();
    sub_26EF3AD5C();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6658, &qword_26EF3C860);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6658, &qword_26EF3C860);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_26EE051F0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  if (v6)
  {
    MEMORY[0x28223BE20](v2);
    sub_26EF39EAC();
    sub_26EF3A5CC();
    sub_26EF39EAC();
    sub_26EF3A5CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6688, &qword_26EF3C8C8);
    sub_26EE0C9E0();
    sub_26EF3AD5C();

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6680, &qword_26EF3C8C0);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6680, &qword_26EF3C8C0);
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_26EE054FC(uint64_t a1)
{
  v2 = type metadata accessor for Sample(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  v9 = type metadata accessor for VBInternal_SampleDetailsView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26EE12360(a1, v8, type metadata accessor for Sample);
  sub_26EE12360(v8, v11, type metadata accessor for Sample);
  sub_26EE123CC(v8, v6, type metadata accessor for Sample);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_26EE123CC(v6, v13 + v12, type metadata accessor for Sample);
  v14 = &v11[*(v9 + 20)];
  *v14 = sub_26EE14D04;
  *(v14 + 1) = v13;
  v14[16] = 0;
  v17 = a1;
  type metadata accessor for VBInternal_SampleSummaryView(0);
  sub_26EE11F4C(&qword_2806CA738, type metadata accessor for VBInternal_SampleSummaryView, &unk_26EF3CA9C);
  sub_26EE11F4C(&qword_2806CA740, type metadata accessor for VBInternal_SampleDetailsView, &unk_26EF3CAEC);
  return sub_26EF3998C();
}

uint64_t sub_26EE05780(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_26EF39DDC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[7] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_26EE05874, v4, v3);
}

uint64_t sub_26EE05874()
{
  v1 = v0[3];
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v0[10] = v2;
  v3 = v1 + *(v2 + 20);
  v4 = *v3;
  if (*(v3 + 8) == 1)
  {
    v5 = v4;
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = v0[2];
  }

  v0[11] = v5;
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_26EE059E4;
  v11 = v0[3];

  return sub_26EEDF11C(v11);
}

uint64_t sub_26EE059E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_26EE05C1C;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_26EE05B14;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EE05B14()
{
  v1 = *(v0 + 112);

  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  sub_26EE05E90(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EE05C1C()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void sub_26EE05C9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26EE05CB0()
{
  v2 = *(type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE05780(v0 + v3);
}

uint64_t sub_26EE05D7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26EE05E90(uint64_t a1)
{
  v128 = a1;
  v131 = sub_26EF38E9C();
  v119 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v118 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v3 - 8);
  v124 = &v117 - v4;
  v132 = sub_26EF37DCC();
  v121 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Sample(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v117 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v17 = v134[2];

  if (v17)
  {
    return result;
  }

  v19 = v121;
  v133 = v14;
  v123 = v6;
  v129 = v7;
  v130 = v8;
  v120 = v1;
  v20 = v128;
  v21 = *(v128 + 16);
  if (v21)
  {
    v127 = *(v119 + 16);
    v128 = v119 + 16;
    v22 = v20 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v23 = *(v119 + 72);
    v125 = (v121 + 6);
    v126 = v23;
    ++v121;
    v122 = (v19 + 4);
    v24 = MEMORY[0x277D84F90];
    v25 = v124;
    do
    {
      v127(v16, v22, v131);
      v26 = v129;
      v27 = *(v129 + 20);
      *&v16[v27] = 0;
      v28 = *(v26 + 24);
      *&v16[v28] = 0;
      sub_26EF38E5C();
      v29 = v132;
      if ((*v125)(v25, 1, v132) == 1)
      {
        sub_26EE14578(v25, &qword_2806C6840, &qword_26EF3CD50);
        v8 = v130;
      }

      else
      {
        v30 = v25;
        v31 = v123;
        (*v122)(v123, v30, v29);
        v32 = sub_26EF38C4C();
        sub_26EF38C6C();
        *&v16[v27] = v33;
        sub_26EF38C5C();
        v35 = v34;

        (*v121)(v31, v132);
        *&v16[v28] = v35;
        v8 = v130;
        v25 = v124;
      }

      sub_26EE12360(v16, v133, type metadata accessor for Sample);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_26EE12F34(0, v24[2] + 1, 1, v24);
      }

      v37 = v24[2];
      v36 = v24[3];
      v38 = v24;
      if (v37 >= v36 >> 1)
      {
        v38 = sub_26EE12F34((v36 > 1), v37 + 1, 1, v24);
      }

      sub_26EE14874(v16, type metadata accessor for Sample);
      v38[2] = v37 + 1;
      v24 = v38;
      sub_26EE123CC(v133, v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v37, type metadata accessor for Sample);
      v22 += v126;
      --v21;
    }

    while (v21);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v24;

  sub_26EF3953C();
  v39 = v24[2];
  v40 = MEMORY[0x277D84F90];
  v133 = v24;
  if (!v39)
  {
    v52 = 1;
LABEL_23:
    v50 = v118;
    goto LABEL_24;
  }

  v134 = MEMORY[0x277D84F90];
  sub_26EE139A4(0, v39, 0);
  v40 = v134;
  v41 = v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v42 = *(v8 + 72);
  v43 = v41;
  v44 = v39;
  do
  {
    sub_26EE12360(v43, v11, type metadata accessor for Sample);
    sub_26EF38E4C();
    v46 = v45;
    sub_26EE14874(v11, type metadata accessor for Sample);
    v134 = v40;
    v48 = v40[2];
    v47 = v40[3];
    if (v48 >= v47 >> 1)
    {
      sub_26EE139A4((v47 > 1), v48 + 1, 1);
      v40 = v134;
    }

    v40[2] = v48 + 1;
    *(v40 + v48 + 8) = v46;
    v43 += v42;
    --v44;
  }

  while (v44);
  if (!v133[2])
  {
    v52 = 1;
    v8 = v130;
    goto LABEL_23;
  }

  v49 = v119;
  v50 = v118;
  v51 = v131;
  (*(v119 + 16))(v118, v41, v131);
  sub_26EF38E0C();
  (*(v49 + 8))(v50, v51);
  v52 = 0;
  v8 = v130;
LABEL_24:
  v53 = sub_26EE148D4(v40);
  v55 = v54;
  v58 = v56 | (v57 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v58;
  v135 = v53;
  v136 = v55;

  result = sub_26EF3953C();
  v59 = MEMORY[0x277D84F90];
  if (v39)
  {
    v134 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v39, 0);
    v59 = v134;
    v60 = v133 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v61 = *(v8 + 72);
    v62 = v39;
    do
    {
      sub_26EE12360(v60, v11, type metadata accessor for Sample);
      sub_26EF38E3C();
      v64 = v63;
      result = sub_26EE14874(v11, type metadata accessor for Sample);
      v134 = v59;
      v66 = v59[2];
      v65 = v59[3];
      if (v66 >= v65 >> 1)
      {
        result = sub_26EE139A4((v65 > 1), v66 + 1, 1);
        v59 = v134;
      }

      v59[2] = v66 + 1;
      *(v59 + v66 + 8) = v64;
      v60 += v61;
      --v62;
    }

    while (v62);
    v8 = v130;
    v67 = v133;
    v50 = v118;
  }

  else
  {
    v67 = v133;
  }

  v68 = v131;
  v69 = v119;
  if ((v52 & 1) == 0)
  {
    if (!*(v67 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v119 + 16))(v50, v67 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v131, 0.0);
    sub_26EF38DFC();
    (*(v69 + 8))(v50, v68);
  }

  v70 = sub_26EE148D4(v59);
  v72 = v71;
  v75 = v73 | (v74 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v75;
  v135 = v70;
  v136 = v72;

  sub_26EF3953C();
  v76 = MEMORY[0x277D84F90];
  if (v39)
  {
    v134 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v39, 0);
    v76 = v134;
    v77 = v133 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v78 = *(v8 + 72);
    v79 = v39;
    do
    {
      sub_26EE12360(v77, v11, type metadata accessor for Sample);
      v80 = sub_26EF38E8C();
      sub_26EE14874(v11, type metadata accessor for Sample);
      v134 = v76;
      v82 = v76[2];
      v81 = v76[3];
      if (v82 >= v81 >> 1)
      {
        sub_26EE139A4((v81 > 1), v82 + 1, 1);
        v76 = v134;
      }

      v76[2] = v82 + 1;
      *(v76 + v82 + 8) = v80;
      v77 += v78;
      --v79;
    }

    while (v79);
    v8 = v130;
  }

  sub_26EF3921C();
  v83 = sub_26EE148D4(v76);
  v85 = v84;
  v88 = v86 | (v87 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v88;
  v135 = v83;
  v136 = v85;

  sub_26EF3953C();
  v89 = MEMORY[0x277D84F90];
  if (v39)
  {
    v134 = MEMORY[0x277D84F90];
    sub_26EE139A4(0, v39, 0);
    v90 = v134;
    v91 = v133 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v92 = *(v8 + 72);
    v93 = v39;
    v94 = v129;
    do
    {
      sub_26EE12360(v91, v11, type metadata accessor for Sample);
      v95 = *&v11[*(v94 + 20)];
      sub_26EE14874(v11, type metadata accessor for Sample);
      v134 = v90;
      v97 = v90[2];
      v96 = v90[3];
      if (v97 >= v96 >> 1)
      {
        sub_26EE139A4((v96 > 1), v97 + 1, 1);
        v94 = v129;
        v90 = v134;
      }

      v90[2] = v97 + 1;
      *(v90 + v97 + 8) = v95;
      v91 += v92;
      --v93;
    }

    while (v93);
    v8 = v130;
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
  }

  v98 = sub_26EE148D4(v90);
  v100 = v99;
  v103 = v101 | (v102 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v103;
  v135 = v98;
  v136 = v100;

  sub_26EF3953C();
  if (v39)
  {
    v134 = v89;
    sub_26EE139A4(0, v39, 0);
    v104 = v134;
    v105 = v133 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v106 = *(v8 + 72);
    v107 = v129;
    do
    {
      sub_26EE12360(v105, v11, type metadata accessor for Sample);
      v108 = *&v11[*(v107 + 24)];
      sub_26EE14874(v11, type metadata accessor for Sample);
      v134 = v104;
      v110 = v104[2];
      v109 = v104[3];
      if (v110 >= v109 >> 1)
      {
        sub_26EE139A4((v109 > 1), v110 + 1, 1);
        v107 = v129;
        v104 = v134;
      }

      v104[2] = v110 + 1;
      *(v104 + v110 + 8) = v108;
      v105 += v106;
      --v39;
    }

    while (v39);
  }

  else
  {

    v104 = MEMORY[0x277D84F90];
  }

  v111 = sub_26EE148D4(v104);
  v113 = v112;
  v116 = v114 | (v115 << 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v116;
  v135 = v111;
  v136 = v113;

  return sub_26EF3953C();
}

uint64_t sub_26EE06BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v79 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48) - 8;
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - v7;
  v8 = sub_26EF393EC();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v60 - v11;
  v68 = sub_26EF3945C();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v60 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v83 = *(v72 - 8);
  v14 = MEMORY[0x28223BE20](v72);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v60 - v16;
  v17 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v60 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v81 = *(v65 - 8);
  v23 = MEMORY[0x28223BE20](v65);
  v80 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  v88 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_26EE123CC(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26EE14860;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v84 = sub_26EF3941C();
  v85 = MEMORY[0x277CDF838];
  v86 = MEMORY[0x277CBB408];
  v87 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v30;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v32 = v26;
  v61 = v26;
  v33 = v63;
  sub_26EF393AC();
  (*(v20 + 8))(v22, v33);
  sub_26EF39EAC();
  *&v84 = a4;
  sub_26EF393BC();

  v34 = v64;
  sub_26EF3944C();
  v84 = sub_26EF3A97C();
  v35 = MEMORY[0x277CE0F78];
  v36 = MEMORY[0x277CBB450];
  v37 = MEMORY[0x277CE0F60];
  v38 = v66;
  v39 = v68;
  sub_26EF3938C();

  v40 = v34;
  v41 = v39;
  (*(v69 + 8))(v40, v39);
  v42 = v74;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v84 = v41;
  v85 = v35;
  v86 = v36;
  v87 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v82;
  v44 = v71;
  sub_26EF3937C();
  (*(v75 + 8))(v42, v76);
  (*(v73 + 8))(v38, v44);
  v45 = v80;
  v46 = *(v81 + 16);
  v47 = v65;
  v46(v80, v32, v65);
  v48 = *(v83 + 16);
  v49 = v70;
  v50 = v72;
  v48(v70, v43, v72);
  v51 = v77;
  v46(v77, v45, v47);
  v52 = v78;
  v53 = *(v78 + 56);
  v48(&v51[v53], v49, v50);
  v54 = v81;
  v55 = v79;
  (*(v81 + 32))(v79, v51, v47);
  v56 = v83;
  (*(v83 + 32))(v55 + *(v52 + 56), &v51[v53], v50);
  v57 = *(v56 + 8);
  v57(v82, v50);
  v58 = *(v54 + 8);
  v58(v61, v47);
  v57(v49, v50);
  return (v58)(v80, v47);
}

double sub_26EE075CC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26EF3C690;
  sub_26EF3A9FC();
  v5 = sub_26EF3AA2C();

  *(v4 + 32) = v5;
  sub_26EF3A98C();
  v6 = sub_26EF3AA2C();

  *(v4 + 40) = v6;
  sub_26EF3A9DC();
  v7 = sub_26EF3AA2C();

  *(v4 + 48) = v7;
  sub_26EF3AA1C();
  v8 = sub_26EF3AA2C();

  *(v4 + 56) = v8;
  sub_26EF3AA0C();
  v9 = sub_26EF3AA2C();

  *(v4 + 64) = v9;
  sub_26EF3A97C();
  v10 = sub_26EF3AA2C();

  *(v4 + 72) = v10;
  if (a1)
  {
    sub_26EF3AF0C();
    sub_26EF3AF1C();
  }

  else
  {
    sub_26EF3AF1C();
    sub_26EF3AF0C();
  }

  MEMORY[0x274382EE0](v4);
  sub_26EF3997C();
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_26EE07778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6908, &qword_26EF3CE18);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  sub_26EE13D80();
  v8 = *a1;
  v23 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  sub_26EF3945C();
  v11 = v4[14];
  v22 = v11;
  v12 = *(v10 - 8);
  v13 = *(v12 + 16);
  v13(&v6[v11], a1[1], v10);
  v21 = v4[18];
  v13(&v6[v21], a1[2], v10);
  v20 = v4[22];
  v13(&v6[v20], a1[3], v10);
  v14 = v4[26];
  v13(&v6[v14], a1[4], v10);
  v15 = v4[30];
  v13(&v6[v15], a1[5], v10);
  v16 = v24;
  (*(v9 + 32))(v24, v6, v23);
  v17 = *(v12 + 32);
  v17(v16 + v4[14], &v6[v22], v10);
  v17(v16 + v4[18], &v6[v21], v10);
  v17(v16 + v4[22], &v6[v20], v10);
  v17(v16 + v4[26], &v6[v14], v10);
  return (v17)(v16 + v4[30], &v6[v15], v10);
}

uint64_t sub_26EE07A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6618, &qword_26EF3C760);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6610, &qword_26EF3C758);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6960, &qword_26EF3CE60);
  v42 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v40 = &v37 - v23;
  v43 = a5;
  v44 = a6;
  v45 = a1;
  v46 = a7;
  v47 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6920, &qword_26EF3CE30);
  sub_26EE14310();
  result = sub_26EF393FC();
  if ((a6 + 5.0) < -5.0)
  {
    __break(1u);
  }

  else
  {
    v48 = -1063256064;
    v49 = a6 + 5.0;
    v25 = sub_26EF3946C();
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6620, &qword_26EF3C768);
    v27 = sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760, MEMORY[0x277CBB3F8]);
    v38 = v22;
    v28 = a4;
    v29 = v27;
    v30 = sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768, MEMORY[0x277CBB598]);
    sub_26EF3A60C();
    sub_26EE14578(v15, &qword_2806C6910, &qword_26EF3CE20);
    (*(v17 + 8))(v19, v16);
    *&v50 = v16;
    *(&v50 + 1) = v26;
    *&v51 = v29;
    *(&v51 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v40;
    v32 = v41;
    sub_26EF3A5FC();
    (*(v39 + 8))(v21, v32);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    (*(v42 + 32))(v28, v31, v38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6600, &qword_26EF3C750);
    v33 = (v28 + *(result + 36));
    v34 = v55;
    v33[4] = v54;
    v33[5] = v34;
    v33[6] = v56;
    v35 = v51;
    *v33 = v50;
    v33[1] = v35;
    v36 = v53;
    v33[2] = v52;
    v33[3] = v36;
  }

  return result;
}

uint64_t sub_26EE07F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v79 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48) - 8;
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - v7;
  v8 = sub_26EF393EC();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v60 - v11;
  v68 = sub_26EF3945C();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v60 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v83 = *(v72 - 8);
  v14 = MEMORY[0x28223BE20](v72);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v60 - v16;
  v17 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v60 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v81 = *(v65 - 8);
  v23 = MEMORY[0x28223BE20](v65);
  v80 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  v88 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_26EE123CC(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26EE14798;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v84 = sub_26EF3941C();
  v85 = MEMORY[0x277CDF838];
  v86 = MEMORY[0x277CBB408];
  v87 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v30;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v32 = v26;
  v61 = v26;
  v33 = v63;
  sub_26EF393AC();
  (*(v20 + 8))(v22, v33);
  sub_26EF39EAC();
  *&v84 = a4;
  sub_26EF393BC();

  v34 = v64;
  sub_26EF3944C();
  v84 = sub_26EF3A97C();
  v35 = MEMORY[0x277CE0F78];
  v36 = MEMORY[0x277CBB450];
  v37 = MEMORY[0x277CE0F60];
  v38 = v66;
  v39 = v68;
  sub_26EF3938C();

  v40 = v34;
  v41 = v39;
  (*(v69 + 8))(v40, v39);
  v42 = v74;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v84 = v41;
  v85 = v35;
  v86 = v36;
  v87 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v82;
  v44 = v71;
  sub_26EF3937C();
  (*(v75 + 8))(v42, v76);
  (*(v73 + 8))(v38, v44);
  v45 = v80;
  v46 = *(v81 + 16);
  v47 = v65;
  v46(v80, v32, v65);
  v48 = *(v83 + 16);
  v49 = v70;
  v50 = v72;
  v48(v70, v43, v72);
  v51 = v77;
  v46(v77, v45, v47);
  v52 = v78;
  v53 = *(v78 + 56);
  v48(&v51[v53], v49, v50);
  v54 = v81;
  v55 = v79;
  (*(v81 + 32))(v79, v51, v47);
  v56 = v83;
  (*(v83 + 32))(v55 + *(v52 + 56), &v51[v53], v50);
  v57 = *(v56 + 8);
  v57(v82, v50);
  v58 = *(v54 + 8);
  v58(v61, v47);
  v57(v49, v50);
  return (v58)(v80, v47);
}

uint64_t sub_26EE0896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v35 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6618, &qword_26EF3C760);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6650, &qword_26EF3C810);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6918, &qword_26EF3CE28);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v23 = &v32 - v22;
  v36 = a4;
  v37 = a5;
  v38 = a1;
  v39 = a6;
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6920, &qword_26EF3CE30);
  sub_26EE14310();
  sub_26EF393FC();
  v24 = sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760, MEMORY[0x277CBB3F8]);
  sub_26EF3A5FC();
  result = (*(v15 + 8))(v17, v14);
  if ((a5 + 5.0) < -5.0)
  {
    __break(1u);
  }

  else
  {
    v41 = -1063256064;
    v42 = a5 + 5.0;
    v26 = sub_26EF3946C();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6620, &qword_26EF3C768);
    *&v43 = v14;
    *(&v43 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768, MEMORY[0x277CBB598]);
    sub_26EF3A60C();
    sub_26EE14578(v13, &qword_2806C6910, &qword_26EF3CE20);
    (*(v19 + 8))(v21, v18);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    v27 = v35;
    (*(v33 + 32))(v35, v23, v34);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6640, &qword_26EF3C808);
    v28 = (v27 + *(result + 36));
    v29 = v48;
    v28[4] = v47;
    v28[5] = v29;
    v28[6] = v49;
    v30 = v44;
    *v28 = v43;
    v28[1] = v30;
    v31 = v46;
    v28[2] = v45;
    v28[3] = v31;
  }

  return result;
}

uint64_t sub_26EE08E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v79 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6948, &qword_26EF3CE48) - 8;
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - v7;
  v8 = sub_26EF393EC();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v60 - v11;
  v68 = sub_26EF3945C();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v66 = &v60 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v83 = *(v72 - 8);
  v14 = MEMORY[0x28223BE20](v72);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v60 - v16;
  v17 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6930, &qword_26EF3CE38);
  v20 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v22 = &v60 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6950, &qword_26EF3CE50);
  v81 = *(v65 - 8);
  v23 = MEMORY[0x28223BE20](v65);
  v80 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  v88 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  sub_26EE12360(a2, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v27 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v28 = swift_allocObject();
  sub_26EE123CC(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26EE146DC;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6958, &qword_26EF3CE58);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
  v84 = sub_26EF3941C();
  v85 = MEMORY[0x277CDF838];
  v86 = MEMORY[0x277CBB408];
  v87 = MEMORY[0x277CDF828];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v30;
  v85 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE14474();
  v32 = v26;
  v61 = v26;
  v33 = v63;
  sub_26EF393AC();
  (*(v20 + 8))(v22, v33);
  sub_26EF39EAC();
  *&v84 = a4;
  sub_26EF393BC();

  v34 = v64;
  sub_26EF3944C();
  v84 = sub_26EF3A97C();
  v35 = MEMORY[0x277CE0F78];
  v36 = MEMORY[0x277CBB450];
  v37 = MEMORY[0x277CE0F60];
  v38 = v66;
  v39 = v68;
  sub_26EF3938C();

  v40 = v34;
  v41 = v39;
  (*(v69 + 8))(v40, v39);
  v42 = v74;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v84 = v41;
  v85 = v35;
  v86 = v36;
  v87 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v82;
  v44 = v71;
  sub_26EF3937C();
  (*(v75 + 8))(v42, v76);
  (*(v73 + 8))(v38, v44);
  v45 = v80;
  v46 = *(v81 + 16);
  v47 = v65;
  v46(v80, v32, v65);
  v48 = *(v83 + 16);
  v49 = v70;
  v50 = v72;
  v48(v70, v43, v72);
  v51 = v77;
  v46(v77, v45, v47);
  v52 = v78;
  v53 = *(v78 + 56);
  v48(&v51[v53], v49, v50);
  v54 = v81;
  v55 = v79;
  (*(v81 + 32))(v79, v51, v47);
  v56 = v83;
  (*(v83 + 32))(v55 + *(v52 + 56), &v51[v53], v50);
  v57 = *(v56 + 8);
  v57(v82, v50);
  v58 = *(v54 + 8);
  v58(v61, v47);
  v57(v49, v50);
  return (v58)(v80, v47);
}

uint64_t sub_26EE09878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a4@<W4>, uint64_t a5@<X8>, float a6@<S0>)
{
  v26 = a4;
  v23[1] = a2;
  v27 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_26EF3941C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6940, &qword_26EF3CE40);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  sub_26EF39EAC();
  *&v31[0] = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *v31 = a6;
  sub_26EF393BC();

  sub_26EF3940C();
  sub_26EE075CC(v26, v31);
  v28 = v31[0];
  v29 = v31[1];
  v30 = v32;
  v18 = MEMORY[0x277CDF838];
  v19 = MEMORY[0x277CBB408];
  v20 = MEMORY[0x277CDF828];
  sub_26EF3938C();
  sub_26EE14734(v31);
  (*(v11 + 8))(v13, v10);
  *&v28 = v10;
  *(&v28 + 1) = v18;
  *&v29 = v19;
  *(&v29 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_26EF3939C();
  return (*(v25 + 8))(v17, v21);
}

__n128 sub_26EE09C24@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6670, &qword_26EF3C870);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E8, &qword_26EF3CE00);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22[-v16];
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68F0, &qword_26EF3CE08);
  sub_26EE1418C();
  sub_26EF393FC();
  sub_26EE154C8(&qword_2806C6678, &qword_2806C6670, &qword_26EF3C870, MEMORY[0x277CBB3F8]);
  sub_26EF3A5FC();
  (*(v11 + 8))(v13, v10);
  sub_26EF3AE4C();
  sub_26EF39BAC();
  (*(v15 + 32))(a2, v17, v14);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6660, &qword_26EF3C868) + 36);
  v19 = v32;
  *(v18 + 64) = v31;
  *(v18 + 80) = v19;
  *(v18 + 96) = v33;
  v20 = v28;
  *v18 = v27;
  *(v18 + 16) = v20;
  result = v30;
  *(v18 + 32) = v29;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_26EE09EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v86 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6900, &qword_26EF3CE10);
  MEMORY[0x28223BE20](v5 - 8);
  v109 = &v81 - v6;
  v106 = sub_26EF393EC();
  v112 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = sub_26EF3945C();
  v110 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v111 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v82 = &v81 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v83 = *(v84 - 8);
  v12 = MEMORY[0x28223BE20](v84);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v81 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v81 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v81 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v94 = &v81 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v98 = &v81 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v81 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v93 = &v81 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v91 = &v81 - v29;
  MEMORY[0x28223BE20](v28);
  v107 = &v81 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6880, &qword_26EF3CD88);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v81 - v33;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  v92 = *(v95 - 8);
  v35 = MEMORY[0x28223BE20](v95);
  v90 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v89 = &v81 - v37;
  v119 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C8, &qword_26EF3CDE8);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
  v113 = sub_26EF3943C();
  v114 = MEMORY[0x277CE0F78];
  v115 = MEMORY[0x277CBB438];
  v116 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = v38;
  v114 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE13D80();
  sub_26EF393AC();
  (*(v32 + 8))(v34, v31);
  sub_26EF39EAC();
  *&v113 = a3;
  sub_26EF393BC();

  v40 = v10;
  sub_26EF3944C();
  v113 = sub_26EF3A97C();
  v41 = v82;
  v42 = v104;
  v43 = MEMORY[0x277CE0F78];
  v44 = MEMORY[0x277CBB450];
  v45 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  v46 = *(v110 + 8);
  v110 += 8;
  KeyPath = v46;
  v46(v10, v42);
  v47 = v103;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v113 = v42;
  v114 = v43;
  v115 = v44;
  v116 = v45;
  v101 = swift_getOpaqueTypeConformance2();
  v48 = v105;
  sub_26EF3937C();
  v49 = *(v112 + 8);
  v112 += 8;
  v102 = v49;
  v50 = v106;
  v49(v47, v106);
  v88 = *(v111 + 8);
  v111 += 8;
  v88(v41, v48);
  sub_26EF39EAC();
  v113 = 0xC014000000000000;
  sub_26EF393BC();

  sub_26EF3944C();
  v113 = sub_26EF3A9FC();
  v87 = v40;
  sub_26EF3938C();

  KeyPath(v40, v42);
  sub_26EF393DC();
  sub_26EF3AE5C();
  v51 = v105;
  sub_26EF3937C();
  v102(v47, v50);
  v52 = v88;
  v88(v41, v51);
  sub_26EF39EAC();
  v113 = 0xC034000000000000;
  sub_26EF393BC();

  v53 = v87;
  sub_26EF3944C();
  v113 = sub_26EF3A98C();
  v54 = v104;
  sub_26EF3938C();

  KeyPath(v53, v54);
  sub_26EF393DC();
  sub_26EF3AE5C();
  v55 = v105;
  sub_26EF3937C();
  v56 = v47;
  v57 = v106;
  v58 = v102;
  v102(v56, v106);
  v52(v41, v55);
  sub_26EF39EAC();
  v113 = 0xC044000000000000;
  sub_26EF393BC();

  v59 = v87;
  sub_26EF3944C();
  v113 = sub_26EF3AA1C();
  v60 = v104;
  sub_26EF3938C();

  KeyPath(v59, v60);
  v61 = v103;
  sub_26EF393DC();
  sub_26EF3AE5C();
  sub_26EF3937C();
  v58(v61, v57);
  v62 = v88;
  v88(v41, v55);
  sub_26EF39EAC();
  v113 = 0xC04E000000000000;
  sub_26EF393BC();

  sub_26EF3944C();
  v113 = sub_26EF3AA0C();
  sub_26EF3938C();

  KeyPath(v59, v60);
  v63 = v103;
  sub_26EF393DC();
  sub_26EF3AE5C();
  sub_26EF3937C();
  v102(v63, v106);
  v62(v41, v55);
  v64 = v90;
  (*(v92 + 16))(v90, v89, v95);
  v113 = v64;
  v65 = v83;
  v66 = *(v83 + 16);
  v67 = v94;
  v68 = v84;
  v66(v94, v107, v84);
  v114 = v67;
  v69 = v97;
  v70 = v91;
  v66(v97, v91, v68);
  v115 = v69;
  v71 = v99;
  v72 = v93;
  v66(v99, v93, v68);
  v116 = v71;
  v73 = v100;
  v74 = v96;
  v66(v100, v96, v68);
  v117 = v73;
  v75 = v85;
  v76 = v98;
  v66(v85, v98, v68);
  v118 = v75;
  sub_26EE07778(&v113, v86);
  v77 = *(v65 + 8);
  v77(v76, v68);
  v77(v74, v68);
  v77(v72, v68);
  v77(v70, v68);
  v77(v107, v68);
  v78 = *(v92 + 8);
  v79 = v95;
  v78(v89, v95);
  v77(v75, v68);
  v77(v100, v68);
  v77(v99, v68);
  v77(v97, v68);
  v77(v94, v68);
  return (v78)(v90, v79);
}

uint64_t sub_26EE0B1F0@<X0>(uint64_t a3@<X8>)
{
  sub_26EF39EAC();
  v4 = sub_26EF3A5CC();
  v6 = v5;
  v8 = v7;
  sub_26EF3A4DC();
  v9 = sub_26EF3A5BC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_26EE12ABC(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_26EE0B2E0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v3;
}

__n128 sub_26EE0B350@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6698, &qword_26EF3C8D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6868, &qword_26EF3CD78);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22[-v16];
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6870, &qword_26EF3CD80);
  sub_26EE13C1C();
  sub_26EF393FC();
  sub_26EE154C8(&qword_2806C66A0, &qword_2806C6698, &qword_26EF3C8D0, MEMORY[0x277CBB3F8]);
  sub_26EF3A5FC();
  (*(v11 + 8))(v13, v10);
  sub_26EF3AE4C();
  sub_26EF39BAC();
  (*(v15 + 32))(a2, v17, v14);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6688, &qword_26EF3C8C8) + 36);
  v19 = v32;
  *(v18 + 64) = v31;
  *(v18 + 80) = v19;
  *(v18 + 96) = v33;
  v20 = v28;
  *v18 = v27;
  *(v18 + 16) = v20;
  result = v30;
  *(v18 + 32) = v29;
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_26EE0B61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v70 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A0, &qword_26EF3CDA0) - 8;
  MEMORY[0x28223BE20](v69);
  v68 = &v53 - v5;
  v6 = sub_26EF393EC();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v53 - v9;
  v59 = sub_26EF3945C();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6898, &qword_26EF3CD98);
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v53 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B0, &qword_26EF3CDB0);
  v74 = *(v63 - 8);
  v13 = MEMORY[0x28223BE20](v63);
  v61 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6880, &qword_26EF3CD88);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68B8, &qword_26EF3CDB8);
  v73 = *(v58 - 8);
  v20 = MEMORY[0x28223BE20](v58);
  v71 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v79 = sub_26EE13E98(0, *(a1 + 16), a1);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C8, &qword_26EF3CDE8);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
  v75 = sub_26EF3943C();
  v76 = MEMORY[0x277CE0F78];
  v77 = MEMORY[0x277CBB438];
  v78 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v24;
  v76 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE13D80();
  v26 = v23;
  v54 = v23;
  sub_26EF393AC();
  (*(v17 + 8))(v19, v16);
  sub_26EF39EAC();
  *&v75 = a3;
  sub_26EF393BC();

  v27 = v11;
  sub_26EF3944C();
  v75 = sub_26EF3A97C();
  v28 = MEMORY[0x277CBB450];
  v29 = v56;
  v30 = v59;
  v31 = MEMORY[0x277CE0F78];
  v32 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  v33 = v27;
  v34 = v30;
  (*(v60 + 8))(v33, v30);
  v35 = v65;
  sub_26EF393CC();
  sub_26EF3AE6C();
  v75 = v34;
  v76 = v31;
  v77 = v28;
  v78 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v72;
  v37 = v62;
  sub_26EF3937C();
  (*(v66 + 8))(v35, v67);
  (*(v64 + 8))(v29, v37);
  v38 = *(v73 + 16);
  v39 = v71;
  v40 = v58;
  v38(v71, v26, v58);
  v41 = *(v74 + 16);
  v42 = v61;
  v43 = v63;
  v41(v61, v36, v63);
  v44 = v68;
  v38(v68, v39, v40);
  v45 = v69;
  v46 = *(v69 + 56);
  v41(&v44[v46], v42, v43);
  v47 = v73;
  v48 = v70;
  (*(v73 + 32))(v70, v44, v40);
  v49 = v74;
  (*(v74 + 32))(v48 + *(v45 + 56), &v44[v46], v43);
  v50 = *(v49 + 8);
  v50(v72, v43);
  v51 = *(v47 + 8);
  v51(v54, v40);
  v50(v42, v43);
  return (v51)(v71, v40);
}

uint64_t sub_26EE0BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, float a5@<S0>)
{
  v22 = a2;
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_26EF3943C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6890, &qword_26EF3CD90);
  v14 = *(v13 - 8);
  v23 = v13;
  v24 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_26EF39EAC();
  v26 = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *&v26 = a5;
  sub_26EF393BC();

  sub_26EF3942C();
  v26 = sub_26EF3AA3C();
  v17 = MEMORY[0x277CE0F78];
  v18 = MEMORY[0x277CBB438];
  v19 = MEMORY[0x277CE0F60];
  sub_26EF3938C();

  (*(v10 + 8))(v12, v9);
  v26 = v9;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_26EF3939C();
  return (*(v24 + 8))(v16, v20);
}

uint64_t sub_26EE0C2A0@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_26EE0C3A8()
{
  result = qword_2806C6608;
  if (!qword_2806C6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6600, &qword_26EF3C750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6610, &qword_26EF3C758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6618, &qword_26EF3C760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6620, &qword_26EF3C768);
    sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760, MEMORY[0x277CBB3F8]);
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768, MEMORY[0x277CBB598]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6608);
  }

  return result;
}

unint64_t sub_26EE0C5DC()
{
  result = qword_2806C6648;
  if (!qword_2806C6648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6640, &qword_26EF3C808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6650, &qword_26EF3C810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6620, &qword_26EF3C768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6618, &qword_26EF3C760);
    sub_26EE154C8(&qword_2806C6628, &qword_2806C6618, &qword_26EF3C760, MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    sub_26EE15110(&qword_2806C6630, &qword_2806C6620, &qword_26EF3C768, MEMORY[0x277CBB598]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6648);
  }

  return result;
}

unint64_t sub_26EE0C7A0()
{
  result = qword_2806C6668;
  if (!qword_2806C6668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6660, &qword_26EF3C868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6670, &qword_26EF3C870);
    sub_26EE154C8(&qword_2806C6678, &qword_2806C6670, &qword_26EF3C870, MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6668);
  }

  return result;
}

double sub_26EE0C8B0@<D0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_26EE0C948(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

unint64_t sub_26EE0C9E0()
{
  result = qword_2806C6690;
  if (!qword_2806C6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6688, &qword_26EF3C8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6698, &qword_26EF3C8D0);
    sub_26EE154C8(&qword_2806C66A0, &qword_2806C6698, &qword_26EF3C8D0, MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6690);
  }

  return result;
}

uint64_t sub_26EE0CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF37EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26EE0CBDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF37EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_26EE0CC98(uint64_t a1)
{
  sub_26EF37EDC();
  if (v1 <= 0x3F)
  {
    sub_26EE11914(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26EE0CD64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE0CD64(uint64_t a1)
{
  if (!qword_2806C66B8)
  {
    type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(255);
    sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C66B8);
    }
  }
}

uint64_t sub_26EE0CDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6860, &qword_26EF3CD70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6858, &qword_26EF3CD68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__samples;
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66C8, &qword_26EF3C988);
  sub_26EF394EC();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__splModel;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66D8, &qword_26EF3C990);
  sub_26EF394EC();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__snrModel;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_26EF394EC();
  v11(v0 + v12, v4, v1);
  v13 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__editScoreModel;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_26EF394EC();
  v11(v0 + v13, v4, v1);
  v14 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__averageDecibelModel;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_26EF394EC();
  v11(v0 + v14, v4, v1);
  v15 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__peakDecibelModel;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_26EF394EC();
  v11(v0 + v15, v4, v1);
  return v0;
}

uint64_t sub_26EE0D0C0()
{
  v1 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6858, &qword_26EF3CD68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__splModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6860, &qword_26EF3CD70);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__snrModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__editScoreModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__averageDecibelModel, v4);
  v5(v0 + OBJC_IVAR____TtCV26TextToSpeechVoiceBankingUI38VBInternal_VoiceRecordingsAnalysisViewP33_462F3D263FC8712947B2D954B213EA379ViewModel__peakDecibelModel, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

void sub_26EE0D240(uint64_t a1)
{
  sub_26EE11978(319, &qword_2806C66C0, &qword_2806C66C8, &qword_26EF3C988);
  if (v1 <= 0x3F)
  {
    sub_26EE11978(319, &qword_2806C66D0, &qword_2806C66D8, &qword_26EF3C990);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_26EE0D340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t sub_26EE0D390@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6800, &qword_26EF3CC80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = sub_26EF3930C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_26EF38E2C();
  sub_26EF392EC();
  v15 = *(v9 + 8);
  v15(v14, v8);
  v16 = sub_26EF3AA8C();
  sub_26EF38E2C();
  if (sub_26EF392EC())
  {
    v17 = sub_26EF3A9DC();
  }

  else
  {
    v17 = sub_26EF3A97C();
  }

  v18 = v17;
  v15(v12, v8);
  KeyPath = swift_getKeyPath();
  *v7 = sub_26EF39F6C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6808, &qword_26EF3CC88);
  sub_26EE0D680(&v7[*(v20 + 44)]);
  v21 = v25;
  sub_26EE13B88(v7, v25, &qword_2806C6800, &qword_26EF3CC80);
  *a2 = v16;
  a2[1] = KeyPath;
  a2[2] = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6810, &qword_26EF3CC90);
  sub_26EE13B88(v21, a2 + *(v22 + 48), &qword_2806C6800, &qword_26EF3CC80);

  sub_26EE14578(v7, &qword_2806C6800, &qword_26EF3CC80);
  sub_26EE14578(v21, &qword_2806C6800, &qword_26EF3CC80);
}

uint64_t sub_26EE0D680@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6818, &qword_26EF3CC98);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27[-v3];
  v29 = sub_26EF3930C();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6820, &qword_26EF3CCA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  v33 = sub_26EF38E6C();
  v34 = v14;
  sub_26EE12538(v33, v14, v15);
  v16 = sub_26EF3A5DC();
  v18 = v17;
  v28 = v19;
  v30 = v20;
  sub_26EF38E2C();
  v21 = sub_26EF392EC();
  (*(v5 + 8))(v7, v29);
  v22 = 1;
  if ((v21 & 1) == 0)
  {
    *v4 = sub_26EF39E4C();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6828, &qword_26EF3CCA8);
    sub_26EE0D9B8(&v4[*(v23 + 44)]);
    sub_26EE14D98(v4, v13, &qword_2806C6818, &qword_26EF3CC98);
    v22 = 0;
  }

  (*(v31 + 56))(v13, v22, 1, v32);
  sub_26EE13B88(v13, v11, &qword_2806C6820, &qword_26EF3CCA0);
  *a1 = v16;
  *(a1 + 8) = v18;
  v24 = v28 & 1;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v30;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6830, &qword_26EF3CCB0);
  sub_26EE13B88(v11, a1 + *(v25 + 48), &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE13B20(v16, v18, v24);

  sub_26EE14578(v13, &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE14578(v11, &qword_2806C6820, &qword_26EF3CCA0);
  sub_26EE12ABC(v16, v18, v24);
}

uint64_t sub_26EE0D9B8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VBInternal_ValidityView(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_26EF392BC();
  sub_26EF3929C();
  sub_26EF392AC();
  sub_26EE12360(v19, v11, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v17, v8, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v14, v5, type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v11, a1, type metadata accessor for VBInternal_ValidityView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6838, &qword_26EF3CCB8);
  sub_26EE12360(v8, a1 + *(v20 + 48), type metadata accessor for VBInternal_ValidityView);
  sub_26EE12360(v5, a1 + *(v20 + 64), type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v14, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v17, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v19, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v5, type metadata accessor for VBInternal_ValidityView);
  sub_26EE14874(v8, type metadata accessor for VBInternal_ValidityView);
  return sub_26EE14874(v11, type metadata accessor for VBInternal_ValidityView);
}

uint64_t sub_26EE0DBE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39E3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67F8, &qword_26EF3CC78);
  return sub_26EE0D390((a1 + *(v2 + 44)));
}

double sub_26EE0DC3C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3ACCC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = sub_26EE0DEF8();
  *(&v40 + 1) = v5;
  sub_26EE12538(v40, v5, v6);
  v7 = sub_26EF3A5DC();
  v9 = v8;
  v11 = v10;
  sub_26EF3A97C();
  v12 = sub_26EF3A57C();
  v36 = v13;
  v37 = v12;
  v15 = v14;
  v17 = v16;

  sub_26EE12ABC(v7, v9, v11 & 1);

  LOBYTE(v7) = sub_26EF3A3BC();
  v18 = v15 & 1;
  v39 = v15 & 1;
  v38 = 0;
  v19 = sub_26EF3AE4C();
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A28, &qword_26EF3D030) + 36);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_26EF39ECC();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  v25 = sub_26EF3A97C();
  sub_26EF3979C();
  sub_26EE12360(v4, v22, MEMORY[0x277CE1260]);
  v26 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A30, &qword_26EF3D038) + 36);
  v27 = v41;
  *v26 = v40;
  *(v26 + 16) = v27;
  *(v26 + 32) = v42;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A38, &qword_26EF3D040);
  *(v22 + *(v28 + 52)) = v25;
  *(v22 + *(v28 + 56)) = 256;
  v29 = sub_26EF3AE4C();
  v31 = v30;
  sub_26EE14874(v4, MEMORY[0x277CE1260]);
  v32 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A40, &qword_26EF3D048) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A48, &qword_26EF3D050) + 36));
  *v33 = v19;
  v33[1] = v21;
  v34 = v36;
  *a1 = v37;
  *(a1 + 8) = v34;
  *(a1 + 16) = v18;
  *(a1 + 24) = v17;
  *(a1 + 32) = v7;
  result = 2.0;
  *(a1 + 40) = xmmword_26EF3C6A0;
  *(a1 + 56) = xmmword_26EF3C6A0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_26EE0DEF8()
{
  v0 = 5394003;
  v1 = sub_26EF3930C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF392BC();
  sub_26EE151B0(&qword_2806C6A50, MEMORY[0x277D706C0], MEMORY[0x277D706D0]);
  v5 = sub_26EF3B63C();
  v6 = *(v2 + 8);
  v6(v4, v1);
  if (v5)
  {
    return 5395265;
  }

  sub_26EF3929C();
  v7 = sub_26EF3B63C();
  v6(v4, v1);
  if ((v7 & 1) == 0)
  {
    sub_26EF392AC();
    v8 = sub_26EF3B63C();
    v6(v4, v1);
    if (v8)
    {
      return 5001299;
    }

    else
    {
      return 0x64696C6156;
    }
  }

  return v0;
}

uint64_t sub_26EE0E0C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_26EF38E5C();
  type metadata accessor for AudioViewModel(0);
  v3 = swift_allocObject();
  sub_26EE10C4C(v2);
  return v3;
}

uint64_t sub_26EE0E160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6748, &qword_26EF3CBB8);
  v64 = *(v62 - 8);
  v3 = MEMORY[0x28223BE20](v62);
  v59 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v43 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6750, &qword_26EF3CBC0);
  v63 = *(v60 - 8);
  v6 = MEMORY[0x28223BE20](v60);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6758, &qword_26EF3CBC8);
  v58 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6760, &qword_26EF3CBD0);
  v55 = *(v50 - 8);
  v12 = MEMORY[0x28223BE20](v50);
  v61 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v43 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v53 = &v43 - v18;
  sub_26EF39EAC();
  v69 = a1;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v68 = a1;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v67 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6768, &qword_26EF3CBD8);
  v19 = MEMORY[0x277CE14C0];
  sub_26EE154C8(&qword_2806C6770, &qword_2806C6768, &qword_26EF3CBD8, MEMORY[0x277CE14C0]);
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6778, &unk_26EF3CBE0);
  sub_26EE154C8(&qword_2806C6780, &qword_2806C6778, &unk_26EF3CBE0, v19);
  v20 = v49;
  sub_26EF3AD2C();
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  v21 = v54;
  sub_26EF3AD6C();
  v22 = *(v55 + 16);
  v23 = v48;
  v24 = v50;
  v22(v48, v53, v50);
  v22(v61, v51, v24);
  v45 = *(v58 + 16);
  v25 = v52;
  v45(v52, v47, v57);
  v44 = *(v63 + 16);
  v26 = v56;
  v44(v56, v20, v60);
  v43 = *(v64 + 16);
  v43(v59, v21, v62);
  v27 = v46;
  v28 = v23;
  v29 = v50;
  v22(v46, v28, v50);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6798, &qword_26EF3CBF0);
  v22(&v27[v30[12]], v61, v29);
  v31 = v25;
  v32 = v57;
  v45(&v27[v30[16]], v31, v57);
  v33 = v60;
  v44(&v27[v30[20]], v26, v60);
  v34 = &v27[v30[24]];
  v35 = v59;
  v36 = v62;
  v43(v34, v59, v62);
  v37 = *(v64 + 8);
  v64 += 8;
  v37(v54, v36);
  v38 = *(v63 + 8);
  v63 += 8;
  v39 = v33;
  v38(v49, v33);
  v40 = *(v58 + 8);
  v40(v47, v32);
  v41 = *(v55 + 8);
  v41(v51, v29);
  v41(v53, v29);
  v37(v35, v62);
  v38(v56, v39);
  v40(v52, v32);
  v41(v61, v29);
  return (v41)(v48, v29);
}

uint64_t sub_26EE0EA58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67C8, &qword_26EF3CC28);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v33 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v33 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v33 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v36 = &v33 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v33 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67D0, &unk_26EF3CC30);
  sub_26EE12750();
  v35 = v21;
  sub_26EF3996C();
  v48 = a1;
  v47 = a1;
  v34 = v19;
  sub_26EF3996C();
  v46 = a1;
  v45 = a1;
  v22 = v40;
  sub_26EF3996C();
  v44 = a1;
  v43 = a1;
  v23 = v36;
  sub_26EF3996C();
  v24 = *(v4 + 16);
  v25 = v41;
  v24(v41, v21, v3);
  v26 = v42;
  v24(v42, v19, v3);
  v27 = v37;
  v24(v37, v22, v3);
  v28 = v38;
  v24(v38, v23, v3);
  v29 = v39;
  v24(v39, v25, v3);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67F0, &qword_26EF3CC40);
  v24(&v29[v30[12]], v26, v3);
  v24(&v29[v30[16]], v27, v3);
  v24(&v29[v30[20]], v28, v3);
  v31 = *(v4 + 8);
  v31(v23, v3);
  v31(v40, v3);
  v31(v34, v3);
  v31(v35, v3);
  v31(v28, v3);
  v31(v27, v3);
  v31(v42, v3);
  return (v31)(v41, v3);
}

uint64_t sub_26EE0EF9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v57 = *(v3 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A0, &qword_26EF3CBF8) - 8;
  v5 = MEMORY[0x28223BE20](v55);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = (&v48 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = &v48 - v15;
  sub_26EF39EAC();
  v49 = v16;
  v17 = type metadata accessor for Sample(0);
  v18 = *(a1 + *(v17 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v19 = swift_allocObject();
  v48 = xmmword_26EF3C6B0;
  v20 = MEMORY[0x277D83A90];
  *(v19 + 16) = xmmword_26EF3C6B0;
  v21 = MEMORY[0x277D83B08];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = v18;
  v63 = sub_26EF3B10C();
  v64 = v22;

  MEMORY[0x274383240](4351008, 0xE300000000000000);

  sub_26EE12538(v23, v24, v25);
  sub_26EF3995C();
  sub_26EF39EAC();
  v26 = *(a1 + *(v17 + 24));
  v27 = swift_allocObject();
  *(v27 + 16) = v48;
  *(v27 + 56) = MEMORY[0x277D83A90];
  *(v27 + 64) = MEMORY[0x277D83B08];
  *(v27 + 32) = v26;
  v63 = sub_26EF3B10C();
  v64 = v28;

  MEMORY[0x274383240](4351008, 0xE300000000000000);

  v29 = v60;
  sub_26EF3995C();
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel, &unk_26EF3CB3C);
  sub_26EF3976C();
  v30 = sub_26EF399AC();
  v32 = v31;
  v33 = v50;
  sub_26EE12360(a1, v50, type metadata accessor for VBInternal_SampleDetailsView);
  v34 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v35 = swift_allocObject();
  sub_26EE123CC(v33, v35 + v34, type metadata accessor for VBInternal_SampleDetailsView);
  v36 = v51;
  v37 = v51 + *(v55 + 44);
  sub_26EF3990C();
  sub_26EF3B2EC();
  *v37 = &unk_26EF3CC18;
  *(v37 + 1) = v35;
  *v36 = v30;
  v36[1] = v32;
  v38 = v53;
  v39 = v54;
  v40 = *(v53 + 16);
  v41 = v62;
  v40(v62, v61, v54);
  v42 = v52;
  v40(v52, v29, v39);
  v43 = v58;
  sub_26EE13B88(v36, v58, &qword_2806C67A0, &qword_26EF3CBF8);
  v44 = v59;
  v40(v59, v41, v39);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67C0, &qword_26EF3CC20);
  v40(&v44[*(v45 + 48)], v42, v39);
  sub_26EE13B88(v43, &v44[*(v45 + 64)], &qword_2806C67A0, &qword_26EF3CBF8);
  sub_26EE14578(v36, &qword_2806C67A0, &qword_26EF3CBF8);
  v46 = *(v38 + 8);
  v46(v60, v39);
  v46(v61, v39);
  sub_26EE14578(v43, &qword_2806C67A0, &qword_26EF3CBF8);
  v46(v42, v39);
  return (v46)(v62, v39);
}

uint64_t sub_26EE0F62C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_26EF3B2DC();
  *(v1 + 24) = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE0F6C4, v3, v2);
}

uint64_t sub_26EE0F6C4()
{

  type metadata accessor for VBInternal_SampleDetailsView(0);
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel, &unk_26EF3CB3C);
  sub_26EF3976C();
  sub_26EE1128C(400.0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE0F7B4(uint64_t a1)
{
  v2 = type metadata accessor for VBInternal_SampleDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26EF39EAC();
  sub_26EE12360(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBInternal_SampleDetailsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26EE123CC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for VBInternal_SampleDetailsView);
  return sub_26EF3AB6C();
}

uint64_t sub_26EE0F930@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26EF3930C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  sub_26EF38E2C();
  sub_26EF392EC();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = sub_26EF3AA8C();
  sub_26EF38E2C();
  if (sub_26EF392EC())
  {
    v11 = sub_26EF3A9DC();
  }

  else
  {
    v11 = sub_26EF3A97C();
  }

  v12 = v11;
  v9(v6, v2);
  result = swift_getKeyPath();
  *a1 = v10;
  a1[1] = result;
  a1[2] = v12;
  return result;
}

uint64_t sub_26EE0FACC@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26EE0FB44@<X0>(float (*a2)(uint64_t)@<X2>, float (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v5 = sub_26EF39E9C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26EF39EAC();
  v6 = sub_26EF3A5CC();
  v8 = v7;
  v10 = v9;
  v11 = sub_26EF3A5AC();
  v36 = v12;
  v14 = v13;
  sub_26EE12ABC(v6, v8, v10 & 1);

  sub_26EF39E8C();
  v15 = sub_26EF39E7C();
  v16 = a2(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D83A90];
  *(v17 + 16) = xmmword_26EF3C6B0;
  v19 = MEMORY[0x277D83B08];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 32) = v16;
  sub_26EF3B10C();
  sub_26EF39E6C();

  v20 = sub_26EF39E7C();
  v21 = a3(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26EF3C6B0;
  *(v22 + 56) = v18;
  *(v22 + 64) = v19;
  *(v22 + 32) = v21;
  sub_26EF3B10C();
  sub_26EF39E6C();

  sub_26EF39E7C();
  sub_26EF39EBC();
  v23 = sub_26EF3A5CC();
  v25 = v24;
  v27 = v26;
  v33 = sub_26EF3A59C();
  v29 = v28;
  LOBYTE(v19) = v30;
  v35 = v31;
  sub_26EE12ABC(v23, v25, v27 & 1);

  sub_26EE12ABC(v11, v36, v14 & 1);

  *a4 = v33;
  a4[1] = v29;
  *(a4 + 16) = v19 & 1;
  a4[3] = v35;
  return result;
}

uint64_t sub_26EE0FE48@<X0>(uint64_t *a2@<X8>)
{
  v2 = sub_26EF39E9C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_26EF39EAC();
  v3 = sub_26EF3A5CC();
  v5 = v4;
  v7 = v6;
  v8 = sub_26EF3A5AC();
  v10 = v9;
  v24 = v11;
  sub_26EE12ABC(v3, v5, v7 & 1);

  sub_26EF39E8C();
  sub_26EF39E7C();
  sub_26EF38E8C();
  sub_26EF39E5C();
  sub_26EF39E7C();
  sub_26EF3921C();
  sub_26EF39E5C();
  sub_26EF39E7C();
  sub_26EF39EBC();
  v12 = sub_26EF3A5CC();
  v14 = v13;
  v16 = v15;
  v17 = sub_26EF3A59C();
  v19 = v18;
  v21 = v20;
  v25 = v22;
  sub_26EE12ABC(v12, v14, v16 & 1);

  sub_26EE12ABC(v8, v10, v24 & 1);

  *a2 = v17;
  a2[1] = v19;
  *(a2 + 16) = v21 & 1;
  a2[3] = v25;
  return result;
}

uint64_t sub_26EE100BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6738, &qword_26EF3CBB0);
  sub_26EE154C8(&qword_2806C6740, &qword_2806C6738, &qword_26EF3CBB0, MEMORY[0x277CE14C0]);
  return sub_26EF3A50C();
}

double sub_26EE10160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6910, &qword_26EF3CE20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69D8, &qword_26EF3CFF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69E0, &qword_26EF3D000);
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v26 - v13;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69E8, &qword_26EF3D008);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69F0, &qword_26EF3D010);
  v16 = sub_26EE15048();
  *&v30 = v15;
  *(&v30 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_26EF393FC();
  v30 = xmmword_26EF3C6C0;
  v17 = sub_26EF3946C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A00, &qword_26EF3D018);
  v19 = sub_26EE154C8(&qword_2806C6A08, &qword_2806C69D8, &qword_26EF3CFF8, MEMORY[0x277CBB3F8]);
  v20 = sub_26EE15110(&qword_2806C6A10, &qword_2806C6A00, &qword_26EF3D018, MEMORY[0x277CBB590]);
  sub_26EF3A60C();
  sub_26EE14578(v7, &qword_2806C6910, &qword_26EF3CE20);
  (*(v9 + 8))(v11, v8);
  *&v30 = v8;
  *(&v30 + 1) = v18;
  *&v31 = v19;
  *(&v31 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  v21 = v27;
  sub_26EF3A5FC();
  (*(v12 + 8))(v14, v22);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v23 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A18, &qword_26EF3D020) + 36));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  result = *&v32;
  v23[2] = v32;
  return result;
}

uint64_t sub_26EE10540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69F0, &qword_26EF3D010);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v8 = *(v14 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v9 = sub_26EE13E98(0, v8, v14);

  v18 = v9;
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26EE15178;
  *(v11 + 24) = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68C0, &qword_26EF3CDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A20, &qword_26EF3D028);
  sub_26EE154C8(&qword_2806C68D0, &qword_2806C68C0, &qword_26EF3CDE0, MEMORY[0x277D83980]);
  v14 = sub_26EF3943C();
  v15 = MEMORY[0x277CDF838];
  v16 = MEMORY[0x277CBB438];
  v17 = MEMORY[0x277CDF828];
  swift_getOpaqueTypeConformance2();
  sub_26EF3ACDC();
  sub_26EE15048();
  sub_26EF393AC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26EE1084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v19[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68A8, &qword_26EF3CDA8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68D8, &qword_26EF3CDF0);
  MEMORY[0x28223BE20](v6 - 8);
  v19[0] = sub_26EF3943C();
  v7 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF39EAC();
  *&v23[0] = a1;
  sub_26EF393BC();

  sub_26EF39EAC();
  *v23 = a3;
  sub_26EF393BC();

  sub_26EF3942C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26EF3C690;
  sub_26EF3A9FC();
  v11 = sub_26EF3AA2C();

  *(v10 + 32) = v11;
  sub_26EF3A98C();
  v12 = sub_26EF3AA2C();

  *(v10 + 40) = v12;
  sub_26EF3A9DC();
  v13 = sub_26EF3AA2C();

  *(v10 + 48) = v13;
  sub_26EF3AA1C();
  v14 = sub_26EF3AA2C();

  *(v10 + 56) = v14;
  sub_26EF3AA0C();
  v15 = sub_26EF3AA2C();

  *(v10 + 64) = v15;
  sub_26EF3A97C();
  v16 = sub_26EF3AA2C();

  *(v10 + 72) = v16;
  sub_26EF3AF1C();
  sub_26EF3AF0C();
  MEMORY[0x274382EE0](v10);
  sub_26EF3997C();
  v20 = v23[0];
  v21 = v23[1];
  v22 = v24;
  v17 = v19[0];
  sub_26EF3938C();
  sub_26EE14734(v23);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_26EE10C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF38E7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE10C4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6850, &qword_26EF3CD60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile) = 1;
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player) = 1;
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__samples;
  v15 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66F0, &qword_26EF3C9C0);
  sub_26EF394EC();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__maxSampleValue;
  v14[1] = 0;
  sub_26EF394EC();
  (*(v4 + 32))(v1 + v12, v6, v3);
  sub_26EE14D98(a1, v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, &qword_2806C6840, &qword_26EF3CD50);
  return v1;
}

id sub_26EE10E68()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile;
  v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_26EE10F68(v0, 0x277CB8398, &selRef_initForReading_error_);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_26EE13BF0(v4);
  }

  sub_26EE13C00(v2);
  return v3;
}

id sub_26EE10EE8()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player;
  v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_26EE10F68(v0, 0x277CB83D0, &selRef_initWithContentsOfURL_error_);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_26EE13BF0(v4);
  }

  sub_26EE13C00(v2);
  return v3;
}

id sub_26EE10F68(uint64_t a1, Class *a2, SEL *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_26EF37DCC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  sub_26EE13B88(a1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, v8, &qword_2806C6840, &qword_26EF3CD50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26EE14578(v8, &qword_2806C6840, &qword_26EF3CD50);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = objc_allocWithZone(*a2);
    v18 = sub_26EE12ACC(v13, a3);
    (*(v10 + 8))(v15, v9);
    return v18;
  }
}

uint64_t sub_26EE111AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v3;
}

float sub_26EE11218()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

void sub_26EE1128C(double a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26EE10E68();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 processingFormat];
    v6 = [v4 length];
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v7 = v6;
    if (!HIDWORD(v6))
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v5 frameCapacity:v6];
      if (v8)
      {
        v9 = v8;
        v36[0] = 0;
        v10 = [v4 readIntoBuffer:v8 error:v36];
        v1 = v36[0];
        if (v10)
        {
          if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (a1 > -1.0)
            {
              if (a1 < 4294967300.0)
              {
                v11 = a1;
                if (a1)
                {
                  if (v11 > v7)
                  {
                    v12 = 1;
                  }

                  else
                  {
                    v12 = v7 / v11;
                  }

                  v13 = v36[0];
                  if (v12 > v7)
                  {
                    v14 = 0.0;
                    v15 = MEMORY[0x277D84F90];
LABEL_39:
                    swift_getKeyPath();
                    swift_getKeyPath();
                    v36[0] = v15;

                    sub_26EF3953C();
                    swift_getKeyPath();
                    swift_getKeyPath();
                    *v36 = v14;

                    sub_26EF3953C();

                    return;
                  }

                  v16 = v7 / v12;
                  v17 = sub_26EF3B24C();
                  *(v17 + 16) = v16;
                  v32 = v4;
                  if (v16 >= 8)
                  {
                    v18 = v16 & 0xFFFFFFF8;
                    v19 = (v17 + 32 + 4 * v18);
                    v20 = (v17 + 48);
                    v21 = v18;
                    do
                    {
                      *(v20 - 1) = 0uLL;
                      *v20 = 0uLL;
                      v20 += 2;
                      v21 -= 8;
                    }

                    while (v21);
                    if (v18 == v16)
                    {
LABEL_22:
                      v23 = 0;
                      v14 = 0.0;
                      v34 = v17;
                      v33 = v17 + 32;
                      do
                      {
                        if (v23 >= v16)
                        {
                          goto LABEL_45;
                        }

                        v24 = 0;
                        v35 = v23 + 1;
                        v25 = v23 * v12;
                        v26 = -100.0;
                        while (v12 != v24)
                        {
                          if (v24 >= v12)
                          {
                            __break(1u);
LABEL_42:
                            __break(1u);
LABEL_43:
                            __break(1u);
LABEL_44:
                            __break(1u);
LABEL_45:
                            __break(1u);
LABEL_46:
                            __break(1u);
LABEL_47:
                            __break(1u);
                            goto LABEL_48;
                          }

                          v27 = v24 + 1;
                          if (__OFADD__(v24, 1))
                          {
                            goto LABEL_42;
                          }

                          if ((v23 * v12) >> 64 != (v23 * v12) >> 63)
                          {
                            goto LABEL_43;
                          }

                          v28 = v25 + v24;
                          if (__OFADD__(v25, v24))
                          {
                            goto LABEL_44;
                          }

                          if (v28 >= v7)
                          {
                            break;
                          }

                          v29 = [v9 floatChannelData];
                          if (!v29)
                          {
                            goto LABEL_53;
                          }

                          v30 = log10f(fabsf(*(*v29 + 4 * v28))) * 20.0;
                          ++v24;
                          if (v26 <= v30)
                          {
                            v26 = v30;
                            v24 = v27;
                          }
                        }

                        v15 = v34;
                        if (v23 >= v34[2])
                        {
                          goto LABEL_46;
                        }

                        v16 = v7 / v12;
                        *(v33 + 4 * v23) = v26;
                        if (v14 <= v26)
                        {
                          v14 = v26;
                        }

                        ++v23;
                      }

                      while (v35 != v7 / v12);
                      v4 = v32;
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    v18 = 0;
                    v19 = (v17 + 32);
                  }

                  v22 = v16 - v18;
                  do
                  {
                    *v19++ = 0;
                    --v22;
                  }

                  while (v22);
                  goto LABEL_22;
                }

LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
              }

LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else
      {
        __break(1u);
      }

      v31 = v1;
      sub_26EF37D1C();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }
}

uint64_t sub_26EE11660()
{
  sub_26EE14578(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel_audioFileURL, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EE13BF0(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___audioFile));
  sub_26EE13BF0(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel____lazy_storage___player));
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__samples;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUIP33_462F3D263FC8712947B2D954B213EA3714AudioViewModel__maxSampleValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6850, &qword_26EF3CD60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

void sub_26EE117BC(uint64_t a1)
{
  sub_26EE11914(319, &qword_2806C66E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26EE11978(319, &qword_2806C66E8, &qword_2806C66F0, &qword_26EF3C9C0);
    if (v2 <= 0x3F)
    {
      sub_26EE119CC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26EE11914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26EE11978(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3954C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26EE119CC()
{
  if (!qword_2806C66F8)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C66F8);
    }
  }
}

unint64_t sub_26EE11A20()
{
  result = qword_2806C6700;
  if (!qword_2806C6700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65F0, &qword_26EF3C6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65D0, &qword_26EF3C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C65C8, &qword_26EF3C6D0);
    sub_26EF39B2C();
    sub_26EE154C8(&qword_2806C65E8, &qword_2806C65C8, &qword_26EF3C6D0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE151B0(&qword_2806C6708, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6700);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_26EE11BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_26EE11C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EE11C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Sample(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26EE11D58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Sample(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_26EE11E34(uint64_t a1)
{
  type metadata accessor for Sample(319);
  if (v1 <= 0x3F)
  {
    sub_26EE11EB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE11EB8(uint64_t a1)
{
  if (!qword_2806C6730)
  {
    type metadata accessor for AudioViewModel(255);
    sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel, &unk_26EF3CB3C);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C6730);
    }
  }
}

uint64_t sub_26EE11F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_get_extra_inhabitant_index_73Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_26EE12160(uint64_t a1)
{
  result = sub_26EF38E9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26EE1222C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioViewModel(0);
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t sub_26EE12274@<X0>(uint64_t a2@<X8>)
{
  v9 = sub_26EF38E6C();
  sub_26EE12538(v9, v3, v4);
  result = sub_26EF3A5DC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_26EE122D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF38DEC();
  sub_26EE12538(v2, v3, v4);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_26EE12360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE123CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26EE12434()
{
  type metadata accessor for VBInternal_SampleDetailsView(0);
  type metadata accessor for AudioViewModel(0);
  sub_26EE11F4C(&qword_2806CA440, type metadata accessor for AudioViewModel, &unk_26EF3CB3C);
  sub_26EF3976C();
  v0 = sub_26EE10EE8();
  [v0 play];
}

unint64_t sub_26EE12538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C67B8;
  if (!qword_2806C67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C67B8);
  }

  return result;
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for VBInternal_SampleDetailsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26EF38E9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_26EE05CA8(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE1267C()
{
  v2 = *(type metadata accessor for VBInternal_SampleDetailsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE0F62C(v0 + v3);
}

unint64_t sub_26EE12750()
{
  result = qword_2806C67D8;
  if (!qword_2806C67D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C67D0, &unk_26EF3CC30);
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C67D8);
  }

  return result;
}

uint64_t sub_26EE12808@<X0>(uint64_t *a2@<X8>)
{
  sub_26EF38E4C();
  sub_26EF38E0C();
  v3 = sub_26EF3AA8C();
  sub_26EF38E4C();
  v5 = v4;
  sub_26EF38E0C();
  if (v5 >= v6)
  {
    v7 = sub_26EF3A97C();
  }

  else
  {
    v7 = sub_26EF3A9DC();
  }

  v8 = v7;
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v8;
  return result;
}

uint64_t sub_26EE12908@<X0>(uint64_t *a2@<X8>)
{
  sub_26EF38E3C();
  sub_26EF38DFC();
  v3 = sub_26EF3AA8C();
  sub_26EF38E3C();
  v5 = v4;
  sub_26EF38DFC();
  if (v6 >= v5)
  {
    v7 = sub_26EF3A97C();
  }

  else
  {
    v7 = sub_26EF3A9DC();
  }

  v8 = v7;
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v8;
  return result;
}

uint64_t sub_26EE12A08@<X0>(uint64_t *a2@<X8>)
{
  sub_26EF38E8C();
  sub_26EF3921C();
  v3 = sub_26EF3AA8C();
  v4 = sub_26EF38E8C();
  if (v4 >= sub_26EF3921C())
  {
    v5 = sub_26EF3A97C();
  }

  else
  {
    v5 = sub_26EF3A9DC();
  }

  v6 = v5;
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v6;
  return result;
}

uint64_t sub_26EE12ABC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_26EE12ACC(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_26EF37D7C();
  v15[0] = 0;
  v7 = [v4 *a2];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_26EF37DCC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_26EF37D1C();

    swift_willThrow();
    v13 = sub_26EF37DCC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_26EE12C2C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a4 = v6;
  return result;
}

uint64_t sub_26EE12CBC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

float sub_26EE12D34@<S0>(float *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26EE12DB4(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

char *sub_26EE12E30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6968, &qword_26EF3CEB0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_26EE12F34(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6978, &qword_26EF3CEC0);
  v10 = *(type metadata accessor for Sample(0) - 8);
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
  v15 = *(type metadata accessor for Sample(0) - 8);
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

uint64_t sub_26EE1310C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26EE13E84(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26EF3B7EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26EF3B24C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26EE13240(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_26EE13240(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26EE13990(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_26EE1379C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_26EE12E30((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_26EE1379C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26EE1379C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

char *sub_26EE139A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE139C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26EE139C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6970, &qword_26EF3CEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_26EE13AC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39C9C();
  *a1 = result;
  return result;
}

uint64_t sub_26EE13B20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26EE13B50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE13B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26EE13BF0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_26EE13C00(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_26EE13C1C()
{
  result = qword_2806C6878;
  if (!qword_2806C6878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6870, &qword_26EF3CD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    sub_26EE13D80();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6878);
  }

  return result;
}

unint64_t sub_26EE13D80()
{
  result = qword_2806C6888;
  if (!qword_2806C6888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6890, &qword_26EF3CD90);
    sub_26EF3943C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6888);
  }

  return result;
}

uint64_t *sub_26EE13E98(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v6 = result;
  v7 = *(a3 + 16);
  if (v7 >= v3)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = *(a3 + 16);
  }

  if (v8)
  {
    if (v8 <= 0)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E0, &qword_26EF3CDF8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 17;
      }

      v9[2] = v8;
      v9[3] = 2 * (v11 >> 4);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v12 = v9[3];

  if (v3 < 0)
  {
    goto LABEL_61;
  }

  v13 = v9 + 4;
  v14 = v12 >> 1;
  if (v8)
  {
    if (a2 >= v6)
    {
      v15 = (a3 + 32);
      v14 -= v8;
      v16 = v8;
      v17 = v7;
      v18 = v6;
      do
      {
        if (a2 == v18)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (!v17)
        {
          goto LABEL_53;
        }

        v19 = v18 + 1;
        v20 = *v15++;
        *v13 = v18;
        *(v13 + 2) = v20;
        v13 += 2;
        --v17;
        ++v18;
        --v16;
      }

      while (v16);
      if (v19 != a2)
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }

    goto LABEL_62;
  }

  v19 = v6;
  if (v6 != a2)
  {
LABEL_23:
    if (a2 < v6)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v21 = a3 + 32;
    if (v19 <= a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = v19;
    }

    v23 = v19;
    v42 = v7;
    v43 = v6;
    v40 = v22;
    v41 = v21;
    while (v19 >= v6)
    {
      if (v22 == v23)
      {
        goto LABEL_55;
      }

      if (v7 == v8)
      {
        goto LABEL_48;
      }

      if (v8 >= v7)
      {
        goto LABEL_56;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_57;
      }

      v24 = *(v21 + 4 * v8);
      if (!v14)
      {
        v25 = v9[3];
        if (((v25 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_59;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C68E0, &qword_26EF3CDF8);
        v28 = swift_allocObject();
        v29 = _swift_stdlib_malloc_size(v28);
        v30 = v29 - 32;
        if (v29 < 32)
        {
          v30 = v29 - 17;
        }

        v31 = v30 >> 4;
        *(v28 + 2) = v27;
        *(v28 + 3) = 2 * (v30 >> 4);
        v32 = v28 + 32;
        v33 = v9[3] >> 1;
        v34 = 16 * v33;
        if (v9[2])
        {
          v35 = (v9 + 4);
          if (v28 != v9 || v32 >= &v35[v34])
          {
            memmove(v28 + 32, v35, v34);
          }

          v9[2] = 0;
        }

        v13 = &v32[v34];
        v14 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v9 = v28;
        v7 = v42;
        v6 = v43;
        v22 = v40;
        v21 = v41;
      }

      v36 = __OFSUB__(v14--, 1);
      if (v36)
      {
        goto LABEL_58;
      }

      *v13 = v23;
      *(v13 + 2) = v24;
      v13 += 2;
      ++v8;
      if (a2 == ++v23)
      {
        goto LABEL_48;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_48:
  v37 = v9[3];
  if (v37 < 2)
  {
    return v9;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v14);
  v39 = v38 - v14;
  if (!v36)
  {
    v9[2] = v39;
    return v9;
  }

LABEL_64:
  __break(1u);
  return result;
}

unint64_t sub_26EE1418C()
{
  result = qword_2806C68F8;
  if (!qword_2806C68F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C68F0, &qword_26EF3CE08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6880, &qword_26EF3CD88);
    sub_26EE13D80();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C68F8);
  }

  return result;
}

unint64_t sub_26EE14310()
{
  result = qword_2806C6928;
  if (!qword_2806C6928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6920, &qword_26EF3CE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6930, &qword_26EF3CE38);
    sub_26EE14474();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6898, &qword_26EF3CD98);
    sub_26EF3945C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6928);
  }

  return result;
}

unint64_t sub_26EE14474()
{
  result = qword_2806C6938;
  if (!qword_2806C6938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6930, &qword_26EF3CE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6940, &qword_26EF3CE40);
    sub_26EF3941C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6938);
  }

  return result;
}

uint64_t sub_26EE14578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26EF37EDC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_26EE05C9C(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  sub_26EE05CA8(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE146FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE14874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26EE148D4(char *a1)
{
  v2 = a1;

  sub_26EE1310C(&v2);

  return v2;
}

uint64_t sub_26EE14970()
{
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel(0);
  sub_26EE11F4C(qword_2806CA2D0, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView.ViewModel, &unk_26EF3CB74);
  sub_26EF3976C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66C8, &qword_26EF3C988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C69A0, &qword_26EF3CED8);
  sub_26EE154C8(&qword_2806C69B0, &qword_2806C66C8, &qword_26EF3C988, MEMORY[0x277D83980]);
  sub_26EE154C8(&qword_2806C6998, &qword_2806C69A0, &qword_26EF3CED8, MEMORY[0x277CDD938]);
  sub_26EE11F4C(&qword_2806CA730, type metadata accessor for Sample, &unk_26EF3CA64);
  return sub_26EF3ACFC();
}

unint64_t sub_26EE14B88()
{
  result = qword_2806C6990;
  if (!qword_2806C6990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6988, &qword_26EF3CED0);
    sub_26EE154C8(&qword_2806C6998, &qword_2806C69A0, &qword_26EF3CED8, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6990);
  }

  return result;
}

uint64_t sub_26EE14C38()
{
  v1 = *(type metadata accessor for Sample(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF38E9C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE14D04()
{
  type metadata accessor for Sample(0);

  return sub_26EE0E0C4();
}

uint64_t sub_26EE14D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26EE14E0C(uint64_t a1, int a2)
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

uint64_t sub_26EE14E54(uint64_t result, int a2, int a3)
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

uint64_t sub_26EE14F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26EE15048()
{
  result = qword_2806C69F8;
  if (!qword_2806C69F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69F0, &qword_26EF3D010);
    sub_26EF3943C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C69F8);
  }

  return result;
}

uint64_t sub_26EE15110(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26EE151B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EE151FC()
{
  result = qword_2806C6A58;
  if (!qword_2806C6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A18, &qword_26EF3D020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69E0, &qword_26EF3D000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C69D8, &qword_26EF3CFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A00, &qword_26EF3D018);
    sub_26EE154C8(&qword_2806C6A08, &qword_2806C69D8, &qword_26EF3CFF8, MEMORY[0x277CBB3F8]);
    sub_26EE15110(&qword_2806C6A10, &qword_2806C6A00, &qword_26EF3D018, MEMORY[0x277CBB590]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A58);
  }

  return result;
}

unint64_t sub_26EE1538C()
{
  result = qword_2806C6A60;
  if (!qword_2806C6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A28, &qword_26EF3D030);
    sub_26EE15444();
    sub_26EE154C8(&qword_2806C6A78, &qword_2806C6A48, &qword_26EF3D050, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A60);
  }

  return result;
}

unint64_t sub_26EE15444()
{
  result = qword_2806C6A68;
  if (!qword_2806C6A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A70, &qword_26EF3D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A68);
  }

  return result;
}

uint64_t sub_26EE154C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26EE1554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v30 = a3;
  v3 = sub_26EF39B4C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  sub_26EF39EAC();
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  *(v14 + 24) = v25;

  sub_26EF3AB6C();
  sub_26EF39B3C();
  v15 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  sub_26EF3A77C();
  (*(v26 + 8))(v5, v27);
  (*(v7 + 8))(v9, v6);
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE16DE0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v16 = sub_26EF39C1C();
  v33 = v16;
  v34 = v17;
  v31 = v6;
  v32 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26EE15928(OpaqueTypeConformance2, v19, v20);
  v21 = v28;
  sub_26EF3A66C();

  return (*(v29 + 8))(v13, v21);
}

uint64_t sub_26EE158C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26EE15928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6A88;
  if (!qword_2806C6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6A88);
  }

  return result;
}

uint64_t sub_26EE15984@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a3;
  v37 = sub_26EF39F4C();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF38C2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A90, &qword_26EF3D090);
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - v13);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A98, &qword_26EF3D098);
  MEMORY[0x28223BE20](v35);
  v16 = &v34 - v15;
  *v14 = sub_26EF3AE4C();
  v14[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AA0, &unk_26EF3D0A0);
  sub_26EE15E88(a1, a2, (v14 + *(v18 + 44)));
  if (a1)
  {
    v19 = a1;
    sub_26EF0F97C();

    v20 = (*(v9 + 88))(v11, v8);
    if (v20 == *MEMORY[0x277D70598])
    {
      v21 = sub_26EE17094() & 1;
      v22 = 0x524F4345525F4256;
      v23 = 0xE900000000000044;
    }

    else
    {
      if (v20 != *MEMORY[0x277D705A0])
      {
        (*(v9 + 8))(v11, v8);
        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_8;
      }

      v24 = sub_26EE17094();
      v23 = 0x800000026EF45270;
      v21 = v24 & 1;
      v22 = 0xD000000000000011;
    }

    v26 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v22, v21, 0);
    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;
LABEL_8:
    v38 = countAndFlagsBits;
    v39 = object;
    v28 = sub_26EE154C8(&qword_2806C6AA8, &qword_2806C6A90, &qword_26EF3D090, MEMORY[0x277CE11A8]);
    sub_26EE12538(v28, v29, v30);
    sub_26EF3A78C();

    sub_26EE14578(v14, &qword_2806C6A90, &qword_26EF3D090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26EF3D070;
    sub_26EF39F0C();
    sub_26EF39EEC();
    v38 = v31;
    sub_26EE16DE0(&qword_2806C6AB8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
    sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0, MEMORY[0x277D83970]);
    v32 = v37;
    sub_26EF3B68C();
    sub_26EF39A8C();
    (*(v5 + 8))(v7, v32);
    return sub_26EE14578(v16, &qword_2806C6A98, &qword_26EF3D098);
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE16DE0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE15E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AE0, &qword_26EF3D1B8);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = objc_opt_self();
  v13 = [v12 systemGrayColor];
  v29 = sub_26EF3AA5C();
  CGSizeMake();
  sub_26EF3AE4C();
  sub_26EF3984C();
  *&v32[3] = *&v32[27];
  *&v32[11] = *&v32[35];
  *&v32[19] = *&v32[43];
  v14 = [v12 systemBackgroundColor];
  v28 = sub_26EF3AA5C();
  CGSizeMake();
  sub_26EF3AE4C();
  sub_26EF3984C();
  *&v31[6] = *&v32[51];
  *&v31[22] = *&v32[59];
  *&v31[38] = *&v32[67];
  *v11 = sub_26EF39F5C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AE8, &qword_26EF3D1C0);
  sub_26EE162A4(a1, &v11[*(v15 + 44)]);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v16 = &v11[*(v6 + 44)];
  v17 = *&v32[83];
  *v16 = *&v32[75];
  *(v16 + 1) = v17;
  *(v16 + 2) = *&v32[91];
  v18 = v9;
  sub_26EE13B88(v11, v9, &qword_2806C6AE0, &qword_26EF3D1B8);
  v19 = v29;
  *&v33[0] = v29;
  WORD4(v33[0]) = 256;
  *(v33 + 10) = *v32;
  *(&v33[1] + 10) = *&v32[8];
  *(&v33[2] + 10) = *&v32[16];
  *(&v33[3] + 1) = *&v32[23];
  v20 = v33[1];
  *a3 = v33[0];
  a3[1] = v20;
  v21 = v33[3];
  a3[2] = v33[2];
  a3[3] = v21;
  v22 = v28;
  *&v34[0] = v28;
  WORD4(v34[0]) = 256;
  *(v34 + 10) = *v31;
  *(&v34[3] + 1) = *&v31[46];
  *(&v34[2] + 10) = *&v31[32];
  *(&v34[1] + 10) = *&v31[16];
  v23 = v34[0];
  v24 = v34[1];
  v25 = v34[3];
  a3[6] = v34[2];
  a3[7] = v25;
  a3[4] = v23;
  a3[5] = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AF0, &qword_26EF3D1C8);
  sub_26EE13B88(v18, a3 + *(v26 + 64), &qword_2806C6AE0, &qword_26EF3D1B8);
  sub_26EE13B88(v33, &v40, &qword_2806C6AF8, &qword_26EF3D1D0);
  sub_26EE13B88(v34, &v40, &qword_2806C6AF8, &qword_26EF3D1D0);
  sub_26EE14578(v11, &qword_2806C6AE0, &qword_26EF3D1B8);
  sub_26EE14578(v18, &qword_2806C6AE0, &qword_26EF3D1B8);
  v35 = v22;
  v36 = 256;
  v37 = *v31;
  v38 = *&v31[16];
  *v39 = *&v31[32];
  *&v39[14] = *&v31[46];
  sub_26EE14578(&v35, &qword_2806C6AF8, &qword_26EF3D1D0);
  v40 = v19;
  v41 = 256;
  v42 = *v32;
  v43 = *&v32[8];
  *v44 = *&v32[16];
  *&v44[14] = *&v32[23];
  return sub_26EE14578(&v40, &qword_2806C6AF8, &qword_26EF3D1D0);
}

uint64_t sub_26EE162A4@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v5 = sub_26EF38C2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v56 - v10;
  v12 = sub_26EF39B7C();
  MEMORY[0x28223BE20](v12);
  v59 = (v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B00, &qword_26EF3D1D8);
  MEMORY[0x28223BE20](v60);
  v70 = v56 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B08, &qword_26EF3D1E0);
  MEMORY[0x28223BE20](v62);
  v66 = v56 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B10, &qword_26EF3D1E8);
  MEMORY[0x28223BE20](v61);
  v65 = v56 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B18, &qword_26EF3D1F0);
  v17 = MEMORY[0x28223BE20](v64);
  v68 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v63 = v56 - v20;
  MEMORY[0x28223BE20](v19);
  v67 = v56 - v21;
  if (a1)
  {
    v69 = a3;
    v22 = a1;
    v23 = sub_26EF0F97C();
    v24 = *(v6 + 104);
    v24(v9, *MEMORY[0x277D70598], v5, v23);
    v25 = sub_26EF38C1C();
    v26 = *(v6 + 8);
    v26(v9, v5);
    v26(v11, v5);
    v57 = v24;
    v56[2] = v6 + 104;
    v56[1] = v6 + 8;
    v56[0] = v26;
    if (v25)
    {
      v27 = sub_26EF0F97C();
      v58 = *MEMORY[0x277D705A0];
      (v24)(v9, v27);
      sub_26EF38C1C();
      v26(v9, v5);
      v26(v11, v5);
      CGSizeMake();
      v29 = v28 * 0.5;
    }

    else
    {
      v58 = *MEMORY[0x277D705A0];
      v29 = 5.0;
    }

    v30 = *(v12 + 20);
    v31 = *MEMORY[0x277CE0118];
    v32 = sub_26EF39ECC();
    v33 = v59;
    (*(*(v32 - 8) + 104))(v59 + v30, v31, v32);
    *v33 = v29;
    v33[1] = v29;
    v34 = [objc_opt_self() systemRedColor];
    v35 = sub_26EF3AA5C();
    v36 = v70;
    sub_26EE16E28(v33, v70);
    v37 = v60;
    *(v36 + *(v60 + 52)) = v35;
    *(v36 + *(v37 + 56)) = 256;
    v38 = sub_26EF0F97C();
    v39 = v58;
    v40 = v57;
    v57(v9, v58, v5, v38);
    sub_26EF38C1C();
    v41 = v56[0];
    (v56[0])(v9, v5);
    v41(v11, v5);
    CGSizeMake();
    v42 = sub_26EF0F97C();
    v40(v9, v39, v5, v42);
    sub_26EF38C1C();
    v41(v9, v5);
    v41(v11, v5);
    CGSizeMake();
    sub_26EF3AE4C();
    sub_26EF3984C();
    v43 = v66;
    sub_26EE14D98(v70, v66, &qword_2806C6B00, &qword_26EF3D1D8);
    v44 = (v43 + *(v62 + 36));
    v45 = v72;
    *v44 = v71;
    v44[1] = v45;
    v44[2] = v73;
    v46 = sub_26EF3AEAC();
    v47 = v65;
    v48 = &v65[*(v61 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B20, &qword_26EF3D1F8);
    sub_26EF0F97C();

    *v48 = v46;
    sub_26EE14D98(v43, v47, &qword_2806C6B08, &qword_26EF3D1E0);
    v49 = v63;
    sub_26EE13B88(v47, v63, &qword_2806C6B10, &qword_26EF3D1E8);
    *(v49 + *(v64 + 36)) = 0x3FF0000000000000;
    sub_26EE14578(v47, &qword_2806C6B10, &qword_26EF3D1E8);
    v50 = v67;
    sub_26EE14D98(v49, v67, &qword_2806C6B18, &qword_26EF3D1F0);
    v51 = v68;
    sub_26EE13B88(v50, v68, &qword_2806C6B18, &qword_26EF3D1F0);
    v52 = v69;
    *v69 = 0;
    *(v52 + 8) = 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B28, &unk_26EF3D200);
    sub_26EE13B88(v51, v52 + *(v53 + 48), &qword_2806C6B18, &qword_26EF3D1F0);
    v54 = v52 + *(v53 + 64);
    *v54 = 0;
    v54[8] = 1;
    sub_26EE14578(v50, &qword_2806C6B18, &qword_26EF3D1F0);
    return sub_26EE14578(v51, &qword_2806C6B18, &qword_26EF3D1F0);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE16DE0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE16ABC(uint64_t *a1, int a2)
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

uint64_t sub_26EE16B04(uint64_t result, int a2, int a3)
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

uint64_t sub_26EE16B50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26EE16BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26EE16C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A80, &qword_26EF3D530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26EE15928(OpaqueTypeConformance2, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE16CF8()
{
  result = qword_2806C6AD0;
  if (!qword_2806C6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6A98, &qword_26EF3D098);
    sub_26EE154C8(&qword_2806C6AA8, &qword_2806C6A90, &qword_26EF3D090, MEMORY[0x277CE11A8]);
    sub_26EE16DE0(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6AD0);
  }

  return result;
}

uint64_t sub_26EE16DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE16E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF39B7C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s26TextToSpeechVoiceBankingUI0D11PickerGroupV16TopLevelPositionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE16F18(uint64_t a1)
{
  v2 = *v1;
  sub_26EF3B87C();
  MEMORY[0x274383950](v2);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE16F80(uint64_t a1)
{
  v2 = sub_26EF396DC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39C4C();
}

uint64_t type metadata accessor for SelectionCell(uint64_t a1)
{
  result = qword_2806CAAF0;
  if (!qword_2806CAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *sub_26EE170E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SelectionCell(0);
  v20 = (a9 + result[5]);
  *v20 = a1;
  v20[1] = a2;
  *(a9 + result[6]) = a3 & 1;
  *(a9 + result[7]) = a4;
  v21 = (a9 + result[8]);
  *v21 = a5;
  v21[1] = a6;
  v21[2] = a7;
  v22 = (a9 + result[9]);
  *v22 = a8;
  v22[1] = a10;
  return result;
}

uint64_t sub_26EE171BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_26EF39B6C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SelectionCell(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B40, &qword_26EF3D250);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  sub_26EE17570(v2, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_26EE17730(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v26 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B48, &qword_26EF3D258);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B50, &qword_26EF3D260);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B58, &qword_26EF3D268);
  v17 = sub_26EE17CF4();
  v18 = sub_26EE17E90();
  v27 = v15;
  v28 = MEMORY[0x277CE1350];
  v29 = v16;
  v30 = v17;
  v31 = MEMORY[0x277CE1340];
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  sub_26EF3AB4C();
  sub_26EF39B5C();
  sub_26EE154C8(&qword_2806C6BB0, &qword_2806C6B40, &qword_26EF3D250, MEMORY[0x277CDF028]);
  sub_26EE17F1C();
  v20 = v24;
  v19 = v25;
  sub_26EF3A65C();
  (*(v3 + 8))(v5, v20);
  (*(v10 + 8))(v12, v9);
  v21 = [objc_opt_self() secondarySystemBackgroundColor];
  v27 = sub_26EF3AA5C();
  v22 = sub_26EF3AC1C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BC0, &qword_26EF3D290);
  *(v19 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_26EE17570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE175D4()
{
  v1 = type metadata accessor for SelectionCell(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26EF396DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 36)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE17730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE17794()
{
  result = type metadata accessor for SelectionCell(0);
  v2 = result;
  v3 = v0 + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80));
  v4 = v3 + *(result + 36);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);

    v5(v7);
    result = sub_26EE18828(v5, v6);
  }

  if ((*(v3 + *(v2 + 24)) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B38, &qword_26EF3D248);
    return sub_26EF3AC3C();
  }

  return result;
}

uint64_t sub_26EE17880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C10, &qword_26EF3D3A0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C18, &qword_26EF3D3A8);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B50, &qword_26EF3D260);
  MEMORY[0x28223BE20](v51);
  v9 = &v47 - v8;
  v48 = sub_26EF39E4C();
  v57 = 1;
  v10 = type metadata accessor for SelectionCell(0);
  v11 = (a1 + v10[5]);
  v12 = v11[1];
  *&v59 = *v11;
  *(&v59 + 1) = v12;
  sub_26EE12538(v10, v13, v14);

  v15 = sub_26EF3A5DC();
  v17 = v16;
  v19 = v18;
  v54 = sub_26EF3A5AC();
  v55 = v20;
  v22 = v21;
  v56 = v23;
  sub_26EE12ABC(v15, v17, v19 & 1);

  if ((*(a1 + v10[6]) & 1) != 0 || (v24 = (a1 + v10[8]), v25 = *v24, v26 = *(v24 + 2), v59 = v25, v60 = v26, v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B38, &qword_26EF3D248), MEMORY[0x274382CF0](&v58, v27), v58 != *(a1 + v10[7])))
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_26EF3AA8C();
    v29 = sub_26EF3A98C();
  }

  v30 = v22 & 1;
  v32 = v54;
  v31 = v55;
  sub_26EE13B20(v54, v55, v30);

  sub_26EE187A8(v28, v29);
  sub_26EE187E8(v28, v29);
  LOBYTE(v59) = v30;
  LOBYTE(v58) = 1;
  sub_26EE187E8(v28, v29);
  sub_26EE12ABC(v32, v31, v30);

  v33 = v57;
  v34 = sub_26EF3AE4C();
  v35 = v34;
  v37 = v36;
  v38 = *(a1 + v10[6]);
  v39 = 1;
  v41 = v49;
  v40 = v50;
  if (v38 == 1)
  {
    sub_26EE82F84(v34);
    (*(v41 + 32))(v53, v5, v40);
    v39 = 0;
  }

  v42 = v53;
  (*(v41 + 56))(v53, v39, 1, v40);
  v43 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B70, &qword_26EF3D270) + 36)];
  sub_26EE186D0(v42, v43);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B90, &unk_26EF3D280) + 36));
  *v44 = v35;
  v44[1] = v37;
  *v9 = v48;
  *(v9 + 1) = 0;
  v9[16] = v33;
  v45 = v55;
  *(v9 + 3) = v54;
  *(v9 + 4) = v45;
  v9[40] = v30;
  *(v9 + 6) = v56;
  *(v9 + 7) = 0;
  v9[64] = 1;
  *(v9 + 9) = v28;
  *(v9 + 10) = v29;
  v9[*(v51 + 36)] = 0;
  sub_26EF3AE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B58, &qword_26EF3D268);
  sub_26EE17CF4();
  sub_26EE17E90();
  sub_26EF3A92C();
  return sub_26EE18740(v9);
}

unint64_t sub_26EE17CF4()
{
  result = qword_2806C6B60;
  if (!qword_2806C6B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B50, &qword_26EF3D260);
    sub_26EE17DAC();
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6B60);
  }

  return result;
}

unint64_t sub_26EE17DAC()
{
  result = qword_2806C6B68;
  if (!qword_2806C6B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B70, &qword_26EF3D270);
    sub_26EE154C8(&qword_2806C6B78, &qword_2806C6B80, &qword_26EF3D278, MEMORY[0x277CE1138]);
    sub_26EE154C8(&qword_2806C6B88, &qword_2806C6B90, &unk_26EF3D280, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6B68);
  }

  return result;
}

unint64_t sub_26EE17E90()
{
  result = qword_2806C6BA8;
  if (!qword_2806C6BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B58, &qword_26EF3D268);
    sub_26EE17CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BA8);
  }

  return result;
}

unint64_t sub_26EE17F1C()
{
  result = qword_2806C6BB8;
  if (!qword_2806C6BB8)
  {
    sub_26EF39B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BB8);
  }

  return result;
}

unint64_t sub_26EE17F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6BC8;
  if (!qword_2806C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BC8);
  }

  return result;
}

uint64_t sub_26EE17FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3A3BC();
  sub_26EF3962C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_26EE13B88(a1, a2, &qword_2806C6B50, &qword_26EF3D260);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B58, &qword_26EF3D268);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_26EE180A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE18184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE1824C(uint64_t a1)
{
  sub_26EE18304(319);
  if (v1 <= 0x3F)
  {
    sub_26EE1835C();
    if (v2 <= 0x3F)
    {
      sub_26EE183AC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE18304(uint64_t a1)
{
  if (!qword_2806C6BD8)
  {
    sub_26EF396DC();
    v1 = sub_26EF3972C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C6BD8);
    }
  }
}

void sub_26EE1835C()
{
  if (!qword_2806C6BE0)
  {
    v0 = sub_26EF3AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C6BE0);
    }
  }
}

void sub_26EE183AC(uint64_t a1)
{
  if (!qword_2806C6BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6BF0, &qword_26EF3D380);
    v1 = sub_26EF3B5CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C6BE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SelectionCell.SelectionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelectionCell.SelectionStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26EE18588()
{
  result = qword_2806C6BF8;
  if (!qword_2806C6BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6BC0, &qword_26EF3D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6B40, &qword_26EF3D250);
    sub_26EF39B6C();
    sub_26EE154C8(&qword_2806C6BB0, &qword_2806C6B40, &qword_26EF3D250, MEMORY[0x277CDF028]);
    sub_26EE17F1C();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6C00, &qword_2806C6C08, &qword_26EF3D398, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6BF8);
  }

  return result;
}

uint64_t sub_26EE186D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C18, &qword_26EF3D3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE18740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B50, &qword_26EF3D260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE187A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE187E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE18828(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EE18838@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v58 - v3;
  v61 = sub_26EF39DDC();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for RootView(0);
  v69 = *(v73 - 1);
  v68 = *(v69 + 8);
  MEMORY[0x28223BE20](v73);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C48, &qword_26EF3D3D8);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C50, &qword_26EF3D3E0);
  MEMORY[0x28223BE20](v72);
  v9 = &v58 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C58, &qword_26EF3D3E8);
  MEMORY[0x28223BE20](v74);
  v75 = &v58 - v10;
  v64 = v1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  sub_26EF39BEC();
  swift_getKeyPath();
  sub_26EF39C0C();

  v83 = v85;
  v84 = v86;
  v76 = v1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C60, &qword_26EF3E450);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C68, &qword_26EF3D420);
  sub_26EE154C8(&qword_2806C6C70, &qword_2806C6C60, &qword_26EF3E450, MEMORY[0x277D83960]);
  sub_26EE154C8(&qword_2806C6C78, &qword_2806C6C60, &qword_26EF3E450, MEMORY[0x277D83980]);
  sub_26EE154C8(&qword_2806C6C80, &qword_2806C6C60, &qword_26EF3E450, MEMORY[0x277D83990]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C88, &qword_26EF3D428);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C90, &qword_26EF3D430);
  v13 = sub_26EE19650();
  v16 = sub_26EE19760(v13, v14, v15);
  v17 = sub_26EE197B4();
  v77 = v11;
  v78 = &type metadata for VBNavigationItem;
  v79 = v12;
  v80 = v13;
  v81 = v16;
  v82 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v65;
  sub_26EF39ACC();
  sub_26EE154C8(&qword_2806C6D50, &qword_2806C6C48, &qword_26EF3D3D8, MEMORY[0x277CDDA18]);
  v19 = v66;
  sub_26EF3A86C();
  (*(v67 + 8))(v18, v19);
  v20 = v64;
  sub_26EE202A8(v64, v6, type metadata accessor for RootView);
  v21 = (v69[80] + 16) & ~v69[80];
  v22 = swift_allocObject();
  sub_26EE1BA40(v6, v22 + v21);
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D60, &qword_26EF3D480) + 36)];
  sub_26EF3990C();
  sub_26EF3B2EC();
  *v23 = &unk_26EF3D478;
  *(v23 + 1) = v22;
  sub_26EE202A8(v20, v6, type metadata accessor for RootView);
  v24 = swift_allocObject();
  sub_26EE1BA40(v6, v24 + v21);
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D68, &qword_26EF3D488) + 36)];
  *v25 = sub_26EE1BB70;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  v26 = (v20 + *(v73 + 8));
  v28 = *v26;
  v27 = v26[1];
  v77 = v28;
  v78 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  v29 = v85;
  sub_26EE202A8(v20, v6, type metadata accessor for RootView);
  v30 = swift_allocObject();
  sub_26EE1BA40(v6, v30 + v21);
  v31 = v72;
  *&v9[*(v72 + 52)] = v29;
  v32 = *(v31 + 56);
  v69 = v9;
  v33 = &v9[v32];
  *v33 = sub_26EE1C0B8;
  v33[1] = v30;
  v34 = *v20;
  if (*(v20 + 8) == 1)
  {
    v35 = v34;
  }

  else
  {

    sub_26EF3B46C();
    v36 = sub_26EF3A36C();
    sub_26EF3880C();

    v37 = v59;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v34, 0);
    (*(v60 + 8))(v37, v61);
    v35 = v77;
  }

  v38 = sub_26EED34C4();

  LOBYTE(v77) = v38;
  sub_26EE202A8(v20, v6, type metadata accessor for RootView);
  v39 = swift_allocObject();
  sub_26EE1BA40(v6, v39 + v21);
  v40 = sub_26EE154C8(&qword_2806C6D78, &qword_2806C6C50, &qword_26EF3D3E0, MEMORY[0x277CDDB50]);
  sub_26EE1C384(v40, v41, v42);
  v43 = v75;
  v44 = v69;
  sub_26EF3A8FC();

  sub_26EE14578(v44, &qword_2806C6C50, &qword_26EF3D3E0);
  sub_26EE202A8(v20, v6, type metadata accessor for RootView);
  v45 = swift_allocObject();
  sub_26EE1BA40(v6, v45 + v21);
  v46 = &v43[*(v74 + 36)];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v46 + 2) = sub_26EE1C5C8;
  *(v46 + 3) = v45;
  v47 = sub_26EE1C628();
  v72 = v48;
  v85 = v47;
  *&v86 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v49 = v70;
  sub_26EF3AAFC();
  v50 = sub_26EF38A4C();
  LOBYTE(v45) = (*(*(v50 - 8) + 48))(v49, 1, v50) != 1;
  sub_26EE14578(v49, &qword_2806C9BE0, &qword_26EF3D3C0);
  LOBYTE(v83) = v45;
  v51 = sub_26EF3AC8C();
  v73 = &v58;
  v52 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D88, &qword_26EF3D498);
  v53 = sub_26EE1E404();
  sub_26EE12538(v53, v54, v55);
  sub_26EE154C8(&qword_2806C6D98, &qword_2806C6D88, &qword_26EF3D498, MEMORY[0x277CE14C0]);
  v56 = v75;
  sub_26EF3A89C();

  return sub_26EE14578(v56, &qword_2806C6C58, &qword_26EF3D3E8);
}

uint64_t type metadata accessor for RootView(uint64_t a1)
{
  result = qword_2806CAB90;
  if (!qword_2806CAB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE193F8@<X0>(uint64_t *a1@<X8>)
{
  result = VoiceBankingNavigationModel.itemPath.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26EE19450(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C88, &qword_26EF3D428);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_26EE19CFC();
  sub_26EE202A8(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RootView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_26EE1BA40(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C90, &qword_26EF3D430);
  v10 = sub_26EE19650();
  sub_26EE19760(v10, v11, v12);
  sub_26EE197B4();
  sub_26EF3A80C();

  return sub_26EE14578(v7, &qword_2806C6C88, &qword_26EF3D428);
}

unint64_t sub_26EE19650()
{
  result = qword_2806C6C98;
  if (!qword_2806C6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C88, &qword_26EF3D428);
    v3 = sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
    sub_26EE1970C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6C98);
  }

  return result;
}

unint64_t sub_26EE1970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6CA8;
  if (!qword_2806C6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CA8);
  }

  return result;
}

unint64_t sub_26EE19760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6CB0;
  if (!qword_2806C6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CB0);
  }

  return result;
}

unint64_t sub_26EE197B4()
{
  result = qword_2806C6CB8;
  if (!qword_2806C6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C90, &qword_26EF3D430);
    sub_26EE19840();
    sub_26EE19AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CB8);
  }

  return result;
}

unint64_t sub_26EE19840()
{
  result = qword_2806C6CC0;
  if (!qword_2806C6CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CC8, &qword_26EF3D438);
    sub_26EE198CC();
    sub_26EE199B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CC0);
  }

  return result;
}

unint64_t sub_26EE198CC()
{
  result = qword_2806C6CD0;
  if (!qword_2806C6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CD8, &qword_26EF3D440);
    sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView, &unk_26EF424B8);
    sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView, &unk_26EF449C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CD0);
  }

  return result;
}

unint64_t sub_26EE199B8()
{
  result = qword_2806C6CF0;
  if (!qword_2806C6CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6CF8, &qword_26EF3D448);
    sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView, &unk_26EF41BC0);
    sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView, &unk_26EF41888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6CF0);
  }

  return result;
}

unint64_t sub_26EE19AA4()
{
  result = qword_2806C6D10;
  if (!qword_2806C6D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D18, &qword_26EF3D450);
    sub_26EE19B30();
    sub_26EE19C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D10);
  }

  return result;
}

unint64_t sub_26EE19B30()
{
  result = qword_2806C6D20;
  if (!qword_2806C6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D28, &qword_26EF3D458);
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView, &unk_26EF44750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D20);
  }

  return result;
}

unint64_t sub_26EE19C1C()
{
  result = qword_2806C6D38;
  if (!qword_2806C6D38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19CA8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D38);
  }

  return result;
}

unint64_t sub_26EE19CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6D48;
  if (!qword_2806C6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D48);
  }

  return result;
}

uint64_t sub_26EE19CFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA0, &unk_26EF3D4A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SoundCheckView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {

    VoiceBankingNavigationModel.initialViewType.getter();

    v23 = v25;
    v24 = v26;
    v21 = 5;
    v22 = 1;
    if (static VBNavigationItem.== infix(_:_:)(&v23, &v21))
    {
      type metadata accessor for RootView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
      sub_26EF3AB1C();
      v10 = sub_26EE17094();
      sub_26EF02D80(v10 & 1, v6, v9);
      sub_26EE202A8(v9, v3, type metadata accessor for SoundCheckView);
      swift_storeEnumTagMultiPayload();
      v11 = sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
      sub_26EE1970C(v11, v12, v13);
      sub_26EF3A06C();
      return sub_26EE20310(v9, type metadata accessor for SoundCheckView);
    }

    else
    {
      *v3 = sub_26EECA5F4();
      *(v3 + 1) = v15;
      *(v3 + 2) = v16;
      v3[24] = v17 & 1;
      swift_storeEnumTagMultiPayload();
      v18 = sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
      sub_26EE1970C(v18, v19, v20);
      return sub_26EF3A06C();
    }
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1A044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v88 = a1;
  v92 = a3;
  v80 = type metadata accessor for PromptView(0);
  MEMORY[0x28223BE20](v80);
  v79 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E08, &qword_26EF3D568);
  MEMORY[0x28223BE20](v87);
  v5 = v63 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E10, &qword_26EF3D570);
  MEMORY[0x28223BE20](v72);
  v78 = v63 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D28, &qword_26EF3D458);
  MEMORY[0x28223BE20](v89);
  v81 = v63 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D18, &qword_26EF3D450);
  MEMORY[0x28223BE20](v91);
  v90 = v63 - v8;
  v73 = type metadata accessor for SoundCheckView(0);
  MEMORY[0x28223BE20](v73);
  v75 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LanguagePickerView(0);
  MEMORY[0x28223BE20](v74);
  v66 = (v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E18, &qword_26EF3D578);
  MEMORY[0x28223BE20](v69);
  v71 = v63 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CF8, &qword_26EF3D448);
  MEMORY[0x28223BE20](v86);
  v76 = v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v63 - v14;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  MEMORY[0x28223BE20](VoiceView);
  v65 = (v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for PhraseStyleView(0);
  MEMORY[0x28223BE20](v67);
  v64 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E20, &qword_26EF3D580);
  MEMORY[0x28223BE20](v17);
  v19 = v63 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E28, &qword_26EF3D588);
  MEMORY[0x28223BE20](v82);
  v84 = v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E30, &qword_26EF3D590);
  MEMORY[0x28223BE20](v21);
  v23 = v63 - v22;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CD8, &qword_26EF3D440);
  MEMORY[0x28223BE20](v83);
  v25 = v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6CC8, &qword_26EF3D438);
  MEMORY[0x28223BE20](v26);
  v85 = v63 - v27;
  v28 = type metadata accessor for ThingsToKnowView(0);
  MEMORY[0x28223BE20](v28);
  v32 = (v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *v88;
  if (*(v88 + 8) != 1)
  {
    sub_26EE82254(v33, v108);
    v96 = v108[2];
    v97 = v108[3];
    v98 = v108[4];
    v99 = v108[5];
    v94 = v108[0];
    v95 = v108[1];
    v93 = 0;
    v100 = 0;
    v39 = sub_26EE201F8(v108, &v101);
    sub_26EE19CA8(v39, v40, v41);
    sub_26EF3A06C();
    v42 = v106;
    *(v5 + 4) = v105;
    *(v5 + 5) = v42;
    v5[96] = v107;
    v43 = v102;
    *v5 = v101;
    *(v5 + 1) = v43;
    v44 = v104;
    *(v5 + 2) = v103;
    *(v5 + 3) = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    v45 = v90;
    sub_26EF3A06C();
    sub_26EE13B88(v45, v19, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE20254(v108);
    v46 = v45;
    return sub_26EE14578(v46, &qword_2806C6D18, &qword_26EF3D450);
  }

  v63[1] = v17;
  v88 = v26;
  if (v33 <= 4)
  {
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v56 = v64;
        sub_26EF347E0(v64);
        sub_26EE202A8(v56, v23, type metadata accessor for PhraseStyleView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView, &unk_26EF424B8);
        sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView, &unk_26EF449C0);
        sub_26EF3A06C();
        sub_26EE13B88(v25, v84, &qword_2806C6CD8, &qword_26EF3D440);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v57 = v85;
        sub_26EF3A06C();
        sub_26EE14578(v25, &qword_2806C6CD8, &qword_26EF3D440);
        sub_26EE13B88(v57, v19, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v57, &qword_2806C6CC8, &qword_26EF3D438);
        return sub_26EE20310(v56, type metadata accessor for PhraseStyleView);
      }

      v34 = v19;
      if (v33 == 3)
      {
        type metadata accessor for RootView(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
        v35 = v68;
        sub_26EF3AB1C();
        sub_26EEBD4D8();
        sub_26EE17094();
        sub_26EE17094();
        v32 = v65;
        sub_26EEBD4E4(v35, v65);
        sub_26EE202A8(v32, v71, type metadata accessor for CreateVoiceView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView, &unk_26EF41BC0);
        sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView, &unk_26EF41888);
        v36 = v76;
        sub_26EF3A06C();
        sub_26EE13B88(v36, v84, &qword_2806C6CF8, &qword_26EF3D448);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v37 = v85;
        sub_26EF3A06C();
        sub_26EE14578(v36, &qword_2806C6CF8, &qword_26EF3D448);
        sub_26EE13B88(v37, v34, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v37, &qword_2806C6CC8, &qword_26EF3D438);
        v38 = type metadata accessor for CreateVoiceView;
      }

      else
      {
        v32 = v66;
        sub_26EEB359C(v66);
        sub_26EE202A8(v32, v71, type metadata accessor for LanguagePickerView);
        swift_storeEnumTagMultiPayload();
        sub_26EE1FCAC(&qword_2806C6D00, type metadata accessor for CreateVoiceView, &unk_26EF41BC0);
        sub_26EE1FCAC(&qword_2806C6D08, type metadata accessor for LanguagePickerView, &unk_26EF41888);
        v60 = v76;
        sub_26EF3A06C();
        sub_26EE13B88(v60, v84, &qword_2806C6CF8, &qword_26EF3D448);
        swift_storeEnumTagMultiPayload();
        sub_26EE198CC();
        sub_26EE199B8();
        v61 = v85;
        sub_26EF3A06C();
        sub_26EE14578(v60, &qword_2806C6CF8, &qword_26EF3D448);
        sub_26EE13B88(v61, v34, &qword_2806C6CC8, &qword_26EF3D438);
        swift_storeEnumTagMultiPayload();
        sub_26EE19840();
        sub_26EE19AA4();
        sub_26EF3A06C();
        sub_26EE14578(v61, &qword_2806C6CC8, &qword_26EF3D438);
        v38 = type metadata accessor for LanguagePickerView;
      }

      return sub_26EE20310(v32, v38);
    }

    v47 = v90;
    if (v33)
    {
      sub_26EED0904(v32);
      sub_26EE202A8(v32, v23, type metadata accessor for ThingsToKnowView);
      swift_storeEnumTagMultiPayload();
      sub_26EE1FCAC(&qword_2806C6CE0, type metadata accessor for ThingsToKnowView, &unk_26EF424B8);
      sub_26EE1FCAC(&qword_2806C6CE8, type metadata accessor for PhraseStyleView, &unk_26EF449C0);
      sub_26EF3A06C();
      sub_26EE13B88(v25, v84, &qword_2806C6CD8, &qword_26EF3D440);
      swift_storeEnumTagMultiPayload();
      sub_26EE198CC();
      sub_26EE199B8();
      v62 = v85;
      sub_26EF3A06C();
      sub_26EE14578(v25, &qword_2806C6CD8, &qword_26EF3D440);
      sub_26EE13B88(v62, v19, &qword_2806C6CC8, &qword_26EF3D438);
      swift_storeEnumTagMultiPayload();
      sub_26EE19840();
      sub_26EE19AA4();
      sub_26EF3A06C();
      sub_26EE14578(v62, &qword_2806C6CC8, &qword_26EF3D438);
      v38 = type metadata accessor for ThingsToKnowView;
      return sub_26EE20310(v32, v38);
    }

    goto LABEL_12;
  }

  v47 = v90;
  if ((v33 - 7) < 2)
  {
LABEL_12:
    LOBYTE(v108[0]) = 1;
    v100 = 1;
    sub_26EE19CA8(v33, v29, v30);
    sub_26EF3A06C();
    v53 = v106;
    *(v5 + 4) = v105;
    *(v5 + 5) = v53;
    v5[96] = v107;
    v54 = v102;
    *v5 = v101;
    *(v5 + 1) = v54;
    v55 = v104;
    *(v5 + 2) = v103;
    *(v5 + 3) = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE13B88(v47, v19, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    v46 = v47;
    return sub_26EE14578(v46, &qword_2806C6D18, &qword_26EF3D450);
  }

  if (v33 == 5)
  {
    type metadata accessor for RootView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
    v48 = v68;
    sub_26EF3AB1C();
    v49 = sub_26EE17094();
    v50 = v75;
    sub_26EF02D80(v49 & 1, v48, v75);
    sub_26EE202A8(v50, v78, type metadata accessor for SoundCheckView);
    swift_storeEnumTagMultiPayload();
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView, &unk_26EF44750);
    v51 = v81;
    sub_26EF3A06C();
    sub_26EE13B88(v51, v5, &qword_2806C6D28, &qword_26EF3D458);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE14578(v51, &qword_2806C6D28, &qword_26EF3D458);
    sub_26EE13B88(v47, v19, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE14578(v47, &qword_2806C6D18, &qword_26EF3D450);
    return sub_26EE20310(v75, type metadata accessor for SoundCheckView);
  }

  else
  {
    v58 = v79;
    sub_26EF30DA4(v79);
    sub_26EE202A8(v58, v78, type metadata accessor for PromptView);
    swift_storeEnumTagMultiPayload();
    sub_26EE1FCAC(&qword_2806C6CA0, type metadata accessor for SoundCheckView, &unk_26EF437A8);
    sub_26EE1FCAC(&qword_2806C6D30, type metadata accessor for PromptView, &unk_26EF44750);
    v59 = v81;
    sub_26EF3A06C();
    sub_26EE13B88(v59, v5, &qword_2806C6D28, &qword_26EF3D458);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D40, &qword_26EF3D460);
    sub_26EE19B30();
    sub_26EE19C1C();
    sub_26EF3A06C();
    sub_26EE14578(v59, &qword_2806C6D28, &qword_26EF3D458);
    sub_26EE13B88(v47, v19, &qword_2806C6D18, &qword_26EF3D450);
    swift_storeEnumTagMultiPayload();
    sub_26EE19840();
    sub_26EE19AA4();
    sub_26EF3A06C();
    sub_26EE14578(v47, &qword_2806C6D18, &qword_26EF3D450);
    return sub_26EE20310(v79, type metadata accessor for PromptView);
  }
}

uint64_t sub_26EE1B4AC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_26EF39DDC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[9] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_26EE1B5A0, v4, v3);
}

uint64_t sub_26EE1B5A0()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  *(v0 + 96) = *v1;
  LODWORD(v1) = *(v1 + 8);
  *(v0 + 120) = v1;
  if (v1 == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 16);
  }

  *(v0 + 104) = v3;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_26EE1B6FC;

  return VoiceBankingSession.updateAvailableLanguagesIfNeccessary()();
}

uint64_t sub_26EE1B6FC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE1B83C, v4, v3);
}

uint64_t sub_26EE1B83C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 96);
  if (v1 == 1)
  {
    v4 = v2;
    sub_26EED366C(3);

    v5 = v3;
  }

  else
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v10 = *(v7 + 8);
    v10(v6, v8);
    v11 = *(v0 + 24);
    sub_26EED366C(3);

    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    v10(v6, v8);
    v5 = *(v0 + 32);
  }

  v13._object = 0x800000026EF45330;
  v13._countAndFlagsBits = 0xD000000000000016;
  VoiceBankingSession.keepScreenAwake(forReason:)(v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EE1BA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE1BAA4()
{
  v2 = *(type metadata accessor for RootView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE1B4AC(v0 + v3);
}

void sub_26EE1BB70()
{
  v1 = *(type metadata accessor for RootView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 32);
  if (v2)
  {
    v3 = v2;
    sub_26EF1DD1C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EE1BC58(uint64_t a1)
{
  v2 = sub_26EF389FC();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26EF38A2C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_26EF3883C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RootView(0);
  v17 = *(v27 + 32);
  v32 = a1;
  v18 = (a1 + v17);
  v20 = *v18;
  v19 = v18[1];
  v33[0] = v20;
  v33[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  sub_26EF3947C();

  sub_26EF3B57C();

  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_26EF3948C();
  __swift_destroy_boxed_opaque_existential_1(v33);
  v21 = sub_26EE27DAC();
  (*(v14 + 16))(v16, v21, v13);
  v22 = sub_26EF3881C();
  v23 = sub_26EF3B47C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26EE01000, v22, v23, "RootView: Training script did not download within 15 minutes, alerting user.", v24, 2u);
    MEMORY[0x2743842A0](v24, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  (*(v4 + 104))(v6, *MEMORY[0x277D704E0], v28);
  (*(v30 + 104))(v29, *MEMORY[0x277D704B0], v31);
  sub_26EF38A5C();
  v25 = sub_26EF38A4C();
  (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  sub_26EE13B88(v12, v10, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AB0C();
  return sub_26EE14578(v12, &qword_2806C9BE0, &qword_26EF3D3C0);
}

uint64_t sub_26EE1C0B8()
{
  v1 = *(type metadata accessor for RootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE1BC58(v2);
}

uint64_t sub_26EE1C118(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26EE9C28C(*a1, 5u);
  if (result)
  {
    v9 = sub_26EE27DAC();
    (*(v5 + 16))(v7, v9, v4);
    v10 = sub_26EF3881C();
    v11 = sub_26EF3B47C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26EE01000, v10, v11, "RootView: Configuration complete. Invalidating downloadTimer.", v12, 2u);
      MEMORY[0x2743842A0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v13 = (a2 + *(type metadata accessor for RootView(0) + 32));
    v15 = *v13;
    v14 = v13[1];
    v17[0] = v15;
    v17[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
    sub_26EF3AAFC();
    sub_26EF3947C();

    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_26EF3948C();
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

uint64_t sub_26EE1C314(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(type metadata accessor for RootView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26EE1C118(a2, v5);
}

unint64_t sub_26EE1C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6D80;
  if (!qword_2806C6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D80);
  }

  return result;
}

void sub_26EE1C3D8(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*(a1 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v12[1];
  }

  v9._object = 0x800000026EF45330;
  v9._countAndFlagsBits = 0xD000000000000016;
  VoiceBankingSession.letScreenSleep(givingUpReason:)(v9);

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10;
    sub_26EF1DF0C();
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    sub_26EF39BFC();
    __break(1u);
  }
}

void sub_26EE1C5C8()
{
  v1 = *(type metadata accessor for RootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_26EE1C3D8(v2);
}

uint64_t sub_26EE1C628()
{
  v0 = sub_26EF389FC();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v34 = &v34 - v3;
  v4 = sub_26EF38A2C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_26EF38A4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26EE14578(v13, &qword_2806C9BE0, &qword_26EF3D3C0);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_26EF38A3C();
    (*(v5 + 104))(v8, *MEMORY[0x277D70500], v4);
    v19 = MEMORY[0x274380AE0](v10, v8);
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
    if (v19)
    {
      v22 = v36;
      v21 = v37;
      v23 = v34;
      (*(v36 + 104))(v34, *MEMORY[0x277D704B0], v37);
      v24 = sub_26EF389CC();
      v26 = v25;
      result = (*(v22 + 8))(v23, v21);
      if (v26)
      {
        (*(v15 + 8))(v17, v14);
        return v24;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v27 = v35;
      sub_26EF38A0C();
      countAndFlagsBits = sub_26EF389CC();
      v30 = v29;
      (*(v36 + 8))(v27, v37);
      if (!v30)
      {
        v31 = sub_26EE17094();
        v32._object = 0x800000026EF45290;
        v33 = v31 & 1;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v32, v33, countAndFlagsBits)._countAndFlagsBits;
      }

      (*(v15 + 8))(v17, v14);
      return countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_26EE1CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_26EF39B4C();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RootView(0);
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v70 = v6;
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v73 = *(v76 - 8);
  v7 = MEMORY[0x28223BE20](v76);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A80, &qword_26EF3D530);
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = sub_26EF389FC();
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26EF38A4C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE0, &qword_26EF3D538);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v17 + 48))(v22, 1, v16))
  {
    sub_26EE14578(v22, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  else
  {
    (*(v17 + 16))(v19, v22, v16);
    sub_26EE14578(v22, &qword_2806C9BE0, &qword_26EF3D3C0);
    sub_26EF38A0C();
    (*(v17 + 8))(v19, v16);
    v36 = sub_26EF389DC();
    v38 = v37;
    (*(v66 + 8))(v15, v67);
    if (v38)
    {
      v78 = v36;
      v79 = v38;
      v30 = a1;
      v33 = v71;
      sub_26EE202A8(a1, v71, type metadata accessor for RootView);
      v39 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v40 = swift_allocObject();
      v41 = sub_26EE1BA40(v33, v40 + v39);
      sub_26EE12538(v41, v42, v43);
      v32 = v72;
      sub_26EF3AB7C();
      v44 = v63;
      sub_26EF39B3C();
      sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
      v67 = v26;
      v45 = v76;
      sub_26EF3A77C();
      (*(v64 + 8))(v44, v65);
      v31 = v73;
      v46 = v45;
      v26 = v67;
      (*(v73 + 8))(v32, v46);
      v35 = v68;
      v47 = v69;
      (*(v68 + 32))(v28, v12, v69);
      v34 = v47;
      v29 = 0;
      goto LABEL_6;
    }
  }

  v29 = 1;
  v30 = a1;
  v32 = v72;
  v31 = v73;
  v33 = v71;
  v35 = v68;
  v34 = v69;
LABEL_6:
  (*(v35 + 56))(v28, v29, 1, v34);
  v78 = sub_26EE1DDC4();
  v79 = v48;
  sub_26EE202A8(v30, v33, type metadata accessor for RootView);
  v49 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v50 = swift_allocObject();
  v51 = sub_26EE1BA40(v33, v50 + v49);
  sub_26EE12538(v51, v52, v53);
  sub_26EF3AB7C();
  sub_26EE1F9BC(v28, v26);
  v54 = *(v31 + 16);
  v55 = v74;
  v56 = v26;
  v57 = v76;
  v54(v74, v32, v76);
  v58 = v75;
  sub_26EE1F9BC(v56, v75);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE8, &unk_26EF3D540);
  v54((v58 + *(v59 + 48)), v55, v57);
  v60 = *(v31 + 8);
  v60(v32, v57);
  sub_26EE14578(v28, &qword_2806C6DE0, &qword_26EF3D538);
  v60(v55, v57);
  return sub_26EE14578(v56, &qword_2806C6DE0, &qword_26EF3D538);
}

uint64_t sub_26EE1D274(uint64_t a1)
{
  v44 = sub_26EF3AF7C();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26EF3AFAC();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_26EF3AFCC();
  v46 = *(v51 - 8);
  v5 = MEMORY[0x28223BE20](v51);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v17 = sub_26EF37DCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  if (*(a1 + 16))
  {
    v22 = &v37 - v21;

    VoiceBankingNavigationModel.dismissSheet()();

    sub_26EE1D9D4(v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_26EE14578(v16, &qword_2806C6840, &qword_26EF3CD50);
    }

    else
    {
      v39 = v22;
      v40 = v2;
      v37 = *(v18 + 32);
      v41 = v17;
      v37(v22, v16, v17);
      v24 = sub_26EF38A4C();
      (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
      type metadata accessor for RootView(0);
      sub_26EE13B88(v13, v11, &qword_2806C9BE0, &qword_26EF3D3C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
      sub_26EF3AB0C();
      sub_26EE14578(v13, &qword_2806C9BE0, &qword_26EF3D3C0);
      sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
      v38 = sub_26EF3B54C();
      v25 = v43;
      sub_26EF3AFBC();
      v26 = v45;
      sub_26EF3AFEC();
      v46 = *(v46 + 8);
      (v46)(v25, v51);
      v27 = v42;
      v28 = v22;
      v29 = v41;
      (*(v18 + 16))(v42, v28, v41);
      v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v31 = swift_allocObject();
      v37((v31 + v30), v27, v29);
      aBlock[4] = sub_26EE1FB88;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26EE1DD80;
      aBlock[3] = &block_descriptor;
      v32 = _Block_copy(aBlock);

      v33 = v47;
      sub_26EF3AF8C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26EE1FCAC(&unk_2806C9E30, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
      sub_26EE154C8(&qword_2806C9E40, &qword_2806C6DF0, &qword_26EF3D550, MEMORY[0x277D83970]);
      v34 = v49;
      v35 = v44;
      sub_26EF3B68C();
      v36 = v38;
      MEMORY[0x2743835E0](v26, v33, v34, v32);
      _Block_release(v32);

      (*(v40 + 8))(v34, v35);
      (*(v48 + 8))(v33, v50);
      (v46)(v26, v51);
      return (*(v18 + 8))(v39, v41);
    }
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1D9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF389FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_26EF38A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26EE14578(v8, &qword_2806C9BE0, &qword_26EF3D3C0);
    v13 = sub_26EF37DCC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_26EF38A0C();
    v15 = (*(v3 + 88))(v5, v2);
    v16 = v15 == *MEMORY[0x277D704C8] || v15 == *MEMORY[0x277D704D0];
    if (v16 || v15 == *MEMORY[0x277D704A8] || v15 == *MEMORY[0x277D704B0] || v15 == *MEMORY[0x277D704C0])
    {
      sub_26EF37DAC();
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v17 = sub_26EF37DCC();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_26EE1DD80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26EE1DDC4()
{
  v0 = sub_26EF389FC();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0);
  v29 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26EF38A2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_26EF38A4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  sub_26EF3AAFC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26EE14578(v11, &qword_2806C9BE0, &qword_26EF3D3C0);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_26EF38A3C();
  (*(v3 + 104))(v6, *MEMORY[0x277D70500], v2);
  sub_26EE1FCAC(&qword_2806C6DB0, MEMORY[0x277D70508], MEMORY[0x277D70510]);
  v17 = sub_26EF3B0AC();
  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v8, v2);
  if ((v17 & 1) == 0)
  {
    v19 = v29;
    sub_26EF38A0C();
    v20 = sub_26EF389CC();
    v22 = v21;
    (*(v30 + 8))(v19, v31);
    if (!v22)
    {
      v23 = sub_26EE17094() & 1;
      v24 = 0x4B4F5F4256;
      v25 = 0xE500000000000000;
      v26 = v20;
      goto LABEL_7;
    }
  }

  v23 = sub_26EE17094() & 1;
  v24 = 0x45434E41435F4256;
  v25 = 0xE90000000000004CLL;
  v26 = 0;
LABEL_7:
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v24, v23, v26)._countAndFlagsBits;
  (*(v13 + 8))(v15, v12);
  return countAndFlagsBits;
}

uint64_t sub_26EE1E1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  if (*(a1 + 16))
  {

    VoiceBankingNavigationModel.dismissSheet()();

    v8 = sub_26EF38A4C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    type metadata accessor for RootView(0);
    sub_26EE13B88(v7, v5, &qword_2806C9BE0, &qword_26EF3D3C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
    sub_26EF3AB0C();
    return sub_26EE14578(v7, &qword_2806C9BE0, &qword_26EF3D3C0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE1E3A8@<X0>(uint64_t a1@<X8>)
{
  sub_26EE1E514();
  sub_26EE12538(v2, v3, v4);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_26EE1E404()
{
  result = qword_2806C6D90;
  if (!qword_2806C6D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C58, &qword_26EF3D3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C50, &qword_26EF3D3E0);
    v3 = sub_26EE154C8(&qword_2806C6D78, &qword_2806C6C50, &qword_26EF3D3E0, MEMORY[0x277CDDB50]);
    sub_26EE1C384(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6D90);
  }

  return result;
}

void sub_26EE1E514()
{
  v1 = sub_26EF39DDC();
  v95 = *(v1 - 8);
  v96 = v1;
  MEMORY[0x28223BE20](v1);
  v94 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26EF389FC();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v89 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v89 - v7;
  MEMORY[0x28223BE20](v6);
  v91 = &v89 - v8;
  v9 = sub_26EF38A2C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v89 - v17;
  v19 = sub_26EF38A4C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RootView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v93 = v0;
  sub_26EF3AAFC();
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_26EE14578(v18, &qword_2806C9BE0, &qword_26EF3D3C0);
    return;
  }

  v25 = *(v20 + 32);
  v90 = v23;
  v25(v22, v18, v23);
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  sub_26EF38A3C();
  (*(v10 + 104))(v13, *MEMORY[0x277D70500], v9);
  v26 = MEMORY[0x274380AE0](v15, v13);
  v27 = *(v10 + 8);
  v27(v13, v9);
  v27(v15, v9);
  if (v26)
  {
    v28 = v20;
    v30 = v97;
    v29 = v98;
    v31 = v91;
    (*(v97 + 104))(v91, *MEMORY[0x277D704B0], v98);
    sub_26EF389EC();
    v33 = v32;
    (*(v30 + 8))(v31, v29);
    if (!v33)
    {
LABEL_38:
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26EF3C6B0;
    v35 = *v93;
    v36 = *(v93 + 8);
    if (v36 == 1)
    {
      v37 = v35;
    }

    else
    {

      sub_26EF3B46C();
      v48 = sub_26EF3A36C();
      sub_26EF3880C();

      v49 = v94;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v35, 0);
      (*(v95 + 8))(v49, v96);
      v37 = v99;
    }

    v50 = *&v37[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager];

    v51 = sub_26EF388BC();
    v52 = sub_26EF38EAC();

    v53 = sub_26EF3928C();
    if (v36)
    {
      v99 = v35;
      v54 = v35;
    }

    else
    {

      sub_26EF3B46C();
      v55 = sub_26EF3A36C();
      sub_26EF3880C();

      v56 = v94;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v35, 0);
      (*(v95 + 8))(v56, v96);
    }

    v57 = objc_opt_self();
    v58 = v99;
    v59 = VoiceBankingSession.trainingAssetSize.getter();

    v60 = v53 + v59;
    if (!__OFADD__(v53, v59))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v38 = v92;
  sub_26EF38A0C();
  sub_26EF389EC();
  v40 = v39;
  v41 = v97;
  v42 = *(v97 + 8);
  v43 = v38;
  v44 = v98;
  v42(v43, v98);
  if (!v40)
  {
LABEL_14:
    v47 = 0xE000000000000000;
    goto LABEL_31;
  }

  v45 = v89;
  sub_26EF38A0C();
  v46 = (*(v41 + 88))(v45, v44);
  if (v46 != *MEMORY[0x277D704C8] && v46 != *MEMORY[0x277D704D0] && v46 != *MEMORY[0x277D704A8] && v46 != *MEMORY[0x277D704B0] && v46 != *MEMORY[0x277D704C0])
  {

    v42(v45, v44);
    goto LABEL_14;
  }

  v28 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26EF3C6B0;
  v61 = *v93;
  v62 = *(v93 + 8);
  if (v62 == 1)
  {
    v63 = v61;
  }

  else
  {

    sub_26EF3B46C();
    v64 = sub_26EF3A36C();
    sub_26EF3880C();

    v65 = v94;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v61, 0);
    (*(v95 + 8))(v65, v96);
    v63 = v99;
  }

  v66 = *&v63[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager];

  v67 = sub_26EF388BC();
  v68 = sub_26EF38EAC();

  v69 = sub_26EF3928C();
  if (v62)
  {
    v99 = v61;
    v70 = v61;
  }

  else
  {

    sub_26EF3B46C();
    v71 = sub_26EF3A36C();
    sub_26EF3880C();

    v72 = v94;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v61, 0);
    (*(v95 + 8))(v72, v96);
  }

  v57 = objc_opt_self();
  v73 = v99;
  v74 = VoiceBankingSession.trainingAssetSize.getter();

  v60 = v69 + v74;
  if (__OFADD__(v69, v74))
  {
    goto LABEL_37;
  }

LABEL_28:
  v75 = [v57 stringFromByteCount:v60 countStyle:0];
  v76 = sub_26EF3B0FC();
  v78 = v77;

  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_26EE1EFBC(v79, v80, v81);
  *(v34 + 32) = v76;
  *(v34 + 40) = v78;
  v82 = sub_26EF3B10C();
  v47 = v83;

  v101._countAndFlagsBits = v82;
  v101._object = v47;
  v24 = v28;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v84 = v82 & 0xFFFFFFFFFFFFLL;
    v85 = v90;
    if (!v84)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

LABEL_31:
  v85 = v90;
  if ((v47 & 0xF00000000000000) == 0)
  {
LABEL_32:

    v86 = sub_26EE17094();
    v87._countAndFlagsBits = 0xD000000000000023;
    v87._object = 0x800000026EF45300;
    v101 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v87, v86 & 1, 0);
  }

LABEL_33:
  if (TTSVBIsInternalUIBuild())
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_26EF3B70C();

    v99 = 0xD000000000000012;
    v100 = 0x800000026EF452E0;
    v88 = sub_26EF389AC();
    MEMORY[0x274383240](v88);

    MEMORY[0x274383240](v99, v100);
    v85 = v90;
  }

  (*(v24 + 8))(v22, v85);
}

unint64_t sub_26EE1EFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6DB8;
  if (!qword_2806C6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6DB8);
  }

  return result;
}

uint64_t sub_26EE1F010@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE1FCAC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v11 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v12;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  *(a1 + 32) = sub_26EF39C1C();
  *(a1 + 40) = v13;
  v14 = type metadata accessor for RootView(0);
  v15 = sub_26EF38A4C();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_26EE13B88(v10, v8, &qword_2806C9BE0, &qword_26EF3D3C0);
  sub_26EF3AAEC();
  sub_26EE14578(v10, &qword_2806C9BE0, &qword_26EF3D3C0);
  v16 = (a1 + *(v14 + 32));
  sub_26EE1FAB8(0, &qword_2806C6C38, 0x277CBEBB8);
  v17 = [objc_opt_self() mainRunLoop];
  v18 = sub_26EF3B5BC();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = sub_26EF3B59C();

  sub_26EE14578(v4, &qword_2806C6C30, &qword_26EF3D3D0);
  v24 = v19;
  sub_26EF3B58C();
  sub_26EE1FCAC(&qword_2806C6C40, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v20 = sub_26EF394CC();

  v23[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C28, &qword_26EF3D3C8);
  result = sub_26EF3AAEC();
  v22 = v25;
  *v16 = v24;
  v16[1] = v22;
  return result;
}

uint64_t sub_26EE1F440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EE1F520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_26EE1F5E8(uint64_t a1)
{
  sub_26EE1F6E4(319);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EE1F7D0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE1F864(319, &qword_2806C6DD0, &qword_2806C9BE0, &qword_26EF3D3C0);
        if (v4 <= 0x3F)
        {
          sub_26EE1F864(319, &qword_2806C6DD8, &qword_2806C6C28, &qword_26EF3D3C8);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26EE1F6E4(uint64_t a1)
{
  if (!qword_2806C66B0)
  {
    type metadata accessor for VoiceBankingSession(255);
    v1 = sub_26EF3972C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C66B0);
    }
  }
}

void sub_26EE1F73C(uint64_t a1)
{
  if (!qword_2806C6DC0)
  {
    type metadata accessor for VoiceBankingNavigationModel(255);
    sub_26EE1FCAC(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    v1 = sub_26EF39C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C6DC0);
    }
  }
}

void sub_26EE1F7D0(uint64_t a1)
{
  if (!qword_2806C6DC8)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(255);
    sub_26EE1FCAC(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    v1 = sub_26EF39C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C6DC8);
    }
  }
}

void sub_26EE1F864(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3AB2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EE1F8B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6C58, &qword_26EF3D3E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6D88, &qword_26EF3D498);
  v0 = sub_26EE1E404();
  sub_26EE12538(v0, v1, v2);
  sub_26EE154C8(&qword_2806C6D98, &qword_2806C6D88, &qword_26EF3D498, MEMORY[0x277CE14C0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE1F9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DE0, &qword_26EF3D538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE1FA44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RootView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26EE1FAB8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26EE1FB00()
{
  v1 = sub_26EF37DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26EE1FB88()
{
  sub_26EF37DCC();
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v0 = sub_26EF37D7C();
    sub_26EE1FE24(MEMORY[0x277D84F90]);
    v1 = sub_26EF3B01C();

    [v2 openSensitiveURL:v0 withOptions:v1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EE1FCAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EE1FCF4(uint64_t a1, uint64_t a2)
{
  sub_26EF3B87C();
  sub_26EF3B16C();
  v4 = sub_26EF3B8CC();

  return sub_26EE1FD6C(a1, a2, v4);
}

unint64_t sub_26EE1FD6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26EF3B82C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26EE1FE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF8, &qword_26EF3D558);
    v3 = sub_26EF3B7CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26EE13B88(v4, &v13, &qword_2806C6E00, &qword_26EF3D560);
      v5 = v13;
      v6 = v14;
      result = sub_26EE1FCF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26EE1FF54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_26EE1FF54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));

  v5 = v0 + v4 + *(v1 + 28);
  v6 = sub_26EF38A4C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D58, &qword_26EF3D470);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EE20178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RootView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE1A044(a1, v6, a2);
}

uint64_t sub_26EE202A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE20310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Binding.with(changeHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a1;
  v23 = a2;
  v24 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v20[0] = *(v6 + 16);
  (v20[0])(v20 - v9, v4);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v13 = *(a3 + 16);
  *(v12 + 4) = v13;
  v14 = *(v6 + 32);
  v14(&v12[v11], v10, a3);
  v15 = v21;
  (v20[0])(v21, v20[1], a3);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v13;
  v14(&v16[v11], v15, a3);
  v17 = &v16[(v11 + v7 + 7) & 0xFFFFFFFFFFFFFFF8];
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;

  return sub_26EF3AC7C();
}

uint64_t sub_26EE20588()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE206F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  (*(v8 + 16))(v11, a1, a5);
  sub_26EF3AC3C();
  a3(a1, v13);
  return (*(v8 + 8))(v13, a5);
}

uint64_t sub_26EE20840()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26EE20950(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_26EE206F0(a1, v1 + v5, v7, v8, v3);
}

uint64_t Binding.mapped<A>(_:set:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a1;
  v34 = a6;
  v35 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a7;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *(v8 + 16);
  v13(&v26 - v11, v15, v14);
  v16 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v27 = *(a5 + 16);
  v18 = v34;
  *(v17 + 4) = v27;
  *(v17 + 5) = v18;
  v19 = v35;
  *(v17 + 6) = v30;
  *(v17 + 7) = v19;
  v30 = *(v8 + 32);
  v30(&v17[v16], v12, a5);
  v20 = v28;
  v13(v28, v29, a5);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v34;
  *(v21 + 4) = v27;
  *(v21 + 5) = v22;
  v24 = v31;
  v23 = v32;
  *(v21 + 6) = v31;
  *(v21 + 7) = v23;
  v30(&v21[v16], v20, a5);

  sub_26EE21114(v24, v23);
  return sub_26EF3AC7C();
}

uint64_t sub_26EE20C28(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v9);
  a1(v8);
  return (*(v6 + 8))(v8, a4);
}

uint64_t sub_26EE20D20()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE20E28()
{
  v1 = v0[4];
  v2 = *(sub_26EF3AC9C() - 8);
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_26EE20C28(v3, v4, v5, v1);
}

uint64_t sub_26EE20EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x28223BE20](a1);
  if (v9)
  {
    v10 = v8;

    a2(a1);
    sub_26EF3AC9C();
    sub_26EF3AC3C();
    return sub_26EE18828(a2, v10);
  }

  return result;
}

uint64_t sub_26EE20F7C()
{
  v1 = *(v0 + 32);
  v2 = sub_26EF3AC9C();
  v3 = *(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(*(v1 - 8) + 8))(v0 + v5 + *(v2 + 32), v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_26EE2108C(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_26EE20EB0(a1, v5, v6, v7, v3);
}

uint64_t sub_26EE21114(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t Binding.unwrapped<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 16) + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  Binding.mapped<A>(_:set:)(sub_26EE214D4, v10, sub_26EE21520, v11, a2, v5, a3);
}

uint64_t sub_26EE212A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26EF3B5CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = *(a3 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, a3) != 1)
  {
    return (*(v12 + 32))(a4, v11, a3);
  }

  (*(v12 + 16))(a4, a2, a3);
  result = (v13)(v11, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_26EE21454()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE21520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Binding.optionalBinding<A>()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26EF3ACBC();
}

uint64_t Binding.wrappedToOptional()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26EF3ACAC();
}

uint64_t Binding.to<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v23 = *(v6 + 16);
  v23(&v20 - v9, v3, a2);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v22 = *(a2 + 16);
  *(v13 + 4) = v22;
  v21 = *(v5 + *MEMORY[0x277D84308] + 8);
  *(v13 + 5) = v21;
  v14 = *(v6 + 32);
  v14(&v13[v11], v10, a2);
  v15 = v25;
  v16 = v26;
  *&v13[v12] = v26;
  v23(v15, v24, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v21;
  *(v17 + 4) = v22;
  *(v17 + 5) = v18;
  v14(&v17[v11], v15, a2);
  *&v17[v12] = v16;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE219BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84308];
  v6 = *(*a2 + *MEMORY[0x277D84308]);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13[-v8];
  v10 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v10);
  v11 = swift_readAtKeyPath();
  (*(*(*(v4 + *v5 + 8) - 8) + 16))(a3);
  v11(v13, 0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26EE21B40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_26EF3AC9C() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE219BC(v1 + v4, v5, a1);
}
uint64_t sub_240979500(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_240979570(v2, v3);
  }

  return result;
}

void sub_240979570(uint64_t a1, unint64_t a2)
{
  v5 = sub_240A2BF8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v9;
  sub_240A2BF7C();
  v12 = sub_240A2BF5C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  if (v14 >> 60 == 15)
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    v24.a = 0.0;

    sub_240A2B12C();
    return;
  }

  v15 = [objc_opt_self() QRCodeGenerator];
  v16 = sub_240A295CC();
  [v15 setMessage_];

  v17 = [v15 outputImage];
  if (v17 && (v18 = v17, CGAffineTransformMakeScale(&v24, 5.0, 5.0), v19 = [v18 imageByApplyingTransform:&v24 highQualityDownsample:1], v18, v20 = v19, objc_msgSend(v20, sel_extent), v21 = objc_msgSend(v11, sel_createCGImage_fromRect_, v20), v20, v20, v21))
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v22 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v24.a = v22;
  v23 = v22;

  sub_240A2B12C();

  sub_24092D94C(v12, v14);
}

uint64_t sub_24097985C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF8, &qword_240A33F60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken, &qword_27E50C6D0, &unk_240A33620);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for QRCodeGenerator(uint64_t a1)
{
  result = qword_27E50CCD8;
  if (!qword_27E50CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240979998(uint64_t a1)
{
  sub_240979A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_240979A54(uint64_t a1)
{
  if (!qword_27E50CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CCF0, &qword_240A33ED8);
    v1 = sub_240A2B13C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50CCE8);
    }
  }
}

uint64_t sub_240979AB8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_240A2B0BC();
  *a2 = result;
  return result;
}

unint64_t sub_240979B08()
{
  result = qword_27E50C450;
  if (!qword_27E50C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C450);
  }

  return result;
}

uint64_t sub_240979B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240979BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6D0, &unk_240A33620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TeenSetupContinueOnParentOrGuardianView(uint64_t a1)
{
  result = qword_27E50CD30;
  if (!qword_27E50CD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240979C88(uint64_t a1)
{
  sub_240918B54(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_240979D10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_240A29DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240945D78(v5);
  v6 = sub_240A2C00C();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_240945D78(v5);
  v10 = sub_240A2C04C();
  v12 = v11;
  result = (v9)(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 3;
  return result;
}

unint64_t sub_240979E70()
{
  result = qword_27E50CD40;
  if (!qword_27E50CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD40);
  }

  return result;
}

AppleIDSetupUI::AISTermsContext __swiftcall AISTermsContext.init(altDSID:clientInfo:)(Swift::String altDSID, Swift::String clientInfo)
{
  *v2 = altDSID;
  v2[1] = clientInfo;
  result.clientInfo = clientInfo;
  result.altDSID = altDSID;
  return result;
}

unint64_t AISTermsContext.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240A2C47C();

  MEMORY[0x245CCCD90](v1, v2);
  MEMORY[0x245CCCD90](32010, 0xE200000000000000);
  return 0xD000000000000023;
}

uint64_t sub_240979F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_240979FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240979FF4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CD50);
  __swift_project_value_buffer(v0, qword_27E50CD50);
  return sub_240A2AE8C();
}

id TermsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TermsViewController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsContext];
  v3 = type metadata accessor for TermsViewController();
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_24097A1EC()
{
  sub_240A2C21C();
  *(v0 + 16) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097A280, v2, v1);
}

uint64_t sub_24097A280()
{

  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50CD50);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Pre Sign In terms is not supported", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  sub_24097A3CC();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_24097A3CC()
{
  result = qword_27E50CD78;
  if (!qword_27E50CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD78);
  }

  return result;
}

id TermsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TermsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TermsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24097A698(char a1)
{
  if (a1)
  {
    if (qword_27E50AF48 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50CD50);
    oslog = sub_240A2AFFC();
    v3 = sub_240A2C28C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v3, "Terms agreement successful", v4, 2u);
      MEMORY[0x245CCDDB0](v4, -1, -1);
    }

    v5 = oslog;

LABEL_8:

    return;
  }

  v6 = v1;
  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v7 = sub_240A2B00C();
  __swift_project_value_buffer(v7, qword_27E50CD50);
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "Terms agreement was not successful.", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v11 = v6 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler;
  v12 = *(v6 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  if (v12)
  {
    v13 = *(v11 + 8);
    sub_24097A3CC();
    v14 = swift_allocError();
    *v15 = 2;

    v12(v14, 1);
    sub_24090C1A0(v12, v13);
    v5 = v14;

    goto LABEL_8;
  }
}

void sub_24097A8DC(uint64_t a1)
{
  v2 = v1;
  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50CD50);

  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    if (!a1)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v9 = v8;

    v10 = sub_240A2BECC();
    v12 = sub_240925464(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v5, v6, "GenericTermsRemoteUI flow completed with termsInfo: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler;
  v14 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  if (!v14)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v13 + 8);

  v14(a1, 0);

  sub_24090C1A0(v14, v15);
}

uint64_t dispatch thunk of TermsViewController.presentTerms(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_240915E50;

  return v11(a1, a2, a3);
}

unint64_t sub_24097ACB4()
{
  result = qword_27E50CD88;
  if (!qword_27E50CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD88);
  }

  return result;
}

void sub_24097AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t AISFlowStepChildAccountRepair.__allocating_init(guardianAuthResponse:childAuthResults:locationServicesEnabled:settings:stepLoadTask:featureManager:currentDeviceInfoProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v11 = a3;
  v14 = swift_allocObject();
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_24097C3E8(a1, a2, v11, a4, a5, v19, v23, v24, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v21;
}

uint64_t sub_24097AE98()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CD90);
  __swift_project_value_buffer(v0, qword_27E50CD90);
  return sub_240A2AE9C();
}

uint64_t AISFlowStepChildAccountRepair.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t AISFlowStepChildAccountRepair.init(guardianAuthResponse:childAuthResults:locationServicesEnabled:settings:stepLoadTask:featureManager:currentDeviceInfoProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v12 = a3;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_24097C3E8(a1, a2, v12, a4, a5, v19, v23, v24, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v21;
}

id sub_24097B140()
{
  v1 = v0;
  v2 = sub_240A298BC();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C768, &qword_240A330D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = sub_240A2974C();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_240A2B00C();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  sub_240A2ABEC();
  if (v17)
  {
    v18 = sub_240A2BF1C();
  }

  else
  {
    v18 = 0;
  }

  [v16 setAltDSID_];

  sub_240A2ABCC();
  v55 = v8;
  if (v65)
  {
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_240919300(v64, &qword_27E50C6D0, &unk_240A33620);
  }

  sub_240A2ABCC();
  if (v65)
  {
    if (swift_dynamicCast())
    {
      v64[0] = v63;
      sub_240A2C62C();
LABEL_11:
      v19 = sub_240A2BF1C();

      goto LABEL_14;
    }
  }

  else
  {
    sub_240919300(v64, &qword_27E50C6D0, &unk_240A33620);
  }

  v19 = 0;
LABEL_14:
  [v16 setDSID_];

  [v16 setAppProvidedContext_];
  v20 = v1;
  v21 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);
  v22 = *(v21 + 16);
  v23 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240919298(v22 + v23, v15, &unk_27E50DCE0, &qword_240A32E20);
  v24 = sub_240A2962C();
  LODWORD(v22) = (*(*(v24 - 8) + 48))(v15, 1, v24);
  sub_240919300(v15, &unk_27E50DCE0, &qword_240A32E20);
  v25 = v22 == 1;
  v26 = v62;
  if (!v25)
  {
    sub_240A2AE9C();
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C2CC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2408FE000, v27, v28, "AISFlowStepChildAccountRepair: setting context as migration", v29, 2u);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }

    (*(v58 + 8))(v12, v26);
    [v16 setAppProvidedContext_];
  }

  v30 = *(v21 + 16);
  v31 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v30 + v31) == 2 && (__swift_project_boxed_opaque_existential_0((v20 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager), *(v20 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager + 24)), v33 = v59, v32 = v60, v34 = v61, (*(v60 + 104))(v59, *MEMORY[0x277CED208], v61), v35 = sub_240A2AACC(), (*(v32 + 8))(v33, v34), (v35 & 1) != 0))
  {
    if (qword_27E50AF50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v26, qword_27E50CD90);
    v36 = sub_240A2AFFC();
    v37 = sub_240A2C29C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v55;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2408FE000, v36, v37, "Configuring guardian auth context with self proxied device to satisfy family server", v40, 2u);
      MEMORY[0x245CCDDB0](v40, -1, -1);
    }

    (*(v20 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider))();
    v41 = v54;
    sub_240919298(v39, v54, &qword_27E50C768, &qword_240A330D0);
    v43 = v56;
    v42 = v57;
    if ((*(v56 + 48))(v41, 1, v57) == 1)
    {
      v44 = 0;
    }

    else
    {
      v48 = v53;
      (*(v43 + 32))(v53, v41, v42);
      v44 = sub_240A2989C();
      (*(v43 + 8))(v48, v42);
    }

    sub_240919300(v39, &qword_27E50C768, &qword_240A330D0);
    [v16 setProxiedDevice_];

    v49 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    *(swift_allocObject() + 16) = v49;
    objc_allocWithZone(sub_240A29DEC());
    v50 = v49;
    v45 = sub_240A29DCC();
    [v16 setAnisetteDataProvider_];
  }

  else
  {
    if (qword_27E50AF50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v26, qword_27E50CD90);
    v45 = sub_240A2AFFC();
    v46 = sub_240A2C29C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2408FE000, v45, v46, "Age range not applicable for guardian auth modification", v47, 2u);
      MEMORY[0x245CCDDB0](v47, -1, -1);
    }
  }

  return v16;
}

uint64_t sub_24097BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_240A2C21C();
  v3[3] = sub_240A2C20C();
  sub_240A29DEC();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_24097BAF4;

  return MEMORY[0x28213F3D0](a1, a2, a3);
}

uint64_t sub_24097BAF4()
{
  *(*v1 + 40) = v0;

  v3 = sub_240A2C1BC();
  if (v0)
  {
    v4 = sub_24097BCB4;
  }

  else
  {
    v4 = sub_24097BC50;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24097BC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24097BCB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AISFlowStepChildAccountRepair.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_240A2999C();

  v4 = sub_240A2A4AC();
  v8 = *(v4 - 8);
  v5 = MEMORY[0x277CEDAA0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x277CEDA98];
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

uint64_t AISFlowStepChildAccountRepair.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error);
  if (v6)
  {
    v7 = v6;
    sub_240A2AE9C();
    v8 = v6;
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C2CC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v25 = v3;
      v12 = v11;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v12 = 136315138;
      v26 = v6;
      v13 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v14 = sub_240A2BF9C();
      v16 = sub_240925464(v14, v15, &v27);
      v23 = v2;
      v17 = v16;

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2408FE000, v9, v10, "AISFlowStepChildAccountRepair (skipping): child account repair failed with error: %s", v12, 0xCu);
      v18 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CCDDB0](v18, -1, -1);
      MEMORY[0x245CCDDB0](v12, -1, -1);

      (*(v25 + 8))(v5, v23);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }

  v19 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults);
  type metadata accessor for AISFlowStepComplete(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC14AppleIDSetupUI19AISFlowStepComplete_authResponse) = v19;
  *(v20 + 24) = 0;
  swift_unknownObjectWeakInit();
  LOBYTE(v27) = 0;
  v21 = v19;
  sub_240A2B0DC();
  *(v20 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v20;
}

uint64_t sub_24097C0D4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager));
}

uint64_t AISFlowStepChildAccountRepair.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager));

  return v0;
}

uint64_t AISFlowStepChildAccountRepair.__deallocating_deinit()
{
  AISFlowStepChildAccountRepair.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_UNKNOWN **sub_24097C2BC()
{
  result = AISFlowStepChildAccountRepair.nextStep()();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_24097C330(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_24097C3E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v30[3] = a10;
  v30[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = a1;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = a2;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = a3;
  v20 = v26;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v25;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v20;
  sub_240919A14(v30, a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v21 = (a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  *(a9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v29 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v30);
  (*(v16 + 32))(a9 + v23, v18, v15);
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a9;
}

uint64_t type metadata accessor for AISFlowStepChildAccountRepair(uint64_t a1)
{
  result = qword_27E50CDA8;
  if (!qword_27E50CDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24097C6F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    if (*(v3 + v10))
    {

      v11 = a1;
      v12 = [v11 isCommunicationSafetyEnabled];
      if (v12)
      {
        v13 = v12;
        [v12 BOOLValue];
      }

      sub_240A2ACAC();

      if (*(v3 + v10))
      {

        v18 = [v11 isEyeReliefEnabled];
        if (v18)
        {
          v19 = v18;
          [v18 BOOLValue];
        }

        sub_240A2ACBC();

        if (*(v3 + v10))
        {

          v20 = [v11 isAppAndWebsiteActivityEnabled];
          if (v20)
          {
            v21 = v20;
            [v20 BOOLValue];
          }

          sub_240A2ACFC();

          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = a1;
    }

    goto LABEL_17;
  }

  sub_240A2AE9C();
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2408FE000, v14, v15, "AISFlowStepChildAccountRepair stIntroductionModel is nil", v16, 2u);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
LABEL_17:
  v22 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = a2;
  v23 = a2;

  return sub_2409F4DA8();
}

uint64_t sub_24097C9BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240915E50;

  return sub_24097BA1C(a1, a2, v6);
}

uint64_t AISFlowStepBase.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_24097CB2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24097CB8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24097CC20;
}

uint64_t sub_24097CC24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_24097CC98(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240A2B12C();
}

uint64_t (*sub_24097CD08(uint64_t *a1))()
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
  *(v3 + 48) = sub_240A2B10C();
  return sub_24097CDAC;
}

uint64_t sub_24097CDB0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  return swift_endAccess();
}

uint64_t sub_24097CE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0FC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_24097CF5C(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
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

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  swift_endAccess();
  return sub_24097D0CC;
}

void sub_24097D0CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_240A2B0FC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_240A2B0FC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_24097D27C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24097D334()
{
  sub_240A2C21C();
  *(v0 + 16) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097D3C8, v2, v1);
}

uint64_t sub_24097D3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24097D42C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A2A4AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24097D498@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_24097D518(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240A2B12C();
}

uint64_t sub_24097D58C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  return swift_endAccess();
}

uint64_t sub_24097D604(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0FC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_24097D788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t AISFlowStepBase.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t (*sub_24097D8B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24097EA28;
}

void sub_24097D944(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*sub_24097D9C8(uint64_t *a1))()
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
  *(v3 + 48) = sub_240A2B10C();
  return sub_24097EA2C;
}

void sub_24097DA6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_24097DB58()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_240915E50;

  return v4();
}

uint64_t sub_24097DC68@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AISFlowStepBase(0);
  result = sub_240A2B0BC();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of AISFlowStepProtocol.prepareForPresentation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupPasscode(for:nextTaskInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24097E030;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24097E030(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupLocationServices(nextTaskInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24097EA24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupPerformAIDASignIn(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24097EA24;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AISFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240915E50;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for AISFlowStepBase(uint64_t a1)
{
  result = qword_27E50CDC0;
  if (!qword_27E50CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24097E50C(uint64_t a1)
{
  sub_240948458();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AISFlowStepBase.prepareForPresentation()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_240915E50;

  return v4();
}

uint64_t dispatch thunk of AISFlowStepAuthentication.continue(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240916360;

  return v9(a1, a2, a3);
}

uint64_t sub_24097EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v66 = a1;
  v62 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDD8, &qword_240A34530);
  v3 = MEMORY[0x28223BE20](v58);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDE0, &qword_240A34538);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v76.n128_u64[0] = sub_240A2C06C();
  v76.n128_u64[1] = v15;
  v64 = sub_24091C4F8();
  v16 = sub_240A2B9CC();
  v18 = v17;
  v20 = v19;
  sub_240A2B93C();
  v21 = sub_240A2B9AC();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_240920658(v16, v18, v20 & 1);

  v76.n128_u64[0] = v21;
  v76.n128_u64[1] = v23;
  LOBYTE(v77) = v25 & 1;
  *(&v77 + 1) = v27;
  v59 = v14;
  sub_240A2BA6C();
  sub_240920658(v21, v23, v25 & 1);

  v76.n128_u64[0] = sub_240A2C06C();
  v76.n128_u64[1] = v28;
  v29 = sub_240A2B9CC();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_240A2B88C();
  v73 = v33 & 1;
  v72 = 1;
  v69.n128_u64[0] = v29;
  v69.n128_u64[1] = v31;
  LOBYTE(v70) = v33 & 1;
  *(&v70 + 1) = *v75;
  DWORD1(v70) = *&v75[3];
  *(&v70 + 1) = v35;
  v71[0] = v36;
  *&v71[1] = *v74;
  *&v71[4] = *&v74[3];
  memset(&v71[8], 0, 32);
  v71[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F0, &unk_240A32278);
  sub_240940614();
  v37 = v66;
  sub_240A2BA6C();
  v78 = *v71;
  *v79 = *&v71[16];
  *&v79[9] = *&v71[25];
  v76 = v69;
  v77 = v70;
  v38 = v67;
  sub_240919300(&v76, &qword_27E50C1F0, &unk_240A32278);
  v39 = sub_240A2B55C();
  v40 = v65;
  *v65 = v39;
  v40[1] = 0x4034000000000000;
  v41 = v40;
  *(v40 + 16) = 0;
  v42 = sub_240A2C0AC();
  if (!v42)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDE8, &unk_240A34550);
    v69.n128_u64[0] = v44;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDF0, &qword_240A34578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDF8, &qword_240A34580);
    sub_24091CE28(&qword_27E50CE00, &qword_27E50CDF0, &qword_240A34578, MEMORY[0x277D83980]);
    sub_24091CE28(&qword_27E50CE08, &qword_27E50CDF8, &qword_240A34580, MEMORY[0x277CE11A8]);
    v47 = v41;
    sub_240A2BD6C();
    v48 = sub_240A2B86C();
    v49 = v41 + *(v58 + 36);
    *v49 = v48;
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    *(v49 + 40) = 1;
    v50 = v59;
    v51 = v60;
    sub_240919298(v59, v60, &qword_27E50D9B0, &unk_240A34540);
    v52 = v68;
    v53 = v61;
    sub_240919298(v68, v61, &qword_27E50CDE0, &qword_240A34538);
    v54 = v63;
    sub_240919298(v47, v63, &qword_27E50CDD8, &qword_240A34530);
    v55 = v62;
    sub_240919298(v51, v62, &qword_27E50D9B0, &unk_240A34540);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE10, &qword_240A34588);
    sub_240919298(v53, v55 + *(v56 + 48), &qword_27E50CDE0, &qword_240A34538);
    sub_240919298(v54, v55 + *(v56 + 64), &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v47, &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v52, &qword_27E50CDE0, &qword_240A34538);
    sub_240919300(v50, &qword_27E50D9B0, &unk_240A34540);
    sub_240919300(v54, &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v53, &qword_27E50CDE0, &qword_240A34538);
    return sub_240919300(v51, &qword_27E50D9B0, &unk_240A34540);
  }

  v43 = v42;
  v44 = sub_24097F700(v42, 0);

  v45 = sub_24097F638(&v69, v44 + 4, v43, v37, v38);

  if (v45 == v43)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24097F1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = sub_240A2BDEC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE18, &unk_240A34590);
  return sub_24097F238(v3, v4, a2 + *(v6 + 44));
}

uint64_t sub_24097F238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE20, &qword_240A345A0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = *(sub_240A2B3FC() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_240A2B57C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #6.0 }

  *v13 = _Q0;
  v22 = sub_240A2BB6C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE28, &qword_240A345A8);
  *&v13[*(v23 + 52)] = v22;
  *&v13[*(v23 + 56)] = 256;
  sub_240A2BDEC();
  sub_240A2B28C();
  v24 = &v13[*(v9 + 44)];
  v25 = v48;
  *v24 = v47;
  *(v24 + 1) = v25;
  *(v24 + 2) = v49;
  v45 = a1;
  v46 = a2;
  sub_24091C4F8();

  v26 = sub_240A2B9CC();
  v28 = v27;
  LOBYTE(v14) = v29;
  sub_240A2B90C();
  v30 = sub_240A2B8CC();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_240A2B91C();
  sub_240919300(v7, &qword_27E50B7D0, &qword_240A31218);
  v31 = sub_240A2B9AC();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_240920658(v26, v28, v14 & 1);

  v38 = v43;
  sub_240919298(v13, v43, &qword_27E50CE20, &qword_240A345A0);
  v39 = v44;
  sub_240919298(v38, v44, &qword_27E50CE20, &qword_240A345A0);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE30, &qword_240A345B0) + 48);
  *v40 = v31;
  *(v40 + 8) = v33;
  *(v40 + 16) = v35 & 1;
  *(v40 + 24) = v37;
  sub_24097F784(v31, v33, v35 & 1);

  sub_240919300(v13, &qword_27E50CE20, &qword_240A345A0);
  sub_240920658(v31, v33, v35 & 1);

  return sub_240919300(v38, &qword_27E50CE20, &qword_240A345A0);
}

uint64_t sub_24097F5D4@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_240A2B58C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDD0, &qword_240A34528);
  return sub_24097EA5C(v5, v4, a2 + *(v6 + 44));
}

__n128 *sub_24097F638(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_240A2C0DC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_24097F700(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE38, &qword_240A345B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_24097F784(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_24097F7A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider) ageRangeCache];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ageRangeSettings];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v4 setNumberStyle_];
      result = [v3 u13Limit];
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        v7 = [v4 stringFromNumber_];

        if (v7)
        {
          v59 = sub_240A2BF4C();
          v9 = v8;
        }

        else
        {
          v9 = 0xE200000000000000;
          v59 = 12849;
        }

        v10 = [v3 u13Limit];
        v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        v12 = [v4 stringFromNumber_];

        if (v12)
        {
          v13 = sub_240A2BF4C();
          v15 = v14;
        }

        else
        {
          v15 = 0xE200000000000000;
          v13 = 13105;
        }

        result = [v3 u18Limit];
        if (!__OFSUB__(result, 1))
        {
          v56 = v15;
          v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          v17 = [v4 stringFromNumber_];

          if (v17)
          {
            v53 = sub_240A2BF4C();
            v54 = v18;
          }

          else
          {
            v53 = 14129;
            v54 = 0xE200000000000000;
          }

          v19 = [v3 u18Limit];
          v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          v21 = [v4 stringFromNumber_];

          v57 = v4;
          v58 = v3;
          v55 = v13;
          if (v21)
          {
            v51 = sub_240A2BF4C();
            v52 = v22;
          }

          else
          {
            v51 = 14385;
            v52 = 0xE200000000000000;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEF8, &qword_240A346C8);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_240A32D00;
          v24 = sub_240A2BFEC();
          v26 = v25;
          sub_240A2BFEC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_240A305D0;
          v28 = MEMORY[0x277D837D0];
          *(v27 + 56) = MEMORY[0x277D837D0];
          v29 = sub_240913AEC();
          *(v27 + 64) = v29;
          *(v27 + 32) = v59;
          *(v27 + 40) = v9;
          v30 = sub_240A2BF6C();
          v32 = v31;

          v33 = *MEMORY[0x277D76A20];
          *(v23 + 32) = 1;
          *(v23 + 40) = v24;
          *(v23 + 48) = v26;
          *(v23 + 56) = v30;
          *(v23 + 64) = v32;
          *(v23 + 72) = v33;
          strcpy((v23 + 80), "figure.child");
          *(v23 + 93) = 0;
          *(v23 + 94) = -5120;
          v34 = v33;
          v35 = sub_240A2BFEC();
          v37 = v36;
          sub_240A2BFEC();
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_240A32540;
          *(v38 + 56) = v28;
          *(v38 + 64) = v29;
          *(v38 + 32) = v55;
          *(v38 + 40) = v56;
          *(v38 + 96) = v28;
          *(v38 + 104) = v29;
          *(v38 + 72) = v53;
          *(v38 + 80) = v54;
          v39 = sub_240A2BF6C();
          v41 = v40;

          *(v23 + 96) = 2;
          *(v23 + 104) = v35;
          *(v23 + 112) = v37;
          *(v23 + 120) = v39;
          *(v23 + 128) = v41;
          *(v23 + 136) = v34;
          *(v23 + 144) = 0xD000000000000010;
          *(v23 + 152) = 0x8000000240A3AFC0;
          v42 = sub_240A2BFEC();
          v44 = v43;
          sub_240A2BFEC();
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_240A305D0;
          *(v45 + 56) = v28;
          *(v45 + 64) = v29;
          *(v45 + 32) = v51;
          *(v45 + 40) = v52;
          v46 = sub_240A2BF6C();
          v48 = v47;

          v49 = *MEMORY[0x277D76A08];
          *(v23 + 160) = 3;
          *(v23 + 168) = v42;
          *(v23 + 176) = v44;
          *(v23 + 184) = v46;
          *(v23 + 192) = v48;
          *(v23 + 200) = v49;
          strcpy((v23 + 208), "figure.stand");
          *(v23 + 221) = 0;
          *(v23 + 222) = -5120;
          v50 = v49;

          return v23;
        }
      }

      __break(1u);
      return result;
    }
  }

  return sub_240983BF4();
}

id AgeSelectionViewController.init(with:context:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - v9;
  v72 = sub_240A2B00C();
  v10 = *(v72 - 8);
  v11 = MEMORY[0x28223BE20](v72);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate] = 0;
  v17 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider;
  v18 = [objc_allocWithZone(MEMORY[0x277CF0148]) init];
  *&v4[v17] = v18;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_protoAccountNavController] = a1;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] = a2;
  *&v4[v16] = a3;
  v19 = v18;
  v70 = a1;
  v67 = a2;
  v71 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v20 = [v19 ageRangeCache];

  if (v20 && (v21 = [v20 ageRangeSettings], v20, v21))
  {
    sub_240A2AE9C();
    v22 = v21;
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v25 = 136315138;
      v26 = v22;
      v27 = [v26 description];
      v28 = sub_240A2BF4C();
      v30 = v29;

      v31 = sub_240925464(v28, v30, &v73);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2408FE000, v23, v24, "Cache has settings at init: %s", v25, 0xCu);
      v32 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x245CCDDB0](v32, -1, -1);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v13, v72);
  }

  else
  {
    sub_240A2AE9C();
    v33 = sub_240A2AFFC();
    v34 = sub_240A2C2CC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2408FE000, v33, v34, "Cache has no settings at init", v35, 2u);
      MEMORY[0x245CCDDB0](v35, -1, -1);
    }

    (*(v10 + 8))(v15, v72);
  }

  v36 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration(0)) init];
  type metadata accessor for AISSignInSettings();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_24098053C;
  v37[4] = 0;
  v37[5] = 0;
  v37[6] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (result)
  {
    v39 = result;
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v40 = result;
      v41 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v42 = type metadata accessor for SignInOptionAuthenticationController(0);
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
      *&v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
      v44 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
      *&v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
      v45 = &v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
      *v45 = 0;
      v45[1] = 0;
      v46 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
      LOBYTE(v73) = 0;

      v47 = v66;
      sub_240A2B0DC();
      (*(v68 + 32))(&v43[v46], v47, v69);
      v48 = *&v43[v44];
      *&v43[v44] = v39;
      v49 = v39;

      *&v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v37;
      *&v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v41;
      v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
      v50 = *v45;
      v51 = v45[1];
      *v45 = 0;
      v45[1] = 0;

      v52 = v41;
      sub_24090C1A0(v50, v51);
      v43[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
      v75.receiver = v43;
      v75.super_class = v42;
      v53 = objc_msgSendSuper2(&v75, sel_init);

      *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_authController] = v53;
      v54 = objc_allocWithZone(type metadata accessor for ShieldSetup());
      v55 = v67;
      v56 = v71;
      swift_unknownObjectRetain();
      v57 = v53;
      v58 = sub_240A06E90(v57, v55, v56);

      swift_unknownObjectRelease();
      *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_shieldSetup] = v58;
      [objc_opt_self() deviceIsiPad];
      sub_240A2BFEC();
      sub_240A2BFEC();
      v59 = sub_240A2BF1C();

      v60 = sub_240A2BF1C();

      v61 = sub_240A2BF1C();
      v62 = type metadata accessor for AgeSelectionViewController();
      v74.receiver = v4;
      v74.super_class = v62;
      v63 = objc_msgSendSuper2(&v74, sel_initWithTitle_detailText_symbolName_adoptTableViewScrollView_, v59, v60, v61, 1);

      swift_unknownObjectRelease();

      return v63;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24098053C(void *a1, char a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = a2 & 1;
  sub_240963F5C(a1);
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  sub_240963F50(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v17[1] = a1;
    v18 = v8;
    sub_240963F5C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CF30, &qword_240A346D0);
    v13 = sub_240A2BF9C();
    v15 = sub_240925464(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v9, v10, "result: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_24098072C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for AgeSelectionViewController();
  v29.receiver = v0;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v6 = [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider] ageRangeCache];
  v7 = [v6 ageRangeSettings];

  if (!v7)
  {
    v8 = sub_240A2C24C();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_240A2C21C();
    v9 = v1;
    v10 = sub_240A2C20C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_2409230D4(0, 0, v4, &unk_240A345D8, v11);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v14 = [v1 tableView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = [v1 tableView];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  [v16 setRowHeight_];

  v18 = [v1 tableView];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [objc_opt_self() systemBackgroundColor];
  [v19 setBackgroundColor_];

  v21 = [v1 tableView];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  sub_2409194E8(0, &qword_27E50CE90, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = sub_240A2BF1C();
  [v22 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  v25 = [v1 tableView];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 setDataSource_];

  v27 = [v1 tableView];
  if (v27)
  {
    v28 = v27;
    [v27 setDelegate_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_240980AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_240A2C21C();
  v4[4] = sub_240A2C20C();
  v4[5] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_240980B68, v6, v5);
}

uint64_t sub_240980B68(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_240A2C20C();
  v1[8] = v3;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_240980C6C;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000019, 0x8000000240A3D410, sub_240985344, v4, v7);
}

uint64_t sub_240980C6C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_240980DCC, v3, v2);
}

uint64_t sub_240980DCC()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409418B8, v1, v0);
}

void sub_240980E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = sub_24098534C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24098159C;
  aBlock[3] = &block_descriptor_34;
  v13 = _Block_copy(aBlock);

  [v9 refreshAgeRangeWithCompletion_];
  _Block_release(v13);
}

void sub_240981088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v31 = a1;
  v5 = sub_240A2BE4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2BE6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_240A2B00C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a2;
    sub_240A2AE9C();
    v18 = a2;
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_2408FE000, v19, v20, "Failed to fetch age range settings: %@", v21, 0xCu);
      sub_240919300(v22, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v22, -1, -1);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
    sub_240A2C1CC();
  }

  else
  {
    v25 = v32;
    v29 = v9;
    v30 = v10;
    v28 = v6;
    if (v31)
    {
      sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
      v26 = sub_240A2C32C();
      aBlock[4] = sub_24098541C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2409EC704;
      aBlock[3] = &block_descriptor_37;
      v27 = _Block_copy(aBlock);

      sub_240A2BE5C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_240985424(&qword_27E50CF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
      sub_24098546C();
      sub_240A2C3FC();
      MEMORY[0x245CCD000](0, v12, v8, v27);
      _Block_release(v27);

      (*(v28 + 8))(v8, v5);
      (*(v30 + 8))(v12, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
    sub_240A2C1CC();
  }
}

void sub_240981520(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong tableView];

    [v3 reloadData];
  }
}

void sub_24098159C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id AgeSelectionViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_240A2BF1C();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_240A2BF1C();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id AgeSelectionViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_240A2BF1C();

  if (a4)
  {
    v10 = sub_240A2BF1C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id AgeSelectionViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id AgeSelectionViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id AgeSelectionViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AgeSelectionViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int __swiftcall AgeSelectionViewController.numberOfSections(in:)(UITableView *in)
{
  v1 = *(sub_24097F7A4() + 2);

  return v1;
}

unint64_t AgeSelectionViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = sub_240A2B08C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2BF1C();
  v7 = sub_240A2963C();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = sub_24097F7A4();
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v9[2])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v64 = v3;
  v65 = v2;
  v11 = &v9[8 * result];
  v12 = v11[6];
  v54 = v11[5];
  v13 = v11[8];
  v58 = v11[7];
  v14 = v11[9];
  v15 = v11[11];

  v63 = v13;

  v16 = v14;

  MEMORY[0x245CCCFB0](v17);
  v18 = objc_opt_self();
  v61 = v16;
  v19 = [v18 configurationWithTextStyle_];
  v62 = v15;
  v20 = sub_240A2BF1C();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  v60 = v19;
  v59 = v21;
  sub_240A2B07C();
  v57 = objc_opt_self();
  v22 = [v57 systemBlueColor];
  v23 = sub_240A2B04C();
  sub_240A2B03C();
  v23(v66, 0);
  v24 = objc_opt_self();
  v25 = *MEMORY[0x277D76988];
  v26 = [v24 _preferredFontForTextStyle_weight_];
  v56 = v8;
  if (!v26)
  {
    v26 = [v24 preferredFontForTextStyle_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE98, &unk_240A345E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v28 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v29 = sub_2409194E8(0, &unk_27E50CEA0, 0x277D74300);
  *(inited + 64) = v29;
  *(inited + 40) = v26;
  v53 = v28;
  v55 = v26;
  sub_240926DE0(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BB18, &unk_240A316A0);
  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v31 = sub_240A2BF1C();
  v54 = v12;
  v32 = v31;
  type metadata accessor for Key(0);
  sub_240985424(&qword_27E50CEB0, type metadata accessor for Key, &unk_240A2F714);
  v33 = sub_240A2BE9C();

  v34 = [v30 initWithString:v32 attributes:v33];

  v35 = [v24 preferredFontForTextStyle_];
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_240A32540;
  *(v36 + 32) = v53;
  *(v36 + 40) = v35;
  v37 = *MEMORY[0x277D740C0];
  *(v36 + 64) = v29;
  *(v36 + 72) = v37;
  v53 = v35;
  v38 = v37;
  v39 = v57;
  v40 = [v57 secondaryLabelColor];
  *(v36 + 104) = sub_2409194E8(0, &unk_27E50CEB8, 0x277D75348);
  *(v36 + 80) = v40;
  sub_240926DE0(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  swift_arrayDestroy();
  v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v42 = sub_240A2BF1C();
  v43 = sub_240A2BE9C();

  v44 = [v41 initWithString:v42 attributes:v43];

  v45 = v34;
  sub_240A2B02C();
  v46 = v44;
  sub_240A2B06C();
  sub_240A2B05C();
  v47 = v65;
  v66[3] = v65;
  v66[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v49 = v64;
  (*(v64 + 16))(boxed_opaque_existential_1, v5, v47);
  v50 = v56;
  MEMORY[0x245CCCFA0](v66);
  [v50 setAccessoryType_];
  v51 = v50;
  v52 = [v39 secondarySystemBackgroundColor];
  [v51 setBackgroundColor_];

  (*(v49 + 8))(v5, v47);
  return v51;
}

unint64_t AgeSelectionViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_240A2963C();
  [a1 deselectRowAtIndexPath:v7 animated:1];

  v8 = sub_24097F7A4();
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v8[2])
  {
    v10 = &v8[8 * result];
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[5];
    v24 = v10[4];
    v25 = v13;
    v22 = v11;
    v23 = v12;
    sub_240983EA4(&v22, v21);

    v14 = sub_240A2C24C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_240A2C21C();
    sub_240983EA4(&v22, v21);
    v15 = v2;
    v16 = sub_240A2C20C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v15;
    v19 = v23;
    *(v17 + 40) = v22;
    *(v17 + 56) = v19;
    v20 = v25;
    *(v17 + 72) = v24;
    *(v17 + 88) = v20;
    sub_2409230D4(0, 0, v6, &unk_240A345F8, v17);
    sub_240983F9C(&v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_240982650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2409826E8, v7, v6);
}

id sub_2409826E8()
{
  result = [objc_opt_self() defaultStore];
  *(v0 + 56) = result;
  if (result)
  {
    v2 = result;
    v3 = **(v0 + 24);
    *(v0 + 64) = v3;
    v4 = [objc_opt_self() sharedInstance];
    *(v0 + 72) = v4;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_240982800;

    return sub_240983FCC(v3, v2, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240982800()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240982958, v5, v4);
}

uint64_t sub_240982958()
{
  v1 = *(v0 + 64);

  sub_240982ACC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t AgeSelectionViewController.removeExistingProtoAccount(for:accountStore:accountManager:)(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_0(a2, v6);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_0(a3, v9);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_240915E50;

  return sub_24098487C(a1, v8, v11, v6, v9, v7, v10);
}

void sub_240982ACC(char *a1)
{
  v3 = sub_240A2974C();
  v74 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2B00C();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v9 = v1;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C2CC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v75 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v72 = v3;
    v71 = v14;
    v77[0] = v14;
    *v13 = 136315394;
    v79[0] = v75;
    type metadata accessor for AKUserAgeRange(0);
    v15 = sub_240A2BF9C();
    v17 = sub_240925464(v15, v16, v77);
    v70 = v5;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v79[0] = [*&v9[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] 0x1FD368EA8];
    type metadata accessor for AISAppleIDSignInFlowType(0);
    v19 = sub_240A2BF9C();
    v21 = sub_240925464(v19, v20, v77);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2408FE000, v10, v11, "AgeSelectionViewController navigating to age range: %s with signInFlowType: %s", v13, 0x16u);
    v22 = v71;
    swift_arrayDestroy();
    v3 = v72;
    MEMORY[0x245CCDDB0](v22, -1, -1);
    v23 = v13;
    a1 = v75;
    MEMORY[0x245CCDDB0](v23, -1, -1);

    (*(v6 + 8))(v8, v70);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (a1 == 1 || a1 == 2 && (v24 = v74, v25 = v73, (*(v74 + 13))(v73, *MEMORY[0x277CED208], v3), v26 = sub_240A2973C(), v24[1](v25, v3), (v26 & 1) != 0))
  {
    v27 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration(0)) init];
    v28 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    *&v27[v28] = a1;
    v29 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context;
    v30 = [*&v9[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] signInFlowType];
    if (v30 >= 2)
    {
      sub_240A2C58C();
      __break(1u);
    }

    else
    {
      v31 = v30;
      v32 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
      swift_beginAccess();
      *&v27[v32] = v31;
      v33 = *&v9[v29];
      v34 = swift_allocObject();
      *(v34 + 16) = v9;
      v35 = objc_allocWithZone(MEMORY[0x277D08348]);
      v75 = v9;
      v36 = v27;
      v37 = v33;
      v70 = v33;
      v38 = [v35 init];
      v39 = [objc_opt_self() sharedInstance];
      v40 = type metadata accessor for ConnectToFamilyViewController();
      v41 = objc_allocWithZone(v40);
      v42 = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
      v79[4] = MEMORY[0x277CEDE48];
      v79[3] = v42;
      v79[0] = v39;
      v43 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
      v44 = &v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      *v44 = 0;
      v44[1] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
      v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
      swift_unknownObjectWeakInit();
      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = v36;
      swift_beginAccess();
      v45 = *&v41[v43];
      *&v41[v43] = 0;
      v46 = v36;
      v73 = v39;

      *&v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = v38;
      sub_240919A14(v79, &v41[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
      swift_beginAccess();
      v48 = *v44;
      v47 = v44[1];
      *v44 = sub_240985310;
      v44[1] = v34;
      v71 = v34;
      v72 = v38;

      sub_24090C1A0(v48, v47);
      sub_240919A14(v79, &v78);
      v77[0] = 0;
      v49 = v37;
      v77[1] = v37;
      v74 = v46;
      v77[2] = v46;
      v70 = v70;
      sub_240949ECC();
      v50 = sub_240A2BF1C();

      sub_24094A010();
      v51 = sub_240A2BF1C();

      v76.receiver = v41;
      v76.super_class = v40;
      v52 = objc_msgSendSuper2(&v76, sel_initWithTitle_detailText_symbolName_contentLayout_, v50, v51, 0, 3);

      v53 = v52;
      v54 = [v53 buttonTray];
      v55 = [objc_opt_self() boldButton];
      sub_24094A27C();
      v56 = sub_240A2BF1C();

      [v55 setTitle:v56 forState:0];

      v57 = sub_24094A55C(v49);
      [v55 addAction:v57 forControlEvents:64];

      [v54 addButton_];
      v58 = [v53 buttonTray];

      v59 = [objc_opt_self() linkButton];
      sub_24094A874();
      v60 = sub_240A2BF1C();

      [v59 setTitle:v60 forState:0];

      v61 = sub_24094AAD8(v49);
      [v59 addAction:v61 forControlEvents:64];

      [v58 addButton_];

      sub_2409648F0(v77);
      __swift_destroy_boxed_opaque_existential_0(v79);
      v62 = v75;
      swift_unknownObjectWeakAssign();
      v63 = [v62 navigationController];
      if (v63)
      {
        v64 = v63;
        [v63 pushViewController:v53 animated:1];
      }

      else
      {
      }
    }
  }

  else
  {
    v65 = *&v9[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate];
    if (v65)
    {
      v66 = [v65 respondsToSelector_];
      sub_240915CF8();
      v67 = swift_allocError();
      *v68 = 0;
      v68[1] = 0;
      swift_unknownObjectRetain();
      v69 = sub_240A2952C();
      if (v66)
      {
        [v65 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v69];
        swift_unknownObjectRelease();
      }

      else
      {

        [v65 shieldSetupDidFinishWithResult:0 error:v69];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_240983634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CEDE80]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v11 = sub_240A2BE9C();
    v12 = [v10 initWithAuthResults_];
  }

  else
  {
    v12 = 0;
  }

  sub_240983B7C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = sub_2409194E8(0, &unk_27E50CEC8, 0x277D461F0);
  v14 = sub_240947398(inited);
  swift_setDeallocating();
  sub_240A2AE9C();

  v15 = sub_240A2AFFC();
  v16 = sub_240A2C2CC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v12;
    v20 = v19;
    v35 = v14;
    v36 = v19;
    *v18 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CED8, &unk_240A346A8);
    v21 = sub_240A2BF9C();
    v32 = a3;
    v23 = sub_240925464(v21, v22, &v36);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2408FE000, v15, v16, "Discarding view controllers from navigation stack: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    v12 = v33;
    MEMORY[0x245CCDDB0](v24, -1, -1);
    v25 = v18;
    a1 = v34;
    MEMORY[0x245CCDDB0](v25, -1, -1);

    a3 = v32;
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  v26 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate;
  v27 = *(a3 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate);
  if (v27 && ([*(a3 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate) respondsToSelector_] & 1) != 0)
  {
    if (v14)
    {
      sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
      swift_unknownObjectRetain();
      v28 = sub_240A2C15C();
      if (a1)
      {
LABEL_11:
        v29 = sub_240A2952C();
LABEL_20:
        [v27 shieldSetupDidFinishWithResult:v12 viewControllersToRemove:v28 error:v29];

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v28 = 0;
      if (a1)
      {
        goto LABEL_11;
      }
    }

    v29 = 0;
    goto LABEL_20;
  }

  v30 = *(a3 + v26);
  if (v30)
  {
    swift_unknownObjectRetain();
    if (a1)
    {
      v31 = sub_240A2952C();
    }

    else
    {
      v31 = 0;
    }

    [v30 shieldSetupDidFinishWithResult:v12 error:v31];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_240983A30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = objc_allocWithZone(type metadata accessor for AgeSelectionViewController());
  swift_unknownObjectRetain();
  return AgeSelectionViewController.init(with:context:delegate:)(v2, v3, v4);
}

uint64_t sub_240983A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409855D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240983AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409855D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240983B54(uint64_t a1)
{
  sub_2409855D4();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240983B7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEE8, &qword_240A346B8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27E50CEF0;
    v3 = &unk_240A346C0;
  }

  else
  {
    v2 = &qword_27E50C9A0;
    v3 = qword_240A31380;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_240983BF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEF8, &qword_240A346C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A32D00;
  v1 = sub_240A2BFEC();
  v3 = v2;
  v4 = sub_240A2BFEC();
  v5 = *MEMORY[0x277D76A20];
  *(v0 + 32) = 1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  strcpy((v0 + 80), "figure.child");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  v7 = v5;
  v8 = sub_240A2BFEC();
  v10 = v9;
  v11 = sub_240A2BFEC();
  *(v0 + 96) = 2;
  *(v0 + 104) = v8;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v7;
  *(v0 + 144) = 0xD000000000000010;
  *(v0 + 152) = 0x8000000240A3AFC0;
  v13 = sub_240A2BFEC();
  v15 = v14;
  v16 = sub_240A2BFEC();
  v17 = *MEMORY[0x277D76A08];
  *(v0 + 160) = 3;
  *(v0 + 168) = v13;
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  *(v0 + 192) = v18;
  *(v0 + 200) = v17;
  strcpy((v0 + 208), "figure.stand");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  v19 = v17;
  return v0;
}

uint64_t sub_240983DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_240980AC0(a1, v4, v5, v6);
}

uint64_t sub_240983EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240982650(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_240983FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = sub_240A2B00C();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_240A2C21C();
  v3[31] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v3[32] = v6;
  v3[33] = v5;

  return MEMORY[0x2822009F8](sub_2409840DC, v6, v5);
}

uint64_t sub_2409840DC()
{
  v18 = v0;
  v1 = [*(v0 + 200) protoAccount];
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x2822009F8](sub_2409842EC, 0, 0);
  }

  else
  {

    sub_240A2AE9C();
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C2CC();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 208);
    if (v5)
    {
      v9 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v0 + 168) = v9;
      type metadata accessor for AKUserAgeRange(0);
      v12 = sub_240A2BF9C();
      v14 = sub_240925464(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2408FE000, v3, v4, "No proto account exists for age range: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245CCDDB0](v11, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    (*(v7 + 8))(v6, v8);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2409842EC()
{
  v1 = v0[34];
  v2 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_240984418;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v2 removeAccount:v1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240984418(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 280) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = sub_240984678;
  }

  else
  {
    v4 = *(v2 + 256);
    v5 = *(v2 + 264);
    v6 = sub_240984534;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240984534()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2CC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[27];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Successfully removed existing proto account", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    v9 = v1;
    v1 = v4;
  }

  else
  {
    v9 = v0[34];
  }

  (*(v7 + 8))(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_240984678()
{
  v23 = v0;
  v1 = v0[35];

  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[27];
    v20 = v0[26];
    v21 = v0[29];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_240A2C6CC();
    v12 = sub_240925464(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v3, v4, "Failed to remove proto account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);

    (*(v7 + 8))(v21, v20);
  }

  else
  {
    v14 = v0[34];
    v13 = v0[35];
    v15 = v0[29];
    v16 = v0[26];
    v17 = v0[27];

    (*(v17 + 8))(v15, v16);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_24098487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v11 = sub_240A2B00C();
  v7[12] = v11;
  v7[13] = *(v11 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v12 = *(a5 - 8);
  v7[17] = v12;
  v13 = swift_task_alloc();
  v7[18] = v13;
  v14 = *(a4 - 8);
  v7[19] = v14;
  v7[20] = swift_task_alloc();
  (*(v14 + 16))();
  (*(v12 + 16))(v13, a3, a5);
  sub_240A2C21C();
  v7[21] = sub_240A2C20C();
  v16 = sub_240A2C1BC();
  v7[22] = v16;
  v7[23] = v15;

  return MEMORY[0x2822009F8](sub_240984AA0, v16, v15);
}

uint64_t sub_240984AA0()
{
  v25 = v0;
  v1 = sub_240A2AB4C();
  v0[24] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = sub_240984D3C;
    v5 = v0[10];
    v6 = v0[8];

    return MEMORY[0x28213FCB8](v2, v6, v5);
  }

  else
  {

    sub_240A2AE9C();
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2CC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    if (v9)
    {
      v13 = v0[7];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v0[5] = v13;
      type metadata accessor for AKUserAgeRange(0);
      v16 = sub_240A2BF9C();
      v18 = sub_240925464(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2408FE000, v7, v8, "No proto account exists for age range: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[9];
    (*(v0[19] + 8))(v0[20], v0[8]);
    (*(v20 + 8))(v19, v21);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_240984D3C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_240984FDC;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_240984E58;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_240984E58()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2CC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Successfully removed existing proto account", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[8]);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_240984FDC()
{
  v27 = v0;
  v1 = v0[26];
  v2 = v0[24];

  sub_240A2AE9C();
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = v0[24];
    v8 = v0[13];
    v24 = v0[12];
    v25 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_240A2C6CC();
    v13 = sub_240925464(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to remove proto account: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);

    (*(v8 + 8))(v25, v24);
  }

  else
  {
    v14 = v0[26];
    v15 = v0[24];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];

    (*(v17 + 8))(v16, v18);
  }

  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[8]);
  (*(v20 + 8))(v19, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_240985268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2409852B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24098534C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_240981088(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_33(uint64_t a1)
{
}

{
}

uint64_t sub_240985424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24098546C()
{
  result = qword_27E50CF20;
  if (!qword_27E50CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EF90, &unk_240A30E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2409854E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24098552C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_240985580()
{
  result = qword_27E50CF38;
  if (!qword_27E50CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF38);
  }

  return result;
}

unint64_t sub_2409855D4()
{
  result = qword_27E50CF40;
  if (!qword_27E50CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF40);
  }

  return result;
}

id sub_240985688(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AISSignInViewModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_240985740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_240A2B00C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_240A2C21C();
  v7[10] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v7[11] = v10;
  v7[12] = v9;

  return MEMORY[0x2822009F8](sub_240985844, v10, v9);
}

uint64_t sub_240985844(uint64_t a1)
{
  v23 = v1;
  sub_240A2AE9C();

  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_240A2BEDC();
    v12 = sub_240925464(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISSignInViewModel: didCompleteWithAuthenticationResults\n%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[13] = v13;
  v14 = v1[3];
  v15 = objc_allocWithZone(sub_240A2AC6C());

  v16 = sub_240A2ABDC();
  v1[14] = v16;
  v17 = *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  v21 = (*(v17 + 24) + **(v17 + 24));
  v19 = swift_task_alloc();
  v1[15] = v19;
  *v19 = v1;
  v19[1] = sub_240985AE4;

  return v21(v16, ObjectType, v17);
}

uint64_t sub_240985AE4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_240985CB0;
  }

  else
  {
    v5 = sub_240985C20;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240985C20()
{

  v2 = *(v0 + 112);
  (*(v0 + 32))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240985CB0()
{
  v1 = *(v0 + 128);

  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2408FE000, v3, v4, "AISSignInViewModel: step continue failed with error: \n%@", v7, 0xCu);
    sub_240915C68(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  else
  {
  }

  v11 = (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v12 = *(v0 + 112);
  (*(v0 + 32))(v11);

  v13 = *(v0 + 8);

  return v13();
}

id sub_240986060()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "AISSignInViewModel: authenticationContext", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider + 24));
  v11 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v11 setPresentingViewController_];
  [v11 setDelegate_];
  v12 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  (*(v12 + 16))(v11, ObjectType, v12);
  return v11;
}

uint64_t sub_240986400()
{
  v0 = [objc_opt_self() tintColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize_];
  v4 = [v2 configurationByApplyingConfiguration_];
  sub_2409194E8(0, &qword_27E50D038, 0x277D755B8);
  sub_2409194E8(0, &unk_27E50D040, 0x277D46220);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_240A2C35C();

  return v7;
}

uint64_t sub_240986694(void *a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = a1;
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v6 debugDescription];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = sub_240925464(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v7, v8, "AISSignInViewModel: willAuthenticateWithContext\n%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24098686C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_240985740(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t SetupView.init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:userAgeRange:contextBuilder:reportHandler:setupController:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v68 = a5;
  v69 = a8;
  v74 = a6;
  v75 = a7;
  v66 = a1;
  v67 = a4;
  v76 = a2;
  v72 = a14;
  v73 = a3;
  v64 = a13;
  v65 = a15;
  v70 = a10;
  v71 = a12;
  v63 = a11;
  v62 = sub_240A2981C();
  v16 = *(v62 - 8);
  v17 = MEMORY[0x28223BE20](v62);
  v61 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v60 - v25;
  LOBYTE(v79) = 0;
  sub_240A2BC4C();
  v27 = *(&v77 + 1);
  *(a9 + 48) = v77;
  *(a9 + 56) = v27;
  v28 = type metadata accessor for SetupView(0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  sub_240919298(v26, v24, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v26, &qword_27E50C700, &unk_240A32F50);
  v30 = a9 + v28[11];
  v79 = 0;
  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v31 = v78;
  *v30 = v77;
  *(v30 + 16) = v31;
  v32 = v28[12];
  *(a9 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v33 = v28[13];
  *(a9 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v34 = v28[14];
  *(a9 + v34) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = a9 + v28[15];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v28[16];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = a9 + v28[17];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v39 = v28[18];
  v38 = v28[19];
  v40 = a9 + v28[22];
  LOBYTE(v79) = 1;
  sub_240A2BC4C();
  v41 = *(&v77 + 1);
  *v40 = v77;
  *(v40 + 8) = v41;
  sub_240A2979C();
  v60[2] = v28[9];
  v42 = *(v16 + 16);
  v60[1] = v20;
  v43 = v62;
  v42(v61, v20, v62);
  sub_240A2BC4C();
  (*(v16 + 8))(v20, v43);
  v44 = v64;
  v45 = v71;
  v46 = v72;
  *a9 = v63;
  *(a9 + 8) = v45;
  *(a9 + 16) = v44;
  *(a9 + 24) = v46;
  v47 = v65;
  v48 = v66;
  *(a9 + v39) = v66;
  v49 = v75;
  *(a9 + v38) = v76;
  *(a9 + 32) = v47;
  v50 = a9 + v28[20];
  v51 = v74;
  v52 = v67;
  *v50 = v73;
  *(v50 + 8) = v52;
  v53 = v69;
  *(v50 + 16) = v68;
  v54 = a9 + v28[21];
  *v54 = v51;
  *(v54 + 8) = v49;
  *(v54 + 16) = v53;
  v55 = objc_allocWithZone(sub_240A29DEC());

  swift_retain_n();

  v56 = v48;
  v57 = v76;

  *(a9 + 40) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v58 = sub_240A297AC();
  sub_240A2A04C();
  v58(&v77, 0);
  sub_240A2BC6C();
}

uint64_t type metadata accessor for SetupView(uint64_t a1)
{
  result = qword_27E50D250;
  if (!qword_27E50D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240986FE0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50D050);
  __swift_project_value_buffer(v0, qword_27E50D050);
  return sub_240A2AE7C();
}

uint64_t sub_24098702C@<X0>(void *a1@<X8>)
{
  v3 = sub_240A2B52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SetupView(0);
  sub_240919298(v1 + *(v10 + 48), v9, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A2B2AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_240987234@<X0>(void *a1@<X8>)
{
  v3 = sub_240A2B52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SetupView(0);
  sub_240919298(v1 + *(v10 + 52), v9, &qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_24098743C()
{
  v0 = sub_240A2A10C();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = sub_240A2981C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297BC();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v21 = sub_240A2A02C();
  v13 = *(v23 + 8);
  v14 = v4;
  v15 = v24;
  v13(v14, v24);
  sub_240A2BC5C();
  v16 = v22;
  sub_240A297BC();
  v12(v9, v5);
  v17 = sub_240A2A03C();
  v13(v16, v15);
  return v21 == 2 || v17 == 2;
}

uint64_t SetupView.shouldAutoDismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView(0) + 80));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v6, v4);
  return v6;
}

void *sub_240987704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SetupView(0) + 80));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  result = MEMORY[0x245CCC9B0](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_240987780(char *a1, uint64_t a2)
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t SetupView.shouldAutoDismiss.setter(char a1)
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t (*SetupView.shouldAutoDismiss.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SetupView(0) + 80));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]();
  return sub_240987928;
}

uint64_t SetupView.$shouldAutoDismiss.getter()
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  sub_240A2BD1C();
  return v1;
}

uint64_t SetupView.isPreEstablishedClient.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView(0) + 84));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v6, v4);
  return v6;
}

void *sub_240987A00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SetupView(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  result = MEMORY[0x245CCC9B0](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_240987A7C(char *a1, uint64_t a2)
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t SetupView.isPreEstablishedClient.setter(char a1)
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t (*SetupView.isPreEstablishedClient.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SetupView(0) + 84));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]();
  return sub_240998AA0;
}

void sub_240987C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_240A2BCFC();

  free(v1);
}

uint64_t SetupView.$isPreEstablishedClient.getter()
{
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  sub_240A2BD1C();
  return v1;
}

uint64_t sub_240987D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_240A2A24C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_240A2C21C();
  v3[11] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_240987E24, v6, v5);
}

uint64_t sub_240987E24()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_240A2A19C();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v3 + 104))(v1, *MEMORY[0x277CED8D0], v2);
  v10 = (*MEMORY[0x277CED838] + MEMORY[0x277CED838]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_240987F48;
  v8 = v0[9];
  v7 = v0[10];

  return v10(v7, v8);
}

uint64_t sub_240987F48()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v2[15] = v0;

  v6 = *(v4 + 8);
  v2[16] = v6;
  v2[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[13];
  v8 = v2[12];
  if (v0)
  {
    v9 = sub_2409883D8;
  }

  else
  {
    v9 = sub_2409880F4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2409880F4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v4 + 16);
  v5(v2, v1, v3);
  if ((*(v4 + 88))(v2, v3) == *MEMORY[0x277CED8D8])
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    (*(v0 + 128))(*(v0 + 80), v7);
    (*(v8 + 96))(v6, v7);
    v10 = sub_240A2A1AC();
    (*(*(v10 - 8) + 32))(v9, v6, v10);
  }

  else
  {
    v20 = *(v0 + 128);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v20(*(v0 + 64), v14);
    v15 = sub_240A2976C();
    sub_24099885C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    v17 = v16;
    sub_240A2C47C();

    v5(v13, v12, v14);
    v18 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v18);

    *v17 = 0xD000000000000023;
    v17[1] = 0x8000000240A3D7A0;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277CED290], v15);
    swift_willThrow();
    v20(v12, v14);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2409883D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240988468()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_240988514();
}

uint64_t sub_240988514()
{
  v1[9] = v0;
  v2 = sub_240A2BE4C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_240A2BE6C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = *(type metadata accessor for SetupView(0) - 8);
  v1[16] = v4;
  v1[17] = *(v4 + 64);
  v1[18] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v1[19] = v5;
  v1[20] = *(v5 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_240A2C21C();
  v1[24] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v1[25] = v7;
  v1[26] = v6;

  return MEMORY[0x2822009F8](sub_240988740, v7, v6);
}

uint64_t sub_240988740()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[28] = v3;
  v4 = sub_240A29ACC();
  *v3 = v0;
  v3[1] = sub_240988814;
  v5 = v0[22];

  return MEMORY[0x2821400E8](v5, &unk_240A34BF8, v2, v4);
}

uint64_t sub_240988814()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_240988958, v3, v2);
}

uint64_t sub_240988958()
{
  v1 = v0[22];
  v2 = sub_24098743C();
  if (sub_240996F78(v1, v2))
  {
    v0[29] = *(v0[9] + 32);
    sub_240A2A1DC();
    sub_24099885C(&qword_27E50D2D8, MEMORY[0x277CED848], MEMORY[0x277CED850]);
    v3 = sub_240A2C1BC();
    v5 = v4;
    v6 = sub_240988B0C;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    if (qword_27E50AF58 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50D050);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C28C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, "Teen Prox Setup User cancelled - not reporting result to avoid proceeding to next Buddy step", v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    v6 = sub_240988E30;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_240988B0C()
{
  v0[30] = sub_240A2A1CC();
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](sub_240988B74, v1, v2);
}

uint64_t sub_240988B74()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v16 = v0[30];
  v17 = v0[14];
  v18 = v0[13];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[11];
  v7 = v0[10];
  sub_2409963A8(v0[9], v5, type metadata accessor for SetupView);
  sub_240919298(v2, v1, &qword_27E50C6E0, &qword_240A32F18);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (v4 + *(v3 + 80) + v8) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_240995610(v5, v10 + v8);
  sub_2409974DC(v1, v10 + v9);
  v0[6] = sub_24099754C;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_12;
  v11 = _Block_copy(v0 + 2);
  sub_240A2BE5C();
  v0[8] = MEMORY[0x277D84F90];
  sub_24099885C(&qword_27E50CF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50, MEMORY[0x277D83970]);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v13, v14, v11);
  _Block_release(v11);

  (*(v15 + 8))(v14, v7);
  (*(v17 + 8))(v13, v18);

  return MEMORY[0x2822009F8](sub_240988E30, 0, 0);
}

uint64_t sub_240988E30(uint64_t a1)
{
  *(v1 + 248) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240988EBC, v3, v2);
}

uint64_t sub_240988EBC()
{

  sub_2409898C0();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_240988F28, v1, v2);
}

uint64_t sub_240988F28()
{
  v1 = *(v0 + 176);

  sub_240919300(v1, &qword_27E50C6E0, &qword_240A32F18);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240988FE8(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24097BAF4;

  return sub_2409890A8(a1);
}

uint64_t sub_2409890A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SetupView(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v4 = sub_240A2AB8C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_240A29C8C();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_240A29C7C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_240A2C21C();
  v2[18] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v2[19] = v8;
  v2[20] = v7;

  return MEMORY[0x2822009F8](sub_2409892CC, v8, v7);
}

uint64_t sub_2409892CC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[9];
  v17 = v0[8];
  v6 = v0[6];
  v16 = v0[7];
  v15 = v0[4];
  v7 = v0[3];
  v8 = *v7;
  sub_240A29C6C();
  v8(v1);
  (*(v3 + 16))(v1, v2, v4);
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  sub_2409963A8(v7, v6, type metadata accessor for SetupView);
  v9 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v10 = swift_allocObject();
  sub_240995610(v6, v10 + v9);
  sub_240A2AB7C();
  sub_240A29BEC();
  (*(v17 + 8))(v5, v16);
  sub_240A29C3C();
  v18 = (*MEMORY[0x277CED840] + MEMORY[0x277CED840]);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_240989598;
  v12 = v0[12];
  v13 = v0[2];

  return v18(v13, v12);
}

uint64_t sub_240989598()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_2409897D0;
  }

  else
  {
    v5 = sub_2409896D4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409896D4()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409897D0()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409898C0()
{
  v1 = sub_240A2B2AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_240A2B00C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-v10];
  v12 = (v0 + *(type metadata accessor for SetupView(0) + 80));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v12) = *(v12 + 16);
  v25 = v13;
  v26 = v14;
  v27 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v24, v15);
  if (v24 == 1)
  {
    sub_240A2AE7C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C28C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Dismissing setup view & invalidating setup controller", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    sub_24098702C(v4);
    sub_240A2B29C();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_240A2AE7C();
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C28C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Asked to dismiss but auto dismiss is disabled", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_240989BB4()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v70 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v59 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D368, &qword_240A34C98);
  v65 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v69 = &v59 - v17;
  v18 = sub_240A2981C();
  v62 = *(v18 - 1);
  v63 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_240A297DC();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF58 != -1)
  {
    swift_once();
  }

  v66 = v7;
  v71 = v2;
  __swift_project_value_buffer(v2, qword_27E50D050);
  v24 = sub_240A2AFFC();
  v25 = sub_240A2C28C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2408FE000, v24, v25, "User selected exit command (e.g., close button), cancelling back out", v26, 2u);
    MEMORY[0x245CCDDB0](v26, -1, -1);
  }

  v27 = *MEMORY[0x277CED270];
  v28 = sub_240A2976C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v23, v27, v28);
  (*(v29 + 56))(v23, 0, 6, v28);
  v30 = type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  sub_240A2BC6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  sub_240A2BC5C();
  v31 = v72;
  if ((*(v72 + 48))(v15, 1, v16) == 1)
  {
    sub_240919300(v15, &qword_27E50C700, &unk_240A32F50);
LABEL_11:
    sub_240A2AE7C();
    v52 = sub_240A2AFFC();
    v53 = sub_240A2C2AC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2408FE000, v52, v53, "onDisappear: No model coordination available, using direct assignment", v54, 2u);
      MEMORY[0x245CCDDB0](v54, -1, -1);
    }

    return (*(v70 + 8))(v5, v71);
  }

  v60 = v5;
  v32 = v69;
  (*(v31 + 32))(v69, v15, v16);
  v33 = (v1 + *(v30 + 44));
  v34 = *(v33 + 2);
  v75 = *v33;
  v76 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
  sub_240A2BC5C();
  v35 = v73;
  if (!v73)
  {
    (*(v31 + 8))(v32, v16);
    v5 = v60;
    goto LABEL_11;
  }

  v59 = v74;
  sub_240A2BC5C();
  v36 = v67;
  v60 = v16;
  sub_240A29CAC();
  (*(v62 + 8))(v20, v63);
  v37 = v66;
  sub_240A2AE7C();
  v39 = v64;
  v38 = v65;
  v40 = *(v65 + 16);
  v41 = v68;
  v40(v64, v36, v68);
  v42 = sub_240A2AFFC();
  v43 = sub_240A2C29C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v75 = v63;
    *v44 = 136315138;
    v40(v61, v39, v41);
    v45 = sub_240A2BF9C();
    v47 = v46;
    v48 = v39;
    v49 = *(v38 + 8);
    v49(v48, v68);
    v50 = sub_240925464(v45, v47, &v75);
    v41 = v68;

    *(v44 + 4) = v50;
    _os_log_impl(&dword_2408FE000, v42, v43, "onDisappear: Sending user cancellation response: %s", v44, 0xCu);
    v51 = v63;
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245CCDDB0](v51, -1, -1);
    MEMORY[0x245CCDDB0](v44, -1, -1);

    (*(v70 + 8))(v66, v71);
  }

  else
  {

    v56 = v39;
    v49 = *(v38 + 8);
    v49(v56, v41);
    (*(v70 + 8))(v37, v71);
  }

  v57 = v67;
  v58 = v59;
  v35(v67);
  sub_24090C1A0(v35, v58);
  v49(v57, v41);
  return (*(v72 + 8))(v69, v60);
}

uint64_t sub_24098A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v57 = a3;
  v61 = a1;
  v5 = sub_240A2981C();
  v60 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v62 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_240A2B00C();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_240A2BE7C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  *v25 = sub_240A2C32C();
  (*(v23 + 104))(v25, *MEMORY[0x277D85200], v22);
  v26 = sub_240A2BE8C();
  result = (*(v23 + 8))(v25, v22);
  if (v26)
  {
    v51 = v5;
    sub_240A2AE7C();
    v28 = v61;
    v29 = *(v62 + 16);
    v29(v18, v61, v13);
    v30 = sub_240A2AFFC();
    v31 = sub_240A2C29C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = a4;
      v34 = v33;
      *&v65 = v33;
      *v32 = 136315138;
      v29(v16, v18, v13);
      v35 = sub_240A2BF9C();
      v49 = v21;
      v36 = v29;
      v38 = v37;
      (*(v62 + 8))(v18, v13);
      v39 = sub_240925464(v35, v38, &v65);
      v29 = v36;

      *(v32 + 4) = v39;
      _os_log_impl(&dword_2408FE000, v30, v31, "SetupView updated with %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v40 = v34;
      a4 = v50;
      MEMORY[0x245CCDDB0](v40, -1, -1);
      v41 = v32;
      v28 = v61;
      MEMORY[0x245CCDDB0](v41, -1, -1);

      (*(v52 + 8))(v49, v53);
    }

    else
    {

      (*(v62 + 8))(v18, v13);
      (*(v52 + 8))(v21, v53);
    }

    v42 = v54;
    v29(v54, v28, v13);
    (*(v62 + 56))(v42, 0, 1, v13);
    v43 = type metadata accessor for SetupView(0);
    sub_240919298(v42, v55, &qword_27E50C700, &unk_240A32F50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
    sub_240A2BC6C();
    sub_240919300(v42, &qword_27E50C700, &unk_240A32F50);
    v44 = (a4 + *(v43 + 44));
    v45 = *(v44 + 2);
    v65 = *v44;
    v66 = v45;
    v46 = swift_allocObject();
    v47 = v57;
    *(v46 + 16) = v56;
    *(v46 + 24) = v47;
    v63 = sub_2409976C4;
    v64 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC6C();
    v48 = v58;
    MEMORY[0x245CCA960](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A2980C();
    (*(v60 + 8))(v48, v51);
    return sub_240A2BC6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SetupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v69 = sub_240A2A10C();
  v78 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SetupView(0);
  v4 = v3 - 8;
  v67 = *(v3 - 8);
  v77 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A297DC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_240A2981C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D068, &qword_240A34920);
  MEMORY[0x28223BE20](v62);
  v14 = (&v60 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D070, &qword_240A34928);
  v16 = *(v15 - 8);
  KeyPath = v15;
  v64 = v16;
  MEMORY[0x28223BE20](v15);
  v61 = &v60 - v17;
  v18 = *(v4 + 44);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v72 = v1;
  v73 = v18;
  v74 = v19;
  sub_240A2BC5C();
  sub_240A297EC();
  v20 = *(v10 + 8);
  v70 = v10 + 8;
  v71 = v20;
  v20(v12, v9);
  SetupView.view(for:)(v8, v14);
  sub_2409987FC(v8, MEMORY[0x277CED338]);
  sub_240A2BC5C();
  v68 = type metadata accessor for SetupView;
  v21 = v75;
  sub_2409963A8(v1, v75, type metadata accessor for SetupView);
  v22 = *(v67 + 80);
  v23 = (v22 + 16) & ~v22;
  v66 = v23;
  v67 = v22;
  v24 = swift_allocObject();
  sub_240995610(v21, v24 + v23);
  v25 = sub_2409956F4();
  v26 = sub_24099885C(&qword_27E50D1C8, MEMORY[0x277CED360], MEMORY[0x277CED368]);
  v27 = v62;
  sub_240A2BAFC();

  v28 = v71;
  v71(v12, v9);
  sub_240919300(v14, &qword_27E50D068, &qword_240A34920);
  v79 = v27;
  v80 = v9;
  v60 = v9;
  v81 = v25;
  v82 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v76;
  v30 = KeyPath;
  v31 = v61;
  sub_240A2BA7C();
  v64[1](v31, v30);
  KeyPath = swift_getKeyPath();
  sub_240A2BC5C();
  v32 = v65;
  sub_240A297BC();
  v28(v12, v9);
  v33 = sub_240A2A03C();
  v34 = *(v78 + 8);
  v78 += 8;
  v64 = v34;
  v35 = v32;
  v36 = v32;
  v37 = v69;
  (v34)(v35, v69);
  v38 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1D0, &qword_240A349D0) + 36));
  v39 = v29;
  *v38 = KeyPath;
  v38[1] = v33;
  KeyPath = swift_getKeyPath();
  sub_240A2BC5C();
  sub_240A297BC();
  v40 = v60;
  v41 = v71;
  v71(v12, v60);
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1D8, &qword_240A349D8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8);
  sub_240A29FAC();
  v43 = v64;
  (v64)(v36, v37);
  *v42 = KeyPath;
  KeyPath = swift_getKeyPath();
  v44 = v72;
  sub_240A2BC5C();
  sub_240A297BC();
  v41(v12, v40);
  v45 = sub_240A2A02C();
  (v43)(v36, v37);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1E0, &qword_240A349E0);
  v47 = v76;
  v48 = (v76 + *(v46 + 36));
  *v48 = KeyPath;
  v48[1] = v45;
  v49 = swift_getKeyPath();
  v50 = *(v44 + 40);
  v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1E8, &qword_240A34A10) + 36));
  *v51 = v49;
  v51[1] = v50;
  v52 = swift_getKeyPath();
  v53 = v50;
  LOBYTE(v50) = sub_24098743C();
  v54 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1F0, &qword_240A34A18) + 36);
  *v54 = v52;
  *(v54 + 8) = v50 & 1;
  v55 = v75;
  sub_2409963A8(v44, v75, v68);
  v56 = v66;
  v57 = swift_allocObject();
  sub_240995610(v55, v57 + v56);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1F8, &qword_240A34A20);
  v59 = (v47 + *(result + 36));
  *v59 = 0;
  v59[1] = 0;
  v59[2] = sub_240996330;
  v59[3] = v57;
  return result;
}

uint64_t SetupView.view(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v230 = a2;
  v225 = a1;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1A0, &qword_240A349B8);
  MEMORY[0x28223BE20](v214);
  v184 = (&v162 - v2);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D150, &qword_240A34990);
  MEMORY[0x28223BE20](v172);
  v163 = (&v162 - v3);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D200, &qword_240A34A28);
  MEMORY[0x28223BE20](v170);
  v168 = &v162 - v4;
  v206 = type metadata accessor for SetupView(0);
  v164 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v165 = v5;
  v166 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  MEMORY[0x28223BE20](v169);
  v167 = &v162 - v6;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D140, &qword_240A34988);
  MEMORY[0x28223BE20](v196);
  v171 = &v162 - v7;
  v224 = sub_240A2976C();
  v8 = *(v224 - 8);
  v9 = MEMORY[0x28223BE20](v224);
  v202 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v215 = &v162 - v11;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D208, &qword_240A34A30);
  MEMORY[0x28223BE20](v208);
  v209 = &v162 - v12;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D210, &qword_240A34A38);
  MEMORY[0x28223BE20](v193);
  v194 = &v162 - v13;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D110, &qword_240A34970);
  MEMORY[0x28223BE20](v207);
  v195 = &v162 - v14;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D100, &qword_240A34968);
  MEMORY[0x28223BE20](v229);
  v211 = &v162 - v15;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D120, &qword_240A34978);
  MEMORY[0x28223BE20](v192);
  v181 = (&v162 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  MEMORY[0x28223BE20](v17 - 8);
  v191 = &v162 - v18;
  v200 = type metadata accessor for SignInView(0);
  MEMORY[0x28223BE20](v200);
  v183 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D220, &qword_240A34A48);
  MEMORY[0x28223BE20](v198);
  v199 = &v162 - v20;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0E0, &qword_240A34960);
  MEMORY[0x28223BE20](v222);
  v201 = (&v162 - v21);
  v189 = sub_240A2A10C();
  v188 = *(v189 - 8);
  v22 = MEMORY[0x28223BE20](v189);
  v180 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v187 = &v162 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x28223BE20](v25 - 8);
  v190 = &v162 - v26;
  v197 = type metadata accessor for AuthenticationView(0);
  MEMORY[0x28223BE20](v197);
  v182 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_240A2975C();
  v212 = *(v213 - 8);
  v28 = MEMORY[0x28223BE20](v213);
  v210 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v223 = &v162 - v30;
  v179 = sub_240A29AFC();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_240A29B5C();
  v174 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v173 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_240A2981C();
  v205 = *(v217 - 8);
  v33 = MEMORY[0x28223BE20](v217);
  v175 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v185 = &v162 - v36;
  MEMORY[0x28223BE20](v35);
  v204 = &v162 - v37;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D228, &qword_240A34A58);
  v38 = MEMORY[0x28223BE20](v216);
  v186 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v203 = &v162 - v40;
  v41 = type metadata accessor for DiscoveryView(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D230, &qword_240A34A60);
  MEMORY[0x28223BE20](v226);
  v228 = &v162 - v44;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D238, &qword_240A34A68);
  MEMORY[0x28223BE20](v218);
  v220 = &v162 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D240, &qword_240A34A70);
  MEMORY[0x28223BE20](v46);
  v48 = (&v162 - v47);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0A0, &qword_240A34940);
  MEMORY[0x28223BE20](v219);
  v50 = &v162 - v49;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D090, &qword_240A34938);
  MEMORY[0x28223BE20](v227);
  v221 = &v162 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0B0, &qword_240A34948);
  MEMORY[0x28223BE20](v52);
  v54 = (&v162 - v53);
  v55 = sub_240A297DC();
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v162 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2409963A8(v225, v57, MEMORY[0x277CED338]);
  v58 = v8;
  v59 = *(v8 + 48);
  v60 = v224;
  v61 = v59(v57, 6);
  if (v61 > 2)
  {
    if (v61 <= 4)
    {
      if (v61 == 3)
      {
        v62 = v206;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
        v63 = v231;
        v64 = v203;
        sub_240A2BC7C();
        swift_getKeyPath();
        sub_240A2BD0C();

        sub_240919300(v64, &qword_27E50D228, &qword_240A34A58);
        v225 = *(v63 + *(v62 + 76));
        v65 = v225;
        v66 = v204;
        sub_240A2BC5C();
        sub_240A297CC();
        v67 = *(v205 + 8);
        v68 = v217;
        v67(v66, v217);
        v69 = v185;
        sub_240A2BC5C();
        v70 = v187;
        sub_240A297BC();
        v67(v69, v68);
        LODWORD(v224) = sub_240A2A07C();
        v71 = *(v188 + 8);
        v72 = v70;
        v73 = v189;
        v71(v72, v189);
        v74 = v175;
        sub_240A2BC5C();
        v75 = v180;
        sub_240A297BC();
        v67(v74, v68);
        v76 = sub_240A29DFC();
        v78 = v77;
        v71(v75, v73);
        v79 = v197;
        v80 = *(v197 + 28);
        v232 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        v81 = v182;
        *&v182[v80] = v234;
        v82 = v79[8];
        v232 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
        sub_240A2BC4C();
        *(v81 + v82) = v234;
        v83 = v79[9];
        v232 = 0;
        sub_240A2BC4C();
        *(v81 + v83) = v234;
        v84 = v81 + v79[12];
        *v84 = swift_getKeyPath();
        v84[8] = 0;
        v85 = v81 + v79[13];
        *v85 = swift_getKeyPath();
        v85[8] = 0;
        v86 = v79[14];
        *&v234 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
        swift_allocObject();
        *(v81 + v86) = sub_240A2AF1C();
        v87 = v190;
        sub_240919298(v190, v81 + v79[5], &qword_27E50D700, &qword_240A34A50);
        v88 = (v81 + v79[6]);
        *v88 = v76;
        v88[1] = v78;
        *v81 = v225;
        LOBYTE(v232) = v224 & 1;
        sub_240A2BC4C();
        v89 = *(&v234 + 1);
        v90 = v81 + v79[10];
        *v90 = v234;
        *(v90 + 1) = v89;
        v91 = v212;
        v92 = v223;
        v93 = v213;
        (*(v212 + 16))(v210, v223, v213);
        sub_240A2BC4C();
        (*(v91 + 8))(v92, v93);
        sub_240919300(v87, &qword_27E50D700, &qword_240A34A50);
        sub_2409963A8(v81, v199, type metadata accessor for AuthenticationView);
        swift_storeEnumTagMultiPayload();
        sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView, &protocol conformance descriptor for AuthenticationView);
        sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView, &unk_240A363B0);
        v94 = v201;
        sub_240A2B6EC();
        sub_240919298(v94, v220, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_24099580C();
        sub_240995A38();
        v95 = v221;
        sub_240A2B6EC();
        sub_240919300(v94, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v95, v228, &qword_27E50D090, &qword_240A34938);
        swift_storeEnumTagMultiPayload();
        sub_240995780();
        sub_240995B24();
        sub_240A2B6EC();
        sub_240919300(v95, &qword_27E50D090, &qword_240A34938);
        return sub_2409987FC(v81, type metadata accessor for AuthenticationView);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
        v133 = v203;
        sub_240A2BC7C();
        swift_getKeyPath();
        sub_240A2BD0C();

        sub_240919300(v133, &qword_27E50D228, &qword_240A34A58);
        v134 = v204;
        sub_240A2BC5C();
        sub_240A297CC();
        v135 = *(v205 + 8);
        v136 = v134;
        v137 = v217;
        v135(v136, v217);
        v138 = v185;
        sub_240A2BC5C();
        v139 = v187;
        sub_240A297BC();
        v135(v138, v137);
        LOBYTE(v135) = sub_240A2A07C();
        (*(v188 + 8))(v139, v189);
        v140 = v186;
        sub_240A2BC7C();
        swift_getKeyPath();
        v141 = v200;
        v142 = v183;
        sub_240A2BD0C();

        sub_240919300(v140, &qword_27E50D228, &qword_240A34A58);
        v143 = v141[5];
        v232 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        *(v142 + v143) = v234;
        v144 = v142 + v141[10];
        *v144 = swift_getKeyPath();
        *(v144 + 8) = 0;
        v145 = v191;
        sub_240919298(v191, v142, &qword_27E50D218, &qword_240A34A40);
        *(v142 + v141[6]) = 0;
        v146 = v212;
        v147 = v223;
        v148 = v213;
        (*(v212 + 16))(v210, v223, v213);
        sub_240A2BC4C();
        LOBYTE(v232) = v135 & 1;
        sub_240A2BC4C();
        (*(v146 + 8))(v147, v148);
        sub_240919300(v145, &qword_27E50D218, &qword_240A34A40);
        v149 = *(&v234 + 1);
        v150 = v142 + v141[8];
        *v150 = v234;
        *(v150 + 8) = v149;
        sub_2409963A8(v142, v199, type metadata accessor for SignInView);
        swift_storeEnumTagMultiPayload();
        sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView, &protocol conformance descriptor for AuthenticationView);
        sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView, &unk_240A363B0);
        v151 = v201;
        sub_240A2B6EC();
        sub_240919298(v151, v220, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_24099580C();
        sub_240995A38();
        v152 = v221;
        sub_240A2B6EC();
        sub_240919300(v151, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v152, v228, &qword_27E50D090, &qword_240A34938);
        swift_storeEnumTagMultiPayload();
        sub_240995780();
        sub_240995B24();
        sub_240A2B6EC();
        sub_240919300(v152, &qword_27E50D090, &qword_240A34938);
        return sub_2409987FC(v142, type metadata accessor for SignInView);
      }
    }

    if (v61 == 5)
    {
      v103 = v181;
      sub_24098F6F0(v181);
      v98 = &qword_27E50D120;
      v99 = &qword_240A34978;
      sub_240919298(v103, v194, &qword_27E50D120, &qword_240A34978);
      swift_storeEnumTagMultiPayload();
      sub_240995C3C();
      sub_240995DAC();
      v104 = v195;
      sub_240A2B6EC();
      sub_240919298(v104, v209, &qword_27E50D110, &qword_240A34970);
      swift_storeEnumTagMultiPayload();
      sub_240995BB0();
      sub_2409961EC();
      v105 = v211;
      sub_240A2B6EC();
      sub_240919300(v104, &qword_27E50D110, &qword_240A34970);
      sub_240919298(v105, v228, &qword_27E50D100, &qword_240A34968);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v105, &qword_27E50D100, &qword_240A34968);
      v102 = v103;
    }

    else
    {
      v153 = v184;
      sub_240991A5C(v184);
      v98 = &qword_27E50D1A0;
      v99 = &qword_240A349B8;
      sub_240919298(v153, v209, &qword_27E50D1A0, &qword_240A349B8);
      swift_storeEnumTagMultiPayload();
      sub_240995BB0();
      sub_2409961EC();
      v154 = v211;
      sub_240A2B6EC();
      sub_240919298(v154, v228, &qword_27E50D100, &qword_240A34968);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v154, &qword_27E50D100, &qword_240A34968);
      v102 = v153;
    }

    return sub_240919300(v102, v98, v99);
  }

  v198 = v52;
  v199 = v46;
  v200 = v48;
  v201 = v41;
  v225 = v50;
  v97 = v202;
  if (v61)
  {
    if (v61 != 1)
    {
      v113 = v206;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
      v114 = v231;
      v115 = v203;
      sub_240A2BC7C();
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v115, &qword_27E50D228, &qword_240A34A58);
      v116 = v204;
      sub_240A2BC5C();
      v117 = v173;
      sub_240A2978C();
      v215 = *(v205 + 8);
      (v215)(v116, v217);
      v118 = v177;
      sub_240A29B0C();
      (*(v174 + 8))(v117, v176);
      LODWORD(v224) = sub_240A29AEC();
      (*(v178 + 8))(v118, v179);
      v214 = *(v114 + *(v113 + 72));
      v119 = v214;
      v120 = v186;
      sub_240A2BC7C();
      swift_getKeyPath();
      v121 = v201;
      sub_240A2BD0C();

      sub_240919300(v120, &qword_27E50D228, &qword_240A34A58);
      sub_240A2BC5C();
      v122 = v223;
      sub_240A297CC();
      (v215)(v116, v217);
      v123 = &v43[v121[5]];
      v232 = 0;
      v233 = 0xE000000000000000;
      sub_240A2BC4C();
      v124 = v235;
      *v123 = v234;
      *(v123 + 2) = v124;
      v43[v121[6]] = v224 & 1;
      *&v43[v121[7]] = v214;
      v125 = v212;
      v126 = v213;
      (*(v212 + 16))(v210, v122, v213);
      sub_240A2BC4C();
      (*(v125 + 8))(v122, v126);
      v127 = v121[10];
      *&v43[v127] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      v128 = v121[11];
      *&v43[v128] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v129 = &v43[v121[12]];
      *v129 = swift_getKeyPath();
      v129[8] = 0;
      v130 = &v43[v121[13]];
      *v130 = swift_getKeyPath();
      v130[8] = 0;
      sub_2409963A8(v43, v200, type metadata accessor for DiscoveryView);
      swift_storeEnumTagMultiPayload();
      sub_2409958C8();
      sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
      v131 = v225;
      sub_240A2B6EC();
      sub_240919298(v131, v220, &qword_27E50D0A0, &qword_240A34940);
      swift_storeEnumTagMultiPayload();
      sub_24099580C();
      sub_240995A38();
      v132 = v221;
      sub_240A2B6EC();
      sub_240919300(v131, &qword_27E50D0A0, &qword_240A34940);
      sub_240919298(v132, v228, &qword_27E50D090, &qword_240A34938);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v132, &qword_27E50D090, &qword_240A34938);
      return sub_2409987FC(v43, type metadata accessor for DiscoveryView);
    }

    sub_24098EC70(v54);
    v98 = &qword_27E50D0B0;
    v99 = &qword_240A34948;
    sub_240919298(v54, v200, &qword_27E50D0B0, &qword_240A34948);
    swift_storeEnumTagMultiPayload();
    sub_2409958C8();
    sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
    v100 = v225;
    sub_240A2B6EC();
    sub_240919298(v100, v220, &qword_27E50D0A0, &qword_240A34940);
    swift_storeEnumTagMultiPayload();
    sub_24099580C();
    sub_240995A38();
    v101 = v221;
    sub_240A2B6EC();
    sub_240919300(v100, &qword_27E50D0A0, &qword_240A34940);
    sub_240919298(v101, v228, &qword_27E50D090, &qword_240A34938);
    swift_storeEnumTagMultiPayload();
    sub_240995780();
    sub_240995B24();
    sub_240A2B6EC();
    sub_240919300(v101, &qword_27E50D090, &qword_240A34938);
    v102 = v54;
    return sub_240919300(v102, v98, v99);
  }

  v106 = v58;
  v107 = *(v58 + 32);
  v108 = v215;
  v109 = v60;
  v107(v215, v57, v60);
  (*(v106 + 16))(v97, v108, v60);
  v110 = (*(v106 + 88))(v97, v60);
  if (v110 == *MEMORY[0x277CED2D8] || v110 == *MEMORY[0x277CED270] || v110 == *MEMORY[0x277CED268])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v155 = v167;
    sub_240A2B21C();
    v156 = v166;
    sub_2409963A8(v231, v166, type metadata accessor for SetupView);
    v157 = (*(v164 + 80) + 16) & ~*(v164 + 80);
    v158 = swift_allocObject();
    sub_240995610(v156, v158 + v157);
    v159 = (v155 + *(v169 + 36));
    *v159 = sub_240996348;
    v159[1] = v158;
    v159[2] = 0;
    v159[3] = 0;
    sub_240919298(v155, v168, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    sub_240995E38();
    v112 = v171;
    sub_240A2B6EC();
    sub_240919300(v155, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v111 = v163;
    sub_24098FEAC(v108, v163);
    sub_240919298(v111, v168, &qword_27E50D150, &qword_240A34990);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    sub_240995E38();
    v112 = v171;
    sub_240A2B6EC();
    sub_240919300(v111, &qword_27E50D150, &qword_240A34990);
    (*(v106 + 8))(v97, v60);
  }

  sub_240919298(v112, v194, &qword_27E50D140, &qword_240A34988);
  swift_storeEnumTagMultiPayload();
  sub_240995C3C();
  sub_240995DAC();
  v160 = v195;
  sub_240A2B6EC();
  sub_240919298(v160, v209, &qword_27E50D110, &qword_240A34970);
  swift_storeEnumTagMultiPayload();
  sub_240995BB0();
  sub_2409961EC();
  v161 = v211;
  sub_240A2B6EC();
  sub_240919300(v160, &qword_27E50D110, &qword_240A34970);
  sub_240919298(v161, v228, &qword_27E50D100, &qword_240A34968);
  swift_storeEnumTagMultiPayload();
  sub_240995780();
  sub_240995B24();
  sub_240A2B6EC();
  sub_240919300(v161, &qword_27E50D100, &qword_240A34968);
  sub_240919300(v112, &qword_27E50D140, &qword_240A34988);
  return (*(v106 + 8))(v215, v109);
}

void sub_24098D898(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v170 = a3;
  v153 = sub_240A2A10C();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v136[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v173 = type metadata accessor for SetupView(0);
  v6 = MEMORY[0x28223BE20](v173);
  v163 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v162 = &v136[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v136[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v172 = &v136[-v14];
  MEMORY[0x28223BE20](v13);
  v154 = &v136[-v15];
  v16 = sub_240A2B00C();
  v158 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v171 = &v136[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v141 = &v136[-v19];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v167 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v143 = &v136[-v20];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v21 = MEMORY[0x28223BE20](v147);
  v146 = &v136[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v155 = &v136[-v23];
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D368, &qword_240A34C98);
  v144 = *(v168 - 8);
  v24 = MEMORY[0x28223BE20](v168);
  v139 = &v136[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v136[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v136[-v29];
  MEMORY[0x28223BE20](v28);
  v169 = &v136[-v30];
  v31 = sub_240A2BE7C();
  v165 = *(v31 - 8);
  v166 = v31;
  MEMORY[0x28223BE20](v31);
  v164 = &v136[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_240A2981C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v150 = &v136[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v136[-v38];
  MEMORY[0x28223BE20](v37);
  v41 = &v136[-v40];
  if (qword_27E50AF58 != -1)
  {
    swift_once();
  }

  v159 = v16;
  v42 = __swift_project_value_buffer(v16, qword_27E50D050);
  v43 = *(v34 + 16);
  v43(v41, a1, v33);
  v145 = a2;
  v43(v39, a2, v33);
  v157 = v42;
  v44 = sub_240A2AFFC();
  v45 = sub_240A2C29C();
  v46 = os_log_type_enabled(v44, v45);
  v160 = v33;
  v161 = v12;
  v149 = v34;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&v175 = v138;
    *v47 = 136315394;
    sub_24099885C(&qword_27E50D378, MEMORY[0x277CED360], MEMORY[0x277CED370]);
    v48 = sub_240A2C62C();
    v137 = v45;
    v50 = v49;
    v51 = *(v34 + 8);
    v51(v41, v33);
    v52 = sub_240925464(v48, v50, &v175);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = sub_240A2C62C();
    v55 = v54;
    v148 = v51;
    v51(v39, v33);
    v56 = sub_240925464(v53, v55, &v175);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_2408FE000, v44, v137, "Setup: onChange, \n==== oldValue ===\n %s \n\n==== newValue ===\n %s", v47, 0x16u);
    v57 = v138;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v57, -1, -1);
    MEMORY[0x245CCDDB0](v47, -1, -1);
  }

  else
  {

    v58 = *(v34 + 8);
    v58(v39, v33);
    v148 = v58;
    v58(v41, v33);
  }

  v59 = v171;
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v60 = sub_240A2C32C();
  v62 = v164;
  v61 = v165;
  *v164 = v60;
  v63 = v166;
  (*(v61 + 104))(v62, *MEMORY[0x277D85200], v166);
  v64 = sub_240A2BE8C();
  (*(v61 + 8))(v62, v63);
  v65 = v172;
  v66 = v173;
  v67 = v169;
  v68 = v170;
  v69 = v167;
  v70 = v168;
  if ((v64 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  v72 = v155;
  sub_240A2BC5C();
  v73 = v72;
  v74 = v72;
  v75 = v156;
  if ((v69[6])(v74, 1, v156))
  {
    sub_240919300(v73, &qword_27E50C700, &unk_240A32F50);
  }

  else
  {
    v166 = v71;
    v96 = v70;
    v97 = v143;
    v69[2](v143, v73, v75);
    sub_240919300(v73, &qword_27E50C700, &unk_240A32F50);
    v98 = v142;
    sub_240A29CAC();
    v99 = v97;
    v100 = v96;
    (v69[1])(v99, v75);
    v101 = v144;
    (*(v144 + 32))(v67, v98, v96);
    v102 = v68 + *(v66 + 44);
    v103 = *(v102 + 2);
    v175 = *v102;
    v176 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC5C();
    v104 = v174;
    if (v174)
    {
      v105 = v67;
      v106 = *(&v174 + 1);
      v107 = v141;
      sub_240A2AE7C();
      v108 = v100;
      v109 = *(v101 + 16);
      v110 = v140;
      v109(v140, v105, v108);
      v111 = sub_240A2AFFC();
      v112 = sub_240A2C29C();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v172 = v106;
        v114 = v101;
        v115 = v110;
        v116 = v108;
        v117 = v113;
        v171 = swift_slowAlloc();
        *&v175 = v171;
        *v117 = 136315138;
        v109(v139, v115, v116);
        v167 = sub_240A2BF9C();
        v119 = v118;
        v120 = *(v114 + 8);
        v120(v115, v116);
        v106 = v172;
        v121 = sub_240925464(v167, v119, &v175);

        *(v117 + 4) = v121;
        _os_log_impl(&dword_2408FE000, v111, v112, "[onChange] Sending response: %s", v117, 0xCu);
        v122 = v171;
        __swift_destroy_boxed_opaque_existential_0(v171);
        MEMORY[0x245CCDDB0](v122, -1, -1);
        MEMORY[0x245CCDDB0](v117, -1, -1);

        (*(v158 + 8))(v141, v159);
      }

      else
      {

        v120 = *(v101 + 8);
        v120(v110, v108);
        (*(v158 + 8))(v107, v159);
        v116 = v108;
      }

      v94 = v161;
      v123 = v169;
      v104(v169);
      sub_24090C1A0(v104, v106);
      v120(v123, v116);
      v93 = v162;
      v95 = v163;
      v68 = v170;
      goto LABEL_19;
    }

    (*(v101 + 8))(v67, v96);
    v65 = v172;
  }

  sub_240A2AE7C();
  v76 = v154;
  sub_2409963A8(v68, v154, type metadata accessor for SetupView);
  sub_2409963A8(v68, v65, type metadata accessor for SetupView);
  v77 = sub_240A2AFFC();
  v78 = sub_240A2C2AC();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v177 = v169;
    *v79 = 136315394;
    v80 = v173;
    sub_240A2BC5C();
    v81 = sub_240A2BF9C();
    v83 = v82;
    sub_2409987FC(v76, type metadata accessor for SetupView);
    v84 = sub_240925464(v81, v83, &v177);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    v85 = v172;
    v86 = v172 + *(v80 + 44);
    v87 = *(v86 + 2);
    v175 = *v86;
    v176 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC5C();
    v175 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
    v88 = sub_240A2BF9C();
    v90 = v89;
    sub_2409987FC(v85, type metadata accessor for SetupView);
    v91 = sub_240925464(v88, v90, &v177);

    *(v79 + 14) = v91;
    _os_log_impl(&dword_2408FE000, v77, v78, "[onChange] Unable to send response, no modelSender available: %s %s", v79, 0x16u);
    v92 = v169;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v92, -1, -1);
    MEMORY[0x245CCDDB0](v79, -1, -1);

    (*(v158 + 8))(v171, v159);
  }

  else
  {

    sub_2409987FC(v76, type metadata accessor for SetupView);
    (*(v158 + 8))(v59, v159);
    sub_2409987FC(v65, type metadata accessor for SetupView);
  }

  v94 = v161;
  v93 = v162;
  v95 = v163;
LABEL_19:
  sub_2409963A8(v68, v94, type metadata accessor for SetupView);
  sub_2409963A8(v68, v93, type metadata accessor for SetupView);
  sub_2409963A8(v68, v95, type metadata accessor for SetupView);
  v124 = sub_240A2AFFC();
  v125 = sub_240A2C29C();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 67109632;
    LODWORD(v171) = v125;
    v127 = sub_24098743C();
    v170 = type metadata accessor for SetupView;
    sub_2409987FC(v94, type metadata accessor for SetupView);
    *(v126 + 4) = v127;
    *(v126 + 8) = 1024;
    v172 = v124;
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    v128 = v150;
    sub_240A2BC5C();
    v129 = v151;
    sub_240A297BC();
    v168 = v149 + 8;
    v130 = v148;
    v148(v128, v160);
    v131 = sub_240A2A02C();
    v167 = *(v152 + 8);
    v132 = v153;
    (v167)(v129, v153);
    v133 = v93;
    v134 = v170;
    sub_2409987FC(v133, v170);
    *(v126 + 10) = v131 == 2;
    *(v126 + 14) = 1024;
    sub_240A2BC5C();
    sub_240A297BC();
    v124 = v172;
    v130(v128, v160);
    v135 = sub_240A2A03C();
    (v167)(v129, v132);
    sub_2409987FC(v95, v134);
    *(v126 + 16) = v135 == 2;
    _os_log_impl(&dword_2408FE000, v124, v171, "Is Teen Setup: %{BOOL}d\n peerIsTeen: %{BOOL}d\n IamTeen: %{BOOL}d", v126, 0x14u);
    MEMORY[0x245CCDDB0](v126, -1, -1);
  }

  else
  {
    sub_2409987FC(v95, type metadata accessor for SetupView);
    sub_2409987FC(v93, type metadata accessor for SetupView);
    sub_2409987FC(v94, type metadata accessor for SetupView);
  }
}

uint64_t keypath_get_9Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_240A2B53C();
  *a3 = v5;
  return result;
}

uint64_t sub_24098EB28@<X0>(void *a1@<X8>)
{
  sub_2409987A8();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_24098EB78(id *a1)
{
  v1 = *a1;
  sub_2409987A8();
  v2 = v1;
  return sub_240A2B54C();
}

uint64_t sub_24098EBD4@<X0>(_BYTE *a1@<X8>)
{
  sub_2409988A4();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_24098EC70@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2C8, &qword_240A34BC8);
  MEMORY[0x28223BE20](v70);
  v71 = &v60 - v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v69);
  v60 = &v60 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2D0, &qword_240A34BD0);
  MEMORY[0x28223BE20](v66);
  v5 = &v60 - v4;
  v6 = type metadata accessor for SetupView(0);
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = v7;
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0C0, &qword_240A34950);
  MEMORY[0x28223BE20](v68);
  v67 = &v60 - v8;
  v9 = sub_240A2A10C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_240A2981C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 36);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v62 = v1;
  v75 = v18;
  v76 = v17;
  sub_240A2BC5C();
  sub_240A297BC();
  v19 = *(v14 + 8);
  v61 = v13;
  v74 = v19;
  v19(v16, v13);
  sub_240A29DFC();
  v21 = v20;
  v22 = v9;
  v73 = *(v10 + 8);
  v73(v12, v9);
  if (v21)
  {
    v23 = sub_240A2BF1C();
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  [v24 containsString:@"Mac"];

  v25 = v62;
  v26 = v62 + *(v6 + 84);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  v79 = v27;
  v80 = v28;
  v81 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v78, v29);
  v30 = v61;
  if (v78)
  {
    goto LABEL_9;
  }

  sub_240A2BC5C();
  sub_240A297BC();
  v74(v16, v30);
  sub_240A29DFC();
  v32 = v31;
  v73(v12, v22);
  if (v32)
  {
    v33 = sub_240A2BF1C();
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v35 = [v34 containsString:@"Mac"];

  if (v35)
  {
LABEL_9:
    sub_240A2BC5C();
    sub_240A297BC();
    v74(v16, v30);
    v36 = sub_240A29DFC();
    v38 = v37;
    v73(v12, v22);
    started = type metadata accessor for SetupStartViewController();
    v40 = objc_allocWithZone(started);
    v41 = &v40[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
    *v41 = v36;
    v41[1] = v38;
    v77.receiver = v40;
    v77.super_class = started;
    v42 = objc_msgSendSuper2(&v77, sel_initWithContentView_, 0);
    v78 = 1;
    sub_240A2BD3C();
    v43 = v79;
    v44 = v80;
    v45 = v81;
    sub_240A2C06C();
    v46 = v42;
    v47 = sub_240A2BF1C();

    [v46 showActivityIndicatorWithStatus_];

    LOBYTE(v47) = sub_240A2B88C();
    v48 = sub_240A2B3AC();
    v49 = v65;
    sub_2409963A8(v25, v65, type metadata accessor for SetupView);
    v50 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v51 = swift_allocObject();
    sub_240995610(v49, v51 + v50);
    v52 = MEMORY[0x277D84F90];
    *v5 = v46;
    *(v5 + 1) = v52;
    *(v5 + 2) = v43;
    *(v5 + 3) = v44;
    v5[32] = v45;
    *(v5 + 5) = v48;
    v5[48] = v47;
    *(v5 + 7) = sub_240996D34;
    *(v5 + 8) = v51;
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0D0, &qword_240A34958);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    v53 = v67;
    sub_240A2B6EC();
  }

  else
  {
    v54 = v60;
    sub_240A2B22C();
    v55 = v65;
    sub_2409963A8(v25, v65, type metadata accessor for SetupView);
    v56 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v57 = swift_allocObject();
    sub_240995610(v55, v57 + v56);
    v58 = (v54 + *(v69 + 36));
    *v58 = sub_240996D54;
    v58[1] = v57;
    v58[2] = 0;
    v58[3] = 0;
    sub_240919298(v54, v5, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0D0, &qword_240A34958);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    v53 = v67;
    sub_240A2B6EC();
    sub_240919300(v54, &qword_27E50CA50, &unk_240A33750);
  }

  sub_240919298(v53, v71, &qword_27E50D0C0, &qword_240A34950);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
  sub_240995980();
  sub_240A2B6EC();
  return sub_240919300(v53, &qword_27E50D0C0, &qword_240A34950);
}

uint64_t sub_24098F584(uint64_t a1)
{
  v2 = sub_240A297DC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2409963A8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277CED338]);
  return sub_240A297FC();
}

uint64_t sub_24098F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void *sub_24098F6F0@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for SetupView(0);
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = sub_240A29DBC();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F8, &qword_240A34C20);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D130, &qword_240A34980);
  MEMORY[0x28223BE20](v10);
  v12 = (v38 - v11);
  v13 = v1;
  if (sub_24098743C())
  {
    sub_24099235C(v12);
    sub_240919298(v12, v9, &qword_27E50D130, &qword_240A34980);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    sub_240A2B6EC();
    return sub_240919300(v12, &qword_27E50D130, &qword_240A34980);
  }

  else
  {
    v41 = v9;
    v43 = v7;
    v44 = v10;
    sub_240A2C06C();
    v38[0] = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240987234(v6);
    sub_240A2C05C();
    (*(v4 + 8))(v6, v45);
    sub_240A2C06C();
    v38[1] = v3;

    v54 = 1;
    sub_240A2BD3C();
    v45 = aBlock;
    v42 = v49;
    v40 = v50;
    v54 = 1;
    sub_240A2BD3C();
    v15 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v15 setDismissalType_];
    v16 = sub_240A2BF1C();

    [v15 setTitle_];

    v17 = sub_240A2BF1C();

    [v15 setSubtitle_];

    sub_240A2C06C();
    v39 = type metadata accessor for SetupView;
    v18 = v38[0];
    sub_2409963A8(v1, v38[0], type metadata accessor for SetupView);
    v19 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v20 = swift_allocObject();
    v21 = v18;
    sub_240995610(v18, v20 + v19);
    v22 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v23 = swift_allocObject();
    v23[2] = sub_240998AA4;
    v23[3] = v20;
    v23[4] = v22;
    v24 = v15;

    v25 = v24;
    v26 = sub_240A2BF1C();

    v52 = sub_2409977DC;
    v53 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_2409DFF20;
    v51 = &block_descriptor_101;
    v27 = _Block_copy(&aBlock);
    v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];

    _Block_release(v27);

    v29 = [v25 addAction_];

    sub_2409963A8(v13, v21, v39);
    v30 = swift_allocObject();
    sub_240995610(v21, v30 + v19);
    LOBYTE(aBlock) = v40;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_2409977E8;
    *(v31 + 24) = v30;

    v32 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_240937AA4(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    v35 = v41;
    if (v34 >= v33 >> 1)
    {
      v32 = sub_240937AA4((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v36 = &v32[2 * v34];
    v36[4] = sub_240997818;
    v36[5] = v31;
    LOBYTE(v36) = aBlock;
    *v35 = v25;
    *(v35 + 1) = v32;
    v37 = v42;
    *(v35 + 2) = v45;
    *(v35 + 3) = v37;
    v35[32] = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    return sub_240A2B6EC();
  }
}

uint64_t sub_24098FEAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v135 = a1;
  v139 = a2;
  v119 = sub_240A2A10C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v3 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_240A2981C();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for SetupView(0);
  v130 = *(v128 - 1);
  MEMORY[0x28223BE20](v128);
  v140 = v6;
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D308, &qword_240A34C40);
  MEMORY[0x28223BE20](v136);
  v138 = (&v112 - v8);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D310, &qword_240A34C48);
  MEMORY[0x28223BE20](v132);
  v133 = (&v112 - v9);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D160, &qword_240A34998);
  MEMORY[0x28223BE20](v137);
  v134 = &v112 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D318, &qword_240A34C50);
  v121 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v112 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D320, &qword_240A34C58);
  MEMORY[0x28223BE20](v122);
  v124 = &v112 - v12;
  v13 = sub_240A29DBC();
  v127 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D328, &qword_240A34C60);
  v115 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v114 = &v112 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D170, &qword_240A349A0);
  MEMORY[0x28223BE20](v131);
  v126 = &v112 - v17;
  v18 = sub_240A2A21C();
  v129 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_240A2976C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v135, v21);
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == *MEMORY[0x277CED2B0])
  {
    (*(v22 + 8))(v24, v21);
    v26 = _s14AppleIDSetupUI22ProxCardViewControllerC037newAuthenticationFailedMissingAccountefG0ACyFZ_0();
    LOBYTE(v151) = 1;
    sub_240A2BD3C();
    v128 = *(&aBlock + 1);
    v129 = aBlock;
    LODWORD(v135) = v143;
    sub_240A2C06C();
    v127 = type metadata accessor for SetupView;
    v27 = v7;
    sub_2409963A8(v141, v7, type metadata accessor for SetupView);
    v28 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v29 = swift_allocObject();
    sub_240995610(v7, v29 + v28);
    v30 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v31 = swift_allocObject();
    v31[2] = sub_2409981A4;
    v31[3] = v29;
    v31[4] = v30;
    v32 = v26;

    v33 = sub_240A2BF1C();

    v144 = sub_240998A78;
    v145 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v130 = &v143;
    *&v143 = sub_2409DFF20;
    *(&v143 + 1) = &block_descriptor_158;
    v34 = _Block_copy(&aBlock);
    v35 = objc_opt_self();
    v36 = [v35 actionWithTitle:v33 style:0 handler:v34];

    _Block_release(v34);

    v37 = [v32 addAction_];

    sub_2409963A8(v141, v27, v127);
    v38 = swift_allocObject();
    sub_240995610(v27, v38 + v28);
    v39 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v40 = swift_allocObject();
    v40[2] = sub_240998224;
    v40[3] = v38;
    v40[4] = v39;
    v41 = v32;

    v42 = sub_240A2BF1C();
    v144 = sub_240998A78;
    v145 = v40;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v143 = sub_2409DFF20;
    *(&v143 + 1) = &block_descriptor_169;
    v43 = _Block_copy(&aBlock);
    v44 = [v35 actionWithTitle:v42 style:0 handler:v43];

    _Block_release(v43);

    [v41 setDismissButtonAction_];

    v45 = MEMORY[0x277D84F90];
    v46 = v133;
    *v133 = v41;
    v46[1] = v45;
    v47 = v128;
    v46[2] = v129;
    v46[3] = v47;
    *(v46 + 32) = v135;
    swift_storeEnumTagMultiPayload();

    v48 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240995F7C();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    v49 = v134;
    sub_240A2B6EC();
    sub_240919298(v49, v138, &qword_27E50D160, &qword_240A34998);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
    sub_240995EC4();
    sub_24099613C();
    sub_240A2B6EC();

    return sub_240919300(v49, &qword_27E50D160, &qword_240A34998);
  }

  v135 = v18;
  v113 = v7;
  v51 = v141;
  if (v25 == *MEMORY[0x277CED278])
  {
    (*(v22 + 96))(v24, v21);
    (v129)[4](v20, v24, v135);
    sub_240A2A1FC();
    v112 = v20;
    if (v52)
    {
      sub_240A2A20C();
      if (v53)
      {
        v140 = sub_240A2BB7C();
        v150 = v140;
        sub_240987234(v15);
        sub_240A2C05C();
        (*(v127 + 1))(v15, v13);
        v54 = sub_240A2C06C();
        v56 = v55;
        v130 = v55;

        *&v151 = v54;
        *(&v151 + 1) = v56;
        v57 = v51 + *(v128 + 22);
        v58 = *v57;
        v59 = *(v57 + 8);
        v148 = v58;
        v149 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
        v60 = sub_240A2BC7C();
        v128 = &v112;
        v121 = aBlock;
        LODWORD(v127) = v143;
        v61 = MEMORY[0x28223BE20](v60);
        MEMORY[0x28223BE20](v61);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D178, &qword_240A349A8);
        v62 = sub_24091C4F8();
        v111 = sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8, MEMORY[0x277CE14C0]);
        v63 = v114;
        sub_240A2BA9C();

        v64 = v115;
        v65 = v123;
        (*(v115 + 16))(v124, v63, v123);
        swift_storeEnumTagMultiPayload();
        *&aBlock = MEMORY[0x277CE0F78];
        *(&aBlock + 1) = MEMORY[0x277D837D0];
        *&v143 = v141;
        *(&v143 + 1) = MEMORY[0x277CE0BD8];
        v144 = MEMORY[0x277CE0F70];
        v145 = v62;
        v146 = v111;
        v147 = MEMORY[0x277CE0BC8];
        swift_getOpaqueTypeConformance2();
        v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
        v67 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
        *&aBlock = MEMORY[0x277CE0F78];
        *(&aBlock + 1) = MEMORY[0x277D837D0];
        *&v143 = v66;
        *(&v143 + 1) = MEMORY[0x277CE0F70];
        v144 = v62;
        v145 = v67;
        swift_getOpaqueTypeConformance2();
        v68 = v126;
        sub_240A2B6EC();
        (*(v64 + 8))(v63, v65);
LABEL_13:
        sub_240919298(v68, v133, &qword_27E50D170, &qword_240A349A0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
        sub_240995F7C();
        sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
        v110 = v134;
        sub_240A2B6EC();
        sub_240919298(v110, v138, &qword_27E50D160, &qword_240A34998);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
        sub_240995EC4();
        sub_24099613C();
        sub_240A2B6EC();
        sub_240919300(v110, &qword_27E50D160, &qword_240A34998);
        sub_240919300(v68, &qword_27E50D170, &qword_240A349A0);
        return (v129[1])(v112, v135);
      }
    }

    v140 = sub_240A2BB7C();
    v150 = v140;
    sub_240987234(v15);
    sub_240A2C05C();
    (*(v127 + 1))(v15, v13);
    v93 = sub_240A2C06C();
    v95 = v94;

    *&v151 = v93;
    *(&v151 + 1) = v95;
    v96 = v51 + *(v128 + 22);
    v97 = *v96;
    v98 = *(v96 + 8);
    v148 = v97;
    v149 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
    v99 = sub_240A2BC7C();
    MEMORY[0x28223BE20](v99);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
    v100 = sub_24091C4F8();
    v130 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
    v101 = v120;
    v102 = MEMORY[0x277CE0F78];
    sub_240A2BAAC();

    v103 = v121;
    v104 = v125;
    (*(v121 + 16))(v124, v101, v125);
    swift_storeEnumTagMultiPayload();
    v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D178, &qword_240A349A8);
    v106 = sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8, MEMORY[0x277CE14C0]);
    v107 = v102;
    *&aBlock = v102;
    v108 = MEMORY[0x277D837D0];
    *(&aBlock + 1) = MEMORY[0x277D837D0];
    *&v143 = v105;
    *(&v143 + 1) = MEMORY[0x277CE0BD8];
    v109 = MEMORY[0x277CE0F70];
    v144 = MEMORY[0x277CE0F70];
    v145 = v100;
    v146 = v106;
    v147 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    *&aBlock = v107;
    *(&aBlock + 1) = v108;
    *&v143 = v141;
    *(&v143 + 1) = v109;
    v144 = v100;
    v145 = v130;
    swift_getOpaqueTypeConformance2();
    v68 = v126;
    sub_240A2B6EC();
    (*(v103 + 8))(v101, v104);
    goto LABEL_13;
  }

  if (sub_24098743C())
  {
    sub_240994AF8(&aBlock);
    v151 = aBlock;
    v152 = v143;
    v153 = v144;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A297BC();
    (*(v116 + 8))(v5, v117);
    sub_240A29FAC();
    (*(v118 + 8))(v3, v119);
    v69 = _s14AppleIDSetupUI22ProxCardViewControllerC014newSetupFailedefG011deviceClassAC0aB009AISDeviceL0O_tFZ_0();
    (*(v127 + 1))(v15, v13);
    LOBYTE(v151) = 1;
    sub_240A2BD3C();
    v134 = *(&aBlock + 1);
    v135 = aBlock;
    LODWORD(v133) = v143;
    v129 = sub_240A2C06C();
    v132 = type metadata accessor for SetupView;
    v70 = v113;
    sub_2409963A8(v51, v113, type metadata accessor for SetupView);
    v131 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v71 = v131;
    v72 = swift_allocObject();
    sub_240995610(v70, v72 + v71);
    v73 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v74 = swift_allocObject();
    v74[2] = sub_240998AA4;
    v74[3] = v72;
    v74[4] = v73;
    v75 = v69;

    v76 = sub_240A2BF1C();

    v144 = sub_2409977DC;
    v145 = v74;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v130 = &v143;
    *&v143 = sub_2409DFF20;
    *(&v143 + 1) = &block_descriptor_137;
    v77 = _Block_copy(&aBlock);
    v129 = objc_opt_self();
    v78 = [v129 actionWithTitle:v76 style:0 handler:v77];

    _Block_release(v77);

    v79 = [v75 addAction_];

    v80 = v113;
    sub_2409963A8(v141, v113, v132);
    v81 = v131;
    v82 = swift_allocObject();
    sub_240995610(v80, v82 + v81);
    v83 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v84 = swift_allocObject();
    v84[2] = sub_2409980E8;
    v84[3] = v82;
    v84[4] = v83;
    v85 = v75;

    v86 = sub_240A2BF1C();
    v144 = sub_2409977DC;
    v145 = v84;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v143 = sub_2409DFF20;
    *(&v143 + 1) = &block_descriptor_147;
    v87 = _Block_copy(&aBlock);
    v88 = [v129 actionWithTitle:v86 style:0 handler:v87];

    _Block_release(v87);

    [v85 setDismissButtonAction_];

    *&v151 = v85;
    *(&v151 + 1) = MEMORY[0x277D84F90];
    *&v152 = v135;
    *(&v152 + 1) = v134;
    LOBYTE(v153) = v133;
    HIBYTE(v153) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
  sub_240A2B6EC();
  v89 = v143;
  v90 = v144;
  v91 = BYTE1(v144);
  v92 = v138;
  *v138 = aBlock;
  v92[1] = v89;
  *(v92 + 32) = v90;
  *(v92 + 33) = v91;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
  sub_240995EC4();
  sub_24099613C();
  sub_240A2B6EC();
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_240991A5C@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D340, &qword_240A34C78);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - v6;
  v8 = type metadata accessor for SetupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1B0, &qword_240A349C0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  if (sub_24098743C())
  {
    v24[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D348, &qword_240A34C80);
    v24[1] = a1;
    sub_24091CE28(&qword_27E50D350, &qword_27E50D348, &qword_240A34C80, MEMORY[0x277CE1198]);
    sub_240A2B6FC();
    sub_2409963A8(v1, v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    sub_240995610(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = &v13[*(v11 + 36)];
    *v16 = sub_24099872C;
    v16[1] = v15;
    v16[2] = 0;
    v16[3] = 0;
    v17 = &qword_27E50D1B0;
    v18 = &qword_240A349C0;
    sub_240919298(v13, v7, &qword_27E50D1B0, &qword_240A349C0);
    swift_storeEnumTagMultiPayload();
    sub_240996278();
    sub_240972938();
    sub_240A2B6EC();
    v19 = v13;
  }

  else
  {
    sub_240A2B22C();
    sub_2409963A8(v1, v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v21 = swift_allocObject();
    sub_240995610(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = &v5[*(v3 + 36)];
    *v22 = sub_240998A74;
    *(v22 + 1) = v21;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    v17 = &qword_27E50CA50;
    v18 = &unk_240A33750;
    sub_240919298(v5, v7, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    sub_240996278();
    sub_240972938();
    sub_240A2B6EC();
    v19 = v5;
  }

  return sub_240919300(v19, v17, v18);
}

uint64_t sub_240991EA4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_240A2B58C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D358, &qword_240A34C88);
  return sub_240991EF4((a2 + *(v3 + 44)));
}

uint64_t sub_240991EF4@<X0>(_BYTE *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v29 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-v5];
  sub_240A2B22C();
  v31 = sub_240A2C01C();
  v32 = v7;
  sub_24091C4F8();
  v8 = sub_240A2B9CC();
  v10 = v9;
  v12 = v11;
  v13 = sub_240A2B99C();
  v15 = v14;
  v28 = v16;
  v18 = v17;
  sub_240920658(v8, v10, v12 & 1);

  v19 = *(v2 + 16);
  v20 = v29;
  v19(v29, v6, v1);
  v21 = v30;
  v19(v30, v20, v1);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D360, &qword_240A34C90) + 48)];
  *v22 = v13;
  *(v22 + 1) = v15;
  v23 = v28;
  v24 = v28 & 1;
  v22[16] = v28 & 1;
  *(v22 + 3) = v18;
  sub_24097F784(v13, v15, v23 & 1);
  v25 = *(v2 + 8);

  v25(v6, v1);
  sub_240920658(v13, v15, v24);

  return (v25)(v20, v1);
}

void *sub_240992130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = type metadata accessor for SetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v20 = v10;
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  result = sub_240A2BC5C();
  if ((v19 & 1) == 0)
  {
    v20 = v10;
    v21 = v11;
    v19 = 1;
    sub_240A2BC6C();
    v13 = sub_240A2C24C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_2409963A8(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    sub_240A2C21C();
    v14 = sub_240A2C20C();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_240995610(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_2409230D4(0, 0, v9, v18, v16);
  }

  return result;
}

void *sub_24099235C@<X0>(void *a1@<X8>)
{
  v61 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D300, &qword_240A34C28);
  MEMORY[0x28223BE20](v58);
  v60 = (&v51 - v2);
  v3 = type metadata accessor for SetupView(0);
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = v4;
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v59);
  v54 = &v51 - v5;
  v6 = sub_240A2A10C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2981C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v16 = v1;
  sub_240A2BC5C();
  sub_240A297BC();
  v17 = *(v11 + 8);
  v53 = v10;
  v18 = v10;
  v19 = v17;
  v17(v15, v18);
  v20 = sub_240A2A07C();
  (*(v7 + 8))(v9, v6);
  if (v20)
  {
    v21 = v54;
    sub_240A2B22C();
    v22 = v57;
    sub_2409963A8(v16, v57, type metadata accessor for SetupView);
    v23 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v24 = swift_allocObject();
    sub_240995610(v22, v24 + v23);
    v25 = v60;
    v26 = (v21 + *(v59 + 36));
    *v26 = sub_240997B9C;
    v26[1] = v24;
    v26[2] = 0;
    v26[3] = 0;
    sub_240919298(v21, v25, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    sub_240A2B6EC();
    return sub_240919300(v21, &qword_27E50CA50, &unk_240A33750);
  }

  else
  {
    v51 = sub_240A2C01C();
    v28 = v16;
    v29 = v52;
    sub_240A2BC5C();
    sub_240A2C01C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_240A305D0;
    v31 = sub_240997820();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_240913AEC();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_240A2BF6C();

    v19(v29, v53);
    v68 = 1;
    sub_240A2BD3C();
    v34 = aBlock;
    v54 = v63;
    LODWORD(v53) = v64;
    v68 = 1;
    sub_240A2BD3C();
    v35 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v35 setDismissalType_];
    v36 = sub_240A2BF1C();

    [v35 setTitle_];

    v37 = sub_240A2BF1C();

    [v35 setSubtitle_];

    sub_240A2C06C();
    v38 = v57;
    sub_2409963A8(v28, v57, type metadata accessor for SetupView);
    v39 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v40 = swift_allocObject();
    sub_240995610(v38, v40 + v39);
    v41 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v42 = swift_allocObject();
    v42[2] = sub_240997B24;
    v42[3] = v40;
    v42[4] = v41;
    v43 = v35;

    v44 = sub_240A2BF1C();

    v66 = sub_240998A78;
    v67 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_2409DFF20;
    v65 = &block_descriptor_118;
    v45 = _Block_copy(&aBlock);
    v46 = [objc_opt_self() actionWithTitle:v44 style:0 handler:v45];

    _Block_release(v45);

    v47 = [v43 addAction_];

    v48 = MEMORY[0x277D84F90];
    v49 = v60;
    *v60 = v43;
    v49[1] = v48;
    v50 = v54;
    v49[2] = v34;
    v49[3] = v50;
    *(v49 + 32) = v53;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    return sub_240A2B6EC();
  }
}

void sub_240992BFC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor_];

  v4 = [objc_opt_self() systemFontOfSize_];
  v5 = [objc_opt_self() configurationWithFont_];

  v6 = v5;
  v7 = sub_240A2BF1C();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  [v2 setImage_];
  v9 = v2;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setContentMode_];
  v10 = [a1 contentView];
  [v10 addSubview_];

  v11 = [a1 contentView];
  v12 = [v11 mainContentGuide];

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_240A33530;
  v15 = [v9 centerXAnchor];
  v16 = [v12 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [v9 centerYAnchor];
  v19 = [v12 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v14 + 40) = v20;
  v21 = [v9 topAnchor];
  v22 = [v12 topAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 48) = v23;
  v24 = [v9 bottomAnchor];

  v25 = [v12 bottomAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor_];

  *(v14 + 56) = v26;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v27 = sub_240A2C15C();

  [v13 activateConstraints_];
}

uint64_t sub_24099302C(uint64_t a1)
{
  v2 = type metadata accessor for SetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2409963A8(a1, v5, type metadata accessor for SetupView);
  sub_240A2C21C();
  v10 = sub_240A2C20C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_240995610(v5, v12 + v11);
  sub_2409230D4(0, 0, v8, &unk_240A34C38, v12);
}

uint64_t sub_2409931F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_240A2981C();
  v4[3] = swift_task_alloc();
  sub_240A297DC();
  v4[4] = swift_task_alloc();
  sub_240A2C21C();
  v4[5] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409932E8, v6, v5);
}

uint64_t sub_2409932E8()
{
  v1 = *(v0 + 32);

  sub_2409898C0();
  v2 = sub_240A2976C();
  (*(*(v2 - 8) + 56))(v1, 6, 6, v2);
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  sub_240A2BC6C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_240993400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v70 = a5;
  v63 = a2;
  v64 = a3;
  v55 = a1;
  v68 = sub_240A2A21C();
  v66 = *(v68 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SetupView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D330, &qword_240A34C68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v62 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v61 = v54 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v60 = v54 - v24;
  MEMORY[0x28223BE20](v23);
  v59 = v54 - v25;
  v71 = sub_240A2C06C();
  v72 = v26;
  sub_240A2B18C();
  v27 = sub_240A2B19C();
  (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
  sub_2409963A8(a1, v10, type metadata accessor for SetupView);
  v28 = *(v8 + 80);
  v29 = (v28 + 16) & ~v28;
  v56 = v29 + v9;
  v57 = v28 | 7;
  v30 = swift_allocObject();
  sub_240995610(v10, v30 + v29);
  v58 = sub_24091C4F8();
  sub_240A2BCBC();
  v54[2] = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
  v31 = v14;
  sub_240A2BA6C();
  v32 = v15 + 8;
  v33 = *(v15 + 8);
  v54[1] = v32;
  v33(v17, v14);
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_240A305D0;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_240913AEC();
  v35 = v64;
  *(v34 + 32) = v63;
  *(v34 + 40) = v35;

  v36 = sub_240A2BF6C();
  v38 = v37;

  v71 = v36;
  v72 = v38;
  sub_2409963A8(v55, v10, type metadata accessor for SetupView);
  v39 = v65;
  v40 = v66;
  v41 = v68;
  (*(v66 + 16))(v65, v69, v68);
  v42 = v40;
  v43 = (v56 + *(v40 + 80)) & ~*(v40 + 80);
  v44 = swift_allocObject();
  sub_240995610(v10, v44 + v29);
  (*(v42 + 32))(v44 + v43, v39, v41);
  sub_240A2BCCC();
  v45 = v60;
  sub_240A2BA6C();
  v33(v17, v31);
  v46 = v59;
  v47 = v61;
  sub_240919298(v59, v61, &qword_27E50D740, &qword_240A34FE0);
  v48 = v62;
  sub_240919298(v45, v62, &qword_27E50D740, &qword_240A34FE0);
  v49 = v47;
  v50 = v47;
  v51 = v70;
  sub_240919298(v49, v70, &qword_27E50D740, &qword_240A34FE0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D338, &qword_240A34C70);
  sub_240919298(v48, v51 + *(v52 + 48), &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v45, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v46, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v48, &qword_27E50D740, &qword_240A34FE0);
  return sub_240919300(v50, &qword_27E50D740, &qword_240A34FE0);
}

id sub_240993AAC(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v2 = sub_240A2A21C();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v55 - v5;
  v6 = sub_240A2B00C();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = (&v55 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_240A295AC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = sub_240A2981C();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_240A297DC();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_240A2976C();
  (*(*(v23 - 8) + 56))(v22, 6, 6, v23);
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  v24 = v61;
  sub_240A2BC6C();
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_240A2C47C();

  v65 = 0xD000000000000020;
  v66 = 0x8000000240A3D6C0;
  v25 = sub_240A2A1EC();
  MEMORY[0x245CCCD90](v25);

  MEMORY[0x245CCCD90](0x6574616D696E6126, 0xED0000657572743DLL);
  sub_240A2959C();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_240919300(v12, &qword_27E50C7E0, &qword_240A33150);
    v26 = v60;
    sub_240A2AE9C();
    v28 = v57;
    v27 = v58;
    v29 = *(v58 + 16);
    v30 = v24;
    v31 = v59;
    v29(v57, v30, v59);
    v32 = sub_240A2AFFC();
    v33 = sub_240A2C2AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65 = v62;
      *v34 = 136315138;
      v29(v55, v28, v31);
      v35 = sub_240A2BF9C();
      v37 = v36;
      (*(v27 + 8))(v28, v31);
      v38 = sub_240925464(v35, v37, &v65);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2408FE000, v32, v33, "Failed to perform deep link navigation for profile: %s", v34, 0xCu);
      v39 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x245CCDDB0](v39, -1, -1);
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v31);
    }

    return (*(v63 + 8))(v26, v64);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    sub_240A2AE9C();
    v40 = v56;
    (*(v14 + 16))(v56, v18, v13);
    v41 = sub_240A2AFFC();
    v42 = sub_240A2C29C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v65 = v44;
      *v43 = 136315138;
      sub_24099885C(&qword_27E50C628, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v45 = sub_240A2C62C();
      v46 = v40;
      v48 = v47;
      v49 = *(v14 + 8);
      v49(v46, v13);
      v50 = sub_240925464(v45, v48, &v65);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_2408FE000, v41, v42, "Opening url: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x245CCDDB0](v44, -1, -1);
      MEMORY[0x245CCDDB0](v43, -1, -1);
    }

    else
    {

      v49 = *(v14 + 8);
      v49(v40, v13);
    }

    (*(v63 + 8))(v62, v64);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v52 = result;
      v53 = sub_240A2957C();
      sub_240926374(MEMORY[0x277D84F90]);
      v54 = sub_240A2BE9C();

      [v52 openSensitiveURL:v53 withOptions:v54];

      return (v49)(v18, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2409942F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_240A29DBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240987234(v13);
  sub_240A2C05C();
  (*(v11 + 8))(v13, v10);
  sub_240A2C06C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_240A32540;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_240913AEC();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;

  v17 = sub_240A2BF6C();
  v19 = v18;

  v24[0] = v17;
  v24[1] = v19;
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a5 = result;
  *(a5 + 8) = v21;
  *(a5 + 16) = v22 & 1;
  *(a5 + 24) = v23;
  return result;
}

uint64_t sub_2409944D0(uint64_t a1)
{
  v2 = type metadata accessor for SetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[0] = sub_240A2C06C();
  v9[1] = v5;
  sub_2409963A8(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_240995610(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_24091C4F8();
  return sub_240A2BCCC();
}

uint64_t sub_24099461C(uint64_t a1)
{
  v2 = sub_240A2981C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_240A297DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for SetupView(0) + 88));
  v7 = *v6;
  v8 = *(v6 + 1);
  v11[16] = v7;
  v12 = v8;
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC6C();
  v9 = sub_240A2976C();
  (*(*(v9 - 8) + 56))(v5, 6, 6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

id sub_2409947AC()
{
  v0 = sub_240A2981C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_240A297DC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_240A295AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2959C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_240919300(v6, &qword_27E50C7E0, &qword_240A33150);
LABEL_5:
    v15 = sub_240A2976C();
    (*(*(v15 - 8) + 56))(v3, 6, 6, v15);
    type metadata accessor for SetupView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A297FC();
    return sub_240A2BC6C();
  }

  (*(v8 + 32))(v10, v6, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    v13 = sub_240A2957C();
    sub_240926374(MEMORY[0x277D84F90]);
    v14 = sub_240A2BE9C();

    [v12 openSensitiveURL:v13 withOptions:v14];

    (*(v8 + 8))(v10, v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_240994AF8(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SetupView(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = sub_240A2C06C();
  v27 = sub_240A2C01C();
  v4 = [objc_opt_self() systemRedColor];
  v5 = type metadata accessor for ProxCardViewController();
  v6 = objc_allocWithZone(v5);
  aBlock = 0xD00000000000002DLL;
  v31 = 0x8000000240A3D770;
  v32 = 0;
  LOBYTE(v33) = 0;
  v7 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v8 = sub_2409E0A0C(&aBlock);
  v9 = *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v4;
  v10 = v4;

  [*&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v37.receiver = v6;
  v37.super_class = v5;
  v11 = objc_msgSendSuper2(&v37, sel_initWithContentView_, v8);
  [v11 setDismissalType_];
  v12 = sub_240A2BF1C();

  [v11 setTitle_];

  v13 = sub_240A2BF1C();

  [v11 setSubtitle_];

  v36 = 1;
  sub_240A2BD3C();
  v14 = v31;
  v27 = aBlock;
  LODWORD(v26) = v32;
  sub_240A2C06C();
  sub_2409963A8(v29, &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v15 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v16 = swift_allocObject();
  sub_240995610(&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v18 = swift_allocObject();
  v18[2] = sub_240998AA4;
  v18[3] = v16;
  v18[4] = v17;
  v19 = v11;

  v20 = sub_240A2BF1C();

  v34 = sub_240998A78;
  v35 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2409DFF20;
  v33 = &block_descriptor_195;
  v21 = _Block_copy(&aBlock);
  v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];

  _Block_release(v21);

  v23 = [v19 addAction_];

  v24 = MEMORY[0x277D84F90];
  *a1 = v19;
  *(a1 + 8) = v24;
  *(a1 + 16) = v27;
  *(a1 + 24) = v14;
  *(a1 + 32) = v26;
}

void sub_240994F98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SetupView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2409963A8(a3, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_240995610(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = a5;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = a6;
  v15 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_240995118()
{
  v0 = sub_240A2981C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_240A297DC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A2976C();
  (*(*(v4 - 8) + 56))(v3, 6, 6, v4);
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

uint64_t sub_240995260()
{
  v0 = sub_240A2981C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_240A297DC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A2976C();
  (*(*(v4 - 8) + 56))(v3, 6, 6, v4);
  type metadata accessor for SetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  return sub_240A2BC6C();
}

uint64_t sub_24099540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = sub_240A29DBC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *(v9 + 16);
  v15(&v18 - v13, a1, v8);
  v16 = (v15)(v12, v14, v8);
  a5(v16);
  sub_240A2B54C();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_240995564(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_240915E50;

  return sub_240987D08(a1, a2, v2);
}

uint64_t sub_240995610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_240995674(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SetupView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_24098D898(a1, a2, v6);
}

unint64_t sub_2409956F4()
{
  result = qword_27E50D080;
  if (!qword_27E50D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D068, &qword_240A34920);
    sub_240995780();
    sub_240995B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D080);
  }

  return result;
}

unint64_t sub_240995780()
{
  result = qword_27E50D088;
  if (!qword_27E50D088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D090, &qword_240A34938);
    sub_24099580C();
    sub_240995A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D088);
  }

  return result;
}

unint64_t sub_24099580C()
{
  result = qword_27E50D098;
  if (!qword_27E50D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0A0, &qword_240A34940);
    sub_2409958C8();
    sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D098);
  }

  return result;
}

unint64_t sub_2409958C8()
{
  result = qword_27E50D0A8;
  if (!qword_27E50D0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0B0, &qword_240A34948);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    sub_240995980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0A8);
  }

  return result;
}

unint64_t sub_240995980()
{
  result = qword_27E50D0B8;
  if (!qword_27E50D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0C0, &qword_240A34950);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0B8);
  }

  return result;
}

unint64_t sub_240995A38()
{
  result = qword_27E50D0D8;
  if (!qword_27E50D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D0E0, &qword_240A34960);
    sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView, &protocol conformance descriptor for AuthenticationView);
    sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView, &unk_240A363B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0D8);
  }

  return result;
}

unint64_t sub_240995B24()
{
  result = qword_27E50D0F8;
  if (!qword_27E50D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D100, &qword_240A34968);
    sub_240995BB0();
    sub_2409961EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D0F8);
  }

  return result;
}

unint64_t sub_240995BB0()
{
  result = qword_27E50D108;
  if (!qword_27E50D108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D110, &qword_240A34970);
    sub_240995C3C();
    sub_240995DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D108);
  }

  return result;
}

unint64_t sub_240995C3C()
{
  result = qword_27E50D118;
  if (!qword_27E50D118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D120, &qword_240A34978);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D118);
  }

  return result;
}

unint64_t sub_240995CF4()
{
  result = qword_27E50D128;
  if (!qword_27E50D128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D130, &qword_240A34980);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D128);
  }

  return result;
}

unint64_t sub_240995DAC()
{
  result = qword_27E50D138;
  if (!qword_27E50D138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D140, &qword_240A34988);
    sub_240972F80();
    sub_240995E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D138);
  }

  return result;
}

unint64_t sub_240995E38()
{
  result = qword_27E50D148;
  if (!qword_27E50D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D150, &qword_240A34990);
    sub_240995EC4();
    sub_24099613C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D148);
  }

  return result;
}

unint64_t sub_240995EC4()
{
  result = qword_27E50D158;
  if (!qword_27E50D158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D160, &qword_240A34998);
    sub_240995F7C();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D158);
  }

  return result;
}

unint64_t sub_240995F7C()
{
  result = qword_27E50D168;
  if (!qword_27E50D168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D170, &qword_240A349A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D178, &qword_240A349A8);
    sub_24091C4F8();
    sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D168);
  }

  return result;
}

unint64_t sub_24099613C()
{
  result = qword_27E50D188;
  if (!qword_27E50D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D190, &qword_240A349B0);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D188);
  }

  return result;
}

unint64_t sub_2409961EC()
{
  result = qword_27E50D198;
  if (!qword_27E50D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1A0, &qword_240A349B8);
    sub_240996278();
    sub_240972938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D198);
  }

  return result;
}

unint64_t sub_240996278()
{
  result = qword_27E50D1A8;
  if (!qword_27E50D1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1B0, &qword_240A349C0);
    sub_24091CE28(&qword_27E50D1B8, &qword_27E50D1C0, &qword_240A349C8, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D1A8);
  }

  return result;
}

uint64_t sub_240996348()
{
  v1 = *(type metadata accessor for SetupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24099302C(v2);
}

uint64_t sub_2409963A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_240996454(uint64_t a1)
{
  sub_240919DC0();
  if (v1 <= 0x3F)
  {
    sub_240A2A1DC();
    if (v2 <= 0x3F)
    {
      sub_240A29DEC();
      if (v3 <= 0x3F)
      {
        sub_2409967F4(319, &qword_27E50C0D8, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_240996790(319, &qword_27E50D260, MEMORY[0x277CED360], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24099673C(319, &qword_27E50D268, &qword_27E50C700, &unk_240A32F50);
            if (v6 <= 0x3F)
            {
              sub_24099673C(319, &qword_27E50D270, &unk_27E50C710, &qword_240A35AF0);
              if (v7 <= 0x3F)
              {
                sub_240996790(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_240996790(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_240996790(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_2409967F4(319, &qword_27E50B5F8, MEMORY[0x277CDF468]);
                      if (v11 <= 0x3F)
                      {
                        sub_2409306A4(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2409967F4(319, &qword_27E50B580, MEMORY[0x277CE11F8]);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_24099673C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2BC8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240996790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2409967F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240996848(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409968CC()
{
  result = qword_27E50D280;
  if (!qword_27E50D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1F0, &qword_240A34A18);
    sub_240996984();
    sub_24091CE28(&qword_27E50D2B8, &qword_27E50D2C0, &qword_240A34BC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D280);
  }

  return result;
}

unint64_t sub_240996984()
{
  result = qword_27E50D288;
  if (!qword_27E50D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1E8, &qword_240A34A10);
    sub_240996A3C();
    sub_24091CE28(&qword_27E50D2A8, &qword_27E50D2B0, &qword_240A34BB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D288);
  }

  return result;
}

unint64_t sub_240996A3C()
{
  result = qword_27E50D290;
  if (!qword_27E50D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1E0, &qword_240A349E0);
    sub_240996AF4();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D290);
  }

  return result;
}

unint64_t sub_240996AF4()
{
  result = qword_27E50D298;
  if (!qword_27E50D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1D8, &qword_240A349D8);
    sub_240996BAC();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D298);
  }

  return result;
}

unint64_t sub_240996BAC()
{
  result = qword_27E50D2A0;
  if (!qword_27E50D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D1D0, &qword_240A349D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D070, &qword_240A34928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D068, &qword_240A34920);
    sub_240A2981C();
    sub_2409956F4();
    sub_24099885C(&qword_27E50D1C8, MEMORY[0x277CED360], MEMORY[0x277CED368]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D2A0);
  }

  return result;
}

uint64_t sub_240996DE8()
{
  type metadata accessor for SetupView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240916360;

  return sub_240988468();
}

uint64_t sub_240996ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240916360;

  return sub_240988FE8(a1);
}

BOOL sub_240996F78(uint64_t a1, char a2)
{
  v4 = sub_240A2976C();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2E0, &qword_240A34C00);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  MEMORY[0x28223BE20](v18);
  v20 = (&v35 - v19);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  sub_240919298(a1, &v35 - v19, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = &qword_27E50C6E0;
    v29 = &qword_240A32F18;
    v30 = v20;
LABEL_10:
    sub_240919300(v30, v28, v29);
    return 1;
  }

  v38 = *v20;
  v21 = v38;
  v22 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v23 = swift_dynamicCast();
  v24 = v37;
  v25 = *(v37 + 56);
  v25(v17, v23 ^ 1u, 1, v4);
  (*(v24 + 104))(v15, *MEMORY[0x277CED270], v4);
  v25(v15, 0, 1, v4);
  v26 = *(v6 + 48);
  sub_240919298(v17, v8, &unk_27E50C6F0, &unk_240A32F40);
  sub_240919298(v15, &v8[v26], &unk_27E50C6F0, &unk_240A32F40);
  v27 = *(v24 + 48);
  if (v27(v8, 1, v4) == 1)
  {
    sub_240919300(v15, &unk_27E50C6F0, &unk_240A32F40);

    if (v27(&v8[v26], 1, v4) == 1)
    {
      sub_240919300(v8, &unk_27E50C6F0, &unk_240A32F40);
      sub_240919300(v17, &unk_27E50C6F0, &unk_240A32F40);
      return 0;
    }

    goto LABEL_9;
  }

  sub_240919298(v8, v12, &unk_27E50C6F0, &unk_240A32F40);
  if (v27(&v8[v26], 1, v4) == 1)
  {
    sub_240919300(v15, &unk_27E50C6F0, &unk_240A32F40);

    (*(v24 + 8))(v12, v4);
LABEL_9:
    sub_240919300(v8, &qword_27E50D2E0, &qword_240A34C00);
    v28 = &unk_27E50C6F0;
    v29 = &unk_240A32F40;
    v30 = v17;
    goto LABEL_10;
  }

  v32 = v36;
  (*(v24 + 32))(v36, &v8[v26], v4);
  sub_24099885C(&qword_27E50D2E8, MEMORY[0x277CED2E0], MEMORY[0x277CED2E8]);
  v33 = sub_240A2BF0C();

  v34 = *(v24 + 8);
  v34(v32, v4);
  sub_240919300(v15, &unk_27E50C6F0, &unk_240A32F40);
  v34(v12, v4);
  sub_240919300(v8, &unk_27E50C6F0, &unk_240A32F40);
  sub_240919300(v17, &unk_27E50C6F0, &unk_240A32F40);
  return (v33 & 1) == 0;
}

uint64_t sub_2409974DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24099754C()
{
  v1 = *(type metadata accessor for SetupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  return (*(v0 + v2 + 16))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24099763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for SetupView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24098A440(a1, a2, a3, v8);
}

uint64_t sub_2409976EC()
{
  type metadata accessor for SetupView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_240988468();
}

uint64_t sub_240997820()
{
  v0 = sub_240A29B5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C770, &qword_240A330D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  sub_240A2978C();
  sub_240A29B4C();
  (*(v1 + 8))(v3, v0);
  v10 = sub_240A29A0C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    v12 = &unk_27E50C790;
    v13 = &unk_240A35770;
    v14 = v6;
LABEL_5:
    sub_240919300(v14, v12, v13);
    return sub_240A2C01C();
  }

  sub_240A2990C();
  (*(v11 + 8))(v6, v10);
  v15 = sub_240A298DC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v12 = &unk_27E50C770;
    v13 = &qword_240A330D8;
    v14 = v9;
    goto LABEL_5;
  }

  v18 = sub_240A298CC();
  (*(v16 + 8))(v9, v15);
  if (v18)
  {
    v19 = [v18 firstName];

    if (v19)
    {
      v20 = sub_240A2BF4C();

      return v20;
    }
  }

  return sub_240A2C01C();
}

uint64_t objectdestroy_66Tm()
{
  v1 = type metadata accessor for SetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[9];
  v7 = sub_240A2981C();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);

  v8 = v0 + v3 + v1[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);

  if (*(v5 + v1[11]))
  {
  }

  v11 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_240A2B2AC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_240A29DBC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_240A29DBC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  sub_24090C1E4(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24090C1E4(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240997FF8(uint64_t a1)
{
  v4 = *(type metadata accessor for SetupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_2409931F8(a1, v6, v7, v1 + v5);
}

id sub_2409981A4()
{
  type metadata accessor for SetupView(0);

  return sub_2409947AC();
}

id sub_240998288()
{
  v1 = *(type metadata accessor for SetupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_240A2A21C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_240993AAC(v0 + v2, v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[9];
  v7 = sub_240A2981C();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);

  v8 = v0 + v3 + v1[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);

  if (*(v5 + v1[11]))
  {
  }

  v11 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_240A2B2AC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_240A29DBC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  v15 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_240A29DBC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  sub_24090C1E4(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  sub_24090C1E4(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2409987A8()
{
  result = qword_27E50D370;
  if (!qword_27E50D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D370);
  }

  return result;
}

uint64_t sub_2409987FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24099885C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2409988A4()
{
  result = qword_27E50D380;
  if (!qword_27E50D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D380);
  }

  return result;
}

unint64_t sub_2409988F8()
{
  result = qword_27E50D388;
  if (!qword_27E50D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D388);
  }

  return result;
}

unint64_t sub_24099894C()
{
  result = qword_27E50D390;
  if (!qword_27E50D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D390);
  }

  return result;
}

unint64_t sub_2409989A0()
{
  result = qword_27E50D398;
  if (!qword_27E50D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D398);
  }

  return result;
}

unint64_t sub_2409989F4()
{
  result = qword_27E50D3A0;
  if (!qword_27E50D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D3A0);
  }

  return result;
}

uint64_t sub_240998AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *v2;
  sub_24099A9E8(v2 + *(a1 + 20), &v16 - v9);
  sub_24099A9E8(v10, v8);
  v12 = objc_allocWithZone(type metadata accessor for PasswordSignInViewWrapper.Coordinator(0));
  v13 = swift_retain_n();
  v14 = sub_24099AA58(v13, v8);

  sub_24099ABAC(v10);
  LOBYTE(a1) = sub_240A2B88C();
  result = sub_240A2B3AC();
  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = result;
  *(a2 + 24) = a1;
  return result;
}

id sub_240998BC8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_240998BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24099B644();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240998C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24099B644();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240998C9C(uint64_t a1)
{
  sub_24099B644();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240998CC4(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  if (*(a2 + 16))
  {
    *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults] = a2;

    v8 = sub_240A2C24C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_240A2C21C();
    v9 = v2;
    v10 = a1;
    v11 = sub_240A2C20C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = v10;
    sub_2409230D4(0, 0, v7, &unk_240A34DC0, v12);
  }

  else
  {
    v15 = *(*&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings] + 24);
    sub_240977EF8();
    v16 = swift_allocError();
    *v17 = 1;

    v15(v16, 1);
  }
}

uint64_t sub_240998EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_240998F6C;

  return sub_2409991C0(a5);
}

uint64_t sub_240998F6C(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409990B0, v3, v2);
}

uint64_t sub_2409990B0()
{
  v1 = *(v0 + 48);

  if ((v1 & 1) == 0)
  {
    sub_24099A240();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2409991C0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_240A2B00C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = sub_240A2C21C();
  v2[15] = sub_240A2C20C();
  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v2;
  v4[1] = sub_2409992FC;

  return sub_240999D78();
}

uint64_t sub_2409992FC(uint64_t a1)
{
  v2 = *v1;
  v2[17] = a1;

  v4 = sub_240A2C1BC();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x2822009F8](sub_240999448, v4, v3);
}

uint64_t sub_240999448()
{
  v1 = v0[17];
  v2 = *(*(v0[6] + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  *(v2 + v3) = v1;
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "Finding age-based flow for user age range: %lu", v7, 0xCu);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v8 = v0[13];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];

  v12 = *(v10 + 8);
  v12(v8, v9);
  v13 = [v11 navigationController];
  v0[20] = v13;
  if (!v13)
  {

    sub_240A2AE9C();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[9];
    v27 = v0[7];
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "Missing navigation controller for age-based flow.", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    v29 = v26;
    v30 = v27;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = v0[17];
  if ((v15 - 1) >= 2)
  {
    if (v15)
    {
      if (v15 == 3)
      {

        sub_240A2AE9C();
        v16 = sub_240A2AFFC();
        v17 = sub_240A2C29C();
        v18 = os_log_type_enabled(v16, v17);
        v19 = v0[12];
        v20 = v0[7];
        if (v18)
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Age assurance feature is disabled. Skipping age-based flow.";
LABEL_19:
          _os_log_impl(&dword_2408FE000, v16, v17, v22, v21, 2u);
          MEMORY[0x245CCDDB0](v21, -1, -1);
        }
      }

      else
      {

        sub_240A2AE9C();
        v16 = sub_240A2AFFC();
        v17 = sub_240A2C29C();
        v34 = os_log_type_enabled(v16, v17);
        v19 = v0[10];
        v20 = v0[7];
        if (v34)
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unknown default user age range. Skipping age-based flow.";
          goto LABEL_19;
        }
      }
    }

    else
    {

      sub_240A2AE9C();
      v16 = sub_240A2AFFC();
      v17 = sub_240A2C29C();
      v33 = os_log_type_enabled(v16, v17);
      v19 = v0[11];
      v20 = v0[7];
      if (v33)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = "Unknown user age range. Skipping age-based flow.";
        goto LABEL_19;
      }
    }

    v29 = v19;
    v30 = v20;
LABEL_21:
    v12(v29, v30);

    v35 = v0[1];

    return v35(0);
  }

  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_240999888;

  return sub_240999A60(v14);
}

uint64_t sub_240999888(char a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_2409999B0, v4, v3);
}

uint64_t sub_2409999B0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_240999A60(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_240A2B00C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_240A2C21C();
  v2[12] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240999B54, v5, v4);
}

uint64_t sub_240999B54()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C29C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Starting safety settings flow", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  (*(v5 + 8))(v4, v7);
  v9 = objc_allocWithZone(sub_240A2AA3C());
  v10 = sub_240A2AA2C();
  v11 = *(*(v6 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v12 = type metadata accessor for SafetySettingsViewController();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v13[OBJC_IVAR___AISSafetySettingsViewController_context] = v10;
  *&v13[OBJC_IVAR___AISSafetySettingsViewController_configuration] = v11;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  v14 = v10;
  v15 = v11;
  v16 = objc_msgSendSuper2((v0 + 40), sel_initWithNibName_bundle_, 0, 0);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  [v8 pushViewController:v16 animated:1];

  v17 = *(v0 + 8);

  return v17(1);
}

uint64_t sub_240999D78()
{
  v1[5] = v0;
  v2 = sub_240A2B00C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_240A2C21C();
  v1[12] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240999E90, v4, v3);
}

uint64_t sub_240999E90()
{
  v1 = v0[5];

  v2 = *(*(v1 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 16);
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
LABEL_8:
    v20 = v0 + 8;
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C29C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v4;
      _os_log_impl(&dword_2408FE000, v21, v22, "Age range is: %lu", v23, 0xCu);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v24 = v0[7];

    v11 = *(v24 + 8);
    goto LABEL_11;
  }

  sub_240A2AE9C();
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C28C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2408FE000, v5, v6, "Age range is unknown... Fetching primary account for age range", v7, 2u);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v8 = v0[11];
  v9 = v0[6];
  v10 = v0[7];

  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 primaryAuthKitAccount];
  if (v13)
  {
    v14 = v13;
    v4 = [v12 userAgeRangeForAccount_];
    sub_240A2AE9C();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C28C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v4;
      _os_log_impl(&dword_2408FE000, v15, v16, "Found primary account's age range: %lu", v17, 0xCu);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v18 = v0[10];
    v19 = v0[6];

    v11(v18, v19);
    goto LABEL_8;
  }

  v20 = v0 + 9;
  sub_240A2AE9C();
  v27 = sub_240A2AFFC();
  v28 = sub_240A2C29C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2408FE000, v27, v28, "No primary account found", v29, 2u);
    MEMORY[0x245CCDDB0](v29, -1, -1);
  }

  v4 = 0;
LABEL_11:
  v11(*v20, v0[6]);

  v25 = v0[1];

  return v25(v4);
}

uint64_t sub_24099A240()
{
  if (*(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults))
  {

    sub_240A1EDA4(v1);

    v2 = objc_allocWithZone(sub_240A2AA9C());
    v3 = sub_240A2AA7C();
    v4 = *(*(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 24);

    v4(v3, 0);
  }

  else
  {
    v5 = *(*(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 24);
    sub_240977EF8();
    v6 = swift_allocError();
    *v7 = 1;

    v5(v6, 1);
  }
}

void sub_24099A430(void *a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "signInControllerDidSelectChildSignIn", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_240A09428(a1);
}

id sub_24099A6DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordSignInViewWrapper.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24099A7B8(uint64_t a1)
{
  sub_24099A870(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24099A870(uint64_t a1)
{
  if (!qword_27E50D510)
  {
    sub_240A2B33C();
    v1 = sub_240A2BD4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50D510);
    }
  }
}

uint64_t sub_24099A910(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24099A948(uint64_t a1)
{
  type metadata accessor for AISSignInSettings();
  if (v1 <= 0x3F)
  {
    sub_24099A870(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24099A9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24099AA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_pendingAuthResults] = 0;
  v6 = OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_featureManager;
  sub_240A2A12C();
  *&v2[v6] = sub_240A2A11C();
  *&v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings] = a1;
  sub_24099A9E8(a2, &v2[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath]);
  v7 = objc_opt_self();

  result = [v7 defaultStore];
  if (result)
  {
    v9 = result;
    v10 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v11 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());

    v13 = sub_240A0B5C4(v12, v10, 0);

    *&v3[OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_childSetupController] = v13;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for PasswordSignInViewWrapper.Coordinator(0);
    v14 = objc_msgSendSuper2(&v15, sel_init);
    sub_24099ABAC(a2);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24099ABAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24099AC14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240998EAC(a1, v4, v5, v7, v6);
}

id sub_24099ACD4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
  v4 = *(a2 + 16);
  v5 = v4 + OBJC_IVAR___AISAppleIDSignInConfiguration_username;
  swift_beginAccess();
  if (*(v5 + 8))
  {

    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  [v3 setUsername_];

  v7 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  [v3 setCanEditUsername_];
  v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  [v3 setAllowSkip_];
  v9 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  [v3 setShouldShowSystemBackButton_];
  swift_beginAccess();
  type metadata accessor for AIDAServiceType(0);

  v10 = sub_240A2C15C();

  [v3 setServiceTypes_];

  [v3 setShowsChildSignIn_];
  swift_beginAccess();

  v11 = sub_240A2C15C();

  [v3 setPrivacyLinkIdentifiers_];

  [v3 setShouldDisableAccountCreation_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D558, qword_240A34E98);
  sub_240A2B81C();
  [v3 setDelegate_];

  sub_240A2B81C();
  [v3 setCdpDelegate_];

  return v3;
}

uint64_t sub_24099AF8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  v5 = sub_240A2B33C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath;
  sub_24099A9E8(v0 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator__navigationPath, v4);
  MEMORY[0x245CCC9B0](v2);
  sub_24099ABAC(v4);
  v10 = sub_240A2B31C();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v11 = *(*(v1 + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings) + 24);
    sub_240977EF8();
    v12 = swift_allocError();
    *v13 = 2;

    v11(v12, 1);
  }

  else
  {
    sub_24099A9E8(v1 + v9, v4);
    MEMORY[0x245CCC9B0](v2);
    sub_240A2B2FC();
    sub_240A2BCFC();
    return sub_24099ABAC(v4);
  }
}
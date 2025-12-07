uint64_t sub_1D11B54A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v29 = sub_1D138FECC();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138FF0C();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138FF2C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  sub_1D11B5890();
  if (a3)
  {
    [a3 setAlpha_];
  }

  if (a4)
  {
    [a4 removeFromSuperview];
  }

  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v20 = sub_1D1390A7C();
  sub_1D138FF1C();
  sub_1D138FF4C();
  v28 = *(v14 + 8);
  v28(v16, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  aBlock[4] = sub_1D11B6CAC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_59_0;
  v22 = _Block_copy(aBlock);
  v23 = a5;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10899AC();
  sub_1D11B6F38(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  v24 = v9;
  v25 = v29;
  sub_1D139103C();
  MEMORY[0x1D3886370](v19, v12, v24, v22);
  _Block_release(v22);

  (*(v32 + 8))(v24, v25);
  (*(v30 + 8))(v12, v31);
  return (v28)(v19, v13);
}

void sub_1D11B5890()
{
  v1 = &v0[OBJC_IVAR___HRPDFConfigurationViewController_state];
  v2 = *&v0[OBJC_IVAR___HRPDFConfigurationViewController_state + 24];
  if (v2 >= 2)
  {
    v4 = *v1;
    v3 = v1[1];
    v5 = v1[2];
    sub_1D1083D58(*v1, v3);

    sub_1D1083D58(v4, v3);
    v6 = objc_allocWithZone(MEMORY[0x1E6978028]);
    sub_1D1083D58(v4, v3);
    v7 = sub_1D138D3CC();
    v8 = [v6 initWithData_];

    sub_1D1083DAC(v4, v3);
    if (v8)
    {
      v9 = type metadata accessor for PDFPreviewViewController();
      v10 = objc_allocWithZone(v9);
      *&v10[OBJC_IVAR____TtC15HealthRecordsUI24PDFPreviewViewController_pdfDocument] = v8;
      v18.receiver = v10;
      v18.super_class = v9;
      v11 = v8;
      v12 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
      v13 = qword_1EE06AD00;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v15 = sub_1D139012C();

      [v14 setTitle_];

      v16 = [v0 navigationController];
      if (v16)
      {
        v17 = v16;
        [v16 pushViewController:v14 animated:0];
        sub_1D11B6CBC(v4, v3, v5, v2);
        sub_1D1083DAC(v4, v3);
      }

      else
      {
        sub_1D11B6CBC(v4, v3, v5, v2);
        sub_1D1083DAC(v4, v3);
      }
    }

    else
    {
      sub_1D1083DAC(v4, v3);

      sub_1D11B6CBC(v4, v3, v5, v2);
    }
  }
}

void sub_1D11B5DDC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PDFPreviewViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E6978048]) init];
  [v1 setView_];

  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 setDocument_];
    }
  }
}

void sub_1D11B5EF0(uint64_t a1)
{
  v2 = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PDFPreviewViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, v2 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 scaleFactorForSizeToFit];
      v7 = v6;

      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
        }
      }

      else
      {
        v4 = 0;
      }

      [v4 setScaleFactor_];
    }
  }
}

id sub_1D11B608C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV_SStSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI30PDFConfigurationViewControllerC5State33_8F81952E28F1531DFFBDDCE2B833C803LLO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D11B6150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D11B61AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1D11B620C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

id sub_1D11B6250(void *a1, void *a2, __int128 *a3)
{
  v85 = a2;
  v6 = sub_1D138D7CC();
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D67C();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138D57C();
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D138D76C();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v82 = _s13ConfigurationVMa(0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v71 - v19;
  v20 = &v3[OBJC_IVAR___HRPDFConfigurationViewController_tableCellIdentifier];
  *v20 = 1819043139;
  *(v20 + 1) = 0xE400000000000000;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___actionBarButtonItem] = 0;
  v21 = a3[2];
  v22 = a3[3];
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView] = 0;
  v99[2] = v21;
  v99[3] = v22;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView] = 0;
  v100 = *(a3 + 8);
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView] = 0;
  v24 = *a3;
  v23 = a3[1];
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView] = 0;
  v99[0] = v24;
  v99[1] = v23;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView] = 0;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView] = 0;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding] = 0x403E000000000000;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfPaddingConstraints] = 0;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfHeightConstraint] = 0;
  v25 = &v3[OBJC_IVAR___HRPDFConfigurationViewController_state];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 1;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_pdfGenerationTask] = 0;
  swift_unknownObjectUnownedInit();
  v26 = [objc_allocWithZone(sub_1D138E3AC()) init];
  v83 = v3;
  *&v3[OBJC_IVAR___HRPDFConfigurationViewController_previewDataSource] = v26;
  v86 = a1;
  v27 = [a1 conceptStore];
  v28 = type metadata accessor for MedicalRecordFormatter();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR___HRMedicalRecordFormatter_store] = v27;
  *&v29[OBJC_IVAR___HRMedicalRecordFormatter_context] = 0;
  v98.receiver = v29;
  v98.super_class = v28;
  v79 = objc_msgSendSuper2(&v98, sel_init);
  v88 = v16;
  sub_1D138D72C();
  v92 = v12;
  sub_1D138D56C();
  v30 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v30 setDateStyle_];
  [v30 setTimeStyle_];
  if (qword_1EC608D18 != -1)
  {
    swift_once();
  }

  v78 = v6;
  v31 = __swift_project_value_buffer(v6, qword_1EC60D2E8);
  v32 = sub_1D138D7BC();
  [v30 setTimeZone_];

  v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v34 = sub_1D139012C();
  v76 = v33;
  [v33 setDateFormat_];

  v75 = v31;
  v35 = sub_1D138D7BC();
  [v33 setTimeZone_];

  v36 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v36 setDateStyle_];
  v74 = v36;
  [v36 setTimeStyle_];
  v37 = sub_1D138D7BC();
  [v36 setTimeZone_];

  v38 = v87;
  sub_1D138D66C();
  v39 = [objc_opt_self() currentTraitCollection];
  v40 = [v39 layoutDirection];
  v41 = v30;
  v72 = v30;
  v73 = v40;

  v42 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v42 setMinimumFractionDigits_];
  [v42 setMaximumFractionDigits_];
  v43 = *(v89 + 16);
  v44 = v77;
  v45 = v91;
  (v43)(v77, v88, v91);
  v46 = v82;
  (*(v93 + 16))(v44 + *(v82 + 20), v92, v94);
  *(v44 + v46[6]) = v41;
  v47 = v76;
  *(v44 + v46[7]) = v76;
  v48 = v74;
  *(v44 + v46[8]) = v74;
  (*(v95 + 16))(v44 + v46[9], v38, v96);
  *(v44 + v46[10]) = v73;
  *(v44 + v46[11]) = v42;
  v49 = v90;
  v43();
  v80[2](v81, v75, v78);
  v80 = v72;
  v50 = v47;
  v51 = v48;
  v52 = v42;
  sub_1D138D74C();
  (v43)(v44 + v46[12], v49, v45);
  v53 = v87;
  v54 = sub_1D138D62C();
  v55 = v80;
  [v80 setLocale_];

  v56 = sub_1D138D62C();
  [v50 setLocale_];

  v57 = sub_1D138D62C();
  [v51 setLocale_];

  v58 = sub_1D138D62C();
  [v52 setLocale_];

  v59 = *(v89 + 8);
  v60 = v91;
  v59(v90, v91);
  (*(v95 + 8))(v53, v96);
  (*(v93 + 8))(v92, v94);
  v59(v88, v60);
  *(v44 + v46[13]) = v79;
  v61 = v84;
  sub_1D10921C4(v44, v84);
  type metadata accessor for PDFConfigurationDataSource(0);
  swift_allocObject();
  v62 = v85;
  v63 = v85;
  v64 = sub_1D12A4E44(v62, v99, v61);
  v65 = v83;
  *&v83[OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource] = v64;
  v66 = [v86 healthStore];
  sub_1D10921C4(v44, v61);
  type metadata accessor for PDFReportGenerator(0);
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  sub_1D109238C(v61, v67 + OBJC_IVAR____TtC15HealthRecordsUI18PDFReportGenerator_configuration);
  *&v65[OBJC_IVAR___HRPDFConfigurationViewController_reportGenerator] = v67;
  v68 = type metadata accessor for PDFConfigurationViewController();
  v97.receiver = v65;
  v97.super_class = v68;
  v69 = objc_msgSendSuper2(&v97, sel_initWithNibName_bundle_, 0, 0);
  sub_1D1092890(v44);
  return v69;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1D11B6CBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1D11B6CCC(a1, a2, a3, a4);
  }

  return result;
}

double sub_1D11B6CCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D1083DAC(a1, a2);
  }

  return result;
}

void sub_1D11B6D0C()
{
  v1 = (v0 + OBJC_IVAR___HRPDFConfigurationViewController_tableCellIdentifier);
  *v1 = 1819043139;
  v1[1] = 0xE400000000000000;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___actionBarButtonItem) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___tableView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationBackgroundView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchAnimationView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pinchedPageImageView) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pdfPadding) = 0x403E000000000000;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfPaddingConstraints) = 0;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController____lazy_storage___pdfHeightConstraint) = 0;
  v2 = (v0 + OBJC_IVAR___HRPDFConfigurationViewController_state);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 1;
  *(v0 + OBJC_IVAR___HRPDFConfigurationViewController_pdfGenerationTask) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D11B6E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D10819BC;

  return sub_1D11B24E4();
}

double sub_1D11B6EE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1D11B6EF4(a1, a2, a3, a4);
  }

  return result;
}

double sub_1D11B6EF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D1083D58(a1, a2);
  }

  return result;
}

void sub_1D11B6F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11B6FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D11B0CA8(a1, v4, v5, v6);
}

uint64_t sub_1D11B7064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D11B0CA8(a1, v4, v5, v6);
}

id sub_1D11B715C()
{
  v1 = qword_1EE06AA50;
  v2 = *(v0 + qword_1EE06AA50);
  if (v2)
  {
    v3 = *(v0 + qword_1EE06AA50);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 256))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D11B71DC(uint64_t a1)
{
  v2 = *(v1 + qword_1EE06AA50);
  *(v1 + qword_1EE06AA50) = a1;
}

void sub_1D11B725C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;

    sub_1D10D3458(a1, a2);
    v6 = sub_1D11B715C();
    sub_1D1086E1C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D139E710;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x56746E65746E6F43;
    *(v7 + 56) = 0xEB00000000776569;

    sub_1D1250378(v7);

    v8 = *(v3 + qword_1EE069EA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E710;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    strcpy((v9 + 48), "ActionButton");
    *(v9 + 61) = 0;
    *(v9 + 62) = -5120;
    v10 = sub_1D139044C();

    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
  }
}

id sub_1D11B749C()
{
  v1 = v0;
  v2 = *(swift_getObjectType() + 264);
  v3 = v2();
  if (v3)
  {
    v4 = *&v0[qword_1EE06AA38];
    [v4 setPreservesSuperviewLayoutMargins_];
    [v0 addSubview_];
    v5 = *&v0[qword_1EE06AA30];
    v6 = [objc_opt_self() opaqueSeparatorColor];
    [v5 setBackgroundColor_];

    v3 = [v0 addSubview_];
  }

  v7 = (v2)(v3);
  v8 = sub_1D11B715C();
  v9 = v8;
  if (v7)
  {
    [v8 setLayoutMargins_];
  }

  else
  {
    [v8 setLayoutMargins_];
  }

  v10 = sub_1D11B715C();
  [v1 addSubview_];

  v11 = *&v1[qword_1EE069EA0];
  [v11 setPreservesSuperviewLayoutMargins_];

  return [v1 addSubview_];
}

id sub_1D11B7640()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for BaseAccountFeedItemView(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x88), *((*MEMORY[0x1E69E7D40] & *v1) + 0x90), v3);
  v10.receiver = v1;
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, sel_layoutMarginsDidChange);
  v6 = (*(ObjectType + 264))(v5);
  v7 = sub_1D11B715C();
  v8 = v7;
  if (v6)
  {
    [v7 setLayoutMargins_];
  }

  else
  {
    [v7 setLayoutMargins_];
  }

  return [v1 setNeedsLayout];
}

void sub_1D11B7764(void *a1)
{
  v1 = a1;
  sub_1D11B7640();
}

void sub_1D11B77AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BaseAccountFeedItemView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x88), *((*MEMORY[0x1E69E7D40] & *v4) + 0x90), a4);
  v12.receiver = v4;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    [a1 displayPixel];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v4 traitCollection];
  [v9 displayPixel];
  v11 = v10;

  if (!a1 || v8 != v11)
  {
    [v4 setNeedsLayout];
  }
}

void sub_1D11B78A4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_1D11B77AC(a3, v8, v6, v7);
}

id sub_1D11B7910()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for BaseAccountFeedItemView(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x88), *((*MEMORY[0x1E69E7D40] & *v1) + 0x90), v3);
  v8.receiver = v1;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  [v1 bounds];
  Width = CGRectGetWidth(v10);
  if ((*(ObjectType + 264))())
  {
    sub_1D11B7B00(v9, Width);
    [*(v1 + qword_1EE06AA38) setFrame_];
    [*(v1 + qword_1EE06AA30) setFrame_];
  }

  else
  {
    sub_1D11B7B00(v9, Width);
  }

  v6 = sub_1D11B715C();
  [v6 setFrame_];

  return [*(v1 + qword_1EE069EA0) setFrame_];
}

void sub_1D11B7AB8(void *a1)
{
  v1 = a1;
  sub_1D11B7910();
}

double sub_1D11B7B00@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D139160C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3 traitCollection];
  [v12 displayPixel];
  v14 = v13;

  [v3 directionalLayoutMargins];
  v16 = v15;
  v17 = [v3 directionalLayoutMargins];
  v19 = v18;
  v20 = a2 - v16 - v18;
  if ((*(ObjectType + 264))(v17))
  {
    v21 = *&v3[qword_1EE06AA38];
    [v21 sizeThatFits_];
    v56 = v14;
    v22 = a2;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E7040], v7);
    v23 = [v21 traitCollection];
    [v23 displayScale];
    sub_1D138D86C();
    v25 = v24;
    [v23 displayScale];
    sub_1D138D86C();
    v27 = v26;
    v53 = v26;

    (*(v8 + 8))(v11, v7);
    v57 = v22;
    if (v25 > v22)
    {
      v25 = v22;
    }

    v55 = v25;
    v28 = [v3 effectiveUserInterfaceLayoutDirection];
    v54 = v16 + 56.0;
    if (v28 == 1)
    {
      v29 = v19;
    }

    else
    {
      v29 = v16 + 56.0;
    }

    v51 = v29;
    v52 = -56.0;
    v50 = v20 + -56.0;
    v59.origin.x = 0.0;
    v59.origin.y = 0.0;
    v59.size.width = v25;
    v59.size.height = v27;
    v30 = CGRectGetMaxY(v59) + 12.0;
    v31 = sub_1D11B715C();
    [v31 sizeThatFits_];
    v33 = v32;

    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v16 = v19;
    }

    v60.origin.x = v29;
    v60.origin.y = v30;
    v60.size.width = v20 + -56.0;
    v60.size.height = v56;
    v34 = v56;
    v35 = CGRectGetMaxY(v60) + 12.0;
    v36 = sub_1D11B7FDC(v20);
    v58 = v37;
    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      MinX = v57 - v19 + v52 - v36;
    }

    else
    {
      MinX = v54;
    }

    v61.origin.x = v16;
    v61.origin.y = v35;
    v61.size.width = v20;
    v61.size.height = v33;
    MaxY = CGRectGetMaxY(v61);
    v41 = v50;
    v40 = v51;
    v42 = v55;
    v43 = v53;
    v44 = MaxY + 12.0;
  }

  else
  {
    v45 = sub_1D11B715C();
    [v45 sizeThatFits_];
    v33 = v46;

    if ([v3 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v16 = v19;
    }

    v36 = sub_1D11B7FDC(v20);
    v58 = v47;
    v35 = 12.0;
    v62.origin.y = 12.0;
    v62.origin.x = v16;
    v62.size.width = v20;
    v62.size.height = v33;
    MinX = CGRectGetMinX(v62);
    v63.origin.y = 12.0;
    v63.origin.x = v16;
    v63.size.width = v20;
    v63.size.height = v33;
    v44 = CGRectGetMaxY(v63) + 6.0;
    v42 = 0.0;
    v43 = 0.0;
    v40 = 0.0;
    v30 = 0.0;
    v41 = 0.0;
    v34 = 0.0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v42;
  *(a1 + 24) = v43;
  *(a1 + 32) = v40;
  *(a1 + 40) = v30;
  *(a1 + 48) = v41;
  *(a1 + 56) = v34;
  *(a1 + 64) = v16;
  *(a1 + 72) = v35;
  *(a1 + 80) = v20;
  *(a1 + 88) = v33;
  *(a1 + 96) = MinX;
  *(a1 + 104) = v44;
  result = v58;
  *(a1 + 112) = v36;
  *(a1 + 120) = result;
  return result;
}

double sub_1D11B7F2C(double a1)
{
  [v1 safeAreaInsets];
  CGRectGetMaxY(v5);
  return a1;
}

double sub_1D11B7F90(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_1D11B7F2C(a2);

  return v4;
}

double sub_1D11B7FDC(double a1)
{
  v3 = *(v1 + qword_1EE069EA0);
  v4 = [v3 titleForState_];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = sub_1D139016C();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      [v3 sizeThatFits_];
      return v11;
    }
  }

  return v5;
}

id BaseAccountFeedItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BaseAccountFeedItemView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1D1390ECC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = qword_1EE06AA38;
  *(v4 + v12) = [objc_allocWithZone(type metadata accessor for AccountView(0)) init];
  v13 = qword_1EE06AA30;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v4 + qword_1EE06AA50) = 0;
  v14 = qword_1EE069EA0;
  sub_1D11B82CC();
  sub_1D1390E4C();
  *(v4 + v14) = sub_1D1390EDC();
  *(v4 + qword_1EE06AA48) = 0x4028000000000000;
  *(v4 + qword_1EE06AA40) = 0x4028000000000000;
  *(v4 + qword_1EE069EA8) = 0x4018000000000000;
  *(v4 + qword_1EC60CAC8) = 0x4044000000000000;
  *(v4 + qword_1EC60CAD0) = 0x4030000000000000;
  v16 = type metadata accessor for BaseAccountFeedItemView(0, *((v10 & v9) + 0x88), *((v10 & v9) + 0x90), v15);
  v18.receiver = v4;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
}

unint64_t sub_1D11B82CC()
{
  result = qword_1EC60CAC0;
  if (!qword_1EC60CAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60CAC0);
  }

  return result;
}

id BaseAccountFeedItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseAccountFeedItemView.init(coder:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D1390ECC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = qword_1EE06AA38;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AccountView(0)) init];
  v7 = qword_1EE06AA30;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + qword_1EE06AA50) = 0;
  v8 = qword_1EE069EA0;
  sub_1D11B82CC();
  sub_1D1390E4C();
  *(v1 + v8) = sub_1D1390EDC();
  *(v1 + qword_1EE06AA48) = 0x4028000000000000;
  *(v1 + qword_1EE06AA40) = 0x4028000000000000;
  *(v1 + qword_1EE069EA8) = 0x4018000000000000;
  *(v1 + qword_1EC60CAC8) = 0x4044000000000000;
  *(v1 + qword_1EC60CAD0) = 0x4030000000000000;
  v10 = type metadata accessor for BaseAccountFeedItemView(0, *((v4 & v3) + 0x88), *((v4 & v3) + 0x90), v9);
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

void sub_1D11B8570()
{
  v1 = *(v0 + qword_1EE069EA0);
}

id BaseAccountFeedItemView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BaseAccountFeedItemView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x88), *((*MEMORY[0x1E69E7D40] & *v4) + 0x90), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D11B86AC(uint64_t a1)
{
  v2 = *(a1 + qword_1EE069EA0);
}

id sub_1D11B87C8(void *a1)
{
  v33 = a1;
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - v2;
  v32[2] = "MedicationDosageFormatter";
  v4 = sub_1D138D67C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E710;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v6 = sub_1D138D1CC();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D1089930();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = [v33 hr_dosageTimePeriodString];
  v12 = sub_1D139016C();
  v14 = v13;

  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v12;
  *(v5 + 80) = v14;
  sub_1D138D1CC();
  if (*(v5 + 16))
  {
    sub_1D139019C();

    sub_1D10CD608(v3);
  }

  else
  {
    sub_1D10CD608(v3);
  }

  v15 = v33;
  v16 = [v33 instruction];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_1D139016C();
  v20 = v19;

  v21 = v20 & 0x2000000000000000;
  v22 = HIBYTE(v20) & 0xF;
  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_12:
    v25 = sub_1D138D1CC();
    v21 = v26 & 0x2000000000000000;
    v22 = HIBYTE(v26) & 0xF;
    v23 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v27 = v22;
  }

  else
  {
    v27 = v23;
  }

  if (v27)
  {
    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v28 setDisplayItemType_];
    v29 = sub_1D139012C();

    [v28 setTitle_];

    v30 = sub_1D139012C();

    [v28 setSubtitle_];

    [v28 setSeparatorStyle_];
    [v28 setSeparatorHidden_];
    [v28 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v28;
}

id sub_1D11B8C70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationDosageFormatter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1D11B8CD8(uint64_t a1)
{
  result = sub_1D11B8D00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D11B8D00()
{
  result = qword_1EC60CAE8;
  if (!qword_1EC60CAE8)
  {
    type metadata accessor for MedicationDosageFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CAE8);
  }

  return result;
}

uint64_t sub_1D11B8D54(void **a1, void **a2)
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v25 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = [v12 timingPeriod];
  if (v14 && (v26 = v5, v15 = v14, v16 = [v14 endDate], v15, v16))
  {
    v17 = [v13 timingPeriod];
    if (v17 && (v18 = v17, v19 = [v17 endDate], v18, v19))
    {
      v20 = [v16 dateForUTC];
      sub_1D138D52C();

      v21 = [v19 dateForUTC];
      sub_1D138D52C();

      v22 = sub_1D138D50C();
      v23 = *(v26 + 8);
      v23(v7, v4);
      v23(v11, v4);
    }

    else
    {

      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

void sub_1D11B8F68(uint64_t a1)
{

  v14 = sub_1D1113220(v2, v1);
  sub_1D1196DF8(&v14);
  v3 = v14;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v4 = *(v14 + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  v4 = sub_1D13910DC();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D10FDEAC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v14;
    sub_1D111A42C();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      v9 = sub_1D11B87C8(v8);
      if (v9)
      {
        v10 = v9;
        sub_1D106F424();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D139E810;
        *(v11 + 32) = v10;
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v14 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D10FDEAC((v12 > 1), v13 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v13 + 1;
      *(v5 + 8 * v13 + 32) = v11;
    }

    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
}

uint64_t SignedClinicalDataImporter.__allocating_init(healthStore:data:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_cachedSource) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = [objc_allocWithZone(MEMORY[0x1E69A3FD8]) initWithHealthStore_];
  sub_1D11B9224(a2, v4 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data);
  return v4;
}

uint64_t SignedClinicalDataImporter.init(healthStore:data:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_cachedSource) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E69A3FD8]) initWithHealthStore_];
  sub_1D11B9224(a2, v2 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data);
  return v2;
}

uint64_t sub_1D11B9224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1D11B92A8()
{
  v51[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11BD5D8(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1D138D39C();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_cachedSource);
  if (!v17)
  {
    v43 = OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_cachedSource;
    v44 = 0;
    v45 = v13;
    v46 = v8;
    sub_1D11B9E44(v0 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v49;
    v22 = *(v49 + 32);
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v0;
      v23 = v46;
      v22(v10, v16, v46);
      sub_1D106F934(0, &qword_1EC60CB28, 0x1E69A3FD0);
      v24 = sub_1D138D2DC();
      v25 = v50;
      v27 = sub_1D11B97E4(v24, v26);
      if (!v25)
      {
        v40 = v27;
        (*(v21 + 8))(v10, v23);
        v41 = *(v48 + v43);
        *(v48 + v43) = v40;
        v10 = v40;

        v17 = v44;
        goto LABEL_3;
      }

      swift_willThrow();
    }

    else
    {
      v10 = v45;
      v28 = v46;
      v22(v45, v16, v46);
      LODWORD(v43) = sub_1D138D34C();
      v29 = v7;
      (*(v21 + 56))(v7, 1, 1, v28);
      v30 = v4;
      sub_1D138D56C();
      v31 = sub_1D138D30C();
      if ((*(v21 + 48))(v7, 1, v28) == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = sub_1D138D30C();
        (*(v21 + 8))(v29, v28);
      }

      v33 = v47;
      v34 = v48;
      v35 = sub_1D138D4EC();
      v36 = objc_opt_self();
      v51[0] = 0;
      v37 = [v36 signedClinicalDataFileWithURL:v31 sourceURL:v32 receivedDate:v35 countryOfOrigin:0 error:v51];

      if (v37)
      {
        v38 = *(v34 + 8);
        v39 = v51[0];
        v38(v30, v33);
        v10 = [objc_allocWithZone(MEMORY[0x1E69A3FD0]) initWithFile:v37 type:1];

        if (v43)
        {
          sub_1D138D32C();
        }

        (*(v21 + 8))(v45, v46);
        v17 = v44;
        goto LABEL_3;
      }

      v42 = v51[0];
      sub_1D138D2BC();

      swift_willThrow();
      (*(v34 + 8))(v30, v33);
      if (v43)
      {
        sub_1D138D32C();
      }

      v23 = v46;
    }

    (*(v21 + 8))(v10, v23);
    return v10;
  }

  v10 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_cachedSource);
LABEL_3:
  v18 = v17;
  return v10;
}

id sub_1D11B97E4(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D139012C();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() sourceWithQRCodeValue:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1D138D2BC();

    swift_willThrow();
  }

  return v3;
}

void SignedClinicalDataImporter.parseRecords(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = sub_1D138D39C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11B9E44(v3 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    v16 = sub_1D138D30C();
    v17 = [v16 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL];

    (*(v10 + 8))(v12, v9);
    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v18 = 0;
  }

  v19 = sub_1D11B92A8();
  sub_1D138F06C();
  v20 = sub_1D138F0AC();
  v21 = sub_1D139081C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D101F000, v20, v21, "SignedClinicalDataImporter: parsing SCD records", v22, 2u);
    MEMORY[0x1D38882F0](v22, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = *(v3 + 24);
  v24 = swift_allocObject();
  v25 = v29;
  v26 = v30;
  *(v24 + 16) = v3;
  *(v24 + 24) = v25;
  *(v24 + 32) = v26;
  *(v24 + 40) = v18;
  aBlock[4] = sub_1D11BC2C8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_29;
  v27 = _Block_copy(aBlock);

  [v23 parseSignedClinicalData:v19 options:1 completion:v27];

  _Block_release(v27);
}

uint64_t sub_1D11B9E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D11B9EA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = a6;
  v11 = sub_1D138FECC();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1D138FF0C();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v25 = sub_1D1390A7C();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 56) = v24;
  aBlock[4] = sub_1D11BD5C4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_47_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10899AC();
  sub_1D11BD5D8(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  v21 = v25;
  MEMORY[0x1D3886400](0, v16, v13, v18);
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

void sub_1D11BA1A0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), __objc2_category **a5, int a6)
{
  LODWORD(v60) = a6;
  v59 = a3;
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v55 - v15;
  *&v19 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v21 = v55 - v20;
  if (v18 && (v22 = [v18 signedClinicalData]) != 0)
  {
    v23 = v22;
    v55[2] = v16;
    sub_1D138F06C();
    v24 = sub_1D138F0AC();
    v25 = sub_1D139081C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D101F000, v24, v25, "SignedClinicalDataImporter: parsing SCD records completed", v26, 2u);
      MEMORY[0x1D38882F0](v26, -1, -1);
    }

    v28 = *(v11 + 8);
    v27 = v11 + 8;
    v58 = v10;
    v55[1] = v28;
    v28(v21, v10);
    v29 = [v23 items];
    sub_1D106F934(0, &qword_1EC60CB20, 0x1E69A3FC0);
    v30 = sub_1D139045C();

    v62[0] = MEMORY[0x1E69E7CC0];
    if (v30 >> 62)
    {
      goto LABEL_26;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v23;
    for (i = a4; v31; i = a4)
    {
      v61 = v27;
      v55[0] = a5;
      v32 = 0;
      v27 = v30 & 0xC000000000000001;
      v23 = (v30 & 0xFFFFFFFFFFFFFF8);
      a5 = &off_1E83DF000;
      while (1)
      {
        if (v27)
        {
          v33 = MEMORY[0x1D3886B70](v32, v30);
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        a4 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v35 = [v33 mainRecord];

        MEMORY[0x1D3885D90]();
        if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        ++v32;
        if (a4 == v31)
        {
          v37 = v62[0];
          a4 = i;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v31 = sub_1D13910DC();
      v56 = v23;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_28:

    v51 = objc_allocWithZone(type metadata accessor for SignedClinicalDataPreviewViewController());
    v52 = v59;

    v53 = sub_1D12DA24C(v37, v52);
    v54 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v54 setModalPresentationStyle_];
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    LOBYTE(v62[0]) = v60;
    *(v62 + 1) = 0;
    sub_1D12247FC(v62);
    (a4)(v54);
  }

  else
  {
    v61 = v11;
    if (a2)
    {
      v36 = a2;
    }

    else
    {
      v36 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    v38 = a2;
    sub_1D138F06C();
    v39 = v36;
    v40 = sub_1D138F0AC();
    v41 = sub_1D13907FC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60 = a2;
      v44 = v43;
      v62[0] = v43;
      *v42 = 136315138;
      swift_getErrorValue();
      v45 = sub_1D13916FC();
      v47 = sub_1D11DF718(v45, v46, v62);
      v58 = v10;
      v48 = v47;

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1D101F000, v40, v41, "SignedClinicalDataImporter: failed to parse SCD, error: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v49 = v44;
      a2 = v60;
      MEMORY[0x1D38882F0](v49, -1, -1);
      MEMORY[0x1D38882F0](v42, -1, -1);

      (*(v61 + 8))(v13, v58);
    }

    else
    {

      (*(v61 + 8))(v13, v10);
    }

    v50 = sub_1D11BC11C(a2, 0, 0);
    a4();
  }
}

void sub_1D11BAA58(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void SignedClinicalDataImporter.parseAndVerifyRecords(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - v9 + 8;
  v11 = sub_1D11B92A8();
  sub_1D138F06C();
  v12 = sub_1D138F0AC();
  v13 = sub_1D139081C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D101F000, v12, v13, "SignedClinicalDataImporter: parsing & verifying SCD records", v14, 2u);
    MEMORY[0x1D38882F0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = sub_1D11BC2F0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);

  [v15 parseSignedClinicalData:v11 options:0 completion:v17];

  _Block_release(v17);
}

uint64_t sub_1D11BAE7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138FECC();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D138FF0C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v14 = sub_1D1390A7C();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a2;
  aBlock[4] = sub_1D11BD5B8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_41_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  v18 = a2;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10899AC();
  sub_1D11BD5D8(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

double sub_1D11BB158(uint64_t a1, __objc2_category **a2, unint64_t a3, void *a4)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  *&v17 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v19 = &v52 - v18;
  if (!v16 || (v20 = [v16 signedClinicalData]) == 0)
  {
    if (a4)
    {
      v33 = a4;
      sub_1D138F06C();
      v34 = a4;
      v35 = sub_1D138F0AC();
      v36 = sub_1D13907FC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v54 = a2;
        v38 = v37;
        v39 = swift_slowAlloc();
        v55 = v39;
        *v38 = 136315138;
        swift_getErrorValue();
        v40 = sub_1D13916FC();
        v42 = sub_1D11DF718(v40, v41, &v55);
        v53 = v8;
        v43 = v42;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1D101F000, v35, v36, "SignedClinicalDataImporter: failed to parse & verify SCD, error: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1D38882F0](v39, -1, -1);
        v44 = v38;
        a2 = v54;
        MEMORY[0x1D38882F0](v44, -1, -1);

        (*(v9 + 8))(v11, v53);
LABEL_25:
        (a2)(0);
        return result;
      }

      v49 = *(v9 + 8);
      v50 = v11;
    }

    else
    {
      sub_1D138F06C();
      v46 = sub_1D138F0AC();
      v47 = sub_1D13907FC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1D101F000, v46, v47, "SignedClinicalDataImporter: failed to parse & verify SCD, no error returned", v48, 2u);
        MEMORY[0x1D38882F0](v48, -1, -1);
      }

      v49 = *(v9 + 8);
      v50 = v14;
    }

    v49(v50, v8);
    goto LABEL_25;
  }

  v21 = v20;
  sub_1D138F06C();
  v22 = sub_1D138F0AC();
  v23 = sub_1D139081C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D101F000, v22, v23, "SignedClinicalDataImporter: parsing & verifying SCD records completed", v24, 2u);
    MEMORY[0x1D38882F0](v24, -1, -1);
  }

  (*(v9 + 8))(v19, v8);
  v25 = [v21 items];
  sub_1D106F934(0, &qword_1EC60CB20, 0x1E69A3FC0);
  v26 = sub_1D139045C();

  v55 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v53 = a3;
    v54 = a2;
    v28 = 0;
    a3 = v26 & 0xC000000000000001;
    a2 = &off_1E83DF000;
    while (1)
    {
      if (a3)
      {
        v29 = MEMORY[0x1D3886B70](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 mainRecord];

      MEMORY[0x1D3885D90]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D13904BC();
      }

      sub_1D13904FC();
      ++v28;
      if (v31 == i)
      {
        v45 = v55;
        a2 = v54;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_30:

  (a2)(v45);

  return result;
}

void SignedClinicalDataImporter.storeRecords(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1D138D39C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11B9E44(v3 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    v16 = sub_1D138D30C();
    v17 = [v16 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL];

    (*(v10 + 8))(v12, v9);
    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v18 = 0;
  }

  v19 = sub_1D11B92A8();
  sub_1D138F06C();
  v20 = sub_1D138F0AC();
  v21 = sub_1D139081C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D101F000, v20, v21, "SignedClinicalDataImporter: storing SCD records", v22, 2u);
    MEMORY[0x1D38882F0](v22, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = *(v3 + 24);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v18;
  v25 = v29;
  *(v24 + 32) = v28;
  *(v24 + 40) = v25;
  aBlock[4] = sub_1D11BC2F8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_12_1;
  v26 = _Block_copy(aBlock);

  [v23 storeSignedClinicalData:v19 completion:v26];

  _Block_release(v26);
}

void sub_1D11BBBF8(void *a1, void *a2, uint64_t a3, int a4, void (*a5)(void, void, void *), __objc2_category **a6)
{
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v16 = [a1 signedClinicalData]) != 0)
  {
    LOBYTE(v29) = a4;
    v17 = v16;
    sub_1D11BD154(v16, a2, &v29, a5, a6);
  }

  else
  {
    v28 = a4;
    sub_1D138F06C();
    v18 = a2;
    v19 = sub_1D138F0AC();
    v20 = sub_1D13907FC();

    if (os_log_type_enabled(v19, v20))
    {
      v27[0] = a5;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v27[1] = a6;
      if (a2)
      {
        swift_getErrorValue();
        v23 = sub_1D13916FC();
        v25 = v24;
      }

      else
      {
        v25 = 0xE500000000000000;
        v23 = 0x7D6C696E7BLL;
      }

      v26 = sub_1D11DF718(v23, v25, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D101F000, v19, v20, "SignedClinicalDataImporter: failed to store SCD, error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D38882F0](v22, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);

      (*(v12 + 8))(v15, v11);
      a5 = v27[0];
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    LOBYTE(v29) = v28;
    *(&v29 + 1) = 257;
    sub_1D12247FC(&v29);
    a5(0, 0, a2);
  }
}

BOOL sub_1D11BBECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1D13915FC();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1D138D2AC();

  if ([v11 hk_isHealthKitError])
  {
    v12 = [v11 code];

    return v12 == 115;
  }

  else
  {

    return 0;
  }
}

uint64_t SignedClinicalDataImporter.deinit()
{
  sub_1D11BC308(v0 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data);

  return v0;
}

uint64_t SignedClinicalDataImporter.__deallocating_deinit()
{
  sub_1D11BC308(v0 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data);

  return swift_deallocClassInstance();
}

id sub_1D11BC11C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  if (!a3)
  {
    sub_1D138D1CC();
  }

  v5 = sub_1D139012C();

  v6 = sub_1D139012C();

  if (a1)
  {
    a1 = sub_1D138D2AC();
  }

  v7 = [objc_opt_self() basicAlertControllerWithTitle:v5 message:v6 internalError:{a1, 0xE000000000000000}];

  return v7;
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D11BC308(uint64_t a1)
{
  v2 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D11BC38C(uint64_t a1)
{
  result = type metadata accessor for SignedClinicalDataImporter.DataType(319);
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

void sub_1D11BC460(uint64_t a1)
{
  sub_1D11BC4E4(319, &qword_1EC60CB10);
  if (v1 <= 0x3F)
  {
    sub_1D11BC4E4(319, &qword_1EC60CB18);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D11BC4E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D138D39C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double sub_1D11BC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = aBlock - v11 + 8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;

  v14 = sub_1D11B92A8();
  sub_1D138F06C();
  v15 = sub_1D138F0AC();
  v16 = sub_1D139081C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v9;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D101F000, v15, v16, "SignedClinicalDataImporter: parsing & verifying SCD records", v18, 2u);
    v19 = v18;
    v9 = v17;
    MEMORY[0x1D38882F0](v19, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v20 = *(a1 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D11BC92C;
  *(v21 + 24) = v13;
  aBlock[4] = sub_1D11BD658;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_25;
  v22 = _Block_copy(aBlock);

  [v20 parseSignedClinicalData:v14 options:0 completion:v22];

  _Block_release(v22);

  return result;
}

double sub_1D11BC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138F0BC();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37[4] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37[3] = v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v15 = sub_1D138D39C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SignedClinicalDataImporter.DataType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v37[2] = a3;
  v38 = v22;
  v22[4] = a4;
  sub_1D11B9E44(a1 + OBJC_IVAR____TtC15HealthRecordsUI26SignedClinicalDataImporter_data, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37[1] = a4;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v16 + 32))(v18, v21, v15);

    v24 = sub_1D138D30C();
    v25 = [v24 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL];

    (*(v16 + 8))(v18, v15);
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v27 = *(v16 + 8);

    v27(v21, v15);
    v26 = 0;
  }

  v28 = sub_1D11B92A8();
  sub_1D138F06C();
  v29 = sub_1D138F0AC();
  v30 = sub_1D139081C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D101F000, v29, v30, "SignedClinicalDataImporter: storing SCD records", v31, 2u);
    MEMORY[0x1D38882F0](v31, -1, -1);
  }

  (*(v39 + 8))(v14, v40);
  v32 = *(a1 + 24);
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = v26;
  v34 = v38;
  *(v33 + 32) = sub_1D11BD108;
  *(v33 + 40) = v34;
  aBlock[4] = sub_1D11BD654;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_35_1;
  v35 = _Block_copy(aBlock);

  [v32 storeSignedClinicalData:v28 completion:v35];

  _Block_release(v35);

  return result;
}

uint64_t objectdestroyTm_6(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_1D11BD154(void *a1, unint64_t a2, _BYTE *a3, void (*a4)(void, void, void), __objc2_category **a5)
{
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v32 - v13;
  LOBYTE(a3) = *a3;
  if (qword_1EE06A170 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    LOBYTE(v41) = a3;
    *(&v41 + 1) = 1;
    sub_1D12247FC(&v41);
    a3 = [a1 items];
    sub_1D106F934(0, &qword_1EC60CB20, 0x1E69A3FC0);
    v15 = sub_1D139045C();

    v41 = MEMORY[0x1E69E7CC0];
    if (v15 >> 62)
    {
      break;
    }

    a1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_18;
    }

LABEL_4:
    v32 = a2;
    v33 = v10;
    v34 = v9;
    v35 = a5;
    v36 = a4;
    a2 = 0;
    v10 = v15 & 0xC000000000000001;
    a4 = (v15 & 0xFFFFFFFFFFFFFF8);
    a5 = &off_1E83DF000;
    while (1)
    {
      if (v10)
      {
        v16 = MEMORY[0x1D3886B70](a2, v15);
      }

      else
      {
        if (a2 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v16 = *(v15 + 8 * a2 + 32);
      }

      v17 = v16;
      v9 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v18 = [v16 mainRecord];
      LOBYTE(a3) = v18;

      MEMORY[0x1D3885D90]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      ++a2;
      if (v9 == a1)
      {
        v19 = v41;
        a4 = v36;
        v10 = v33;
        v9 = v34;
        a2 = v32;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  a1 = sub_1D13910DC();
  if (a1)
  {
    goto LABEL_4;
  }

LABEL_18:
  v19 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (a2)
  {
    swift_getErrorValue();
    v20 = v39;
    v21 = v40;
    v22 = a2;
    if (sub_1D11BBECC(v20, v21))
    {
      v23 = v37;
      sub_1D138F06C();
      v24 = sub_1D138F0AC();
      v25 = sub_1D139081C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D101F000, v24, v25, "SignedClinicalDataImporter: storing SCD records completed (all records were duplicates)", v26, 2u);
        MEMORY[0x1D38882F0](v26, -1, -1);
      }

      (*(v10 + 8))(v23, v9);
      a4(v19, 1, 0);

      return result;
    }
  }

  v28 = v38;
  sub_1D138F06C();
  v29 = sub_1D138F0AC();
  v30 = sub_1D139081C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1D101F000, v29, v30, "SignedClinicalDataImporter: storing SCD records completed", v31, 2u);
    MEMORY[0x1D38882F0](v31, -1, -1);
  }

  (*(v10 + 8))(v28, v9);
  a4(v19, 0, 0);

  return result;
}

void sub_1D11BD5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11BD674()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11BDF14(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_1D138F27C();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F3FC();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15HealthRecordsUI12TextItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v15, v46);
  if (v47)
  {
    v42 = v9;
    sub_1D10A7254();
    type metadata accessor for TextItem();
    if (swift_dynamicCast())
    {
      v16 = v45;
      MEMORY[0x1D38864F0]();

      sub_1D138F3BC();
      v17 = v16[4];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D138F2FC();
        sub_1D138F2CC();
        v19(v46, 0);
      }

      v20 = v16[5];
      v21 = v42;
      if (v20)
      {
        v22 = v20;
        v23 = sub_1D138F2FC();
        sub_1D138F2DC();
        v23(v46, 0);
      }

      v47 = v12;
      v48 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      v25 = v44;
      (*(v44 + 16))(boxed_opaque_existential_1, v14, v12);
      MEMORY[0x1D3886480](v46);
      v26 = v16[6];
      if (v26)
      {
        v27 = v26;
        sub_1D138F26C();
        v41 = v27;
        sub_1D138F23C();
        v28 = v21;
        v29 = v43;
        (*(v43 + 16))(v8, v11, v28);
        (*(v29 + 56))(v8, 0, 1, v28);
        MEMORY[0x1D38864A0](v8);

        (*(v29 + 8))(v11, v28);
      }

      sub_1D1390B8C();
      if (v16[9])
      {

        v30 = sub_1D139012C();
      }

      else
      {
        v30 = 0;
      }

      [v1 setAccessibilityIdentifier_];

      return (*(v25 + 8))(v14, v12);
    }
  }

  else
  {
    sub_1D10A72B8(v46);
  }

  sub_1D138F06C();
  v31 = v1;
  v32 = sub_1D138F0AC();
  v33 = sub_1D13907FC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136446210;
    sub_1D10A71C0(v1 + v15, v46);
    sub_1D11BDF14(0, &qword_1EC60B620, sub_1D10A7254);
    v36 = sub_1D139020C();
    v38 = sub_1D11DF718(v36, v37, &v45);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D101F000, v32, v33, "Incorrect view model for TextItemCell: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1D38882F0](v35, -1, -1);
    MEMORY[0x1D38882F0](v34, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1D11BDD50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TextItemCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D11BDDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI12TextItemCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D11BDE10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI12TextItemCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D11BD674();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D11BDE7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D11BDEE0;
}

uint64_t sub_1D11BDEE0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D11BD674();
  }

  return result;
}

void sub_1D11BDF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D11BDF68(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10A71C0(v1 + v3, v6);
  if (v7)
  {
    sub_1D10A7254();
    type metadata accessor for AccountUpgradeItem(0);
    if (swift_dynamicCast())
    {

      [v1 setNeedsUpdateConfiguration];
    }

    v4 = a1;
  }

  else
  {
    sub_1D10A72B8(a1);
    v4 = v6;
  }

  return sub_1D10A72B8(v4);
}

void (*sub_1D11BE03C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1D11BE0C4;
}

void sub_1D11BE0C4(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D10A71C0(v3[6] + v3[7], v3);
    if (v3[3])
    {
      sub_1D10A7254();
      type metadata accessor for AccountUpgradeItem(0);
      if (swift_dynamicCast())
      {
        v4 = v3[6];

        [v4 setNeedsUpdateConfiguration];
      }
    }

    else
    {
      sub_1D10A72B8(v3);
    }
  }

  free(v3);
}

double sub_1D11BE26C(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccountUpgradeCell();
  v2 = objc_msgSendSuper2(&v13, sel__bridgedConfigurationState);
  sub_1D138F1FC();

  v3 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v3, &v10);
  if (*(&v11 + 1))
  {
    sub_1D10A7254();
    type metadata accessor for AccountUpgradeItem(0);
    if (swift_dynamicCast())
    {
      v4 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D10A72B8(&v10);
  }

  v4 = 0;
LABEL_6:
  if (qword_1EC608D00 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC60CB38;
  if (v4)
  {
    type metadata accessor for AccountUpgradeItem(0);
    sub_1D11BF120();
    v6 = v5;

    sub_1D139116C();
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = qword_1EC60CB38;
  }

  sub_1D138F22C();

  return result;
}

uint64_t sub_1D11BE3E8()
{
  sub_1D11BF0CC(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  sub_1D11BF0CC(0, &qword_1EC60CB60, MEMORY[0x1E69DC1B8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1D138F27C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11BE77C();
  sub_1D138F26C();
  v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_1D138F23C();
  sub_1D138F4BC();
  v11 = sub_1D138F4AC();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_1D138F24C();
  (*(v7 + 16))(v2, v9, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  MEMORY[0x1D38864A0](v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_1D11BE658()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

  return v0;
}

void sub_1D11BE77C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hasSetUpViews;
  if ((*(v0 + OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hasSetUpViews) & 1) == 0)
  {
    v2 = objc_allocWithZone(type metadata accessor for AccountUpgradeTileView(0));
    v3 = v0;
    v4 = sub_1D1373020(v3, v2);
    v5 = [v3 contentView];
    v6 = v4;
    [v5 addSubview_];

    v7 = [v3 contentView];
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    [v6 setMaximumContentSizeCategory_];
    v9 = [v3 contentView];
    [v6 hk:v9 alignConstraintsWithView:?];

    *(v0 + v1) = 1;
  }
}

void sub_1D11BE8D4()
{
  sub_1D11BF0CC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - v2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v4, v16);
  if (v17)
  {
    sub_1D10A7254();
    type metadata accessor for AccountUpgradeItem(0);
    if (swift_dynamicCast())
    {
      v5 = v15[1];
      v6 = v0;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
LABEL_6:
        v9 = v7;

        v10 = sub_1D13905DC();
        (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
        sub_1D13905AC();

        v11 = v6;
        v12 = sub_1D139059C();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E85E0];
        v13[2] = v12;
        v13[3] = v14;
        v13[4] = v5;
        v13[5] = v9;
        sub_1D107877C(0, 0, v3, &unk_1D13A76D0, v13);
      }

      else
      {
        while (1)
        {

          v8 = [v6 nextResponder];
          if (!v8)
          {
            break;
          }

          v6 = v8;
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          if (v7)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  else
  {
    sub_1D10A72B8(v16);
  }
}

uint64_t sub_1D11BEB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D13905AC();
  v5[4] = sub_1D139059C();
  v7 = sub_1D139055C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D11BEBA8, v7, v6);
}

uint64_t sub_1D11BEBA8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC15HealthRecordsUI16AccountLoginItem_action;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1D10A3734;
  v4 = v0[3];

  return sub_1D1316330(v1 + v2, v4);
}

id sub_1D11BED18(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_disableAction] = 0;
  v1[OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hideDismiss] = 1;
  v1[OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_hasSetUpViews] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AccountUpgradeCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1D11BEDE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountUpgradeCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D11BEE50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI18AccountUpgradeCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

void (*sub_1D11BEEAC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D11BE03C(v2);
  return sub_1D10B0564;
}

uint64_t sub_1D11BEF44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138D5EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D11BEFD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D11BEB10(a1, v4, v5, v7, v6);
}

uint64_t sub_1D11BF094()
{
  result = sub_1D139012C();
  qword_1EC60CB38 = result;
  return result;
}

void sub_1D11BF0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D11BF120()
{
  result = qword_1EC60CB68;
  if (!qword_1EC60CB68)
  {
    type metadata accessor for AccountUpgradeItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60CB68);
  }

  return result;
}

id sub_1D11BF178()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    v7 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    LODWORD(v8) = 1132068864;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    [v5 setNumberOfLines_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1D11BF2E8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    sub_1D106F934(0, &qword_1EE06A540, 0x1E69DCAB8);
    v6 = sub_1D1390CFC();
    [v5 setImage_];

    v7 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTintColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v8) = 1144750080;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_1D11BF474(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_margin] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_topAndBottomDistance] = 0x4020000000000000;
  v10 = &v5[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item];
  v11 = type metadata accessor for NavigationCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v17.receiver = v5;
  v17.super_class = v11;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  sub_1D11BF750();
  sub_1D11BFD80(v12);
  v13 = sub_1D11C0038(v12);
  v14 = objc_opt_self();
  sub_1D1121F80(v13);
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);
  v15 = sub_1D139044C();

  [v14 activateConstraints_];

  return v12;
}

id sub_1D11BF604(void *a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_margin] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_topAndBottomDistance] = 0x4020000000000000;
  v3 = &v1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item];
  v4 = type metadata accessor for NavigationCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1D11BF750()
{
  v1 = [v0 contentView];
  v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v0 contentView];
  v4 = [v3 heightAnchor];

  v5 = [v4 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v6) = 1148829696;
  [v5 setPriority_];
  [v5 setActive_];
  v7 = [v0 contentView];
  v8 = sub_1D11BF178();
  [v7 addSubview_];

  v9 = [v0 contentView];
  v10 = sub_1D11BF2E8();
  [v9 addSubview_];
}

void sub_1D11BF8F4(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NavigationCell();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 legibilityWeight];

  if (!a1 || v4 != [a1 legibilityWeight])
  {
    v5 = sub_1D11BF178();
    sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    v6 = sub_1D1390C6C();
    [v5 setFont_];
  }
}

void sub_1D11BFA68()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item;
  swift_beginAccess();
  sub_1D11C1AD8(v1 + v6, v22, &qword_1EC60B620, sub_1D10A7254);
  if (!v23)
  {
    sub_1D11C1B44(v22, &qword_1EC60B620, sub_1D10A7254);
LABEL_6:
    sub_1D138F06C();
    v11 = v1;
    v12 = sub_1D138F0AC();
    v13 = sub_1D13907FC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v2;
      v21 = v15;
      v16 = v15;
      *v14 = 136446210;
      sub_1D11C1AD8(v1 + v6, v22, &qword_1EC60B620, sub_1D10A7254);
      sub_1D11C19D4(0, &qword_1EC60B620, sub_1D10A7254);
      v17 = sub_1D139020C();
      v19 = sub_1D11DF718(v17, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D101F000, v12, v13, "Incorrect view model for NavigationCell: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D38882F0](v16, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      (*(v3 + 8))(v5, v20);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return;
  }

  sub_1D10A7254();
  type metadata accessor for NavigationItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v21;
  v8 = sub_1D11BF178();
  v22[0] = *(v7 + 32);
  LOBYTE(v21) = *(v7 + 33);
  sub_1D11C189C(v22, &v21);
  if (v9)
  {
    v10 = sub_1D139012C();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText_];
}

uint64_t sub_1D11BFD80(char *a1)
{
  v17 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D11BF178();
  v3 = [v2 leadingAnchor];

  v4 = [a1 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v7 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel;
  v8 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___titleLabel] topAnchor];
  v9 = [a1 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:8.0];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v12 = [*&a1[v7] bottomAnchor];
  v13 = [a1 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-8.0];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return v17;
}

uint64_t sub_1D11C0038(char *a1)
{
  v17 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D11BF2E8();
  v3 = [v2 leadingAnchor];

  v4 = sub_1D11BF178();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:8.0];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v7 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView;
  v8 = [*&a1[OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell____lazy_storage___disclosureImageView] trailingAnchor];
  v9 = [a1 contentView];
  v10 = [v9 trailingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:-16.0];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  v12 = [*&a1[v7] centerYAnchor];
  v13 = [a1 contentView];
  v14 = [v13 centerYAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  MEMORY[0x1D3885D90]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  return v17;
}

void sub_1D11C02E4(uint64_t a1, void *a2)
{
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11C19D4(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v125 - v13;
  v15 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item;
  swift_beginAccess();
  sub_1D11C1AD8(v2 + v15, &v141, &qword_1EC60B620, sub_1D10A7254);
  if (!v142)
  {
    sub_1D11C1B44(&v141, &qword_1EC60B620, sub_1D10A7254);
    return;
  }

  sub_1D10A7254();
  type metadata accessor for NavigationItem();
  v16 = swift_dynamicCast();
  if (v16)
  {
    v17 = v139[0];
    v18 = *(v139[0] + 32);
    if (v18 <= 1)
    {
      if (*(v139[0] + 32))
      {
        v19 = 2;
        goto LABEL_9;
      }

LABEL_44:

      return;
    }

    if (v18 == 2)
    {
      v19 = 3;
LABEL_9:
      v136 = a1;
      v137 = a2;
      if (qword_1EE06AF70 == -1)
      {
LABEL_10:
        v20 = *(v17 + 40);
        v139[0] = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
        MEMORY[0x1EEE9AC00](v16);
        *(&v125 - 2) = v20;
        *(&v125 - 1) = v21;
        sub_1D138D96C();
        sub_1D106F934(0, &qword_1EE06B6B0, off_1E83DAC90);
        sub_1D11C1A90(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);
        v22 = v17;
        v23 = v20;

        sub_1D138ED0C();

        v24 = v141;
        if (qword_1EE069ED0 != -1)
        {
          swift_once();
        }

        LOBYTE(v141) = *(v22 + 33);
        v25 = objc_allocWithZone(type metadata accessor for UserDomainConceptListViewController(0));
        v26 = v24;
        v27 = sub_1D137AFD8(&v141, v19, v26);
        sub_1D1096B28(v136, &v141);
        v28 = v142;
        if (v142)
        {
          v29 = __swift_project_boxed_opaque_existential_1Tm(&v141, v142);
          v30 = *(v28 - 8);
          v31 = MEMORY[0x1EEE9AC00](v29);
          v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v33, v31);
          v34 = sub_1D139161C();
          (*(v30 + 8))(v33, v28);
          __swift_destroy_boxed_opaque_existential_1Tm(&v141);
        }

        else
        {
          v34 = 0;
        }

        [v137 showViewController:v27 sender:{v34, v125}];

        swift_unknownObjectRelease();

        return;
      }

LABEL_67:
      v16 = swift_once();
      goto LABEL_10;
    }

    v130 = v11;
    v131 = v14;
    v132 = v6;
    v35 = *(v139[0] + 33);
    v36 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
    if (v36)
    {
      v37 = v36;
      sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
      sub_1D106F934(0, &qword_1EE06B730, off_1E83DAD18);
      sub_1D11C1A28();
      v38 = sub_1D138FFFC();

      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v40 = sub_1D12F3C24(v39, v38);

      if (!v40)
      {
        goto LABEL_44;
      }

      v128 = v40;
      v134 = v35;
      v125 = v8;
      v136 = a1;
      v137 = a2;
      if (qword_1EE06AF70 != -1)
      {
        v41 = swift_once();
      }

      v129 = v17;
      v42 = *(v17 + 40);
      v139[0] = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v41);
      *(&v125 - 2) = v42;
      *(&v125 - 1) = v43;
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0, off_1E83DAC90);
      sub_1D11C1A90(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);
      v44 = v42;

      sub_1D138ED0C();

      v127 = v141;
      v45 = [objc_opt_self() predicateForMedicalRecordWithState_];
      LOBYTE(v141) = v134;
      v17 = DisplayCategory.Kind.medicalTypes.getter();
      v46 = sub_1D109C3D4(MEMORY[0x1E69E7CC0]);
      if (v17 >> 62)
      {
        v19 = sub_1D13910DC();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v133 = v5;
      v138 = v45;
      if (v19)
      {
        v47 = 0;
        v135 = (v17 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x1D3886B70](v47, v17);
          }

          else
          {
            if (v47 >= v135[2])
            {
              goto LABEL_66;
            }

            v50 = *(v17 + 8 * v47 + 32);
          }

          v51 = v50;
          v52 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if ((v46 & 0xC000000000000001) != 0)
          {
            if (v46 >= 0)
            {
              v46 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v53 = v45;
            v54 = sub_1D13910DC();
            if (__OFADD__(v54, 1))
            {
              goto LABEL_64;
            }

            v46 = sub_1D12F570C(v46, v54 + 1);
          }

          else
          {
            v55 = v45;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v141 = v46;
          v58 = sub_1D129E360(v51);
          v59 = *(v46 + 16);
          v60 = (v57 & 1) == 0;
          v61 = v59 + v60;
          if (__OFADD__(v59, v60))
          {
            goto LABEL_63;
          }

          v62 = v57;
          if (*(v46 + 24) >= v61)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D1181B2C();
            }
          }

          else
          {
            sub_1D117B4E4(v61, isUniquelyReferenced_nonNull_native);
            v63 = sub_1D129E360(v51);
            if ((v62 & 1) != (v64 & 1))
            {
              goto LABEL_70;
            }

            v58 = v63;
          }

          v45 = v138;
          v46 = v141;
          if (v62)
          {
            v48 = *(v141 + 56);
            v49 = *(v48 + 8 * v58);
            *(v48 + 8 * v58) = v138;
          }

          else
          {
            *(v141 + 8 * (v58 >> 6) + 64) |= 1 << v58;
            *(*(v46 + 48) + 8 * v58) = v51;
            *(*(v46 + 56) + 8 * v58) = v45;
            v65 = *(v46 + 16);
            v66 = __OFADD__(v65, 1);
            v67 = v65 + 1;
            if (v66)
            {
              goto LABEL_65;
            }

            *(v46 + 16) = v67;
          }

          ++v47;
          if (v52 == v19)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_47:

      if (qword_1EE069ED0 != -1)
      {
        swift_once();
      }

      sub_1D10980C0(v46);
      v69 = v68;

      v70 = v131;
      v71 = v132;
      (*(v132 + 56))(v131, 1, 1, v133);
      v126 = type metadata accessor for MedicalRecordTimelineViewController(0);
      v72 = objc_allocWithZone(v126);
      v73 = &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
      *v73 = 0;
      v73[1] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
      v74 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
      v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
      v75 = &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v75 = 0;
      v75[8] = 1;
      v76 = &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v76 = 0;
      v76[8] = 1;
      v77 = &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
      sub_1D138E37C();
      v78 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v79 = v127;
      v80 = v128;
      v81 = v128;
      v82 = [v78 init];
      v83 = MEMORY[0x1E69A3658];
      *v77 = v82;
      v77[1] = v83;
      v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v79;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v80;
      v127 = MEMORY[0x1E69695A8];
      sub_1D11C1AD8(v70, &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId], &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = v69;
      v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
      v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
      v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
      v84 = *&v72[v74];
      v85 = &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
      *v85 = 0;
      *(v85 + 1) = 0;
      *(v85 + 2) = v84;
      *(v85 + 3) = v80;
      v85[32] = 0;
      v86 = objc_opt_self();
      v87 = v84;
      v88 = v81;

      v89 = v79;
      v135 = v88;
      v90 = v86;
      v91 = v70;
      v92 = [v90 clearColor];
      v142 = sub_1D138E90C();
      v143 = MEMORY[0x1E69A3750];
      __swift_allocate_boxed_opaque_existential_1(&v141);
      sub_1D138E8FC();
      sub_1D102CC18(&v141, &v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
      v93 = v89;
      v94 = [v89 healthStore];
      v95 = sub_1D107D9D8(v94, v80, 0, 0, v69, v70, 0);

      *&v72[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v95;
      v96 = objc_allocWithZone(MEMORY[0x1E69DC840]);
      v97 = v133;
      v98 = [v96 init];
      v140.receiver = v72;
      v140.super_class = v126;
      v99 = objc_msgSendSuper2(&v140, sel_initWithCollectionViewLayout_, v98);

      v100 = v99;
      sub_1D1072338();

      sub_1D138F6CC();

      v101 = BYTE8(v141);
      v102 = &v100[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v102 = v141;
      v102[8] = v101;

      sub_1D138F6CC();

      v103 = v141;
      v104 = BYTE8(v141);
      if (v141 <= 1)
      {
        v105 = 1;
      }

      else
      {
        v105 = v141;
      }

      if (!BYTE8(v141))
      {
        v103 = v105;
      }

      v106 = &v100[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v106 = v103;
      v106[8] = v104;
      v107 = v130;
      sub_1D11C1AD8(v70, v130, &qword_1EC60D6B0, v127);
      if ((*(v71 + 48))(v107, 1, v97) == 1)
      {
        sub_1D11C1B44(v107, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      }

      else
      {
        v108 = v125;
        (*(v71 + 32))(v125, v107, v97);
        sub_1D107B54C(v108);
        (*(v71 + 8))(v108, v97);
      }

      v109 = v136;
      v110 = v137;
      v111 = v138;
      sub_1D107A01C();

      sub_1D11C1B44(v91, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      v112 = [v100 navigationItem];
      [v112 setLargeTitleDisplayMode_];

      LOBYTE(v141) = *(v129 + 32);
      LOBYTE(v139[0]) = v134;
      v113 = v100;
      v114 = sub_1D11C189C(&v141, v139);
      v116 = v115;
      v117 = &v113[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
      swift_beginAccess();
      *v117 = v114;
      v117[1] = v116;

      sub_1D1096B28(v109, &v141);
      v118 = v142;
      if (v142)
      {
        v119 = __swift_project_boxed_opaque_existential_1Tm(&v141, v142);
        v120 = *(v118 - 8);
        v121 = MEMORY[0x1EEE9AC00](v119);
        v123 = &v125 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v120 + 16))(v123, v121);
        v124 = sub_1D139161C();
        (*(v120 + 8))(v123, v118);
        __swift_destroy_boxed_opaque_existential_1Tm(&v141);
      }

      else
      {
        v124 = 0;
      }

      [v110 showViewController:v113 sender:{v124, v125}];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
LABEL_70:
      sub_1D106F934(0, &qword_1EC609EC8, 0x1E696C258);
      sub_1D13916CC();
      __break(1u);
    }
  }
}

id sub_1D11C142C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NavigationCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D11C14F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item;
  swift_beginAccess();
  return sub_1D11C1AD8(v1 + v3, a1, &qword_1EC60B620, sub_1D10A7254);
}

uint64_t sub_1D11C1564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI14NavigationCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D11BFA68();
  return sub_1D11C1B44(a1, &qword_1EC60B620, sub_1D10A7254);
}

void (*sub_1D11C15EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D11C1650;
}

void sub_1D11C1650(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D11BFA68();
  }
}

uint64_t sub_1D11C1684(void *a1, void *a2)
{
  v6[3] = sub_1D106F934(0, &qword_1EC609680, 0x1E69DD250);
  v6[0] = a1;
  v4 = a1;
  sub_1D11C02E4(v6, a2);
  return sub_1D1096BE0(v6);
}

uint64_t sub_1D11C16F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D11C1758(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v2 + 32);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = sub_1D138DA9C();
    }

    else
    {
      v5 = sub_1D138DABC();
    }
  }

  else if (v4)
  {
    v5 = sub_1D138DA8C();
  }

  else
  {
    v5 = sub_1D138DAAC();
  }

  v7 = v5;
  v8 = v6;

  MEMORY[0x1D3885C10](v7, v8);

  return v3;
}

uint64_t sub_1D11C17F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D11C189C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = *a1;
  v3 = *a2;
  if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (v3 == 2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (result == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 != 2)
  {
    return 0;
  }

LABEL_9:
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v4 = sub_1D138D1CC();

  return v4;
}

void sub_1D11C19D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D11C1A28()
{
  result = qword_1EE06B0C8;
  if (!qword_1EE06B0C8)
  {
    sub_1D106F934(255, &qword_1EE06B6C0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B0C8);
  }

  return result;
}

uint64_t sub_1D11C1A90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D11C1AD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D11C19D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D11C1B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D11C19D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1D11C1BA0(double a1)
{
  sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
  v3 = sub_1D1390C6C();
  v4 = sub_1D1390C6C();
  v5 = sub_1D1390C6C();
  if (v1[10] && (sub_1D139023C(), v6))
  {

    v7 = v3;
  }

  else
  {
    if (v1[8])
    {
      v8 = v1[7];
      v9 = v1[8];
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v27 = 0;

    v10 = sub_1D11CD188(v8, v9, &v27);

    if (v10)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }
  }

  v11 = v7;
  v12 = sub_1D106EDC4(v11, v5);
  [v12 boundingRectWithSize:1 options:0 context:{a1, 1.79769313e308}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v3 lineHeight];
  v22 = v21;
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  if (CGRectGetHeight(v28) - (v22 + v22) >= 2.22044605e-16)
  {
    v23 = sub_1D1390C6C();
    v24 = sub_1D1390C6C();
    v25 = sub_1D106EDC4(v23, v24);

    v5 = v24;
    v11 = v4;
    v4 = v3;
    v3 = v12;
    v12 = v25;
  }

  return v12;
}

id sub_1D11C1E48()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setLineBreakMode_];
    [v4 setTextAlignment_];
    v5 = [objc_opt_self() hk_chrValueCellPrimaryFont];
    [v4 setFont_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D11C1F48()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    [v5 setLineBreakMode_];
    sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D11C2064(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 93) = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView] = 0;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for SingleValueView();
  v11 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);
  LODWORD(v12) = 1144750080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1D11C2234();
  sub_1D11C2564();

  return v11;
}

uint64_t sub_1D11C2234()
{
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6E0;
  *(inited + 32) = sub_1D11C1E48();
  *(inited + 40) = sub_1D11C1F48();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1D3886B70](0, inited))
  {
    v3 = i;
    [v0 addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v4 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v4 = MEMORY[0x1D3886B70](1, inited);
LABEL_7:
  v5 = v4;
  [v0 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

double sub_1D11C23C8(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SingleValueView();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 == sub_1D139016C() && v8 == v9)
  {

    return result;
  }

  v11 = sub_1D139162C();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1D11C2564();
  }

  return result;
}

void sub_1D11C2564()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_activeConstraints;
  swift_beginAccess();
  sub_1D106F934(0, &qword_1EC609690, 0x1E696ACD8);

  v4 = sub_1D139044C();

  v65 = v2;
  [v2 deactivateConstraints_];

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1D1390B5C();
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  if ((v5 & 1) == 0)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D13A0750;
    v32 = sub_1D11C1E48();
    v33 = [v32 leadingAnchor];

    v34 = [v1 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v31 + 32) = v35;
    v36 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView;
    v37 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView] topAnchor];
    v38 = [v1 topAnchor];
    v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38 constant:8.0];

    *(v31 + 40) = v39;
    v40 = [*&v1[v36] bottomAnchor];
    v41 = [v1 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:-8.0];

    *(v31 + 48) = v42;
    v43 = sub_1D11C1F48();
    v44 = [v43 topAnchor];

    v45 = [v1 topAnchor];
    v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45 constant:8.0];

    *(v31 + 56) = v46;
    v47 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView;
    v48 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView] widthAnchor];
    v49 = [v1 widthAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 multiplier:0.5];

    *(v31 + 64) = v50;
    v51 = [*&v1[v47] lastBaselineAnchor];
    v52 = [*&v1[v36] lastBaselineAnchor];
    v53 = [v51 &selRef:v52 dateWithTimeIntervalSinceNow:? + 5];

    *(v31 + 72) = v53;
    v54 = [*&v1[v47] trailingAnchor];
    v55 = [v1 trailingAnchor];
    v56 = [v54 &selRef:v55 dateWithTimeIntervalSinceNow:? + 5];

    *(v31 + 80) = v56;
    *&v1[v3] = v31;

    if ([*&v1[v47] isHidden])
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E810;
      v28 = [*&v1[v36] trailingAnchor];
      v29 = [v1 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:-0.0];
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E810;
      v28 = [*&v1[v36] trailingAnchor];
      v29 = [*&v1[v47] leadingAnchor];
      v30 = [v28 constraintEqualToAnchor_];
    }

    goto LABEL_8;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139F5A0;
  v8 = sub_1D11C1E48();
  v9 = [v8 leadingAnchor];

  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];

  *(v7 + 32) = v11;
  v12 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView;
  v13 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualValueView] topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];

  *(v7 + 40) = v15;
  v16 = [*&v1[v12] trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-0.0];

  *(v7 + 48) = v18;
  v19 = sub_1D11C1F48();
  v20 = [v19 leadingAnchor];

  v21 = [v1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v7 + 56) = v22;
  v23 = OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView;
  v24 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView____lazy_storage___textualTitleView] trailingAnchor];
  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-0.0];

  *(v7 + 64) = v26;
  *&v1[v3] = v7;

  if ([*&v1[v23] isHidden])
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E810;
    v28 = [*&v1[v12] bottomAnchor];
    v29 = [v1 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-8.0];
LABEL_8:
    v63 = v30;

    *(inited + 32) = v63;
    goto LABEL_9;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6E0;
  v57 = [*&v1[v23] topAnchor];
  v58 = [*&v1[v12] bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:2.0];

  *(inited + 32) = v59;
  v60 = [*&v1[v23] bottomAnchor];
  v61 = [v1 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-8.0];

  *(inited + 40) = v62;
LABEL_9:
  swift_beginAccess();
  sub_1D1121F80(inited);
  swift_endAccess();

  v64 = sub_1D139044C();

  [v65 activateConstraints_];
}

void sub_1D11C2EA8()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    Width = CGRectGetWidth(v37);
    v5 = sub_1D11C1F48();
    v6 = &v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData];
    v7 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 16];
    v29[0] = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData];
    v8 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 64];
    v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 80];
    v10 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 32];
    v29[3] = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 48];
    v29[4] = v8;
    v30[0] = v9;
    *(v30 + 13) = *&v1[OBJC_IVAR____TtC15HealthRecordsUI15SingleValueView_viewData + 93];
    v29[1] = v7;
    v29[2] = v10;
    if (*(&v29[0] + 1))
    {
      v31 = v29[0];
      v11 = *(v6 + 4);
      v34 = *(v6 + 3);
      v35 = v11;
      v36[0] = *(v6 + 5);
      *(v36 + 13) = *(v6 + 93);
      v12 = *(v6 + 2);
      v32 = *(v6 + 1);
      v33 = v12;
      sub_1D113AE4C(v29, v27);

      sub_1D1128AD0(&v31);
      v13 = sub_1D139012C();
    }

    else
    {
      v31 = *&v29[0];
      v14 = *(v6 + 4);
      v34 = *(v6 + 3);
      v35 = v14;
      v36[0] = *(v6 + 5);
      *(v36 + 13) = *(v6 + 93);
      v15 = *(v6 + 2);
      v32 = *(v6 + 1);
      v33 = v15;
      sub_1D113AE4C(v29, v27);
      sub_1D1128AD0(&v31);
      v13 = 0;
    }

    [v5 setText_];

    v16 = *(v6 + 5);
    v27[4] = *(v6 + 4);
    v28[0] = v16;
    *(v28 + 13) = *(v6 + 93);
    v17 = *(v6 + 1);
    v27[0] = *v6;
    v27[1] = v17;
    v18 = *(v6 + 3);
    v27[2] = *(v6 + 2);
    v27[3] = v18;
    if (*(&v27[0] + 1))
    {
      v19 = *(v6 + 5);
      v35 = *(v6 + 4);
      v36[0] = v19;
      *(v36 + 13) = *(v6 + 93);
      v20 = *(v6 + 1);
      v31 = *v6;
      v32 = v20;
      v21 = *(v6 + 3);
      v33 = *(v6 + 2);
      v34 = v21;
      v25[0] = v31;
      v25[1] = v20;
      v25[2] = v33;
      v25[3] = v21;
      v25[4] = v35;
      v26[0] = v19;
      *(v26 + 13) = *(v36 + 13);
      sub_1D1128A74(v25, v24);
      v22 = sub_1D11C1BA0(Width + -16.0 + -16.0);
      sub_1D1128AD0(v27);
      v23 = sub_1D11C1E48();
      [v23 setAttributedText_];
    }

    sub_1D11C2564();
  }
}

id sub_1D11C30E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SingleValueView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D11C325C()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60CBB8 = v1;
  unk_1EC60CBC0 = v3;
}

id sub_1D11C3334(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (v7 + qword_1EC60CBC8);
  *v12 = a5;
  v12[1] = a6;
  v13 = objc_allocWithZone(type metadata accessor for ClinicalSharingAllItemsViewController(0));
  type metadata accessor for ClinicalSharingAllItemsDataSource(0);
  swift_allocObject();
  swift_retain_n();

  sub_1D121EFEC(a3, a4);
  *&v13[qword_1EC60CBE8] = v14;

  v15 = v7;
  v16 = sub_1D138EC4C();

  *(v15 + qword_1EC60CBD0) = v16;
  v17 = qword_1EC608D08;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  sub_1D10F48A8(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D139E700;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D1089930();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_1D13901AC();
  v20 = sub_1D138EB3C();
  v21 = [v20 navigationItem];
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v20 action:sel_doneButtonTapped_];
  [v21 setRightBarButtonItem_];

  v23 = [v20 navigationItem];
  v24 = [v23 rightBarButtonItem];

  if (v24)
  {
    sub_1D1086E1C();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D139EAB0;
    *(v25 + 32) = sub_1D139016C();
    *(v25 + 40) = v26;
    v27 = sub_1D139012C();

    v28 = [v27 removeSpecialCharactersAndWhiteSpaces];

    v29 = sub_1D139016C();
    v31 = v30;

    *(v25 + 48) = v29;
    *(v25 + 56) = v31;
    *(v25 + 64) = 1701736260;
    *(v25 + 72) = 0xE400000000000000;
    v32 = sub_1D139044C();

    v33 = HKUIJoinStringsForAutomationIdentifier();

    [v24 setAccessibilityIdentifier_];
  }

  else
  {
  }

  return v20;
}

void sub_1D11C3694(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1D139101C();
  swift_unknownObjectRelease();
  v5 = *&v4[qword_1EC60CBC8];

  v5(v6);
  [v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

void sub_1D11C3790()
{

  v1 = *(v0 + qword_1EC60CBD0);
}

void sub_1D11C37EC(uint64_t a1)
{

  v2 = *(a1 + qword_1EC60CBD0);
}

void sub_1D11C3910()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClinicalSharingAllItemsViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D11C39F0(void *a1)
{
  v1 = a1;
  sub_1D11C3910();
}

void sub_1D11C3A38()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D11C3D24(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell, &unk_1D13A0FBC);
  sub_1D13908AC();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  sub_1D138E08C();
  sub_1D13908AC();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  type metadata accessor for TurnOnAllDataTypesCell();
  sub_1D11C3D24(&qword_1EC609C68, type metadata accessor for TurnOnAllDataTypesCell, &unk_1D13A2BB8);
  sub_1D13908AC();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  sub_1D138DDCC();
  sub_1D13908BC();

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1D138E71C();
  sub_1D13908CC();
}

id sub_1D11C3CCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D11C3D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id HKMedicalUserDomainConcept.hasEducation.getter()
{
  result = [v0 educationContent];
  if (result)
  {
    v2 = result;
    sub_1D13868C0();
    v4 = v3;

    return (v4 & 1);
  }

  return result;
}

uint64_t HKMedicalUserDomainConcept.educationPrimaryContent.getter()
{
  v1 = [v0 educationContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D11C4CAC(1, 1, 0, sub_1D11C4EA4);

  return v3;
}

uint64_t HKMedicalUserDomainConcept.educationTitle.getter()
{
  v1 = [v0 educationContent];
  if (v1 && (v2 = v1, v3 = sub_1D11C4CAC(2, 1, 1, sub_1D11C4EA4), v5 = v4, v2, v5))
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D11C6840(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139E700;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D1089930();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_1D139013C();

    return v7;
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    return sub_1D138D1CC();
  }
}

id HKMedicalUserDomainConcept.attributions.getter()
{
  result = [v0 educationContent];
  if (result)
  {
    v2 = result;
    v3 = [result primarySection];

    if (v3)
    {
      v4 = [v3 attributions];
      if (v4)
      {
        v5 = v4;
        sub_1D139045C();

        v3 = v5;
      }

      sub_1D11C67F0(0, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D10F73A8();
      v6 = sub_1D139008C();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1D11C41BC()
{
  result = [*v0 educationContent];
  if (result)
  {
    v2 = result;
    sub_1D13868C0();
    v4 = v3;

    return (v4 & 1);
  }

  return result;
}

uint64_t sub_1D11C4208()
{
  v1 = [*v0 educationContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D11C4CAC(1, 1, 0, sub_1D11C4EA4);

  return v3;
}

double sub_1D11C42D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;

  return result;
}

uint64_t sub_1D11C4338()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double sub_1D11C4384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

uint64_t sub_1D11C4428()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t EducationItem.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t EducationItem.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D11C44E4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_1D11C4534()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_1D11C458C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void *EducationDataSource.__allocating_init(eduProviding:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D11C6398(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void *EducationDataSource.init(eduProviding:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1D11C6078(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t sub_1D11C4730(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v6 = sub_1D138E6AC();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void *EducationDataSource.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t EducationDataSource.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EducationDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for EducationCell();
  sub_1D11C6484(&qword_1EC60CC00, 255, type metadata accessor for EducationCell, &unk_1D13B06B0);
  sub_1D13908AC();
}

uint64_t sub_1D11C4984()
{
  type metadata accessor for EducationCell();
  sub_1D11C6484(&qword_1EC60CC00, 255, type metadata accessor for EducationCell, &unk_1D13B06B0);
  return sub_1D13908AC();
}

uint64_t EducationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v4);
  (*(v5 + 24))(v4, v5);
  sub_1D138F37C();
  v6 = sub_1D138DE3C();
  swift_allocObject();
  v7 = sub_1D138DE1C();
  a1[3] = v6;
  result = sub_1D11C6484(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8], MEMORY[0x1E69A34C0]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_1D11C4B44@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 72);
  __swift_project_boxed_opaque_existential_1Tm((*v1 + 40), v4);
  (*(v5 + 24))(v4, v5);
  sub_1D138F37C();
  v6 = sub_1D138DE3C();
  swift_allocObject();
  v7 = sub_1D138DE1C();
  a1[3] = v6;
  result = sub_1D11C6484(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8], MEMORY[0x1E69A34C0]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_1D11C4CAC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a4(a1, a2);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_1D11C5B18(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v20[0] = v9;
    sub_1D11C67F0(0, &qword_1EE06B0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D10F73A8();
    v18 = sub_1D139008C();
    goto LABEL_14;
  }

  v8 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D1072E70(v8, v20);
    v10 = v21;
    v11 = v22;
    __swift_project_boxed_opaque_existential_1Tm(v20, v21);
    v12 = (*(v11 + 48))(v10, v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D10F7284(0, *(v9 + 2) + 1, 1, v9);
    }

    v16 = *(v9 + 2);
    v15 = *(v9 + 3);
    if (v16 >= v15 >> 1)
    {
      v9 = sub_1D10F7284((v15 > 1), v16 + 1, 1, v9);
    }

    *(v9 + 2) = v16 + 1;
    v17 = &v9[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
    v8 += 40;
    --v7;
  }

  while (v7);

  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (!*(v9 + 2))
  {
LABEL_15:

    return 0;
  }

  v18 = *(v9 + 4);

LABEL_14:

  return v18;
}

void sub_1D11C4EA4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1D138D67C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11C6840(0, &qword_1EC60CC10, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = &v53 - v12;
  v14 = [v3 sections];
  sub_1D11C68A4();
  v15 = sub_1D139045C();

  v16 = sub_1D110A7BC(v15);

  if ((a2 & 1) == 0)
  {
LABEL_4:
    v19 = v16[2];
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_29:

    return;
  }

  sub_1D138D66C();
  sub_1D138D65C();
  (*(v7 + 8))(v9, v6);
  v17 = sub_1D138D64C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_1D11C6764(v13);
    goto LABEL_4;
  }

  v56 = sub_1D138D63C();
  v36 = v35;
  (*(v18 + 8))(v13, v17);
  v55 = v16[2];
  if (v55)
  {
    v37 = 0;
    v38 = (v16 + 4);
    v39 = MEMORY[0x1E69E7CC0];
    v54 = a1;
    while (v37 < v16[2])
    {
      sub_1D1072E70(v38, &v60);
      v40 = v61;
      v41 = v62;
      __swift_project_boxed_opaque_existential_1Tm(&v60, v61);
      v42 = (*(v41 + 24))(v40, v41);
      v57[0] = v56;
      v57[1] = v36;
      MEMORY[0x1EEE9AC00](v42);
      *(&v53 - 2) = v57;
      LOBYTE(v40) = sub_1D10F1D44(sub_1D11C6900, (&v53 - 4), v42);

      if (v40)
      {
        sub_1D102CC18(&v60, v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D10FDC9C(0, *(v39 + 16) + 1, 1);
          v39 = v63;
        }

        v45 = *(v39 + 16);
        v44 = *(v39 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1D10FDC9C((v44 > 1), v45 + 1, 1);
        }

        v46 = v58;
        v47 = v59;
        v48 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
        v49 = MEMORY[0x1EEE9AC00](v48);
        v51 = &v53 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v52 + 16))(v51, v49);
        sub_1D11C5FE0(v45, v51, &v63, v46, v47);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v39 = v63;
        a1 = v54;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v60);
      }

      ++v37;
      v38 += 40;
      if (v55 == v37)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v16 = v39;
  v19 = *(v39 + 16);
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_5:
  v20 = 0;
  v21 = (v16 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  while (v20 < v16[2])
  {
    sub_1D1072E70(v21, &v60);
    v23 = v61;
    v24 = v62;
    __swift_project_boxed_opaque_existential_1Tm(&v60, v61);
    if ((*(v24 + 40))(v23, v24) == a1)
    {
      sub_1D102CC18(&v60, v57);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v22;
      if ((v25 & 1) == 0)
      {
        sub_1D10FDC9C(0, *(v22 + 16) + 1, 1);
        v22 = v63;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D10FDC9C((v26 > 1), v27 + 1, 1);
      }

      v28 = v58;
      v29 = v59;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
      v31 = MEMORY[0x1EEE9AC00](v30);
      v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33, v31);
      sub_1D11C5FE0(v27, v33, &v63, v28, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v22 = v63;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    }

    ++v20;
    v21 += 40;
    if (v19 == v20)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1D11C5500(uint64_t a1, char a2)
{
  v4 = sub_1D138D67C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11C6840(0, &qword_1EC60CC10, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = HKCodableHealthRecordsLocalizedEducationContent.eduSections.getter();
  if ((a2 & 1) == 0)
  {
LABEL_4:
    v14 = v11[2];
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_29:

    return;
  }

  sub_1D138D66C();
  sub_1D138D65C();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1D138D64C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1D11C6764(v10);
    goto LABEL_4;
  }

  v51 = sub_1D138D63C();
  v31 = v30;
  (*(v13 + 8))(v10, v12);
  v50 = v11[2];
  if (v50)
  {
    v32 = 0;
    v33 = (v11 + 4);
    v34 = MEMORY[0x1E69E7CC0];
    v49 = a1;
    while (v32 < v11[2])
    {
      sub_1D1072E70(v33, &v55);
      v35 = v56;
      v36 = v57;
      __swift_project_boxed_opaque_existential_1Tm(&v55, v56);
      v37 = (*(v36 + 24))(v35, v36);
      v52[0] = v51;
      v52[1] = v31;
      MEMORY[0x1EEE9AC00](v37);
      *(&v48 - 2) = v52;
      LOBYTE(v35) = sub_1D10F1D44(sub_1D10EDCD0, (&v48 - 4), v37);

      if (v35)
      {
        sub_1D102CC18(&v55, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D10FDC9C(0, *(v34 + 16) + 1, 1);
          v34 = v58;
        }

        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D10FDC9C((v39 > 1), v40 + 1, 1);
        }

        v41 = v53;
        v42 = v54;
        v43 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
        v44 = MEMORY[0x1EEE9AC00](v43);
        v46 = &v48 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46, v44);
        sub_1D11C5FE0(v40, v46, &v58, v41, v42);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        v34 = v58;
        a1 = v49;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v55);
      }

      ++v32;
      v33 += 40;
      if (v50 == v32)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v11 = v34;
  v14 = *(v34 + 16);
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_5:
  v15 = 0;
  v16 = (v11 + 4);
  v17 = MEMORY[0x1E69E7CC0];
  while (v15 < v11[2])
  {
    sub_1D1072E70(v16, &v55);
    v18 = v56;
    v19 = v57;
    __swift_project_boxed_opaque_existential_1Tm(&v55, v56);
    if ((*(v19 + 40))(v18, v19) == a1)
    {
      sub_1D102CC18(&v55, v52);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v17;
      if ((v20 & 1) == 0)
      {
        sub_1D10FDC9C(0, *(v17 + 16) + 1, 1);
        v17 = v58;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D10FDC9C((v21 > 1), v22 + 1, 1);
      }

      v23 = v53;
      v24 = v54;
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      v26 = MEMORY[0x1EEE9AC00](v25);
      v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28, v26);
      sub_1D11C5FE0(v22, v28, &v58, v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      v17 = v58;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    }

    ++v15;
    v16 += 40;
    if (v14 == v15)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1D11C5B18(uint64_t a1)
{
  v2 = sub_1D138D67C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D66C();
  v51 = sub_1D138D60C();
  v52 = v6;
  (*(v3 + 8))(v5, v2);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC8];
LABEL_21:
    v33 = v9[2];
    if (v33)
    {
      sub_1D129F730(v9[2], 0);
      v34 = sub_1D12A2F70();
      v35 = v55;

      sub_1D102CC30(v35);
      if (v34 != v33)
      {
        __break(1u);
      }
    }

    v36 = objc_opt_self();
    v37 = sub_1D139044C();

    v38 = [v36 preferredLocalizationsFromArray_];

    v39 = sub_1D139045C();
    if (v39[2])
    {
      v41 = v39[4];
      v40 = v39[5];

      if (v9[2])
      {
        v42 = sub_1D11362EC(v51, v52);
        v44 = v43;

        if (v44)
        {
          v45 = *(v9[7] + 8 * v42);

LABEL_33:

          return v45;
        }
      }

      else
      {
      }

      if (v9[2])
      {
        v46 = sub_1D11362EC(v41, v40);
        v48 = v47;

        if (v48)
        {
          v45 = *(v9[7] + 8 * v46);

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = a1 + 32;
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1D1072E70(v8, &v55);
    v10 = v56;
    v11 = v57;
    __swift_project_boxed_opaque_existential_1Tm(&v55, v56);
    v12 = (*(v11 + 32))(v10, v11);
    v14 = v13;
    sub_1D1072E70(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v9;
    v17 = sub_1D11362EC(v12, v14);
    v18 = v9[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v9[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v53;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D1182774();
        v9 = v53;
        if (v21)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D117CCC4(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D11362EC(v12, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_38;
      }

      v17 = v22;
      v9 = v53;
      if (v21)
      {
LABEL_10:

        goto LABEL_14;
      }
    }

    v9[(v17 >> 6) + 8] |= 1 << v17;
    v24 = (v9[6] + 16 * v17);
    *v24 = v12;
    v24[1] = v14;
    *(v9[7] + 8 * v17) = MEMORY[0x1E69E7CC0];
    v25 = v9[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_37;
    }

    v9[2] = v27;
LABEL_14:
    v28 = v9[7];
    v29 = *(v28 + 8 * v17);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 8 * v17) = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_1D10F8598(0, v29[2] + 1, 1, v29);
      *(v28 + 8 * v17) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1D10F8598((v31 > 1), v32 + 1, 1, v29);
      *(v28 + 8 * v17) = v29;
    }

    v29[2] = v32 + 1;
    sub_1D102CC18(v54, &v29[5 * v32 + 4]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D11C5FE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D102CC18(&v12, v10 + 40 * a1 + 32);
}

void *sub_1D11C6078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_1D1072E70(v19, a2 + 40);
  sub_1D1072E70(v19, v18);
  type metadata accessor for EducationItem();
  v8 = swift_allocObject();
  type metadata accessor for EducationCell();
  sub_1D11C6484(&qword_1EC60CC00, 255, type metadata accessor for EducationCell, &unk_1D13B06B0);
  *(v8 + 56) = sub_1D138DECC();
  *(v8 + 64) = v9;
  sub_1D102CC18(v18, v8 + 16);
  sub_1D11C67F0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E810;
  *(inited + 32) = v8;
  sub_1D11C6840(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E700;
  v12 = *(a4 + 24);

  v12(a3, a4);
  sub_1D110B278(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D138E50C();
  v13 = ConceptsDataSource.init(arrangedSections:isHidden:)(v11, 0);
  v14 = *(a4 + 8);

  v15 = v14(a3, a4);
  sub_1D1287820((v15 & 1) == 0);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v13;
}

void *sub_1D11C6398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EducationDataSource();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_1D11C6078(v9, v10, a3, a4);
}

uint64_t sub_1D11C6484(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D11C6764(uint64_t a1)
{
  sub_1D11C6840(0, &qword_1EC60CC10, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D11C67F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D11C6840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D11C68A4()
{
  result = qword_1EC60B0F8;
  if (!qword_1EC60B0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60B0F8);
  }

  return result;
}

uint64_t HealthRecordsURLParsingResult.typeName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D11CB6F4(v1, v4, type metadata accessor for HealthRecordsURLParsingResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E676F6365726E75;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = sub_1D138D5EC();
      (*(*(v12 - 8) + 8))(v4, v12);
      return 0xD000000000000010;
    case 2:
      sub_1D11C6E04(v4, type metadata accessor for HealthRecordsURLParsingResult);
      return 0xD000000000000011;
    case 3:
      sub_1D11C6E64(0);

      v8 = sub_1D138D5EC();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 0xD000000000000012;
    case 4:
      sub_1D11C6E04(v4, type metadata accessor for HealthRecordsURLParsingResult);
      return 0xD000000000000013;
    case 5:
      sub_1D11C6E04(v4, type metadata accessor for HealthRecordsURLParsingResult);
      return 0x696472616F626E6FLL;
    case 6:
      sub_1D11C6E04(v4, type metadata accessor for HealthRecordsURLParsingResult);
      return 0xD000000000000016;
    case 7:

      sub_1D10C78D4(0);
      v15 = *(v14 + 48);
      v16 = sub_1D138D5EC();
      (*(*(v16 - 8) + 8))(v4 + v15, v16);
      return 0xD000000000000014;
    case 8:

      sub_1D10C7834(0);
      sub_1D11C98A4(v4 + *(v10 + 48), &qword_1EC60D6B0, MEMORY[0x1E69695A8], v11);
      return 0xD000000000000012;
    case 9:
      v13 = sub_1D138D5EC();
      (*(*(v13 - 8) + 8))(v4, v13);
      return 0xD00000000000001DLL;
    case 10:
      v7 = sub_1D138D39C();
      (*(*(v7 - 8) + 8))(v4, v7);
      return 0xD00000000000001CLL;
    case 11:
      v9 = sub_1D138D39C();
      (*(*(v9 - 8) + 8))(v4, v9);
      return 0xD00000000000001ELL;
    case 12:
      return result;
    case 13:
      return 0x676E6972616873;
    default:
      return 0xD00000000000001DLL;
  }
}

uint64_t type metadata accessor for HealthRecordsURLParsingResult(uint64_t a1)
{
  result = qword_1EC60CC28;
  if (!qword_1EC60CC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11C6E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D11C6E64(uint64_t a1)
{
  if (!qword_1EC60CC18)
  {
    sub_1D138D5EC();
    sub_1D111ED58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60CC18);
    }
  }
}

void sub_1D11C6ED8(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>)
{
  v127 = a1;
  v125 = a2;
  v114 = *v2;
  v4 = sub_1D138F0BC();
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v130 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v108 - v7;
  v111 = sub_1D138D5EC();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11CB830(0, &qword_1EC60CC20, type metadata accessor for HealthRecordsURLParsingResult);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v116 = (&v108 - v12);
  v13 = sub_1D138DD1C();
  v121 = *(v13 - 8);
  v122 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138D39C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v108 - v21;
  v23 = type metadata accessor for HealthRecordsURLParsingResult(0);
  v117 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v108 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v108 - v28;
  v129 = swift_allocBox();
  v119 = v30;
  swift_storeEnumTagMultiPayload();
  v31 = *(v17 + 16);
  v31(v22, a1, v16);
  v31(v19, v22, v16);
  sub_1D13916AC();
  v32 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_1D139101C();
  swift_unknownObjectRelease();
  v33 = sub_1D13901EC();
  v126 = v34;
  (*(v17 + 8))(v22, v16);
  v35 = v16;
  v36 = v127;
  v31(v22, v127, v35);
  sub_1D138DD0C();
  v128 = v15;
  if ((sub_1D138DCEC() & 1) == 0)
  {
    v41 = sub_1D138D30C();
    v42 = [v41 hk_isRewrittenHealthCardQRCodeURL];

    if ((v42 & 1) != 0 || (v43 = sub_1D138D30C(), v44 = [v43 hk_isRewrittenEUDigitalCOVIDCertificateQRCodeURL], v43, v44))
    {
      v31(v29, v36, v35);
      v40 = v29;
      swift_storeEnumTagMultiPayload();
LABEL_6:
      v127 = 0;
      v118 = 0;
      v119 = 0;
      v37 = 0;
      v117 = 0;
      v115 = 0;
      v116 = 0;
      v38 = 0;
      v39 = v130;
      goto LABEL_7;
    }

    v64 = objc_opt_self();
    v65 = sub_1D138D30C();
    v66 = [v64 isClinicalLoginRedirectURL_];

    if (v66)
    {
      v67 = v129;

      v127 = sub_1D138D30C();
      v68 = swift_allocObject();
      *(v68 + 16) = sub_1D11C9BEC;
      *(v68 + 24) = v67;
      v135 = sub_1D11C9BF4;
      v136 = v68;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = sub_1D11C83B8;
      v134 = &block_descriptor_15;
      v69 = _Block_copy(&aBlock);

      v70 = swift_allocObject();
      v71 = v119;
      *(v70 + 16) = v119;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1D11C9C20;
      *(v72 + 24) = v70;
      v113 = v70;
      v135 = sub_1D11C9C28;
      v136 = v72;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = sub_1D11C87A4;
      v134 = &block_descriptor_24;
      v73 = _Block_copy(&aBlock);

      v74 = v127;
      [v64 parseClinicalLoginRedirectURL:v127 resultHandler:v69 errorHandler:v73];
      _Block_release(v69);

      _Block_release(v73);
      LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

      if (v74)
      {
        __break(1u);
      }

      else
      {
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        v39 = v130;
        v46 = v126;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v40 = v29;
          swift_beginAccess();
          sub_1D11CB6F4(v71, v29, type metadata accessor for HealthRecordsURLParsingResult);
          v76 = v129;

          v117 = 0;
          v115 = 0;
          v116 = 0;
          v38 = 0;
          v119 = sub_1D11C9C20;
          v127 = sub_1D11C9BEC;
          v118 = v76;
          v45 = v120;
          v37 = v113;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v77 = sub_1D138D30C();
    v78 = [v64 isClinicalOnboardingURL_];

    if (v78)
    {
      v79 = v129;

      v127 = sub_1D138D30C();
      v80 = swift_allocObject();
      *(v80 + 16) = sub_1D11C9B6C;
      *(v80 + 24) = v79;
      v135 = sub_1D11C9B74;
      v136 = v80;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = sub_1D11C8A20;
      v134 = &block_descriptor_30;
      v81 = _Block_copy(&aBlock);

      v82 = swift_allocObject();
      v83 = v119;
      *(v82 + 16) = v119;
      v84 = swift_allocObject();
      *(v84 + 16) = sub_1D11C9BB8;
      *(v84 + 24) = v82;
      v113 = v82;
      v135 = sub_1D11C9BC0;
      v136 = v84;
      aBlock = MEMORY[0x1E69E9820];
      v132 = 1107296256;
      v133 = sub_1D11C8B9C;
      v134 = &block_descriptor_9;
      v85 = _Block_copy(&aBlock);

      v86 = v127;
      [v64 parseClinicalOnboardingURL:v127 resultHandler:v81 errorHandler:v85];
      _Block_release(v81);

      _Block_release(v85);
      LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

      if ((v86 & 1) == 0)
      {
        v87 = v33;
        v88 = swift_isEscapingClosureAtFileLocation();

        v39 = v130;
        v46 = v126;
        if ((v88 & 1) == 0)
        {
          v40 = v29;
          swift_beginAccess();
          sub_1D11CB6F4(v83, v29, type metadata accessor for HealthRecordsURLParsingResult);
          v89 = v129;

          v127 = 0;
          v118 = 0;
          v119 = 0;
          v37 = 0;
          v116 = sub_1D11C9BB8;
          v117 = sub_1D11C9B6C;
          v115 = v89;
          v45 = v120;
          v33 = v87;
          v38 = v113;
          goto LABEL_9;
        }

LABEL_43:
        __break(1u);
        return;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v90 = v116;
    sub_1D11C8BE0(v116);
    v91 = v117;
    v92 = *(v117 + 6);
    v93 = v23;
    if (v92(v90, 1, v23) != 1)
    {
      v40 = v29;
      sub_1D11CB68C(v90, v29, type metadata accessor for HealthRecordsURLParsingResult);
      goto LABEL_6;
    }

    sub_1D11C98A4(v90, &qword_1EC60CC20, type metadata accessor for HealthRecordsURLParsingResult, v94);
    if (URL.isCategoryRoomURL.getter())
    {

      sub_1D11CB644(&qword_1EC60A5D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v33 = sub_1D13915CC();
      v46 = v95;
      URL.chrDisplayCategoryKind.getter(&aBlock);
      if (aBlock == 11)
      {
        v96 = 1;
        v97 = v115;
      }

      else
      {
        v97 = v115;
        *v115 = aBlock;
        swift_storeEnumTagMultiPayload();
        v96 = 0;
      }

      v105 = v113;
      (*(v91 + 7))(v97, v96, 1, v93);
      if (v92(v97, 1, v93) == 1)
      {
        swift_storeEnumTagMultiPayload();
        v106 = v92(v97, 1, v93);
        v39 = v130;
        v45 = v120;
        if (v106 != 1)
        {
          sub_1D11C98A4(v97, &qword_1EC60CC20, type metadata accessor for HealthRecordsURLParsingResult, v107);
        }
      }

      else
      {
        sub_1D11CB68C(v97, v105, type metadata accessor for HealthRecordsURLParsingResult);
        v39 = v130;
        v45 = v120;
      }

      v40 = v29;
      sub_1D11CB68C(v105, v29, type metadata accessor for HealthRecordsURLParsingResult);
      v127 = 0;
      v118 = 0;
      v119 = 0;
      v37 = 0;
      v117 = 0;
      v115 = 0;
      v116 = 0;
      v38 = 0;
      goto LABEL_9;
    }

    if (!URL.isViewHealthRecordURL.getter())
    {
      sub_1D138DCFC();
      v40 = v29;
      v45 = v120;
      swift_storeEnumTagMultiPayload();
      v127 = 0;
      v118 = 0;
      v119 = 0;
      v37 = 0;
      v117 = 0;
      v115 = 0;
      v116 = 0;
      v38 = 0;
      v39 = v130;
      goto LABEL_8;
    }

    sub_1D11CB644(&qword_1EC60A5D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v33 = sub_1D13915CC();
    v46 = v98;
    v40 = v29;
    if (URL.isViewHealthRecordURL.getter())
    {
      sub_1D138D2FC();
      v99 = v112;
      sub_1D138D58C();

      v100 = v110;
      v101 = v111;
      if ((*(v110 + 48))(v99, 1, v111) != 1)
      {
        v103 = *(v100 + 32);
        v104 = v109;
        v103(v109, v99, v101);
        v103(v29, v104, v101);
LABEL_39:
        swift_storeEnumTagMultiPayload();
        v127 = 0;
        v118 = 0;
        v119 = 0;
        v37 = 0;
        v117 = 0;
        v115 = 0;
        v116 = 0;
        v38 = 0;
        v39 = v130;
        v45 = v120;
        goto LABEL_9;
      }
    }

    else
    {
      v99 = v112;
      v102.n128_f64[0] = (*(v110 + 56))(v112, 1, 1, v111);
    }

    sub_1D11C98A4(v99, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v102);
    goto LABEL_39;
  }

  v31(v29, v36, v35);
  swift_storeEnumTagMultiPayload();
  v127 = 0;
  v118 = 0;
  v119 = 0;
  v37 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v38 = 0;
  v39 = v130;
  v40 = v29;
LABEL_7:
  v45 = v120;
LABEL_8:
  v46 = v126;
LABEL_9:
  sub_1D138F06C();
  sub_1D11CB6F4(v40, v45, type metadata accessor for HealthRecordsURLParsingResult);

  v47 = sub_1D138F0AC();
  v48 = sub_1D139081C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v113 = v37;
    v126 = v40;
    v51 = v50;
    v137[0] = v50;
    *v49 = 136446722;
    v137[1] = v114;
    swift_getMetatypeMetadata();
    v52 = sub_1D13901EC();
    v54 = v38;
    v55 = v33;
    v56 = sub_1D11DF718(v52, v53, v137);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2082;
    v57 = v55;
    v38 = v54;
    v58 = sub_1D11DF718(v57, v46, v137);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2082;
    v59 = HealthRecordsURLParsingResult.typeName.getter();
    v61 = v60;
    sub_1D11C6E04(v45, type metadata accessor for HealthRecordsURLParsingResult);
    v62 = sub_1D11DF718(v59, v61, v137);

    *(v49 + 24) = v62;
    _os_log_impl(&dword_1D101F000, v47, v48, "[%{public}s]: parsed URL %{public}s to type %{public}s", v49, 0x20u);
    swift_arrayDestroy();
    v63 = v51;
    v40 = v126;
    v37 = v113;
    MEMORY[0x1D38882F0](v63, -1, -1);
    MEMORY[0x1D38882F0](v49, -1, -1);

    (*(v123 + 8))(v130, v124);
  }

  else
  {

    sub_1D11C6E04(v45, type metadata accessor for HealthRecordsURLParsingResult);
    (*(v123 + 8))(v39, v124);
  }

  (*(v121 + 8))(v128, v122);
  sub_1D11CB68C(v40, v125, type metadata accessor for HealthRecordsURLParsingResult);

  sub_1D102CC60(v127, v118);
  sub_1D102CC60(v119, v37);
  sub_1D102CC60(v117, v115);
  sub_1D102CC60(v116, v38);
}

uint64_t sub_1D11C828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  sub_1D10C78D4(0);
  v12 = *(v11 + 48);
  *v9 = a1;
  *(v9 + 1) = a2;
  v13 = sub_1D138D5EC();
  (*(*(v13 - 8) + 16))(&v9[v12], a3, v13);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_1D11CB7CC(v9, v10);
  return 1;
}

uint64_t sub_1D11C83B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = sub_1D139016C();
  v11 = v10;
  sub_1D138D5CC();
  v12 = v8(v9, v11, v7);

  (*(v5 + 8))(v7, v4);
  return v12 & 1;
}

uint64_t sub_1D11C84D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138D2AC();
  sub_1D1127E2C(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1D11C98A4(v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v17);
LABEL_6:
    sub_1D10C7834(0);
    v21 = *(v20 + 48);
    *v8 = a1;
    sub_1D1127E2C(a2, &v8[v21]);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v22 = a1;
    goto LABEL_7;
  }

  v25 = a2;
  v26 = a3;
  v18 = *(v13 + 32);
  v18(v15, v11, v12);
  v19 = [v16 hk_OAuth2_isAccessDeniedError];

  if (!v19)
  {
    (*(v13 + 8))(v15, v12);
    a2 = v25;
    a3 = v26;
    goto LABEL_6;
  }

  v18(v8, v15, v12);
  swift_storeEnumTagMultiPayload();
  a3 = v26;
  swift_beginAccess();
LABEL_7:
  sub_1D11CB7CC(v8, a3);
  return 0;
}

uint64_t sub_1D11C87A4(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(a1 + 32);
  if (a3)
  {
    sub_1D138D5CC();
    v11 = sub_1D138D5EC();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_1D138D5EC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a2;
  v14 = v10();

  sub_1D11C98A4(v9, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v15);
  return v14 & 1;
}

uint64_t sub_1D11C8908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_projectBox();
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a7;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_1D11CB7CC(v17, v18);
  return 1;
}

uint64_t sub_1D11C8A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v8 = sub_1D139016C();
  v10 = v9;
  v11 = sub_1D139016C();
  v13 = v12;
  if (a4)
  {
    v14 = sub_1D139016C();
    a4 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = v7(v8, v10, v11, v13, v14, a4, a5);

  return v16 & 1;
}

uint64_t sub_1D11C8AE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v7 = a1;
  sub_1D11CB7CC(v6, a2);
  return 0;
}

uint64_t sub_1D11C8B9C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1D11C8BE0@<X0>(uint64_t *a2@<X8>)
{
  v93 = *v2;
  v4 = sub_1D138F0BC();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v90 - v7;
  v8 = sub_1D138D5EC();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D138D04C();
  v105 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v90 - v12;
  sub_1D11CB830(0, &unk_1EC60CC70, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v90 - v14;
  v16 = sub_1D138D0BC();
  v103 = *(v16 - 8);
  v104 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138D39C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() _hk_urlForViewHealthRecords];
  sub_1D138D33C();

  v23 = sub_1D138D2EC();
  sub_1D138D37C();
  if (!v24)
  {
    (*(v19 + 8))(v21, v18);
LABEL_7:

LABEL_26:
    v44 = type metadata accessor for HealthRecordsURLParsingResult(0);
    v45 = *(*(v44 - 8) + 56);
    v46 = a2;
    v47 = 1;
    return v45(v46, v47, 1, v44);
  }

  v106 = v18;
  v107 = v19;
  sub_1D138D35C();
  if (!v25)
  {
    (*(v107 + 8))(v21, v106);

    goto LABEL_7;
  }

  v91 = v23;
  v92 = a2;
  v26 = sub_1D138D37C();
  if (v27)
  {
    v28 = sub_1D13901FC();
    v30 = v29;
  }

  else
  {
    v28 = v26;
    v30 = 0;
  }

  v31 = sub_1D13901FC();
  v33 = v32;

  if (!v30)
  {

    goto LABEL_23;
  }

  if (v28 == v31 && v30 == v33)
  {

    goto LABEL_15;
  }

  v34 = sub_1D139162C();

  if ((v34 & 1) == 0)
  {
LABEL_23:

    v43 = v107;
    goto LABEL_24;
  }

LABEL_15:
  v35 = sub_1D138D35C();
  if (v36)
  {
    v37 = sub_1D13901FC();
    v39 = v38;
  }

  else
  {
    v37 = v35;
    v39 = 0;
  }

  v40 = sub_1D13901FC();
  v42 = v41;

  if (!v39)
  {
    goto LABEL_23;
  }

  v43 = v107;
  if (v37 == v40 && v39 == v42)
  {

    goto LABEL_29;
  }

  v49 = sub_1D139162C();

  if ((v49 & 1) == 0)
  {
LABEL_24:

    (*(v43 + 8))(v21, v106);
LABEL_25:
    a2 = v92;
    goto LABEL_26;
  }

LABEL_29:
  sub_1D138D07C();
  v51 = v103;
  v50 = v104;
  v52 = (*(v103 + 48))(v15, 1, v104);
  a2 = v92;
  if (v52 == 1)
  {
    sub_1D11C98A4(v15, &unk_1EC60CC70, MEMORY[0x1E69681B8], v53);
    v54 = 0;
    v55 = 0;
    v56 = v91;
LABEL_46:
    v67 = v56[2];
    v68 = v106;
    if (v67 <= 1)
    {
      if (!v67 || v67 == 1 && (v56[4] == 47 && v56[5] == 0xE100000000000000 || (sub_1D139162C() & 1) != 0))
      {

        (*(v43 + 8))(v21, v68);
        *a2 = v54;
        a2[1] = v55;
        v69 = type metadata accessor for HealthRecordsURLParsingResult(0);
LABEL_65:
        swift_storeEnumTagMultiPayload();
        v45 = *(*(v69 - 8) + 56);
        v46 = a2;
LABEL_66:
        v47 = 0;
        v44 = v69;
        return v45(v46, v47, 1, v44);
      }

      goto LABEL_67;
    }

    if (v67 == 2)
    {
      if (v56[6] == 0x72656469766F7250 && v56[7] == 0xEE00686372616553 || (sub_1D139162C() & 1) != 0)
      {
        (*(v43 + 8))(v21, v68);

        *a2 = v54;
        a2[1] = v55;
        v69 = type metadata accessor for HealthRecordsURLParsingResult(0);
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    if (v67 != 3 || (v56[6] != 0x746E756F636341 || v56[7] != 0xE700000000000000) && (sub_1D139162C() & 1) == 0)
    {
LABEL_67:

      (*(v43 + 8))(v21, v68);
      goto LABEL_26;
    }

    v70 = v101;
    sub_1D138D58C();
    v71 = v70;

    v72 = v99;
    v73 = v70;
    v74 = v100;
    if ((*(v99 + 48))(v73, 1, v100) != 1)
    {
      (*(v43 + 8))(v21, v68);
      v85 = *(v72 + 32);
      v86 = v94;
      v85(v94, v71, v74);
      sub_1D11C6E64(0);
      v88 = v92;
      v89 = (v92 + *(v87 + 48));
      v85(v92, v86, v74);
      *v89 = v54;
      v89[1] = v55;
      v69 = type metadata accessor for HealthRecordsURLParsingResult(0);
      swift_storeEnumTagMultiPayload();
      v45 = *(*(v69 - 8) + 56);
      v46 = v88;
      goto LABEL_66;
    }

    sub_1D11C98A4(v71, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v75);
    v76 = v95;
    sub_1D138F06C();
    v77 = sub_1D138F0AC();
    v78 = sub_1D13907FC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v110 = v80;
      *v79 = 136446210;
      v81 = sub_1D11C9900(v93);
      v83 = v43;
      v84 = sub_1D11DF718(v81, v82, &v110);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_1D101F000, v77, v78, "[%{public}s]: this URL is a “view account details” URL but doesn't contain a valid account UUID", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1D38882F0](v80, -1, -1);
      MEMORY[0x1D38882F0](v79, -1, -1);

      (*(v96 + 8))(v76, v97);
      (*(v83 + 8))(v21, v68);
    }

    else
    {

      (*(v96 + 8))(v76, v97);
      (*(v43 + 8))(v21, v68);
    }

    goto LABEL_25;
  }

  v57 = v102;
  (*(v51 + 32))(v102, v15, v50);
  result = sub_1D138D05C();
  v54 = result;
  v56 = v91;
  if (!result)
  {
    (*(v51 + 8))(v57, v50);
    v55 = 0;
    goto LABEL_46;
  }

  v58 = *(result + 16);
  if (!v58)
  {
    (*(v51 + 8))(v57, v50);

    v54 = 0;
    v55 = 0;
LABEL_45:
    v43 = v107;
    goto LABEL_46;
  }

  v59 = 0;
  v60 = (v105 + 8);
  while (v59 < *(v54 + 16))
  {
    (*(v105 + 16))(v108, v54 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v59, v109);
    if (sub_1D138D02C() == 6517363 && v61 == 0xE300000000000000)
    {

LABEL_43:

      v63 = v105 + 32;
      v64 = v98;
      v65 = v109;
      (*(v105 + 32))(v98, v108, v109);
      v54 = sub_1D138D03C();
      v55 = v66;
      (*(v63 - 24))(v64, v65);
      (*(v103 + 8))(v102, v104);
LABEL_44:
      v56 = v91;
      a2 = v92;
      goto LABEL_45;
    }

    v62 = sub_1D139162C();

    if (v62)
    {
      goto LABEL_43;
    }

    ++v59;
    result = (*v60)(v108, v109);
    if (v58 == v59)
    {
      (*(v103 + 8))(v102, v104);

      v54 = 0;
      v55 = 0;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11C98A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_1D11CB830(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D11C994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a5;
  sub_1D11CB75C(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = sub_1D138D5EC();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a1, v17);
  v19 = &v16[*(v11 + 56)];
  v25 = a2;
  *v19 = a2;
  *(v19 + 1) = a3;
  v18(v13, v26, v17);
  v20 = v27;
  v21 = &v13[*(v11 + 56)];
  *v21 = v27;
  v21[1] = a6;
  sub_1D11CB644(&qword_1EC6098A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);

  if (sub_1D139011C())
  {
    v22 = (a3 | a6) == 0;
    if (a3 && a6)
    {
      if (v25 == v20 && a3 == a6)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_1D139162C();
      }
    }
  }

  else
  {
    v22 = 0;
  }

  sub_1D11C6E04(v13, sub_1D11CB75C);
  sub_1D11C6E04(v16, sub_1D11CB75C);
  return v22 & 1;
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _s15HealthRecordsUI0aB16URLParsingResultO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v221 = a1;
  v222 = a2;
  v2 = sub_1D138D39C();
  v217 = *(v2 - 8);
  v218 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v214 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v215 = &v194 - v5;
  sub_1D107F5C8(0);
  v196 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v197 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v195 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v198 = &v194 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v199 = &v194 - v13;
  sub_1D11C6E64(0);
  v206 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v208 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v207 = &v194 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v205 = &v194 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v204 = &v194 - v21;
  v22 = sub_1D138D5EC();
  v23 = *(v22 - 8);
  v219 = v22;
  v220 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v203 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v216 = &v194 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v202 = &v194 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v209 = &v194 - v30;
  v31 = type metadata accessor for HealthRecordsURLParsingResult(0);
  MEMORY[0x1EEE9AC00](v31);
  v212 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v211 = &v194 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v210 = &v194 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v201 = (&v194 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v213 = (&v194 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v194 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v200 = (&v194 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v194 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = (&v194 - v50);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v194 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v194 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v194 - v59;
  sub_1D11CB560(0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v63 = &v194 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = &v63[*(v64 + 56)];
  sub_1D11CB6F4(v221, v63, type metadata accessor for HealthRecordsURLParsingResult);
  v66 = v222;
  v222 = v65;
  sub_1D11CB6F4(v66, v65, type metadata accessor for HealthRecordsURLParsingResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D11CB6F4(v63, v57, type metadata accessor for HealthRecordsURLParsingResult);
      v114 = v222;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = v219;
        v116 = v220;
        v117 = v63;
        v118 = *(v220 + 32);
        v119 = v209;
        v118(v209, v57, v219);
        v120 = v202;
        v118(v202, v114, v115);
        v63 = v117;
        v68 = sub_1D138D5BC();
        v121 = *(v116 + 8);
        v121(v120, v115);
        v121(v119, v115);
        v69 = type metadata accessor for HealthRecordsURLParsingResult;
        goto LABEL_69;
      }

      (*(v220 + 8))(v57, v219);
      goto LABEL_68;
    case 2u:
      v79 = v222;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_68;
    case 3u:
      sub_1D11CB6F4(v63, v54, type metadata accessor for HealthRecordsURLParsingResult);
      v87 = v222;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v88 = v204;
        sub_1D11CB68C(v54, v204, sub_1D11C6E64);
        v89 = v205;
        sub_1D11CB68C(v87, v205, sub_1D11C6E64);
        v90 = v207;
        sub_1D11CB6F4(v88, v207, sub_1D11C6E64);
        v91 = v206;
        v92 = (v90 + *(v206 + 48));
        v93 = v63;
        v94 = *v92;
        v95 = v92[1];
        v96 = v208;
        sub_1D11CB6F4(v89, v208, sub_1D11C6E64);
        v68 = sub_1D11C994C(v90, v94, v95, v96, *(v96 + *(v91 + 48)), *(v96 + *(v91 + 48) + 8));

        v63 = v93;

        sub_1D11C6E04(v89, sub_1D11C6E64);
        sub_1D11C6E04(v88, sub_1D11C6E64);
        v97 = v219;
        v98 = *(v220 + 8);
        v98(v96, v219);
        v98(v90, v97);
        v69 = type metadata accessor for HealthRecordsURLParsingResult;
        goto LABEL_69;
      }

      sub_1D11C6E04(v54, sub_1D11C6E64);
      goto LABEL_68;
    case 4u:
      v79 = v222;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_68;
      }

LABEL_13:
      sub_1D11C6E04(v79, type metadata accessor for HealthRecordsURLParsingResult);
      v86 = type metadata accessor for HealthRecordsURLParsingResult;
      v68 = 1;
      goto LABEL_70;
    case 5u:
      v221 = v63;
      sub_1D11CB6F4(v63, v51, type metadata accessor for HealthRecordsURLParsingResult);
      v123 = *v51;
      v122 = v51[1];
      v125 = v51[2];
      v124 = v51[3];
      v127 = v51[4];
      v126 = v51[5];
      v128 = v51[6];
      v129 = v222;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v63 = v221;
        goto LABEL_68;
      }

      v219 = v127;
      v220 = v128;
      v130 = *v129;
      v131 = *(v129 + 1);
      v133 = *(v129 + 2);
      v132 = *(v129 + 3);
      v134 = *(v129 + 5);
      v218 = *(v129 + 4);
      v135 = *(v129 + 6);
      if (v123 == v130 && v122 == v131)
      {
      }

      else
      {
        v167 = sub_1D139162C();

        if ((v167 & 1) == 0)
        {

          goto LABEL_64;
        }
      }

      if (v125 == v133 && v124 == v132)
      {

        goto LABEL_58;
      }

      v171 = sub_1D139162C();

      if ((v171 & 1) == 0)
      {
LABEL_64:

        goto LABEL_65;
      }

LABEL_58:
      v172 = v135;
      if (!v126)
      {
        if (!v134)
        {
          goto LABEL_76;
        }

LABEL_65:

        v68 = 0;
LABEL_77:
        v86 = type metadata accessor for HealthRecordsURLParsingResult;
        v63 = v221;
        goto LABEL_70;
      }

      if (!v134)
      {
        goto LABEL_65;
      }

      if (v219 == v218 && v126 == v134)
      {

LABEL_76:
        v68 = v220 == v172;
        goto LABEL_77;
      }

      v179 = sub_1D139162C();

      if (v179)
      {
        goto LABEL_76;
      }

      v86 = type metadata accessor for HealthRecordsURLParsingResult;
      v68 = 0;
      v63 = v221;
LABEL_70:
      sub_1D11C6E04(v63, v86);
      return v68 & 1;
    case 6u:
      v136 = v63;
      sub_1D11CB6F4(v63, v48, type metadata accessor for HealthRecordsURLParsingResult);
      v226 = *v48;
      sub_1D10922EC();
      sub_1D106F934(0, &qword_1EC60CC60, 0x1E696ABC0);
      if (!swift_dynamicCast())
      {
        goto LABEL_67;
      }

      v137 = v225;
      v138 = v222;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v139 = v200;
        sub_1D11CB6F4(v138, v200, type metadata accessor for HealthRecordsURLParsingResult);
        v224 = *v139;
        if (swift_dynamicCast())
        {
          v140 = v223;
          sub_1D106F934(0, &qword_1EE06B0C0, 0x1E69E58C0);
          v68 = sub_1D1390D8C();

          sub_1D11C6E04(v138, type metadata accessor for HealthRecordsURLParsingResult);
          v86 = type metadata accessor for HealthRecordsURLParsingResult;
          v63 = v136;
          goto LABEL_70;
        }
      }

      else
      {
      }

LABEL_67:

      goto LABEL_68;
    case 7u:
      sub_1D11CB6F4(v63, v43, type metadata accessor for HealthRecordsURLParsingResult);
      v100 = *v43;
      v99 = *(v43 + 1);
      sub_1D10C78D4(0);
      v102 = *(v101 + 48);
      v103 = v222;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v220 + 8))(&v43[v102], v219);

        goto LABEL_68;
      }

      v104 = v63;
      v106 = *v103;
      v105 = *(v103 + 1);
      v107 = v103;
      v108 = *(v220 + 32);
      v109 = &v43[v102];
      v110 = v219;
      v108(v216, v109, v219);
      v111 = &v107[v102];
      v112 = v203;
      v108(v203, v111, v110);
      if (v100 == v106 && v99 == v105)
      {

        v113 = v216;
      }

      else
      {
        v165 = sub_1D139162C();

        v68 = 0;
        v113 = v216;
        if ((v165 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v68 = sub_1D138D5BC();
LABEL_48:
      v166 = *(v220 + 8);
      v166(v112, v110);
      v166(v113, v110);
      v86 = type metadata accessor for HealthRecordsURLParsingResult;
      v63 = v104;
      goto LABEL_70;
    case 8u:
      v141 = v63;
      v142 = v213;
      sub_1D11CB6F4(v63, v213, type metadata accessor for HealthRecordsURLParsingResult);
      v143 = *v142;
      sub_1D10C7834(0);
      v145 = v144;
      v146 = *(v144 + 48);
      v226 = v143;
      sub_1D10922EC();
      sub_1D106F934(0, &qword_1EC60CC60, 0x1E696ABC0);
      if (!swift_dynamicCast())
      {
        goto LABEL_55;
      }

      v147 = v225;
      v148 = v222;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v149 = v201;
        sub_1D11CB6F4(v148, v201, type metadata accessor for HealthRecordsURLParsingResult);
        v150 = *(v145 + 48);
        v224 = *v149;
        if (swift_dynamicCast())
        {
          v152 = v223;
          v153 = v142 + v146;
          v154 = v199;
          sub_1D11CB5C4(v153, v199, v151);
          v155 = v149 + v150;
          v156 = v198;
          sub_1D11CB5C4(v155, v198, v157);
          sub_1D106F934(0, &qword_1EE06B0C0, 0x1E69E58C0);
          if (sub_1D1390D8C())
          {
            v158 = *(v196 + 48);
            v159 = v197;
            sub_1D1127E2C(v154, v197);
            sub_1D1127E2C(v156, v159 + v158);
            v160 = *(v220 + 48);
            if (v160(v159, 1, v219) == 1)
            {

              v161 = MEMORY[0x1E69695A8];
              sub_1D11C98A4(v156, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v162);
              sub_1D11C98A4(v154, &qword_1EC60D6B0, v161, v163);
              if (v160(v159 + v158, 1, v219) == 1)
              {
                sub_1D11C98A4(v159, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v164);
                v68 = 1;
LABEL_82:
                v63 = v141;

                sub_1D11C6E04(v148, type metadata accessor for HealthRecordsURLParsingResult);
                v86 = type metadata accessor for HealthRecordsURLParsingResult;
                goto LABEL_70;
              }
            }

            else
            {
              v180 = v195;
              sub_1D1127E2C(v159, v195);
              if (v160(v159 + v158, 1, v219) != 1)
              {
                v185 = v220;
                v186 = v159 + v158;
                v187 = v209;
                v188 = v219;
                (*(v220 + 32))(v209, v186, v219);
                sub_1D11CB644(&qword_1EC6098A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                v68 = sub_1D139011C();

                v189 = *(v185 + 8);
                v190.n128_f64[0] = v189(v187, v188);
                v191 = MEMORY[0x1E69695A8];
                sub_1D11C98A4(v198, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v190);
                sub_1D11C98A4(v199, &qword_1EC60D6B0, v191, v192);
                v193.n128_f64[0] = v189(v195, v188);
                sub_1D11C98A4(v159, &qword_1EC60D6B0, v191, v193);
                goto LABEL_82;
              }

              v181 = v180;
              v182 = MEMORY[0x1E69695A8];
              sub_1D11C98A4(v198, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v183);
              sub_1D11C98A4(v199, &qword_1EC60D6B0, v182, v184);
              (*(v220 + 8))(v181, v219);
            }

            sub_1D11C6E04(v159, sub_1D107F5C8);
          }

          else
          {

            v176 = MEMORY[0x1E69695A8];
            sub_1D11C98A4(v156, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v177);
            sub_1D11C98A4(v154, &qword_1EC60D6B0, v176, v178);
          }

          v68 = 0;
          goto LABEL_82;
        }

        v174 = MEMORY[0x1E69695A8];
        sub_1D11C98A4(v149 + v150, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v175);

        v170 = v142 + v146;
        v169 = v174;
      }

      else
      {

LABEL_55:
        v169 = MEMORY[0x1E69695A8];
        v170 = v142 + v146;
      }

      sub_1D11C98A4(v170, &qword_1EC60D6B0, v169, v168);
      v63 = v141;
      goto LABEL_68;
    case 9u:
      v80 = v210;
      sub_1D11CB6F4(v63, v210, type metadata accessor for HealthRecordsURLParsingResult);
      v81 = v222;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v83 = *(v220 + 8);
      if (EnumCaseMultiPayload == 9)
      {
        v84 = v81;
        v85 = v219;
        v83(v84, v219);
        v83(v80, v85);
        v68 = 1;
        v69 = type metadata accessor for HealthRecordsURLParsingResult;
        goto LABEL_69;
      }

      v83(v80, v219);
      goto LABEL_68;
    case 0xAu:
      v70 = v211;
      sub_1D11CB6F4(v63, v211, type metadata accessor for HealthRecordsURLParsingResult);
      v71 = v222;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    case 0xBu:
      v70 = v212;
      sub_1D11CB6F4(v63, v212, type metadata accessor for HealthRecordsURLParsingResult);
      v71 = v222;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
LABEL_5:
        v72 = v217;
        v73 = *(v217 + 32);
        v74 = v215;
        v75 = v70;
        v76 = v218;
        v73(v215, v75, v218);
        v77 = v214;
        v73(v214, v71, v76);
        v68 = sub_1D138D31C();
        v78 = *(v72 + 8);
        v78(v77, v76);
        v78(v74, v76);
        v69 = type metadata accessor for HealthRecordsURLParsingResult;
      }

      else
      {
LABEL_33:
        (*(v217 + 8))(v70, v218);
LABEL_68:
        v68 = 0;
        v69 = sub_1D11CB560;
      }

LABEL_69:
      v86 = v69;
      goto LABEL_70;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_68;
      }

      goto LABEL_27;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_68;
      }

LABEL_27:
      v86 = type metadata accessor for HealthRecordsURLParsingResult;
      v68 = 1;
      goto LABEL_70;
    default:
      sub_1D11CB6F4(v63, v60, type metadata accessor for HealthRecordsURLParsingResult);
      v67 = v222;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_68;
      }

      v68 = *v60 == *v67;
      v69 = type metadata accessor for HealthRecordsURLParsingResult;
      goto LABEL_69;
  }
}

void sub_1D11CB1D0(uint64_t a1)
{
  sub_1D11CB4A0(319, &qword_1EC60CC38, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1D11CB4A0(319, &qword_1EC60CC40, sub_1D111ED58);
    if (v2 <= 0x3F)
    {
      sub_1D11C6E64(319);
      if (v3 <= 0x3F)
      {
        sub_1D11CB380(319);
        if (v4 <= 0x3F)
        {
          sub_1D10922EC();
          if (v5 <= 0x3F)
          {
            sub_1D10C78D4(319);
            if (v6 <= 0x3F)
            {
              sub_1D10C7834(319);
              if (v7 <= 0x3F)
              {
                sub_1D11CB4A0(319, &qword_1EC60CC50, MEMORY[0x1E69695A8]);
                if (v8 <= 0x3F)
                {
                  sub_1D11CB4A0(319, &qword_1EC60CB10, MEMORY[0x1E6968FB0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D11CB4A0(319, &qword_1EC60CB18, MEMORY[0x1E6968FB0]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D11CB380(uint64_t a1)
{
  if (!qword_1EC60CC48)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D111ED58();
    type metadata accessor for HKClinicalOnboardingOptions(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC60CC48);
    }
  }
}

void sub_1D11CB4A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11CB560(uint64_t a1)
{
  if (!qword_1EC60CC58)
  {
    type metadata accessor for HealthRecordsURLParsingResult(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60CC58);
    }
  }
}

uint64_t sub_1D11CB5C4(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D11CB830(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D11CB644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D11CB68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D11CB6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D11CB75C(uint64_t a1)
{
  if (!qword_1EC60CC68)
  {
    sub_1D138D5EC();
    sub_1D111ED58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60CC68);
    }
  }
}

uint64_t sub_1D11CB7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsURLParsingResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D11CB830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11CB89C(char a1)
{
  v1 = sub_1D1390DFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1390E6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1390EAC();
  v9 = [objc_opt_self() configurationWithScale_];
  v10 = sub_1D139012C();

  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  v12 = v11;
  sub_1D1390E7C();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC550], v5);
  sub_1D1390DEC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC508], v1);
  sub_1D1390E0C();
  v13 = [objc_opt_self() systemYellowColor];
  sub_1D1390E5C();
}

uint64_t RecordRepresentableTypeClassification<>.isOlder.getter(uint64_t a1, uint64_t a2)
{
  sub_1D106A23C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D57C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(a2 + 8))(a1, a2, v15);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D109AC18(v6);
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    sub_1D138D56C();
    sub_1D138D4BC();
    v19 = *(v8 + 8);
    v19(v13, v7);
    v18 = sub_1D138D50C();
    v19(v10, v7);
    v19(v17, v7);
  }

  return v18 & 1;
}

void sub_1D11CBD50()
{
  v1 = sub_1D138D76C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UserDomainConceptViewData(0);
  sub_1D106A1D8(v0 + *(v12 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D109AC18(v7);
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1D138D72C();
    v13 = objc_allocWithZone(MEMORY[0x1E69A4358]);
    v14 = sub_1D138D6DC();
    v15 = [v13 initWithCalendar_];

    (*(v2 + 8))(v4, v1);
    v16 = sub_1D138D4EC();
    v17 = HKMostRecentSampleEndDateText();

    if (v17)
    {
      sub_1D139016C();

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void MeaningfulDateStringRepresentable<>.dateString.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138D57C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v13);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D109AC18(v10);
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1D138D72C();
    v16 = objc_allocWithZone(MEMORY[0x1E69A4358]);
    v17 = sub_1D138D6DC();
    v18 = [v16 initWithCalendar_];

    (*(v5 + 8))(v7, v4);
    v19 = sub_1D138D4EC();
    v20 = HKMostRecentSampleEndDateText();

    if (v20)
    {
      sub_1D139016C();

      (*(v12 + 8))(v15, v11);
    }

    else
    {
      __break(1u);
    }
  }
}

id AttributedValueUnitStringProvider.attributedValueStringForDisplay.getter(uint64_t a1, uint64_t a2)
{
  sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
  v4 = sub_1D1390C6C();
  v5 = sub_1D1390C6C();
  v6 = sub_1D11CC7C0(v4, v5, a1, a2);

  return v6;
}

id AttributedValueUnitStringProvider.attributedValueStringForDisplay(targetWidth:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
  v6 = sub_1D1390C6C();
  v7 = sub_1D1390C6C();
  v8 = sub_1D1390C6C();
  (*(a2 + 16))(a1, a2);
  v35 = v6;
  if (v9 && (sub_1D139023C(), v11 = v10, , v11))
  {

    v12 = v6;
  }

  else
  {
    v13 = (*(a2 + 8))(a1, a2);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v36 = 0;
    v16 = sub_1D11CD188(v13, v15, &v36);

    if (v16)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }
  }

  v17 = a1;
  v18 = v12;
  v19 = sub_1D11CC7C0(v18, v8, v17, a2);
  [v19 boundingRectWithSize:1 options:0 context:{a3, 1.79769313e308}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v35 lineHeight];
  v29 = v28;
  v37.origin.x = v21;
  v37.origin.y = v23;
  v37.size.width = v25;
  v37.size.height = v27;
  if (CGRectGetHeight(v37) - (v29 + v29) >= 2.22044605e-16)
  {
    v32 = sub_1D1390C6C();
    v30 = sub_1D1390C6C();
    v33 = sub_1D11CC7C0(v32, v30, v17, a2);

    v18 = v7;
    v7 = v35;
    v31 = v19;
    v19 = v33;
  }

  else
  {
    v30 = v8;
    v31 = v35;
  }

  return v19;
}

id sub_1D11CC7C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 8))(a3, a4);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

LABEL_10:
    if ((*(a4 + 24))(a3, a4))
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
    }

    sub_1D106F7BC(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v25 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    *(inited + 40) = a1;
    v26 = a1;
    v27 = v25;
    sub_1D109B2B4(inited);
    swift_setDeallocating();
    sub_1D106F880(inited + 32);
    v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v29 = sub_1D139012C();

    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v30 = sub_1D138FFEC();

    v18 = [v28 initWithString:v29 attributes:v30];

    goto LABEL_19;
  }

  (*(a4 + 16))(a3, a4);
  if (v11)
  {
    sub_1D106F7BC(0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1D139E700;
    v13 = *MEMORY[0x1E69DB648];
    *(v12 + 32) = *MEMORY[0x1E69DB648];
    v54 = sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
    *(v12 + 64) = v54;
    *(v12 + 40) = a1;
    v53 = v13;
    v14 = a1;
    sub_1D109B2B4(v12);
    swift_setDeallocating();
    sub_1D106F880(v12 + 32);
    v15 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v16 = sub_1D139012C();
    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v17 = sub_1D138FFEC();

    v18 = [v15 initWithString:v16 attributes:v17];

    if ((*(a4 + 32))(a3, a4))
    {
      v19 = sub_1D139028C();

      if (v19 > 5)
      {
        sub_1D109B2B4(MEMORY[0x1E69E7CC0]);
        v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v21 = sub_1D139012C();
        v22 = sub_1D138FFEC();

        v23 = [v20 initWithString:v21 attributes:v22];
LABEL_18:

        [v18 appendAttributedString_];
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_1D139E710;
        *(v43 + 32) = v53;
        *(v43 + 40) = a2;
        v44 = *MEMORY[0x1E69DB650];
        *(v43 + 64) = v54;
        *(v43 + 72) = v44;
        v45 = objc_opt_self();
        v46 = a2;
        v47 = v44;
        v48 = [v45 secondaryLabelColor];
        *(v43 + 104) = sub_1D106F934(0, &qword_1EE06B6E0, 0x1E69DC888);
        *(v43 + 80) = v48;
        sub_1D109B2B4(v43);
        swift_setDeallocating();
        sub_1D106F814(0);
        swift_arrayDestroy();
        v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v50 = sub_1D139012C();

        v51 = sub_1D138FFEC();

        v30 = [v49 initWithString:v50 attributes:v51];

        [v18 appendAttributedString_];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1D139E700;
    v38 = *MEMORY[0x1E69DB660];
    *(v37 + 32) = *MEMORY[0x1E69DB660];
    v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v40 = v38;
    v41 = [v39 initWithDouble_];
    *(v37 + 64) = sub_1D106F934(0, &qword_1EE06B6C0, 0x1E696AD98);
    *(v37 + 40) = v41;
    sub_1D109B2B4(v37);
    swift_setDeallocating();
    sub_1D106F880(v37 + 32);
    v42 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v21 = sub_1D139012C();
    v22 = sub_1D138FFEC();

    v23 = [v42 initWithString:v21 attributes:v22];
    goto LABEL_18;
  }

  sub_1D106F7BC(0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1D139E700;
  v32 = *MEMORY[0x1E69DB648];
  *(v31 + 32) = *MEMORY[0x1E69DB648];
  *(v31 + 64) = sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
  *(v31 + 40) = a1;
  v33 = a1;
  v34 = v32;
  sub_1D109B2B4(v31);
  swift_setDeallocating();
  sub_1D106F880(v31 + 32);
  v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v36 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v30 = sub_1D138FFEC();

  v18 = [v35 initWithString:v36 attributes:v30];

LABEL_19:
  return v18;
}

uint64_t sub_1D11CCF70(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D139016C();

  return v4;
}

uint64_t sub_1D11CCFEC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D139016C();

  return v6;
}

id sub_1D11CD050()
{
  sub_1D106F934(0, &qword_1EC60E670, 0x1E69DB878);
  v0 = sub_1D1390C6C();
  v1 = sub_1D1390C6C();
  v2 = sub_1D106EDC4(v0, v1);

  return v2;
}

BOOL sub_1D11CD188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1D13911DC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1D11CD2F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

void sub_1D11CD378(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1D11CD3E0()
{
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1D11CD434(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

double sub_1D11CD4F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1D11CD55C()
{
  swift_beginAccess();

  return result;
}

double sub_1D11CD5A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1D11CD65C(uint64_t a1, uint64_t *a2)
{
  sub_1D1072E70(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1D102CC18(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D11CD6C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1D1072E70(v1 + v3, a1);
}

uint64_t sub_1D11CD720(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1D102CC18(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D11CD860()
{
  result = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
  if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) <= 4u)
  {
    if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) <= 1u)
    {
      if (!*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category))
      {
        return result;
      }

      v5 = 21;
    }

    else
    {
      v6 = 17;
      if (result != 3)
      {
        v6 = 18;
      }

      if (result == 2)
      {
        v5 = 20;
      }

      else
      {
        v5 = v6;
      }
    }
  }

  else
  {
    v2 = 16;
    v3 = -1;
    v4 = 27;
    if (result != 9)
    {
      v4 = 30;
    }

    if (result != 8)
    {
      v3 = v4;
    }

    if (result == 6)
    {
      v2 = 19;
    }

    if (result == 5)
    {
      v2 = 22;
    }

    if (*(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) <= 7u)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }
  }

  result = [objc_opt_self() categoryWithID_];
  if (result)
  {
    v7 = result;
    [result categoryID];

    return sub_1D1390C3C();
  }

  return result;
}

id sub_1D11CD978(uint64_t a1)
{
  v1 = a1;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category;
  LOBYTE(v25) = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category);
  v3 = sub_1D11AF4E4(&v25);
  v4 = *(v3 + 2);
  if (v4)
  {
    v24 = v1;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D10FD984(0, v4, 0);
    v5 = v27;
    v6 = 32;
    v7 = MEMORY[0x1E69E6158];
    do
    {
      v8 = v3[v6];
      if (v8 <= 1)
      {
        if (v3[v6])
        {
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          v23 = 0xE000000000000000;
        }

        else
        {
          if (qword_1EE06AD00 != -1)
          {
            swift_once();
          }

          v23 = 0xE000000000000000;
        }
      }

      else if (v8 != 2 && v8 == 3)
      {
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v23 = 0xE000000000000000;
      }

      else
      {
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v23 = 0xE000000000000000;
      }

      v10 = sub_1D138D1CC();
      v26 = v7;
      v27 = v5;
      *&v25 = v10;
      *(&v25 + 1) = v11;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D10FD984((v12 > 1), v13 + 1, 1);
        v5 = v27;
      }

      *(v5 + 16) = v13 + 1;
      sub_1D109E39C(&v25, (v5 + 32 * v13 + 32));
      ++v6;
      --v4;
    }

    while (v4);

    v1 = v24;
  }

  else
  {
  }

  v14 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
  v15 = sub_1D139044C();

  v16 = [v14 initWithItems_];

  LOBYTE(v25) = *(v1 + v2);
  v17 = sub_1D11AF4E4(&v25);
  v18 = sub_1D136BD64(*(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment), v17);
  v20 = v19;

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  [v16 setSelectedSegmentIndex_];
  [v16 addTarget:v1 action:sel_modePickerDidChange_ forControlEvents:4096];
  [v16 sizeToFit];
  return v16;
}

void sub_1D11CDD24()
{
  v1 = v0;
  v2 = type metadata accessor for RecordCategoryViewController();
  v28.receiver = v0;
  v28.super_class = v2;
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v3 = [v0 navigationItem];
  [v3 _setSupportsTwoLineLargeTitles_];

  v4 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D11D3800(0, &unk_1EC60CCA0, sub_1D11CE18C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v6 = 0;
  *(inited + 16) = xmmword_1D139EAB0;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category;
  if (v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category] == 2)
  {
    v6 = sub_1D11D22C0();
  }

  *(inited + 32) = v6;
  *(inited + 40) = sub_1D11D25C8();
  v26[3] = v2;
  v26[0] = v1;
  v8 = v1;
  v9 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v26, sel_tapToRadar_);
  sub_1D11D3A44(v26, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D1082CC4);
  *(inited + 48) = v9;
  sub_1D1122680(inited);
  sub_1D11D2414();
  v10 = [v8 navigationItem];
  v11 = 0;
  v12 = v27;
  v26[0] = v4;
  v13 = *(v27 + 16);
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v14 = *(v12 + 8 * v11++ + 32);
    if (v14)
    {
      v15 = v14;
      MEMORY[0x1D3885D90]();
      if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D106F934(0, &qword_1EC609A90, 0x1E69DC708);
  v16 = sub_1D139044C();

  [v10 setRightBarButtonItems_];

  v17 = v1[v7];
  if (v17 == 2)
  {
    v26[0] = sub_1D11D1DC4();
    sub_1D11D47E0(0, &qword_1EC60B3A8, sub_1D1125BE8, MEMORY[0x1E695BED0]);
    sub_1D11D3864();
    v18 = sub_1D138F90C();

    *&v8[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsCanceller] = v18;

    LOBYTE(v17) = v1[v7];
  }

  LOBYTE(v26[0]) = v17;
  v19 = DisplayCategory.Kind.hkDisplayCategory.getter();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 color];
    if (v21)
    {
      v22 = v21;

      sub_1D11D3AAC(&unk_1EC60CCB0, v23, type metadata accessor for RecordCategoryViewController, &protocol conformance descriptor for RecordCategoryViewController);
      sub_1D138E8DC();
LABEL_18:

      sub_1D11CFC20();
      return;
    }
  }

  v24 = [v8 view];
  if (v24)
  {
    v25 = v24;

    v20 = [objc_opt_self() systemBackgroundColor];
    [v25 setBackgroundColor_];

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void sub_1D11CE18C(uint64_t a1)
{
  if (!qword_1EC60B378)
  {
    sub_1D106F934(255, &qword_1EC609A90, 0x1E69DC708);
    v1 = sub_1D1390F3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60B378);
    }
  }
}

id sub_1D11CE314()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RecordCategoryViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController];
  if (!v2)
  {
    goto LABEL_5;
  }

  result = [v2 view];
  if (result)
  {
    v4 = result;
    result = [v0 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 setFrame_];
LABEL_5:
      sub_1D11D3AAC(&unk_1EC60CCB0, v1, type metadata accessor for RecordCategoryViewController, &protocol conformance descriptor for RecordCategoryViewController);
      return sub_1D138E8CC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D11CE638(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *&v4[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController];
  if (v10 && (sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258), v11 = a1, v12 = v10, v13 = sub_1D1390D8C(), v11, v12, (v13 & 1) != 0))
  {
    v14 = [v5 presentedViewController];
    if (v14)
    {
    }

    else
    {
      if (a3)
      {
        v20[4] = a3;
        v20[5] = a4;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 1107296256;
        v20[2] = sub_1D10CBD3C;
        v20[3] = &block_descriptor_31;
        v18 = _Block_copy(v20);
      }

      else
      {
        v18 = 0;
      }

      v19 = type metadata accessor for RecordCategoryViewController();
      v21.receiver = v5;
      v21.super_class = v19;
      objc_msgSendSuper2(&v21, sel_presentViewController_animated_completion_, v11, a2 & 1, v18);
      _Block_release(v18);
    }
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v15 + 24) = a1;
    *(v15 + 32) = a2 & 1;
    *(v15 + 40) = a3;
    *(v15 + 48) = a4;
    v16 = a1;
    v17 = v5;
    sub_1D102CE24(a3, a4);
    sub_1D11CF7A0(0, sub_1D11D38EC, v15);
  }
}

void sub_1D11CE858(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10[4] = a4;
    v10[5] = a5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D10CBD3C;
    v10[3] = &block_descriptor_110;
    v8 = _Block_copy(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for RecordCategoryViewController();
  v11.receiver = a1;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, sel_presentViewController_animated_completion_, a2, a3 & 1, v8);
  _Block_release(v8);
}

void sub_1D11CEA14(void *a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_1D106F934(0, &qword_1EE06B758, 0x1E69DD1B8);
      v6 = a1;
      v7 = sub_1D1390D8C();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 2 && v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] == 1)
  {
    v10 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
    [*&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] invalidate];
    v11 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:sel_showPinnedLabsPopoverIfNeeded selector:0 userInfo:0 repeats:1.0];
    v12 = *&v2[v10];
    *&v2[v10] = v11;
  }

  else
  {

    sub_1D11CF7A0(1, 0, 0);
  }
}

void sub_1D11CEC1C(char a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2 && v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] == 1)
  {
    if (a1)
    {
      v5 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
      [*&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] invalidate];
      v6 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_showPinnedLabsPopoverIfNeeded selector:0 userInfo:0 repeats:1.0];
      v7 = *&v1[v5];
      *&v1[v5] = v6;
    }

    else
    {

      sub_1D11CF42C();
    }
  }

  else
  {

    sub_1D11CF7A0(1, 0, 0);
  }
}

double sub_1D11CED48()
{
  v1 = v0;
  v18 = MEMORY[0x1E69E8050];
  v17 = MEMORY[0x1E69E6720];
  sub_1D11D3800(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  sub_1D11D3914(0);
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11D21A0();
  v9 = sub_1D1124C84();

  v21 = v9;
  sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v10 = sub_1D1390A7C();
  v20 = v10;
  v11 = sub_1D1390A2C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = MEMORY[0x1E695BED0];
  sub_1D11D48B8(0, &unk_1EE06A770, MEMORY[0x1E695BED0]);
  sub_1D11D3A00(&qword_1EE06A780, &unk_1EE06A770, v12, MEMORY[0x1E695BED8]);
  sub_1D10EDC58();
  sub_1D138F8BC();
  sub_1D11D3A44(v4, &qword_1EE06A620, v18, v17, sub_1D11D3800);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D11D3AAC(&qword_1EC60CD10, 255, sub_1D11D3914, MEMORY[0x1E695BE98]);
  v13 = v19;
  v14 = sub_1D138F90C();

  (*(v6 + 8))(v8, v13);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_cancellable) = v14;

  return result;
}

void sub_1D11CF080(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] = v2;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 2 && v5[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] == 1)
    {
      v8 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
      [*&v5[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] invalidate];
      v9 = [objc_opt_self() scheduledTimerWithTimeInterval:v5 target:sel_showPinnedLabsPopoverIfNeeded selector:0 userInfo:0 repeats:1.0];
      v10 = *&v5[v8];
      *&v5[v8] = v9;

      v5 = v10;
    }

    else
    {
      sub_1D11CF7A0(1, 0, 0);
    }
  }
}

void sub_1D11CF1C8(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer) invalidate];
    v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_showPinnedLabsPopoverIfNeeded selector:0 userInfo:0 repeats:1.0];
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
  }

  else
  {

    sub_1D11CF42C();
  }
}

void sub_1D11CF26C()
{
  v5 = v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
  v1 = sub_1D11AF4E4(&v5);
  v2 = sub_1D11CD958();
  v3 = [v2 selectedSegmentIndex];

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= *(v1 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v1[v3 + 32];

  v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = v4;
  if (![objc_opt_self() isMainThread])
  {
LABEL_11:
    __break(1u);
    return;
  }

  if ([v0 isViewLoaded])
  {
    sub_1D11D08FC(v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding], *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount], v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount + 8]);
    sub_1D11D0A2C();

    _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
  }
}

void sub_1D11CF42C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
  [*&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] invalidate];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  v4 = [v1 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewControllers];

    sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
    v7 = sub_1D139045C();

    if (v7 >> 62)
    {
      v8 = sub_1D13910DC();
      if (v8)
      {
LABEL_4:
        v9 = __OFSUB__(v8, 1);
        v10 = v8 - 1;
        if (v9)
        {
          __break(1u);
        }

        else if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v10 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v11 = *(v7 + 8 * v10 + 32);
LABEL_9:
            v27 = v11;

            v4 = v27;
            goto LABEL_12;
          }

          __break(1u);
          return;
        }

        v11 = MEMORY[0x1D3886B70](v10, v7);
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v4 = 0;
  }

LABEL_12:
  v12 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category;
  if (v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category] == 2)
  {
    v28 = v4;
    v13 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController;
    v14 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController];
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {

LABEL_26:
        v4 = v28;
        goto LABEL_27;
      }
    }

    if (!v28)
    {
      return;
    }

    sub_1D106F934(0, &unk_1EC6099E0, 0x1E69DD258);
    v16 = v28;
    v17 = v1;
    v18 = sub_1D1390D8C();

    if (v18)
    {
      v19 = [*&v17[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile] healthStore];
      v20 = objc_allocWithZone(type metadata accessor for LabsOnboardingViewController(0));
      v21 = sub_1D126B0A4(1, v19);

      v22 = *&v1[v13];
      *&v1[v13] = v21;
      v23 = v21;

      v28 = [v23 popoverPresentationController];
      if (v28)
      {
        [v28 setPermittedArrowDirections_];
        v24 = v1[v12];
        v25 = v28;
        if (v24 == 2)
        {
          v26 = sub_1D11D22C0();
        }

        else
        {
          v26 = 0;
        }

        [v25 setBarButtonItem_];
      }

      [v17 presentViewController:v23 animated:1 completion:0];

      goto LABEL_26;
    }

    v4 = v16;
  }

LABEL_27:
}

void sub_1D11CF7A0(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer;
  [*(v4 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer) invalidate];
  v9 = *(v4 + v8);
  *(v4 + v8) = 0;

  v10 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController;
  v11 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 presentingViewController];
    if (v13)
    {

      if (a2)
      {
        v16[4] = a2;
        v16[5] = a3;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = sub_1D10CBD3C;
        v16[3] = &block_descriptor_6_0;
        a2 = _Block_copy(v16);
      }

      [v12 dismissViewControllerAnimated:a1 & 1 completion:a2];
      _Block_release(a2);

      v14 = *(v4 + v10);
      *(v4 + v10) = 0;

      return;
    }
  }

  if (a2)
  {
    (a2)();
  }

  v15 = *(v4 + v10);
  *(v4 + v10) = 0;
}

void sub_1D11CF9E0(char a1, char a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for RecordCategoryViewController();
  v5 = a1 & 1;
  objc_msgSendSuper2(&v8, sel_setEditing_animated_, v5, a2 & 1);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController;
  v7 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController];
  if (!v7)
  {
    goto LABEL_4;
  }

  if ([v7 isEditing] != v5)
  {
    v7 = *&v2[v6];
LABEL_4:
    [v7 setEditing:v5 animated:a2 & 1];
  }

  sub_1D11D2414();
}

void sub_1D11CFAD8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16];
  v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48];
  v15 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 32];
  v16 = v3;
  v4 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16];
  v14[0] = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
  v14[1] = v4;
  v5 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48];
  v12[2] = v15;
  v12[3] = v5;
  v6 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile];
  v17 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64];
  v13 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64];
  v12[0] = v14[0];
  v12[1] = v2;
  v7 = objc_allocWithZone(type metadata accessor for PDFConfigurationViewController());
  v8 = v6;
  sub_1D1082914(v14, v11);
  v9 = sub_1D11B6250(v8, 0, v12);

  v10 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v1 presentViewController:v10 animated:1 completion:0];
}

double sub_1D11CFC20()
{
  v1 = v0;
  v2 = sub_1D1390A5C();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1390B0C();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1165380(0);
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11D4614(0);
  v11 = *(v10 - 8);
  v73 = v10;
  v74 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1E69E8050];
  v80 = MEMORY[0x1E69E6720];
  sub_1D11D3800(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  sub_1D11D46E4(0);
  v61 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11D49A8(0);
  v63 = v20;
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_countProvider);

  sub_1D138F6CC();

  v24 = v81[0];
  v25 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_accountStateProvider);

  sub_1D138F6CC();

  sub_1D11D07A0(v24, v82[0]);

  v81[0] = *(v23 + 32);
  *v82 = *(v25 + 16);
  v26 = MEMORY[0x1E695BF98];
  sub_1D11D47E0(0, &qword_1EE06A740, sub_1D11D4854, MEMORY[0x1E695BF98]);
  sub_1D11D48B8(0, &qword_1EE06A738, v26);
  sub_1D11D4920();
  sub_1D11D3A00(&qword_1EC609A70, &qword_1EE06A738, v26, MEMORY[0x1E695BFB0]);
  sub_1D138F83C();
  v58 = sub_1D106F934(0, &qword_1EE06B760, 0x1E69E9610);
  v27 = sub_1D1390A7C();
  v81[0] = v27;
  v28 = sub_1D1390A2C();
  v29 = *(v28 - 8);
  v79 = *(v29 + 56);
  v60 = v29 + 56;
  v30 = v15;
  v31 = v15;
  v32 = v28;
  v57 = v28;
  v79(v31, 1, 1);
  sub_1D11D3AAC(&qword_1EC60CFA8, 255, sub_1D11D46E4, MEMORY[0x1E695BC68]);
  v78 = sub_1D10EDC58();
  v33 = v61;
  sub_1D138F8BC();
  v77 = sub_1D11D3800;
  v34 = v62;
  sub_1D11D3A44(v30, &qword_1EE06A620, v62, v80, sub_1D11D3800);

  (*(v17 + 8))(v19, v33);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1D11D4A78;
  *(v36 + 24) = v35;
  v61 = MEMORY[0x1E695BE98];
  sub_1D11D3AAC(&qword_1EC60CFB0, 255, sub_1D11D49A8, MEMORY[0x1E695BE98]);
  v37 = v63;
  v38 = sub_1D138F90C();

  (*(v64 + 8))(v22, v37);
  *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCanceller) = v38;
  v59 = v1;

  v39 = [objc_opt_self() defaultCenter];
  sub_1D139092C();
  __swift_project_boxed_opaque_existential_1Tm(v81, v81[3]);
  v40 = sub_1D138D8BC();
  v41 = v65;
  sub_1D1390B1C();

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  v42 = sub_1D1390A7C();
  v81[0] = v42;
  (v79)(v30, 1, 1, v32);
  sub_1D11D3AAC(&qword_1EC60CF70, 255, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v43 = v66;
  v44 = v68;
  sub_1D138F8BC();
  v45 = v34;
  v46 = v34;
  v47 = v80;
  sub_1D11D3A44(v30, &qword_1EE06A620, v46, v80, v77);

  (*(v69 + 8))(v41, v44);
  v48 = v70;
  sub_1D1390A4C();
  v49 = sub_1D1390A7C();
  v81[0] = v49;
  (v79)(v30, 1, 1, v57);
  sub_1D11D3AAC(&qword_1EC60CF80, 255, sub_1D1165380, v61);
  v50 = v67;
  v51 = v71;
  sub_1D138F8CC();
  sub_1D11D3A44(v30, &qword_1EE06A620, v45, v47, v77);

  (*(v75 + 8))(v48, v76);
  (*(v72 + 8))(v43, v51);
  swift_allocObject();
  v52 = v59;
  swift_unknownObjectWeakInit();
  sub_1D11D3AAC(&qword_1EC60CFB8, 255, sub_1D11D4614, MEMORY[0x1E695BE50]);
  v53 = v73;
  v54 = sub_1D138F90C();

  (*(v74 + 8))(v50, v53);
  *(v52 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_aToZCanceller) = v54;

  return result;
}

void sub_1D11D0680(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D11D07A0(a1, a2 & 1);
  }
}

void sub_1D11D06F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([objc_opt_self() isMainThread])
    {
      if ([v3 isViewLoaded])
      {
        sub_1D11D08FC(v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding], *&v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount], v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount + 8]);
        sub_1D11D0A2C();
        _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D11D07A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 48];
  v17 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 32];
  v18 = v5;
  v19 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 64];
  v6 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category + 16];
  v15 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
  v16 = v6;
  if (*(a1 + 16) && (v8 = sub_1D129DF64(&v15), (v9 & 1) != 0))
  {
    v10 = &v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount];
    v11 = (v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount + 8] & 1) != 0 || *v10 < 1;
    *v10 = *(*(a1 + 56) + 8 * v8);
    v10[8] = 0;
    v12 = &v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding];
    v13 = v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding];
    v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding] = a2 & 1;
    if (v13 == (a2 & 1) && !v11)
    {
      return;
    }
  }

  else
  {
    v12 = &v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding];
    v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding] = a2 & 1;
  }

  if ([objc_opt_self() isMainThread])
  {
    if ([v3 isViewLoaded])
    {
      sub_1D11D08FC(*v12, *&v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount], v3[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount + 8]);
      sub_1D11D0A2C();

      _s15HealthRecordsUI28RecordCategoryViewControllerC016didDismissSearchG0yySo08UISearchG0CF_0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D11D08FC(void *result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = -128;
    }
  }

  else if (a2 < 1)
  {
    v4 = result & 1;
  }

  else
  {
    sub_1D11D09AC(&v6);
    v4 = v6 | 0x40;
  }

  v5 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode);
  if (v5 >> 6)
  {
    if (v5 >> 6 != 1)
    {
      if (v4 == 128)
      {
        return;
      }

      goto LABEL_17;
    }

    if ((v4 & 0xC0) != 0x40 || ((v5 ^ v4) & 0x3F) != 0)
    {
LABEL_17:
      *(v3 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode) = v4;
    }
  }

  else if (v4 > 0x3Fu || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_17;
  }
}

void sub_1D11D09AC(char *a1@<X8>)
{
  if (!sub_1D11D15BC())
  {
    v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment);
    goto LABEL_8;
  }

  if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category) != 2)
  {
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  v5 = 2;
  v3 = sub_1D11AF4E4(&v5);
  if (!*(v3 + 2))
  {

    goto LABEL_7;
  }

  v4 = v3[32];

LABEL_8:
  *a1 = v4;
}

void sub_1D11D0A2C()
{
  v1 = v0;
  v2 = sub_1D139091C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    if ((v0[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode] & 0xC0) == 0x40)
    {
      v6 = sub_1D11D15BC();
      v7 = v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category] == 2;
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }

    v8 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState];
    if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState] == 2 || ((v6 ^ v8) & 1) != 0 || v7 != (v8 & 0x100) >> 8)
    {
      if (v7)
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      *&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState] = v9 & 0xFFFE | v6;
      v10 = v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
      v11 = [v1 navigationItem];
      if (v10 == 2)
      {
        v12 = sub_1D11D27F4();
        [v11 setAdditionalOverflowItems_];
      }

      else
      {
        if (v6)
        {
          v13 = 0;
        }

        else
        {
          v13 = sub_1D11CD958();
        }

        v14 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentPalette;
        v15 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentPalette];
        (*(v3 + 104))(v5, *MEMORY[0x1E69A3878], v2);
        v16 = v15;
        v17 = sub_1D139090C();

        (*(v3 + 8))(v5, v2);
        v18 = *&v1[v14];
        *&v1[v14] = v17;
      }

      v19 = [v1 navigationItem];
      v20 = v19;
      if (v7)
      {
        v21 = sub_1D11D1998();
        [v20 setSearchController_];

        v22 = [v1 navigationItem];
        [v22 setPreferredSearchBarPlacement_];

        v20 = [v1 navigationItem];
        [v20 setHidesSearchBarWhenScrolling_];
      }

      else
      {
        [v19 setSearchController_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}
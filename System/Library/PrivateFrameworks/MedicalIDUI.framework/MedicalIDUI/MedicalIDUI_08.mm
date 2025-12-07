void __swiftcall MedicalIDPregnancyViewModel.validationError(for:)(MedicalIDUI::BasicAlertModel *__return_ptr retstr, MedicalIDUI::MedicalIDPregnancyViewModel::ValidationError a2)
{
  v2 = a2;
  v44 = retstr;
  v3 = type metadata accessor for BasicAlertModel.Action(0);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v39) = *v2;
  v7 = sub_2588BD858();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v37 = "Gestational Age: ";
  v9 = qword_27F95DA88;
  v10 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = v9;
  sub_2588BBAB8();
  v35[0] = v11;
  v12 = sub_2588BD8B8();
  v40 = v13;
  v41 = v12;
  v35[1] = v35;
  MEMORY[0x28223BE20](v12);
  if (v39)
  {
    v14 = "dueDateTooFarInPast";
  }

  else
  {
    v14 = "com.apple.mobilephone";
  }

  v36 = v14;
  if (v39)
  {
    v15 = 0xD000000000000015;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  v39 = v15;
  v16 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v16);
  sub_2588BBAB8();
  v17 = v35[0];
  v37 = sub_2588BD8B8();
  v19 = v18;
  MEMORY[0x28223BE20](v37);
  v20 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v20);
  sub_2588BBAB8();
  v21 = sub_2588BD8B8();
  v23 = v22;
  v24 = v42;
  v25 = *(v42 + 24);
  sub_2588BBDD8();
  v26 = sub_2588BBDE8();
  (*(*(v26 - 8) + 56))(&v6[v25], 0, 1, v26);
  sub_2588BB9E8();
  v27 = &v6[*(v24 + 20)];
  *v27 = v21;
  v27[1] = v23;
  v28 = &v6[*(v24 + 28)];
  v29 = v36 | 0x8000000000000000;
  sub_258868DE8(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  *v28 = 0;
  *(v28 + 1) = 0;
  v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2588C00B0;
  sub_258868BD0(v6, v31 + v30, type metadata accessor for BasicAlertModel.Action);
  v32 = v44;
  v33 = v40;
  v44->title._countAndFlagsBits = v41;
  v32->title._object = v33;
  v32->message.value._countAndFlagsBits = v37;
  v32->message.value._object = v19;
  v34 = v39;
  v32->actions._rawValue = v31;
  v32->code.value._countAndFlagsBits = v34;
  v32->code.value._object = v29;
}

MedicalIDUI::MedicalIDPregnancyViewModel::ValidationError_optional __swiftcall MedicalIDPregnancyViewModel.ValidationError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDPregnancyViewModel.ValidationError.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_258868888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "com.apple.mobilephone";
  }

  else
  {
    v4 = "dueDateTooFarInPast";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "dueDateTooFarInPast";
  }

  else
  {
    v7 = "com.apple.mobilephone";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2588BDF98();
  }

  return v9 & 1;
}

uint64_t sub_258868934()
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2588689B4(uint64_t a1)
{
  sub_2588BD908();
}

uint64_t sub_258868A20(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_258868A9C@<X0>(char *a2@<X8>)
{
  v3 = sub_2588BDF58();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_258868AFC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "dueDateTooFarInPast";
  }

  else
  {
    v3 = "com.apple.mobilephone";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_258868B3C()
{
  result = qword_27F9606B0;
  if (!qword_27F9606B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9606B0);
  }

  return result;
}

uint64_t sub_258868B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258868BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258868C3C()
{
  result = qword_27F9606C0;
  if (!qword_27F9606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9606C0);
  }

  return result;
}

void sub_258868CB8(uint64_t a1)
{
  type metadata accessor for MedicalIDData(319);
  if (v1 <= 0x3F)
  {
    sub_2588BBB48();
    if (v2 <= 0x3F)
    {
      sub_2588BBAC8();
      if (v3 <= 0x3F)
      {
        sub_258868DE8(319, &qword_27F9606D8, type metadata accessor for PregnancySampleDataProvider, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_258868DE8(319, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258868DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s11MedicalIDUI0A18IDValidationResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  if (!v3)
  {
    if (!v10)
    {
      sub_2587FC42C(*a1, 0, v5, v4, v6, v7, v8);
      sub_2587FC42C(v9, 0, v12, v11, v14, v13, v15);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    v30 = *a2;
    v31 = a2[3];
    v24 = a1[3];
    v33 = a2[2];
    v25 = a1[4];
    v40 = a2[4];
    v26 = a1[5];
    v27 = a1[6];
    sub_25882C8CC(*a2, a2[1], v33, v31, v40, v13, v15);
    sub_25882C8CC(v2, v3, v5, v24, v25, v26, v27);
    sub_2587FC42C(v2, v3, v5, v24, v25, v26, v27);
    sub_2587FC42C(v30, v10, v33, v31, v40, v13, v15);
    v23 = 0;
    return v23 & 1;
  }

  v42[0] = *a1;
  v42[1] = v3;
  v36 = v15;
  v37 = v5;
  v42[2] = v5;
  v42[3] = v4;
  v42[4] = v6;
  v42[5] = v7;
  v42[6] = v8;
  v41[0] = v9;
  v41[1] = v10;
  v41[2] = v12;
  v41[3] = v11;
  v16 = v14;
  v38 = v13;
  v39 = v14;
  v41[4] = v14;
  v41[5] = v13;
  v17 = v15;
  v41[6] = v15;
  v18 = v4;
  v34 = v7;
  v35 = v4;
  v19 = v6;
  v20 = v7;
  v21 = v13;
  v22 = v8;
  v29 = v8;
  sub_25882C8CC(v9, v10, v12, v11, v16, v21, v17);
  sub_25882C8CC(v2, v3, v37, v18, v19, v20, v22);
  sub_25882C8CC(v9, v10, v12, v11, v39, v38, v36);
  sub_25882C8CC(v2, v3, v37, v35, v19, v34, v29);
  v32 = _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(v42, v41);
  sub_2587FC42C(v2, v3, v37, v35, v19, v34, v29);
  sub_2587FC42C(v9, v10, v12, v11, v39, v38, v36);
  sub_2587FC42C(v9, v10, v12, v11, v39, v38, v36);
  sub_2587FC42C(v2, v3, v37, v35, v19, v34, v29);
  v23 = v32;
  return v23 & 1;
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI0A18IDValidationResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_258869140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258869190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_2588691F0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

id sub_258869230()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
  sub_258869D4C(0);
  sub_2588BCB38();
  [v1 setDelegate_];

  [v1 setAllowsEditing_];
  v2 = *(v0 + *(type metadata accessor for ImagePickerView(0) + 20));
  [v1 setSourceType_];
  if (v2 == 1)
  {
    [v1 setCameraDevice_];
  }

  return v1;
}

uint64_t sub_2588694F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2588BC298();
  v5[4] = swift_task_alloc();
  sub_258804A60(0);
  v5[5] = v6;
  v5[6] = swift_task_alloc();
  sub_2588BDA78();
  v5[7] = sub_2588BDA68();
  v8 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2588695E4, v8, v7);
}

uint64_t sub_2588695E4()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = (v1 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor);
  v4 = *(v1 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 8))(v2, v0 + 8, v4, v5, 200.0, 200.0);
  if (v6)
  {
    v7 = v6;
    v8 = v0[2] + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_parent;
    v9 = type metadata accessor for ImagePickerView(0);
    (*(v8 + *(v9 + 24)))(v7);
  }

  v11 = v0[5];
  v10 = v0[6];
  sub_25885299C(v10);
  MEMORY[0x259C8C5A0](v11);
  sub_2588BC288();
  sub_2588BD438();
  sub_258869DE0(v10, sub_258804A60);

  v12 = v0[1];

  return v12();
}

uint64_t sub_258869820(uint64_t a1)
{
  result = type metadata accessor for ImagePickerView(319);
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

void sub_258869900(uint64_t a1)
{
  sub_25886A2BC(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SourceType(319);
    if (v2 <= 0x3F)
    {
      sub_2587B2F78();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258869A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258869CE8(v2, v5);
  v13 = &type metadata for UIImageProcessor;
  v14 = &protocol witness table for UIImageProcessor;
  v6 = type metadata accessor for ImagePickerView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_258869CE8(v5, v7 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_parent);
  sub_2587B6C14(v12, v7 + OBJC_IVAR____TtCV11MedicalIDUI15ImagePickerView11Coordinator_imageProcessor);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_258869DE0(v5, type metadata accessor for ImagePickerView);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
  *a2 = v8;
  return result;
}

uint64_t sub_258869B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView, &unk_2588C64B4);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_258869BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView, &unk_2588C64B4);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258869C48(uint64_t a1)
{
  sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView, &unk_2588C64B4);
  sub_2588BCA58();
  __break(1u);
}

uint64_t sub_258869CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258869CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258869D4C(uint64_t a1)
{
  if (!qword_27F960808)
  {
    type metadata accessor for ImagePickerView(255);
    sub_258869CA0(&qword_27F960800, type metadata accessor for ImagePickerView, &unk_2588C64B4);
    v1 = sub_2588BCB48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960808);
    }
  }
}

uint64_t sub_258869DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_258869E40(uint64_t a1, uint64_t a2)
{
  sub_2588BE038();
  sub_2588BD908();
  v4 = sub_2588BE078();

  return sub_258869F48(a1, a2, v4);
}

unint64_t sub_258869EB8(uint64_t a1)
{
  sub_2588BD8A8();
  sub_2588BE038();
  sub_2588BD908();
  v2 = sub_2588BE078();

  return sub_25886A000(a1, v2);
}

unint64_t sub_258869F48(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2588BDF98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25886A000(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2588BD8A8();
      v8 = v7;
      if (v6 == sub_2588BD8A8() && v8 == v9)
      {
        break;
      }

      v11 = sub_2588BDF98();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_25886A104(uint64_t a1)
{
  v2 = v1;
  sub_25886A2BC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  if (*(a1 + 16))
  {
    v7 = sub_258869EB8(*MEMORY[0x277D76A50]);
    if (v8)
    {
      sub_258790448(*(a1 + 56) + 32 * v7, v17);
      sub_25886A320();
      if (swift_dynamicCast())
      {
        v9 = v16[1];
        v10 = sub_2588BDAA8();
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
        sub_2588BDA78();
        v11 = v2;
        v12 = v9;
        v13 = sub_2588BDA68();
        v14 = swift_allocObject();
        v15 = MEMORY[0x277D85700];
        v14[2] = v13;
        v14[3] = v15;
        v14[4] = v11;
        v14[5] = v12;
        sub_2587ABD24(0, 0, v6, &unk_2588C6588, v14);
      }
    }
  }
}

void sub_25886A2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25886A320()
{
  result = qword_27F960810;
  if (!qword_27F960810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F960810);
  }

  return result;
}

uint64_t sub_25886A36C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2588694F0(a1, v4, v5, v7, v6);
}

uint64_t sub_25886A430(char a1, uint64_t a2, uint64_t a3)
{
  sub_2587B1964(255);
  v5 = sub_2588BC1E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  sub_2588BCCC8();
  sub_2588BD028();

  if (a1)
  {
    sub_2588BD1D8();
  }

  else
  {
    sub_2588BD1E8();
  }

  v9 = sub_25886A59C();
  v11[0] = a3;
  v11[1] = v9;
  swift_getWitnessTable();
  sub_2588BCF08();

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25886A59C()
{
  result = qword_27F95D9B8;
  if (!qword_27F95D9B8)
  {
    sub_2587B1964(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9B8);
  }

  return result;
}

void *SuggestedEmergencyContactFetcher.__allocating_init(contactAuthorizationChecker:suggestedContactFetcher:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_25886AFF0(v9, v15, v4, v6, v11, v5, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v17;
}

uint64_t SuggestedEmergencyContactFetcher.fetch(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  if (((*(v6 + 8))(v5, v6) & 1) == 0)
  {
    return a1(0);
  }

  v7 = v2[10];
  v8 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v8 + 8);

  v10(sub_2587907A0, v9, v7, v8);
}

void *SuggestedEmergencyContactFetcher.init(contactAuthorizationChecker:suggestedContactFetcher:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_25886AFF0(v10, v16, v3, v7, v12, v6, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t SuggestedEmergencyContactFetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  return v0;
}

void *sub_25886AAE0(uint64_t a1, uint64_t a2)
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

  sub_25878F1E0(0, &qword_280C0DDD8, &type metadata for MedicalIDEmergencyContact);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 95;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 7);
  return result;
}

void *sub_25886AB68(uint64_t a1, uint64_t a2)
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

  sub_25878F1E0(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_25886ABF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_25886B4DC(0);
  v35 = v4;
  result = sub_2588BDF18();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2588BE038();
      sub_2588BD908();
      result = sub_2588BE078();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_25886AE90()
{
  v1 = v0;
  sub_25886B4DC(0);
  v2 = *v0;
  v3 = sub_2588BDF08();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_25886AFF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[5] = a4;
  a3[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[10] = a5;
  a3[11] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(a3 + 7);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  return a3;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_25886B1F4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 13) | (v17 << 7)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = v18[7];
      v24 = v18[4];
      v23 = v18[5];
      v28[6] = v18[6];
      v28[7] = v22;
      v28[4] = v24;
      v28[5] = v23;
      memmove(v11, v18, 0x80uLL);
      if (v14 == v10)
      {
        sub_2587914E8(v28, v27);
        goto LABEL_24;
      }

      v11 += 128;
      sub_2587914E8(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25886B388(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_25886B4DC(uint64_t a1)
{
  if (!qword_27F960678)
  {
    sub_25878E130(255, &unk_280C0DDF0, 0x277CBDA58);
    v1 = sub_2588BDF38();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960678);
    }
  }
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

uint64_t MedicalIDSpokenLanguagePickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_2588BC7C8();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  sub_25886BAF0();
  v39 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v1;
  sub_25886BD64(0);
  v38 = v12;
  sub_25886BFB0(255);
  v37 = v13;
  sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v36 = v14;
  sub_25886C168(255);
  v16 = v15;
  sub_25886C2D4(255);
  v18 = v17;
  sub_25886C410(255);
  v20 = v19;
  sub_2587E20D0(255);
  v22 = v21;
  v23 = sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
  sub_2587E2184(255);
  v25 = v24;
  v26 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  v46 = v25;
  v47 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v20;
  v47 = v22;
  v48 = v23;
  v49 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v46 = v18;
  v47 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_25878F648();
  v46 = v16;
  v47 = MEMORY[0x277D837D0];
  v48 = v29;
  v49 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_25886D00C(&qword_27F9608E0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v46 = v37;
  v47 = v36;
  v48 = v31;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  sub_2588BC1F8();
  type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  sub_2588BD538();
  swift_getKeyPath(byte_2588C66B0);
  sub_2588BD558();

  (*(v6 + 8))(v8, v5);
  v33 = v40;
  sub_2588BC7B8();
  sub_25886C9D4(&qword_27F9608E8, sub_25886BAF0, MEMORY[0x277CDDA18]);
  v34 = v39;
  sub_2588BCE38();

  (*(v43 + 8))(v33, v44);
  return (*(v41 + 8))(v11, v34);
}

void sub_25886BAF0()
{
  if (!qword_27F960820)
  {
    sub_2588BC138();
    sub_25886BD64(255);
    sub_25886BFB0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886C168(255);
    sub_25886C2D4(255);
    sub_25886C410(255);
    sub_2587E20D0(255);
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
    sub_2587E2184(255);
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    sub_25886D00C(&qword_27F9608E0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC208();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960820);
    }
  }
}

void sub_25886BD64(uint64_t a1)
{
  if (!qword_27F960828)
  {
    sub_25886BFB0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886C168(255);
    sub_25886C2D4(255);
    sub_25886C410(255);
    sub_2587E20D0(255);
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
    sub_2587E2184(255);
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    sub_25886D00C(&qword_27F9608E0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960828);
    }
  }
}

void sub_25886BFB0(uint64_t a1)
{
  if (!qword_27F960830)
  {
    sub_25886C168(255);
    sub_25886C2D4(255);
    sub_25886C410(255);
    sub_2587E20D0(255);
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
    sub_2587E2184(255);
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25878F648();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960830);
    }
  }
}

void sub_25886C168(uint64_t a1)
{
  if (!qword_27F960838)
  {
    sub_25886C2D4(255);
    sub_25886C410(255);
    sub_2587E20D0(255);
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
    sub_2587E2184(255);
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960838);
    }
  }
}

void sub_25886C2D4(uint64_t a1)
{
  if (!qword_27F960840)
  {
    sub_25886C410(255);
    sub_2587E20D0(255);
    sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
    sub_2587E2184(255);
    sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960840);
    }
  }
}

void sub_25886C410(uint64_t a1)
{
  if (!qword_27F960848)
  {
    sub_25886C4C0(255);
    sub_25886C9D4(&qword_27F9608D0, sub_25886C4C0, MEMORY[0x277CE14C0]);
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960848);
    }
  }
}

void sub_25886C4F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25886C558(uint64_t a1)
{
  if (!qword_27F960858)
  {
    sub_25886C4F4(255, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
    sub_25886CA1C(255, &qword_27F960898, sub_25886CAE8, &qword_27F9608C8, sub_25886CAE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960858);
    }
  }
}

void sub_25886C670(uint64_t a1)
{
  if (!qword_27F960870)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CD78(255, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    sub_25886C868();
    v1 = sub_2588BD3B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960870);
    }
  }
}

void sub_25886C788(uint64_t a1)
{
  if (!qword_27F960880)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960880);
    }
  }
}

unint64_t sub_25886C868()
{
  result = qword_27F960888;
  if (!qword_27F960888)
  {
    sub_25886CD78(255, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    sub_25886C9D4(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960888);
  }

  return result;
}

uint64_t sub_25886C9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25886CA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2588BC5D8();
    sub_25886C9D4(a4, a5, MEMORY[0x277CDF038]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_25886CAE8(uint64_t a1)
{
  if (!qword_27F9608A0)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CBD0(255);
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    sub_25886CEFC();
    v1 = sub_2588BD3B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9608A0);
    }
  }
}

void sub_25886CBD0(uint64_t a1)
{
  if (!qword_27F9608A8)
  {
    sub_25878E334(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    sub_25886CC8C(255);
    sub_25880AC14();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9608A8);
    }
  }
}

void sub_25886CC8C(uint64_t a1)
{
  if (!qword_27F9608B0)
  {
    sub_2587A99C0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CDEC();
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9608B0);
    }
  }
}

void sub_25886CD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_25886CDEC()
{
  result = qword_27F9608B8;
  if (!qword_27F9608B8)
  {
    sub_2587A99C0(255);
    sub_2587A9ABC(255);
    sub_25886C9D4(&qword_27F95D440, sub_2587A9ABC, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_25886C9D4(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608B8);
  }

  return result;
}

unint64_t sub_25886CEFC()
{
  result = qword_27F9608C0;
  if (!qword_27F9608C0)
  {
    sub_25886CBD0(255);
    sub_2587A99C0(255);
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CDEC();
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9608C0);
  }

  return result;
}

uint64_t sub_25886D00C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25886D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v58 = type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = v3;
  v65 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2588BC5E8();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C410(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C2D4(0);
  v12 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C168(0);
  v59 = v15;
  v57 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886BFB0(0);
  v62 = v18;
  v61 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_25886C4C0(0);
  sub_25886C9D4(&qword_27F9608D0, sub_25886C4C0, MEMORY[0x277CE14C0]);
  sub_2588BCD48();
  v66 = a1;
  v68 = a1;
  sub_2587E20D0(0);
  v21 = v20;
  v22 = sub_25886C9D4(&qword_27F9608D8, sub_25886C410, MEMORY[0x277CDE5A0]);
  sub_2587E2184(255);
  v24 = v23;
  v25 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  v74 = v24;
  v75 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD0B8();
  (*(v8 + 8))(v10, v7);
  v27 = v12;
  v28 = v53;
  v29 = v55;
  (*(v4 + 104))(v53, *MEMORY[0x277CDDDC0], v55);
  v74 = v7;
  v75 = v21;
  v76 = v22;
  v77 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v56 = v17;
  sub_2588BD008();
  (*(v4 + 8))(v28, v29);
  (*(v54 + 8))(v14, v27);
  v31 = sub_2588BD858();
  MEMORY[0x28223BE20](v31 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v32 = qword_27F95DA88;
  v33 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v33 - 8);
  v34 = v32;
  sub_2588BBAB8();
  v74 = sub_2588BD8B8();
  v75 = v35;
  v72 = v27;
  v73 = v30;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_25878F648();
  v38 = MEMORY[0x277D837D0];
  v39 = v60;
  v40 = v59;
  v41 = v56;
  sub_2588BCF38();

  (*(v57 + 8))(v41, v40);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v42 = v66;
  sub_2588BD528();
  v43 = v74;
  swift_getKeyPath(byte_2588C6758);
  v74 = v43;
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v44 = *(v43 + 24);
  v45 = *(v43 + 32);

  v70 = v44;
  v71 = v45;
  v46 = v42;
  v47 = v65;
  sub_2588700CC(v46, v65);
  v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v49 = swift_allocObject();
  sub_258870130(v47, v49 + v48);
  sub_25878E334(0, &qword_27F95D458, v38, MEMORY[0x277D83D88]);
  v74 = v40;
  v75 = v38;
  v76 = v36;
  v77 = v37;
  swift_getOpaqueTypeConformance2();
  sub_25886D00C(&qword_27F9608E0, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v50 = v62;
  sub_2588BD118();

  return (*(v61 + 8))(v39, v50);
}

uint64_t type metadata accessor for MedicalIDSpokenLanguagePickerView(uint64_t a1)
{
  result = qword_27F9608F0;
  if (!qword_27F9608F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25886DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_25886CAE8(0);
  v89 = v3;
  v91 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v88 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886CA1C(0, &qword_27F960898, sub_25886CAE8, &qword_27F9608C8, sub_25886CAE8);
  v95 = v5;
  v94 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v93 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v92 = v80 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v90 = v80 - v11;
  MEMORY[0x28223BE20](v10);
  v103 = v80 - v12;
  v104 = sub_2588BC5D8();
  v97 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v16 = v15;
  v105 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v80 - v17;
  sub_25886C670(0);
  v84 = v19;
  v83 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v82 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C634(0);
  v85 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v81 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v101 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v80 - v27;
  v29 = *(type metadata accessor for MedicalIDSpokenLanguagePickerView(0) + 20);
  v30 = a1;
  sub_2588BD528();
  v31 = v109;
  swift_getKeyPath(byte_2588C66B0);
  v109 = v31;
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v32 = *(v31 + 40);
  v33 = *(v31 + 48);

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v102 = v30;
  v87 = v14;
  v86 = v16;
  v100 = v18;
  v99 = v29;
  if (v34)
  {
    v35 = 1;
    v36 = v85;
  }

  else
  {
    sub_2588BD538();
    swift_getKeyPath(byte_2588C6758);
    sub_2588BD558();

    v37 = (*(v105 + 8))(v18, v16);
    v106 = v109;
    v107 = v110;
    v108 = v111;
    MEMORY[0x28223BE20](v37);
    sub_25878E334(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25886CD78(0, &qword_27F960878, sub_25886C788, MEMORY[0x277CDE470]);
    sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
    sub_25886C868();
    v38 = v82;
    sub_2588BD388();
    sub_2588BC5C8();
    sub_25886C9D4(&qword_27F960890, sub_25886C670, MEMORY[0x277CDF038]);
    v39 = v81;
    v40 = v84;
    v41 = v104;
    sub_2588BCE88();
    (*(v97 + 8))(v14, v41);
    (*(v83 + 8))(v38, v40);
    v42 = v85;
    (*(v22 + 32))(v28, v39, v85);
    v35 = 0;
    v36 = v42;
  }

  v98 = v28;
  (*(v22 + 56))(v28, v35, 1, v36);
  v43 = sub_2588BD858();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v85 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v45 = qword_27F95DA88;
  v83 = qword_27F95DA88;
  v46 = sub_2588BBAC8();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v84 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v45;
  sub_2588BBAB8();
  v49 = v48;
  v112 = sub_2588BD8B8();
  v113 = v50;
  v51 = v100;
  v52 = v86;
  sub_2588BD538();
  swift_getKeyPath(byte_2588C6758);
  sub_2588BD558();

  v53 = *(v105 + 8);
  v105 += 8;
  v82 = v53;
  v54 = (v53)(v51, v52);
  v106 = v109;
  v107 = v110;
  v108 = v111;
  MEMORY[0x28223BE20](v54);
  sub_25878E334(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v81 = v55;
  sub_25886CBD0(0);
  v80[4] = v56;
  v80[3] = sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v80[2] = sub_25886CEFC();
  v80[1] = sub_25878F648();
  v57 = v88;
  sub_2588BD3A8();
  v58 = v87;
  sub_2588BC5C8();
  v80[0] = sub_25886C9D4(&qword_27F9608C8, sub_25886CAE8, MEMORY[0x277CDF038]);
  v59 = v104;
  v60 = v89;
  sub_2588BCE88();
  v97 = *(v97 + 8);
  (v97)(v58, v59);
  v91 = *(v91 + 8);
  v61 = (v91)(v57, v60);
  MEMORY[0x28223BE20](v61);
  v62 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v62);
  sub_2588BBAB8();
  v112 = sub_2588BD8B8();
  v113 = v63;
  v64 = v100;
  sub_2588BD538();
  swift_getKeyPath(byte_2588C6758);
  sub_2588BD558();

  v65 = (v82)(v64, v52);
  v106 = v109;
  v107 = v110;
  v108 = v111;
  MEMORY[0x28223BE20](v65);
  sub_2588BD3A8();
  sub_2588BC5C8();
  v66 = v90;
  v67 = v104;
  sub_2588BCE88();
  (v97)(v58, v67);
  (v91)(v57, v60);
  v68 = v101;
  sub_2587A27CC(v98, v101);
  v69 = v94;
  v70 = *(v94 + 16);
  v71 = v92;
  v72 = v103;
  v73 = v95;
  v70(v92, v103, v95);
  v74 = v93;
  v70(v93, v66, v73);
  v75 = v96;
  sub_2587A27CC(v68, v96);
  sub_25886C558(0);
  v77 = v76;
  v70((v75 + *(v76 + 48)), v71, v73);
  v70((v75 + *(v77 + 64)), v74, v73);
  v78 = *(v69 + 8);
  v78(v66, v73);
  v78(v72, v73);
  sub_2587A2860(v98);
  v78(v74, v73);
  v78(v71, v73);
  return sub_2587A2860(v101);
}

uint64_t sub_25886E9B0()
{
  sub_25886C788(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2588BD858();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v6;
  sub_2588BBAB8();
  *&v18 = sub_2588BD8B8();
  *(&v18 + 1) = v9;
  sub_25878F648();
  v10 = MEMORY[0x277D837D0];
  *v4 = sub_2588BCDF8();
  *(v4 + 1) = v11;
  v4[16] = v12 & 1;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  *(v4 + 3) = v13;
  v4[48] = 1;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_25886ECB8(&v18, 1701736270, 0xE400000000000000);
  sub_25878E334(255, &qword_27F95D458, v10, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  *&v18 = MEMORY[0x277CE0BD8];
  *(&v18 + 1) = v15;
  *&v19 = MEMORY[0x277CE0BC8];
  *(&v19 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  sub_2588BCFB8();

  return (*(v2 + 8))(v4, v1);
}

void sub_25886ECB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v47 = a1[4];
  v48 = a1[3];
  v46 = a1[5];
  sub_25878E334(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2588BFF50;
  v10 = (v3 + *(type metadata accessor for MedicalIDSpokenLanguagePickerView(0) + 24));
  v11 = v10[1];
  *(v9 + 32) = *v10;
  *(v9 + 40) = v11;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;

  if (v7)
  {

    v9 = sub_2587F0534(1, 3, 1, v9);
    *(v9 + 16) = 3;
    *(v9 + 64) = v6;
    *(v9 + 72) = v7;
  }

  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath(byte_2588C6758);
  sub_25886C9D4(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v12 = *(v49.id._countAndFlagsBits + 32);
  if (!v12)
  {

    v20 = v8;
    if (v7)
    {
      countAndFlagsBits = 0;
      v41 = 0;
      v44 = 0;
      v17 = 0;
      v45 = 0;
LABEL_25:
      v32 = v20;
      v25 = v48;
      v26 = v20;
      v27 = v46;
      v28 = v47;
      sub_258870294(v6, v7, v32, v48, v47, v46);
      sub_258870294(v6, v7, v26, v48, v47, v46);

      object = 0;
      goto LABEL_26;
    }

LABEL_19:
    v22 = v47;
    v23 = v48;
    v21 = v46;
    sub_258870294(v6, 0, v20, v48, v47, v46);
    v7 = 0;
    goto LABEL_20;
  }

  v13 = *(v49.id._countAndFlagsBits + 24);

  v14._countAndFlagsBits = v13;
  v14._object = v12;
  MedicalIDSpokenLanguage.init(id:)(&v49, v14);

  countAndFlagsBits = v49.id._countAndFlagsBits;
  object = v49.id._object;
  v18 = v49.languageInCurrentLocale._countAndFlagsBits;
  v17 = v49.languageInCurrentLocale._object;
  v19 = v49.languageInLanguageLocale._countAndFlagsBits;
  v20 = v8;
  if (!v7)
  {
    if (v49.id._object)
    {
      v44 = v49.languageInCurrentLocale._countAndFlagsBits;
      v45 = v49.languageInLanguageLocale._object;
      v41 = v49.languageInLanguageLocale._countAndFlagsBits;
      v24 = v8;
      v25 = v48;
      v26 = v8;
      v27 = v46;
      v28 = v47;
      sub_258870294(v6, 0, v24, v48, v47, v46);
LABEL_26:
      sub_2588702E4(v6, v7, v26, v25, v28, v27);
      v33 = countAndFlagsBits;
      v34 = object;
      v36 = v41;
      v35 = v44;
      v37 = v17;
      v38 = v45;
LABEL_27:
      sub_2588702E4(v33, v34, v35, v37, v36, v38);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v45 = v49.languageInLanguageLocale._object;
  if (!v49.id._object)
  {
    v41 = v49.languageInLanguageLocale._countAndFlagsBits;
    v44 = v49.languageInCurrentLocale._countAndFlagsBits;
    goto LABEL_25;
  }

  v21 = v46;
  if ((v6 != v49.id._countAndFlagsBits || v7 != v49.id._object) && (sub_2588BDF98() & 1) == 0 || (v20 != v18 || v48 != v17) && (sub_2588BDF98() & 1) == 0)
  {
    sub_258870294(v6, v7, v20, v48, v47, v46);
    sub_258870294(v6, v7, v20, v48, v47, v46);
    sub_2588702E4(countAndFlagsBits, object, v18, v17, v19, v45);

    v33 = v6;
    v34 = v7;
    v35 = v20;
    v37 = v48;
    v36 = v47;
    v38 = v46;
    goto LABEL_27;
  }

  v43 = v18;
  if (v47 != v19 || v46 != v45)
  {
    v42 = sub_2588BDF98();
    sub_258870294(v6, v7, v20, v48, v47, v46);
    sub_258870294(v6, v7, v20, v48, v47, v46);
    sub_2588702E4(countAndFlagsBits, object, v18, v17, v19, v45);

    sub_2588702E4(v6, v7, v20, v48, v47, v46);
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v22 = v47;
  v23 = v48;
  sub_258870294(v6, v7, v20, v48, v47, v46);
  sub_258870294(v6, v7, v20, v48, v47, v46);
  sub_2588702E4(countAndFlagsBits, object, v43, v17, v47, v46);

LABEL_20:
  sub_2588702E4(v6, v7, v20, v23, v22, v21);
LABEL_21:
  v30 = *(v9 + 16);
  v29 = *(v9 + 24);
  if (v30 >= v29 >> 1)
  {
    v9 = sub_2587F0534((v29 > 1), v30 + 1, 1, v9);
  }

  *(v9 + 16) = v30 + 1;
  v31 = v9 + 16 * v30;
  *(v31 + 32) = 0x64657463656C6553;
  *(v31 + 40) = 0xE800000000000000;
LABEL_28:
  v39 = sub_2588BD9A8();
  v40 = HKUIJoinStringsForAutomationIdentifier();

  if (v40)
  {
    sub_2588BD8A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25886F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A99C0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = *a1;
  v8 = v15[0];
  v15[1] = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  sub_25886F420(v15, 0xD00000000000001ALL, 0x80000002588C9D70, v6);
  sub_2587A28EC(v6, a2);
  sub_25886CD78(0, &qword_27F95D448, sub_2587A99C0, sub_2587A9C64);
  v13 = a2 + *(v12 + 36);
  *v13 = v8;
  *(v13 + 8) = v7;
  *(v13 + 16) = 1;
}

uint64_t sub_25886F420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v26 = a2;
  v28 = a4;
  v5 = sub_2588BC978();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A9A08(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v14;
  v15 = *(a1 + 32);
  v24 = *(a1 + 16);
  v25 = v33[0];
  v33[2] = v15;
  v16 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = v16;
  v17 = sub_2588BC6F8();
  v29[0] = 1;
  sub_25886FE14(v34);
  *&v32[55] = v35;
  *&v32[39] = v34[2];
  *&v32[23] = v34[1];
  *&v32[7] = v34[0];
  *&v31[17] = *&v32[16];
  *&v31[33] = *&v32[32];
  *&v31[49] = *&v32[48];
  v30 = v17;
  v31[0] = v29[0];
  *&v31[64] = *(&v35 + 1);
  *&v31[1] = *v32;
  sub_2588BC968();
  sub_2587A9ABC(0);
  v19 = v18;
  v20 = sub_25886C9D4(&qword_27F95D440, sub_2587A9ABC, MEMORY[0x277CE1198]);
  sub_2588BCF88();
  (*(v6 + 8))(v8, v5);
  v36[2] = *&v31[16];
  v36[3] = *&v31[32];
  v36[4] = *&v31[48];
  v37 = *&v31[64];
  v36[0] = v30;
  v36[1] = *v31;
  sub_25887034C(v36);
  v30 = v25;
  *v31 = v24;
  *&v31[16] = v23;
  *&v31[24] = v22;
  sub_25880B8CC(v33, v29);
  sub_25886ECB8(&v30, v26, v27);
  sub_2588702E4(v30, *(&v30 + 1), *v31, *&v31[8], *&v31[16], *&v31[24]);
  *&v30 = v19;
  *(&v30 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  sub_2588BCFB8();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_25886F734(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v9 = sub_2588BD528();
  v10 = a2(v9);

  v20[5] = v10;
  sub_2588700CC(a1, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_258870130(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_25878E334(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25886CC8C(0);
  sub_25880AC14();
  sub_2587A99C0(255);
  v14 = v13;
  sub_25878E334(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = sub_25886CDEC();
  v18 = sub_25886D00C(&qword_27F95D460, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v20[1] = v14;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  swift_getOpaqueTypeConformance2();
  sub_25880B84C();
  return sub_2588BD4C8();
}

uint64_t sub_25886F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A99C0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = *a1;
  v8 = v15[0];
  v15[1] = v7;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  sub_25886F420(v15, 0xD000000000000012, 0x80000002588CAB30, v6);
  sub_2587A28EC(v6, a2);
  sub_25886CD78(0, &qword_27F95D448, sub_2587A99C0, sub_2587A9C64);
  v13 = a2 + *(v12 + 36);
  *v13 = v8;
  *(v13 + 8) = v7;
  *(v13 + 16) = 1;
}

uint64_t sub_25886FACC(uint64_t a1)
{
  v2 = sub_2588BC828();
  MEMORY[0x28223BE20](v2 - 8);
  sub_2587E2184(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2588BC7F8();
  v11 = a1;
  sub_2588BD748();
  sub_25886C9D4(&qword_27F95E458, MEMORY[0x277D126A0], MEMORY[0x277D12690]);
  sub_2588BBF88();
  v8 = sub_25886C9D4(&qword_27F95E460, sub_2587E2184, MEMORY[0x277CDD7A8]);
  MEMORY[0x259C8B9F0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25886FC9C(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588700CC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_258870130(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2588BD718();
}

uint64_t sub_25886FE14@<X0>(uint64_t a2@<X8>)
{
  sub_25878F648();

  v21 = sub_2588BCDF8();
  v22 = v3;
  v5 = v4;
  v20 = v6;

  v7 = sub_2588BCDF8();
  v9 = v8;
  v11 = v10;
  sub_2588BC8D8();
  v12 = sub_2588BCD98();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2587B1CF8(v7, v9, v11 & 1);

  *a2 = v21;
  *(a2 + 8) = v5;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16 & 1;
  *(a2 + 56) = v18;
  sub_2587A99B0(v21, v5, v20 & 1);

  sub_2587A99B0(v12, v14, v16 & 1);

  sub_2587B1CF8(v12, v14, v16 & 1);

  sub_2587B1CF8(v21, v5, v20 & 1);
}

void sub_25886FFDC(uint64_t a1)
{
  sub_25878E334(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_25886C4F4(319, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2588700CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258870130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDSpokenLanguagePickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258870294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_2588702E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_25887034C(uint64_t a1)
{
  sub_2587A9ABC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_25()
{
  v1 = (type metadata accessor for MedicalIDSpokenLanguagePickerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2588704F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MedicalIDSpokenLanguagePickerView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_258870590@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2588BD858();
  MEMORY[0x28223BE20](v4 - 8);
  if (v3)
  {
    sub_2588BD7E8();
    if (qword_27F95D000 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v5 = qword_27F95DA88;
  v6 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = v5;
  sub_2588BBAB8();
  v8 = v7;
  v9 = sub_2588BD8B8();
  v18 = v10;
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v11);
  sub_2588BBAB8();
  v12 = sub_2588BD8B8();
  v14 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v15);
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  *a1 = v19;
  a1[1] = v18;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = result;
  a1[5] = v17;
  return result;
}

__n128 sub_258870A40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v14 = a1[1];
  v15 = v3;
  v4 = a1[2];
  v11 = *(a1 + 3);
  v12 = *(a1 + 5);
  sub_2588721C0(&v15, v13, &unk_27F9609A8, &qword_280C0DE00, 0x277CCDDA0, sub_258872234);
  sub_25887228C(&v14, v13);
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  v5 = v4;
  sub_2588BD458();
  v22 = v13[6];
  v23 = v13[7];
  v24 = v13[8];
  v18 = v13[2];
  v19 = v13[3];
  v20 = v13[4];
  v21 = v13[5];
  v16 = v13[0];
  v17 = v13[1];
  sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);
  sub_2588BD458();
  v6 = v14;
  *a2 = v15;
  *(a2 + 8) = v6;
  v7 = v23;
  *(a2 + 112) = v22;
  *(a2 + 128) = v7;
  *(a2 + 144) = v24;
  v8 = v19;
  *(a2 + 48) = v18;
  *(a2 + 64) = v8;
  v9 = v21;
  *(a2 + 80) = v20;
  *(a2 + 96) = v9;
  result = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = result;
  *(a2 + 160) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v5;
  return result;
}

id sub_258870C80()
{
  v2 = *v0;
  v1 = v0[1];
  v21 = *(v0 + 9);
  v22 = *(v0 + 10);
  v23 = *(v0 + 11);
  v17 = *(v0 + 5);
  v18 = *(v0 + 6);
  v19 = *(v0 + 7);
  v20 = *(v0 + 8);
  v13 = *(v0 + 1);
  v14 = *(v0 + 2);
  v15 = *(v0 + 3);
  v16 = *(v0 + 4);
  v3 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  sub_258872694(0);
  sub_2588BCB38();
  [v3 setDelegate_];

  [v3 setMode_];
  sub_25878E47C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2588C00B0;
  *(v4 + 32) = sub_2588BD8A8();
  *(v4 + 40) = v5;
  v6 = sub_2588BD9A8();

  [v3 setDisplayedPropertyKeys_];

  [v3 setOnlyRealContacts_];
  v7 = sub_258870F74();
  [v3 setPredicateForEnablingContact_];

  if (v1)
  {
    if (v1 >> 62)
    {
      if (sub_2588BDD68() < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      [v3 setShouldDisplaySuggestionsController_];
      sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
      v8 = sub_2588BD9A8();
      [v3 setContactSuggestions_];
    }
  }

LABEL_5:
  sub_25878E130(0, &qword_27F9609D8, 0x277CCAC30);
  v9 = sub_2588BDB98();
  [v3 setPredicateForSelectionOfContact_];

  v10 = sub_2588BDB98();
  [v3 setPredicateForSelectionOfProperty_];

  return v3;
}

id sub_258870F74()
{
  v1 = *v0;
  v2 = v62;
  v3 = &v51;
  v4 = *(v0 + 15);
  v5 = *(v0 + 19);
  v62[8] = *(v0 + 17);
  v62[9] = v5;
  v62[10] = *(v0 + 21);
  v6 = *(v0 + 7);
  v7 = *(v0 + 11);
  v62[4] = *(v0 + 9);
  v62[5] = v7;
  v62[6] = *(v0 + 13);
  v62[7] = v4;
  v8 = *(v0 + 3);
  v62[0] = *(v0 + 1);
  v62[1] = v8;
  v62[2] = *(v0 + 5);
  v62[3] = v6;
  v9 = v0[23];
  v61 = MEMORY[0x277D84F90];
  sub_25878E130(0, &qword_27F9609D8, 0x277CCAC30);
  sub_2588726F0(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2588C00B0;
  v11 = sub_2588BD8A8();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v50 = sub_2587C4D8C();
  *(v10 + 64) = v50;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_2588BDB98();
  MEMORY[0x259C8CB10]();
  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_36:
    sub_2588BD9C8();
  }

  sub_2588BD9F8();
  v15 = v2[7];
  v58 = v2[6];
  v59 = v15;
  v16 = v2[9];
  *(v3 + 17) = v2[8];
  *(v3 + 19) = v16;
  *(v3 + 21) = v2[10];
  v17 = v2[2];
  v18 = v2[4];
  v19 = v2[5];
  v55 = v2[3];
  v56 = v18;
  v57 = v19;
  v20 = v2[1];
  v52 = *v2;
  v53 = v20;
  v51 = v1;
  v54 = v17;
  v60 = v9;
  v21 = sub_258871514();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = [v9 profileIdentifier];
    v26 = [v25 type];

    if (v26 == 3)
    {
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2588BFF50;
      v28 = sub_2588BD8A8();
      *(v27 + 56) = v14;
      *(v27 + 64) = v50;
      *(v27 + 32) = v28;
      *(v27 + 40) = v29;
      *(v27 + 96) = v14;
      *(v27 + 104) = v50;
      *(v27 + 72) = v23;
      *(v27 + 80) = v24;
      sub_2588BDB98();
      MEMORY[0x259C8CB10]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2588BD9C8();
      }

      sub_2588BD9F8();
    }
  }

  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
    v9 = sub_2588BDD68();
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v14 = 0;
    v30 = MEMORY[0x277D84F90];
    v3 = &off_2798A7000;
    do
    {
      v31 = v14;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x259C8CF80](v31, v1);
        }

        else
        {
          if (v31 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v32 = *(v1 + 8 * v31 + 32);
        }

        v33 = v32;
        v14 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v34 = [v32 nameContactIdentifier];
        if (v34)
        {
          break;
        }

        ++v31;
        if (v14 == v9)
        {
          goto LABEL_28;
        }
      }

      v35 = v34;
      v36 = sub_2588BD8A8();
      v49 = v37;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2587F0534(0, *(v30 + 2) + 1, 1, v30);
      }

      v39 = *(v30 + 2);
      v38 = *(v30 + 3);
      if (v39 >= v38 >> 1)
      {
        v30 = sub_2587F0534((v38 > 1), v39 + 1, 1, v30);
      }

      *(v30 + 2) = v39 + 1;
      v40 = &v30[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v49;
    }

    while (v14 != v9);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

LABEL_28:
  if (*(v30 + 2))
  {
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2588BFF50;
    v42 = sub_2588BD8A8();
    v43 = MEMORY[0x277D837D0];
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = v50;
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    sub_25878E47C(0, &qword_280C0DE60, v43, MEMORY[0x277D83940]);
    *(v41 + 96) = v45;
    *(v41 + 104) = sub_258872748();
    *(v41 + 72) = v30;
    sub_2588BDB98();
    MEMORY[0x259C8CB10]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2588BD9C8();
    }

    sub_2588BD9F8();
  }

  else
  {
  }

  v46 = sub_2588BD9A8();

  v47 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v47;
}

uint64_t sub_258871514()
{
  v26[1] = *MEMORY[0x277D85DE8];
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v0 = [objc_allocWithZone(MEMORY[0x277CBDAC0]) init];
    [v0 setIncludeSharedPhotoContacts_];
    v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) initWithConfiguration_];
    sub_25878E47C(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2588C6780;
    v3 = *MEMORY[0x277CBD018];
    *(v2 + 32) = *MEMORY[0x277CBD018];
    sub_25878FA5C();
    v4 = v3;
    v5 = sub_2588BD9A8();

    v26[0] = 0;
    v6 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    if (v6)
    {
      v7 = v26[0];
      v8 = [v6 identifier];
      v9 = sub_2588BD8A8();

      return v9;
    }

    v15 = v26[0];
    v16 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v17 = sub_2588BBC98();
    __swift_project_value_buffer(v17, qword_27F969938);
    v18 = v16;
    v19 = sub_2588BBC78();
    v20 = sub_2588BDBD8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_2588BDFD8();
      v25 = sub_258790224(v23, v24, v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25878B000, v19, v20, "Error fetching me contact: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x259C8DBE0](v22, -1, -1);
      MEMORY[0x259C8DBE0](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v11 = sub_2588BBC98();
    __swift_project_value_buffer(v11, qword_27F969938);
    v12 = sub_2588BBC78();
    v13 = sub_2588BDBD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25878B000, v12, v13, "Medical ID is not authorized for the contact store, cannot fetch me card", v14, 2u);
      MEMORY[0x259C8DBE0](v14, -1, -1);
    }
  }

  return 0;
}

id sub_258871928()
{
  v1 = *(v0 + 128);
  v39 = *(v0 + 112);
  v40 = v1;
  v41 = *(v0 + 144);
  v2 = *(v0 + 64);
  v35 = *(v0 + 48);
  v36 = v2;
  v3 = *(v0 + 96);
  v37 = *(v0 + 80);
  v38 = v3;
  v4 = *(v0 + 32);
  v33 = *(v0 + 16);
  v34 = v4;
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  sub_2588BD458();
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v29;
  v33 = v24;
  v34 = v25;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);
  sub_2588BD458();
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = type metadata accessor for EmergencyContactPicker.ContactPickerCoordinator();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact];
  *(v13 + 5) = v29;
  *(v13 + 6) = v39;
  *(v13 + 7) = v40;
  *(v13 + 8) = v41;
  *(v13 + 1) = v34;
  *(v13 + 2) = v35;
  *(v13 + 3) = v36;
  *(v13 + 4) = v37;
  *v13 = v33;
  v14 = &v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  v15 = [objc_allocWithZone(MEMORY[0x277CCD230]) init];
  *&v12[OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator_coreTelephonyClient] = v15;
  v17.receiver = v12;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_258871BB8(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() emergencyContactWithContact:a1 property:a2];
  v5 = [v4 phoneNumber];
  if (v5 && (v6 = v5, v7 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator_coreTelephonyClient), v8 = [v7 isEmergencyServicePhoneNumber_], v7, v6, v8))
  {
    v9 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error + 8);
    v10 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error + 16);
    *&v40 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__error);
    *(&v40 + 1) = v9;
    LOBYTE(v41) = v10;
    LOBYTE(v32[0]) = 1;
    sub_258871FD8(0, &qword_27F960990, &qword_27F960998, &type metadata for EmergencyContactPickerError);

    sub_2588BD438();
  }

  else
  {
    v12 = v4;
    v13 = a1;
    MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v12, a1, &v31);
    nullsub_1();
    v14 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 80);
    v15 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 112);
    v37 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 96);
    v38 = v15;
    v16 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 112);
    v39 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 128);
    v17 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 16);
    v18 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 48);
    v33 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 32);
    v34 = v18;
    v19 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 48);
    v20 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 80);
    v35 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 64);
    v36 = v20;
    v21 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 16);
    v32[0] = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact);
    v32[1] = v21;
    v28 = v37;
    v29 = v16;
    v30 = *(v2 + OBJC_IVAR____TtCV11MedicalIDUI22EmergencyContactPicker24ContactPickerCoordinator__contact + 128);
    v24 = v33;
    v25 = v19;
    v26 = v35;
    v27 = v14;
    v22 = v32[0];
    v23 = v17;
    sub_2588721C0(v32, &v40, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact, sub_258871FD8);
    sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
    sub_2588BD438();

    v46 = v28;
    v47 = v29;
    v48 = v30;
    v42 = v24;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v40 = v22;
    v41 = v23;
    return sub_258871F64(&v40);
  }
}

id sub_258871E64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmergencyContactPicker.ContactPickerCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI0A18IDEmergencyContactVSg(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_258871F64(uint64_t a1)
{
  sub_258871FD8(0, &unk_27F960980, &qword_27F95FB40, &type metadata for MedicalIDEmergencyContact);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258871FD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25878E47C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BD488();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_258872080(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_2588720C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25887216C()
{
  result = qword_27F9609A0;
  if (!qword_27F9609A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609A0);
  }

  return result;
}

uint64_t sub_2588721C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_258872234(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDA08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25887228C(uint64_t a1, uint64_t a2)
{
  sub_2588722F0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2588722F0(uint64_t a1)
{
  if (!qword_280C0DE38)
  {
    sub_258872234(255, &qword_280C0DE40, &unk_280C0DDF0, 0x277CBDA58);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DE38);
    }
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_258872394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2588723DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25887245C()
{
  result = qword_27F9609B0;
  if (!qword_27F9609B0)
  {
    sub_2588724B4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609B0);
  }

  return result;
}

void sub_2588724B4(uint64_t a1)
{
  if (!qword_27F9609B8)
  {
    sub_2588BC138();
    sub_25887216C();
    v1 = sub_2588BC208();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9609B8);
    }
  }
}

id sub_258872528@<X0>(void *a1@<X8>)
{
  result = sub_258871928();
  *a1 = result;
  return result;
}

uint64_t sub_258872550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258872640();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2588725B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258872640();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_258872618(uint64_t a1)
{
  sub_258872640();
  sub_2588BCA58();
  __break(1u);
}

unint64_t sub_258872640()
{
  result = qword_27F9609C0;
  if (!qword_27F9609C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609C0);
  }

  return result;
}

void sub_258872694(uint64_t a1)
{
  if (!qword_27F9609C8)
  {
    sub_258872640();
    v1 = sub_2588BCB48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9609C8);
    }
  }
}

void sub_2588726F0(uint64_t a1)
{
  if (!qword_27F9609E0)
  {
    sub_2587C4D28();
    v1 = sub_2588BDF88();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9609E0);
    }
  }
}

unint64_t sub_258872748()
{
  result = qword_27F960A00;
  if (!qword_27F960A00)
  {
    sub_25878E47C(255, &qword_280C0DE60, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A00);
  }

  return result;
}

uint64_t sub_2588727E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  v12[3] = &type metadata for ConditionsConfiguration;
  v12[4] = &off_2869C1840;
  v6 = swift_allocObject();
  v12[0] = v6;
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_25887289C(v13, v11);
  return sub_25884E278(v12, sub_258802DC0, 0, a1);
}

double sub_258872924@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v22 = v1[3];
  v23 = *(v1 + 8);
  v4 = *v1;
  v20 = v1[1];
  v21 = v3;
  v19 = v4;
  v24 = v4;
  v5 = v3;
  if (!v20)
  {
    sub_2587FB4AC(&v24, v17);
    v10 = sub_2588BD9A8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (!v7)
    {
      v8 = 0xEB00000000736E6FLL;
      v9 = 0x697461636964654DLL;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v20 != 1)
  {
    sub_2587FB4AC(&v24, v17);
    v11 = sub_2588BD9A8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    if (!v7)
    {
      v8 = 0x80000002588C8AB0;
      v9 = 0xD000000000000011;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_2587FB4AC(&v24, v17);
  v6 = sub_2588BD9A8();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
LABEL_8:
    v9 = sub_2588BD8A8();
    v8 = v12;

    goto LABEL_9;
  }

  v8 = 0xE900000000000073;
  v9 = 0x65696772656C6C41;
LABEL_9:
  v13 = swift_allocObject();
  v14 = v20;
  v15 = v22;
  *(v13 + 48) = v21;
  *(v13 + 64) = v15;
  *(v13 + 80) = v23;
  *(v13 + 16) = v19;
  *(v13 + 32) = v14;
  v18 = v24;
  sub_258872F38(&v19, v17);
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v5 != 0;
  *(a1 + 17) = 2;
  *(a1 + 24) = sub_258872F10;
  *(a1 + 32) = v13;
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
  return result;
}

double sub_258872B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 32))
  {

    if (v3)
    {
      if (v3 == 1)
      {
        v4 = sub_2588BD9A8();
        v5 = HKUIJoinStringsForAutomationIdentifier();

        if (!v5)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v8 = sub_2588BD9A8();
        v5 = HKUIJoinStringsForAutomationIdentifier();

        if (!v5)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v7 = sub_2588BD9A8();
      v5 = HKUIJoinStringsForAutomationIdentifier();

      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {

    if (v3)
    {
      if (v3 == 1)
      {
        v6 = sub_2588BD9A8();
        v5 = HKUIJoinStringsForAutomationIdentifier();

        if (!v5)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = sub_2588BD9A8();
        v5 = HKUIJoinStringsForAutomationIdentifier();

        if (!v5)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = sub_2588BD9A8();
      v5 = HKUIJoinStringsForAutomationIdentifier();

      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  sub_2588BD8A8();

LABEL_18:
  sub_258872EBC();
  sub_2587E836C();
  sub_2588BC778();
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  return result;
}

double sub_258872E04@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v15 = *(v1 + 64);
  sub_258872924(v9);
  *(&v11 + 1) = 0x4018000000000000;
  LOBYTE(v12[0]) = 1;
  sub_258872B28(v14, v12 + 8);
  v5 = v12[1];
  a1[4] = v12[0];
  a1[5] = v5;
  a1[6] = v13[0];
  *(a1 + 105) = *(v13 + 9);
  v6 = v9[1];
  *a1 = v9[0];
  a1[1] = v6;
  result = *&v10;
  v8 = v11;
  a1[2] = v10;
  a1[3] = v8;
  return result;
}

unint64_t sub_258872EBC()
{
  result = qword_27F960A08;
  if (!qword_27F960A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A08);
  }

  return result;
}

unint64_t sub_258872F80()
{
  result = qword_27F960A10;
  if (!qword_27F960A10)
  {
    sub_258872FD8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A10);
  }

  return result;
}

void sub_258872FD8(uint64_t a1)
{
  if (!qword_27F960A18)
  {
    sub_25887303C();
    v3 = v2;
    v4 = sub_258873094();
    v6 = type metadata accessor for MedicalIDCellView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F960A18);
    }
  }
}

void sub_25887303C()
{
  if (!qword_27F960A20)
  {
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960A20);
    }
  }
}

unint64_t sub_258873094()
{
  result = qword_27F960A28;
  if (!qword_27F960A28)
  {
    sub_25887303C();
    sub_258872EBC();
    sub_2587E836C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960A28);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDCellHeaderView(uint64_t a1)
{
  result = qword_27F960A30;
  if (!qword_27F960A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588731A0(uint64_t a1)
{
  sub_258874404(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2587BC234(319);
    if (v2 <= 0x3F)
    {
      sub_258873294(319);
      if (v3 <= 0x3F)
      {
        sub_25887333C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258873294(uint64_t a1)
{
  if (!qword_27F960A40)
  {
    sub_25878E130(255, &qword_27F95D360, 0x277CCD4D8);
    sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
    v1 = sub_2588BC368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960A40);
    }
  }
}

void sub_25887333C(uint64_t a1)
{
  if (!qword_27F960A48)
  {
    sub_25878E130(255, &qword_27F95D378, 0x277CCD7D0);
    sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
    v1 = sub_2588BC368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960A48);
    }
  }
}

uint64_t sub_258873400@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDFA28];
  v8 = MEMORY[0x277CDF458];
  sub_258874404(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for MedicalIDCellHeaderView(0);
  sub_258874AF8(v1 + *(v12 + 20), v11, &qword_27F95E160, v7, v8, sub_258874404);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BC1C8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_2588BDBE8();
    v15 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258873648@<X0>(void *a1@<X8>)
{
  v39 = a1;
  sub_258874350(0);
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258874584(0, &qword_27F960A88, MEMORY[0x277CE0330]);
  v37[1] = v4;
  MEMORY[0x28223BE20](v4);
  v38 = v37 - v5;
  sub_258874504(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  sub_2588745F4(0);
  v37[2] = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2588BC1C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258873400(v18);
  v19 = sub_2588BC1A8();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    *v14 = sub_2588BC6F8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    sub_258874880(0);
    v21 = &v14[*(v20 + 44)];
    sub_258873BF8();
    sub_258873DA0(v51);
    sub_258874918(v11, v9, sub_258874504);
    v47 = v51[6];
    v48 = v51[7];
    v49 = v51[8];
    v50 = v52;
    v43 = v51[2];
    v44 = v51[3];
    v45 = v51[4];
    v46 = v51[5];
    v41 = v51[0];
    v42 = v51[1];
    sub_258874918(v9, v21, sub_258874504);
    sub_2588746A8(0);
    v23 = *(v22 + 48);
    v24 = v48;
    v53[6] = v47;
    v53[7] = v48;
    v25 = v49;
    v53[8] = v49;
    v26 = v45;
    v27 = v46;
    v53[4] = v45;
    v53[5] = v46;
    v28 = v43;
    v29 = v44;
    v53[2] = v43;
    v53[3] = v44;
    v30 = v41;
    v31 = v42;
    v53[0] = v41;
    v53[1] = v42;
    v32 = v21 + v23;
    *(v32 + 96) = v47;
    *(v32 + 112) = v24;
    *(v32 + 128) = v25;
    *(v32 + 32) = v28;
    *(v32 + 48) = v29;
    *(v32 + 64) = v26;
    *(v32 + 80) = v27;
    v54 = v50;
    *(v32 + 144) = v50;
    *v32 = v30;
    *(v32 + 16) = v31;
    sub_258874AF8(v53, v55, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88], sub_2587B19E0);
    sub_258874980(v11, sub_258874504);
    v55[6] = v47;
    v55[7] = v48;
    v55[8] = v49;
    v56 = v50;
    v55[2] = v43;
    v55[3] = v44;
    v55[4] = v45;
    v55[5] = v46;
    v55[0] = v41;
    v55[1] = v42;
    sub_2588749E0(v55);
    sub_258874980(v9, sub_258874504);
    v33 = sub_2588745F4;
    sub_258874918(v14, v38, sub_2588745F4);
    swift_storeEnumTagMultiPayload();
    sub_258874838(&qword_27F960AB8, sub_2588745F4, MEMORY[0x277CE1198]);
    sub_258874838(&qword_27F960AC0, sub_258874350, MEMORY[0x277CE1138]);
    sub_2588BC778();
    v34 = v14;
  }

  else
  {
    *v3 = sub_2588BC5F8();
    *(v3 + 1) = 0;
    v3[16] = 1;
    sub_2588747A0(0);
    sub_258874110(&v3[*(v35 + 44)]);
    v33 = sub_258874350;
    sub_258874918(v3, v38, sub_258874350);
    swift_storeEnumTagMultiPayload();
    sub_258874838(&qword_27F960AB8, sub_2588745F4, MEMORY[0x277CE1198]);
    sub_258874838(&qword_27F960AC0, sub_258874350, MEMORY[0x277CE1138]);
    sub_2588BC778();
    v34 = v3;
  }

  return sub_258874980(v34, v33);
}

void sub_258873BF8()
{
  sub_25878F648();

  v1 = MEMORY[0x277D837D0];
  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5 & 1;
  sub_2587B19E0(0, &qword_280C0DDD0, v1, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588BFF50;
  v8 = *(v0 + 48);
  *(v7 + 32) = *(v0 + 40);
  *(v7 + 40) = v8;
  *(v7 + 48) = 0x726564616548;
  *(v7 + 56) = 0xE600000000000000;

  v9 = sub_2588BD9A8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    sub_2588BD8A8();

    sub_258875348(0, &qword_27F960A70, MEMORY[0x277CE0BD8], &type metadata for MedicalIDCellHeaderTextStyle);
    sub_258874A60();
    sub_2588BCFB8();

    sub_2587B1CF8(v2, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_258873DA0(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MedicalIDCellHeaderView(0);
  v5 = *(v1 + v4[6]);
  if (!v5)
  {
    v17 = &qword_27F95D3C0;
    v18 = off_2798A65E8;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    v19 = &qword_27F95DAE8;
    v20 = &protocol conformance descriptor for MIUIDisplayConfiguration;
LABEL_10:
    sub_2587DC150(v19, v17, v18, v20);
    sub_2588BC348();
    __break(1u);
    goto LABEL_11;
  }

  if (([v5 isEditingAvailable] & 1) == 0)
  {
    sub_25880CB1C(&v42);
    goto LABEL_7;
  }

  v41 = *(v1 + 6);
  v6 = v1[2];
  v40[1] = v1[1];
  v40[2] = v6;
  v40[0] = *v1;
  v2 = *(v1 + v4[7]);
  if (!v2)
  {
    sub_2587EB238(v40, &v42);
    v17 = &qword_27F95D360;
    v18 = 0x277CCD4D8;
    sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
    v19 = &qword_27F95E2B0;
    v20 = &protocol conformance descriptor for HKHealthStore;
    goto LABEL_10;
  }

  v7 = *(v1 + v4[8]);
  if (v7)
  {
    v8 = v1[1];
    v36 = *v1;
    v37 = v8;
    v38 = v1[2];
    *v39 = *(v1 + 6);
    *&v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    sub_2587EB238(v40, &v26);
    sub_2587B19E0(0, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
    v9 = v2;
    v10 = v7;
    sub_2588BD2B8();
    *&v39[8] = v22;
    *&v39[24] = v23;
    *&v39[40] = v24;
    *&v39[56] = v25;
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    v11 = sub_2588BC358();
    v30 = *&v39[16];
    v31 = *&v39[32];
    v32 = *&v39[48];
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = *v39;
    *&v33 = *&v39[64];
    *(&v33 + 1) = v9;
    *&v34 = v10;
    *(&v34 + 1) = v11;
    v35 = v12;
    nullsub_1();
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v51 = v35;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    v42 = v26;
    v43 = v27;
LABEL_7:
    v13 = v49;
    *(a1 + 96) = v48;
    *(a1 + 112) = v13;
    *(a1 + 128) = v50;
    *(a1 + 144) = v51;
    v14 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v14;
    v15 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v15;
    v16 = v43;
    *a1 = v42;
    *(a1 + 16) = v16;
    return;
  }

LABEL_11:
  sub_2587EB238(v40, &v42);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0, &protocol conformance descriptor for HKProfileStore);
  v21 = v2;
  sub_2588BC348();
  __break(1u);
}

uint64_t sub_258874110@<X0>(uint64_t a1@<X8>)
{
  sub_258874504(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  sub_258873BF8();
  sub_258873DA0(v31);
  sub_258874918(v7, v5, sub_258874504);
  v27 = v31[6];
  v28 = v31[7];
  v29 = v31[8];
  v30 = v32;
  v23 = v31[2];
  v24 = v31[3];
  v25 = v31[4];
  v26 = v31[5];
  v21 = v31[0];
  v22 = v31[1];
  sub_258874918(v5, a1, sub_258874504);
  sub_258874468(0);
  v9 = a1 + *(v8 + 48);
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = *(v8 + 64);
  v11 = v23;
  v12 = v24;
  v33[2] = v23;
  v33[3] = v24;
  v13 = v21;
  v14 = v22;
  v33[0] = v21;
  v33[1] = v22;
  v15 = v28;
  v33[6] = v27;
  v33[7] = v28;
  v16 = v29;
  v33[8] = v29;
  v17 = v25;
  v18 = v26;
  v33[4] = v25;
  v33[5] = v26;
  v19 = a1 + v10;
  *(v19 + 96) = v27;
  *(v19 + 112) = v15;
  *(v19 + 128) = v16;
  *(v19 + 32) = v11;
  *(v19 + 48) = v12;
  *(v19 + 64) = v17;
  *(v19 + 80) = v18;
  v34 = v30;
  *(v19 + 144) = v30;
  *v19 = v13;
  *(v19 + 16) = v14;
  sub_258874AF8(v33, v35, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88], sub_2587B19E0);
  sub_258874980(v7, sub_258874504);
  v35[6] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v36 = v30;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v35[5] = v26;
  v35[0] = v21;
  v35[1] = v22;
  sub_2588749E0(v35);
  return sub_258874980(v5, sub_258874504);
}

void sub_258874350(uint64_t a1)
{
  if (!qword_27F960A50)
  {
    sub_258874404(255, &qword_27F960A58, sub_258874468, MEMORY[0x277CE14B8]);
    sub_25887473C(&qword_27F960A80, &qword_27F960A58, sub_258874468);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960A50);
    }
  }
}

void sub_258874404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258874468(uint64_t a1)
{
  if (!qword_27F960A60)
  {
    sub_258874504(255);
    sub_2587B19E0(255, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960A60);
    }
  }
}

void sub_258874504(uint64_t a1)
{
  if (!qword_27F960A68)
  {
    sub_258875348(255, &qword_27F960A70, MEMORY[0x277CE0BD8], &type metadata for MedicalIDCellHeaderTextStyle);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960A68);
    }
  }
}

void sub_258874584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2588745F4(255);
    v7 = v6;
    sub_258874350(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2588745F4(uint64_t a1)
{
  if (!qword_27F960A90)
  {
    sub_258874404(255, &qword_27F960A98, sub_2588746A8, MEMORY[0x277CE14B8]);
    sub_25887473C(&qword_27F960AA8, &qword_27F960A98, sub_2588746A8);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960A90);
    }
  }
}

void sub_2588746A8(uint64_t a1)
{
  if (!qword_27F960AA0)
  {
    sub_258874504(255);
    sub_2587B19E0(255, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960AA0);
    }
  }
}

uint64_t sub_25887473C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258874404(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2588747A0(uint64_t a1)
{
  if (!qword_27F960AB0)
  {
    sub_258874404(255, &qword_27F960A58, sub_258874468, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960AB0);
    }
  }
}

uint64_t sub_258874838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258874880(uint64_t a1)
{
  if (!qword_27F960AC8)
  {
    sub_258874404(255, &qword_27F960A98, sub_2588746A8, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960AC8);
    }
  }
}

uint64_t sub_258874918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258874980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2588749E0(uint64_t a1)
{
  sub_2587B19E0(0, &qword_27F960A78, &type metadata for MedicalIDHeaderAccessoryButton, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258874A60()
{
  result = qword_27F960AD0;
  if (!qword_27F960AD0)
  {
    sub_258875348(255, &qword_27F960A70, MEMORY[0x277CE0BD8], &type metadata for MedicalIDCellHeaderTextStyle);
    sub_25885BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AD0);
  }

  return result;
}

uint64_t sub_258874AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_258874BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_258874BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258874C5C()
{
  result = qword_27F960AD8;
  if (!qword_27F960AD8)
  {
    sub_258874584(255, &qword_27F960AE0, MEMORY[0x277CE0338]);
    sub_258874838(&qword_27F960AB8, sub_2588745F4, MEMORY[0x277CE1198]);
    sub_258874838(&qword_27F960AC0, sub_258874350, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AD8);
  }

  return result;
}

double sub_258874D74@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[5];
  v40 = v1[6];
  v41 = v3;
  v5 = v1[7];
  v42 = v1[8];
  v6 = v1[3];
  v7 = v1[1];
  v36 = v1[2];
  v37 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v38 = v1[4];
  v39 = v9;
  v10 = v1[1];
  v34 = *v1;
  v35 = v10;
  v30 = v40;
  v31 = v5;
  v32 = v1[8];
  v26 = v36;
  v27 = v8;
  v28 = v38;
  v29 = v4;
  v43 = *(v1 + 18);
  v33 = *(v1 + 18);
  v24 = v34;
  v25 = v7;
  v11 = sub_258874F14();
  v12 = v11;
  v13 = v35;
  v15 = *(&v36 + 1);
  v14 = v37;
  if (BYTE1(v35) != 2)
  {
    v12 = v11 & BYTE1(v35);
  }

  v16 = swift_allocObject();
  v17 = v41;
  *(v16 + 112) = v40;
  *(v16 + 128) = v17;
  *(v16 + 144) = v42;
  *(v16 + 160) = v43;
  v18 = v37;
  *(v16 + 48) = v36;
  *(v16 + 64) = v18;
  v19 = v39;
  *(v16 + 80) = v38;
  *(v16 + 96) = v19;
  v20 = v35;
  *(v16 + 16) = v34;
  *(v16 + 32) = v20;

  sub_258875278(&v34, &v24);
  sub_2587D2DD4(0);
  sub_2588BD2E8();
  *a1 = v13 & 1;
  *(a1 + 1) = v12 & 1;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  v21 = v24;
  *(a1 + 56) = v25;
  result = *&v26;
  v23 = v27;
  *(a1 + 72) = v26;
  *(a1 + 88) = v23;
  *(a1 + 24) = sub_25887521C;
  *(a1 + 32) = v16;
  *(a1 + 104) = v28;
  *(a1 + 40) = v21;
  return result;
}

id sub_258874F14()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
    v4 = [v3 isEditingAvailable];
    if (v4)
    {
      v5 = [v2 profileIdentifier];
      v6 = [v5 type];

      if (v6 == 3)
      {
        [v3 accessPoint];
      }
    }

    return v4;
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_258875018()
{
  v1 = *(v0 + 24);
  v16 = *(v0 + 56);
  v17 = *(v0 + 72);
  v18 = *(v0 + 88);
  v19 = *(v0 + 104);
  v2 = *(v0 + 136);
  if (v2)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = v2;
    if (([v5 isEditingAvailable] & 1) != 0 && (v6 = objc_msgSend(v4, sel_profileIdentifier), v7 = objc_msgSend(v6, sel_type), v6, v7 == 3))
    {
      v8 = [v5 accessPoint];

      if (v8 != 8)
      {
        sub_25889C578(v3, &v14);
        v10 = v16;
        v11 = v17;
        v12 = v18;
        v13 = v19;
        sub_258874918(&v16, v15, sub_2587D2DD4);
        sub_2587D2DD4(0);
        sub_2588BD2D8();
        v15[0] = v10;
        v15[1] = v11;
        v15[2] = v12;
        v15[3] = v13;
        return sub_258874980(v15, sub_2587D2DD4);
      }
    }

    else
    {
    }

    return v1();
  }

  else
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8, &protocol conformance descriptor for MIUIDisplayConfiguration);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

unint64_t sub_2588752B0()
{
  result = qword_27F960AE8;
  if (!qword_27F960AE8)
  {
    sub_258875348(255, &qword_27F960AF0, &type metadata for CellAccessoryButton, &type metadata for BasicAlertModifier);
    sub_258875398();
    sub_2587FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AE8);
  }

  return result;
}

void sub_258875348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258875398()
{
  result = qword_27F960AF8;
  if (!qword_27F960AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960AF8);
  }

  return result;
}

id static _HKMedicalIDData.mockMedicalIDData(listVersion:)(uint64_t a1, int a2)
{
  LODWORD(v82) = a2;
  v86 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  v3 = sub_2588BD868();
  [v2 setName_];

  v88.width = 1.0;
  v88.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v88, 0, 0.0);
  v4 = [objc_opt_self() orangeColor];
  [v4 setFill];

  v89.origin.x = 0.0;
  v89.origin.y = 0.0;
  v89.size.width = 1.0;
  v89.size.height = 1.0;
  UIRectFill(v89);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v5)
  {
    v6 = UIImagePNGRepresentation(v5);

    if (v6)
    {
      v7 = sub_2588BB908();
      v9 = v8;

      v5 = sub_2588BB8F8();
      sub_2587C2610(v7, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  [v2 setPictureData_];

  v10 = sub_2588BB818();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25887612C(0, &qword_27F960B00, MEMORY[0x28220C238]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = sub_2588BBB48();
  v83 = *(*(v16 - 8) + 56);
  v83(&v75 - v15, 1, 1, v16);
  sub_25887612C(0, &qword_27F960B08, MEMORY[0x28220C298]);
  v87 = v2;
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v75 - v18;
  v20 = sub_2588BBB78();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_2588BB7F8();
  sub_2588BB7E8();
  sub_2588BB798();
  sub_2588BB7C8();
  v21 = sub_2588BB7A8();
  MEMORY[0x28223BE20](v21);
  v22 = &v75 - v15;
  v23 = sub_2588BBAD8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, *MEMORY[0x277CC9838], v23);
  sub_2588BBAE8();
  (*(v24 + 8))(v26, v23);
  v83(v22, 0, 1, v16);
  sub_2588BB808();
  v83 = v12;
  v27 = sub_2588BB758();
  [v87 setGregorianBirthday_];

  v28 = objc_opt_self();
  v29 = [v28 footUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:5.58];

  [v87 setHeight_];
  v32 = [v28 poundUnit];
  v33 = v87;
  v34 = [v30 quantityWithUnit:v32 doubleValue:150.0];

  [v33 setWeight_];
  [v33 setBloodType_];
  sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
  v35 = sub_2588BDCC8();
  [v33 setIsOrganDonor_];

  v36 = sub_2588BD868();
  [v33 setPrimaryLanguageCode_];

  v37 = sub_2588BD868();
  [v33 setMedicalConditions_];

  v38 = sub_2588BD868();
  [v33 setAllergyInfo_];

  v39 = sub_2588BD868();
  [v33 setMedicationInfo_];

  v40 = sub_2588BD868();
  [v33 setMedicalNotes_];

  v41 = [objc_allocWithZone(MEMORY[0x277CCDDA0]) init];
  v42 = sub_2588BD868();
  [v41 setName_];

  v43 = sub_2588BD868();
  [v41 setPhoneNumber_];

  v44 = sub_2588BD868();
  [v41 setRelationship_];

  sub_258876180();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2588C6780;
  *(v45 + 32) = v41;
  sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
  v46 = v41;
  v47 = sub_2588BD9A8();

  [v33 setEmergencyContacts_];

  if (v82)
  {
    (*(v84 + 8))(v83, v85);
  }

  else
  {
    v48 = [objc_allocWithZone(MEMORY[0x277CCDDF8]) init];
    v82 = v46;
    v49 = v48;
    v50 = sub_2588BD868();
    [v49 setTextDescription_];

    v51 = [objc_allocWithZone(MEMORY[0x277CCDDF8]) init];
    v52 = sub_2588BD868();
    [v51 &off_2798A7330 + 5];

    v53 = swift_allocObject();
    v79 = xmmword_2588BFD30;
    *(v53 + 16) = xmmword_2588BFD30;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
    sub_25878E130(0, &qword_27F960B10, 0x277CCDDF8);
    v81 = v49;
    v80 = v51;
    v54 = sub_2588BD9A8();

    [v33 setMedicationsList_];

    v55 = sub_2588BDCC8();
    [v33 setMedicationsListVersion_];

    v56 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v57 = sub_2588BD868();
    [v56 &off_2798A7330 + 5];

    v58 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v59 = sub_2588BD868();
    [v58 &off_2798A7330 + 5];

    v60 = [objc_allocWithZone(MEMORY[0x277CCDDE0]) init];
    v61 = sub_2588BD868();
    [v60 &off_2798A7330 + 5];

    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_2588C6E20;
    *(v62 + 32) = v56;
    *(v62 + 40) = v58;
    *(v62 + 48) = v60;
    sub_25878E130(0, &qword_27F960B18, 0x277CCDDE0);
    v78 = v56;
    v77 = v58;
    v76 = v60;
    v63 = sub_2588BD9A8();

    [v33 setAllergiesList_];

    v64 = sub_2588BDCC8();
    [v33 setAllergiesListVersion_];

    v65 = [objc_allocWithZone(MEMORY[0x277CCDDE8]) init];
    v66 = sub_2588BD868();
    [v65 setTextDescription_];

    v67 = [objc_allocWithZone(MEMORY[0x277CCDDE8]) init];
    v68 = sub_2588BD868();
    [v67 setTextDescription_];

    v69 = swift_allocObject();
    *(v69 + 16) = v79;
    *(v69 + 32) = v65;
    *(v69 + 40) = v67;
    sub_25878E130(0, &qword_27F960B20, 0x277CCDDE8);
    v70 = v65;
    v71 = v67;
    v72 = sub_2588BD9A8();

    [v33 setConditionsList_];

    v73 = sub_2588BDCC8();
    [v33 setConditionsListVersion_];

    (*(v84 + 8))(v83, v85);
  }

  return v33;
}

void sub_25887612C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258876180()
{
  if (!qword_280C0DDB8)
  {
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDB8);
    }
  }
}

uint64_t type metadata accessor for MedicalIDDeleteView(uint64_t a1)
{
  result = qword_27F960B28;
  if (!qword_27F960B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258876248(uint64_t a1)
{
  sub_258878620(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258878620(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2587DC074();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258876360()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MedicalIDDeleteView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2588764B0@<X0>(uint64_t a1@<X8>)
{
  v15[0] = a1;
  sub_258877AB4(0);
  v15[1] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588767A8();
  v5 = sub_2588BD858();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v7 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v6;
  sub_2588BBAB8();
  v18 = sub_2588BD8B8();
  v19 = v9;
  v10 = (v1 + *(type metadata accessor for MedicalIDDeleteView(0) + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  v16 = v11;
  v17 = v12;
  sub_2587DC074();
  v13 = sub_2588BD2E8();
  MEMORY[0x28223BE20](v13);
  sub_258878620(0, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
  sub_258877F30();
  sub_25878F648();
  sub_258878314();
  sub_2588BD048();

  return sub_258878BC0(v4, sub_258877AB4);
}

void sub_2588767A8()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDDeleteView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258877AE8(0);
  v6 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25887839C(v1, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_258878400(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_258877D58(0);
  sub_258877DB8(&qword_27F960B68, sub_258877D58, sub_258846C40);
  sub_2588BD318();
  v11 = [objc_opt_self() tertiarySystemFillColor];
  v12 = sub_2588BD148();
  LOBYTE(v9) = sub_2588BCB88();
  sub_258877C28(0);
  v14 = &v8[*(v13 + 36)];
  *v14 = v12;
  v14[8] = v9;
  sub_258877B90(0);
  v16 = &v8[*(v15 + 36)];
  sub_258878620(0, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
  v18 = *(v17 + 28);
  v19 = *MEMORY[0x277CDF420];
  v20 = sub_2588BBF28();
  (*(*(v20 - 8) + 104))(&v16[v18], v19, v20);
  *v16 = swift_getKeyPath(byte_2588C6EC8);
  v21 = &v8[*(v6 + 36)];
  v22 = *(sub_2588BC2A8() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_2588BC6B8();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #26.0 }

  *v21 = _Q0;
  sub_258846858(0);
  *&v21[*(v30 + 36)] = 256;
  v31 = sub_2588BD9A8();
  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    sub_2588BD8A8();

    sub_258877FE0();
    sub_2588BCFB8();

    sub_258878BC0(v8, sub_258877AE8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258876B54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  sub_258878620(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  sub_258877EDC(0, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v43 = v6;
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v37 - v9;
  v10 = type metadata accessor for MedicalIDDeleteView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = sub_2588BD748();
  v40 = *(v45 - 8);
  v13 = v40;
  v14 = MEMORY[0x28223BE20](v45);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  sub_25887839C(a1, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  sub_258878400(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v39 = v18;
  sub_2588BD718();
  sub_2588BBDC8();
  v21 = sub_2588BBDE8();
  (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
  sub_25887839C(a1, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_258878400(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19);
  v23 = v46;
  sub_2588BD308();
  v24 = *(v13 + 16);
  v38 = v16;
  v25 = v18;
  v26 = v45;
  v24(v16, v25, v45);
  v28 = v41;
  v27 = v42;
  v29 = *(v41 + 16);
  v30 = v43;
  v29(v42, v23, v43);
  v31 = v44;
  v24(v44, v16, v26);
  sub_258877E40(0);
  v29(&v31[*(v32 + 48)], v27, v30);
  v33 = *(v28 + 8);
  v33(v46, v30);
  v34 = *(v40 + 8);
  v35 = v45;
  v34(v39, v45);
  v33(v27, v30);
  return (v34)(v38, v35);
}

uint64_t sub_258876FFC(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDDeleteView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258878620(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_25887839C(a1, v5);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_258878400(v5, v12 + v11);
  sub_2587ABD24(0, 0, v8, &unk_2588C6EB0, v12);
}

uint64_t sub_2588771D8(uint64_t a1, char a2)
{
  type metadata accessor for MedicalIDDeleteView(0);
  sub_2587DC074();
  return sub_2588BD2D8();
}

double sub_258877240@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BCC88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v6 = qword_27F95DA88;
  v46 = sub_2588BCDE8();
  v8 = v7;
  v10 = v9;
  sub_2588BCC08();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  sub_2588BCCA8();

  (*(v3 + 8))(v5, v2);
  v11 = v10;
  v12 = v46;
  v13 = sub_2588BCDD8();
  v15 = v14;
  v17 = v16;
  v45 = v18;

  sub_2587B1CF8(v12, v8, v11 & 1);

  *&v50 = sub_2588BD168();
  v19 = sub_2588BCD98();
  v21 = v20;
  LOBYTE(v12) = v22;
  v46 = v23;
  sub_2587B1CF8(v13, v15, v17 & 1);

  v24 = sub_2588BCB78();
  sub_2588BBE38();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v15) = v12 & 1;
  LOBYTE(v50) = v12 & 1;
  v47 = 0;
  LOBYTE(v12) = sub_2588BCBE8();
  sub_2588BBE38();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v48 = 0;
  sub_2588BD5C8();
  sub_2588BC328();
  *&v49[55] = v53;
  *&v49[71] = v54;
  *&v49[87] = v55;
  *&v49[103] = v56;
  *&v49[7] = v50;
  *&v49[23] = v51;
  *&v49[39] = v52;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v15;
  *(a1 + 24) = v46;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28;
  *(a1 + 56) = v30;
  *(a1 + 64) = v32;
  *(a1 + 72) = 0;
  *(a1 + 80) = v12;
  *(a1 + 88) = v34;
  *(a1 + 96) = v36;
  *(a1 + 104) = v38;
  *(a1 + 112) = v40;
  *(a1 + 120) = 0;
  v41 = *&v49[80];
  *(a1 + 185) = *&v49[64];
  *(a1 + 201) = v41;
  *(a1 + 217) = *&v49[96];
  *(a1 + 232) = *&v49[111];
  v42 = *&v49[16];
  *(a1 + 121) = *v49;
  *(a1 + 137) = v42;
  result = *&v49[32];
  v44 = *&v49[48];
  *(a1 + 153) = *&v49[32];
  *(a1 + 169) = v44;
  return result;
}

uint64_t sub_25887762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  sub_258878620(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  v4[7] = sub_2588BDA78();
  v4[8] = sub_2588BDA68();
  v7 = sub_2588BDA28();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_258877784, v7, v6);
}

uint64_t sub_258877784()
{
  *(v0 + 88) = sub_258876360();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_258877824;

  return MedicalIDDataManager.delete()();
}

uint64_t sub_258877824()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_258877968, v3, v2);
}

uint64_t sub_258877968()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_2588BDAA8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_25887839C(v4, v1);
  v6 = sub_2588BDA68();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_258878400(v1, v8 + v7);
  sub_2587ABD24(0, 0, v2, &unk_2588C6EC0, v8);

  v10 = v0[1];

  return v10();
}

void sub_258877B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258877B90(uint64_t a1)
{
  if (!qword_27F960B48)
  {
    sub_258877C28(255);
    sub_258878620(255, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960B48);
    }
  }
}

void sub_258877C28(uint64_t a1)
{
  if (!qword_27F960B50)
  {
    sub_258877CBC(255);
    sub_258877EDC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960B50);
    }
  }
}

void sub_258877CBC(uint64_t a1)
{
  if (!qword_27F960B58)
  {
    sub_258877D58(255);
    sub_258877DB8(&qword_27F960B68, sub_258877D58, sub_258846C40);
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960B58);
    }
  }
}

void sub_258877D58(uint64_t a1)
{
  if (!qword_27F960B60)
  {
    sub_2588467CC(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960B60);
    }
  }
}

uint64_t sub_258877DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258877E40(uint64_t a1)
{
  if (!qword_27F960B78)
  {
    sub_2588BD748();
    sub_258877EDC(255, &qword_27F95E9D0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960B78);
    }
  }
}

void sub_258877EDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258877F30()
{
  result = qword_27F960B80;
  if (!qword_27F960B80)
  {
    sub_258877AB4(255);
    sub_258877FE0();
    sub_2588782CC(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B80);
  }

  return result;
}

unint64_t sub_258877FE0()
{
  result = qword_27F960B88;
  if (!qword_27F960B88)
  {
    sub_258877AE8(255);
    sub_258878090();
    sub_2588782CC(&qword_27F95FD40, sub_258846858, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B88);
  }

  return result;
}

unint64_t sub_258878090()
{
  result = qword_27F960B90;
  if (!qword_27F960B90)
  {
    sub_258877B90(255);
    sub_258878110();
    sub_258878244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B90);
  }

  return result;
}

unint64_t sub_258878110()
{
  result = qword_27F960B98;
  if (!qword_27F960B98)
  {
    sub_258877C28(255);
    sub_2588782CC(&qword_27F960BA0, sub_258877CBC, MEMORY[0x277CDF028]);
    sub_2588781C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960B98);
  }

  return result;
}

unint64_t sub_2588781C0()
{
  result = qword_27F95FD38;
  if (!qword_27F95FD38)
  {
    sub_258877EDC(255, &qword_27F95FCF8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95FD38);
  }

  return result;
}

unint64_t sub_258878244()
{
  result = qword_27F960BA8;
  if (!qword_27F960BA8)
  {
    sub_258878620(255, &qword_27F95F758, MEMORY[0x277CDF450], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BA8);
  }

  return result;
}

uint64_t sub_2588782CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258878314()
{
  result = qword_27F960BB0;
  if (!qword_27F960BB0)
  {
    sub_258878620(255, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BB0);
  }

  return result;
}

uint64_t sub_25887839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDDeleteView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258878400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDDeleteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_258878620(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_2588BC038();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2588785C0()
{
  v1 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258876FFC(v2);
}

void sub_258878620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258878684(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AEAC8;

  return sub_25887762C(a1, v6, v7, v1 + v5);
}

uint64_t sub_258878774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2588BC038();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_2588BDA78();
  v4[6] = sub_2588BDA68();
  v7 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_258878868, v7, v6);
}

uint64_t sub_258878868()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_25885269C(v1);
  sub_2588BC028();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_258878620(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_2588BC038();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258878A64(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicalIDDeleteView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_258878774(a1, v6, v7, v1 + v5);
}

uint64_t sub_258878BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListCellModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_258878D0C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BCB78();
  sub_2588BBE38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_258879274(0);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  sub_258879324(0);
  v17 = a3 + *(v16 + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  LOBYTE(a1) = sub_2588BCBE8();
  sub_2588BBE38();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_258879344(0);
  v27 = a3 + *(v26 + 36);
  *v27 = a1;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  v28 = sub_2588BD5C8();
  v30 = v29;
  v31 = objc_opt_self();
  if (a2)
  {
    v32 = [v31 secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v33 = [v31 secondarySystemBackgroundColor];
  }

  sub_2588BD148();
  sub_2588BC778();
  sub_258879364(0);
  v35 = a3 + *(v34 + 36);
  *v35 = v47;
  *(v35 + 8) = v48;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  sub_25887961C(0, &qword_27F960BF8, sub_258879364, sub_258846858);
  v37 = (a3 + *(v36 + 36));
  v38 = *(sub_2588BC2A8() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_2588BC6B8();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #26.0 }

  *v37 = _Q0;
  sub_258846858(0);
  *&v37[*(v46 + 36)] = 256;
}

void sub_258878F98(uint64_t a5@<X8>)
{

  v23 = 256;
  v24 = sub_2588BCDE8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath(a0_7, 0, v23);
  v13 = sub_2588BCCC8();
  v14 = swift_getKeyPath(asc_2588C70F0);
  v15 = v9 & 1;
  v16 = sub_2588BC8D8();
  v17 = sub_2588BCB78();
  v18 = sub_2588BCB98();
  sub_2588BBE38();
  *a5 = v24;
  *(a5 + 8) = v7;
  *(a5 + 16) = v15;
  *(a5 + 24) = v11;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 0;
  *(a5 + 48) = v14;
  *(a5 + 56) = v13;
  *(a5 + 64) = v16;
  *(a5 + 72) = v17;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 1;
  *(a5 + 120) = v18;
  *(a5 + 128) = v19;
  *(a5 + 136) = v20;
  *(a5 + 144) = v21;
  *(a5 + 152) = v22;
  *(a5 + 160) = 0;
}

uint64_t sub_2588790E8@<X0>(uint64_t a3@<X8>)
{
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v10 = sub_2588BCD88();
  v12 = v11;
  v14 = v13;

  sub_2587B1CF8(v4, v6, v8 & 1);

  sub_2588BCC08();
  sub_2588BCC28();
  sub_2588BCC78();

  v15 = sub_2588BCDD8();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_2587B1CF8(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

void sub_258879274(uint64_t a1)
{
  if (!qword_27F960BB8)
  {
    sub_2588792D0();
    v1 = sub_2588BC8B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960BB8);
    }
  }
}

unint64_t sub_2588792D0()
{
  result = qword_27F960BC0;
  if (!qword_27F960BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BC0);
  }

  return result;
}

void sub_258879398(uint64_t a1)
{
  if (!qword_27F960BE0)
  {
    sub_258879690(255, &qword_27F960BE8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], MEMORY[0x277CE0338]);
    sub_258879424();
    v1 = sub_2588BC758();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960BE0);
    }
  }
}

unint64_t sub_258879424()
{
  result = qword_27F960BF0;
  if (!qword_27F960BF0)
  {
    sub_258879690(255, &qword_27F960BE8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], MEMORY[0x277CE0338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BF0);
  }

  return result;
}

void sub_2588794FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258879558(uint64_t a1)
{
  if (!qword_27F960C18)
  {
    sub_25887961C(255, &qword_27F95F508, sub_2587E5DE8, sub_2587B1964);
    sub_258879690(255, &qword_27F95E5F8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960C18);
    }
  }
}

void sub_25887961C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258879690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258879718()
{
  result = qword_27F960C28;
  if (!qword_27F960C28)
  {
    sub_258879558(255);
    sub_258879798();
    sub_25885A8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C28);
  }

  return result;
}

unint64_t sub_258879798()
{
  result = qword_27F960C30;
  if (!qword_27F960C30)
  {
    sub_25887961C(255, &qword_27F95F508, sub_2587E5DE8, sub_2587B1964);
    sub_2587E65C8();
    sub_258879878(&qword_27F95D9B8, sub_2587B1964, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C30);
  }

  return result;
}

uint64_t sub_258879878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2588798C0()
{
  result = qword_27F960C38;
  if (!qword_27F960C38)
  {
    sub_25887961C(255, &qword_27F960BF8, sub_258879364, sub_258846858);
    sub_2588799A0();
    sub_258879878(&qword_27F95FD40, sub_258846858, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C38);
  }

  return result;
}

unint64_t sub_2588799A0()
{
  result = qword_27F960C40;
  if (!qword_27F960C40)
  {
    sub_258879364(255);
    sub_258879A80(&qword_27F960C48, sub_258879344, sub_258879B04);
    sub_258879878(&qword_27F960C60, sub_258879398, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C40);
  }

  return result;
}

uint64_t sub_258879A80(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258879B04()
{
  result = qword_27F960C50;
  if (!qword_27F960C50)
  {
    sub_258879324(255);
    sub_258879878(&qword_27F960C58, sub_258879274, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C50);
  }

  return result;
}

uint64_t sub_258879BB4()
{
  v0 = [objc_opt_self() systemRedColor];
  result = sub_2588BD148();
  qword_27F969918 = result;
  return result;
}

uint64_t sub_258879BF4()
{
  result = sub_2588BD1C8();
  qword_27F969920 = result;
  return result;
}

id MIUIMedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2588BBA88();
  v10 = [v8 initWithHealthStore:a1 medicalIDData:a2 showDateUpdated:a3 & 1 locale:v9];

  v11 = sub_2588BBAC8();
  (*(*(v11 - 8) + 8))(a4, v11);
  return v10;
}

id MIUIMedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = sub_25887AF30(a1, a2, a3, a4);

  return v6;
}

void sub_258879F48()
{
  if ([v0 showDateUpdated])
  {
    v1 = [v0 containerView];
    [v0 addSubview_];

    v2 = [v0 containerView];
    v3 = [v0 imageView];
    [v2 addSubview_];

    v4 = [v0 containerView];
    v5 = [v0 textLabel];
    [v4 addSubview_];

    v6 = [v0 dateUpdatedLabel];
    [v0 addSubview_];

    sub_25887A2B8();
  }

  else
  {
    v7 = [v0 stackView];
    [v0 addSubview_];

    sub_25887AB2C();
  }
}

void sub_25887A2B8()
{
  sub_258876180();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588C7120;
  v2 = [v0 imageView];
  v3 = [v2 firstBaselineAnchor];

  v4 = [v0 textLabel];
  v5 = [v4 firstBaselineAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v0 imageView];
  v8 = [v7 trailingAnchor];

  v9 = [v0 textLabel];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:-4.0];
  *(v1 + 40) = v11;
  v12 = [v0 imageView];
  v13 = [v12 byte_2798A7529];

  v14 = [v0 containerView];
  v15 = [v14 byte_2798A7529];

  v16 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v16;
  v17 = [v0 textLabel];
  v18 = [v17 topAnchor];

  v19 = [v0 containerView];
  v20 = [v19 &selRef_setDateStyle_];

  v21 = [v18 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 56) = v21;
  v22 = [v0 containerView];
  v23 = [v22 &selRef_setPhoneNumberLabel_ + 4];

  v24 = [v0 textLabel];
  v25 = [v24 &selRef_setPhoneNumberLabel_ + 4];

  v26 = [v23 constraintEqualToAnchor_];
  *(v1 + 64) = v26;
  v27 = [v0 containerView];
  v28 = [v27 bottomAnchor];

  v29 = [v0 textLabel];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v1 + 72) = v31;
  v32 = [v0 containerView];
  v33 = [v32 leadingAnchor];

  v34 = [v0 leadingAnchor];
  v35 = [v33 &off_2798A7108 + 7];

  *(v1 + 80) = v35;
  v36 = [v0 containerView];
  v37 = [v36 centerXAnchor];

  v38 = [v0 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v1 + 88) = v39;
  v40 = [v0 dateUpdatedLabel];
  v41 = [v40 topAnchor];

  v42 = [v0 containerView];
  v43 = [v42 bottomAnchor];

  v44 = [v41 constraintEqualToAnchor:v43 constant:5.0];
  *(v1 + 96) = v44;
  v45 = [v0 dateUpdatedLabel];
  v46 = [v45 centerXAnchor];

  v47 = [v0 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v1 + 104) = v48;
  v49 = [v0 leadingAnchor];
  v50 = [v0 dateUpdatedLabel];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v1 + 112) = v52;
  v53 = [v0 topAnchor];
  v54 = [v0 containerView];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v1 + 120) = v56;
  v57 = [v0 trailingAnchor];
  v58 = [v0 containerView];
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 128) = v60;
  v61 = [v0 bottomAnchor];
  v62 = [v0 dateUpdatedLabel];
  v63 = [v62 bottomAnchor];

  v64 = [v61 constraintEqualToAnchor_];
  *(v1 + 136) = v64;
  v65 = [v0 trailingAnchor];
  v66 = [v0 dateUpdatedLabel];
  v67 = [v66 trailingAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v1 + 144) = v68;
  v69 = objc_opt_self();
  sub_25878E130(0, &qword_27F960CE0, 0x277CCAAD0);
  v70 = sub_2588BD9A8();

  [v69 activateConstraints_];
}

void sub_25887AB2C()
{
  sub_258876180();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588C7130;
  v2 = [v0 stackView];
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v0 stackView];
  v7 = [v6 bottomAnchor];

  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [v0 stackView];
  v11 = [v10 leadingAnchor];

  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v1 + 48) = v13;
  v14 = [v0 stackView];
  v15 = [v14 trailingAnchor];

  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v17;
  v18 = objc_opt_self();
  sub_25878E130(0, &qword_27F960CE0, 0x277CCAAD0);
  v19 = sub_2588BD9A8();

  [v18 activateConstraints_];
}

void __swiftcall MIUIMedicalIDNavigationBarView.init(frame:)(MIUIMedicalIDNavigationBarView *__return_ptr retstr, CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id sub_25887AF30(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v105 = a4;
  v101 = a3;
  v104 = a1;
  if (a2)
  {
    v103 = _HKMedicalIDData.displayName.getter();
    v102 = v7;
  }

  else
  {
    v103 = 0;
    v102 = 0;
  }

  sub_25887BBC0(0, &qword_27F95D880, MEMORY[0x28220BF50], MEMORY[0x277D83D88]);
  *&v100 = &v94;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v94 - v9;
  if (a2)
  {
    v11 = [a2 dateSaved];
    v12 = MEMORY[0x28223BE20](v11);
    if (v12)
    {
      v13 = v12;
      sub_2588BB988();

      v14 = sub_2588BB9B8();
      (*(*(v14 - 8) + 56))(&v94 - v9, 0, 1, v14);
    }

    else
    {
      v16 = sub_2588BB9B8();
      (*(*(v16 - 8) + 56))(&v94 - v9, 1, 1, v16);
    }

    sub_2587E8EE8(&v94 - v9, &v94 - v9);
  }

  else
  {
    v15 = sub_2588BB9B8();
    (*(*(v15 - 8) + 56))(&v94 - v9, 1, 1, v15);
  }

  v17 = sub_2588BBAC8();
  v99 = &v94;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 16);
  v21(v20, v105, v17);
  v22 = type metadata accessor for MedicalIDNavigationBarViewModel(0);
  v23 = objc_allocWithZone(v22);
  v24 = v104;
  *&v23[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v104;
  v25 = &v23[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  v26 = v102;
  *v25 = v103;
  *(v25 + 1) = v26;
  sub_2588252AC(v10, &v23[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved]);
  v21(&v23[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v20, v17);
  v107.receiver = v23;
  v107.super_class = v22;
  v27 = v24;
  v28 = objc_msgSendSuper2(&v107, sel_init);
  v29 = *(v18 + 8);
  v104 = v17;
  v103 = (v18 + 8);
  v102 = v29;
  v29(v20, v17);
  sub_258826118(v10);
  v98 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_viewModel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_viewModel] = v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView] = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v32 = MEMORY[0x277D84560];
  sub_25887BBC0(0, &qword_27F960CB0, sub_258863B5C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v100 = xmmword_2588C00B0;
  *(inited + 16) = xmmword_2588C00B0;
  v34 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  sub_25887BBC0(0, &qword_27F960CB8, sub_25887BC24, v32);
  v35 = swift_initStackObject();
  *(v35 + 16) = v100;
  v36 = *MEMORY[0x277D74430];
  *(v35 + 32) = *MEMORY[0x277D74430];
  *(v35 + 40) = *MEMORY[0x277D74420];
  v37 = v34;
  v38 = v36;
  v39 = sub_2588638C8(v35);
  swift_setDeallocating();
  sub_25887BC94(v35 + 32, sub_25887BC24);
  sub_25887BCF4(0);
  *(inited + 64) = v40;
  *(inited + 40) = v39;
  sub_2588639AC(inited);
  swift_setDeallocating();
  sub_25887BC94(inited + 32, sub_258863B5C);
  type metadata accessor for AttributeName(0);
  sub_25887BDA0(&qword_27F95D650, type metadata accessor for AttributeName, &unk_2588BFBD0);
  v41 = sub_2588BD758();

  v42 = [v31 fontDescriptorByAddingAttributes_];

  v96 = objc_opt_self();
  *&v100 = v42;
  v43 = [v96 fontWithDescriptor:v42 size:0.0];
  v95 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont] = v43;
  v44 = [objc_opt_self() configurationWithFont_];
  v45 = sub_2588BD868();
  v46 = [objc_opt_self() systemImageNamed:v45 withConfiguration:v44];

  v47 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v97 = v46;
  v48 = [v47 initWithImage_];
  v49 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView] = v48;
  v99 = v44;
  [v48 setPreferredSymbolConfiguration_];
  v50 = *&v5[v49];
  sub_25878E130(0, &qword_27F960CD0, 0x277D75348);
  v51 = qword_27F95D160;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  v53 = sub_2588BDCA8();
  [v52 setTintColor_];

  [*&v5[v49] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v54) = 1148846080;
  [*&v5[v49] setContentHuggingPriority:0 forAxis:v54];
  LODWORD(v55) = 1148846080;
  [*&v5[v49] setContentHuggingPriority:1 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [*&v5[v49] setContentCompressionResistancePriority:0 forAxis:v56];
  LODWORD(v57) = 1148846080;
  [*&v5[v49] setContentCompressionResistancePriority:1 forAxis:v57];
  v58 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v59 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel] = v58;
  v60 = v98;
  v61 = *&v5[v98];
  v62 = v58;
  v63 = v61;
  sub_25888D148();

  v64 = sub_2588BD868();

  [v62 setText_];

  [*&v5[v59] setFont_];
  v65 = *&v5[v59];
  v66 = sub_2588BDCA8();
  [v65 setTextColor_];

  [*&v5[v59] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v59] setAdjustsFontForContentSizeCategory_];
  v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_showDateUpdated] = v101 & 1;
  v67 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v68 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel] = v67;
  v69 = OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved;
  v70 = *&v5[v60];
  v71 = v67;
  v72 = v70;
  sub_2587BCA74(v70 + v69);
  v74 = v73;

  if (v74)
  {
    v75 = sub_2588BD868();
  }

  else
  {
    v75 = 0;
  }

  [v71 setText_];

  v76 = *MEMORY[0x277D76968];
  v77 = *&v5[v68];
  v78 = [v96 preferredFontForTextStyle_];
  [v77 setFont_];

  v79 = *&v5[v68];
  v80 = objc_opt_self();
  v81 = v79;
  v82 = [v80 labelColor];
  [v81 setTextColor_];

  [*&v5[v68] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v68] setAdjustsFontForContentSizeCategory_];
  sub_258876180();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_2588BFD30;
  v84 = *&v5[v49];
  v85 = *&v5[v59];
  *(v83 + 32) = v84;
  *(v83 + 40) = v85;
  v86 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25878E130(0, &qword_27F960CD8, 0x277D75D18);
  v87 = v84;
  v88 = v85;
  v89 = sub_2588BD9A8();

  v90 = [v86 initWithArrangedSubviews_];

  v91 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView] = v90;
  [v90 setAxis_];
  [*&v5[v91] setSpacing_];
  [*&v5[v91] setAlignment_];
  [*&v5[v91] setTranslatesAutoresizingMaskIntoConstraints_];
  v106.receiver = v5;
  v106.super_class = MIUIMedicalIDNavigationBarView;
  v92 = objc_msgSendSuper2(&v106, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_258879F48();

  v102(v105, v104);
  return v92;
}

void sub_25887BBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25887BC24(uint64_t a1)
{
  if (!qword_27F960CC0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960CC0);
    }
  }
}

uint64_t sub_25887BC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25887BCF4(uint64_t a1)
{
  if (!qword_27F960CC8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_25887BDA0(&qword_27F95D640, type metadata accessor for TraitKey, &unk_2588BFC14);
    v1 = sub_2588BD778();
    if (!v2)
    {
      atomic_store(v1, &qword_27F960CC8);
    }
  }
}

uint64_t sub_25887BDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25887BDE8()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25887BE18()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_25887BE48()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_25887BE78()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_25887BEA8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = *a1;
  v5 = [*a1 allergyInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v33 = v8;
    v34 = v7;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  if (qword_27F95D140 != -1)
  {
    swift_once();
  }

  v9 = qword_27F9698E0;
  v31 = qword_27F9698D8;
  v10 = sub_2588BD858();
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v9;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = v11;
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  v16 = v15;
  v17 = [v30 allergiesListVersion];
  if (v17)
  {

    MEMORY[0x28223BE20](v18);
    v19 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v19);
    v20 = v13;
    sub_2588BBAB8();
    v21 = sub_2588BD8B8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = sub_2588BD9A8();
  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    v26 = sub_2588BD8A8();
    v28 = v27;
  }

  else
  {
    v28 = 0xEC0000007365746FLL;
    v26 = 0x4E6C61636964654DLL;
  }

  result = sub_25887C218(a1);
  *a4 = v14;
  a4[1] = v16;
  a4[2] = v34;
  a4[3] = v33;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v31;
  a4[7] = v32;
  a4[8] = v21;
  a4[9] = v23;
  a4[10] = v26;
  a4[11] = v28;
  return result;
}

uint64_t sub_25887C218(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25887C284@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000011;
  v6 = qword_27F9698F0;
  v33 = qword_27F9698E8;
  v7 = sub_2588BD858();
  MEMORY[0x28223BE20](v7 - 8);
  v34 = v6;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v8 = qword_27F95DA88;
  v9 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = v8;
  sub_2588BBAB8();
  v11 = sub_2588BD8B8();
  v31 = v12;
  v32 = v11;
  v13 = *a1;
  v14 = [*a1 medicalConditions];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2588BD8A8();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [v13 conditionsListVersion];
  if (v19)
  {

    MEMORY[0x28223BE20](v20);
    v21 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v21);
    v22 = v10;
    sub_2588BBAB8();
    v23 = sub_2588BD8B8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = sub_2588BD9A8();
  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    v5 = sub_2588BD8A8();
    v29 = v28;
  }

  else
  {
    v29 = 0x80000002588C8AB0;
  }

  result = sub_25887C218(a1);
  *a4 = v32;
  a4[1] = v31;
  a4[2] = v16;
  a4[3] = v18;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v33;
  a4[7] = v34;
  a4[8] = v23;
  a4[9] = v25;
  a4[10] = v5;
  a4[11] = v29;
  return result;
}

uint64_t sub_25887C604@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = *a1;
  v5 = [*a1 medicationInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v33 = v8;
    v34 = v7;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F969840;
  v31 = qword_27F969838;
  v10 = sub_2588BD858();
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v9;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = v11;
  sub_2588BBAB8();
  v14 = sub_2588BD8B8();
  v16 = v15;
  v17 = [v30 medicationsListVersion];
  if (v17)
  {

    MEMORY[0x28223BE20](v18);
    v19 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v19);
    v20 = v13;
    sub_2588BBAB8();
    v21 = sub_2588BD8B8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = sub_2588BD9A8();
  v25 = HKUIJoinStringsForAutomationIdentifier();

  if (v25)
  {
    v26 = sub_2588BD8A8();
    v28 = v27;
  }

  else
  {
    v28 = 0xEC0000007365746FLL;
    v26 = 0x4E6C61636964654DLL;
  }

  result = sub_25887C218(a1);
  *a4 = v14;
  a4[1] = v16;
  a4[2] = v34;
  a4[3] = v33;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v31;
  a4[7] = v32;
  a4[8] = v21;
  a4[9] = v23;
  a4[10] = v26;
  a4[11] = v28;
  return result;
}

double sub_25887C984@<D0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v30 = a2;
  *(&v30 + 1) = a3;
  v5 = [*a1 medicalNotes];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v27 = v8;
    v28 = v7;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  if (qword_27F95D150 != -1)
  {
    swift_once();
  }

  v9 = qword_27F9698F8;
  v10 = qword_27F969900;
  v11 = sub_2588BD858();
  MEMORY[0x28223BE20](v11 - 8);

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = v12;
  sub_2588BBAB8();
  v15 = sub_2588BD8B8();
  v17 = v16;
  v18 = sub_2588BD9A8();
  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    v20 = sub_2588BD8A8();
    v22 = v21;
  }

  else
  {
    v22 = 0xEC0000007365746FLL;
    v20 = 0x4E6C61636964654DLL;
  }

  sub_25887C218(a1);
  *&v32 = v15;
  *(&v32 + 1) = v17;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  v34 = v30;
  *&v35 = v9;
  *(&v35 + 1) = v10;
  v36 = 0uLL;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  v38[0] = v15;
  v38[1] = v17;
  v38[2] = v28;
  v38[3] = v27;
  v39 = v30;
  v40 = v9;
  v41 = v10;
  v42 = 0;
  v43 = 0;
  v44 = v20;
  v45 = v22;
  sub_25887CC48(&v32, &v31);
  sub_25887CC80(v38);
  v23 = v35;
  a4[2] = v34;
  a4[3] = v23;
  v24 = v37;
  a4[4] = v36;
  a4[5] = v24;
  result = *&v32;
  v26 = v33;
  *a4 = v32;
  a4[1] = v26;
  return result;
}

uint64_t type metadata accessor for MedicalIDMedicalNotesCellView(uint64_t a1)
{
  result = qword_27F960CE8;
  if (!qword_27F960CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25887CD34(uint64_t a1)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_2587B2F78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_25887CDDC@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F95D150 != -1)
  {
    swift_once();
  }

  v4 = qword_27F9698F8;
  v3 = qword_27F969900;
  v5 = *v1;

  v6 = [v5 medicalNotes];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2588BD8A8();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for MedicalIDMedicalNotesCellView(0);
  v14 = *(v13 + 20);
  v15 = (v1 + *(v13 + 24));
  *&v18 = v4;
  *(&v18 + 1) = v3;
  LOBYTE(v19) = v12;
  BYTE1(v19) = 2;
  *(&v19 + 1) = *(v1 + v14);
  *&v20 = *(v1 + v14 + 8);
  *(&v20 + 1) = *v15;
  *&v21 = v15[1];
  *(&v21 + 1) = 0x4018000000000000;
  LOBYTE(v22[0]) = 1;

  sub_25887CF44(v1, v22 + 8);
  v16 = v22[1];
  a1[4] = v22[0];
  a1[5] = v16;
  a1[6] = v23[0];
  *(a1 + 105) = *(v23 + 9);
  *a1 = v18;
  a1[1] = v19;
  result = *&v20;
  a1[2] = v20;
  a1[3] = v21;
  return result;
}

double sub_25887CF44@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 medicalNotes];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_2588BD8A8();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 && (v10 = [v3 medicalNotes]) != 0)
  {
    v11 = v10;
    sub_2588BD8A8();

    type metadata accessor for MedicalIDMedicalNotesCellView(0);
  }

  else
  {
LABEL_7:
    v12 = sub_2588BD858();
    MEMORY[0x28223BE20](v12 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v13 = qword_27F95DA88;
    v14 = sub_2588BBAC8();
    MEMORY[0x28223BE20](v14 - 8);
    v15 = v13;
    sub_2588BBAB8();
    sub_2588BD8B8();
    type metadata accessor for MedicalIDMedicalNotesCellView(0);
  }

  sub_258872EBC();
  sub_2587E836C();

  sub_2588BC778();
  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  return result;
}

uint64_t static LoadState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  State = type metadata accessor for LoadState(0, v8, v7, v7);
  v10 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v31 = &v26 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v26 - v15;
  v17 = *(v14 + 48);
  v29 = v10;
  v18 = *(v10 + 16);
  v18(&v26 - v15, v30, State);
  v18(&v16[v17], a2, State);
  v30 = v5;
  v19 = *(v5 + 48);
  if (v19(v16, 1, a3) == 1)
  {
    v20 = 1;
    if (v19(&v16[v17], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18(v31, v16, State);
    if (v19(&v16[v17], 1, a3) != 1)
    {
      v21 = v30;
      v22 = v27;
      (*(v30 + 32))(v27, &v16[v17], a3);
      v23 = v31;
      v20 = sub_2588BD7D8();
      v24 = *(v21 + 8);
      v24(v22, a3);
      v24(v23, a3);
LABEL_8:
      v13 = v29;
      goto LABEL_9;
    }

    (*(v30 + 8))(v31, a3);
  }

  v20 = 0;
  State = TupleTypeMetadata2;
LABEL_9:
  (*(v13 + 8))(v16, State);
  return v20 & 1;
}

uint64_t sub_25887D53C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_25887D598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_25887D718(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t MedicalIDDataManager.__allocating_init(medicalIDDataPublisher:medicalIDEmergencyContactProvider:shouldSaveDataToHealthDetails:saveDataToHealthStore:saveDataToMedicalIDStore:deleteDataFromMedicalIDStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v19 = sub_258881CDC(a1, v18, a3, a4, a5, a6, a7, a8, a9, a10, v10, v17, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v19;
}

uint64_t MedicalIDDataManager.medicalIDData.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_2588C7430);
  v5 = v1;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  return sub_258881E58(v5 + v3, a1);
}

uint64_t LoadState<>.loadedValue.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258881E58(v1, v5);
  v6 = type metadata accessor for MedicalIDData(0);
  if ((*(*(v6 - 1) + 48))(v5, 1, v6) != 1)
  {
    return sub_258881FC4(v5, a1);
  }

  sub_258882028(v5, sub_2587B63B8);
  v32 = MEMORY[0x28220BFC8];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v34 = &v26;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v26 - v9;
  v10 = sub_2588BB9B8();
  v11 = *(*(v10 - 8) + 56);
  v12 = (v11)(&v26 - v9, 1, 1, v10);
  v33 = &v26;
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - v9;
  v11();
  v30 = MEMORY[0x28220B6D8];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v31 = &v26;
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v27 = &v26 - v14;
  v16 = sub_2588BB818();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  (v11)(a1 + v6[21], 1, 1, v10);
  v18 = v6[13];
  (v11)(a1 + v18, 1, 1, v10);
  v19 = v6[14];
  (v11)(a1 + v19, 1, 1, v10);
  v20 = (a1 + v6[15]);
  v21 = a1 + v6[18];
  v26 = xmmword_2588C0670;
  *v21 = xmmword_2588C0670;
  v22 = v6[19];
  v17((a1 + v22), 1, 1, v16);
  v23 = v6[20];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v24 = v32;
  sub_258881F58(v29, a1 + v18, &qword_27F95D880, v32);
  sub_258881F58(v28, a1 + v19, &qword_27F95D880, v24);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v6[16]) = 0;
  *(a1 + v6[17]) = 0;
  sub_2587C4E98(*v21, *(v21 + 8));
  *v21 = v26;
  result = sub_258881F58(v27, a1 + v22, &qword_27F95DA80, v30);
  *(a1 + v23) = 0;
  return result;
}

uint64_t _s11MedicalIDUI0A13IDDataManagerC6updateyyyAA0aC0VzScMYccYaAC11UpdateErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[10] = a3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2587B63B8(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v4[12] = swift_task_alloc();
  sub_2588BDA78();
  v4[13] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x2822009F8](sub_25887DFD4, v6, v5);
}

uint64_t sub_25887DFD4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  swift_getKeyPath(byte_2588C7430);
  v0[5] = v3;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v3 + v5, v2);
  LoadState<>.loadedValue.getter(v1);
  sub_258882028(v2, sub_2587B63B8);
  v4(v1);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_25887E164;
  v7 = v0[12];

  return sub_258880280(v7, (v0 + 6));
}

uint64_t sub_25887E164()
{
  v2 = *v1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_25887E308;
  }

  else
  {
    v5 = sub_25887E274;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25887E274()
{
  v1 = *(v0 + 96);

  sub_258882028(v1, type metadata accessor for MedicalIDData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25887E308()
{
  v1 = v0[12];
  v2 = v0[10];

  sub_258882028(v1, type metadata accessor for MedicalIDData);
  *v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t MedicalIDDataManager.delete()()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_25887E46C, v3, v2);
}

uint64_t sub_25887E46C()
{
  v13 = v0;
  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v1 = sub_2588BBC98();
  v0[8] = __swift_project_value_buffer(v1, qword_27F969938);
  v2 = sub_2588BBC78();
  v3 = sub_2588BDBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_2588BE0E8();
    v8 = sub_258790224(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_25878B000, v2, v3, "[%s]: Removing medical id data", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C8DBE0](v5, -1, -1);
    MEMORY[0x259C8DBE0](v4, -1, -1);
  }

  v11 = (*(v0[3] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore) + **(v0[3] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_25887E694;

  return v11();
}

uint64_t sub_25887E694(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_25887EA80;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = sub_25887E7C0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25887E7C0()
{
  v24 = v0;
  v1 = *(v0 + 88);

  if (v1 == 1)
  {
    v2 = sub_2588BBC78();
    v3 = sub_2588BDBB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v23 = v5;
      *v4 = 136315138;
      v6 = sub_2588BE0E8();
      v8 = sub_258790224(v6, v7, &v23);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25878B000, v2, v3, "[%s]: Removed medical id data", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C8DBE0](v5, -1, -1);
      MEMORY[0x259C8DBE0](v4, -1, -1);
    }
  }

  else
  {
    v9 = 0;
    v10 = sub_2588BBC78();
    v11 = sub_2588BDBD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315394;
      v14 = sub_2588BE0E8();
      v16 = sub_258790224(v14, v15, &v23);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v0 + 16) = 0;
      v17 = 0;
      sub_258881F04(0, &qword_27F960D90, sub_25878D8F4);
      v18 = sub_2588BD8C8();
      v20 = sub_258790224(v18, v19, &v23);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_25878B000, v10, v11, "[%s]: Failed to remove medical id data: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v13, -1, -1);
      MEMORY[0x259C8DBE0](v12, -1, -1);
    }

    else
    {
    }
  }

  v21 = *(v0 + 8);

  return v21(v1);
}

uint64_t sub_25887EA80()
{
  v17 = v0;
  v1 = v0[10];

  v2 = v1;
  v3 = sub_2588BBC78();
  v4 = sub_2588BDBD8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315394;
    v7 = sub_2588BE0E8();
    v9 = sub_258790224(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v0[2] = v1;
    v10 = v1;
    sub_258881F04(0, &qword_27F960D90, sub_25878D8F4);
    v11 = sub_2588BD8C8();
    v13 = sub_258790224(v11, v12, &v16);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_25878B000, v3, v4, "[%s]: Failed to remove medical id data: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v6, -1, -1);
    MEMORY[0x259C8DBE0](v5, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

id MedicalIDDataManager.hkMedicalIDData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25887ECB0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  return sub_25887ED14(v5);
}

uint64_t sub_25887ED14(void *a1)
{
  sub_258881F04(0, &qword_27F95D830, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = v92 - v4;
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider + 24);
  v9 = *(v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider), v8);
  v122 = (*(v9 + 8))(a1, v8, v9);
  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2588BD8A8();
    v120 = v13;
    v121 = v12;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v14 = [a1 medicalConditions];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2588BD8A8();
    v118 = v17;
    v119 = v16;
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  v18 = [a1 allergyInfo];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2588BD8A8();
    v116 = v21;
    v117 = v20;
  }

  else
  {
    v116 = 0;
    v117 = 0;
  }

  v22 = [a1 medicalNotes];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2588BD8A8();
    v114 = v25;
    v115 = v24;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v26 = [a1 medicationInfo];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2588BD8A8();
    v112 = v29;
    v113 = v28;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  v110 = [a1 bloodType];
  v109 = [a1 height];
  v108 = [a1 weight];
  v30 = [a1 pregnancyStartDate];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v111 = v92;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v92 - v33;
  if (v30)
  {
    sub_2588BB988();

    v35 = sub_2588BB9B8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v36 = sub_2588BB9B8();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  }

  v37 = [a1 pregnancyEstimatedDueDate];
  v106 = v92;
  v38 = MEMORY[0x28223BE20](v37);
  if (v38)
  {
    v39 = v38;
    sub_2588BB988();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_2588BB9B8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v102 = v42 + 56;
  v43(v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v40, 1, v41);
  v44 = [a1 primaryLanguageCode];
  if (v44)
  {
    v45 = v44;
    v104 = sub_2588BD8A8();
    v103 = v46;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  v101 = [a1 isDisabled];
  v100 = [a1 shareDuringEmergency];
  v47 = [a1 pictureData];
  if (v47)
  {
    v48 = v47;
    v99 = sub_2588BB908();
    v98 = v49;
  }

  else
  {
    v99 = 0;
    v98 = 0xF000000000000000;
  }

  v50 = [a1 gregorianBirthday];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v97 = v92;
  MEMORY[0x28223BE20](v51 - 8);
  v53 = v92 - v52;
  v107 = v34;
  if (v50)
  {
    sub_2588BB778();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = sub_2588BB818();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v58 = 1;
  v96 = v53;
  v93 = v57;
  v92[1] = v56 + 56;
  v57(v53, v54, 1, v55);
  v95 = [a1 isOrganDonor];
  v59 = [a1 dateSaved];
  v94 = v92;
  v60 = MEMORY[0x28223BE20](v59);
  v61 = v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v61;
  if (v60)
  {
    sub_2588BB988();

    v58 = 0;
  }

  v43(v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v58, 1, v41);
  v62 = type metadata accessor for MedicalIDData(0);
  v63 = v62[13];
  v43(v7 + v63, 1, 1, v41);
  v64 = v43;
  v65 = v62[14];
  v64(v7 + v65, 1, 1, v41);
  v66 = (v7 + v62[15]);
  v67 = v7 + v62[18];
  *v67 = xmmword_2588C0670;
  v68 = v62[19];
  v93(v7 + v68, 1, 1, v55);
  v102 = v62[20];
  v69 = v120;
  *v7 = v121;
  v7[1] = v69;
  v71 = v118;
  v70 = v119;
  v7[2] = v122;
  v7[3] = v70;
  v73 = v116;
  v72 = v117;
  v7[4] = v71;
  v7[5] = v72;
  v75 = v114;
  v74 = v115;
  v7[6] = v73;
  v7[7] = v74;
  v77 = v112;
  v76 = v113;
  v7[8] = v75;
  v7[9] = v76;
  v79 = v109;
  v78 = v110;
  v7[10] = v77;
  v7[11] = v78;
  v80 = v107;
  v81 = v108;
  v7[12] = v79;
  v7[13] = v81;
  v82 = MEMORY[0x28220BFC8];
  sub_258881F58(v80, v7 + v63, &qword_27F95D880, MEMORY[0x28220BFC8]);
  sub_258881F58(v105, v7 + v65, &qword_27F95D880, v82);
  v83 = v103;
  *v66 = v104;
  v66[1] = v83;
  *(v7 + v62[16]) = v101;
  *(v7 + v62[17]) = v100;
  sub_2587C4E98(*v67, *(v67 + 1));
  v84 = v98;
  *v67 = v99;
  *(v67 + 1) = v84;
  sub_258881F58(v96, v7 + v68, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  *(v7 + v102) = v95;
  sub_2587E8EE8(v61, v7 + v62[21]);
  (*(*(v62 - 1) + 56))(v7, 0, 1, v62);
  v85 = v124;
  sub_25887F7D4(v7);
  v86 = sub_2588BDAA8();
  v87 = v123;
  (*(*(v86 - 8) + 56))(v123, 1, 1, v86);
  sub_2588BDA78();

  v88 = sub_2588BDA68();
  v89 = swift_allocObject();
  v90 = MEMORY[0x277D85700];
  v89[2] = v88;
  v89[3] = v90;
  v89[4] = v85;
  sub_2587AC0D4(0, 0, v87, &unk_2588C7558, v89);
}

uint64_t sub_25887F680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C7430);
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  return sub_258881E58(v3 + v4, a2);
}

uint64_t sub_25887F748(uint64_t a1)
{
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258881E58(a1, v4);
  return sub_25887F7D4(v4);
}

uint64_t sub_25887F7D4(uint64_t a1)
{
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v1 + v6, v5);
  v7 = sub_258882344(v5, a1);
  sub_258882028(v5, sub_2587B63B8);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_2588C7430);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    sub_2588BBB88();
  }

  else
  {
    swift_beginAccess();
    sub_2588825E0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_258882028(a1, sub_2587B63B8);
}

uint64_t sub_25887F9B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588825E0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_25887FA1C()
{
  swift_getKeyPath(byte_2588C7560);
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  swift_beginAccess();
}

uint64_t sub_25887FADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2588C7560);
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25887FBA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();

  v5 = sub_258881728(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2588C7560);
    MEMORY[0x28223BE20](KeyPath);
    sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    sub_2588BBB88();
  }
}

uint64_t sub_25887FCF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t MedicalIDDataManager.init(medicalIDDataPublisher:medicalIDEmergencyContactProvider:shouldSaveDataToHealthDetails:saveDataToHealthStore:saveDataToMedicalIDStore:deleteDataFromMedicalIDStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a5;
  v25 = a7;
  v23[0] = a3;
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  MEMORY[0x28223BE20](v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_258881B20(a1, v19, v23[0], a4, v24, a6, v25, a8, a9, a10, v23[1], v16, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

uint64_t sub_25887FED4(uint64_t a1)
{
  v2 = v1;
  sub_2588826C4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_258882758(0);
  sub_258881EBC(&qword_27F960DE8, sub_258882758, MEMORY[0x277CBCD90]);
  v11 = sub_2588BBD98();
  sub_258881EBC(&qword_27F95D820, sub_2587AAC58, &protocol conformance descriptor for LoadState<A>);
  sub_2588BBDA8();

  sub_258881EBC(&qword_27F960DF0, sub_2588826C4, MEMORY[0x277CBCBE0]);

  sub_2588BBDB8();

  (*(v6 + 8))(v8, v5);
  swift_getKeyPath(byte_2588C7560);
  v11 = v2;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v11 = v2;
  swift_getKeyPath(byte_2588C7560);
  sub_2588BBBB8();

  swift_beginAccess();
  sub_2588BBCE8();
  swift_endAccess();

  v11 = v2;
  swift_getKeyPath(byte_2588C7560);
  sub_2588BBBA8();
}

void sub_2588801D0(void **result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    if (v3 == 1)
    {
      return;
    }

    v4 = *result;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  }

  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
  sub_2587AE658(v3);
  sub_2587AE658(v3);
  v6 = v4;

  sub_25887ED14(v6);
  sub_2588827E4(v3);
}

uint64_t sub_258880280(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[8] = a2;
  v3[6] = a1;
  v3[9] = *v2;
  sub_2588BDA78();
  v3[10] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_258880344, v5, v4);
}

uint64_t sub_258880344()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = _HKMedicalIDData.typedCopy.getter();
  v0[13] = v4;

  v5 = v1[1];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *v1;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    v8 = sub_2588BD868();
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  v9 = v0[6];
  [v4 setName_];

  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    sub_2588BDE68();
    v12 = v10 + 32;
    do
    {
      v13 = sub_2587D294C();
      sub_2588BDE38();
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      v12 += 128;
      --v11;
    }

    while (v11);
  }

  v14 = v0[6];
  sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
  v15 = sub_2588BD9A8();

  [v4 setEmergencyContacts_];

  if (*(v14 + 32))
  {
    v16 = sub_2588BD868();
  }

  else
  {
    v16 = 0;
  }

  v17 = v0[6];
  [v4 setMedicalConditions_];

  v18 = *(v17 + 48);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = *(v17 + 40);
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    v21 = sub_2588BD868();
  }

  else
  {
LABEL_18:
    v21 = 0;
  }

  v22 = v0[6];
  [v4 setAllergyInfo_];

  v23 = *(v22 + 64);
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(v22 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    v25 = sub_2588BD868();
  }

  else
  {
LABEL_24:
    v25 = 0;
  }

  v26 = v0[6];
  [v4 setMedicalNotes_];

  v27 = *(v26 + 80);
  v60 = v2;
  if (!v27)
  {
    goto LABEL_30;
  }

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(v26 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    v29 = sub_2588BD868();
  }

  else
  {
LABEL_30:
    v29 = 0;
  }

  v30 = v0[6];
  [v4 setMedicationInfo_];

  [v4 setBloodType_];
  [v4 setHeight_];
  v62 = v4;
  [v4 setWeight_];
  v31 = type metadata accessor for MedicalIDData(0);
  v32 = v31[13];
  v33 = MEMORY[0x28220BFC8];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v34 = swift_task_alloc();
  sub_2588827F4(v30 + v32, v34, &qword_27F95D880, v33);
  v35 = sub_2588BB9B8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = 0;
  if (v37(v34, 1, v35) != 1)
  {
    v38 = sub_2588BB958();
    (*(v36 + 8))(v34, v35);
  }

  v39 = v0[6];

  [v62 setPregnancyStartDate_];

  v40 = v31[14];
  v41 = swift_task_alloc();
  sub_2588827F4(v39 + v40, v41, &qword_27F95D880, MEMORY[0x28220BFC8]);
  if (v37(v41, 1, v35) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_2588BB958();
    (*(v36 + 8))(v41, v35);
  }

  v43 = v0[6];

  [v62 setPregnancyEstimatedDueDate_];

  if (*(v43 + v31[15] + 8))
  {
    v44 = sub_2588BD868();
  }

  else
  {
    v44 = 0;
  }

  v45 = v0[6];
  [v62 setPrimaryLanguageCode_];

  [v62 setIsDisabled_];
  [v62 setShareDuringEmergency_];
  if (*(v45 + v31[18] + 8) >> 60 == 15)
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_2588BB8F8();
  }

  v47 = v0[6];
  [v62 setPictureData_];

  v48 = v31[19];
  v49 = MEMORY[0x28220B6D8];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v50 = swift_task_alloc();
  sub_2588827F4(v47 + v48, v50, &qword_27F95DA80, v49);
  v51 = sub_2588BB818();
  v52 = *(v51 - 8);
  v53 = 0;
  if ((*(v52 + 48))(v50, 1, v51) != 1)
  {
    v53 = sub_2588BB758();
    (*(v52 + 8))(v50, v51);
  }

  v54 = v0[6];

  [v62 setGregorianBirthday_];

  [v62 setIsOrganDonor_];
  sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
  v55 = *(v60 + 16);
  v56 = sub_2588BDCD8();

  if (v56)
  {

    v57 = v0[1];

    return v57();
  }

  else
  {
    v61 = (*(v0[7] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore) + **(v0[7] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore));
    v59 = swift_task_alloc();
    v0[14] = v59;
    *v59 = v0;
    v59[1] = sub_258880B9C;

    return v61(v62);
  }
}

uint64_t sub_258880B9C(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_258880F1C;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_258880CC8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_258880CC8()
{
  v20 = v0;
  v1 = *(v0 + 128);

  if (v1 == 1)
  {
    if ((*(*(v0 + 56) + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails))(v2))
    {
      (*(*(v0 + 56) + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore))(*(v0 + 104));
    }

    v3 = *(v0 + 104);
    v4 = *(v0 + 56);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
    v6 = v3;

    sub_25887ED14(v6);
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v7 = sub_2588BBC98();
    __swift_project_value_buffer(v7, qword_27F969938);
    v8 = 0;
    v9 = sub_2588BBC78();
    v10 = sub_2588BDBD8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136315394;
      v14 = sub_2588BE0E8();
      v16 = sub_258790224(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = 0;
      *v12 = 0;
      _os_log_impl(&dword_25878B000, v9, v10, "[%s]: failed to save medical id data due to: %@", v11, 0x16u);
      sub_2587F2B40(v12);
      MEMORY[0x259C8DBE0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C8DBE0](v13, -1, -1);
      MEMORY[0x259C8DBE0](v11, -1, -1);
    }

    v6 = *(v0 + 104);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_258880F1C()
{
  v20 = v0;
  v1 = *(v0 + 120);

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v2 = sub_2588BBC98();
  __swift_project_value_buffer(v2, qword_27F969938);
  v3 = v1;
  v4 = sub_2588BBC78();
  v5 = sub_2588BDBD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    v9 = sub_2588BE0E8();
    v11 = sub_258790224(v9, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    if (v1)
    {
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v6 + 14) = v13;
    *v7 = v14;
    _os_log_impl(&dword_25878B000, v4, v5, "[%s]: failed to save medical id data due to: %@", v6, 0x16u);
    sub_2587F2B40(v7);
    MEMORY[0x259C8DBE0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C8DBE0](v8, -1, -1);
    MEMORY[0x259C8DBE0](v6, -1, -1);
  }

  if (v1)
  {
    v15 = *(v0 + 104);
    **(v0 + 64) = v1;
    *(v0 + 40) = v1;
    v16 = v1;
    sub_2587CE078();
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t MedicalIDDataManager.deinit()
{
  sub_258882028(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData, sub_2587B63B8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider);

  v1 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MedicalIDDataManager.__deallocating_deinit()
{
  MedicalIDDataManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2588812D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MedicalIDData(0);
  v4[9] = swift_task_alloc();
  sub_2587B63B8(0);
  v4[10] = swift_task_alloc();
  sub_2588BDA78();
  v4[11] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_2588813C4, v6, v5);
}

uint64_t sub_2588813C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  swift_getKeyPath(byte_2588C7430);
  v0[5] = v3;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v3 + v4, v1);
  LoadState<>.loadedValue.getter(v2);
  sub_258882028(v1, sub_2587B63B8);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_258881534;
  v6 = v0[9];

  return sub_258880280(v6, (v0 + 6));
}

uint64_t sub_258881534()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
  }

  sub_258882028(v3, type metadata accessor for MedicalIDData);
  v4 = *(v2 + 96);
  v5 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_2588816A4, v4, v5);
}

uint64_t sub_2588816A4()
{

  **(v0 + 56) = *(v0 + 120) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258881728(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_2588BBCF8();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27F960DF8;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_258881EBC(&qword_27F960DF8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

          v19 = sub_2588BD788();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_258881EBC(qword_27F960E00, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
          while ((sub_2588BD7D8() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_27F960DF8;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_258881A1C(v8, v7);
}

uint64_t sub_258881A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2588BDD68();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_2588BDD88();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258881B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29[3] = a12;
  v29[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a2, a12);
  *(a11 + 16) = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  *(a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions) = MEMORY[0x277D84FA0];
  sub_2588BBBC8();
  sub_2587B6C14(v29, a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider);
  v20 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore);
  *v22 = a7;
  v22[1] = a8;
  v23 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore);
  *v23 = a9;
  v23[1] = a10;
  v24 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  v25 = type metadata accessor for MedicalIDData(0);
  (*(*(v25 - 8) + 56))(a11 + v24, 1, 1, v25);

  sub_25887FED4(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return a11;
}

uint64_t sub_258881CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v16 = *(a12 - 8);
  MEMORY[0x28223BE20](a11);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a2, a12);
  return sub_258881B20(a1, v18, a3, v22, v23, v24, v25, v26, a9, a10, v19, a12, a13);
}

uint64_t type metadata accessor for MedicalIDDataManager(uint64_t a1)
{
  result = qword_27F960DC0;
  if (!qword_27F960DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258881E58(uint64_t a1, uint64_t a2)
{
  sub_2587B63B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258881EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258881F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258881F58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258881F04(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_258881FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258882028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258882090(uint64_t a1)
{
  sub_2587B63B8(319);
  if (v1 <= 0x3F)
  {
    sub_2588BBBD8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2588821D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_258882230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_258882290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2587AE310;

  return sub_2588812D4(a1, v4, v5, v6);
}

uint64_t sub_258882344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B63B8(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258882660(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_258881E58(a1, v14);
  sub_258881E58(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_258881E58(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_258881FC4(&v14[v15], v7);
      v18 = _s11MedicalIDUI0A6IDDataV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_258882028(v7, type metadata accessor for MedicalIDData);
      sub_258882028(v10, type metadata accessor for MedicalIDData);
      sub_258882028(v14, sub_2587B63B8);
      v17 = !v18;
      return v17 & 1;
    }

    sub_258882028(v10, type metadata accessor for MedicalIDData);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_258882028(v14, sub_258882660);
    v17 = 1;
    return v17 & 1;
  }

  sub_258882028(v14, sub_2587B63B8);
  v17 = 0;
  return v17 & 1;
}
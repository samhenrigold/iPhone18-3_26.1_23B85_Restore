uint64_t sub_1B8BD7848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a1 != a5 || a2 != a6)
        {
          goto LABEL_10;
        }

        return 1;
      }
    }

    else if (a8 == 2)
    {
      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      if (sub_1B8C255E8())
      {
        if (a3)
        {
          if (a7 && (a2 == a6 && a3 == a7 || (sub_1B8C25A08() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!a7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

LABEL_10:

  return sub_1B8C25A08();
}

uint64_t sub_1B8BD7984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8BD79D4()
{
  result = qword_1EBAA7F38;
  if (!qword_1EBAA7F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F28, &qword_1B8C2E580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EE8, &qword_1B8C2E550);
    sub_1B8C23FC8();
    sub_1B8B34CFC(&qword_1EBAA7F20, &qword_1EBAA7EE8, &qword_1B8C2E550, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7F38);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for ListPreviewer(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for ListPreviewer.Content(0) + 20);
  v6 = sub_1B8C237B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8BD7C44(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ListPreviewer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BD7CD0(uint64_t a1)
{
  v2 = type metadata accessor for ImageWithPreview(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1B8BD7D2C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ListPreviewer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8BD35E0(a1, v6, a2);
}

unint64_t sub_1B8BD7DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA7F78;
  if (!qword_1EBAA7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7F78);
  }

  return result;
}

uint64_t sub_1B8BD7E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BD7EB0(uint64_t a1)
{
  result = type metadata accessor for ListPreviewer.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8BD7F24()
{
  result = qword_1EBAA7FA0;
  if (!qword_1EBAA7FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F48, &qword_1B8C2E590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7F00, &qword_1B8C2E568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EF8, &qword_1B8C2E560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7EF0, &qword_1B8C2E558);
    sub_1B8BD91F8(&qword_1EBAA7F30, &qword_1EBAA7EF0, &qword_1B8C2E558, sub_1B8BD79D4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7FA0);
  }

  return result;
}

unint64_t sub_1B8BD80D8()
{
  result = qword_1EBAA7FB8;
  if (!qword_1EBAA7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
    sub_1B8B34CFC(&qword_1EBAA7FC0, &qword_1EBAA7FC8, &qword_1B8C2E648, MEMORY[0x1E6981870]);
    sub_1B8B34CFC(&qword_1EBAA7FD0, &qword_1EBAA7FD8, &qword_1B8C2E650, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7FB8);
  }

  return result;
}

uint64_t sub_1B8BD81DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1B8BD8244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ListSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8BD460C(a1, v6, a2);
}

unint64_t sub_1B8BD82C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8018;
  if (!qword_1EBAA8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8018);
  }

  return result;
}

unint64_t sub_1B8BD8318()
{
  result = qword_1EBAA8020;
  if (!qword_1EBAA8020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8008, &qword_1B8C2E6F0);
    sub_1B8BD83D0();
    sub_1B8B34CFC(&qword_1EBAA8038, &qword_1EBAA8040, &qword_1B8C2E700, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8020);
  }

  return result;
}

unint64_t sub_1B8BD83D0()
{
  result = qword_1EBAA8028;
  if (!qword_1EBAA8028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8030, &qword_1B8C2E6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8028);
  }

  return result;
}

double sub_1B8BD8454(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34694(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B8BD8498(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8B34060(result, a2, a3 & 1);
  }

  return result;
}

void sub_1B8BD8504(uint64_t a1)
{
  sub_1B8BD8DF0(319, &qword_1EBAA8088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8BD8DF0(319, &qword_1EBAA8090, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1B8BD8604(319, &qword_1EBAA8098, MEMORY[0x1E697F6A0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD8604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8BD8658()
{
  result = qword_1EBAA80A0;
  if (!qword_1EBAA80A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA80A8, qword_1B8C2E740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7FB0, &qword_1B8C2E640);
    sub_1B8BD80D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA80A0);
  }

  return result;
}

double sub_1B8BD8768@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for TextRow.Row(0);

  return sub_1B8BD5D78(a1, a2);
}

unint64_t sub_1B8BD87E8()
{
  result = qword_1EBAA80F8;
  if (!qword_1EBAA80F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA80E8, &qword_1B8C2E7D0);
    sub_1B8BD7984(&qword_1EBAA8100, type metadata accessor for TextChip, &unk_1B8C2E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA80F8);
  }

  return result;
}

uint64_t sub_1B8BD88C4(uint64_t a1, uint64_t a2)
{
  if ((sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextRow.Row(0);
  if ((sub_1B8B44024(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

double sub_1B8BD8954(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_1B8C250F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8108, &qword_1B8C2E7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8C2A740;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = v8;
  v10 = sub_1B8C24448();
  v11 = sub_1B8BD66FC(a3, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 14.0;
  }

  else
  {
    v14 = v11 * 1.5 + 12.0;
  }

  v15 = [objc_opt_self() systemFontOfSize_];
  *(inited + 64) = sub_1B8B46130(0, &qword_1EBAA7838, 0x1E69DB878);
  *(inited + 40) = v15;
  sub_1B8B5F8E4(inited);
  swift_setDeallocating();
  sub_1B8B3433C(inited + 32, &qword_1EBAA66C0, qword_1B8C29590);
  type metadata accessor for Key(0);
  sub_1B8BD7984(&qword_1EBAA5CB8, type metadata accessor for Key, &unk_1B8C27878);
  v16 = sub_1B8C25088();
  [v6 sizeWithAttributes_];
  v18 = v17;

  if (v18 + 16.0 > a4)
  {
    CGSizeMake();
    v21 = v20;
    v22 = sub_1B8C25088();

    [v6 boundingRectWithSize:1 options:v22 attributes:0 context:{v21, INFINITY}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v32.origin.x = v24;
    v32.origin.y = v26;
    v32.size.width = v28;
    v32.size.height = v30;
    v19 = CGRectGetWidth(v32) + 16.0;
    v33.origin.x = v24;
    v33.origin.y = v26;
    v33.size.width = v28;
    v33.size.height = v30;
    CGRectGetHeight(v33);
  }

  else
  {

    return v18 + 16.0;
  }

  return v19;
}

uint64_t sub_1B8BD8C0C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_1B8BD8C18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_1B8BD8C4C(uint64_t a1)
{
  sub_1B8BD8604(319, &qword_1EBAA8098, MEMORY[0x1E697F6A0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B8BD8D0C(uint64_t a1)
{
  sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    sub_1B8BD8DF0(319, &qword_1EBAA8088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B8BD8DF0(319, &qword_1EBAA8138, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8BD8DF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B8BD8EEC()
{
  result = qword_1EBAA8160;
  if (!qword_1EBAA8160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8158, &qword_1B8C2E948);
    sub_1B8BD8FA4();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8160);
  }

  return result;
}

unint64_t sub_1B8BD8FA4()
{
  result = qword_1EBAA8168;
  if (!qword_1EBAA8168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8170, &qword_1B8C2E950);
    sub_1B8BD905C();
    sub_1B8B34CFC(&qword_1EBAA7A48, &unk_1EBAA7A50, &qword_1B8C2D370, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8168);
  }

  return result;
}

unint64_t sub_1B8BD905C()
{
  result = qword_1EBAA8178;
  if (!qword_1EBAA8178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8180, &qword_1B8C2E958);
    sub_1B8BD9114();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8178);
  }

  return result;
}

unint64_t sub_1B8BD9114()
{
  result = qword_1EBAA8188;
  if (!qword_1EBAA8188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8190, &qword_1B8C2E960);
    sub_1B8BD91F8(&qword_1EBAA8198, &qword_1EBAA81A0, &qword_1B8C2E968, sub_1B8BD927C);
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8188);
  }

  return result;
}

uint64_t sub_1B8BD91F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_1B8BD927C()
{
  result = qword_1EBAA81A8;
  if (!qword_1EBAA81A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA81B0, &qword_1B8C2E970);
    sub_1B8BD9308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA81A8);
  }

  return result;
}

unint64_t sub_1B8BD9308()
{
  result = qword_1EBAA81B8;
  if (!qword_1EBAA81B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA81C0, &qword_1B8C2E978);
    sub_1B8B34CFC(&qword_1EBAA81C8, &qword_1EBAA81D0, &qword_1B8C2E980, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA81B8);
  }

  return result;
}

id sub_1B8BD93C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey_];

  if ((v1 & 1) == 0)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A00);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25498();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v3, v4, "Will not use system account", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  return v1;
}

id sub_1B8BD94E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey_];

  if (v1)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8C23C38();
    __swift_project_value_buffer(v2, qword_1EBAB3A00);
    v3 = sub_1B8C23C18();
    v4 = sub_1B8C25458();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v3, v4, "Will not use Apple Connect authentication", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_1B8BD9628(uint64_t a1)
{
  result = sub_1B8C23498();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8BD96DC(uint64_t a1)
{
  result = type metadata accessor for WebView.HTMLContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1B8BD978C()
{
  v1 = v0;
  v2 = sub_1B8C23188();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1B8C23498();
  v5 = *(v24 - 8);
  v6 = MEMORY[0x1EEE9AC00](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WebView.HTMLContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  [v14 _setColorFilterEnabled_];
  v15 = type metadata accessor for WebView(0);
  [v14 _setDrawsBackground_];
  v16 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v14 configuration:{0.0, 0.0, 0.0, 0.0}];

  [v16 setUserInteractionEnabled_];
  sub_1B8BD9C7C(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v24;
    (*(v5 + 32))(v10, v13, v24);
    (*(v5 + 16))(v8, v10, v17);
    sub_1B8C23178();
    v18 = sub_1B8C23168();
    (*(v22 + 8))(v4, v23);

    (*(v5 + 8))(v10, v17);
  }

  else
  {
    v19 = sub_1B8C250F8();
  }

  return v16;
}

uint64_t sub_1B8BD9AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8BD9C38(&qword_1EBAA81F8, &unk_1B8C2E9A8);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B8BD9B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8BD9C38(&qword_1EBAA81F8, &unk_1B8C2E9A8);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B8BD9BF4(uint64_t a1)
{
  sub_1B8BD9C38(&qword_1EBAA81F8, &unk_1B8C2E9A8);
  sub_1B8C24558();
  __break(1u);
}

uint64_t sub_1B8BD9C38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8BD9C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView.HTMLContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8BD9D28(uint64_t a1)
{
  result = sub_1B8C23528();
  if (v2 <= 0x3F)
  {
    result = sub_1B8C23328();
    if (v3 <= 0x3F)
    {
      result = sub_1B8C23568();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8BD9E24(uint64_t a1)
{
  result = sub_1B8C23528();
  if (v2 <= 0x3F)
  {
    result = sub_1B8C23568();
    if (v3 <= 0x3F)
    {
      result = sub_1B8C23328();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B8BD9ED4()
{
  result = qword_1EBAA6230;
  if (!qword_1EBAA6230)
  {
    sub_1B8C23568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6230);
  }

  return result;
}

uint64_t sub_1B8BD9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B8BD9FA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_1B8B4435C(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_1B8B440B4(v4, v5);
}

uint64_t sub_1B8BD9FDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v45 - v12);
  v14 = *(v5 + 16);
  v14(&v45 - v12, a1, v4);
  result = (*(v5 + 88))(v13, v4);
  if (result == *MEMORY[0x1E69C5C98])
  {
    (*(v5 + 96))(v13, v4);
    v17 = *v13;
    v16 = v13[1];
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8C23C38();
    __swift_project_value_buffer(v18, qword_1EBAB3A30);

    v19 = sub_1B8C23C18();
    v20 = sub_1B8C25478();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136446210;
      v23 = sub_1B8B5DD48(v17, v16, &v49);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1B8B22000, v19, v20, "Response has error: %{public}s", v21, 0xCu);
      v24 = __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CCB0E0](v22, -1, -1, v24);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
    }

    else
    {
    }

    sub_1B8BDEEA8(v25, v26, v27);
    swift_allocError();
    *v43 = 9;
    return swift_willThrow();
  }

  else if (result != *MEMORY[0x1E69C5CA0])
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8C23C38();
    __swift_project_value_buffer(v28, qword_1EBAB3A30);
    v14(v11, a1, v4);
    v29 = sub_1B8C23C18();
    v30 = sub_1B8C25478();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = v30;
      v32 = v31;
      v48 = swift_slowAlloc();
      v49 = v48;
      *v32 = 136446210;
      v14(v8, v11, v4);
      v46 = sub_1B8C25178();
      v34 = v33;
      v35 = *(v5 + 8);
      v35(v11, v4);
      v36 = sub_1B8B5DD48(v46, v34, &v49);

      *(v32 + 4) = v36;
      v37 = v32;
      _os_log_impl(&dword_1B8B22000, v29, v47, "Response has unhandled state: %{public}s", v32, 0xCu);
      v38 = v48;
      v39 = __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B8CCB0E0](v38, -1, -1, v39);
      MEMORY[0x1B8CCB0E0](v37, -1, -1);
    }

    else
    {

      v35 = *(v5 + 8);
      v40 = (v35)(v11, v4);
    }

    sub_1B8BDEEA8(v40, v41, v42);
    swift_allocError();
    *v44 = 9;
    swift_willThrow();
    return (v35)(v13, v4);
  }

  return result;
}

uint64_t sub_1B8BDA4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8C2A740;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x1E699C308], v0);
  v4 = sub_1B8B8A408(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  result = swift_deallocClassInstance();
  qword_1EBAB39E8 = v4;
  return result;
}

uint64_t sub_1B8BDA5D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B8C27920;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E699C2E0], v0);
  v6(v5 + v2, *MEMORY[0x1E699C2B0], v0);
  v7 = sub_1B8B8A408(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EBAB39F0 = v7;
  return result;
}

uint64_t sub_1B8BDA718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C237B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_1B8BF6F80(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BDA934()
{
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA5938 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBAB39E8;
  v5 = qword_1EBAA5940;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8BDA718(v6, v4);
  sub_1B8C237C8();
  v8 = sub_1B8B4E0BC(v3, v7);

  (*(v1 + 8))(v3, v0);
  return v8 & 1;
}

uint64_t sub_1B8BDAAA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v4 = swift_task_alloc();
  *(v2 + 104) = v4;
  *v4 = v2;
  v4[1] = sub_1B8B47300;

  return sub_1B8BDE8F4(v2 + 16, a2);
}

uint64_t sub_1B8BDAB58(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B8C25A08() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  if ((sub_1B8C23508() & 1) == 0 || (sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  return sub_1B8C23318();
}

uint64_t sub_1B8BDAC74(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  if ((sub_1B8C23508() & 1) == 0 || (sub_1B8C23318() & 1) == 0 || *(a1 + *(v6 + 32)) != *(a2 + *(v6 + 32)))
  {
    return 0;
  }

  return sub_1B8C23548();
}

uint64_t sub_1B8BDAD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8C23528();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1B8C23AD8();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1B8C23AA8();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8228, &qword_1B8C2EC60);
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8230, &qword_1B8C2EC68);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v10 = sub_1B8C23328();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8238, &unk_1B8C2EC70);
  v4[29] = v11;
  v4[30] = *(v11 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v4[32] = swift_task_alloc();
  v12 = sub_1B8C23BA8();
  v4[33] = v12;
  v4[34] = *(v12 - 8);
  v4[35] = swift_task_alloc();
  v13 = sub_1B8C23BE8();
  v4[36] = v13;
  v4[37] = *(v13 - 8);
  v4[38] = swift_task_alloc();
  v14 = sub_1B8C23BD8();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8240, &qword_1B8C2EC80);
  v4[42] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8248, &qword_1B8C2EC88);
  v4[43] = v15;
  v4[44] = *(v15 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDB2D4, 0, 0);
}

uint64_t sub_1B8BDB2D4()
{
  v1 = v0[42];
  sub_1B8C23A48();
  swift_allocObject();
  v0[46] = sub_1B8C23A38();
  v2 = sub_1B8C23BF8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v9 = (*MEMORY[0x1E69C5C48] + MEMORY[0x1E69C5C48]);
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_1B8BDB3F0;
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[3];
  v7 = v0[4];

  return v9(v4, v6, v7, v5);
}

uint64_t sub_1B8BDB3F0()
{
  v1 = *(*v0 + 336);

  sub_1B8B3433C(v1, &qword_1EBAA8240, &qword_1B8C2EC80);

  return MEMORY[0x1EEE6DFA0](sub_1B8BDB518, 0, 0);
}

uint64_t sub_1B8BDB518()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[32];
  v185 = v0[31];
  (*(v1 + 104))(v2, *MEMORY[0x1E69C5CB8], v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69C5CA8], v5);
  sub_1B8C23B38();
  (*(v6 + 8))(v3, v5);
  (*(v1 + 8))(v2, v4);
  sub_1B8C23BB8();
  v8 = sub_1B8C238B8();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  sub_1B8C23908();
  sub_1B8C23BC8();
  v9(v7, 0, 1, v8);
  sub_1B8C23928();
  sub_1B8C23B78();
  sub_1B8BD9FDC(v185, &qword_1EBAA8238, &unk_1B8C2EC70);
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1B8C23B98();
  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v0[25];
    v15 = v0[22];
    sub_1B8C23B68();
    if (v13(v15, 1, v14) == 1)
    {
      v16 = v0[25];
      v17 = v0[22];
      sub_1B8C23B88();
      if (v13(v17, 1, v16) != 1)
      {
        sub_1B8B3433C(v0[22], &qword_1EBAA8230, &qword_1B8C2EC68);
      }
    }

    else
    {
      v21 = v0[25];
      v22 = v0[26];
      v23 = v0[24];
      (*(v22 + 32))(v23, v0[22], v21);
      (*(v22 + 56))(v23, 0, 1, v21);
    }

    v24 = v0[23];
    if (v13(v24, 1, v0[25]) != 1)
    {
      sub_1B8B3433C(v24, &qword_1EBAA8230, &qword_1B8C2EC68);
    }
  }

  else
  {
    v18 = v0[25];
    v19 = v0[26];
    v20 = v0[24];
    (*(v19 + 32))(v20, v0[23], v18);
    (*(v19 + 56))(v20, 0, 1, v18);
  }

  v26 = v0[24];
  v25 = v0[25];
  if (v13(v26, 1, v25) == 1)
  {
    v27 = v0[45];
    v29 = v0[43];
    v28 = v0[44];
    v31 = v0[40];
    v30 = v0[41];
    v32 = v0[39];
    v33 = sub_1B8B3433C(v26, &qword_1EBAA8230, &qword_1B8C2EC68);
    sub_1B8BDEEA8(v33, v34, v35);
    swift_allocError();
    *v36 = 4;
    swift_willThrow();

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
  }

  else
  {
    (*(v0[26] + 32))(v0[28], v26, v25);
    result = sub_1B8C23B58();
    v148 = *(result + 16);
    if (!v148)
    {
      v44 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v187 = v44;
      v79 = v0[45];
      v80 = v0[44];
      v81 = v0[41];
      v147 = v0[43];
      v82 = v0[40];
      v145 = v0[39];
      v83 = v0[28];
      v85 = v0[25];
      v84 = v0[26];
      v86 = v0[2];

      (*(v84 + 8))(v83, v85);
      (*(v82 + 8))(v81, v145);
      (*(v80 + 8))(v79, v147);
      *v86 = v187;
      *(v86 + 8) = 0;
      *(v86 + 72) = 0;

      v37 = v0[1];
      goto LABEL_12;
    }

    v39 = 0;
    v40 = v0[26];
    v41 = v0[19];
    v42 = v0[16];
    v141 = v0[11];
    v140 = v0[10];
    v139 = v0[9];
    v43 = v0[7];
    v143 = (v42 + 32);
    v144 = (v41 + 96);
    v142 = (v0[13] + 8);
    v138 = (v40 + 16);
    v155 = (v40 + 8);
    v136 = (v43 + 8);
    v137 = (v43 + 16);
    v146 = (v42 + 8);
    v151 = v41;
    v154 = (v41 + 8);
    v44 = MEMORY[0x1E69E7CC0];
    v149 = *MEMORY[0x1E69C5C88];
    v153 = result;
    while (1)
    {
      if (v39 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v46 = v0[20];
      v45 = v0[21];
      v47 = v0[18];
      v48 = *(v151 + 16);
      v48(v45, result + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v39, v47);
      v48(v46, v45, v47);
      v49 = (*(v151 + 88))(v46, v47);
      if (v49 != v149)
      {
        break;
      }

      v50 = v0[20];
      v51 = v0[17];
      v52 = v0[15];
      (*v144)(v50, v0[18]);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8250, &qword_1B8C2EC90) + 48);
      (*v143)(v51, v50, v52);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8258, &qword_1B8C2EC98);
      v55 = (*(*(v54 - 8) + 8))(v50 + v53, v54);
      v56 = MEMORY[0x1B8CC8740](v55);
      if (!v57)
      {
        v97 = v0[44];
        v177 = v0[43];
        v182 = v0[45];
        v98 = v0[40];
        v168 = v0[39];
        v173 = v0[41];
        v163 = v0[28];
        v99 = v0[25];
        v100 = v0[21];
        v102 = v0[17];
        v101 = v0[18];
        v103 = v0[15];

        sub_1B8BDEEA8(v104, v105, v106);
        swift_allocError();
        *v107 = 5;
        swift_willThrow();

        (*v146)(v102, v103);
        (*v154)(v100, v101);
        (*v155)(v163, v99);
        (*(v98 + 8))(v173, v168);
        (*(v97 + 8))(v182, v177);
        goto LABEL_11;
      }

      v58 = v56;
      v59 = v57;
      sub_1B8C23A68();
      v60 = sub_1B8C23AB8();
      if (!v61)
      {
        v60 = sub_1B8C23AC8();
        if (!v61)
        {
          v124 = v0[44];
          v179 = v0[43];
          v184 = v0[45];
          v125 = v0[40];
          v165 = v0[39];
          v170 = v0[41];
          v157 = v0[25];
          v160 = v0[28];
          v126 = v0[17];
          v150 = v0[18];
          v152 = v0[21];
          v127 = v0[14];
          v128 = v0[15];
          v129 = v0[12];

          sub_1B8BDEEA8(v130, v131, v132);
          swift_allocError();
          *v133 = 10;
          swift_willThrow();

          (*v142)(v127, v129);
          (*v146)(v126, v128);
          (*v154)(v152, v150);
          (*v155)(v160, v157);
          (*(v125 + 8))(v170, v165);
          (*(v124 + 8))(v184, v179);

          goto LABEL_11;
        }
      }

      v180 = v61;
      v186 = v60;
      v62 = (*v142)(v0[14], v0[12]);
      v63 = MEMORY[0x1B8CC8720](v62);
      v156 = v39;
      v171 = v59;
      v161 = v58;
      if (v64)
      {
        v65 = v64;
        v175 = v63;
      }

      else
      {

        v175 = v58;
        v65 = v59;
      }

      v66 = v0[27];
      v158 = v0[28];
      v67 = v0[25];
      v68 = v0[11];
      v69 = v0[8];
      v166 = v0[6];
      v70 = sub_1B8C23A98();
      v72 = v71;
      sub_1B8C23A88();
      v73 = *v138;
      (*v138)(v66, v158, v67);
      *v68 = v161;
      v141[1] = v171;
      v141[2] = v175;
      v141[3] = v65;
      v141[4] = v70;
      v141[5] = v72;
      v141[6] = v186;
      v141[7] = v180;
      (*v137)(&v68[*(v139 + 32)], v69, v166);
      v73(&v68[*(v139 + 40)], v66, v67);
      sub_1B8C23558();
      (*v155)(v66, v67);
      (*v136)(v69, v166);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1B8B5D050(0, v44[2] + 1, 1, v44);
      }

      v75 = v44[2];
      v74 = v44[3];
      if (v75 >= v74 >> 1)
      {
        v44 = sub_1B8B5D050((v74 > 1), v75 + 1, 1, v44);
      }

      v39 = v156 + 1;
      v76 = v0[21];
      v77 = v0[18];
      v78 = v0[11];
      (*v146)(v0[17], v0[15]);
      (*v154)(v76, v77);
      v44[2] = v75 + 1;
      sub_1B8BDEEFC(v78, v44 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v75, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      result = v153;
      if (v148 == v156 + 1)
      {
        goto LABEL_32;
      }
    }

    if (v49 == *MEMORY[0x1E69C5C90])
    {
      v87 = v0[44];
      v176 = v0[43];
      v181 = v0[45];
      v88 = v0[40];
      v167 = v0[39];
      v172 = v0[41];
      v162 = v0[28];
      v159 = v0[25];
      v89 = v0[20];
      v90 = v0[21];
      v91 = v0[18];

      v92 = *v154;
      v93 = (*v154)(v89, v91);
      sub_1B8BDEEA8(v93, v94, v95);
      swift_allocError();
      *v96 = 6;
      swift_willThrow();

      v92(v90, v91);
      (*v155)(v162, v159);
      (*(v88 + 8))(v172, v167);
      (*(v87 + 8))(v181, v176);
    }

    else
    {
      v108 = *MEMORY[0x1E69C5C80];
      v109 = v49;

      v113 = v0[45];
      v114 = v0[44];
      v115 = v0[40];
      v178 = v0[41];
      v183 = v0[43];
      v169 = v0[28];
      v174 = v0[39];
      v164 = v0[25];
      v117 = v0[20];
      v116 = v0[21];
      v118 = v0[18];
      if (v109 == v108)
      {
        v119 = *v154;
        v120 = (*v154)(v117, v118);
        sub_1B8BDEEA8(v120, v121, v122);
        swift_allocError();
        *v123 = 7;
        swift_willThrow();

        v119(v116, v118);
        (*v155)(v169, v164);
        (*(v115 + 8))(v178, v174);
        (*(v114 + 8))(v113, v183);
      }

      else
      {
        sub_1B8BDEEA8(v110, v111, v112);
        swift_allocError();
        *v134 = 8;
        swift_willThrow();

        v135 = *v154;
        (*v154)(v116, v118);
        (*v155)(v169, v164);
        (*(v115 + 8))(v178, v174);
        (*(v114 + 8))(v113, v183);
        v135(v117, v118);
      }
    }
  }

LABEL_11:

  v37 = v0[1];
LABEL_12:

  return v37();
}

uint64_t sub_1B8BDC574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8C23528();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1B8C23AD8();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_1B8C23B28();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8260, &qword_1B8C2ECA0);
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8230, &qword_1B8C2EC68);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v10 = sub_1B8C23328();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8268, &qword_1B8C2ECA8);
  v4[29] = v11;
  v4[30] = *(v11 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v4[32] = swift_task_alloc();
  v12 = sub_1B8C23BA8();
  v4[33] = v12;
  v4[34] = *(v12 - 8);
  v4[35] = swift_task_alloc();
  v13 = sub_1B8C23BE8();
  v4[36] = v13;
  v4[37] = *(v13 - 8);
  v4[38] = swift_task_alloc();
  v14 = sub_1B8C23BD8();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8240, &qword_1B8C2EC80);
  v4[42] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8270, &qword_1B8C2ECB0);
  v4[43] = v15;
  v4[44] = *(v15 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDCACC, 0, 0);
}

uint64_t sub_1B8BDCACC()
{
  v1 = v0[42];
  sub_1B8C23A48();
  swift_allocObject();
  v0[46] = sub_1B8C23A38();
  v2 = sub_1B8C23BF8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v9 = (*MEMORY[0x1E69C5C40] + MEMORY[0x1E69C5C40]);
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_1B8BDCBE8;
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[3];
  v7 = v0[4];

  return v9(v4, v6, v7, v5);
}

uint64_t sub_1B8BDCBE8()
{
  v1 = *(*v0 + 336);

  sub_1B8B3433C(v1, &qword_1EBAA8240, &qword_1B8C2EC80);

  return MEMORY[0x1EEE6DFA0](sub_1B8BDCD10, 0, 0);
}

uint64_t sub_1B8BDCD10()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[32];
  v163 = v0[31];
  (*(v1 + 104))(v2, *MEMORY[0x1E69C5CB8], v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69C5CB0], v5);
  sub_1B8C23B48();
  (*(v6 + 8))(v3, v5);
  (*(v1 + 8))(v2, v4);
  sub_1B8C23BB8();
  v8 = sub_1B8C238B8();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  sub_1B8C23908();
  sub_1B8C23BC8();
  v9(v7, 0, 1, v8);
  sub_1B8C23928();
  sub_1B8C23B78();
  sub_1B8BD9FDC(v163, &qword_1EBAA8268, &qword_1B8C2ECA8);
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[23];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1B8C23B98();
  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v0[25];
    v15 = v0[22];
    sub_1B8C23B68();
    if (v13(v15, 1, v14) == 1)
    {
      v16 = v0[25];
      v17 = v0[22];
      sub_1B8C23B88();
      if (v13(v17, 1, v16) != 1)
      {
        sub_1B8B3433C(v0[22], &qword_1EBAA8230, &qword_1B8C2EC68);
      }
    }

    else
    {
      v21 = v0[25];
      v22 = v0[26];
      v23 = v0[24];
      (*(v22 + 32))(v23, v0[22], v21);
      (*(v22 + 56))(v23, 0, 1, v21);
    }

    v24 = v0[23];
    if (v13(v24, 1, v0[25]) != 1)
    {
      sub_1B8B3433C(v24, &qword_1EBAA8230, &qword_1B8C2EC68);
    }
  }

  else
  {
    v18 = v0[25];
    v19 = v0[26];
    v20 = v0[24];
    (*(v19 + 32))(v20, v0[23], v18);
    (*(v19 + 56))(v20, 0, 1, v18);
  }

  v26 = v0[24];
  v25 = v0[25];
  if (v13(v26, 1, v25) == 1)
  {
    v27 = v0[45];
    v29 = v0[43];
    v28 = v0[44];
    v31 = v0[40];
    v30 = v0[41];
    v32 = v0[39];
    v33 = sub_1B8B3433C(v26, &qword_1EBAA8230, &qword_1B8C2EC68);
    sub_1B8BDEEA8(v33, v34, v35);
    swift_allocError();
    *v36 = 4;
    swift_willThrow();

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
LABEL_11:

    v37 = v0[1];
    goto LABEL_12;
  }

  (*(v0[26] + 32))(v0[28], v26, v25);
  result = sub_1B8C23B58();
  v147 = *(result + 16);
  if (!v147)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v166 = v44;
    v76 = v0[45];
    v77 = v0[44];
    v78 = v0[41];
    v131 = v0[43];
    v79 = v0[40];
    v129 = v0[39];
    v80 = v0[28];
    v82 = v0[25];
    v81 = v0[26];
    v83 = v0[2];

    (*(v81 + 8))(v80, v82);
    (*(v79 + 8))(v78, v129);
    (*(v77 + 8))(v76, v131);
    *v83 = v166;
    *(v83 + 8) = 1;
    *(v83 + 72) = 0;

    v37 = v0[1];
LABEL_12:

    return v37();
  }

  v39 = 0;
  v40 = v0[26];
  v41 = v0[19];
  v42 = v0[16];
  v130 = v0[11];
  v128 = v0[10];
  v127 = v0[9];
  v43 = v0[7];
  v132 = (v42 + 32);
  v133 = (v41 + 96);
  v135 = (v0[13] + 8);
  v126 = (v40 + 16);
  v146 = (v40 + 8);
  v123 = (v43 + 8);
  v124 = (v43 + 16);
  v134 = (v42 + 8);
  v140 = v41;
  v145 = (v41 + 8);
  v44 = MEMORY[0x1E69E7CC0];
  v136 = *MEMORY[0x1E69C5C88];
  v143 = result;
  v125 = v0;
  while (v39 < *(result + 16))
  {
    v46 = v0[20];
    v45 = v0[21];
    v47 = v0[18];
    v48 = *(v140 + 16);
    v48(v45, result + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v39, v47);
    v48(v46, v45, v47);
    v49 = (*(v140 + 88))(v46, v47);
    v165 = v44;
    if (v49 != v136)
    {
      if (v49 == *MEMORY[0x1E69C5C90])
      {
        v84 = v0[44];
        v156 = v0[43];
        v160 = v0[45];
        v85 = v0[40];
        v152 = v0[41];
        v148 = v0[39];
        v138 = v0[25];
        v141 = v0[28];
        v86 = v0[20];
        v87 = v0[21];
        v88 = v0[18];

        v89 = *v145;
        v90 = (*v145)(v86, v88);
        sub_1B8BDEEA8(v90, v91, v92);
        swift_allocError();
        *v93 = 6;
        swift_willThrow();

        v89(v87, v88);
        (*v146)(v141, v138);
        (*(v85 + 8))(v152, v148);
        (*(v84 + 8))(v160, v156);
      }

      else
      {
        v94 = *MEMORY[0x1E69C5C80];
        v95 = v49;

        v99 = v0[45];
        v100 = v0[44];
        v101 = v0[40];
        v157 = v0[41];
        v161 = v0[43];
        v153 = v0[39];
        v149 = v0[28];
        v144 = v0[25];
        v103 = v0[20];
        v102 = v0[21];
        v104 = v0[18];
        if (v95 == v94)
        {
          v105 = *v145;
          v106 = (*v145)(v103, v104);
          sub_1B8BDEEA8(v106, v107, v108);
          swift_allocError();
          *v109 = 7;
          swift_willThrow();

          v105(v102, v104);
          (*v146)(v149, v144);
          (*(v101 + 8))(v157, v153);
          (*(v100 + 8))(v99, v161);
        }

        else
        {
          sub_1B8BDEEA8(v96, v97, v98);
          swift_allocError();
          *v121 = 8;
          swift_willThrow();

          v122 = *v145;
          (*v145)(v102, v104);
          (*v146)(v149, v144);
          (*(v101 + 8))(v157, v153);
          (*(v100 + 8))(v99, v161);
          v122(v103, v104);
        }
      }

      goto LABEL_35;
    }

    v50 = v0[20];
    v51 = v0[17];
    v52 = v0[15];
    (*v133)(v50, v0[18]);
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8278, &qword_1B8C2ECB8) + 48);
    (*v132)(v51, v50, v52);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8280, &unk_1B8C2ECC0);
    (*(*(v54 - 8) + 8))(v50 + v53, v54);
    sub_1B8C23AE8();
    v55 = sub_1B8C23AB8();
    v164 = v39;
    if (!v56)
    {
      v55 = sub_1B8C23AC8();
      if (!v56)
      {
        v110 = v0[44];
        v158 = v0[43];
        v162 = v0[45];
        v111 = v0[40];
        v154 = v0[41];
        v150 = v0[39];
        v139 = v0[25];
        v142 = v0[28];
        v137 = v0[21];
        v113 = v0[17];
        v112 = v0[18];
        v115 = v0[14];
        v114 = v0[15];
        v116 = v0[12];

        sub_1B8BDEEA8(v117, v118, v119);
        swift_allocError();
        *v120 = 10;
        swift_willThrow();

        (*v135)(v115, v116);
        (*v134)(v113, v114);
        (*v145)(v137, v112);
        (*v146)(v142, v139);
        (*(v111 + 8))(v154, v150);
        (*(v110 + 8))(v162, v158);
LABEL_35:

        goto LABEL_11;
      }
    }

    v57 = v56;
    v159 = v55;
    v59 = v0[27];
    v58 = v0[28];
    v60 = v0[25];
    v61 = v0[14];
    v63 = v0[11];
    v62 = v0[12];
    v64 = v0;
    v65 = v0[8];
    v151 = v58;
    v155 = v64[6];
    (*v135)(v61, v62);
    v66 = sub_1B8C23B08();
    v68 = v67;
    sub_1B8C23AF8();
    v69 = *v126;
    (*v126)(v59, v151, v60);
    v70 = sub_1B8C23B18();
    *v63 = v66;
    v130[1] = v68;
    v130[2] = v159;
    v130[3] = v57;
    (*v124)(v63 + v127[6], v65, v155);
    v69(v63 + v127[7], v59, v60);
    *(v63 + v127[8]) = v70 & 1;
    sub_1B8C23558();
    (*v146)(v59, v60);
    (*v123)(v65, v155);
    v44 = v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1B8B5D078(0, v165[2] + 1, 1, v165);
    }

    v72 = v44[2];
    v71 = v44[3];
    v0 = v125;
    if (v72 >= v71 >> 1)
    {
      v44 = sub_1B8B5D078((v71 > 1), v72 + 1, 1, v44);
    }

    v39 = v164 + 1;
    v73 = v125[21];
    v74 = v125[18];
    v75 = v125[11];
    (*v134)(v125[17], v125[15]);
    (*v145)(v73, v74);
    v44[2] = v72 + 1;
    sub_1B8BDEEFC(v75, v44 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v72, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    result = v143;
    if (v147 == v164 + 1)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8BDDC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_1B8C23938();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v5 = sub_1B8C237E8();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDDD8C, 0, 0);
}

uint64_t sub_1B8BDDD8C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v2 + 16))(v1, v0[33], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x1E699C588])
  {
    v4 = v0[42];
    v5 = v0[43];
    v6 = v0[38];
    v7 = v0[39];
    v8 = v0[37];
    (*(v0[36] + 96))(v8, v0[35]);
    (*(v7 + 32))(v5, v8, v6);
    v9 = *(v7 + 16);
    v9(v4, v5, v6);
    v10 = *(v7 + 88);
    if (v10(v4, v6) == *MEMORY[0x1E699C3B0])
    {
      v11 = v0[42];
      v12 = *(v0[39] + 96);
      v12(v11, v0[38]);
      v13 = *v11;
      if (!*(v13 + 16))
      {
        goto LABEL_26;
      }

      v14 = sub_1B8B5E2DC(0x746F70536C69616DLL, 0xEF4449746867696CLL);
      if (v15)
      {
        v16 = v0[41];
        v17 = v0[38];
        v9(v16, *(v13 + 56) + *(v0[39] + 72) * v14, v17);
        v18 = v10(v16, v17);
        v19 = v0[41];
        if (v18 == *MEMORY[0x1E699C3D0])
        {
          v20 = v0[38];

          v12(v19, v20);
          v21 = *v19;
          v22 = v19[1];
          v0[44] = v22;
          if (qword_1EBAA5978 != -1)
          {
            swift_once();
          }

          v23 = sub_1B8C23C38();
          __swift_project_value_buffer(v23, qword_1EBAB3A30);
          v24 = sub_1B8C23C18();
          v25 = sub_1B8C25468();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_1B8B22000, v24, v25, "found MAIL_KEY on donation", v26, 2u);
            MEMORY[0x1B8CCB0E0](v26, -1, -1);
          }

          v27 = swift_task_alloc();
          v0[45] = v27;
          *v27 = v0;
          v27[1] = sub_1B8BDE438;
          v28 = v0[34];

          return sub_1B8BDAD7C((v0 + 12), v21, v22, v28);
        }

        (*(v0[39] + 8))(v0[41], v0[38]);
      }

      if (*(v13 + 16) && (v41 = sub_1B8B5E2DC(0xD000000000000012, 0x80000001B8C35BB0), (v42 & 1) != 0))
      {
        v43 = v0[40];
        v44 = v0[38];
        v9(v43, *(v13 + 56) + *(v0[39] + 72) * v41, v44);

        v45 = v10(v43, v44);
        v46 = v0[40];
        if (v45 == *MEMORY[0x1E699C3D0])
        {
          v12(v0[40], v0[38]);
          v47 = *v46;
          v48 = v46[1];
          v0[47] = v48;
          if (qword_1EBAA5978 != -1)
          {
            swift_once();
          }

          v49 = sub_1B8C23C38();
          __swift_project_value_buffer(v49, qword_1EBAB3A30);
          v50 = sub_1B8C23C18();
          v51 = sub_1B8C25468();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1B8B22000, v50, v51, "found MESSAGE_KEY on donation", v52, 2u);
            MEMORY[0x1B8CCB0E0](v52, -1, -1);
          }

          v53 = swift_task_alloc();
          v0[48] = v53;
          *v53 = v0;
          v53[1] = sub_1B8BDE704;
          v54 = v0[34];

          return sub_1B8BDC574((v0 + 2), v47, v48, v54);
        }

        v55 = (*(v0[39] + 8))(v0[40], v0[38]);
      }

      else
      {
LABEL_26:
      }

      v58 = v0[43];
      v59 = v0[38];
      v60 = v0[39];
      sub_1B8BDEEA8(v55, v56, v57);
      swift_allocError();
      *v61 = 3;
      swift_willThrow();
      (*(v60 + 8))(v58, v59);
    }

    else
    {
      v34 = v0[43];
      v35 = v0[38];
      v36 = *(v0[39] + 8);
      v37 = v36(v0[42], v35);
      sub_1B8BDEEA8(v37, v38, v39);
      swift_allocError();
      *v40 = 2;
      swift_willThrow();
      v36(v34, v35);
    }
  }

  else
  {
    v30 = (*(v0[36] + 8))(v0[37], v0[35]);
    sub_1B8BDEEA8(v30, v31, v32);
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
  }

  v62 = v0[1];

  return v62();
}

uint64_t sub_1B8BDE438()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {

    v3 = sub_1B8BDE650;
  }

  else
  {
    v4 = v2[9];
    v2[13] = v2[8];
    v2[14] = v4;
    *(v2 + 233) = *(v2 + 153);
    v5 = v2[7];
    v2[11] = v2[6];
    v2[12] = v5;

    v3 = sub_1B8BDE574;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BDE574()
{
  v1 = *(v0 + 256);
  (*(*(v0 + 312) + 8))(*(v0 + 344), *(v0 + 304));
  *v1 = *(v0 + 176);
  v2 = *(v0 + 192);
  v3 = *(v0 + 208);
  v4 = *(v0 + 224);
  *(v1 + 57) = *(v0 + 233);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8BDE650()
{
  (*(v0[39] + 8))(v0[43], v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8BDE704()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {

    v3 = sub_1B8BDE840;
  }

  else
  {
    v4 = v2[4];
    v2[13] = v2[3];
    v2[14] = v4;
    *(v2 + 233) = *(v2 + 73);
    v5 = v2[2];
    v2[11] = v2[1];
    v2[12] = v5;

    v3 = sub_1B8BDF110;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8BDE840()
{
  (*(v0[39] + 8))(v0[43], v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B8BDE8F4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_1B8C23938();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8BDE9F8, 0, 0);
}

uint64_t sub_1B8BDE9F8(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[14];
  sub_1B8C237F8();
  v5 = *(v3 + 48);
  if (v5(v4, 1, v2) == 1)
  {
    v6 = v1[16];
    v7 = v1[14];
    sub_1B8C238D8();
    if (v5(v7, 1, v6) != 1)
    {
      sub_1B8B3433C(v1[14], &qword_1EBAA6280, &unk_1B8C285B0);
    }
  }

  else
  {
    v8 = v1[16];
    v9 = v1[17];
    v10 = v1[15];
    (*(v9 + 32))(v10, v1[14], v8);
    (*(v9 + 56))(v10, 0, 1, v8);
  }

  v12 = v1[15];
  v11 = v1[16];
  if (v5(v12, 1, v11) == 1)
  {
    v13 = sub_1B8B3433C(v12, &qword_1EBAA6280, &unk_1B8C285B0);
    sub_1B8BDEEA8(v13, v14, v15);
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = v1[1];

    return v17();
  }

  else
  {
    (*(v1[17] + 32))(v1[18], v12, v11);
    v19 = swift_task_alloc();
    v1[19] = v19;
    *v19 = v1;
    v19[1] = sub_1B8BDEC3C;
    v20 = v1[18];
    v21 = v1[13];

    return sub_1B8BDDC48((v1 + 2), v20, v21);
  }
}

uint64_t sub_1B8BDEC3C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1B8BDEE10;
  }

  else
  {
    v2 = sub_1B8BDED50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8BDED50()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 57) = *(v0 + 73);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8BDEE10()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1B8BDEEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8220;
  if (!qword_1EBAA8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8220);
  }

  return result;
}

uint64_t sub_1B8BDEEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CatchUpDonationDecoder.ReferenceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CatchUpDonationDecoder.ReferenceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8BDF0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8288;
  if (!qword_1EBAA8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8288);
  }

  return result;
}

_BYTE *FBKFeedbackForm.__allocating_init(serviceForm:)(void *a1)
{
  v2 = sub_1B8C23A08();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v111 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v93 - v11;
  v13 = sub_1B8C239A8();
  v15 = v14;
  v16 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v17 = FBKFeedbackForm.init(identifier:)(v13, v15);
  sub_1B8BDFC90(v114);
  LOBYTE(v13) = v114[0];
  v18 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v17[v18] = v13;
  v94 = a1;
  v19 = sub_1B8C239D8();
  v20 = 0;
  v22 = v19 + 64;
  v21 = *(v19 + 64);
  v98 = v19;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v27 = (v23 + 63) >> 6;
  v95 = v3 + 16;
  v105 = (v3 + 32);
  v93 = 0x80000001B8C33DC0;
  v97 = v3;
  v28 = (v3 + 8);
  v29 = v2;
  v99 = v28;
  v109 = xmmword_1B8C2A740;
  v101 = v19 + 64;
  v100 = v27;
  v103 = v2;
  v102 = v10;
  v104 = v12;
  v108 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  while (1)
  {
    if (v25)
    {
      v30 = v10;
      v31 = v29;
      v107 = v20;
      v32 = v20;
LABEL_15:
      v106 = (v25 - 1) & v25;
      v35 = __clz(__rbit64(v25)) | (v32 << 6);
      v36 = v98;
      v37 = v97;
      v38 = v96;
      (*(v97 + 16))(v96, *(v98 + 48) + *(v97 + 72) * v35, v31);
      v39 = *(*(v36 + 56) + 8 * v35);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      v41 = *(v40 + 48);
      v42 = *(v37 + 32);
      v29 = v31;
      v10 = v30;
      v42(v30, v38, v29);
      *&v30[v41] = v39;
      (*(*(v40 - 8) + 56))(v30, 0, 1, v40);

      v12 = v104;
    }

    else
    {
      v33 = v27 <= v20 + 1 ? v20 + 1 : v27;
      v34 = v33 - 1;
      while (1)
      {
        v32 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_78;
        }

        if (v32 >= v27)
        {
          break;
        }

        v25 = *(v22 + 8 * v32);
        ++v20;
        if (v25)
        {
          v30 = v10;
          v31 = v29;
          v107 = v32;
          goto LABEL_15;
        }
      }

      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      (*(*(v91 - 8) + 56))(v10, 1, 1, v91);
      v106 = 0;
      v107 = v34;
    }

    sub_1B8BDFE28(v10, v12);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
    if ((*(*(v43 - 8) + 48))(v12, 1, v43) == 1)
    {

      return v17;
    }

    v44 = *&v12[*(v43 + 48)];
    (*v105)(v111, v12, v29);
    v112 = v44;
    v110 = *(v44 + 16);
    if (v110)
    {
      break;
    }

LABEL_4:

    v29 = v103;
    (*v99)(v111, v103);
    v10 = v102;
    v12 = v104;
    v22 = v101;
    v27 = v100;
    v25 = v106;
    v20 = v107;
  }

  swift_beginAccess();
  v45 = 0;
  v46 = (v112 + 40);
  while (v45 < *(v112 + 16))
  {
    v48 = *(v46 - 1);
    v47 = *v46;

    v51 = MEMORY[0x1B8CC86C0](v49);
    v52 = v50;
    if (v51 == 0x656C7469743ALL && v50 == 0xE600000000000000 || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 0;
    }

    else if (v51 == 0x616572613ALL && v52 == 0xE500000000000000 || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 1;
    }

    else if (v51 == 0x706972637365643ALL && v52 == 0xEC0000006E6F6974 || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 2;
    }

    else if (v51 == 0x657275746165663ALL && v52 == 0xEF6E69616D6F645FLL || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 3;
    }

    else if (v51 == 0x6165665F6275733ALL && v52 == 0xEC00000065727574 || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 4;
    }

    else if (v51 == 0xD000000000000012 && v93 == v52 || (sub_1B8C25A08() & 1) != 0)
    {

      v51 = 0;
      v52 = 5;
    }

    v53 = *&v17[v26];
    if (*(v53 + 16))
    {

      v54 = sub_1B8B5E354(v51, v52);
      if (v55)
      {
        v56 = v17;
        v57 = *(*(v53 + 56) + 8 * v54);

        v58 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1B8B5D1AC(0, *(v57 + 2) + 1, 1, v57);
        }

        v60 = *(v57 + 2);
        v59 = *(v57 + 3);
        if (v60 >= v59 >> 1)
        {
          v57 = sub_1B8B5D1AC((v59 > 1), v60 + 1, 1, v57);
        }

        *(v57 + 2) = v60 + 1;
        v61 = &v57[16 * v60];
        *(v61 + 4) = v58;
        *(v61 + 5) = v47;
        v17 = v56;
        v26 = v108;
        swift_beginAccess();
        sub_1B8B5FB10(v51, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = *&v17[v26];
        v63 = v113;
        *&v17[v26] = 0x8000000000000000;
        v64 = sub_1B8B5E354(v51, v52);
        v66 = v63[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_79;
        }

        v70 = v65;
        if (v63[3] < v69)
        {
          sub_1B8B93050(v69, isUniquelyReferenced_nonNull_native);
          v64 = sub_1B8B5E354(v51, v52);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_81;
          }

          goto LABEL_50;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_50:
          v82 = v113;
          if (v70)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v87 = v64;
          sub_1B8B94514();
          v64 = v87;
          v82 = v113;
          if (v70)
          {
LABEL_51:
            *(v82[7] + 8 * v64) = v57;

            sub_1B8B5E4C4(v51, v52);
            goto LABEL_20;
          }
        }

        v82[(v64 >> 6) + 8] |= 1 << v64;
        v88 = (v82[6] + 16 * v64);
        *v88 = v51;
        v88[1] = v52;
        *(v82[7] + 8 * v64) = v57;
        v89 = v82[2];
        v68 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v68)
        {
          goto LABEL_80;
        }

        v82[2] = v90;
        goto LABEL_20;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v72 = swift_allocObject();
    *(v72 + 16) = v109;
    *(v72 + 32) = v48;
    *(v72 + 40) = v47;
    swift_beginAccess();
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *&v17[v26];
    v74 = v113;
    *&v17[v26] = 0x8000000000000000;
    v75 = sub_1B8B5E354(v51, v52);
    v77 = v74[2];
    v78 = (v76 & 1) == 0;
    v68 = __OFADD__(v77, v78);
    v79 = v77 + v78;
    if (v68)
    {
      goto LABEL_76;
    }

    v80 = v76;
    if (v74[3] >= v79)
    {
      if ((v73 & 1) == 0)
      {
        v86 = v75;
        sub_1B8B94514();
        v75 = v86;
        v82 = v113;
        if (v80)
        {
LABEL_19:
          *(v82[7] + 8 * v75) = v72;

          goto LABEL_20;
        }

        goto LABEL_43;
      }
    }

    else
    {
      sub_1B8B93050(v79, v73);
      v75 = sub_1B8B5E354(v51, v52);
      if ((v80 & 1) != (v81 & 1))
      {
        goto LABEL_81;
      }
    }

    v82 = v113;
    if (v80)
    {
      goto LABEL_19;
    }

LABEL_43:
    v82[(v75 >> 6) + 8] |= 1 << v75;
    v83 = (v82[6] + 16 * v75);
    *v83 = v51;
    v83[1] = v52;
    *(v82[7] + 8 * v75) = v72;
    v84 = v82[2];
    v68 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v68)
    {
      goto LABEL_77;
    }

    v82[2] = v85;
    sub_1B8B5FB10(v51, v52);
LABEL_20:
    *&v17[v26] = v82;
    swift_endAccess();
    ++v45;
    sub_1B8B5E4C4(v51, v52);
    v46 += 2;
    if (v110 == v45)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void sub_1B8BDFC90(char *a1@<X8>)
{
  v3 = sub_1B8C239C8();
  v4 = v3 - 1;
  if ((v3 - 1) >= 3)
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAB3A18);
    v6 = v1;
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25478();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1B8B5DD48(0xD000000000000020, 0x80000001B8C35BD0, &v12);
      *(v9 + 12) = 2048;
      sub_1B8C239C8();
      *(v9 + 14) = sub_1B8C239B8();

      _os_log_impl(&dword_1B8B22000, v7, v8, "Unknown case in %s: %ld falling back to .optional", v9, 0x16u);
      v11 = __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CCB0E0](v10, -1, -1, v11);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    else
    {
    }

    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1B8BDFE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8BDFEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SheetContainer.Config(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1B8B491A0();
    if (v5 <= 0x3F)
    {
      sub_1B8B80B94(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8BDFF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B8BDFFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B8BE0030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1B8BE0100(uint64_t a1, uint64_t a2)
{
  v8 = sub_1B8C24588();
  MEMORY[0x1EEE9AC00](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1B8C24598();
}

void *sub_1B8BE01F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1B8C24588();
  MEMORY[0x1EEE9AC00](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1B8C24598();
}

uint64_t sub_1B8BE02F0()
{
  v0 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v0, qword_1EBAA8290);
  __swift_project_value_buffer(v0, qword_1EBAA8290);
  return sub_1B8C245D8();
}

uint64_t sub_1B8BE033C(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1B8C23FF8();
  v23 = *(a1 + 24);
  v4 = v23;
  v24 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1B8C24E18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v16 = v3;
  v17 = v23;
  v18 = v1;
  sub_1B8C24468();
  sub_1B8C24E08();
  v13 = v3;
  v14 = v4;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  v10 = sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50, MEMORY[0x1E697BEF0]);
  v19 = v9;
  v20 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1B8C24C28();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B8BE061C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a1;
  v38 = a4;
  sub_1B8C23FF8();
  v44 = a3;
  v45 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v5 = sub_1B8C23D48();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - v10;
  v11 = sub_1B8C24E18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = sub_1B8C245A8();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v31 - v19;
  LODWORD(v19) = *(v34 + 16);
  v39 = v33;
  v40 = v32;
  v41 = v34;
  if (v19 == 1)
  {
    sub_1B8C24468();
    sub_1B8C24E08();
    swift_getWitnessTable();
    v20 = *(v12 + 16);
    v20(v17, v15, v11);
    v21 = *(v12 + 8);
    v21(v15, v11);
    v20(v15, v17, v11);
    swift_getWitnessTable();
    v22 = v35;
    sub_1B8BE0100(v15, v11);
    v21(v15, v11);
    v21(v17, v11);
  }

  else
  {
    sub_1B8C247E8();
    sub_1B8C23D58();
    swift_getWitnessTable();
    v23 = *(v6 + 16);
    v24 = v31;
    v23(v31, v9, v5);
    v25 = *(v6 + 8);
    v25(v9, v5);
    v23(v9, v24, v5);
    swift_getWitnessTable();
    v22 = v35;
    sub_1B8BE01F8(v9, v11, v5);
    v25(v9, v5);
    v25(v24, v5);
  }

  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v42 = WitnessTable;
  v43 = v27;
  v28 = v37;
  swift_getWitnessTable();
  v29 = v36;
  (*(v36 + 16))(v38, v22, v28);
  return (*(v29 + 8))(v22, v28);
}

uint64_t sub_1B8BE0B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C23FF8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v23 - v18;
  (*(a1 + 24))(v17);
  sub_1B8C24C08();
  (*(v9 + 8))(v11, a2);
  v23[0] = a3;
  v23[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v20 = *(v13 + 16);
  v20(v19, v16, v12);
  v21 = *(v13 + 8);
  v21(v16, v12);
  v20(a4, v19, v12);
  return (v21)(v19, v12);
}

uint64_t sub_1B8BE0D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8C245F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  if (qword_1EBAA5948 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EBAA8290);
  v15 = (*(v7 + 16))(v9, v14, v6);
  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 4) = a2;
  *(&v18 - 3) = a3;
  *(&v18 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
  sub_1B8BE1EDC();
  sub_1B8C23DC8();
  v16 = sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50, MEMORY[0x1E697BEF0]);
  MEMORY[0x1B8CC92F0](v13, v10, v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B8BE1004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v8 = type metadata accessor for SheetContainer(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1B8C243A8();
  v14 = v13;
  v26 = v15;
  v27 = v16;
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v9 + 32))(v18 + v17, v11, v8);
  v29 = v12;
  v30 = v14;
  v31 = v26 & 1;
  v32 = v27;
  v33 = 0x6B72616D78;
  v34 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B8, &unk_1B8C2C280);
  sub_1B8B34CFC(&qword_1EBAA76C0, &qword_1EBAA76B8, &unk_1B8C2C280, MEMORY[0x1E697D658]);
  v19 = v28;
  sub_1B8C24DB8();

  v20 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v35 = v20;
  v22 = sub_1B8C23E48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
  v24 = (v19 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  return result;
}

uint64_t sub_1B8BE127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B8C24058();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  type metadata accessor for SheetContainer(0, a2, a3, v9);
  sub_1B8B82CC4(v8);
  MEMORY[0x1B8CC9B00](v6);
  sub_1B8C24048();
  sub_1B8C24E48();
  return sub_1B8BE20EC(v8);
}

uint64_t sub_1B8BE13A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  sub_1B8C23F68();
  v3 = *(a1 + 16);
  sub_1B8C23FF8();
  v34 = *(a1 + 24);
  v4 = v34;
  v35 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_1B8B34CA8(OpaqueTypeConformance2, v7, v8);
  v10 = MEMORY[0x1E69E6158];
  swift_getOpaqueTypeMetadata2();
  sub_1B8C245A8();
  v28 = OpaqueTypeMetadata2;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v9;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v11 = sub_1B8C24018();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v23 = v3;
  v24 = v4;
  v25 = v21;
  sub_1B8C24008();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v15, v11);
  v19 = *(v12 + 8);
  v19(v15, v11);
  v18(v22, v17, v11);
  return (v19)(v17, v11);
}

uint64_t sub_1B8BE17C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v50 = a2;
  sub_1B8C23FF8();
  v51 = a3;
  v63 = a3;
  v64 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1B8C24E18();
  sub_1B8C23D48();
  sub_1B8C245A8();
  WitnessTable = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B8C24E18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83A8, &qword_1B8C2EE48);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83B0, &qword_1B8C2EE50);
  sub_1B8B34CFC(&qword_1EBAA83B8, &qword_1EBAA83B0, &qword_1B8C2EE50, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_1B8B34CA8(OpaqueTypeConformance2, v8, v9);
  v57 = OpaqueTypeMetadata2;
  v58 = MEMORY[0x1E69E6158];
  v52 = OpaqueTypeConformance2;
  v59 = OpaqueTypeConformance2;
  v60 = v10;
  v54 = v10;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = swift_checkMetadataState();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v46 = v11;
  v25 = sub_1B8C245A8();
  v48 = *(v25 - 8);
  v49 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v47 = &v46 - v27;
  v28 = a1[1];
  if (v28)
  {
    v29 = *a1;
    v30 = type metadata accessor for SheetContainer(0, v50, v51, v26);
    sub_1B8BE033C(v30);
    v57 = v29;
    v58 = v28;
    v31 = MEMORY[0x1E69E6158];
    v32 = v52;
    v33 = v54;
    sub_1B8C24AE8();
    (*(v19 + 8))(v24, v18);
    v57 = v18;
    v58 = v31;
    v59 = v32;
    v60 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = *(v12 + 16);
    v35 = v46;
    v34(v17, v15, v46);
    v36 = *(v12 + 8);
    v36(v15, v35);
    v34(v15, v17, v35);
    v37 = v32;
    v38 = v47;
    sub_1B8BE0100(v15, v35);
    v36(v15, v35);
    v36(v17, v35);
  }

  else
  {
    v39 = type metadata accessor for SheetContainer(0, v50, v51, v26);
    sub_1B8BE033C(v39);
    v40 = *(v19 + 16);
    v40(v24, v22, v18);
    v41 = *(v19 + 8);
    v41(v22, v18);
    v40(v22, v24, v18);
    v57 = v18;
    v37 = v52;
    v58 = MEMORY[0x1E69E6158];
    v59 = v52;
    v60 = v54;
    swift_getOpaqueTypeConformance2();
    v42 = v47;
    sub_1B8BE01F8(v22, v46, v18);
    v41(v22, v18);
    v41(v24, v18);
    v38 = v42;
  }

  v57 = v18;
  v58 = MEMORY[0x1E69E6158];
  v59 = v37;
  v60 = v54;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v37;
  v43 = v49;
  swift_getWitnessTable();
  v44 = v48;
  (*(v48 + 16))(v53, v38, v43);
  return (*(v44 + 8))(v38, v43);
}

unint64_t sub_1B8BE1EDC()
{
  result = qword_1EBAA83C8;
  if (!qword_1EBAA83C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA83C0, &qword_1B8C2EE58);
    sub_1B8B34CFC(&qword_1EBAA76E0, &qword_1EBAA76E8, &qword_1B8C2C300, MEMORY[0x1E697D680]);
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA83C8);
  }

  return result;
}

uint64_t sub_1B8BE1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SheetContainer(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1B8BE127C(v8, v5, v6);
}

uint64_t sub_1B8BE2044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6, v12);
}

uint64_t sub_1B8BE20EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8BE21A4()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA83D0);
  __swift_project_value_buffer(v0, qword_1EBAA83D0);
  return sub_1B8C23C28();
}

void sub_1B8BE2228(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1B8B5E354(0x6E6F697463613ALL, 0xE700000000000000);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      if (v7[2])
      {
        v8 = v7[4];
        v9 = v7[5];

        sub_1B8BE5488(v8, v9, a1);

        return;
      }
    }
  }

  if (qword_1EBAA5950 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAA83D0);
  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25488();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B8B22000, v11, v12, "Could not find action answer in form", v13, 2u);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  v14 = *MEMORY[0x1E699C1D8];
  v15 = sub_1B8C236E8();
  (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_1B8BE2400()
{
  v0 = MEMORY[0x1B8CCA870]();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B8C250F8();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_1B8C25128();
  v6 = v5;

  v7 = v4;
  if (sub_1B8C251C8() < 1)
  {

LABEL_10:
    if (MEMORY[0x1B8CCA870](v0))
    {
      return 0x646565732D736F69;
    }

    else
    {
      return 0x2D7363662D736F69;
    }
  }

  if (qword_1EBAA5950 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA83D0);

  v9 = sub_1B8C23C18();
  v10 = sub_1B8C25498();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1B8B5DD48(v7, v6, &v15);
    _os_log_impl(&dword_1B8B22000, v9, v10, "Using RaCFormOverride [%s]", v11, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CCB0E0](v12, -1, -1, v13);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  return v7;
}

uint64_t sub_1B8BE2648(char *a1)
{
  v2 = sub_1B8C236E8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = &a1[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
  swift_beginAccess();
  v10 = *v9 == 0xD000000000000018 && 0x80000001B8C32AB0 == *(v9 + 1);
  if (v10 || (result = sub_1B8C25A08(), (result & 1) != 0))
  {
    sub_1B8BE2228(v8);
    *v9 = sub_1B8BE2400();
    *(v9 + 1) = v12;

    if (qword_1EBAA5950 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8C23C38();
    __swift_project_value_buffer(v13, qword_1EBAA83D0);
    (*(v3 + 16))(v6, v8, v2);
    v14 = a1;
    v15 = sub_1B8C23C18();
    v16 = sub_1B8C25498();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v17 = 136446466;
      v18 = *v9;
      v19 = *(v9 + 1);

      v20 = sub_1B8B5DD48(v18, v19, &v30);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      sub_1B8BE29A0();
      v21 = sub_1B8C259E8();
      v23 = v22;
      v24 = *(v3 + 8);
      v24(v6, v2);
      v25 = sub_1B8B5DD48(v21, v23, &v30);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B8B22000, v15, v16, "Using form identifier: [%{public}s] for action: [%{public}s]", v17, 0x16u);
      v26 = v29;
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v26, -1, -1);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);

      return (v24)(v8, v2);
    }

    else
    {

      v27 = *(v3 + 8);
      v27(v6, v2);
      return (v27)(v8, v2);
    }
  }

  return result;
}

unint64_t sub_1B8BE29A0()
{
  result = qword_1EBAA83E8;
  if (!qword_1EBAA83E8)
  {
    sub_1B8C236E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA83E8);
  }

  return result;
}

uint64_t sub_1B8BE29F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  return v1;
}

uint64_t sub_1B8BE2A6C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription))
  {

    sub_1B8C23C68();
  }

  v2 = OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader__image;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8468, &qword_1B8C2EF68);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLoader(uint64_t a1)
{
  result = qword_1EBAA8408;
  if (!qword_1EBAA8408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8BE2BB0(uint64_t a1)
{
  sub_1B8BE3030(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1B8BE2C58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8430, &qword_1B8C2EF08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8438, &qword_1B8C2EF10);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v21 = *(v0 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_publisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8440, &qword_1B8C2EF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
  sub_1B8B34CFC(&qword_1EBAA8448, &qword_1EBAA8440, &qword_1B8C2EF18, MEMORY[0x1E695C038]);
  sub_1B8C23CD8();

  sub_1B8B622C8();
  v12 = sub_1B8C25538();
  v21 = v12;
  v13 = sub_1B8C25518();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_1B8B34CFC(&qword_1EBAA8450, &qword_1EBAA8430, &qword_1B8C2EF08, MEMORY[0x1E695BD60]);
  sub_1B8BE3218();
  sub_1B8C23CE8();
  sub_1B8BE3270(v3);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  v14 = v18;
  swift_weakInit();
  sub_1B8B34CFC(&qword_1EBAA8460, &qword_1EBAA8438, &qword_1B8C2EF10, MEMORY[0x1E695BE98]);
  v15 = v19;
  v16 = sub_1B8C23D08();

  (*(v20 + 8))(v11, v15);
  *(v14 + OBJC_IVAR____TtC8FeedbackP33_F562E464EE642380597E8DA5B39CDBBB11ImageLoader_subscription) = v16;

  return result;
}

void sub_1B8BE3030(uint64_t a1)
{
  if (!qword_1EBAA8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA8420, &qword_1B8C2EEA8);
    v1 = sub_1B8C23CA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA8418);
    }
  }
}

void sub_1B8BE30A0(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *result;
    v6 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1B8B7B54C(v5, v3);
    v7 = sub_1B8C234A8();
    v4 = [v6 initWithData_];

    sub_1B8BE33D8(v5, v3);
  }

  *a2 = v4;
}

uint64_t sub_1B8BE3144(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return sub_1B8C23C98();
  }

  return result;
}

uint64_t sub_1B8BE31D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ImageLoader(0);
  result = sub_1B8C23C78();
  *a2 = result;
  return result;
}

unint64_t sub_1B8BE3218()
{
  result = qword_1EBAA8458;
  if (!qword_1EBAA8458)
  {
    sub_1B8B622C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8458);
  }

  return result;
}

uint64_t sub_1B8BE3270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8428, &qword_1B8C2EF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8BE32E0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B8C23C88();

  *a2 = v3;
}

uint64_t sub_1B8BE3360(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1B8C23C98();
}

double sub_1B8BE33D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B8B4645C(a1, a2);
  }

  return result;
}

uint64_t sub_1B8BE33EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B8B34450(a3, v25 - v10, &qword_1EBAA64C8, &qword_1B8C2BC70);
  v12 = sub_1B8C253A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B8B3433C(v11, &qword_1EBAA64C8, &qword_1B8C2BC70);
  }

  else
  {
    sub_1B8C25398();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B8C25328();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B8C25188() + 32;
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

      sub_1B8B3433C(a3, &qword_1EBAA64C8, &qword_1B8C2BC70);

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

  sub_1B8B3433C(a3, &qword_1EBAA64C8, &qword_1B8C2BC70);
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

unint64_t sub_1B8BE36EC()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E699C380])
  {
LABEL_2:
    v7 = 0x6E776F6E6B6E75;
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  if (v6 == *MEMORY[0x1E699C2C8])
  {
    return 0xD000000000000010;
  }

  if (v6 == *MEMORY[0x1E699C2B8])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x1E699C260])
  {
    return 0x6353207472616D53;
  }

  v7 = 1769105747;
  if (v6 != *MEMORY[0x1E699C2D8] && v6 != *MEMORY[0x1E699C270])
  {
    if (v6 == *MEMORY[0x1E699C298])
    {
      return 0x20676E6974697257;
    }

    if (v6 == *MEMORY[0x1E699C290])
    {
      return 0x6552207472616D53;
    }

    if (v6 == *MEMORY[0x1E699C2C0])
    {
      return 0x696A6F6D6E6547;
    }

    if (v6 == *MEMORY[0x1E699C2E0])
    {
      return 0x6D7553206C69614DLL;
    }

    if (v6 == *MEMORY[0x1E699C2B0])
    {
      v9 = 9;
    }

    else
    {
      if (v6 == *MEMORY[0x1E699C308])
      {
        return 0xD000000000000010;
      }

      if (v6 != *MEMORY[0x1E699C338])
      {
        if (v6 == *MEMORY[0x1E699C328])
        {
          return 0xD000000000000016;
        }

        if (v6 == *MEMORY[0x1E699C330])
        {
          return 0xD000000000000024;
        }

        if (v6 == *MEMORY[0x1E699C258])
        {
          return 0x6157206567616D49;
        }

        if (v6 == *MEMORY[0x1E699C268])
        {
          return 0x7341207466697753;
        }

        if (v6 == *MEMORY[0x1E699C2A8])
        {
          return 0x4320736F746F6850;
        }

        if (v6 == *MEMORY[0x1E699C2F0])
        {
          return 0xD000000000000013;
        }

        if (v6 == *MEMORY[0x1E699C2D0])
        {
          return v7;
        }

        if (v6 == *MEMORY[0x1E699C300])
        {
          return 0xD000000000000018;
        }

        if (v6 == *MEMORY[0x1E699C368])
        {
          return 0x6C616E6F73726550;
        }

        if (v6 == *MEMORY[0x1E699C2F8])
        {
          return 0xD000000000000013;
        }

        if (v6 == *MEMORY[0x1E699C278])
        {
          return 0x5320736F746F6850;
        }

        if (v6 == *MEMORY[0x1E699C320])
        {
          return 0xD000000000000010;
        }

        if (v6 == *MEMORY[0x1E699C2E8])
        {
          return 0xD000000000000024;
        }

        if (v6 != *MEMORY[0x1E699C350])
        {
          if (v6 == *MEMORY[0x1E699C280])
          {
            return 0x677573206C6C6F50;
          }

          if (v6 == *MEMORY[0x1E699C388])
          {
            return 0xD000000000000010;
          }

          if (v6 == *MEMORY[0x1E699C358])
          {
            return 0x65746F6E79654BLL;
          }

          if (v6 == *MEMORY[0x1E699C348])
          {
            return 0x7365676150;
          }

          if (v6 == *MEMORY[0x1E699C360])
          {
            return 0x737265626D754ELL;
          }

          if (v6 == *MEMORY[0x1E699C370])
          {
            return 0x6D726F6665657246;
          }

          if (v6 == *MEMORY[0x1E699C318] || v6 == *MEMORY[0x1E699C310])
          {
            return 0xD000000000000017;
          }

          if (v6 == *MEMORY[0x1E699C378])
          {
            return 0x726F707075736E55;
          }

          if (v6 == *MEMORY[0x1E699C340])
          {
            return 1953719636;
          }

          goto LABEL_2;
        }

        return 0xD000000000000014;
      }

      v9 = 5;
    }

    return v9 | 0xD000000000000010;
  }

  return v7;
}

uint64_t sub_1B8BE3E4C()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E699C1F0] || v5 == *MEMORY[0x1E699C1C8] || v5 == *MEMORY[0x1E699C1D8])
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = sub_1B8C23348();
  }

  else if (v5 == *MEMORY[0x1E699C1E8] || v5 == *MEMORY[0x1E699C1D0] || v5 == *MEMORY[0x1E699C1E0])
  {
    return 0;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EDC85D40);
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25498();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1B8B5DD48(0xD000000000000017, 0x80000001B8C36590, &v19);
      _os_log_impl(&dword_1B8B22000, v12, v13, "%{public}s Unknown Action case", v14, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CCB0E0](v15, -1, -1, v16);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }

    v17 = [objc_opt_self() mainBundle];
    v7 = sub_1B8C23348();

    (*(v2 + 8))(v4, v1);
  }

  return v7;
}

uint64_t sub_1B8BE429C()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E699C380])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x1E699C2C8])
  {
    return 0x316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2B8])
  {
    return 0x326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C260])
  {
    return 0x336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2D8])
  {
    return 0x386E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C270])
  {
    return 0x346E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C298])
  {
    return 0x396E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C290])
  {
    return 0x30316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2C0])
  {
    return 0x31316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2E0])
  {
    return 0x32316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2B0])
  {
    return 0x33316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C308])
  {
    return 0x34316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C338])
  {
    return 0x35316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C328])
  {
    return 0x36316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C330])
  {
    return 0x37316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C258])
  {
    return 0x366E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C268])
  {
    return 0x38316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2A8])
  {
    return 0x39316E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2F0])
  {
    return 0x30326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2D0])
  {
    return 0x31326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C300])
  {
    return 0x32326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C368])
  {
    return 0x33326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2F8])
  {
    return 0x34326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C278])
  {
    return 0x35326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C320])
  {
    return 0x38326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C2E8])
  {
    return 0x39326E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C350])
  {
    return 0x32336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C280])
  {
    return 0x33336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C388])
  {
    return 0x34336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C358])
  {
    return 0x35336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C348])
  {
    return 0x36336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C360])
  {
    return 0x37336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C370])
  {
    return 0x38336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C318])
  {
    return 0x39336E69616D6F64;
  }

  if (v6 == *MEMORY[0x1E699C310])
  {
    return 0x33346E69616D6F64;
  }

  if (v6 != *MEMORY[0x1E699C340])
  {
LABEL_2:
    (*(v3 + 8))(v5, v2);
    return 0x6E776F6E6B6E75;
  }

  return 0x586E69616D6F64;
}

uint64_t sub_1B8BE49C0()
{
  v1 = sub_1B8C236E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E699C1F0])
  {
    return 28789;
  }

  if (v5 == *MEMORY[0x1E699C1C8])
  {
    return 1853321060;
  }

  if (v5 == *MEMORY[0x1E699C1D8])
  {
    v7 = 0x7265636E6F63;
    return v7 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }

  if (v5 == *MEMORY[0x1E699C1E8])
  {
    return 1885956979;
  }

  if (v5 == *MEMORY[0x1E699C1D0])
  {
    return 0x64696C61766E69;
  }

  if (v5 != *MEMORY[0x1E699C1E0])
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8C23C38();
    __swift_project_value_buffer(v8, qword_1EDC85D40);
    v9 = sub_1B8C23C18();
    v10 = sub_1B8C25498();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1B8B5DD48(0xD000000000000011, 0x80000001B8C36570, &v15);
      _os_log_impl(&dword_1B8B22000, v9, v10, "%{public}s Unknown Action case", v11, 0xCu);
      v13 = __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CCB0E0](v12, -1, -1, v13);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v7 = 0x776F6E6B6E75;
    return v7 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
  }

  return 0x646574656C6564;
}

uint64_t sub_1B8BE4CD0@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v76[2] = *MEMORY[0x1E69E9840];
  v72 = sub_1B8C23398();
  v3 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B8C23568();
  v5 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - v8;
  v10 = sub_1B8C23498();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B34450(v73, v9, &qword_1EBAA85A0, &qword_1B8C28C20);
  v14 = (*(v11 + 48))(v9, 1, v10);
  v74 = v10;
  if (v14 == 1)
  {
    sub_1B8B3433C(v9, &qword_1EBAA85A0, &qword_1B8C28C20);
    v15 = NSTemporaryDirectory();
    sub_1B8C25128();

    sub_1B8C233C8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v68 = (v5 + 8);
  v67 = *MEMORY[0x1E6968F58];
  v66 = (v3 + 104);
  v16 = (v3 + 8);
  v73 = (v11 + 8);
  v17 = 3;
  while (1)
  {
    v76[0] = 761423459;
    v76[1] = 0xE400000000000000;
    v18 = v69;
    sub_1B8C23558();
    v19 = sub_1B8C23538();
    v21 = v20;
    (*v68)(v18, v70);
    MEMORY[0x1B8CC9EB0](v19, v21);

    v23 = v71;
    v22 = v72;
    v24 = (*v66)(v71, v67, v72);
    sub_1B8B34CA8(v24, v25, v26);
    v27 = v13;
    sub_1B8C23478();
    (*v16)(v23, v22);

    v28 = objc_opt_self();
    v29 = [v28 defaultManager];
    sub_1B8C23468();
    v30 = a2;
    v31 = sub_1B8C250F8();

    LODWORD(v18) = [v29 fileExistsAtPath_];

    if (!v18)
    {
      break;
    }

    v32 = *v73;
    v33 = (*v73)(v30, v74);
    --v17;
    a2 = v30;
    v13 = v27;
    if (!v17)
    {
      sub_1B8B7B4F8(v33, v34, v35);
      swift_allocError();
      *v36 = 6;
      swift_willThrow();
      return v32(v27, v74);
    }
  }

  v38 = [v28 defaultManager];
  v39 = sub_1B8C233E8();
  v76[0] = 0;
  v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v76];

  if (v40)
  {
    v41 = *v73;
    v42 = v76[0];
    return v41(v27, v74);
  }

  else
  {
    v43 = v30;
    v44 = v76[0];
    v45 = sub_1B8C23368();

    swift_willThrow();
    v46 = v27;
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v47 = sub_1B8C23C38();
    __swift_project_value_buffer(v47, qword_1EDC85D40);
    v48 = v45;
    v49 = sub_1B8C23C18();
    v50 = sub_1B8C25488();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75 = v45;
      v76[0] = v52;
      *v51 = 136446210;
      v53 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v54 = sub_1B8C25178();
      v56 = v43;
      v57 = sub_1B8B5DD48(v54, v55, v76);

      *(v51 + 4) = v57;
      v43 = v56;
      _os_log_impl(&dword_1B8B22000, v49, v50, "Failed to create attachment directory: %{public}s", v51, 0xCu);
      v58 = __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x1B8CCB0E0](v52, -1, -1, v58);
      MEMORY[0x1B8CCB0E0](v51, -1, -1);
    }

    sub_1B8B7B4F8(v59, v60, v61);
    swift_allocError();
    *v62 = 1;
    swift_willThrow();

    v63 = v74;
    v64 = *v73;
    (*v73)(v43, v74);
    return v64(v46, v63);
  }
}

uint64_t sub_1B8BE5488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 28789 && a2 == 0xE200000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1F0];
    goto LABEL_5;
  }

  if (a1 == 1853321060 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1C8];
    goto LABEL_5;
  }

  if (a1 == 0x6E7265636E6F63 && a2 == 0xE700000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1D8];
    goto LABEL_5;
  }

  if (a1 == 1885956979 && a2 == 0xE400000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v6 = MEMORY[0x1E699C1E8];
    goto LABEL_5;
  }

  if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    goto LABEL_23;
  }

  if ((a1 != 0x646574656C6564 || a2 != 0xE700000000000000) && (sub_1B8C25A08() & 1) == 0)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EDC85D40);
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25478();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1B8B5DD48(0xD00000000000001ELL, 0x80000001B8C36550, &v17);
      _os_log_impl(&dword_1B8B22000, v12, v13, "%{public}s Unknown form answer mapping", v14, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CCB0E0](v15, -1, -1, v16);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }

LABEL_23:
    v6 = MEMORY[0x1E699C1D0];
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E699C1E0];
LABEL_5:
  v7 = *v6;
  v8 = sub_1B8C236E8();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

uint64_t sub_1B8BE57C8()
{
  result = sub_1B8C250F8();
  qword_1EBAB39F8 = result;
  return result;
}

uint64_t FBKEvaluationController.APIType.description.getter()
{
  v1 = 0x49557466697753;
  if (*v0 != 1)
  {
    v1 = 0x74694B707041;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B4955;
  }
}

Feedback::FBKEvaluationController::APIType_optional __swiftcall FBKEvaluationController.APIType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8C25908();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B8BE58B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x49557466697753;
  if (v2 != 1)
  {
    v4 = 0x74694B707041;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74694B4955;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x49557466697753;
  if (*a2 != 1)
  {
    v8 = 0x74694B707041;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74694B4955;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

uint64_t sub_1B8BE59A8()
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

double sub_1B8BE5A44(uint64_t a1)
{
  sub_1B8C251B8();

  return result;
}

uint64_t sub_1B8BE5ACC(uint64_t a1)
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

void sub_1B8BE5B70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x49557466697753;
  if (v2 != 1)
  {
    v5 = 0x74694B707041;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74694B4955;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8BE5BC8()
{
  v1 = 0x49557466697753;
  if (*v0 != 1)
  {
    v1 = 0x74694B707041;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74694B4955;
  }
}

void sub_1B8BE5C1C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  *a1 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType);
}

double sub_1B8BE5CCC(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x49557466697753;
  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType) != 1)
  {
    v5 = 0x74694B707041;
    v4 = 0xE600000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x74694B4955;
  }

  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x49557466697753;
  if (v3 != 1)
  {
    v9 = 0x74694B707041;
    v8 = 0xE600000000000000;
  }

  if (v3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x74694B4955;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

LABEL_21:
    *(v1 + v2) = v3;
    return result;
  }

  v13 = sub_1B8C25A08();

  if (v13)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23578();

  return result;
}

uint64_t sub_1B8BE5EB4()
{
  v1 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B8BE5EF8(char a1)
{
  v3 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void (*sub_1B8BE5FE4(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v5 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView;
  *(v4 + 32) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView;
  *(v4 + 40) = *(v1 + v5);
  return sub_1B8BE60E8;
}

uint64_t sub_1B8BE6144()
{
  v1 = 0x676E6964616F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x697461756C617645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696C6449;
  }
}

uint64_t sub_1B8BE61A0()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  return *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState);
}

void sub_1B8BE6248(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  *a4 = *(v6 + *a3);
}

double sub_1B8BE62FC(unsigned __int8 a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8BE640C(unsigned __int8 a1)
{
  if (qword_1EDC85598 != -1)
  {
    v46 = a1;
    swift_once();
    a1 = v46;
  }

  v2 = a1;
  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EDC85D40);
  v4 = v1;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();

  v7 = &qword_1EBAA8000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_1B8B5DD48(0xD000000000000010, 0x80000001B8C36510, &v48);
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    if (v4[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState])
    {
      if (v4[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] == 1)
      {
        v10 = 0xE700000000000000;
        v11 = 0x676E6964616F4CLL;
      }

      else
      {
        v11 = 0x697461756C617645;
        v10 = 0xEA0000000000676ELL;
      }
    }

    else
    {
      v10 = 0xE600000000000000;
      v11 = 0x676E696C6449;
    }

    v12 = sub_1B8B5DD48(v11, v10, &v48);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v13 = 0xE700000000000000;
    v14 = 0x676E6964616F4CLL;
    if (v2 != 1)
    {
      v14 = 0x697461756C617645;
      v13 = 0xEA0000000000676ELL;
    }

    if (v2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x676E696C6449;
    }

    if (v2)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = sub_1B8B5DD48(v15, v16, &v48);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s [%s] -> [%s]", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);

    v7 = &qword_1EBAA8000;
  }

  else
  {
  }

  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    v19 = sub_1B8C23C18();
    v30 = sub_1B8C25478();
    if (os_log_type_enabled(v19, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B8B22000, v19, v30, "BUG in Feedback.framework client.  State transitions must occur on main thread / queue.", v31, 2u);
      v29 = v31;
LABEL_34:
      MEMORY[0x1B8CCB0E0](v29, -1, -1);
    }

LABEL_35:

    return 0;
  }

  swift_getKeyPath();
  v48 = v4;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v18 = v7[144];
  if (v4[v18])
  {
    swift_getKeyPath();
    v48 = v4;
    sub_1B8C23588();

    if (v4[v18] == v2)
    {
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v48 = v22;
        *v21 = 136315138;
        v23 = 0xE700000000000000;
        v24 = 0x676E6964616F4CLL;
        if (v2 != 1)
        {
          v24 = 0x697461756C617645;
          v23 = 0xEA0000000000676ELL;
        }

        if (v2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0x676E696C6449;
        }

        if (v2)
        {
          v26 = v23;
        }

        else
        {
          v26 = 0xE600000000000000;
        }

        v27 = sub_1B8B5DD48(v25, v26, &v48);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Detected duplicate state transition to [%s].", v21, 0xCu);
        v28 = __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B8CCB0E0](v22, -1, -1, v28);
        v29 = v21;
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v2)
    {
      v33 = v4;
      v34 = sub_1B8C23C18();
      v35 = sub_1B8C25478();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = v47;
        *v36 = 136315394;
        swift_getKeyPath();
        sub_1B8C23588();

        if (v4[v18])
        {
          if (v4[v18] == 1)
          {
            v37 = 0xE700000000000000;
            v38 = 0x676E6964616F4CLL;
          }

          else
          {
            v38 = 0x697461756C617645;
            v37 = 0xEA0000000000676ELL;
          }

          v39 = v35;
          v40 = v47;
        }

        else
        {
          v38 = 0x676E696C6449;
          v37 = 0xE600000000000000;
          v39 = v35;
          v40 = v47;
        }

        v42 = sub_1B8B5DD48(v38, v37, &v48);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        if (v2 == 2)
        {
          v43 = 0x697461756C617645;
        }

        else
        {
          v43 = 0x676E6964616F4CLL;
        }

        if (v2 == 2)
        {
          v44 = 0xEA0000000000676ELL;
        }

        else
        {
          v44 = 0xE700000000000000;
        }

        v45 = sub_1B8B5DD48(v43, v44, &v48);

        *(v36 + 14) = v45;
        _os_log_impl(&dword_1B8B22000, v34, v39, "Failed to transition from [%s] to [%s]", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v40, -1, -1);
        MEMORY[0x1B8CCB0E0](v36, -1, -1);
      }

      return 0;
    }
  }

  else if (!v2)
  {
    v4[v18] = 0;
    return 1;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v48 = v4;
  sub_1B8C23578();

  return 1;
}

BOOL sub_1B8BE6C4C(unsigned __int8 a1)
{
  if ([objc_opt_self() isMainThread])
  {
    swift_getKeyPath();
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    return *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState) == a1;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8C23C38();
    __swift_project_value_buffer(v4, qword_1EDC85D40);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B8B22000, v5, v6, "BUG in Feedback.framework client.  Reading state must occur on main thread / queue.", v7, 2u);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1B8BE6DE4()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1B8BE6E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

double sub_1B8BE6F54(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23578();

  return result;
}

uint64_t sub_1B8BE7024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B8C24408();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
  LOBYTE(v8) = sub_1B8C250E8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v9(v7, a1, v4);
    sub_1B8BE8194(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[2] = v2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1B8BE72DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  swift_beginAccess();
  sub_1B8B34450(v1 + v6, v5, &qword_1EBAA6590, &qword_1B8C2EFD0);
  v7 = sub_1B8BF9EC0(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA6590, &qword_1B8C2EFD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B34450(a1, v5, &qword_1EBAA6590, &qword_1B8C2EFD0);
    swift_beginAccess();
    sub_1B8BFD360(v5, v1 + v6, &qword_1EBAA6590, &qword_1B8C2EFD0);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA6590, &qword_1B8C2EFD0);
}

void sub_1B8BE750C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  if (!v8)
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1B8C23978();
  v9 = v8;
  v10 = a1;
  v11 = sub_1B8C255E8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v7);
LABEL_8:
  *(v5 + v7) = a1;
}

uint64_t sub_1B8BE7690(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  swift_beginAccess();
  sub_1B8B34450(v1 + v6, v5, &qword_1EBAA84D0, &qword_1B8C2F018);
  v7 = sub_1B8BF97A8(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA84D0, &qword_1B8C2F018);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B34450(a1, v5, &qword_1EBAA84D0, &qword_1B8C2F018);
    swift_beginAccess();
    sub_1B8BFD360(v5, v1 + v6, &qword_1EBAA84D0, &qword_1B8C2F018);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA84D0, &qword_1B8C2F018);
}

void sub_1B8BE78C0(void *a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for FBKEvaluation.Response(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v34 = v6;
    swift_getKeyPath();
    v35 = v16;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    v17 = &v16[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v20 = sub_1B8C23C38();
      __swift_project_value_buffer(v20, qword_1EDC85D40);
      v21 = sub_1B8C23C18();
      v22 = sub_1B8C25498();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B8B22000, v21, v22, "Evaluation finished but delegate is nil. No updates will be sent", v23, 2u);
        MEMORY[0x1B8CCB0E0](v23, -1, -1);

        return;
      }

      goto LABEL_16;
    }

    v33 = v14;
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    if (a2)
    {
      (v18)[3](v16, a1, ObjectType, v18);
      swift_unknownObjectRelease();
LABEL_16:

      return;
    }

    (v18)[1](v16, a1, ObjectType, v18);
    v24 = a1;
    v25 = v33;
    sub_1B8BBE208(v24, v33);
    sub_1B8B34450(v25, v12, &qword_1EBAA7E68, &qword_1B8C2E158);
    if ((*(v34 + 48))(v12, 1, v5) == 1)
    {
      sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v26 = sub_1B8C23C38();
      __swift_project_value_buffer(v26, qword_1EDC85D40);
      v27 = sub_1B8C23C18();
      v28 = sub_1B8C25478();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v33;
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1B8B22000, v27, v28, "Failed to convert FBKSEvaluation to FBKEvaluation.Response.  Deprecated delegate method will not be called.", v31, 2u);
        MEMORY[0x1B8CCB0E0](v31, -1, -1);
      }

      swift_unknownObjectRelease();
      v32 = v30;
    }

    else
    {
      sub_1B8BF9E58(v12, v8, type metadata accessor for FBKEvaluation.Response);
      (v18)[2](v16, v8, ObjectType, v18);

      swift_unknownObjectRelease();
      sub_1B8BFD64C(v8, type metadata accessor for FBKEvaluation.Response);
      v32 = v25;
    }

    sub_1B8B3433C(v32, &qword_1EBAA7E68, &qword_1B8C2E158);
  }
}

id sub_1B8BE7DB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v6 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));

  return sub_1B8BF92BC(a1, v6, ObjectType, v5);
}

void sub_1B8BE7E14()
{
  v1 = v0;
  v2 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EDC85D40);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25458();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Using detent that shows only the title of Feedback UI", v12, 2u);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  swift_getKeyPath();
  v18[1] = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v13 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8B34450(v1 + v13, v8, &qword_1EBAA84D8, &qword_1B8C2F020);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1B8B3433C(v8, &qword_1EBAA84D8, &qword_1B8C2F020);
  }

  else
  {
    sub_1B8BFCC3C(v8, v5, type metadata accessor for FBKEvaluationController.FormContext);
    sub_1B8B3433C(v8, &qword_1EBAA84D8, &qword_1B8C2F020);
    v17 = *&v5[*(v2 + 24)];
    v14 = v17;
    sub_1B8BFD64C(v5, type metadata accessor for FBKEvaluationController.FormContext);
    if (v17)
    {
      sub_1B8BB2444();
      goto LABEL_11;
    }
  }

  v14 = sub_1B8C23C18();
  v15 = sub_1B8C25478();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B8B22000, v14, v15, "No drafting controller. Cannot dismiss keyboard", v16, 2u);
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
  }

LABEL_11:
}

uint64_t sub_1B8BE8194(uint64_t a1)
{
  v3 = sub_1B8C24408();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  swift_getKeyPath();
  v12 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = MEMORY[0x1B8CC90A0](v6, v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController_customSmallDetentForSwiftUI);
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v8)
  {
    sub_1B8BE7E14();
  }

  return (v9)(a1, v3);
}

uint64_t sub_1B8BE8370@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v3 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v4 = sub_1B8C24408();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1B8BE8468(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C24408();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  return sub_1B8BE8194(v5);
}

id FBKEvaluationController.init(subject:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1B8C24408();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v7 + 32))(&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v9, v6);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v10 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v10 = 0;
  v10[8] = -1;
  v11 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v13 = sub_1B8C23738();
  v14 = *(*(v13 - 8) + 56);
  v14(&v1[v12], 1, 1, v13);
  v14(&v1[v12], 1, 1, v13);
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v15 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v16 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v1[v15], 1, 1, v16);
  v17(&v1[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v19 = sub_1B8C236E8();
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 1;
  sub_1B8B34450(a1, v5, &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8B3433C(&v1[v12], &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8BF9DB8(v5, &v1[v12]);
  v20 = type metadata accessor for FBKEvaluationController(0);
  v23.receiver = v1;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  sub_1B8B3433C(a1, &qword_1EBAA6590, &qword_1B8C2EFD0);
  return v21;
}

id FBKEvaluationController.init(evaluatedFeature:)(uint64_t a1)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = (&v40 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84A0, &qword_1B8C2EFD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for FBKEvaluation.Input(0);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - v11;
  v12 = sub_1B8C24408();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v13 + 32))(&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v15, v12);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v16 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v16 = 0;
  v16[8] = -1;
  v17 = &v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v19 = sub_1B8C23738();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(&v1[v18], 1, 1, v19);
  v41 = v18;
  v21(&v1[v18], 1, 1, v19);
  *&v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v22 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v23 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v1[v22], 1, 1, v23);
  v24(&v1[v22], 1, 1, v23);
  v25 = v45;
  v26 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v27 = sub_1B8C236E8();
  v28 = &v1[v26];
  v29 = v47;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 1;
  sub_1B8B34450(v29, v6, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  if ((*(v46 + 48))(v6, 1, v25) == 1)
  {
    sub_1B8B3433C(v6, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  }

  else
  {
    v30 = v6;
    v31 = v42;
    sub_1B8BF9E58(v30, v42, type metadata accessor for FBKEvaluation.Input);
    v32 = v43;
    sub_1B8BF9E58(v31, v43, type metadata accessor for FBKEvaluation.Input);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v44;
      *v44 = *v32;
      v34 = MEMORY[0x1E699C218];
    }

    else
    {
      v35 = sub_1B8C23568();
      v33 = v44;
      (*(*(v35 - 8) + 32))(v44, v32, v35);
      v34 = MEMORY[0x1E699C230];
    }

    (*(v20 + 104))(v33, *v34, v19);
    v21(v33, 0, 1, v19);
    v36 = v41;
    sub_1B8B3433C(&v1[v41], &qword_1EBAA6590, &qword_1B8C2EFD0);
    sub_1B8BF9DB8(v33, &v1[v36]);
  }

  v37 = type metadata accessor for FBKEvaluationController(0);
  v48.receiver = v1;
  v48.super_class = v37;
  v38 = objc_msgSendSuper2(&v48, sel_init);
  sub_1B8B3433C(v29, &unk_1EBAA84A0, &qword_1B8C2EFD8);
  return v38;
}

double sub_1B8BE8F9C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23578();

  return result;
}

id sub_1B8BE9070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation;
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_1B8BF9E28(v5, v6);
}

void *sub_1B8BE9134()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v1 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  sub_1B8BF9E28(v1, *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation + 8));
  return v1;
}

void sub_1B8BE91F8(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = ~a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 4) = v2;
    *(&v16 - 3) = a1;
    *(&v16 - 16) = v3;
    v17 = v2;
    sub_1B8B2DE30(a1);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
    sub_1B8BF9E40(a1, v3);

    if (v3)
    {
      sub_1B8BF9E40(a1, v3);
    }

    else
    {
      sub_1B8B2DE30(a1);
      sub_1B8BBE208(a1, v11);
      sub_1B8B34450(v11, v9, &qword_1EBAA7E68, &qword_1B8C2E158);
      v14 = type metadata accessor for FBKEvaluation.Response(0);
      if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
      {
        sub_1B8B3433C(v9, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BF9E40(a1, v3);
        v15 = v11;
      }

      else
      {
        sub_1B8BF9E40(a1, v3);
        sub_1B8B3433C(v11, &qword_1EBAA7E68, &qword_1B8C2E158);
        v15 = v9;
      }

      sub_1B8B3433C(v15, &qword_1EBAA7E68, &qword_1B8C2E158);
    }
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    *(&v16 - 4) = v2;
    *(&v16 - 3) = a1;
    *(&v16 - 16) = -1;
    v17 = v2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }
}

id sub_1B8BE9560@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FBKEvaluation.Response(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7E68, &qword_1B8C2E158);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  swift_getKeyPath();
  v26 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v13 = (v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation);
  v14 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation + 8);
  if (v14 == 255)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  else
  {
    v15 = *v13;
    if (v14)
    {
      *a1 = v15;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
      swift_storeEnumTagMultiPayload();
      (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
      return sub_1B8B2DE30(v15);
    }

    else
    {
      sub_1B8BF9E28(*v13, v14);
      sub_1B8B2DE30(v15);
      sub_1B8BBE208(v15, v12);
      sub_1B8B34450(v12, v10, &qword_1EBAA7E68, &qword_1B8C2E158);
      if ((*(v4 + 48))(v10, 1, v3) == 1)
      {
        v19 = sub_1B8B3433C(v10, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BD0C60(v19, v20, v21);
        v22 = swift_allocError();
        *v23 = 3;
        sub_1B8BF9E40(v15, v14);
        sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
        *a1 = v22;
      }

      else
      {
        sub_1B8BF9E40(v15, v14);
        sub_1B8B3433C(v12, &qword_1EBAA7E68, &qword_1B8C2E158);
        sub_1B8BF9E58(v10, v6, type metadata accessor for FBKEvaluation.Response);
        sub_1B8BF9E58(v6, a1, type metadata accessor for FBKEvaluation.Response);
      }

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84B0, &unk_1B8C2E160);
      swift_storeEnumTagMultiPayload();
      return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
    }
  }
}

void (*sub_1B8BE99AC(uint64_t **a1))(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84C0, &unk_1B8C2F008) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(v2);
  }

  *a1 = v3;
  sub_1B8BE9560(v3);
  return sub_1B8BE9A44;
}

void sub_1B8BE9A44(uint64_t *a1)
{
  v1 = *a1;
  sub_1B8B3433C(*a1, &qword_1EBAA84C0, &unk_1B8C2F008);

  free(v1);
}

uint64_t sub_1B8BE9A90()
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v1 = *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  sub_1B8B247D4(v1, *(v0 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8));
  return v1;
}

uint64_t sub_1B8BE9B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v4 = *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v5 = *(a1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1B8B247D4(a2, a3);
  return sub_1B8B30A44(v4, v5);
}

void sub_1B8BE9BA8(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1B8BE6C4C(2u);
  if (v9)
  {
    sub_1B8B2DE30(a1);
    v10 = a1;
    v11 = a2;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EDC85D40);
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25478();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B8B22000, v13, v14, "Finished evaluation while not in .evaluating state.", v15, 2u);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    sub_1B8BD0C60(v16, v17, v18);
    v10 = swift_allocError();
    *v19 = 7;
    v11 = 1;
  }

  sub_1B8B2DE30(a1);
  sub_1B8BE91F8(a1, a2 & 1);
  swift_getKeyPath();
  v28 = v3;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v20 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType);
  swift_getKeyPath();
  if (v20 == 1)
  {
    v28 = v3;
    sub_1B8C23588();

    v21 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
    if (v21)
    {
      v22 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);

      v21(v10, v11 & 1);
      sub_1B8B30A44(v21, v22);
    }

    sub_1B8BF2DF8();
    if (!v9)
    {
      goto LABEL_13;
    }

LABEL_12:
    v23 = type metadata accessor for FBKEvaluationController.FormContext(0);
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v28 = v3;
    sub_1B8C23578();

    sub_1B8B3433C(v8, &qword_1EBAA84D8, &qword_1B8C2F020);
    sub_1B8BE640C(0);
LABEL_13:
    sub_1B8B30A54(v10);
    return;
  }

  v28 = v3;
  sub_1B8C23588();

  v25 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  if (v25)
  {
    v26 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);

    v25(v10, v11 & 1);
    sub_1B8B30A44(v25, v26);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_1B8C258A8();
  __break(1u);
}

void *sub_1B8BEA044(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_1B8BEA0EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
  *a2 = v4;

  return v4;
}

uint64_t sub_1B8BEA1F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1B8B34450(a1, &v9[-v5], &qword_1EBAA84D8, &qword_1B8C2F020);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23578();

  return sub_1B8B3433C(v6, &qword_1EBAA84D8, &qword_1B8C2F020);
}

uint64_t sub_1B8BEA344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1B8B34450(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1B8BFD360(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

void sub_1B8BEA428(uint64_t a1, void (*a2)(void, void), void (*a3)(uint64_t, _BYTE *, uint64_t))
{
  v4 = v3;
  v71 = a3;
  v7 = sub_1B8C24FD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1B8C25008();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B8C23568();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = v12;
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8C23738();
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8C23C38();
  __swift_project_value_buffer(v16, qword_1EDC85D40);
  v17 = sub_1B8C23C18();
  v18 = sub_1B8C25498();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v62 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v61 = v13;
    v22 = v11;
    v23 = v4;
    v24 = v8;
    v25 = v7;
    v26 = a2;
    v27 = v15;
    v28 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1B8B5DD48(0xD00000000000002CLL, 0x80000001B8C35C60, aBlock);
    _os_log_impl(&dword_1B8B22000, v17, v18, "%{public}s", v20, 0xCu);
    v29 = __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v28;
    v15 = v27;
    a2 = v26;
    v7 = v25;
    v8 = v24;
    v4 = v23;
    v11 = v22;
    v13 = v61;
    MEMORY[0x1B8CCB0E0](v30, -1, -1, v29);
    v31 = v20;
    a1 = v62;
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
  }

  if (sub_1B8BFA1E0())
  {
    if (!a2)
    {
      return;
    }

    v32 = sub_1B8C23628();
    sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178], MEMORY[0x1E699C180]);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E699C170], v32);
    a2(v33, 1);
    v35 = v33;
    goto LABEL_8;
  }

  if (![objc_opt_self() isMainThread])
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v63 = sub_1B8C25538();
    v43 = *(v11 + 16);
    v44 = v65;
    v45 = v11;
    v46 = v70;
    v43(v65, a1, v70);
    v47 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v4;
    (*(v45 + 32))(v49 + v47, v44, v46);
    v50 = (v49 + v48);
    v51 = v71;
    *v50 = a2;
    v50[1] = v51;
    aBlock[4] = sub_1B8BFA368;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_9;
    v52 = v4;
    v53 = _Block_copy(aBlock);
    sub_1B8B247D4(a2, v51);
    v54 = v52;

    v55 = v66;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v56 = v68;
    sub_1B8C256D8();
    v57 = v63;
    MEMORY[0x1B8CCA210](0, v55, v56, v53);
    _Block_release(v53);

    (*(v8 + 8))(v56, v7);
    (*(v67 + 8))(v55, v69);
    return;
  }

  v36 = sub_1B8BE640C(1u);
  if (v36)
  {
    (*(v11 + 16))(v15, a1, v70);
    v39 = v63;
    (*(v63 + 104))(v15, *MEMORY[0x1E699C230], v13);
    v40 = v4;
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v71;
    sub_1B8B247D4(a2, v71);
    sub_1B8BFA3F4(v15, v40, v41, a2, v42);
    sub_1B8B30A44(a2, v42);
    (*(v39 + 8))(v15, v13);

    return;
  }

  if (a2)
  {
    sub_1B8BD0C60(v36, v37, v38);
    v58 = swift_allocError();
    *v59 = 6;
    a2(v58, 1);
    v35 = v58;
LABEL_8:
  }
}

uint64_t sub_1B8BEABF0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1B8C24FD8();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8C25008();
  v21 = *(v13 - 8);
  v22 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v20 = sub_1B8C25538();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2 & 1;
  aBlock[4] = sub_1B8BFD578;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_276;
  v17 = _Block_copy(aBlock);

  sub_1B8B247D4(a4, a5);
  sub_1B8B2DE30(a1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v18 = v20;
  MEMORY[0x1B8CCA210](0, v15, v12, v17);
  _Block_release(v17);

  (*(v23 + 8))(v12, v10);
  return (*(v21 + 8))(v15, v22);
}

void sub_1B8BEAEEC(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1B8BE640C(0);
  }

  if (a2)
  {
    a2(a4, a5 & 1);
  }
}

void sub_1B8BEAF7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v34 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8C23C38();
  __swift_project_value_buffer(v11, qword_1EDC85D40);
  v12 = sub_1B8C23C18();
  v13 = sub_1B8C25498();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B8B5DD48(0x29287465736572, 0xE700000000000000, &v36);
    _os_log_impl(&dword_1B8B22000, v12, v13, "%{public}s", v14, 0xCu);
    v16 = __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B8CCB0E0](v15, -1, -1, v16);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
  }

  if (sub_1B8BFA1E0())
  {
    swift_getKeyPath();
    v36 = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    v17 = v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler;
    v18 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
    if (v18)
    {
      v19 = *(v17 + 8);
      v20 = sub_1B8C23628();
      sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178], MEMORY[0x1E699C180]);
      v21 = swift_allocError();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E699C170], v20);

      v18(v21, 1);
      sub_1B8B30A44(v18, v19);
    }
  }

  else if (sub_1B8BE6C4C(0))
  {
    v23 = sub_1B8C23738();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    sub_1B8BE72DC(v10);
    v24 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
    v35 = v4;
    if (v24)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v34 - 2) = v1;
      *(&v34 - 1) = 0;
      v36 = v1;
      sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
      sub_1B8C23578();
    }

    v26 = type metadata accessor for FBKEvaluationController.FormContext(0);
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    *(&v34 - 2) = v1;
    *(&v34 - 1) = v7;
    v36 = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();

    sub_1B8B3433C(v7, &qword_1EBAA84D8, &qword_1B8C2F020);
    v28 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v28);
    *(&v34 - 4) = v1;
    *(&v34 - 3) = 0;
    *(&v34 - 16) = -1;
    v36 = v1;
    sub_1B8C23578();

    v29 = sub_1B8C236E8();
    v30 = v35;
    (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
    sub_1B8BE7690(v30);
  }

  else
  {
    v35 = sub_1B8C23C18();
    v31 = sub_1B8C25478();
    if (os_log_type_enabled(v35, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B8B22000, v35, v31, "Ignoring attempt to reset() FBKEvaluationController while not .idling", v32, 2u);
      MEMORY[0x1B8CCB0E0](v32, -1, -1);
    }

    v33 = v35;
  }
}

void sub_1B8BEB6B0(uint64_t a1, void (*a2)(void *, uint64_t), void (*a3)(void *, uint64_t))
{
  v4 = v3;
  v87 = a2;
  v88 = a3;
  v6 = sub_1B8C23568();
  v85 = *(v6 - 8);
  v7 = v85[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v78 - v12;
  v86 = sub_1B8C23738();
  v13 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v15 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1B8BE6C4C(0))
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v72 = sub_1B8C23C38();
    __swift_project_value_buffer(v72, qword_1EDC85D40);
    v73 = sub_1B8C23C18();
    v74 = sub_1B8C25478();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v89);
      _os_log_impl(&dword_1B8B22000, v73, v74, "%{public}s called while FBKEvaluationController is idling.", v75, 0xCu);
      v77 = __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x1B8CCB0E0](v76, -1, -1, v77);
      MEMORY[0x1B8CCB0E0](v75, -1, -1);
    }

    sub_1B8C258A8();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v89 = v3;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    v16 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
    if (v16)
    {
      v17 = v16;
      if (sub_1B8C23708())
      {
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v18 = sub_1B8C23C38();
        __swift_project_value_buffer(v18, qword_1EDC85D40);
        v19 = sub_1B8C23C18();
        v20 = sub_1B8C25498();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1B8B22000, v19, v20, "Using cached interaction", v21, 2u);
          MEMORY[0x1B8CCB0E0](v21, -1, -1);
        }

        v22 = v17;
        v87(v16, 0);

        return;
      }
    }

    v23 = v86;
    (*(v13 + 16))(v15, a1, v86);
    v24 = (*(v13 + 88))(v15, v23);
    if (v24 == *MEMORY[0x1E699C230])
    {
      (*(v13 + 96))(v15, v23);
      v26 = v84;
      v25 = v85;
      v27 = v85[4];
      v86 = (v85 + 4);
      v82 = v27;
      v27(v84, v15, v6);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v28 = sub_1B8C23C38();
      __swift_project_value_buffer(v28, qword_1EDC85D40);
      v81 = v25[2];
      v81(v11, v26, v6);
      v29 = sub_1B8C23C18();
      v30 = sub_1B8C25498();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v89 = v78;
        *v31 = 136446210;
        v32 = sub_1B8C23538();
        v34 = v33;
        v35 = v85[1];
        v79 = (v85 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v80 = v35;
        v35(v11, v6);
        v36 = sub_1B8B5DD48(v32, v34, &v89);
        v26 = v84;

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1B8B22000, v29, v30, "Prefetching interaction for uuid %{public}s", v31, 0xCu);
        v37 = v78;
        v38 = __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x1B8CCB0E0](v37, -1, -1, v38);
        v39 = v31;
        v25 = v85;
        MEMORY[0x1B8CCB0E0](v39, -1, -1);
      }

      else
      {

        v46 = v25[1];
        v79 = (v25 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v80 = v46;
        v46(v11, v6);
      }

      v85 = sub_1B8C23688();
      v47 = v83;
      v81(v83, v26, v6);
      v48 = (*(v25 + 80) + 16) & ~*(v25 + 80);
      v49 = (v7 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v82(v50 + v48, v47, v6);
      *(v50 + v49) = v4;
      v51 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
      v52 = v88;
      *v51 = v87;
      v51[1] = v52;
      v53 = v4;

      MEMORY[0x1B8CC8340](v26, sub_1B8BFD160, v50);

      v80(v26, v6);
    }

    else if (v24 == *MEMORY[0x1E699C218])
    {
      (*(v13 + 96))(v15, v23);
      v40 = *v15;
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v41 = sub_1B8C23C38();
      __swift_project_value_buffer(v41, qword_1EDC85D40);
      v42 = sub_1B8C23C18();
      v43 = sub_1B8C25498();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1B8B22000, v42, v43, "Interaction already available", v44, 2u);
        MEMORY[0x1B8CCB0E0](v44, -1, -1);
      }

      v45 = v40;
      sub_1B8BE74E4(v40);
      v87(v40, 0);
    }

    else
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v54 = sub_1B8C23C38();
      __swift_project_value_buffer(v54, qword_1EDC85D40);
      v55 = sub_1B8C23C18();
      v56 = sub_1B8C25498();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v89 = v58;
        *v57 = 136446210;
        *(v57 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v89);
        _os_log_impl(&dword_1B8B22000, v55, v56, "%{public}s Unknown Subject case", v57, 0xCu);
        v59 = __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1B8CCB0E0](v58, -1, -1, v59);
        MEMORY[0x1B8CCB0E0](v57, -1, -1);
      }

      sub_1B8BD0C60(v60, v61, v62);
      v63 = swift_allocError();
      v65 = v64;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v54, qword_1EBAB39C8);
      v66 = sub_1B8C23C18();
      v67 = sub_1B8C25478();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v89 = v69;
        *v68 = 136446210;
        *(v68 + 4) = sub_1B8B5DD48(0xD000000000000014, 0x80000001B8C363F0, &v89);
        _os_log_impl(&dword_1B8B22000, v66, v67, "Unexpected Error: %{public}s", v68, 0xCu);
        v70 = __swift_destroy_boxed_opaque_existential_0(v69);
        v71 = v69;
        v23 = v86;
        MEMORY[0x1B8CCB0E0](v71, -1, -1, v70);
        MEMORY[0x1B8CCB0E0](v68, -1, -1);
      }

      *v65 = 0;
      v87(v63, 1);

      (*(v13 + 8))(v15, v23);
    }
  }
}

uint64_t sub_1B8BEC1B8(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a4;
  v29 = a2;
  v35 = sub_1B8C24FD8();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B8C25008();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1B8C23568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v33 = sub_1B8C25538();
  (*(v13 + 16))(&v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v12);
  v15 = (*(v13 + 80) + 25) & ~*(v13 + 80);
  v16 = (v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v29 & 1;
  (*(v13 + 32))(v17 + v15, &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  v19 = v30;
  v18 = v31;
  *(v17 + v16) = v30;
  v20 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v32;
  *v20 = v18;
  v20[1] = v21;
  aBlock[4] = sub_1B8BFD164;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_246;
  v22 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v23 = v19;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v25 = v34;
  v24 = v35;
  sub_1B8C256D8();
  v26 = v33;
  MEMORY[0x1B8CCA210](0, v11, v25, v22);
  _Block_release(v22);

  (*(v38 + 8))(v25, v24);
  return (*(v36 + 8))(v11, v37);
}

uint64_t sub_1B8BEC5A0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v12 = sub_1B8C23568();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8C23C38();
    __swift_project_value_buffer(v16, qword_1EDC85D40);
    v17 = a1;
    v18 = sub_1B8C23C18();
    v19 = sub_1B8C25478();
    sub_1B8B30A54(a1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to fetch evaluation from daemon with error: %{public}@", v20, 0xCu);
      sub_1B8B3433C(v21, &qword_1EBAA69A0, &qword_1B8C29670);
      MEMORY[0x1B8CCB0E0](v21, -1, -1);
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
    }

    v24 = a1;
    v25 = 1;
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v26 = sub_1B8C23C38();
    __swift_project_value_buffer(v26, qword_1EDC85D40);
    (*(v13 + 16))(v15, a3, v12);
    v27 = sub_1B8C23C18();
    v28 = sub_1B8C25498();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = a5;
      v30 = v29;
      v31 = swift_slowAlloc();
      v41[1] = a6;
      v32 = v31;
      v43 = v31;
      *v30 = 136446210;
      v33 = sub_1B8C23538();
      v41[0] = a4;
      v35 = v34;
      (*(v13 + 8))(v15, v12);
      v36 = sub_1B8B5DD48(v33, v35, &v43);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1B8B22000, v27, v28, "Did fetch feature interaction for uuid %{public}s", v30, 0xCu);
      v37 = __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B8CCB0E0](v32, -1, -1, v37);
      v38 = v30;
      a5 = v42;
      MEMORY[0x1B8CCB0E0](v38, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v39 = a1;
    sub_1B8BE74E4(a1);
    v24 = a1;
    v25 = 0;
  }

  return a5(v24, v25);
}

uint64_t sub_1B8BEC97C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v10 = *a2;
  swift_beginAccess();
  return sub_1B8B34450(v12 + v10, a5, a3, a4);
}

uint64_t sub_1B8BECA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v11 = *a3;
  swift_beginAccess();
  return sub_1B8B34450(v10 + v11, a6, a4, a5);
}

uint64_t sub_1B8BECB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B8B34450(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1B8BECBF8(void *a1, char a2, void *a3)
{
  v6 = sub_1B8C24FD8();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B8C25008();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v12 = sub_1B8C25538();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_1B8BFD150;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_237;
  v14 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v15 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1B8BECEE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1B8BD0C60(a1, a2, a3);
    v3 = swift_allocError();
    v5 = v4;
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EBAB39C8);
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25478();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C363D0, &v12);
      _os_log_impl(&dword_1B8B22000, v7, v8, "Unexpected Error: %{public}s", v9, 0xCu);
      v11 = __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CCB0E0](v10, -1, -1, v11);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    *v5 = 0;
    sub_1B8BE9BA8(v3, 1);
  }

  else
  {
    sub_1B8BE9BA8(a1, 0);
  }
}

double sub_1B8BED0A4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v6 = v5;
  v186 = a5;
  v189 = a4;
  v162 = a3;
  v182 = a2;
  v194 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v161 = &v159 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v178 = &v159 - v10;
  v173 = sub_1B8C24FD8();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1B8C25008();
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1B8C23738();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = v13;
  v184 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1B8C24FC8();
  v166 = *(v167 - 1);
  MEMORY[0x1EEE9AC00](v167);
  v165 = (&v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_1B8C25028();
  v185 = *(v181 - 8);
  v15 = MEMORY[0x1EEE9AC00](v181);
  v163 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v180 = &v159 - v17;
  v18 = sub_1B8C236E8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x1EEE9AC00](v18);
  v177 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v179 = &v159 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v164 = &v159 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v183 = &v159 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v159 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v159 - v31;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v160 = sub_1B8C23C38();
  v33 = __swift_project_value_buffer(v160, qword_1EDC85D40);
  v192 = v19[2];
  v193 = v19 + 2;
  v192(v32, v194, v18);
  v34 = sub_1B8C23C18();
  v35 = sub_1B8C25498();
  v36 = os_log_type_enabled(v34, v35);
  v190 = v18;
  v191 = v19;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v187 = v33;
    v38 = v37;
    v39 = swift_slowAlloc();
    v188 = v5;
    v40 = v39;
    aBlock[0] = v39;
    *v38 = 136446722;
    *(v38 + 4) = sub_1B8B5DD48(0xD00000000000005BLL, 0x80000001B8C35CB0, aBlock);
    *(v38 + 12) = 2082;
    sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8], MEMORY[0x1E699C208]);
    v41 = sub_1B8C259E8();
    v42 = v18;
    v44 = v43;
    v45 = v19[1];
    v45(v32, v42);
    v46 = sub_1B8B5DD48(v41, v44, aBlock);

    *(v38 + 14) = v46;
    *(v38 + 22) = 2080;
    v195 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84F0, &unk_1B8C2F0D0);
    v47 = sub_1B8C25178();
    v49 = sub_1B8B5DD48(v47, v48, aBlock);

    *(v38 + 24) = v49;
    _os_log_impl(&dword_1B8B22000, v34, v35, "%{public}s action: %{public}s, associateWithAppleAccount %s", v38, 0x20u);
    swift_arrayDestroy();
    v50 = v40;
    v6 = v188;
    MEMORY[0x1B8CCB0E0](v50, -1, -1);
    v51 = v38;
    v33 = v187;
    MEMORY[0x1B8CCB0E0](v51, -1, -1);
  }

  else
  {

    v45 = v19[1];
    v45(v32, v18);
  }

  if (sub_1B8BF2540())
  {
    v52 = sub_1B8C23C18();
    v53 = sub_1B8C25498();
    if (!os_log_type_enabled(v52, v53))
    {
LABEL_35:

      return result;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_1B8B22000, v52, v53, "Form is already presented. Moving to full screen", v54, 2u);
    v55 = v54;
LABEL_34:
    MEMORY[0x1B8CCB0E0](v55, -1, -1);
    goto LABEL_35;
  }

  swift_getKeyPath();
  aBlock[0] = v6;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  if (v6[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] == 1)
  {
    v188 = v6;
    v56 = v190;
    v192(v30, v194, v190);
    v57 = sub_1B8C23C18();
    v58 = sub_1B8C25498();
    v59 = os_log_type_enabled(v57, v58);
    v187 = v33;
    v159 = v45;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315138;
      sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8], MEMORY[0x1E699C208]);
      v62 = sub_1B8C259E8();
      v63 = v56;
      v65 = v64;
      v45(v30, v63);
      v66 = sub_1B8B5DD48(v62, v65, aBlock);
      v56 = v63;

      *(v60 + 4) = v66;
      _os_log_impl(&dword_1B8B22000, v57, v58, "[%s] performed while loading. Will retry momentarily", v60, 0xCu);
      v67 = __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1B8CCB0E0](v61, -1, -1, v67);
      MEMORY[0x1B8CCB0E0](v60, -1, -1);
    }

    else
    {

      v68 = (v45)(v30, v56);
    }

    if (v186 > 9)
    {
      sub_1B8BD0C60(v68, v69, v70);
      v129 = swift_allocError();
      *v130 = 0;
      sub_1B8BE9BA8(v129, 1);

      v131 = v164;
      v192(v164, v194, v56);
      v52 = sub_1B8C23C18();
      v120 = sub_1B8C25488();
      if (!os_log_type_enabled(v52, v120))
      {

        v159(v131, v56);
        return result;
      }

      v132 = v56;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      aBlock[0] = v123;
      *v122 = 136315138;
      sub_1B8BFA3AC(&qword_1EBAA83E8, MEMORY[0x1E699C1F8], MEMORY[0x1E699C208]);
      v133 = sub_1B8C259E8();
      v135 = v134;
      v159(v131, v132);
      v136 = sub_1B8B5DD48(v133, v135, aBlock);

      *(v122 + 4) = v136;
      v128 = "[%s] action performed while controller stuck in loading state";
LABEL_33:
      _os_log_impl(&dword_1B8B22000, v52, v120, v128, v122, 0xCu);
      v137 = __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x1B8CCB0E0](v123, -1, -1, v137);
      v55 = v122;
      goto LABEL_34;
    }

    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v164 = sub_1B8C25538();
    v71 = v163;
    sub_1B8C25018();
    v72 = v165;
    *v165 = 500;
    v73 = v166;
    v74 = v167;
    (*(v166 + 104))(v72, *MEMORY[0x1E69E7F38], v167);
    MEMORY[0x1B8CC9D30](v71, v72);
    (*(v73 + 8))(v72, v74);
    v75 = *(v185 + 8);
    v185 += 8;
    v167 = v75;
    (v75)(v71, v181);
    v192(v183, v194, v56);
    v76 = v175;
    v77 = v176;
    (*(v175 + 16))(v184, v182, v176);
    v78 = v191;
    v79 = v56;
    v80 = (*(v191 + 80) + 24) & ~*(v191 + 80);
    v81 = (v20 + *(v76 + 80) + v80) & ~*(v76 + 80);
    v82 = (v174 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    v84 = v188;
    *(v83 + 16) = v188;
    (v78[4])(v83 + v80, v183, v79);
    (*(v76 + 32))(v83 + v81, v184, v77);
    *(v83 + v82) = v186;
    v6 = v84;
    aBlock[4] = sub_1B8BFB1FC;
    aBlock[5] = v83;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_45;
    v85 = _Block_copy(aBlock);
    v86 = v84;

    v87 = v168;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v88 = v170;
    v89 = v173;
    sub_1B8C256D8();
    v90 = v180;
    v91 = v164;
    MEMORY[0x1B8CCA1C0](v180, v87, v88, v85);
    _Block_release(v85);

    (*(v172 + 8))(v88, v89);
    (*(v169 + 8))(v87, v171);
    (v167)(v90, v181);
  }

  v92 = sub_1B8BE640C(2u);
  v93 = v190;
  if ((v92 & 1) == 0)
  {
    v119 = v177;
    v192(v177, v194, v190);
    v52 = sub_1B8C23C18();
    v120 = sub_1B8C25478();
    if (!os_log_type_enabled(v52, v120))
    {

      (v191[1])(v119, v93);
      return result;
    }

    v121 = v93;
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    aBlock[0] = v123;
    *v122 = 136315138;
    v124 = sub_1B8C236D8();
    v126 = v125;
    (v191[1])(v119, v121);
    v127 = sub_1B8B5DD48(v124, v126, aBlock);

    *(v122 + 4) = v127;
    v128 = "Ignoring %s action as FBKEvaluationController is not idling";
    goto LABEL_33;
  }

  v94 = v178;
  v95 = v194;
  v96 = v192;
  v192(v178, v194, v190);
  v97 = v191;
  (v191[7])(v94, 0, 1, v93);
  sub_1B8BE7690(v94);
  v98 = v179;
  v96(v179, v95, v93);
  v99 = (v97[11])(v98, v93);
  if (v99 != *MEMORY[0x1E699C1F0] && v99 != *MEMORY[0x1E699C1C8] && v99 != *MEMORY[0x1E699C1D8])
  {
    if (v99 != *MEMORY[0x1E699C1E8] && v99 != *MEMORY[0x1E699C1D0] && v99 != *MEMORY[0x1E699C1E0])
    {
      v100 = sub_1B8C23C18();
      v101 = sub_1B8C25498();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock[0] = v103;
        *v102 = 136446210;
        *(v102 + 4) = sub_1B8B5DD48(0xD00000000000005BLL, 0x80000001B8C35CB0, aBlock);
        _os_log_impl(&dword_1B8B22000, v100, v101, "%{public}s Unknown Action case", v102, 0xCu);
        v104 = __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x1B8CCB0E0](v103, -1, -1, v104);
        MEMORY[0x1B8CCB0E0](v102, -1, -1);
      }

      sub_1B8BD0C60(v105, v106, v107);
      v108 = swift_allocError();
      v110 = v109;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v160, qword_1EBAB39C8);
      v111 = sub_1B8C23C18();
      v112 = sub_1B8C25478();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = v97;
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        aBlock[0] = v115;
        *v114 = 136446210;
        *(v114 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C35C90, aBlock);
        _os_log_impl(&dword_1B8B22000, v111, v112, "Unexpected Error: %{public}s", v114, 0xCu);
        v116 = __swift_destroy_boxed_opaque_existential_0(v115);
        MEMORY[0x1B8CCB0E0](v115, -1, -1, v116);
        v117 = v114;
        v97 = v113;
        MEMORY[0x1B8CCB0E0](v117, -1, -1);
      }

      *v110 = 0;
      sub_1B8BE9BA8(v108, 1);

      (v97[1])(v179, v190);
      return result;
    }

    v156 = v183;
    v192(v183, v194, v93);
    v157 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v147 = swift_allocObject();
    *(v147 + 16) = v6;
    (v97[4])(v147 + v157, v156, v93);
    v158 = v6;
    v149 = sub_1B8BFB178;
LABEL_44:
    sub_1B8BEB6B0(v182, v149, v147);

    return result;
  }

  if (v162)
  {
    v138 = v183;
    v192(v183, v194, v93);
    v139 = v175;
    v140 = v176;
    (*(v175 + 16))(v184, v182, v176);
    v141 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v142 = v141 + v20;
    v143 = *(v139 + 80);
    v144 = v143 + v141 + v20 + 1;
    v145 = v93;
    v146 = v144 & ~v143;
    v147 = swift_allocObject();
    *(v147 + 16) = v6;
    (v97[4])(v147 + v141, v138, v145);
    *(v147 + v142) = v189;
    (*(v139 + 32))(v147 + v146, v184, v140);
    v148 = v6;
    v149 = sub_1B8BFB088;
    goto LABEL_44;
  }

  v150 = sub_1B8C23C18();
  v151 = sub_1B8C25498();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    MEMORY[0x1B8CCB0E0](v152, -1, -1);
  }

  v153 = sub_1B8C236A8();
  v154 = v161;
  (*(*(v153 - 8) + 56))(v161, 1, 1, v153);
  *(swift_allocObject() + 16) = v6;
  v155 = v6;
  sub_1B8C23728();

  sub_1B8B3433C(v154, &unk_1EBAA84E0, &qword_1B8C2F0A0);
  return result;
}

uint64_t sub_1B8BEE6F8(void *a1, int a2, void *a3, uint64_t a4)
{
  v23 = a2;
  v26 = sub_1B8C24FD8();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B8C25008();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B8C236E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v24 = sub_1B8C25538();
  (*(v12 + 16))(&v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v11);
  v14 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v23 & 1;
  *(v15 + 32) = a3;
  (*(v12 + 32))(v15 + v14, &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  aBlock[4] = sub_1B8BFD0D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_228;
  v16 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v17 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v19 = v25;
  v18 = v26;
  sub_1B8C256D8();
  v20 = v24;
  MEMORY[0x1B8CCA210](0, v10, v19, v16);
  _Block_release(v16);

  (*(v29 + 8))(v19, v18);
  return (*(v27 + 8))(v10, v28);
}

void sub_1B8BEEAB0(void *a1, char a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  if (a2)
  {
    sub_1B8BE9BA8(a1, 1);
  }

  else if (a1)
  {
    v10 = sub_1B8C236A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    *(swift_allocObject() + 16) = a3;
    sub_1B8B2DE30(a1);
    v11 = a3;
    sub_1B8C23958();

    sub_1B8B30A54(a1);
    sub_1B8B3433C(v9, &unk_1EBAA84E0, &qword_1B8C2F0A0);
  }
}

uint64_t sub_1B8BEEC14(void *a1, int a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v32 = a4;
  v33 = a6;
  v38 = a5;
  v36 = a3;
  v35 = a2;
  v31 = a1;
  v40 = sub_1B8C24FD8();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8C25008();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C23738();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8C236E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v34 = sub_1B8C25538();
  (*(v14 + 16))(v16, v32, v13);
  (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v10);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = v17 + v15;
  v19 = (*(v11 + 80) + v18 + 1) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v35 & 1;
  v21 = v36;
  *(v20 + 32) = v36;
  (*(v14 + 32))(v20 + v17, v16, v13);
  *(v20 + v18) = v38;
  (*(v11 + 32))(v20 + v19, v30, v29);
  aBlock[4] = sub_1B8BFD208;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_252;
  v22 = _Block_copy(aBlock);
  sub_1B8B2DE30(v31);
  v23 = v21;

  v24 = v37;
  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v26 = v39;
  v25 = v40;
  sub_1B8C256D8();
  v27 = v34;
  MEMORY[0x1B8CCA210](0, v24, v26, v22);
  _Block_release(v22);

  (*(v43 + 8))(v26, v25);
  return (*(v41 + 8))(v24, v42);
}

void sub_1B8BEF0B8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_1B8C23738();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1B8BE9BA8(a1, 1);
  }

  else if (a1)
  {
    sub_1B8BF08C0(a4, a1, v7);

    sub_1B8B30A54(a1);
  }

  else
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v19 = sub_1B8C23C38();
    __swift_project_value_buffer(v19, qword_1EDC85D40);
    (*(v16 + 16))(v18, a6, v15);
    v20 = sub_1B8C23C18();
    v21 = sub_1B8C25498();
    if (os_log_type_enabled(v20, v21))
    {
      v44 = v21;
      v45 = v19;
      v46 = a3;
      v22 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v22 = 136446210;
      sub_1B8C23718();
      v23 = sub_1B8C23568();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v14, 1, v23) == 1)
      {
        sub_1B8B3433C(v14, &qword_1EBAA79C0, &qword_1B8C2D150);
        v25 = 0;
        v26 = 0xE000000000000000;
      }

      else
      {
        v25 = sub_1B8C23538();
        v26 = v30;
        (*(v24 + 8))(v14, v23);
      }

      (*(v16 + 8))(v18, v15);
      v31 = sub_1B8B5DD48(v25, v26, &v47);

      *(v22 + 4) = v31;
      _os_log_impl(&dword_1B8B22000, v20, v44, "Interaction not found: %{public}s", v22, 0xCu);
      v32 = v43;
      v33 = __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B8CCB0E0](v32, -1, -1, v33);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);

      v19 = v45;
    }

    else
    {

      v27 = (*(v16 + 8))(v18, v15);
    }

    sub_1B8BD0C60(v27, v28, v29);
    v34 = swift_allocError();
    v36 = v35;
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_1EBAB39C8);
    v37 = sub_1B8C23C18();
    v38 = sub_1B8C25478();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C363D0, &v47);
      _os_log_impl(&dword_1B8B22000, v37, v38, "Unexpected Error: %{public}s", v39, 0xCu);
      v41 = __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B8CCB0E0](v40, -1, -1, v41);
      MEMORY[0x1B8CCB0E0](v39, -1, -1);
    }

    *v36 = 0;
    sub_1B8BE9BA8(v34, 1);
  }
}

void sub_1B8BEF5BC(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v7 = sub_1B8C24FD8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B8C25008();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C23738();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA79C0, &qword_1B8C2D150);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v58 - v13;
  v14 = sub_1B8C23568();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v17 = sub_1B8C23C38();
  __swift_project_value_buffer(v17, qword_1EDC85D40);
  v18 = sub_1B8C23C18();
  v19 = sub_1B8C25498();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v58 = a1;
    v59 = v10;
    v21 = v4;
    v22 = v15;
    v23 = a3;
    v24 = v20;
    v25 = v14;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v24 = 136446210;
    *(v24 + 4) = sub_1B8B5DD48(0xD00000000000002FLL, 0x80000001B8C35D10, aBlock);
    _os_log_impl(&dword_1B8B22000, v18, v19, "%{public}s", v24, 0xCu);
    v27 = __swift_destroy_boxed_opaque_existential_0(v26);
    v28 = v26;
    v14 = v25;
    MEMORY[0x1B8CCB0E0](v28, -1, -1, v27);
    v29 = v24;
    a3 = v23;
    v15 = v22;
    v4 = v21;
    a1 = v58;
    v10 = v59;
    MEMORY[0x1B8CCB0E0](v29, -1, -1);
  }

  if ([objc_opt_self() isMainThread])
  {
    if (sub_1B8BE640C(1u))
    {
      v30 = v61;
      sub_1B8C23718();
      if ((*(v15 + 48))(v30, 1, v14) == 1)
      {
        sub_1B8B3433C(v30, &qword_1EBAA79C0, &qword_1B8C2D150);
        sub_1B8BE640C(0);
        v70(0, 0);
      }

      else
      {
        v52 = v60;
        (*(v15 + 32))(v60, v30, v14);
        sub_1B8C23758();
        v53 = swift_allocObject();
        v54 = v4;
        v55 = v53;
        v56 = v70;
        v53[2] = v54;
        v53[3] = v56;
        v53[4] = a3;
        v57 = v54;

        MEMORY[0x1B8CC8390](v52, sub_1B8BFB3D4, v55);

        (*(v15 + 8))(v52, v14);
      }
    }

    else
    {
      v44 = sub_1B8C23C18();
      v45 = sub_1B8C25498();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1B8B22000, v44, v45, "Failed to transition to .loading. Other operations in-flight.", v46, 2u);
        MEMORY[0x1B8CCB0E0](v46, -1, -1);
      }

      sub_1B8BD0C60(v47, v48, v49);
      v50 = swift_allocError();
      *v51 = 6;
      v70(v50, 1);
    }
  }

  else
  {
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v31 = sub_1B8C25538();
    v33 = v62;
    v32 = v63;
    (*(v63 + 16))(v62, a1, v10);
    v34 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v4;
    (*(v32 + 32))(v35 + v34, v33, v10);
    v36 = (v35 + ((v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = v70;
    v36[1] = a3;
    aBlock[4] = sub_1B8BFB304;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor_51_1;
    v37 = _Block_copy(aBlock);
    v38 = v4;
    v39 = v37;
    v40 = v38;

    v41 = v64;
    sub_1B8C24FF8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    v42 = v66;
    v43 = v69;
    sub_1B8C256D8();
    MEMORY[0x1B8CCA210](0, v41, v42, v39);
    _Block_release(v39);

    (*(v68 + 8))(v42, v43);
    (*(v65 + 8))(v41, v67);
  }
}

uint64_t sub_1B8BEFDC4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1B8C24FD8();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B8C25008();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v22 = sub_1B8C25538();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_1B8BFD0C4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_222;
  v17 = _Block_copy(aBlock);
  sub_1B8B2DE30(a1);
  v18 = a3;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  v19 = v22;
  MEMORY[0x1B8CCA210](0, v15, v12, v17);
  _Block_release(v17);

  (*(v24 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v23);
}

void sub_1B8BF00C0(void *a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a2)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8C23C38();
    __swift_project_value_buffer(v6, qword_1EDC85D40);
    v7 = a1;
    v8 = sub_1B8C23C18();
    v9 = sub_1B8C25478();
    sub_1B8B30A54(a1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1B8B22000, v8, v9, "checkIfFeatureHadFeedback returned error: %{public}@", v10, 0xCu);
      sub_1B8B3433C(v11, &qword_1EBAA69A0, &qword_1B8C29670);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    sub_1B8BE640C(0);
    v14 = a1;
    v15 = 1;
LABEL_20:
    a4(v14, v15);
    return;
  }

  if (!a1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8C23C38();
    __swift_project_value_buffer(v27, qword_1EDC85D40);
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25468();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B8B22000, v28, v29, "checkIfFeatureHadFeedback returned no response", v30, 2u);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
    }

    sub_1B8BE640C(0);
    v14 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v16 = qword_1EDC85598;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8C23C38();
  __swift_project_value_buffer(v18, qword_1EDC85D40);
  v19 = v17;
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25458();
  sub_1B8B30A54(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    *(v22 + 4) = v19;
    *v23 = a1;
    v24 = v19;
    _os_log_impl(&dword_1B8B22000, v20, v21, "checkIfFeatureHadFeedback returned: %{public}@", v22, 0xCu);
    sub_1B8B3433C(v23, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
    MEMORY[0x1B8CCB0E0](v22, -1, -1);
  }

  v25 = v19;
  sub_1B8BE91F8(a1, 0);
  sub_1B8BE640C(0);
  v26 = v25;
  a4(a1, 0);
  sub_1B8B30A54(a1);

  sub_1B8B30A54(a1);
}

void sub_1B8BF04EC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23578();
  }
}

void (*sub_1B8BF05F0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v5 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView;
  *(v4 + 32) = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView;
  *(v4 + 40) = *(v1 + v5);
  return sub_1B8BF06F4;
}

void sub_1B8BF0728(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 40);
  if (a2)
  {
    if ((v8 ^ *(v7 + v6)))
    {
      goto LABEL_5;
    }

LABEL_6:
    *(v7 + v6) = v8;
    goto LABEL_7;
  }

  if (((v8 ^ *(v7 + v6)) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v5 = v7;
  sub_1B8C23578();

LABEL_7:
  free(v5);
}

uint64_t sub_1B8BF0820(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  return *(v2 + *a2);
}

double sub_1B8BF08C0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1B8C236E8();
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_1B8C253A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_1B8C25368();
  v15 = v4;
  v16 = a2;
  v17 = sub_1B8C25358();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = v18 + v9;
  v20 = (v18 + v9) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v17;
  *(v21 + 3) = v22;
  *(v21 + 4) = v15;
  *(v21 + 5) = v16;
  (*(v8 + 32))(&v21[v18], v10, v25);
  v21[v19] = v27;
  *&v21[v20 + 8] = ObjectType;
  sub_1B8BE33EC(0, 0, v13, &unk_1B8C2F418, v21);

  return result;
}

uint64_t sub_1B8BF0B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 208) = a7;
  *(v7 + 128) = a5;
  *(v7 + 136) = a6;
  *(v7 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  *(v7 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  *(v7 + 152) = swift_task_alloc();
  sub_1B8C25368();
  *(v7 + 160) = sub_1B8C25358();
  v9 = sub_1B8C25328();
  *(v7 + 168) = v9;
  *(v7 + 176) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B8BF0C18, v9, v8);
}

uint64_t sub_1B8BF0C18()
{
  v15 = v0;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  v0[23] = __swift_project_value_buffer(v1, qword_1EDC85D40);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B8B5DD48(0xD00000000000003FLL, 0x80000001B8C36140, &v14);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  if (!sub_1B8BE6C4C(2u))
  {
    return sub_1B8C258A8();
  }

  v7 = v0[19];
  v8 = sub_1B8C23498();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_1B8BF0E8C;
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];

  return FBKSInteraction.feedbackForm(interaction:action:attachmentDirectory:)(v12, v11, v10);
}

uint64_t sub_1B8BF0E8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 200) = a1;

  sub_1B8B3433C(v3, &qword_1EBAA85A0, &qword_1B8C28C20);
  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1B8BF0FE8, v5, v4);
}

uint64_t sub_1B8BF0FE8()
{
  v70 = v0;
  v1 = *(v0 + 208);
  if (v1 != 2 && (v1 & 1) == 0 && MEMORY[0x1B8CCA870]())
  {
    v2 = *(v0 + 200);
    v3 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    *(v2 + v3) = 0;
  }

  v4 = *(v0 + 200);
  v5 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
  v6 = FBKFeedbackDraftViewController.init(feedbackForm:)(v4);
  v7 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_showsCompletionPage;
  swift_beginAccess();
  v6[v7] = 0;
  if (*&v6[OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController__xpcConnection])
  {
    v8 = sub_1B8BB192C();
    if (v8)
    {
      [v8 setShowsCompletionPage_];
      swift_unknownObjectRelease();
    }
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v13 = sub_1B8C236E8();
  (*(*(v13 - 8) + 16))(v10, v9, v13);
  v14 = type metadata accessor for FBKEvaluationController.FormContext(0);
  *(v10 + *(v14 + 20)) = v11;
  *(v10 + *(v14 + 24)) = v6;
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v12;
  *(v15 + 24) = v10;
  *(v0 + 88) = v12;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  v67 = v6;
  v16 = v11;
  sub_1B8C23578();

  sub_1B8B3433C(v10, &qword_1EBAA84D8, &qword_1B8C2F020);
  swift_getKeyPath();
  *(v0 + 96) = v12;
  sub_1B8C23588();

  if (*(v12 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType) == 1)
  {

    v17 = sub_1B8C23C18();
    v18 = sub_1B8C25468();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8B22000, v17, v18, "Will use SwiftUI APIs", v19, 2u);
      MEMORY[0x1B8CCB0E0](v19, -1, -1);
    }

    v20 = *(v0 + 120);
    v21 = *(v0 + 128);

    v22 = v21;
    sub_1B8BE72B4(v21);
    v23 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented;
    v24 = *(v0 + 200);
    if (*(v20 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented) == 1)
    {

      *(v20 + v23) = 1;
    }

    else
    {
      v31 = *(v0 + 120);
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 1;
      *(v0 + 104) = v31;
      sub_1B8C23578();
    }

    goto LABEL_42;
  }

  v25 = sub_1B8C23C18();
  v26 = sub_1B8C25468();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1B8B22000, v25, v26, "Will use UIKit or AppKit APIs", v27, 2u);
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
  }

  v28 = *(v0 + 120);

  swift_getKeyPath();
  *(v0 + 112) = v28;
  sub_1B8C23588();

  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;

      swift_unknownObjectRetain_n();
    }

    else
    {
      swift_getObjectType();
      v40 = swift_conformsToProtocol2();
      if (!v40)
      {
        return sub_1B8C258A8();
      }

      v41 = v40;
      v42 = *(v0 + 120);

      ObjectType = swift_getObjectType();
      v30 = (*(v41 + 16))(v42, ObjectType, v41);
    }

    v44 = sub_1B8C23C18();
    v45 = sub_1B8C25468();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B8B22000, v44, v45, "Will present iOS UIKit ViewController as Sheet", v46, 2u);
      MEMORY[0x1B8CCB0E0](v46, -1, -1);
    }

    v47 = v67;
    [v30 presentViewController:v47 animated:1 completion:0];
    v48 = sub_1B8BF1AB4(v30);

    if (v48)
    {
      v49 = sub_1B8C23C18();
      v50 = sub_1B8C25468();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1B8B22000, v49, v50, "Is compact horizontal size class. Will use detents", v51, 2u);
        MEMORY[0x1B8CCB0E0](v51, -1, -1);
      }

      v52 = [v47 presentationController];
      if (v52)
      {
        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (v53)
        {
          v54 = v53;
          if (qword_1EBAA5958 != -1)
          {
            swift_once();
          }

          v66 = *(v0 + 120);
          v68 = *(v0 + 200);
          v65 = qword_1EBAB39F8;
          sub_1B8B46130(0, &qword_1EBAA85A8, 0x1E69DCF58);
          v55 = sub_1B8C25598();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1B8C2BBD0;
          *(v56 + 32) = [objc_opt_self() largeDetent];
          *(v56 + 40) = v55;
          v57 = v55;
          v58 = sub_1B8C252B8();

          [v54 setDetents_];

          [v54 setPrefersGrabberVisible_];
          [v54 setSelectedDetentIdentifier_];
          [v54 setLargestUndimmedDetentIdentifier_];
          [v54 setDelegate_];

          swift_unknownObjectRelease();
          goto LABEL_42;
        }
      }

      v33 = sub_1B8C23C18();
      v60 = sub_1B8C25478();
      v61 = os_log_type_enabled(v33, v60);
      v62 = *(v0 + 200);
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1B8B22000, v33, v60, "No Sheet Presentation Controller. Cannot customize detents", v63, 2u);
        MEMORY[0x1B8CCB0E0](v63, -1, -1);

        swift_unknownObjectRelease();
        goto LABEL_42;
      }
    }

    else
    {
      v33 = *(v0 + 200);
    }

    swift_unknownObjectRelease();
LABEL_41:

    goto LABEL_42;
  }

  v33 = sub_1B8C23C18();
  v34 = sub_1B8C25478();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 200);
  if (!v35)
  {

    goto LABEL_41;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v69 = v38;
  *v37 = 136446210;
  *(v37 + 4) = sub_1B8B5DD48(0xD00000000000003FLL, 0x80000001B8C36140, &v69);
  _os_log_impl(&dword_1B8B22000, v33, v34, "%{public}s: delegate is nil. Cannot open form", v37, 0xCu);
  v39 = __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x1B8CCB0E0](v38, -1, -1, v39);
  MEMORY[0x1B8CCB0E0](v37, -1, -1);

LABEL_42:

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1B8BF1AB4(void *a1)
{
  if ((sub_1B8BF1BDC() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 1)
  {
    return 0;
  }

  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EDC85D40);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25468();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8B22000, v5, v6, "Is compact horizontal size class. Will use presentation detents", v7, 2u);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  return 1;
}

uint64_t sub_1B8BF1BDC()
{
  v1 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EDC85D40);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25468();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B8B22000, v4, v5, "blockPresentationDetentUsage. Will not use presentation detents", v6, 2u);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
    }
  }

  return v2 ^ 1u;
}

uint64_t sub_1B8BF1D0C(uint64_t a1, int a2, unsigned int *a3)
{
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *a3, v6);
  v10 = sub_1B8BED0A4(v9, a1, a2, 2, 0);
  return (*(v7 + 8))(v9, v6, v10);
}

uint64_t sub_1B8BF1E3C(uint64_t a1, int a2, int a3, unsigned int *a4)
{
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *a4, v8);
  v12 = sub_1B8BED0A4(v11, a1, a2, a3, 0);
  return (*(v9 + 8))(v11, v8, v12);
}

unint64_t sub_1B8BF1F4C(uint64_t a1)
{
  v3 = sub_1B8C236E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8500, &qword_1B8C2F108);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  if ([objc_opt_self() isMainThread])
  {
    v34 = v6;
    v35 = v13;
    swift_getKeyPath();
    v16 = a1;
    v37[0] = v1;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    v17 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
    swift_beginAccess();
    v18 = *(v4 + 16);
    v36 = v16;
    v18(v15, v16, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    v19 = *(v7 + 48);
    sub_1B8B34450(v1 + v17, v9, &qword_1EBAA84D0, &qword_1B8C2F018);
    sub_1B8B34450(v15, &v9[v19], &qword_1EBAA84D0, &qword_1B8C2F018);
    v20 = *(v4 + 48);
    if (v20(v9, 1, v3) == 1)
    {
      sub_1B8B3433C(v15, &qword_1EBAA84D0, &qword_1B8C2F018);
      v21 = v20(&v9[v19], 1, v3);
      v22 = v36;
      if (v21 == 1)
      {
        sub_1B8B3433C(v9, &qword_1EBAA84D0, &qword_1B8C2F018);
        v23 = 1;
        return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v22, v23 & 1);
      }
    }

    else
    {
      v31 = v35;
      sub_1B8B34450(v9, v35, &qword_1EBAA84D0, &qword_1B8C2F018);
      if (v20(&v9[v19], 1, v3) != 1)
      {
        v32 = v34;
        (*(v4 + 32))(v34, &v9[v19], v3);
        sub_1B8BFA3AC(&qword_1EBAA8508, MEMORY[0x1E699C1F8], MEMORY[0x1E699C200]);
        v23 = sub_1B8C250E8();
        v33 = *(v4 + 8);
        v33(v32, v3);
        sub_1B8B3433C(v15, &qword_1EBAA84D0, &qword_1B8C2F018);
        v33(v31, v3);
        sub_1B8B3433C(v9, &qword_1EBAA84D0, &qword_1B8C2F018);
        v22 = v36;
        return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v22, v23 & 1);
      }

      sub_1B8B3433C(v15, &qword_1EBAA84D0, &qword_1B8C2F018);
      (*(v4 + 8))(v31, v3);
      v22 = v36;
    }

    sub_1B8B3433C(v9, &qword_1EBAA8500, &qword_1B8C2F108);
    v23 = 0;
    return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(v22, v23 & 1);
  }

  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v24 = sub_1B8C23C38();
  __swift_project_value_buffer(v24, qword_1EDC85D40);
  v25 = sub_1B8C23C18();
  v26 = sub_1B8C25478();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1B8B5DD48(0xD000000000000018, 0x80000001B8C35D40, v37);
    _os_log_impl(&dword_1B8B22000, v25, v26, "%{public}s called off main thread.  Assuming no evaluation response.", v27, 0xCu);
    v29 = __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B8CCB0E0](v28, -1, -1, v29);
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
  }

  return _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(a1, 0);
}

uint64_t sub_1B8BF2540()
{
  v1 = v0;
  v2 = sub_1B8C24408();
  v53 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - v5;
  v6 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - v11;
  swift_getKeyPath();
  v54[0] = v0;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v13 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  if (!v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType])
  {
    swift_getKeyPath();
    v54[0] = v0;
    sub_1B8C23588();

    v20 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
    swift_beginAccess();
    sub_1B8B34450(&v1[v20], v12, &qword_1EBAA84D8, &qword_1B8C2F020);
    if ((*(v7 + 48))(v12, 1, v6))
    {
      sub_1B8B3433C(v12, &qword_1EBAA84D8, &qword_1B8C2F020);
LABEL_8:
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v21 = sub_1B8C23C38();
      __swift_project_value_buffer(v21, qword_1EDC85D40);
      v22 = sub_1B8C23C18();
      v23 = sub_1B8C25468();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B8B22000, v22, v23, "Form UI View Controller is nil. Assuming not presented yet", v24, 2u);
        MEMORY[0x1B8CCB0E0](v24, -1, -1);
      }

      goto LABEL_29;
    }

    sub_1B8BFCC3C(v12, v9, type metadata accessor for FBKEvaluationController.FormContext);
    sub_1B8B3433C(v12, &qword_1EBAA84D8, &qword_1B8C2F020);
    v32 = *&v9[*(v6 + 24)];
    v27 = v32;
    sub_1B8BFD64C(v9, type metadata accessor for FBKEvaluationController.FormContext);
    if (!v32)
    {
      goto LABEL_8;
    }

    v33 = [v27 sheetPresentationController];
    if (!v33)
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v44 = sub_1B8C23C38();
      __swift_project_value_buffer(v44, qword_1EDC85D40);
      v45 = sub_1B8C23C18();
      v46 = sub_1B8C25478();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1B8B22000, v45, v46, "Form UI View Controller is presented but has no Sheet Presentation Controller. Cannot go full screen", v47, 2u);
        MEMORY[0x1B8CCB0E0](v47, -1, -1);

        goto LABEL_29;
      }

LABEL_28:
LABEL_29:
      v19 = 0;
      return v19 & 1;
    }

    v34 = v33;
    v35 = [v33 selectedDetentIdentifier];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B8C25128();
      v39 = v38;
      if (v37 == sub_1B8C25128() && v39 == v40)
      {

LABEL_36:

        goto LABEL_28;
      }

      v48 = sub_1B8C25A08();

      if (v48)
      {
        goto LABEL_36;
      }
    }

    v49 = sub_1B8BF2DF8();

    v19 = v49;
    return v19 & 1;
  }

  if (v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] != 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v25 = sub_1B8C23C38();
    __swift_project_value_buffer(v25, qword_1EDC85D40);
    v26 = v0;
    v27 = sub_1B8C23C18();
    v28 = sub_1B8C25498();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54[0] = v53;
      *v29 = 136446466;
      *(v29 + 4) = sub_1B8B5DD48(0xD000000000000020, 0x80000001B8C364E0, v54);
      *(v29 + 12) = 2080;
      swift_getKeyPath();
      v54[3] = v26;
      sub_1B8C23588();

      if (v0[v13])
      {
        if (v0[v13] == 1)
        {
          v30 = 0xE700000000000000;
          v31 = 0x49557466697753;
        }

        else
        {
          v30 = 0xE600000000000000;
          v31 = 0x74694B707041;
        }
      }

      else
      {
        v30 = 0xE500000000000000;
        v31 = 0x74694B4955;
      }

      v41 = v53;
      v42 = sub_1B8B5DD48(v31, v30, v54);

      *(v29 + 14) = v42;
      _os_log_impl(&dword_1B8B22000, v27, v28, "%{public}s not applicable for api type: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v41, -1, -1);
      MEMORY[0x1B8CCB0E0](v29, -1, -1);
    }

    goto LABEL_28;
  }

  swift_getKeyPath();
  v54[0] = v0;
  sub_1B8C23588();

  if (v0[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] != 1)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  v54[0] = v0;
  sub_1B8C23588();

  v14 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v15 = v53;
  v16 = v51;
  (*(v53 + 16))(v51, &v1[v14], v2);
  v17 = v52;
  sub_1B8C243E8();
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
  LOBYTE(v14) = sub_1B8C250E8();
  v18 = *(v15 + 8);
  v18(v17, v2);
  v18(v16, v2);
  if (v14)
  {
    goto LABEL_29;
  }

  v19 = sub_1B8BF2DF8();
  return v19 & 1;
}

uint64_t sub_1B8BF2DF8()
{
  v1 = v0;
  v2 = sub_1B8C24408();
  v48 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - v6;
  v8 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController___observationRegistrar;
  aBlock[0] = v1;
  v49 = sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  v50 = v15;
  sub_1B8C23588();

  v16 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType;
  if (!v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType])
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1B8C23588();

    v21 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
    swift_beginAccess();
    sub_1B8B34450(&v1[v21], v14, &qword_1EBAA84D8, &qword_1B8C2F020);
    if ((*(v9 + 48))(v14, 1, v8))
    {
      sub_1B8B3433C(v14, &qword_1EBAA84D8, &qword_1B8C2F020);
    }

    else
    {
      sub_1B8BFCC3C(v14, v11, type metadata accessor for FBKEvaluationController.FormContext);
      sub_1B8B3433C(v14, &qword_1EBAA84D8, &qword_1B8C2F020);
      v35 = *&v11[*(v8 + 24)];
      v36 = v35;
      sub_1B8BFD64C(v11, type metadata accessor for FBKEvaluationController.FormContext);
      if (v35)
      {
        v37 = [v36 sheetPresentationController];
        if (!v37)
        {
          if (qword_1EDC85598 != -1)
          {
            swift_once();
          }

          v43 = sub_1B8C23C38();
          __swift_project_value_buffer(v43, qword_1EDC85D40);
          v44 = sub_1B8C23C18();
          v45 = sub_1B8C25478();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1B8B22000, v44, v45, "Form UI View Controller has no Sheet Presentation Controller. Cannot go full screen", v46, 2u);
            MEMORY[0x1B8CCB0E0](v46, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v38 = v37;
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_1B8BB75C0;
        *(v40 + 24) = v39;
        aBlock[4] = sub_1B8B621CC;
        v52 = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B8BE5460;
        aBlock[3] = &block_descriptor_176;
        v30 = _Block_copy(aBlock);
        v29 = v52;
        v28 = v38;

        [v28 animateChanges:v30];

        _Block_release(v30);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        result = 1;
        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v22 = sub_1B8C23C38();
    __swift_project_value_buffer(v22, qword_1EDC85D40);
    v23 = sub_1B8C23C18();
    v24 = sub_1B8C25478();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B8B22000, v23, v24, "Form UI View Controller is nil. Cannot go full screen", v25, 2u);
      MEMORY[0x1B8CCB0E0](v25, -1, -1);
    }

    return 0;
  }

  if (v1[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] != 1)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v26 = sub_1B8C23C38();
    __swift_project_value_buffer(v26, qword_1EDC85D40);
    v27 = v1;
    v28 = sub_1B8C23C18();
    v29 = sub_1B8C25498();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v30 = 136446466;
    *(v30 + 1) = sub_1B8B5DD48(0xD000000000000018, 0x80000001B8C360B0, aBlock);
    *(v30 + 6) = 2080;
    swift_getKeyPath();
    v53 = v27;
    sub_1B8C23588();

    if (v1[v16])
    {
      if (v1[v16] == 1)
      {
        v31 = 0xE700000000000000;
        v32 = 0x49557466697753;
      }

      else
      {
        v31 = 0xE600000000000000;
        v32 = 0x74694B707041;
      }

      goto LABEL_26;
    }

LABEL_24:
    v31 = 0xE500000000000000;
    v32 = 0x74694B4955;
LABEL_26:
    v42 = sub_1B8B5DD48(v32, v31, aBlock);

    *(v30 + 14) = v42;
    _os_log_impl(&dword_1B8B22000, v28, v29, "%{public}s not applicable for api type: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v30, -1, -1);
LABEL_27:

    return 0;
  }

  sub_1B8C243E8();
  v17 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent;
  swift_beginAccess();
  v18 = v48;
  v19 = *(v48 + 16);
  v19(v5, &v1[v17], v2);
  sub_1B8BFA3AC(&unk_1EBAA8590, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
  LOBYTE(v17) = sub_1B8C250E8();
  v20 = *(v18 + 8);
  v20(v5, v2);
  if (v17)
  {
    v19(v5, v7, v2);
    sub_1B8BE8194(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v47 - 2) = v1;
    *(&v47 - 1) = v7;
    v53 = v1;
    sub_1B8C23578();
  }

  v20(v7, v2);
  return 1;
}

void sub_1B8BF373C(uint64_t a1, void (*a2)(void, void), void (*a3)(uint64_t, _BYTE *, uint64_t))
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EDC85D40);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C35D60, &v12);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  sub_1B8BEA428(a1, a2, a3);
}

double sub_1B8BF38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EDC85D40);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B8B5DD48(0xD000000000000025, 0x80000001B8C35D90, &v14);
    _os_log_impl(&dword_1B8B22000, v7, v8, "%{public}s", v9, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_1B8B247D4(a2, a3);
  sub_1B8BEA428(a1, sub_1B8BFB3FC, v12);

  return result;
}

void sub_1B8BF3A68(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (!a3)
  {
    return;
  }

  if (a2)
  {

    a3(a1, 1);
LABEL_10:

    sub_1B8B30A44(a3, a4);
    return;
  }

  if (!a1)
  {
    sub_1B8BD0C60(0, a2, a3);
    v8 = swift_allocError();
    *v9 = 4;

    a3(v8, 1);

    goto LABEL_10;
  }

  sub_1B8B247D4(a3, a4);
  sub_1B8B2DE30(a1);
  a3(a1, 0);
  sub_1B8B30A44(a3, a4);

  sub_1B8B30A54(a1);
}

uint64_t sub_1B8BF3B94(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8510, &unk_1B8C2F138);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - v5);
  sub_1B8BD0C60(v4, v7, v8);
  v9 = swift_allocError();
  *v10 = 4;
  *v6 = v9;
  swift_storeEnumTagMultiPayload();
  a2(v6);
  return sub_1B8B3433C(v6, &unk_1EBAA8510, &unk_1B8C2F138);
}

void sub_1B8BF3C7C(char *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v38 = type metadata accessor for FBKEvaluation.Input(0);
  MEMORY[0x1EEE9AC00](v38);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B8C23738();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B8C236E8();
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8C23C38();
  __swift_project_value_buffer(v16, qword_1EDC85D40);
  v17 = sub_1B8C23C18();
  v18 = sub_1B8C25498();
  if (os_log_type_enabled(v17, v18))
  {
    v35 = v8;
    v36 = v7;
    v37 = v3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1B8B5DD48(0xD00000000000002DLL, 0x80000001B8C35DC0, &v42);
    *(v19 + 12) = 2082;
    v21 = 0xEB000000006E776FLL;
    if (v15 == 1)
    {
      v22 = 0x442073626D756854;
    }

    else
    {
      v22 = 0xD000000000000010;
    }

    if (v15 != 1)
    {
      v21 = 0x80000001B8C354A0;
    }

    if (v15)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0x552073626D756854;
    }

    if (v15)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0xE900000000000070;
    }

    v25 = sub_1B8B5DD48(v23, v24, &v42);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1B8B22000, v17, v18, "%{public}s response %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v20, -1, -1);
    MEMORY[0x1B8CCB0E0](v19, -1, -1);

    v7 = v36;
    v3 = v37;
    v8 = v35;
    if (!sub_1B8BFA1E0())
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (!sub_1B8BFA1E0())
    {
LABEL_16:
      v26 = v40;
      (*(v41 + 104))(v14, **(&unk_1E7EB6650 + v15), v40);
      sub_1B8BFCC3C(v39, v6, type metadata accessor for FBKEvaluation.Input);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v10 = *v6;
        v27 = MEMORY[0x1E699C218];
      }

      else
      {
        v33 = sub_1B8C23568();
        (*(*(v33 - 8) + 32))(v10, v6, v33);
        v27 = MEMORY[0x1E699C230];
      }

      (*(v8 + 104))(v10, *v27, v7);
      v34 = sub_1B8BED0A4(v14, v10, 1, 2, 0);
      (*(v8 + 8))(v10, v7, v34);
      (*(v41 + 8))(v14, v26);
      return;
    }
  }

  swift_getKeyPath();
  v42 = v3;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v28 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  if (v28)
  {
    v29 = *(v3 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler + 8);
    v30 = sub_1B8C23628();
    sub_1B8BFA3AC(&qword_1EBAA84C8, MEMORY[0x1E699C178], MEMORY[0x1E699C180]);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E699C170], v30);

    v28(v31, 1);
    sub_1B8B30A44(v28, v29);
  }
}

unint64_t sub_1B8BF42CC(char *a1)
{
  v2 = sub_1B8C236E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8C23C38();
  __swift_project_value_buffer(v7, qword_1EDC85D40);
  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25468();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C35DF0, &v16);
    _os_log_impl(&dword_1B8B22000, v8, v9, "%{public}s", v10, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CCB0E0](v11, -1, -1, v12);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
  }

  (*(v3 + 104))(v5, **(&unk_1E7EB6650 + v6), v2);
  v13 = sub_1B8BF1F4C(v5);
  (*(v3 + 8))(v5, v2);
  return v13;
}

id FBKEvaluationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBKEvaluationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKEvaluationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B8BF4770()
{
  v1 = sub_1B8C23A08();
  v74 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v83 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v74 - v4;
  v6 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7[2];

    v9 = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
      goto LABEL_15;
    }

    v10 = 0;
    v11 = v8 - 1;
    while (1)
    {
      v12 = &v7[8 * v10 + 4];
      v13 = v10;
      while (1)
      {
        if (v13 >= v7[2])
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v14 = *v12;
        v15 = v12[1];
        v16 = v12[3];
        v87 = v12[2];
        v88 = v16;
        v85 = v14;
        v86 = v15;
        v10 = v13 + 1;
        if (v16 != 3 || *(&v87 + 1) >= 2uLL)
        {
          break;
        }

        v12 += 4;
        ++v13;
        if (v8 == v10)
        {
          goto LABEL_15;
        }
      }

      sub_1B8B96144(&v85, v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B8C1406C(0, *(v9 + 16) + 1, 1);
        v9 = v89;
      }

      v18 = v9;
      v19 = *(v9 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        v82 = v11;
        sub_1B8C1406C((v20 > 1), v19 + 1, 1);
        v11 = v82;
        v18 = v89;
      }

      *(v18 + 16) = v19 + 1;
      v21 = (v18 + (v19 << 6));
      v22 = v85;
      v23 = v86;
      v24 = v88;
      v21[4] = v87;
      v21[5] = v24;
      v21[2] = v22;
      v21[3] = v23;
      v9 = v18;
      if (v11 == v13)
      {
LABEL_15:

        v80 = *(v9 + 16);
        if (v80)
        {
          v25 = 0;
          v78 = v9 + 32;
          v82 = (v74 + 16);
          v76 = (v74 + 8);
          v7 = MEMORY[0x1E69E7CC8];
          v75 = v1;
          v77 = v5;
          v79 = v9;
          while (1)
          {
            v26 = (v78 + (v25 << 6));
            v28 = *v26;
            v27 = v26[1];
            v29 = v26[3];
            v87 = v26[2];
            v88 = v29;
            v85 = v28;
            v86 = v27;
            v30 = *(&v29 + 1);
            sub_1B8B96144(&v85, v84);

            sub_1B8C239E8();
            v81 = *v82;
            v81(v83, v5, v1);
            v31 = *(v30 + 16);
            if (v31)
            {
              v84[0] = MEMORY[0x1E69E7CC0];
              sub_1B8C13FE8(0, v31, 0);
              v32 = v84[0];
              v33 = (v30 + 64);
              do
              {
                v34 = *(v33 - 2);
                v35 = *(v33 - 1);
                if (*v33 == 1)
                {
                }

                else
                {
                  v37 = *(v33 - 4);
                  v36 = *(v33 - 3);
                  sub_1B8BFD084(v37, v36, *(v33 - 2), *(v33 - 1), 0);
                  v34 = v37;
                  v35 = v36;
                }

                v84[0] = v32;
                v39 = *(v32 + 16);
                v38 = *(v32 + 24);
                if (v39 >= v38 >> 1)
                {
                  sub_1B8C13FE8((v38 > 1), v39 + 1, 1);
                  v32 = v84[0];
                }

                *(v32 + 16) = v39 + 1;
                v40 = v32 + 16 * v39;
                *(v40 + 32) = v34;
                *(v40 + 40) = v35;
                v33 += 40;
                --v31;
              }

              while (v31);
              sub_1B8B9F188(&v85);
              v1 = v75;
            }

            else
            {
              sub_1B8B9F188(&v85);
              v32 = MEMORY[0x1E69E7CC0];
            }

            v41 = swift_isUniquelyReferenced_nonNull_native();
            v84[0] = v7;
            v42 = sub_1B8B5E56C(v83);
            v44 = v7[2];
            v45 = (v43 & 1) == 0;
            v46 = __OFADD__(v44, v45);
            v47 = v44 + v45;
            v48 = v79;
            if (v46)
            {
              goto LABEL_53;
            }

            v49 = v43;
            if (v7[3] < v47)
            {
              break;
            }

            if (v41)
            {
              goto LABEL_32;
            }

            v52 = v42;
            sub_1B8B94C14();
            v42 = v52;
            v7 = v84[0];
            if (v49)
            {
LABEL_33:
              *(v7[7] + 8 * v42) = v32;

              v51 = *v76;
              (*v76)(v83, v1);
              v5 = v77;
              v51(v77, v1);
              goto LABEL_37;
            }

LABEL_35:
            v7[(v42 >> 6) + 8] |= 1 << v42;
            v53 = v74;
            v54 = v42;
            v55 = v83;
            v81(v7[6] + *(v74 + 72) * v42, v83, v1);
            *(v7[7] + 8 * v54) = v32;
            v56 = *(v53 + 8);
            v56(v55, v1);
            v5 = v77;
            v56(v77, v1);
            v57 = v7[2];
            v46 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v46)
            {
              goto LABEL_54;
            }

            v7[2] = v58;
LABEL_37:
            if (++v25 == v80)
            {

              goto LABEL_47;
            }

            if (v25 >= *(v48 + 16))
            {
              __break(1u);
              goto LABEL_40;
            }
          }

          sub_1B8B93D0C(v47, v41);
          v42 = sub_1B8B5E56C(v83);
          if ((v49 & 1) != (v50 & 1))
          {
            result = sub_1B8C25A58();
            __break(1u);
            return result;
          }

LABEL_32:
          v7 = v84[0];
          if (v49)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        v7 = MEMORY[0x1E69E7CC8];
LABEL_47:
        if (qword_1EDC85598 == -1)
        {
LABEL_48:
          v63 = sub_1B8C23C38();
          __swift_project_value_buffer(v63, qword_1EDC85D40);
          v64 = sub_1B8C23C18();
          v65 = sub_1B8C25468();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v85 = v67;
            *v66 = 136315138;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
            sub_1B8BFA3AC(&qword_1EBAA85E0, MEMORY[0x1E699C658], MEMORY[0x1E699C660]);
            v68 = sub_1B8C250A8();
            v70 = v69;

            v71 = sub_1B8B5DD48(v68, v70, &v85);

            *(v66 + 4) = v71;
            _os_log_impl(&dword_1B8B22000, v64, v65, "Filtered question-answer pairs: \n%s", v66, 0xCu);
            v72 = __swift_destroy_boxed_opaque_existential_0(v67);
            MEMORY[0x1B8CCB0E0](v67, -1, -1, v72);
            MEMORY[0x1B8CCB0E0](v66, -1, -1);
          }

          return v7;
        }

LABEL_55:
        swift_once();
        goto LABEL_48;
      }
    }
  }

LABEL_40:
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v59 = sub_1B8C23C38();
  __swift_project_value_buffer(v59, qword_1EDC85D40);
  v60 = sub_1B8C23C18();
  v61 = sub_1B8C25478();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1B8B22000, v60, v61, "No detailed answers found in FBKFeedbackForm. Cannot record answers", v62, 2u);
    MEMORY[0x1B8CCB0E0](v62, -1, -1);
  }

  return MEMORY[0x1E69E7CC8];
}
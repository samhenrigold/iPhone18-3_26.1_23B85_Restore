void sub_1BD3C8F04(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD3CB7F4(a1, v5, type metadata accessor for BeneficiaryCell);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD3CAC58(v5, v12 + v11, type metadata accessor for BeneficiaryCell);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE0D2EF0, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD3C90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = *(type metadata accessor for BeneficiaryCell(0) - 8);
  v4[27] = v5;
  v4[28] = *(v5 + 64);
  v4[29] = swift_task_alloc();
  sub_1BE0528A4();
  v4[30] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[31] = v7;
  v4[32] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD3C91DC, v7, v6);
}

uint64_t sub_1BD3C91DC()
{
  v0[33] = *(v0[26] + 80);
  sub_1BD3C7ECC(v0 + 10);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1BD3C928C;

  return sub_1BDA809C4((v0 + 10), 0);
}

uint64_t sub_1BD3C928C()
{
  v1 = *v0;

  *(v1 + 160) = *(v1 + 80);
  sub_1BD0DE53C(v1 + 160, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  *(v1 + 176) = *(v1 + 96);
  sub_1BD0DE53C(v1 + 176, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  *(v1 + 192) = *(v1 + 112);
  sub_1BD0DE53C(v1 + 192, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD3C9410, v3, v2);
}

uint64_t sub_1BD3C9410(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 240), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4((v8 + 280));
  v10, v11, v12, v13, v14, v15, v16, v17;
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  if (*(v8 + 280) == 1)
  {
    v25 = *(v8 + 232);
    v26 = *(v8 + 208);
    v27 = *(v8 + 216);
    v28 = v26[3];
    v30 = *v26;
    v29 = v26[1];
    *(v8 + 48) = v26[2];
    *(v8 + 64) = v28;
    *(v8 + 16) = v30;
    *(v8 + 32) = v29;
    sub_1BD3CB7F4(v26, v25, type metadata accessor for BeneficiaryCell);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    sub_1BD3CAC58(v25, v32 + v31, type metadata accessor for BeneficiaryCell);
    sub_1BD2FC284((v8 + 16), sub_1BD3CBB70, v32);
    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v40 = sub_1BD3C7CB0((v8 + 128));
    v42 = v41;
    v43 = sub_1BE04FCC4();
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      sub_1BE04FCA4();
    }

    v40(v8 + 128, 0);
  }

  v44 = *(v8 + 8);

  return v44();
}

uint64_t sub_1BD3C95EC(char a1)
{
  if (a1)
  {
    v1 = sub_1BD3C7CB0(v9);
    v3 = v2;
    v4 = sub_1BE04FCC4();
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {
      sub_1BE04FCB4();
    }
  }

  else
  {
    v1 = sub_1BD3C7CB0(v9);
    v6 = v5;
    v7 = sub_1BE04FCC4();
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      sub_1BE04FCA4();
    }
  }

  return (v1)(v9, 0);
}

uint64_t sub_1BD3C96E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C80, &qword_1BE0D2E70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C88, &qword_1BE0D2E78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C90, &qword_1BE0D2E80) + 44)];
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C98, &qword_1BE0D2E88);
  sub_1BD3C81B4(a1, &v15[*(v16 + 44)]);
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CA0, &qword_1BE0D2E90) + 44)];
  *v17 = sub_1BE04F504();
  *(v17 + 1) = 0;
  v17[16] = 1;
  sub_1BD3C81B4(a1, &v17[*(v16 + 44)]);
  sub_1BD0DE19C(v14, v11, &qword_1EBD44C88, &qword_1BE0D2E78);
  sub_1BD0DE19C(v8, v5, &qword_1EBD44C80, &qword_1BE0D2E70);
  v18 = v22;
  sub_1BD0DE19C(v11, v22, &qword_1EBD44C88, &qword_1BE0D2E78);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CA8, &qword_1BE0D2E98);
  sub_1BD0DE19C(v5, v18 + *(v19 + 48), &qword_1EBD44C80, &qword_1BE0D2E70);
  sub_1BD0DE53C(v8, &qword_1EBD44C80, &qword_1BE0D2E70);
  sub_1BD0DE53C(v14, &qword_1EBD44C88, &qword_1BE0D2E78);
  sub_1BD0DE53C(v5, &qword_1EBD44C80, &qword_1BE0D2E70);
  return sub_1BD0DE53C(v11, &qword_1EBD44C88, &qword_1BE0D2E78);
}

uint64_t sub_1BD3C997C()
{
  v1 = sub_1BE04FF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C68, &qword_1BE0D2E60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  *v7 = sub_1BE050194();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C70, &qword_1BE0D2E68);
  sub_1BD3C96E8(v0, &v7[*(v8 + 44)]);
  sub_1BE04FF44();
  sub_1BD0DE4F4(&qword_1EBD44C78, &qword_1EBD44C68, &qword_1BE0D2E60, MEMORY[0x1E697BF80]);
  sub_1BE050D14();
  (*(v2 + 8))(v4, v1);
  return sub_1BD0DE53C(v7, &qword_1EBD44C68, &qword_1BE0D2E60);
}

void sub_1BD3C9B6C(uint64_t a1)
{
  sub_1BD3C9D6C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD2D63D4(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3C9E00(319);
      if (v3 <= 0x3F)
      {
        sub_1BD3CB524(319, &qword_1EBD449E0, &qword_1EBD449E8, &qword_1BE0FF9D0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1BD3CB524(319, &qword_1EBD3E9B0, &qword_1EBD416C0, &unk_1BE0BC2A0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD10EE48();
            if (v6 <= 0x3F)
            {
              sub_1BD3C9E94(319, &qword_1EBD449F0, type metadata accessor for AddBeneficiaryModel);
              if (v7 <= 0x3F)
              {
                sub_1BD3C9E94(319, &qword_1EBD4D390, MEMORY[0x1E697D718]);
                if (v8 <= 0x3F)
                {
                  sub_1BD3C9EE8(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD3CB524(319, &qword_1EBD44A00, &qword_1EBD3B1B8, &qword_1BE0D2830, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
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

void sub_1BD3C9D6C(uint64_t a1)
{
  if (!qword_1EBD449D0)
  {
    type metadata accessor for ObservableHostingController();
    sub_1BD3C1EBC(&qword_1EBD3B1A0, type metadata accessor for ObservableHostingController, &protocol conformance descriptor for ObservableHostingController);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD449D0);
    }
  }
}

void sub_1BD3C9E00(uint64_t a1)
{
  if (!qword_1EBD449D8)
  {
    type metadata accessor for AccountUserInfoModel(255);
    sub_1BD3C1EBC(&qword_1EBD3AE30, type metadata accessor for AccountUserInfoModel, &unk_1BE0CAEE0);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD449D8);
    }
  }
}

void sub_1BD3C9E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0516D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD3C9EE8(uint64_t a1)
{
  if (!qword_1EBD449F8)
  {
    type metadata accessor for DeviceAuthenticationModel(255);
    sub_1BD3C1EBC(&qword_1EBD3B1B0, type metadata accessor for DeviceAuthenticationModel, &unk_1BE113768);
    v1 = sub_1BE04E984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD449F8);
    }
  }
}

unint64_t sub_1BD3C9F80()
{
  result = qword_1EBD44A08;
  if (!qword_1EBD44A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A08);
  }

  return result;
}

unint64_t sub_1BD3C9FF0()
{
  result = qword_1EBD44A70;
  if (!qword_1EBD44A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A78, &unk_1BE0D2A10);
    sub_1BD3CA07C();
    sub_1BD3CA160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A70);
  }

  return result;
}

unint64_t sub_1BD3CA07C()
{
  result = qword_1EBD44A80;
  if (!qword_1EBD44A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A88, &unk_1BE0ECF10);
    sub_1BD0DE4F4(&qword_1EBD44A90, &qword_1EBD44A98, &unk_1BE0D2A20, MEMORY[0x1E697BF38]);
    sub_1BD0DE4F4(&qword_1EBD3ABE8, &qword_1EBD3ABF0, &qword_1BE0BB6F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44A80);
  }

  return result;
}

unint64_t sub_1BD3CA160()
{
  result = qword_1EBD44AA0;
  if (!qword_1EBD44AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AA8, &qword_1BE0D2A30);
    sub_1BD3CA1EC();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AA0);
  }

  return result;
}

unint64_t sub_1BD3CA1EC()
{
  result = qword_1EBD44AB0;
  if (!qword_1EBD44AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AB8, &qword_1BE0D2A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AC0, &qword_1BE0D2A40);
    sub_1BE04FB94();
    sub_1BD3CA2D4();
    swift_getOpaqueTypeConformance2();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AB0);
  }

  return result;
}

unint64_t sub_1BD3CA2D4()
{
  result = qword_1EBD44AC8;
  if (!qword_1EBD44AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AC0, &qword_1BE0D2A40);
    sub_1BD0DE4F4(&qword_1EBD44AD0, &qword_1EBD44AD8, &unk_1BE0D2A48, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AC8);
  }

  return result;
}

unint64_t sub_1BD3CA3B8()
{
  result = qword_1EBD44AE0;
  if (!qword_1EBD44AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AE0);
  }

  return result;
}

uint64_t objectdestroyTm_36()
{
  v1 = type metadata accessor for SavingsBeneficiaryView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;

  v2[5], v10, v11, v12, v13, v14, v15, v16;
  v17 = (v2 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B1A8, &unk_1BE0BC2E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *v17, v19, v20, v21, v22, v23, v24, v25;
  if (EnumCaseMultiPayload == 1)
  {
    v17[1], v26, v27, v28, v29, v30, v31, v32;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449E8, &qword_1BE0FF9D0) + 32);
    v34 = sub_1BE04ED94();
    (*(*(v34 - 8) + 8))(v17 + v33, v34);
  }

  v35 = (v2 + v1[8]);
  v36 = type metadata accessor for FeatureError(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {

    v37 = *(v36 + 20);
    v38 = sub_1BE04B824();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v35 + v37, 1, v38))
    {
      (*(v39 + 8))(v35 + v37, v38);
    }
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E968, &qword_1BE0C4110);
  *(v35 + *(v40 + 28)), v41, v42, v43, v44, v45, v46, v47;
  *(v2 + v1[9] + 8), v48, v49, v50, v51, v52, v53, v54;
  v55 = (v2 + v1[10]);

  v55[1], v56, v57, v58, v59, v60, v61, v62;
  v63 = v2 + v1[11];
  v64 = sub_1BE051AD4();
  (*(*(v64 - 8) + 8))(v63, v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  *&v63[*(v65 + 28)], v66, v67, v68, v69, v70, v71, v72;
  *(v2 + v1[12] + 8), v73, v74, v75, v76, v77, v78, v79;
  *(v2 + v1[13] + 8), v80, v81, v82, v83, v84, v85, v86;

  return swift_deallocObject();
}

void sub_1BD3CA768(uint64_t *a1)
{
  v3 = *(type metadata accessor for SavingsBeneficiaryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD3C3DAC(a1, v4);
}

uint64_t sub_1BD3CA830(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1BD3CA8E0()
{
  result = qword_1EBD44AF8;
  if (!qword_1EBD44AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A50, &qword_1BE0D29F8);
    sub_1BD3CA96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44AF8);
  }

  return result;
}

unint64_t sub_1BD3CA96C()
{
  result = qword_1EBD44B00;
  if (!qword_1EBD44B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A48, &qword_1BE0D29F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A38, &qword_1BE0D29E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
    sub_1BD0DE4F4(&qword_1EBD44AE8, &qword_1EBD44A38, &qword_1BE0D29E0, MEMORY[0x1E697C278]);
    sub_1BD2477C0();
    swift_getOpaqueTypeConformance2();
    sub_1BD3C1EBC(&qword_1EBD3EA00, type metadata accessor for ErrorAlertModifier, &unk_1BE101590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B00);
  }

  return result;
}

uint64_t sub_1BD3CAAC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD3CAB70()
{
  result = qword_1EBD44B20;
  if (!qword_1EBD44B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B28, &unk_1BE0D2A90);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BD3C1EBC(&qword_1EBD44B30, MEMORY[0x1E697BDD8], MEMORY[0x1E697BDD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B20);
  }

  return result;
}

uint64_t sub_1BD3CAC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD3CACCC()
{
  result = qword_1EBD44B60;
  if (!qword_1EBD44B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B58, &qword_1BE0D2C78);
    sub_1BD0DE4F4(&qword_1EBD44B68, &qword_1EBD44B70, &qword_1BE0D2C80, MEMORY[0x1E6981F48]);
    sub_1BD3CAAC4(&qword_1EBD44B78, &qword_1EBD44B80, &qword_1BE0D2C88, sub_1BD3CADBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B60);
  }

  return result;
}

unint64_t sub_1BD3CADBC()
{
  result = qword_1EBD44B88;
  if (!qword_1EBD44B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B90, &qword_1BE0D2C90);
    sub_1BD3CAE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B88);
  }

  return result;
}

unint64_t sub_1BD3CAE48()
{
  result = qword_1EBD44B98;
  if (!qword_1EBD44B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BA0, &qword_1BE0D2C98);
    sub_1BD3CAED4();
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44B98);
  }

  return result;
}

unint64_t sub_1BD3CAED4()
{
  result = qword_1EBD44BA8;
  if (!qword_1EBD44BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BB0, &qword_1BE0D2CA0);
    sub_1BD3CAAC4(&qword_1EBD39628, &qword_1EBD39618, &qword_1BE0DB120, sub_1BD10E4BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44BA8);
  }

  return result;
}

unint64_t sub_1BD3CB024()
{
  result = qword_1EBD44C08;
  if (!qword_1EBD44C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C08);
  }

  return result;
}

unint64_t sub_1BD3CB078()
{
  result = qword_1EBD44C10;
  if (!qword_1EBD44C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BC8, &qword_1BE0D2D70);
    sub_1BD3C1EBC(&qword_1EBD44C00, type metadata accessor for BeneficiaryCell, &unk_1BE0D2E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C10);
  }

  return result;
}

unint64_t sub_1BD3CB12C()
{
  result = qword_1EBD44C18;
  if (!qword_1EBD44C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BD0, &qword_1BE0D2D78);
    sub_1BD3CB1E4();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0, &qword_1BE0E8860, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C18);
  }

  return result;
}

unint64_t sub_1BD3CB1E4()
{
  result = qword_1EBD44C20;
  if (!qword_1EBD44C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44BB8, &qword_1BE0D2D60);
    sub_1BD3CB078();
    sub_1BD3C1EBC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C20);
  }

  return result;
}

uint64_t sub_1BD3CB2A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SavingsBeneficiaryView(0);

  return sub_1BD3C79E0(a1, a2);
}

id sub_1BD3CB320(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE048C84();

    return a6;
  }

  return result;
}

void sub_1BD3CB384(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a5, v11, v12, v13, v14, v15, v16, v17;

    a7, v18, v19, v20, v21, v22, v23, v24;
  }
}

void sub_1BD3CB434(uint64_t a1)
{
  type metadata accessor for PKAccountAddBeneficiariesContactMethod(319);
  if (v1 <= 0x3F)
  {
    sub_1BD3C9EE8(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3C9E00(319);
      if (v3 <= 0x3F)
      {
        sub_1BD3CB524(319, &qword_1EBD44C58, &qword_1EBD44C30, &unk_1BE0D2DE0, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD3CB524(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BD3CB588()
{
  result = qword_1EBD44C60;
  if (!qword_1EBD44C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44B38, &qword_1BE0D2B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A58, &qword_1BE0D2A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44A50, &qword_1BE0D29F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44AF0, &qword_1BE0D2A80);
    sub_1BD3CA8E0();
    sub_1BD3CAAC4(&qword_1EBD44B08, &qword_1EBD44AF0, &qword_1BE0D2A80, sub_1BD3CAB40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44C60);
  }

  return result;
}

unint64_t sub_1BD3CB744()
{
  result = qword_1EBD44CE0;
  if (!qword_1EBD44CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44CD8, &unk_1BE0D2ED0);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44CE0);
  }

  return result;
}

uint64_t sub_1BD3CB7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3CB888(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE048C84();
  return sub_1BE051624();
}

uint64_t sub_1BD3CB914(uint64_t a1)
{
  v4 = *(type metadata accessor for BeneficiaryCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD3C90E4(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_122Tm()
{
  v1 = (type metadata accessor for BeneficiaryCell(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v2[2], v3, v4, v5, v6, v7, v8, v9;
  v2[7], v10, v11, v12, v13, v14, v15, v16;
  v2[10], v17, v18, v19, v20, v21, v22, v23;
  v2[12], v24, v25, v26, v27, v28, v29, v30;
  v31 = v2 + v1[10];
  v32 = sub_1BE04FCC4();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v31, 1, v32))
  {
    (*(v33 + 8))(v31, v32);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44C40, &qword_1BE0D2DF8);
  *&v31[*(v34 + 28)], v35, v36, v37, v38, v39, v40, v41;

  return swift_deallocObject();
}

uint64_t sub_1BD3CBB70(char a1)
{
  type metadata accessor for BeneficiaryCell(0);

  return sub_1BD3C95EC(a1);
}

uint64_t sub_1BD3CBCBC()
{
  v158 = sub_1BE04D214();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v2 = &v152 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v155 = &v152 - v4;
  v5 = sub_1BE04BAC4();
  v156 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04B944();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_21;
  }

  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  v15 = (*(v13 + 32))(v0, &off_1F3BA49A0, ObjectType, v13);
  v17 = v16;
  swift_unknownObjectRelease();
  if (!v15)
  {
    goto LABEL_21;
  }

  v154 = v0;
  v18 = swift_getObjectType();
  v19 = (*(v17 + 32))(v18, v17);
  swift_unknownObjectRelease();
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_20:
    v19, v20, v21, v22, v23, v24, v25, v26;
LABEL_21:
    sub_1BE04D0E4();
    v149 = sub_1BE04D204();
    v150 = sub_1BE052C34();
    if (os_log_type_enabled(v149, v150))
    {
      v73 = 2;
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_1BD026000, v149, v150, "Unable to fetch renderer to show passcode upgrade", v151, 2u);
      MEMORY[0x1BFB45F20](v151, -1, -1);

      (*(v157 + 8))(v2, v158);
      return v73;
    }

    (*(v157 + 8))(v2, v158);
    return 2;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1BFB40900](0, v19);
    goto LABEL_8;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v19 + 32);
LABEL_8:
    v36 = v28;
    v19, v29, v30, v31, v32, v33, v34, v35;
    sub_1BE04BB94();
    v37 = sub_1BE04B934();
    (*(v9 + 8))(v11, v8);
    v38 = swift_allocObject();
    v38[16] = 0;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v38;
    sub_1BE048964();
    sub_1BE04BC34();
    v41 = sub_1BE04B9A4();
    (*(v156 + 8))(v7, v5);
    v42 = objc_allocWithZone(PKPasscodeUpgradeFlowController);
    v169 = sub_1BD3CCA4C;
    v170 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v166 = 1107296256;
    v167 = sub_1BD3CC8C0;
    v168 = &block_descriptor_81;
    v43 = _Block_copy(&aBlock);
    sub_1BE048964();
    v44 = [v42 initWithContext:v41 completion:v43];
    _Block_release(v43);
    v170, v45, v46, v47, v48, v49, v50, v51;
    v52 = &selRef_setIsFinalViewController_;
    if ([v37 respondsToSelector_])
    {
      v164[3] = sub_1BD0E5E8C(0, &qword_1EBD44D20, off_1E80058E0);
      v164[0] = v44;
      v163[3] = sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
      v163[0] = v36;
      sub_1BD1C4810(v164, v161);
      v53 = v36;
      v54 = v162;
      v153 = v53;
      if (v162)
      {
        v55 = __swift_project_boxed_opaque_existential_1(v161, v162);
        v56 = *(v54 - 8);
        v57 = MEMORY[0x1EEE9AC00](v55);
        v59 = &v152 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v56 + 16))(v59, v57);
        sub_1BE048964();
        swift_unknownObjectRetain();
        v60 = v44;
        v61 = v53;
        v62 = sub_1BE053B74();
        (*(v56 + 8))(v59, v54);
        __swift_destroy_boxed_opaque_existential_0(v161, v63, v64, v65, v66, v67, v68, v69);
      }

      else
      {
        sub_1BE048964();
        swift_unknownObjectRetain();
        v103 = v44;
        v104 = v53;
        v62 = 0;
      }

      sub_1BD1C4810(v163, v159);
      v105 = v160;
      if (v160)
      {
        v106 = __swift_project_boxed_opaque_existential_1(v159, v160);
        v107 = *(v105 - 8);
        v108 = MEMORY[0x1EEE9AC00](v106);
        v110 = &v152 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v107 + 16))(v110, v108);
        v111 = sub_1BE053B74();
        (*(v107 + 8))(v110, v105);
        v52 = &selRef_setIsFinalViewController_;
        __swift_destroy_boxed_opaque_existential_0(v159, v112, v113, v114, v115, v116, v117, v118);
      }

      else
      {
        v111 = 0;
      }

      v169 = sub_1BD3CCA4C;
      v170 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v166 = 1107296256;
      v167 = sub_1BD3CC8C0;
      v168 = &block_descriptor_12_1;
      v119 = _Block_copy(&aBlock);
      v120 = v170;
      sub_1BE048964();
      v120, v121, v122, v123, v124, v125, v126, v127;
      [v37 v52[286]];
      swift_unknownObjectRelease();
      _Block_release(v119);
      v40, v128, v129, v130, v131, v132, v133, v134;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1BD14EC0C(v163);
      sub_1BD14EC0C(v164);
      [*(v154 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter) reportViewAppeared];
      v38, v135, v136, v137, v138, v139, v140, v141;
      swift_unknownObjectRelease();

      v40, v142, v143, v144, v145, v146, v147, v148;
      return 1;
    }

    v70 = v155;
    sub_1BE04D0E4();
    v71 = sub_1BE04D204();
    v72 = sub_1BE052C34();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = 2;
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1BD026000, v71, v72, "Target device does not support passcode upgrade", v74, 2u);
      MEMORY[0x1BFB45F20](v74, -1, -1);
      v40, v75, v76, v77, v78, v79, v80, v81;

      swift_unknownObjectRelease();
      (*(v157 + 8))(v70, v158);
      v38, v82, v83, v84, v85, v86, v87, v88;
      return v73;
    }

    swift_unknownObjectRelease();
    v40, v89, v90, v91, v92, v93, v94, v95;
    (*(v157 + 8))(v70, v158);
    v38, v96, v97, v98, v99, v100, v101, v102;
    return 2;
  }

  __break(1u);
  return result;
}

void sub_1BD3CC6A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if ((*(a4 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
      if (a2)
      {
        v8 = *&v7[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter];
        v9 = a2;
        if (v8)
        {
          v10 = v8;
          v11 = sub_1BE04A844();
          [v10 reportError:v11 context:0];
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          v18 = v7;
          sub_1BD25EEEC();
        }

        else
        {
        }
      }

      else
      {
        v12 = *&v7[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter];
        if (v12)
        {
          [v12 reportPageCompleted:1 context:0];
        }

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v15 = v7;
          sub_1BD25EBAC(v15, v14);
        }
      }
    }
  }
}

uint64_t sub_1BD3CC834()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3CC870(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD3CC8C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v14 = a3;
  v6(a2, a3);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

id sub_1BD3CC938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_identifier];
  *v6 = 0xD00000000000002ELL;
  *(v6 + 1) = 0x80000001BE0D2F30;
  *&v2[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_context] = a1;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v8 = v7;
  sub_1BE048964();
  v9 = sub_1BE04BB74();
  v8, v10, v11, v12, v13, v14, v15, v16;
  *&v3[OBJC_IVAR____TtC9PassKitUI46ProvisioningPasscodeUpgradeWatchChangeFlowItem_reporter] = v9;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id PeerPaymentCounterpartImageResolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeerPaymentCounterpartImageResolver.init()()
{
  v1 = OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v2 = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1BD3CCBD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v4 = sub_1BE052404();
  v5 = [v3 objectForKey_];

  if (v5)
  {
  }

  return v5 != 0;
}

uint64_t sub_1BD3CCC8C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v4 = sub_1BE052404();
  v5 = [v3 objectForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1BE04AAC4();

  return v6;
}

void sub_1BD3CCDC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  v10 = sub_1BE052404();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    v12 = sub_1BE04AAC4();
    v14 = v13;

    sub_1BD041A38(v12, v14);
    a3(v12, v14);
    sub_1BD1245AC(v12, v14, v15, v16, v17, v18, v19, v20);

    sub_1BD1245AC(v12, v14, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v27 = *(v4 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService);
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BE052404();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = a1;
      v31[4] = a2;
      v31[5] = a3;
      v31[6] = a4;
      v41[4] = sub_1BD3CD158;
      v42 = v31;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 1107296256;
      v41[2] = sub_1BD20815C;
      v41[3] = &block_descriptor_82;
      v32 = _Block_copy(v41);
      v33 = v42;
      sub_1BE048C84();
      sub_1BE048964();
      v33, v34, v35, v36, v37, v38, v39, v40;
      [v28 counterpartImageDataWithIdentifier:v29 completion:v32];
      _Block_release(v32);
    }

    else
    {
      a3(0, 0xF000000000000000);
    }
  }
}

void sub_1BD3CCFEC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = [a1 imageData];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE04AAC4();
        v13 = v12;

        v14 = sub_1BE04AAB4();
        sub_1BD1245AC(v11, v13, v15, v16, v17, v18, v19, v20);
        v21 = *&v8[OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache];
        a1 = v14;
        v22 = v21;
        v23 = sub_1BE052404();
        [v22 setObject:a1 forKey:v23];

        v24 = sub_1BE04AAC4();
        v26 = v25;
LABEL_8:
        a5(v24, v26);
        sub_1BD030220(v24, v26, v27, v28, v29, v30, v31, v32);

        return;
      }

      v24 = 0;
      a1 = 0;
    }

    else
    {
      v24 = 0;
    }

    v26 = 0xF000000000000000;
    goto LABEL_8;
  }
}

id PeerPaymentCounterpartImageResolver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentCounterpartImageResolver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD3CD324(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v9 = *(a3 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_cache);
  _Block_copy(a4);
  v10 = sub_1BE052404();
  v11 = [v9 objectForKey_];

  if (v11)
  {
    v12 = sub_1BE04AAC4();
    v14 = v13;

    sub_1BD041A38(v12, v14);
    v15 = sub_1BE04AAB4();
    (a4)[2](a4, v15);

    sub_1BD1245AC(v12, v14, v16, v17, v18, v19, v20, v21);
    sub_1BD1245AC(v12, v14, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    v35 = *(a3 + OBJC_IVAR___PKPeerPaymentCounterpartImageResolver_peerPaymentService);
    if (v35)
    {
      v36 = v35;
      v37 = sub_1BE052404();
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = a1;
      v39[4] = a2;
      v39[5] = sub_1BD3CD5AC;
      v39[6] = v8;
      v56[4] = sub_1BD3CD614;
      v57 = v39;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 1107296256;
      v56[2] = sub_1BD20815C;
      v56[3] = &block_descriptor_16_3;
      v40 = _Block_copy(v56);
      v41 = v57;
      sub_1BE048C84();
      sub_1BE048964();
      v41, v42, v43, v44, v45, v46, v47, v48;
      [v36 counterpartImageDataWithIdentifier:v37 completion:v40];
      _Block_release(v40);
      v8, v49, v50, v51, v52, v53, v54, v55;

      return;
    }

    a4[2](a4, 0);
  }

  v8, v28, v29, v30, v31, v32, v33, v34;
}

uint64_t objectdestroy_2Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[4], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BD3CD638(uint64_t a1)
{
  result = sub_1BE04AA64();
  if (v2 <= 0x3F)
  {
    result = sub_1BD0E5E8C(319, qword_1EBD4F790, 0x1E69DCAB8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3CD70C(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44D60, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD3CD930(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD3CD930(319, &qword_1EBD36A40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BD3CD930(319, &qword_1EBD44D68, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1BD3CD930(319, &qword_1EBD44D70, type metadata accessor for UnifiedMerchantTokenData.PastPayment, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD3CD930(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD3CD9FC(uint64_t a1)
{
  result = sub_1BE0493F4();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04AF64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BD3CDAD8(uint64_t a1)
{
  sub_1BD3CD930(319, &qword_1EBD44D60, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD3CDB9C(uint64_t a1)
{
  result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1BD3CDCAC(uint64_t a1)
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BD3CDD70(uint64_t a1)
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44DD8, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3CDE7C(uint64_t a1)
{
  sub_1BE04A004();
  if (v1 <= 0x3F)
  {
    sub_1BD3CD930(319, &qword_1EBD44DF0, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD3CDF78(uint64_t a1)
{
  sub_1BD3CD930(319, &qword_1EBD44DB8, MEMORY[0x1E6967790], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE04A474();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1BD3CE02C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v98 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v98 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v123 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = v98 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v122 = v98 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v98 - v22;
  v24 = sub_1BE04AA64();
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v98 - v28;
  if (!v0[1])
  {
    return 0;
  }

  v116 = v27;
  v117 = v11;
  v118 = v10;
  v119 = v26;
  v30 = *v0;
  v31 = type metadata accessor for UnifiedMerchantTokenData(0);
  v32 = v0 + *(v31 + 76);
  if (!*(v32 + 1))
  {
    return 0;
  }

  v33 = v0[9];
  if (!v33)
  {
    return 0;
  }

  v34 = v31;
  v110 = *(v32 + 1);
  v111 = v30;
  v115 = v29;
  v109 = *v32;
  v112 = v0[8];
  v113 = v33;
  sub_1BD0DE19C(v0 + *(v31 + 44), v23, &unk_1EBD3CF70, &qword_1BE0BA000);
  v35 = v119;
  v36 = (v119 + 48);
  v114 = *(v119 + 48);
  if (v114(v23, 1, v24) == 1)
  {
    v37 = &unk_1EBD3CF70;
    v38 = &qword_1BE0BA000;
    v39 = v23;
LABEL_10:
    sub_1BD0DE53C(v39, v37, v38);
    return 0;
  }

  v41 = *(v35 + 32);
  v107 = v35 + 32;
  v108 = v36;
  v106 = v41;
  v41(v115, v23, v24);
  sub_1BD0DE19C(v0 + v34[12], v9, &unk_1EBD39970, &unk_1BE0B9F80);
  v42 = v117;
  v43 = v118;
  if ((*(v117 + 48))(v9, 1, v118) == 1)
  {
    (*(v35 + 8))(v115, v24);
    v37 = &unk_1EBD39970;
    v38 = &unk_1BE0B9F80;
    v39 = v9;
    goto LABEL_10;
  }

  (*(v42 + 32))(v124, v9, v43);
  sub_1BD0DE19C(v0 + v34[10], v6, &qword_1EBD44D48, &qword_1BE1067C0);
  v44 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v45 = 1;
  v46 = v24;
  if ((*(*(v44 - 8) + 48))(v6, 1, v44) != 1)
  {
    sub_1BD0DE19C(v6, v3, &qword_1EBD44D48, &qword_1BE1067C0);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD3D85F0(v3, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    }

    else
    {
      v106(v122, v3, v24);
      v45 = 0;
    }
  }

  v47 = v119;
  v48 = v122;
  (*(v119 + 56))(v122, v45, 1, v24);
  sub_1BD0DE53C(v6, &qword_1EBD44D48, &qword_1BE1067C0);
  v49 = v0[3];
  v106 = v0[2];
  v101 = v49;
  v50 = (v0 + v34[20]);
  v51 = v50[1];
  v98[1] = *v50;
  v52 = v0[5];
  v98[6] = v0[4];
  v98[5] = v52;
  v53 = v0[7];
  v98[2] = v0[6];
  v54 = v0[11];
  v98[3] = v0[10];
  v99 = v54;
  v55 = v48;
  v56 = v120;
  sub_1BD0DE19C(v55, v120, &unk_1EBD3CF70, &qword_1BE0BA000);
  (*(v47 + 16))(v116, v115, v46);
  v57 = (v0 + v34[21]);
  v59 = *v57;
  v58 = v57[1];
  v104 = v59;
  v103 = v58;
  LODWORD(v107) = *(v0 + v34[17]);
  (*(v117 + 16))(v123, v124, v118);
  sub_1BD0DE19C(v0 + v34[14], v121, &unk_1EBD3CF70, &qword_1BE0BA000);
  v60 = v34[16];
  v61 = (v0 + v34[15]);
  v63 = *v61;
  v62 = v61[1];
  v98[4] = v63;
  v100 = v62;
  v102 = *(v0 + v60);
  v106 = sub_1BE052404();
  v101 = sub_1BE052404();
  v111 = sub_1BE052404();
  if (v51)
  {
    v110 = sub_1BE052404();
  }

  else
  {
    v110 = 0;
  }

  v113 = sub_1BE052404();
  v112 = sub_1BE052404();
  v64 = v121;
  if (v53)
  {
    v65 = sub_1BE052404();
  }

  else
  {
    v65 = 0;
  }

  if (v99)
  {
    v66 = sub_1BE052404();
  }

  else
  {
    v66 = 0;
  }

  if (v114(v56, 1, v46) == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_1BE04A9C4();
    (*(v119 + 8))(v56, v46);
  }

  v68 = sub_1BE04A9C4();
  v69 = sub_1BE052404();
  v70 = sub_1BE04AE64();
  if (v114(v64, 1, v46) == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = sub_1BE04A9C4();
    (*(v119 + 8))(v64, v46);
  }

  v105 = v46;
  if (v100)
  {
    v72 = sub_1BE052404();
  }

  else
  {
    v72 = 0;
  }

  v114 = v72;
  v73 = objc_allocWithZone(MEMORY[0x1E69B89B8]);
  LOBYTE(v97) = v102;
  v95 = v71;
  v96 = v72;
  v109 = v70;
  v94 = v70;
  LOBYTE(v93) = v107;
  v74 = v69;
  v91 = v68;
  v92 = v69;
  v120 = v71;
  v75 = v67;
  v89 = v66;
  v90 = v67;
  v76 = v66;
  v88 = v65;
  v77 = v106;
  v78 = v101;
  v79 = v111;
  v80 = v112;
  v108 = v68;
  v81 = v65;
  v82 = v110;
  v83 = v113;
  v121 = [v73 initWithMerchantTokenId:v106 primaryAccountIdentifier:v101 primaryAccountDisplayName:v111 primaryAccountSuffix:v110 appleMerchantId:v113 merchantName:v112 merchantDomain:v88 merchantApplicationIdentifier:v89 merchantIconURL:v90 merchantTokenManagementURL:v91 tokenCategory:v92 isDeferredPayment:v93 tokenIssuanceDate:v94 issuerServiceURL:v95 issuerName:v96 disallowUserRevoke:v97];

  v84 = v118;
  v85 = *(v117 + 8);
  v85(v123, v118);
  v86 = *(v119 + 8);
  v87 = v105;
  v86(v116, v105);
  sub_1BD0DE53C(v122, &unk_1EBD3CF70, &qword_1BE0BA000);
  v85(v124, v84);
  v86(v115, v87);
  return v121;
}

uint64_t sub_1BD3CEA04()
{
  v0 = sub_1BE04B104();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04B2F4();
  __swift_allocate_value_buffer(v4, qword_1EBDAB000);
  __swift_project_value_buffer(v4, qword_1EBDAB000);
  (*(v1 + 104))(v3, *MEMORY[0x1E6969830], v0);
  sub_1BE04B114();
  return (*(v1 + 8))(v3, v0);
}

void sub_1BD3CEB24(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD3D89A4(v1, v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = v8[1];
      MEMORY[0x1BFB40DA0](1);
      sub_1BE04AAD4();
      sub_1BD1245AC(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      v18 = *v8;
      MEMORY[0x1BFB40DA0](2);
      sub_1BE053084();
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1BFB40DA0](0);
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BD3CED70(uint64_t a1)
{
  v69 = a1;
  v61 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BE04A474();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v56 - v5;
  v6 = sub_1BE0493F4();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v58 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE049FD4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD3D89A4(v68, v27, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x1BFB40DA0](3);
    }

    v41 = v64;
    sub_1BD3D8A0C(v27, v64, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    MEMORY[0x1BFB40DA0](2);
    sub_1BD0DE19C(v41, v12, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v43 = v66;
    v42 = v67;
    v44 = *(v66 + 48);
    if (v44(v12, 1, v67) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v48 = v65;
      (*(v43 + 32))(v65, v12, v42);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
      sub_1BE052294();
      (*(v43 + 8))(v48, v42);
    }

    v49 = v59;
    sub_1BD0DE19C(v41 + *(v61 + 20), v59, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    if (v44(v49, 1, v42) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v54 = v65;
      (*(v43 + 32))(v65, v49, v42);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
      sub_1BE052294();
      (*(v43 + 8))(v54, v42);
    }

    v39 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
    v40 = v41;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1BD3D8A0C(v27, v17, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    MEMORY[0x1BFB40DA0](1);
    sub_1BD0DE19C(v17, v15, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v46 = v66;
    v45 = v67;
    if ((*(v66 + 48))(v15, 1, v67) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v50 = v65;
      (*(v46 + 32))(v65, v15, v45);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
      sub_1BE052294();
      (*(v46 + 8))(v50, v45);
    }

    v51 = v60;
    sub_1BD0DE19C(&v17[*(v58 + 20)], v60, &qword_1EBD44DC0, &unk_1BE0D3070);
    v53 = v62;
    v52 = v63;
    if ((*(v62 + 48))(v51, 1, v63) == 1)
    {
      sub_1BE053D24();
    }

    else
    {
      v55 = v57;
      (*(v53 + 32))(v57, v51, v52);
      sub_1BE053D24();
      sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      sub_1BE052294();
      (*(v53 + 8))(v55, v52);
    }

    v39 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
    v40 = v17;
  }

  else
  {
    sub_1BD3D8A0C(v27, v24, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    v29 = v69;
    MEMORY[0x1BFB40DA0](0);
    sub_1BE049FE4();
    sub_1BE049FC4();
    v31 = v30;
    (*(v19 + 8))(v21, v18);
    sub_1BE052524();
    v31, v32, v33, v34, v35, v36, v37, v38;
    sub_1BE049FF4();
    sub_1BE053D34();
    sub_1BD3D8650(v29, *&v24[*(v22 + 20)]);
    v39 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
    v40 = v24;
  }

  return sub_1BD3D85F0(v40, v39);
}

uint64_t sub_1BD3CF6C0()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3CF91C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE0493F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1BD0DE19C(v2, &v11 - v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v4 + 8))(v6, v3);
  }

  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  return sub_1BE052294();
}

uint64_t sub_1BD3CFB64(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE0493F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1BE053D04();
  sub_1BD0DE19C(v2, v9, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v4 + 8))(v6, v3);
  }

  sub_1BE04A474();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1BE052294();
  return sub_1BE053D64();
}

id sub_1BD3CFE10()
{
  v0 = sub_1BE04BD74();
  v66 = *(v0 - 8);
  v67 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v64 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v64 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E68, &qword_1BE0D3530);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  v20 = sub_1BE049FD4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049FE4();
  v24 = sub_1BE049FF4();
  v25 = *(v17 + 56);
  (*(v21 + 32))(v19, v23, v20);
  *&v19[v25] = v24;
  v26 = (*(v21 + 88))(v19, v20);
  if (v26 == *MEMORY[0x1E6967D48])
  {
    (*(v21 + 8))(v19, v20);
    return 0;
  }

  if (v26 == *MEMORY[0x1E6967D40])
  {
    v29 = v66;
    v28 = v67;
    (*(v66 + 104))(v15, *MEMORY[0x1E69B8080], v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B69E0;
    v31 = MEMORY[0x1E69E72E8];
    *(v30 + 56) = MEMORY[0x1E69E7290];
    *(v30 + 64) = v31;
    *(v30 + 32) = v24;
    v32 = sub_1BE04B714();
    v30, v33, v34, v35, v36, v37, v38, v39;
    (*(v29 + 8))(v15, v28);
    return v32;
  }

  if (v26 != *MEMORY[0x1E6967D20])
  {
    if (v26 == *MEMORY[0x1E6967D18])
    {
      v46 = v66;
      v45 = v67;
      (*(v66 + 104))(v9, *MEMORY[0x1E69B8080], v67);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v47 = result;
    }

    else
    {
      if (v26 == *MEMORY[0x1E6967D28])
      {
        v61 = v66;
        v60 = v67;
        (*(v66 + 104))(v6, *MEMORY[0x1E69B8080], v67);
        result = PKPassKitBundle();
        if (result)
        {
          v62 = result;
          sub_1BE04B6F4();
          v44 = v63;

          (*(v61 + 8))(v6, v60);
          goto LABEL_13;
        }

        goto LABEL_27;
      }

      if (v26 == *MEMORY[0x1E6967D38])
      {
        v9 = v65;
        v46 = v66;
        v45 = v67;
        (*(v66 + 104))(v65, *MEMORY[0x1E69B8080], v67);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }

        v47 = result;
      }

      else
      {
        if (v26 != *MEMORY[0x1E6967D30])
        {
          sub_1BD0DE53C(v19, &qword_1EBD44E68, &qword_1BE0D3530);
          return 0;
        }

        v46 = v66;
        v45 = v67;
        v9 = v64;
        (*(v66 + 104))(v64, *MEMORY[0x1E69B8080], v67);
        result = PKPassKitBundle();
        if (!result)
        {
          goto LABEL_29;
        }

        v47 = result;
      }
    }

    sub_1BE04B6F4();
    v44 = v48;

    (*(v46 + 8))(v9, v45);
    goto LABEL_13;
  }

  v41 = v66;
  v40 = v67;
  (*(v66 + 104))(v12, *MEMORY[0x1E69B8080], v67);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v42 = result;
  sub_1BE04B6F4();
  v44 = v43;

  (*(v41 + 8))(v12, v40);
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E7290];
  *(v49 + 16) = xmmword_1BE0B69E0;
  v51 = MEMORY[0x1E69E72E8];
  *(v49 + 56) = v50;
  *(v49 + 64) = v51;
  *(v49 + 32) = v24;
  v52 = sub_1BE052454();
  v44, v53, v54, v55, v56, v57, v58, v59;
  return v52;
}

uint64_t sub_1BD3D04FC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE04A474();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1BE0493F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  sub_1BD0DE19C(v2, &v20 - v13, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  sub_1BD0DE19C(v2 + *(v15 + 20), v7, &qword_1EBD44DC0, &unk_1BE0D3070);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_1BE053D24();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_1BE053D24();
  sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1BE052294();
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1BD3D08A4()
{
  v1 = v0;
  v2 = sub_1BE04A474();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BE0493F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v13, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v8 + 8))(v10, v7);
  }

  v14 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v14 + 20), v6, &qword_1EBD44DC0, &unk_1BE0D3070);
  v15 = v20;
  if ((*(v20 + 48))(v6, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v16 = v19;
    (*(v15 + 32))(v19, v6, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
    sub_1BE052294();
    (*(v15 + 8))(v16, v2);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D0C64(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BE0493F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1BD0DE19C(v2, &v16 - v11, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  sub_1BD0DE19C(v2 + *(v14 + 20), v9, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v13(v9, 1, v3) == 1)
  {
    return sub_1BE053D24();
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_1BE053D24();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
  sub_1BE052294();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD3D0F5C()
{
  v1 = v0;
  v2 = sub_1BE0493F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1BE053D04();
  sub_1BD0DE19C(v1, v11, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }

  v13 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  sub_1BD0DE19C(v1 + *(v13 + 20), v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v12(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D1260(uint64_t a1, double a2)
{
  v4 = sub_1BE049FD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BE049FE4();
  sub_1BE049FC4();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  sub_1BE052524();
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1BE049FF4();
  sub_1BE053D34();
  sub_1BD3D8650(v19, *(v2 + *(a1 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD3D1394(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1BE049FD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049FE4();
  sub_1BE049FC4();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  sub_1BE052524();
  v11, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE049FF4();
  sub_1BE053D34();
  return sub_1BD3D8650(a1, *(v3 + *(a2 + 20)));
}

uint64_t sub_1BD3D14B8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1BE049FD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BE049FE4();
  sub_1BE049FC4();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  sub_1BE052524();
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE049FF4();
  sub_1BE053D34();
  sub_1BD3D8650(v20, *(v3 + *(a2 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD3D1640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD3D1690(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1BE04A474();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1BE0493F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1BE053D04();
  sub_1BD0DE19C(v2, v14, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v9 + 8))(v11, v8);
  }

  sub_1BD0DE19C(v2 + *(v19 + 20), v7, &qword_1EBD44DC0, &unk_1BE0D3070);
  v15 = v20;
  if ((*(v20 + 48))(v7, 1, v3) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v16 = v18;
    (*(v15 + 32))(v18, v7, v3);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
    sub_1BE052294();
    (*(v15 + 8))(v16, v3);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD3D1AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BE053D04();
  sub_1BD0DE19C(v2, v13, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v14 = *(v5 + 48);
  if (v14(v13, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v5 + 8))(v7, v4);
  }

  sub_1BD0DE19C(v2 + *(a2 + 20), v10, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v14(v10, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
    sub_1BE052294();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1BE053D64();
}

id sub_1BD3D1E44()
{
  v0 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v178 = *(v0 - 8);
  v179 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v183 = &v160 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v160 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1BE04ABD4();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1BE04ACA4();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1BE04AD84();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v165 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v169 = &v160 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v160 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v177 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v160 - v13;
  v14 = sub_1BE04AF64();
  v192 = *(v14 - 8);
  v193 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v181 = &v160 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v160 - v19;
  v21 = sub_1BE04A474();
  v190 = *(v21 - 8);
  v191 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v180 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v23);
  v189 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1BE04B0F4();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04BD74();
  v185 = *(v26 - 8);
  v186 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v160 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v160 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v160 - v34;
  v36 = sub_1BE0493F4();
  v37 = *(v36 - 8);
  v194 = v36;
  v195 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v160 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v160 - v43;
  v45 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD3D89A4(&v196[*(v51 + 28)], v50, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v188;
      sub_1BD3D8A0C(v50, v188, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      v55 = *(v54 + *(v187 + 20));
      if (!*(v55 + 16))
      {
LABEL_8:
        v61 = sub_1BD3CFE10();
        sub_1BD3D85F0(v54, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        return v61;
      }

      v56 = v183;
      sub_1BD3D89A4(v55 + ((*(v178 + 80) + 32) & ~*(v178 + 80)), v183, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      if (qword_1EBD36BF8 != -1)
      {
        swift_once();
      }

      v57 = sub_1BE04B2F4();
      __swift_project_value_buffer(v57, qword_1EBDAB000);
      v58 = v177;
      sub_1BE04B204();
      v60 = v192;
      v59 = v193;
      if ((*(v192 + 48))(v58, 1, v193) == 1)
      {
        sub_1BD3D85F0(v56, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
        sub_1BD0DE53C(v58, &unk_1EBD39970, &unk_1BE0B9F80);
        goto LABEL_8;
      }

      v84 = (*(v60 + 32))(v182, v58, v59);
      v85 = v165;
      MEMORY[0x1BFB371E0](v84);
      v86 = v166;
      sub_1BE04AC84();
      v87 = v169;
      sub_1BE04ABB4();
      (*(v167 + 8))(v86, v168);
      v88 = *(v174 + 8);
      v89 = v175;
      v88(v85, v175);
      v90 = v170;
      sub_1BE04ABC4();
      v91 = v171;
      sub_1BE04AB64();
      (*(v172 + 8))(v90, v173);
      v88(v87, v89);
      sub_1BD3D1640(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
      sub_1BE04AF44();
      v88(v91, v89);
      v92 = v197;
      v93 = v198;
      v95 = v184;
      v94 = v185;
      v96 = v186;
      (*(v185 + 104))(v184, *MEMORY[0x1E69B8080], v186);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1BE0B69E0;
      *(v97 + 56) = MEMORY[0x1E69E6158];
      *(v97 + 64) = sub_1BD110550();
      *(v97 + 32) = v92;
      *(v97 + 40) = v93;
      v98 = sub_1BE04B714();
      v97, v99, v100, v101, v102, v103, v104, v105;
      (*(v94 + 8))(v95, v96);
      (*(v60 + 8))(v182, v59);
      sub_1BD3D85F0(v183, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v106 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
      v107 = v54;
      goto LABEL_28;
    }

    v70 = v189;
    sub_1BD3D8A0C(v50, v189, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    sub_1BD0DE19C(v70 + *(v23 + 20), v20, &qword_1EBD44DC0, &unk_1BE0D3070);
    v72 = v190;
    v71 = v191;
    if ((*(v190 + 48))(v20, 1, v191) == 1)
    {
      sub_1BD3D85F0(v70, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      v68 = &qword_1EBD44DC0;
      v69 = &unk_1BE0D3070;
      v73 = v20;
LABEL_22:
      sub_1BD0DE53C(v73, v68, v69);
      return 0;
    }

    v76 = v180;
    (*(v72 + 32))(v180, v20, v71);
    if (qword_1EBD36BF8 != -1)
    {
      swift_once();
    }

    v77 = sub_1BE04B2F4();
    __swift_project_value_buffer(v77, qword_1EBDAB000);
    v35 = v176;
    sub_1BE04B204();
    v79 = v192;
    v78 = v193;
    v80 = (*(v192 + 48))(v35, 1, v193);
    v81 = v194;
    v82 = v195;
    v83 = v181;
    if (v80 == 1)
    {
      (*(v72 + 8))(v76, v71);
      sub_1BD3D85F0(v70, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      v68 = &unk_1EBD39970;
      v69 = &unk_1BE0B9F80;
      goto LABEL_21;
    }

    (*(v79 + 32))(v181, v35, v78);
    v35 = v160;
    sub_1BD0DE19C(v70, v160, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    if ((*(v82 + 48))(v35, 1, v81) != 1)
    {
      v130 = (*(v82 + 32))(v161, v35, v81);
      v131 = v165;
      MEMORY[0x1BFB371E0](v130);
      v132 = v166;
      sub_1BE04AC84();
      v133 = v169;
      sub_1BE04ABB4();
      (*(v167 + 8))(v132, v168);
      v134 = *(v174 + 8);
      v135 = v131;
      v136 = v175;
      v134(v135, v175);
      v137 = v170;
      sub_1BE04ABC4();
      v138 = v171;
      sub_1BE04AB64();
      (*(v172 + 8))(v137, v173);
      v134(v133, v136);
      sub_1BD3D1640(&qword_1EBD4E940, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
      sub_1BE04AF44();
      v134(v138, v136);
      v139 = v198;
      v188 = v197;
      v196 = "CURRING_SUBTITLE";
      v141 = v184;
      v140 = v185;
      v142 = v79;
      v143 = v186;
      (*(v185 + 104))(v184, *MEMORY[0x1E69B8080], v186);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_1BE0B6CA0;
      v145 = v162;
      sub_1BE04B054();
      v146 = v161;
      v147 = sub_1BE0493E4();
      v149 = v148;
      (*(v163 + 8))(v145, v164);
      v150 = MEMORY[0x1E69E6158];
      *(v144 + 56) = MEMORY[0x1E69E6158];
      v151 = sub_1BD110550();
      *(v144 + 32) = v147;
      *(v144 + 40) = v149;
      *(v144 + 96) = v150;
      *(v144 + 104) = v151;
      v152 = v188;
      *(v144 + 64) = v151;
      *(v144 + 72) = v152;
      *(v144 + 80) = v139;
      v98 = sub_1BE04B714();
      v144, v153, v154, v155, v156, v157, v158, v159;
      (*(v140 + 8))(v141, v143);
      (*(v195 + 8))(v146, v194);
      (*(v142 + 8))(v181, v193);
      (*(v190 + 8))(v180, v191);
      v106 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
      v107 = v189;
LABEL_28:
      sub_1BD3D85F0(v107, v106);
      return v98;
    }

    (*(v79 + 8))(v83, v78);
    (*(v72 + 8))(v76, v71);
    v66 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
    v67 = v70;
LABEL_12:
    sub_1BD3D85F0(v67, v66);
    v68 = &qword_1EBD3BCA0;
    v69 = &qword_1BE0BD3E0;
LABEL_21:
    v73 = v35;
    goto LABEL_22;
  }

  result = 0;
  if (v53 != 2)
  {
    return result;
  }

  sub_1BD3D8A0C(v50, v47, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
  sub_1BD0DE19C(v47, v35, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v63 = v194;
  v64 = v195;
  v65 = *(v195 + 48);
  if (v65(v35, 1, v194) == 1)
  {
    v66 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
    v67 = v47;
    goto LABEL_12;
  }

  v74 = v35;
  v75 = *(v64 + 32);
  v75(v44, v74, v63);
  sub_1BD0DE19C(&v47[*(v45 + 20)], v32, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v65(v32, 1, v63) == 1)
  {
    (*(v195 + 8))(v44, v63);
    sub_1BD3D85F0(v47, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v68 = &qword_1EBD3BCA0;
    v69 = &qword_1BE0BD3E0;
    v73 = v32;
    goto LABEL_22;
  }

  v75(v41, v32, v63);
  v196 = "ETAIL_PREAUTH_DEFERRED_SUBTITLE";
  (*(v185 + 104))(v184, *MEMORY[0x1E69B8080], v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1BE0B6CA0;
  v109 = v162;
  sub_1BE04B054();
  v110 = sub_1BE0493E4();
  v193 = v111;
  v112 = *(v163 + 8);
  v113 = v164;
  v112(v109, v164);
  *(v108 + 56) = MEMORY[0x1E69E6158];
  v114 = sub_1BD110550();
  *(v108 + 64) = v114;
  v115 = v193;
  *(v108 + 32) = v110;
  *(v108 + 40) = v115;
  sub_1BE04B054();
  v116 = sub_1BE0493E4();
  v193 = v117;
  v112(v109, v113);
  *(v108 + 96) = MEMORY[0x1E69E6158];
  *(v108 + 104) = v114;
  v118 = v193;
  *(v108 + 72) = v116;
  *(v108 + 80) = v118;
  v119 = v184;
  v98 = sub_1BE04B714();
  v108, v120, v121, v122, v123, v124, v125, v126;
  (*(v185 + 8))(v119, v186);
  v127 = *(v195 + 8);
  v128 = v41;
  v129 = v194;
  v127(v128, v194);
  v127(v44, v129);
  sub_1BD3D85F0(v47, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
  return v98;
}

uint64_t sub_1BD3D3320(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1BE052524();
  sub_1BE052524();
  v11 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD0DE19C(v2 + *(v11 + 24), v10, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v10, v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24(a1);
    sub_1BD3D85F0(v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  return sub_1BD3CED70(a1);
}

uint64_t sub_1BD3D3508()
{
  v1 = v0;
  v2 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-1] - v7;
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  v9 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  sub_1BD0DE19C(v1 + *(v9 + 24), v8, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v8, v5, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24(v12);
    sub_1BD3D85F0(v5, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  sub_1BD3CED70(v12);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3704(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14[-1] - v10;
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE052524();
  sub_1BD0DE19C(v4 + *(a2 + 24), v11, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v11, v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24(v14);
    sub_1BD3D85F0(v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  sub_1BD3CED70(v14);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3948()
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3A4C(uint64_t a1)
{
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1BE052294();
}

uint64_t sub_1BD3D3B3C(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  sub_1BE0493F4();
  sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
  sub_1BE052294();
  sub_1BE04AF64();
  sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD3D3C3C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1BE053B84() & 1) == 0 || (sub_1BE0493B4() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE04AED4();
}

unint64_t sub_1BD3D3D1C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88));
  v6 = *(v5 + 16);
  if (v6 == 2)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B8080], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BE0B6CA0;
    v10 = *(v5 + 16);
    if (v10)
    {
      v11 = result;
      v12 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v13 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v16 = MEMORY[0x1E69E6158];
      v11[7] = MEMORY[0x1E69E6158];
      result = sub_1BD110550();
      v11[8] = result;
      v11[4] = v15;
      v11[5] = v14;
      if (v10 != 1)
      {
        v17 = v13 + *(v12 + 72);
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v11[12] = v16;
        v11[13] = result;
        v11[9] = v18;
        v11[10] = v19;
        sub_1BE048C84();
        sub_1BE048C84();
LABEL_10:
        v8 = sub_1BE04B714();
        v11, v27, v28, v29, v30, v31, v32, v33;
        (*(v2 + 8))(v4, v1);
        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (v6 == 1)
    {
      v7 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v8 = *(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 16);
      sub_1BE048C84();
      return v8;
    }

    if (v6 < 3)
    {
      return 0;
    }

    (*(v2 + 104))(v4, *MEMORY[0x1E69B8080], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1BE0B6CA0;
    v20 = *(v5 + 16);
    if (v20)
    {
      v11 = result;
      v21 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) - 8);
      v22 = v5 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v11[7] = MEMORY[0x1E69E6158];
      v25 = sub_1BD110550();
      v11[4] = v24;
      v11[5] = v23;
      v26 = MEMORY[0x1E69E65A8];
      v11[12] = MEMORY[0x1E69E6530];
      v11[13] = v26;
      v11[8] = v25;
      v11[9] = v20 - 1;
      sub_1BE048C84();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3D409C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AF64();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - v7;
  v8 = sub_1BE04AA64();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v41 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v17 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v39 - v21;
  if (v1[1])
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  sub_1BE052524();
  if (v1[7])
  {
    sub_1BE053D24();
    sub_1BE052524();
    if (v1[9])
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1BE053D24();
    if (v1[11])
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  sub_1BE053D24();
  if (!v1[9])
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1BE053D24();
  sub_1BE052524();
  if (v1[11])
  {
LABEL_7:
    sub_1BE053D24();
    sub_1BE052524();
    goto LABEL_11;
  }

LABEL_10:
  sub_1BE053D24();
LABEL_11:
  v23 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + v23[10], v22, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((*(v17 + 48))(v22, 1, v41) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    sub_1BD3D8A0C(v22, v19, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE053D24();
    sub_1BD3CEB24(a1);
    sub_1BD3D85F0(v19, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  v24 = v48;
  sub_1BD0DE19C(v1 + v23[11], v16, &unk_1EBD3CF70, &qword_1BE0BA000);
  v25 = *(v24 + 48);
  if (v25(v16, 1, v8) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v26 = v47;
    (*(v24 + 32))(v47, v16, v8);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v24 + 8))(v26, v8);
  }

  v27 = v45;
  v28 = v42;
  sub_1BD0DE19C(v2 + v23[12], v42, &unk_1EBD39970, &unk_1BE0B9F80);
  v29 = v44;
  if ((*(v44 + 48))(v28, 1, v27) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v30 = v8;
    v31 = v25;
    v32 = v40;
    (*(v29 + 32))(v40, v28, v27);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1BE052294();
    v33 = v32;
    v25 = v31;
    v8 = v30;
    v24 = v48;
    (*(v29 + 8))(v33, v27);
  }

  if (*(v2 + v23[13] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v34 = v43;
  sub_1BD0DE19C(v2 + v23[14], v43, &unk_1EBD3CF70, &qword_1BE0BA000);
  if (v25(v34, 1, v8) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v35 = v47;
    (*(v24 + 32))(v47, v34, v8);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v24 + 8))(v35, v8);
  }

  if (*(v2 + v23[15] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE053D24();
  sub_1BE053D24();
  v36 = v46;
  sub_1BD0DE19C(v2 + v23[18], v46, &unk_1EBD3CF70, &qword_1BE0BA000);
  if (v25(v36, 1, v8) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v37 = v47;
    (*(v24 + 32))(v47, v36, v8);
    sub_1BE053D24();
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v24 + 8))(v37, v8);
  }

  if (*(v2 + v23[19] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  if (*(v2 + v23[20] + 8))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BE052524();
  sub_1BD3D7474(a1, *(v2 + v23[22]));
  return sub_1BD3D7288(a1, *(v2 + v23[23]));
}

uint64_t sub_1BD3D4A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1BE053D04();
  a3(v5);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D4ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1BE053D04();
  a4(v6);
  return sub_1BE053D64();
}

uint64_t sub_1BD3D4B10@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_1BE048C84();
}

uint64_t sub_1BD3D4BAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v217 = a2;
  v213 = sub_1BE049E94();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v209 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v211 = (&v204 - v7);
  v230 = sub_1BE04AA64();
  v222 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v210 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1BE04A474();
  v233 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v228 = (&v204 - v11);
  v12 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  v225 = *(v12 - 8);
  v226 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v224 = (&v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v238 = &v204 - v15;
  v16 = sub_1BE04AF64();
  v216 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v223 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v239 = (&v204 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v229 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v241 = &v204 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v204 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v227 = &v204 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v204 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v204 - v34;
  v214 = [a1 entity];
  v36 = [a1 tokenIdentifier];
  v37 = sub_1BE052434();
  v39 = v38;

  a3[2] = v37;
  a3[3] = v39;
  LOBYTE(v36) = [a1 isLikelyDeferredPaymentToken];
  v240 = type metadata accessor for UnifiedMerchantTokenData(0);
  *(a3 + v240[17]) = v36;
  v40 = [a1 primaryAccountIdentifier];
  v41 = sub_1BE052434();
  v43 = v42;

  *a3 = v41;
  a3[1] = v43;
  v221 = a1;
  v44 = [a1 primaryAccountDisplayName];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1BE052434();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = (a3 + v240[19]);
  *v49 = v46;
  v49[1] = v48;
  v50 = [v221 primaryAccountSuffix];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1BE052434();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = (a3 + v240[20]);
  *v55 = v52;
  v55[1] = v54;
  v56 = v221;
  v57 = [v221 cardArtURL];
  if (v57)
  {
    v58 = v57;
    sub_1BE04A9F4();

    v59 = *(v222 + 56);
    v59(v35, 0, 1, v230);
  }

  else
  {
    v59 = *(v222 + 56);
    v59(v35, 1, 1, v230);
  }

  sub_1BD0DE204(v35, a3 + v240[18], &unk_1EBD3CF70, &qword_1BE0BA000);
  v60 = [v56 issuerName];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1BE052434();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = (a3 + v240[15]);
  *v65 = v62;
  v65[1] = v64;
  v66 = [v56 issuerTokenManagementURL];
  if (v66)
  {
    v67 = v66;
    sub_1BE04A9F4();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = 1;
  v59(v31, v68, 1, v230);
  v70 = v240;
  sub_1BD0DE204(v31, a3 + v240[14], &unk_1EBD3CF70, &qword_1BE0BA000);
  *(a3 + v70[16]) = [v56 userRevokeDisallowed];
  v71 = [v56 merchantIdentifier];
  v72 = sub_1BE052434();
  v74 = v73;

  a3[8] = v72;
  a3[9] = v74;
  v75 = [v56 merchantIconURL];
  if (v75)
  {
    v76 = v75;
    sub_1BE04A9F4();

    v69 = 0;
  }

  v77 = v216;
  v59(v26, v69, 1, v230);
  sub_1BD0DE204(v26, v227, &unk_1EBD3CF70, &qword_1BE0BA000);
  v78 = [v56 merchantDomain];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1BE052434();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  a3[6] = v80;
  a3[7] = v82;
  v83 = [v56 merchantApplicationIdentifier];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1BE052434();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = v241;
  a3[10] = v85;
  a3[11] = v87;
  v89 = [v56 merchantTokenManagementURL];
  if (v89)
  {
    v90 = v89;
    sub_1BE04A9F4();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v59(v88, v91, 1, v230);
  v92 = v240;
  sub_1BD0DE204(v88, a3 + v240[11], &unk_1EBD3CF70, &qword_1BE0BA000);
  v93 = v92[12];
  v94 = [v56 tokenIssuanceDate];
  sub_1BE04AEE4();

  (*(v77 + 56))(a3 + v93, 0, 1, v16);
  v95 = [v56 usageMetadata];
  if (!v95)
  {
    goto LABEL_32;
  }

  v96 = v95;
  v97 = [v95 effectiveExpirationDate];
  v98 = v239;
  sub_1BE04AEE4();

  LOBYTE(v97) = sub_1BE04AE84();
  (*(v77 + 8))(v98, v16);
  if ((v97 & 1) == 0)
  {

LABEL_32:
    v106 = [v56 merchantName];
    v107 = sub_1BE052434();
    v109 = v108;

    a3[4] = v107;
    a3[5] = v109;
    v110 = v240;
    v111 = (a3 + v240[13]);
    *v111 = 0;
    v111[1] = 0;
    v112 = MEMORY[0x1E69E7CC0];
    *(a3 + v110[22]) = MEMORY[0x1E69E7CC0];
    *(a3 + v110[23]) = v112;
    v113 = v229;
    goto LABEL_33;
  }

  v99 = [v96 usageInformation];
  v100 = [v99 merchantLogoName];
  v207 = v96;
  if (v100)
  {
    v101 = v100;
    sub_1BE052434();
    v103 = v102;

    v104 = [v96 usageInformation];
    v105 = sub_1BE04B034();
    v132 = sub_1BE049F84();

    v105, v133, v134, v135, v136, v137, v138, v139;
    v103, v140, v141, v142, v143, v144, v145, v146;
  }

  else
  {
    v132 = 0;
  }

  v215 = v132;
  v147 = [v99 merchantName];
  v148 = sub_1BE0495B4();
  v150 = v149;

  a3[4] = v148;
  a3[5] = v150;
  v151 = [v99 otherUsageDescription];
  if (v151)
  {
    v152 = v151;
    v153 = sub_1BE0495B4();
    v155 = v154;
  }

  else
  {
    v153 = 0;
    v155 = 0;
  }

  v156 = v240;
  v157 = (a3 + v240[13]);
  *v157 = v153;
  v157[1] = v155;
  v158 = sub_1BE049F74();
  MEMORY[0x1EEE9AC00](v158);
  v202 = v99;
  v203 = v227;
  sub_1BDA3DAE8(sub_1BD3DBD20, (&v204 - 4), v158);
  v160 = v159;
  v158, v161, v162, v163, v164, v165, v166, v167;
  *(a3 + v156[22]) = v160;
  v168 = sub_1BE049F64();
  v176 = v168;
  if (v168 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v113 = v229;
    v205 = v132;
    v206 = v99;
    v208 = a3;
    if (!i)
    {
      break;
    }

    v132 = 0;
    v234 = v176 & 0xFFFFFFFFFFFFFF8;
    v235 = v176 & 0xC000000000000001;
    ++v233;
    v232 = (v216 + 48);
    v218 = (v216 + 32);
    v239 = MEMORY[0x1E69E7CC0];
    a3 = v228;
    v220 = v176;
    v219 = i;
    while (1)
    {
      if (v235)
      {
        v179 = MEMORY[0x1BFB40900](v132, v176);
      }

      else
      {
        if (v132 >= *(v234 + 16))
        {
          goto LABEL_71;
        }

        v179 = *(v176 + 8 * v132 + 32);
      }

      v180 = v179;
      if (__OFADD__(v132, 1))
      {
        break;
      }

      v241 = (v132 + 1);
      if (qword_1EBD36BF8 != -1)
      {
        swift_once();
      }

      v181 = sub_1BE04B2F4();
      v99 = __swift_project_value_buffer(v181, qword_1EBDAB000);
      v182 = v236;
      sub_1BE049F14();
      sub_1BE04B204();
      (*v233)(v182, v237);
      if ((*v232)(a3, 1, v16) == 1)
      {

        sub_1BD0DE53C(a3, &unk_1EBD39970, &unk_1BE0B9F80);
        v178 = v241;
      }

      else
      {
        v99 = v218;
        v183 = *v218;
        v184 = v223;
        (*v218)(v223, a3, v16);
        v185 = [v180 identifier];
        v231 = sub_1BE052434();
        v187 = v186;

        v188 = v226;
        v189 = v224;
        sub_1BE049F04();

        v183(v189 + *(v188 + 24), v184, v16);
        *v189 = v231;
        v189[1] = v187;
        sub_1BD3D8A0C(v189, v238, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_1BD1D8D0C(0, v239[2] + 1, 1, v239);
        }

        v191 = v239[2];
        v190 = v239[3];
        a3 = v228;
        v176 = v220;
        i = v219;
        v178 = v241;
        if (v191 >= v190 >> 1)
        {
          v239 = sub_1BD1D8D0C((v190 > 1), v191 + 1, 1, v239);
        }

        v113 = v229;
        v192 = v238;
        v193 = v239;
        v239[2] = v191 + 1;
        sub_1BD3D8A0C(v192, v193 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v191, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      }

      ++v132;
      if (v178 == i)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  v239 = MEMORY[0x1E69E7CC0];
LABEL_68:
  v176, v169, v170, v171, v172, v173, v174, v175;

  a3 = v208;
  *(v208 + v240[23]) = v239;
  v56 = v221;
  v77 = v216;
  if (v205)
  {
    v194 = (a3 + v240[10]);
    v195 = v215;
    v196 = [v215 data];
    v197 = sub_1BE04AAC4();
    v199 = v198;

    *v194 = v197;
    v194[1] = v199;
    v200 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v200 - 8) + 56))(v194, 0, 1, v200);
    goto LABEL_37;
  }

LABEL_33:
  sub_1BD0DE19C(v227, v113, &unk_1EBD3CF70, &qword_1BE0BA000);
  v114 = v113;
  v115 = v222;
  v116 = v230;
  if ((*(v222 + 48))(v114, 1, v230) == 1)
  {
    sub_1BD0DE53C(v114, &unk_1EBD3CF70, &qword_1BE0BA000);
    v117 = v240[10];
    v118 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    (*(*(v118 - 8) + 56))(a3 + v117, 1, 1, v118);
  }

  else
  {
    v119 = *(v115 + 32);
    v120 = v210;
    v119(v210, v114, v116);
    v121 = v240[10];
    v119(a3 + v121, v120, v116);
    v122 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v122 - 8) + 56))(a3 + v121, 0, 1, v122);
  }

  v215 = 0;
LABEL_37:
  v123 = v213;
  v124 = v212;
  v125 = v211;
  sub_1BE049EB4();
  v126 = (*(v124 + 88))(v125, v123);
  if (v126 == *MEMORY[0x1E6967CB8])
  {
    (*(v77 + 8))(v217, v16);

    (*(v124 + 96))(v125, v123);
    v127 = *v125;
    v128 = v125[1];
LABEL_43:
    v130 = (a3 + v240[21]);
    *v130 = v127;
    v130[1] = v128;
    return sub_1BD0DE53C(v227, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  if (v126 == *MEMORY[0x1E6967CB0] || v126 == *MEMORY[0x1E6967CA0] || v126 == *MEMORY[0x1E6967CA8])
  {
    v127 = sub_1BE052434();
    v128 = v129;

    (*(v77 + 8))(v217, v16);
    goto LABEL_43;
  }

  v242 = 0;
  v243 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD00000000000001DLL, 0x80000001BE127800);
  v201 = v209;
  sub_1BE049EB4();
  sub_1BE053974();
  (*(v124 + 8))(v201, v123);
  LODWORD(v203) = 0;
  v202 = 308;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void *sub_1BD3D5F60@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v133 = a4;
  v125 = a2;
  v126 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v127 = &v119 - v6;
  v7 = sub_1BE04AA64();
  v129 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = (&v119 - v10);
  v120 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v135 = *(v15 - 8);
  v136 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE049F24();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *a1;
  sub_1BE049F34();
  v24 = (*(v20 + 88))(v22, v19);
  if (v24 != *MEMORY[0x1E6967D10])
  {
    if (v24 != *MEMORY[0x1E6967D08])
    {
      v54 = v129;
      if (v24 == *MEMORY[0x1E6967D00])
      {
        (*(v20 + 96))(v22, v19);
        v55 = *v22;
        v56 = v121;
        sub_1BE04A034();
        sub_1BE04A024();

        v53 = v130;
        sub_1BD3D8A0C(v56, v130, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v57 = v130;
        swift_storeEnumTagMultiPayload();
        (*(v20 + 8))(v22, v19);
        v53 = v57;
      }

LABEL_22:
      v60 = [v134 imageName];
      v62 = v131;
      v61 = v132;
      if (v60)
      {
        v63 = v60;
        sub_1BE052434();
        v65 = v64;

        v66 = sub_1BE04B034();
        v67 = sub_1BE049F84();
        if (v61)
        {

          v66, v75, v76, v77, v78, v79, v80, v81;
          v65, v82, v83, v84, v85, v86, v87, v88;
        }

        else
        {
          v106 = v67;
          v66, v68, v69, v70, v71, v72, v73, v74;
          v65, v107, v108, v109, v110, v111, v112, v113;
          if (v106)
          {
            v94 = v106;
            v114 = [v94 data];
            v115 = sub_1BE04AAC4();
            v117 = v116;

            *v62 = v115;
            v62[1] = v117;
            v118 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v118 - 8) + 56))(v62, 0, 1, v118);
LABEL_29:
            v95 = v134;
            v96 = [v134 identifier];
            v97 = sub_1BE052434();
            v99 = v98;

            v100 = [v95 label];
            v101 = sub_1BE0495B4();
            v103 = v102;

            v104 = v133;
            *v133 = v97;
            v104[1] = v99;
            v104[2] = v101;
            v104[3] = v103;
            v105 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
            sub_1BD0DE204(v62, v104 + *(v105 + 24), &qword_1EBD44D48, &qword_1BE1067C0);
            return sub_1BD3D8A0C(v53, v104 + *(v105 + 28), type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
          }
        }
      }

      v89 = v127;
      sub_1BD0DE19C(v126, v127, &unk_1EBD3CF70, &qword_1BE0BA000);
      if ((*(v54 + 48))(v89, 1, v7) == 1)
      {
        sub_1BD0DE53C(v89, &unk_1EBD3CF70, &qword_1BE0BA000);
        v90 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
        (*(*(v90 - 8) + 56))(v62, 1, 1, v90);
      }

      else
      {
        v91 = *(v54 + 32);
        v92 = v122;
        v91(v122, v89, v7);
        v91(v62, v92, v7);
        v93 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v93 - 8) + 56))(v62, 0, 1, v93);
      }

      v94 = 0;
      goto LABEL_29;
    }

    (*(v20 + 96))(v22, v19);
    v52 = *v22;
    sub_1BE049FA4();
    sub_1BE049F94();

    v53 = v130;
    sub_1BD3D8A0C(v14, v130, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    v54 = v129;
    goto LABEL_22;
  }

  (*(v20 + 96))(v22, v19);
  v25 = *v22;
  v26 = sub_1BE049FB4();
  if (!(v26 >> 62))
  {
    v34 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_4;
    }

LABEL_19:
    v26, v27, v28, v29, v30, v31, v32, v33;
    v38 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v59 = v123;
    sub_1BE04A014();

    *(v59 + *(v124 + 20)) = v38;
    v53 = v130;
    sub_1BD3D8A0C(v59, v130, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
    goto LABEL_21;
  }

  v58 = v26;
  v34 = sub_1BE053704();
  v26 = v58;
  if (!v34)
  {
    goto LABEL_19;
  }

LABEL_4:
  v35 = v26;
  v137 = MEMORY[0x1E69E7CC0];
  result = sub_1BD5320C0(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v120 = v25;
    v121 = v7;
    v37 = 0;
    v38 = v137;
    v39 = v35;
    v40 = v35 & 0xC000000000000001;
    v41 = v35;
    do
    {
      if (v40)
      {
        v42 = MEMORY[0x1BFB40900](v37, v39);
      }

      else
      {
        v42 = v39[v37 + 4];
      }

      v43 = v42;
      sub_1BE049F54();
      sub_1BE049F44();

      v137 = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1BD5320C0((v44 > 1), v45 + 1, 1);
        v38 = v137;
      }

      ++v37;
      *(v38 + 16) = v45 + 1;
      sub_1BD3D8A0C(v17, v38 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v45, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v39 = v41;
    }

    while (v34 != v37);
    v41, v41, v46, v47, v48, v49, v50, v51;
    v25 = v120;
    v7 = v121;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD3D694C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BE04A3C4();
    if (v10)
    {
      v11 = sub_1BE04A3E4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BE04A3D4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BE04A3C4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BE04A3E4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BE04A3D4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BD3D6B7C(uint64_t a1, unint64_t a2, void *a3, const char *a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BD3D8BFC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BD1245AC(a3, a4, v11, v12, v13, v14, v15, v16);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v25, 0, 14);
LABEL_9:
  sub_1BD3D694C(v25, a3, a4, &v24);
  v10 = v4;
  sub_1BD1245AC(a3, a4, v17, v18, v19, v20, v21, v22);
  if (!v4)
  {
    v10 = v24;
  }

  return v10 & 1;
}

uint64_t sub_1BD3D6D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageUsageGroup(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v9, v6);
  if (v9)
  {
    v11 = *(v4 + 24);
    v12 = *(v4 + 28);
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1BD3D89A4(v13, v8, type metadata accessor for SEStorageUsageGroup);
      sub_1BD3D6EDC(a1, *v8);
      sub_1BE04C164();
      sub_1BD3D1640(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
      sub_1BE052294();
      v15 = *(v8 + v11);
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v15);
      v16 = *(v8 + v12);
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v16);
      result = sub_1BD3D85F0(v8, type metadata accessor for SEStorageUsageGroup);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1BD3D6EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04AF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v14, v11);
  v44 = v14;
  if (v14)
  {
    v16 = v10;
    v17 = 0;
    v18 = v9[6];
    v42 = v9[7];
    v43 = v18;
    v19 = v9[8];
    v40 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v41 = v19;
    v20 = v4;
    v21 = (v4 + 48);
    v39 = *(v16 + 72);
    v36 = (v20 + 8);
    v37 = (v20 + 32);
    do
    {
      sub_1BD3D89A4(v40 + v39 * v17, v13, type metadata accessor for SEStorageUsageGroup.PassEntry);
      sub_1BE053084();
      v24 = *(v13 + 1);
      MEMORY[0x1BFB40DA0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v24 + 40);
        do
        {
          v27 = *v26;
          sub_1BE048C84();
          sub_1BE052524();
          v27, v28, v29, v30, v31, v32, v33, v34;
          v26 += 2;
          --v25;
        }

        while (v25);
      }

      sub_1BD0DE19C(&v13[v43], v8, &unk_1EBD39970, &unk_1BE0B9F80);
      if ((*v21)(v8, 1, v3) == 1)
      {
        sub_1BE053D24();
      }

      else
      {
        v22 = v38;
        (*v37)(v38, v8, v3);
        sub_1BE053D24();
        sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1BE052294();
        (*v36)(v22, v3);
      }

      v23 = *&v13[v42];
      if (v23 == 0.0)
      {
        v23 = 0.0;
      }

      MEMORY[0x1BFB40DD0](*&v23);
      ++v17;
      sub_1BE053D24();
      result = sub_1BD3D85F0(v13, type metadata accessor for SEStorageUsageGroup.PassEntry);
    }

    while (v17 != v44);
  }

  return result;
}

uint64_t sub_1BD3D7288(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1BD3D89A4(v10, v7, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      sub_1BE052524();
      sub_1BE0493F4();
      sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
      sub_1BE052294();
      sub_1BE04AF64();
      sub_1BD3D1640(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1BE052294();
      result = sub_1BD3D85F0(v7, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1BD3D7474(uint64_t a1, uint64_t a2)
{
  v111 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v111);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1BE04A474();
  v130 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v95 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v92 - v7;
  v110 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v110);
  v127 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE0493F4();
  v131 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v99 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1BE049FD4();
  v114 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v104);
  v115 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE04AA64();
  v132 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v119 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = (&v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v122 = &v92 - v30;
  v31 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v116 = *(v31 - 8);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v35, v32);
  v121 = v35;
  if (v35)
  {
    v37 = 0;
    v120 = a2 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v119 += 6;
    v97 = (v132 + 4);
    v38 = *(v31 + 24);
    v117 = *(v31 + 28);
    v118 = v38;
    v96 = (v132 + 1);
    v39 = v131;
    v40 = (v131 + 6);
    v116 = *(v116 + 72);
    ++v131;
    v132 = (v39 + 4);
    v103 = (v130 + 6);
    v94 = (v130 + 4);
    v93 = (v130 + 1);
    v102 = (v114 + 8);
    v130 = (v39 + 6);
    v113 = v4;
    v129 = v34;
    while (1)
    {
      sub_1BD3D89A4(v120 + v116 * v37, v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      sub_1BE052524();
      sub_1BE052524();
      v41 = v122;
      sub_1BD0DE19C(&v34[v118], v122, &qword_1EBD44D48, &qword_1BE1067C0);
      if ((*v119)(v41, 1, v125) == 1)
      {
        sub_1BE053D24();
        v42 = v127;
        goto LABEL_14;
      }

      v43 = v123;
      sub_1BD3D8A0C(v41, v123, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BE053D24();
      sub_1BD3D89A4(v43, v124, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v42 = v127;
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v45 = *v124;
        v46 = v124[1];
        MEMORY[0x1BFB40DA0](1);
        sub_1BE04AAD4();
        v47 = v46;
        v42 = v127;
        sub_1BD1245AC(v45, v47, v48, v49, v50, v51, v52, v53);
LABEL_12:
        sub_1BD3D85F0(v123, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        goto LABEL_14;
      }

      v58 = *v124;
      MEMORY[0x1BFB40DA0](2);
      sub_1BE053084();
      sub_1BD3D85F0(v123, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);

LABEL_14:
      sub_1BD3D89A4(&v129[v117], v128, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      v59 = swift_getEnumCaseMultiPayload();
      if (v59 > 1)
      {
        if (v59 == 2)
        {
          sub_1BD3D8A0C(v128, v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
          MEMORY[0x1BFB40DA0](2);
          v80 = v108;
          sub_1BD0DE19C(v4, v108, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
          v81 = *v40;
          if ((*v40)(v80, 1, v9) == 1)
          {
            sub_1BE053D24();
          }

          else
          {
            v83 = v133;
            (*v132)(v133, v80, v9);
            sub_1BE053D24();
            sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
            sub_1BE052294();
            (*v131)(v83, v9);
          }

          v84 = v109;
          sub_1BD0DE19C(&v4[*(v111 + 20)], v109, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
          if (v81(v84, 1, v9) == 1)
          {
            sub_1BE053D24();
          }

          else
          {
            v87 = v133;
            (*v132)(v133, v84, v9);
            sub_1BE053D24();
            sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
            sub_1BE052294();
            (*v131)(v87, v9);
          }

          sub_1BD3D85F0(v4, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
        }

        else
        {
          MEMORY[0x1BFB40DA0](3);
        }
      }

      else
      {
        if (!v59)
        {
          v114 = v37;
          v60 = v115;
          sub_1BD3D8A0C(v128, v115, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
          MEMORY[0x1BFB40DA0](0);
          v61 = v105;
          sub_1BE049FE4();
          sub_1BE049FC4();
          v63 = v62;
          (*v102)(v61, v106);
          sub_1BE052524();
          v63, v64, v65, v66, v67, v68, v69, v70;
          sub_1BE049FF4();
          sub_1BE053D34();
          v71 = *(v60 + *(v104 + 20));
          MEMORY[0x1BFB40DA0](*(v71 + 16));
          v72 = *(v71 + 16);
          if (v72)
          {
            v73 = v71 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
            v74 = *(v98 + 72);
            do
            {
              sub_1BD3D89A4(v73, v21, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
              sub_1BD0DE19C(v21, v19, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
              if ((*v40)(v19, 1, v9) == 1)
              {
                sub_1BE053D24();
              }

              else
              {
                v75 = v21;
                v76 = v19;
                v77 = v9;
                v78 = v133;
                (*v132)(v133, v76, v77);
                sub_1BE053D24();
                sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
                sub_1BE052294();
                v79 = v78;
                v9 = v77;
                v19 = v76;
                v21 = v75;
                v40 = v130;
                (*v131)(v79, v9);
              }

              sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
              sub_1BE052294();
              sub_1BD3D85F0(v21, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
              v73 += v74;
              --v72;
            }

            while (v72);
          }

          sub_1BD3D85F0(v115, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
          v4 = v113;
          v34 = v129;
          v37 = v114;
          goto LABEL_5;
        }

        sub_1BD3D8A0C(v128, v42, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
        MEMORY[0x1BFB40DA0](1);
        v82 = v107;
        sub_1BD0DE19C(v42, v107, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
        if ((*v40)(v82, 1, v9) == 1)
        {
          sub_1BE053D24();
        }

        else
        {
          v85 = v133;
          (*v132)(v133, v82, v9);
          sub_1BE053D24();
          sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
          sub_1BE052294();
          (*v131)(v85, v9);
        }

        v86 = v112;
        sub_1BD0DE19C(v42 + *(v110 + 20), v112, &qword_1EBD44DC0, &unk_1BE0D3070);
        if ((*v103)(v86, 1, v134) == 1)
        {
          sub_1BE053D24();
        }

        else
        {
          v88 = v95;
          v89 = v37;
          v90 = v134;
          (*v94)(v95, v112, v134);
          sub_1BE053D24();
          sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
          sub_1BE052294();
          v91 = v90;
          v37 = v89;
          v40 = v130;
          (*v93)(v88, v91);
        }

        sub_1BD3D85F0(v42, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
      }

      v34 = v129;
LABEL_5:
      ++v37;
      result = sub_1BD3D85F0(v34, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
      if (v37 == v121)
      {
        return result;
      }
    }

    v54 = v37;
    v55 = v100;
    v56 = v101;
    (*v97)(v100, v124, v101);
    MEMORY[0x1BFB40DA0](0);
    sub_1BD3D1640(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    v57 = v55;
    v37 = v54;
    v40 = v130;
    v4 = v113;
    (*v96)(v57, v56);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1BD3D85F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD3D8650(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE0493F4();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v14, v11);
  if (v14)
  {
    v16 = *(v9 + 20);
    v17 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = (v21 + 48);
    v19 = (v21 + 8);
    v20 = (v21 + 32);
    v21 = *(v10 + 72);
    v22 = v16;
    do
    {
      sub_1BD3D89A4(v17, v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      sub_1BD0DE19C(v13, v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      if ((*v18)(v8, 1, v3) == 1)
      {
        sub_1BE053D24();
      }

      else
      {
        (*v20)(v5, v8, v3);
        sub_1BE053D24();
        sub_1BD3D1640(&qword_1EBD44E58, MEMORY[0x1E6967790], MEMORY[0x1E69677A0]);
        sub_1BE052294();
        (*v19)(v5, v3);
      }

      sub_1BE04A474();
      sub_1BD3D1640(&qword_1EBD44E60, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      sub_1BE052294();
      result = sub_1BD3D85F0(v13, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment);
      v17 += v21;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1BD3D89A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3D8A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD3D8A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1BFB40DA0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v15 = *v5;
      v16 = v6;
      v7 = v5[7];
      v21 = v5[6];
      v22 = v7;
      v23 = *(v5 + 16);
      v8 = v5[3];
      v17 = v5[2];
      v18 = v8;
      v9 = v5[5];
      v19 = v5[4];
      v20 = v9;
      v10 = *(&v16 + 1);
      sub_1BD31435C(&v15, v14);
      sub_1BE052524();
      if (v10)
      {
        sub_1BE052524();
      }

      if (*(&v17 + 1))
      {
        sub_1BE052524();
      }

      if (*(&v18 + 1))
      {
        sub_1BE052524();
      }

      if (v19)
      {
        v11 = v19;
        sub_1BE053084();
      }

      if (*(&v19 + 1))
      {
        v12 = *(&v19 + 1);
        sub_1BE053084();
      }

      if (v22)
      {
        sub_1BE052524();
      }

      if (v20)
      {
        v13 = v20;
        sub_1BE053084();
      }

      if ((v21 & 1) == 0)
      {
        MEMORY[0x1BFB40DA0](*(&v20 + 1));
      }

      result = sub_1BD3143B8(&v15);
      v5 = (v5 + 136);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BD3D8BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BE04A3C4();
  v11 = result;
  if (result)
  {
    result = sub_1BE04A3E4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BE04A3D4();
  sub_1BD3D694C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1BD3D8CB4(_BOOL8 result, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = a3[2];
      v10 = a3[3];
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BD041A38(a3, a4);
          return sub_1BD3D6B7C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BD3D8E1C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1BE04AA64();
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E70, &qword_1BE0D3538);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - v16;
  v19 = (&v50 + *(v18 + 56) - v16);
  sub_1BD3D89A4(a1, &v50 - v16, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D89A4(v51, v19, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD3D89A4(v17, v11, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v21 = *v11;
      v22 = *(v11 + 1);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = *v19;
        v29 = v19[1];
        v31 = sub_1BD3D8CB4(v21, v22, v30, v29);
        sub_1BD1245AC(v30, v29, v32, v33, v34, v35, v36, v37);
        sub_1BD1245AC(v21, v22, v38, v39, v40, v41, v42, v43);
LABEL_13:
        sub_1BD3D85F0(v17, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
        return v31 & 1;
      }

      sub_1BD1245AC(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    else
    {
      sub_1BD3D89A4(v17, v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v46 = *v8;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v47 = *v19;
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        v31 = sub_1BE053074();

        goto LABEL_13;
      }
    }
  }

  else
  {
    v44 = v5;
    v45 = v50;
    sub_1BD3D89A4(v17, v14, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v45 + 32))(v44, v19, v3);
      v31 = sub_1BE04A9E4();
      v48 = *(v45 + 8);
      v48(v44, v3);
      v48(v14, v3);
      goto LABEL_13;
    }

    (*(v45 + 8))(v14, v3);
  }

  sub_1BD0DE53C(v17, &qword_1EBD44E70, &qword_1BE0D3538);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1BD3D91F4(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v129 = *(v4 - 8);
  v130 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v124 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = &v118 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v118 - v8;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  v132 = v9;
  v133 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v118 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v118 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78, &unk_1BE0E4690);
  MEMORY[0x1EEE9AC00](v131);
  v121 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v118 - v23;
  v25 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v118 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80, &qword_1BE0D3550);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v118 - v33;
  v35 = a1[1];
  v36 = a2[1];
  if (v35)
  {
    if (!v36 || (*a1 != *a2 || v35 != v36) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v36)
  {
    goto LABEL_57;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_57;
  }

  v37 = a1[7];
  v38 = a2[7];
  if (v37)
  {
    if (!v38 || (a1[6] != a2[6] || v37 != v38) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v38)
  {
    goto LABEL_57;
  }

  v39 = a1[9];
  v40 = a2[9];
  if (v39)
  {
    if (!v40 || (a1[8] != a2[8] || v39 != v40) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v40)
  {
    goto LABEL_57;
  }

  v41 = a1[11];
  v42 = a2[11];
  if (v41)
  {
    if (!v42 || (a1[10] != a2[10] || v41 != v42) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v42)
  {
    goto LABEL_57;
  }

  v43 = type metadata accessor for UnifiedMerchantTokenData(0);
  v44 = *(v43 + 40);
  v118 = v43;
  v119 = v44;
  v45 = *(v32 + 48);
  sub_1BD0DE19C(&v44[a1], v34, &qword_1EBD44D48, &qword_1BE1067C0);
  v46 = &v119[a2];
  v119 = v45;
  sub_1BD0DE19C(v46, &v45[v34], &qword_1EBD44D48, &qword_1BE1067C0);
  v47 = *(v26 + 48);
  if (v47(v34, 1, v25) == 1)
  {
    if (v47(&v119[v34], 1, v25) == 1)
    {
      sub_1BD0DE53C(v34, &qword_1EBD44D48, &qword_1BE1067C0);
      goto LABEL_42;
    }

LABEL_40:
    v48 = &qword_1EBD44E80;
    v49 = &qword_1BE0D3550;
    v50 = v34;
LABEL_56:
    sub_1BD0DE53C(v50, v48, v49);
    goto LABEL_57;
  }

  sub_1BD0DE19C(v34, v31, &qword_1EBD44D48, &qword_1BE1067C0);
  if (v47(&v119[v34], 1, v25) == 1)
  {
    sub_1BD3D85F0(v31, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_40;
  }

  sub_1BD3D8A0C(&v119[v34], v28, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  v51 = sub_1BD3D8E1C(v31, v28);
  sub_1BD3D85F0(v28, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D85F0(v31, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD0DE53C(v34, &qword_1EBD44D48, &qword_1BE1067C0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_42:
  v52 = v118;
  v53 = v118[11];
  v54 = *(v131 + 48);
  sub_1BD0DE19C(a1 + v53, v24, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BD0DE19C(a2 + v53, &v24[v54], &unk_1EBD3CF70, &qword_1BE0BA000);
  v55 = v132;
  v56 = *(v133 + 48);
  if ((v56)(v24, 1, v132) == 1)
  {
    if ((v56)(&v24[v54], 1, v55) == 1)
    {
      v119 = v56;
      sub_1BD0DE53C(v24, &unk_1EBD3CF70, &qword_1BE0BA000);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  sub_1BD0DE19C(v24, v18, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((v56)(&v24[v54], 1, v55) == 1)
  {
    (*(v133 + 8))(v18, v55);
LABEL_47:
    v48 = &qword_1EBD44E78;
    v49 = &unk_1BE0E4690;
    v50 = v24;
    goto LABEL_56;
  }

  v119 = v56;
  v57 = v133;
  v58 = v125;
  (*(v133 + 32))(v125, &v24[v54], v55);
  sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v59 = sub_1BE052334();
  v60 = *(v57 + 8);
  v61 = v58;
  v52 = v118;
  v60(v61, v55);
  v60(v18, v55);
  sub_1BD0DE53C(v24, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((v59 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  v62 = v52[12];
  v63 = *(v126 + 48);
  v64 = v128;
  sub_1BD0DE19C(a1 + v62, v128, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE19C(a2 + v62, v64 + v63, &unk_1EBD39970, &unk_1BE0B9F80);
  v66 = v129;
  v65 = v130;
  v67 = *(v129 + 48);
  if (v67(v64, 1, v130) == 1)
  {
    if (v67(v64 + v63, 1, v65) == 1)
    {
      sub_1BD0DE53C(v64, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_60;
    }

LABEL_54:
    v48 = &qword_1EBD3A750;
    v49 = &unk_1BE0D3540;
LABEL_55:
    v50 = v64;
    goto LABEL_56;
  }

  sub_1BD0DE19C(v64, v127, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v67(v64 + v63, 1, v65) == 1)
  {
    (*(v66 + 8))(v127, v65);
    goto LABEL_54;
  }

  (*(v66 + 32))(v124, v64 + v63, v65);
  sub_1BD3D1640(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v70 = v127;
  v71 = sub_1BE052334();
  v72 = *(v66 + 8);
  v72(v124, v65);
  v72(v70, v65);
  sub_1BD0DE53C(v64, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((v71 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_60:
  v73 = v52[13];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v77)
  {
    goto LABEL_57;
  }

  v78 = v52[14];
  v79 = *(v131 + 48);
  v64 = v123;
  sub_1BD0DE19C(a1 + v78, v123, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BD0DE19C(a2 + v78, v64 + v79, &unk_1EBD3CF70, &qword_1BE0BA000);
  v80 = v132;
  v81 = v119;
  if ((v119)(v64, 1, v132) == 1)
  {
    if ((v81)(v64 + v79, 1, v80) == 1)
    {
      v119 = v81;
      sub_1BD0DE53C(v64, &unk_1EBD3CF70, &qword_1BE0BA000);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v82 = v122;
  sub_1BD0DE19C(v64, v122, &unk_1EBD3CF70, &qword_1BE0BA000);
  v119 = v81;
  if ((v81)(v64 + v79, 1, v80) == 1)
  {
    (*(v133 + 8))(v82, v80);
LABEL_72:
    v48 = &qword_1EBD44E78;
    v49 = &unk_1BE0E4690;
    goto LABEL_55;
  }

  v83 = v133;
  v84 = v125;
  (*(v133 + 32))(v125, v64 + v79, v80);
  sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v85 = sub_1BE052334();
  v86 = *(v83 + 8);
  v86(v84, v80);
  v86(v82, v80);
  sub_1BD0DE53C(v64, &unk_1EBD3CF70, &qword_1BE0BA000);
  v52 = v118;
  if ((v85 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_74:
  v87 = v52[15];
  v88 = (a1 + v87);
  v89 = *(a1 + v87 + 8);
  v90 = (a2 + v87);
  v91 = v90[1];
  if (v89)
  {
    if (!v91 || (*v88 != *v90 || v89 != v91) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v91)
  {
    goto LABEL_57;
  }

  if (*(a1 + v52[16]) != *(a2 + v52[16]) || *(a1 + v118[17]) != *(a2 + v118[17]))
  {
    goto LABEL_57;
  }

  v92 = v118[18];
  v93 = *(v131 + 48);
  v94 = v121;
  sub_1BD0DE19C(a1 + v92, v121, &unk_1EBD3CF70, &qword_1BE0BA000);
  sub_1BD0DE19C(a2 + v92, v94 + v93, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((v119)(v94, 1, v132) != 1)
  {
    v95 = v121;
    sub_1BD0DE19C(v121, v120, &unk_1EBD3CF70, &qword_1BE0BA000);
    if ((v119)(v95 + v93, 1, v132) != 1)
    {
      v96 = v132;
      v97 = v133;
      v98 = v121;
      v99 = v121 + v93;
      v100 = v125;
      (*(v133 + 32))(v125, v99, v132);
      sub_1BD3D1640(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v101 = v120;
      v102 = sub_1BE052334();
      v103 = *(v97 + 8);
      v103(v100, v96);
      v103(v101, v96);
      sub_1BD0DE53C(v98, &unk_1EBD3CF70, &qword_1BE0BA000);
      if ((v102 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_90;
    }

    (*(v133 + 8))(v120, v132);
    goto LABEL_88;
  }

  if ((v119)(v121 + v93, 1, v132) != 1)
  {
LABEL_88:
    v48 = &qword_1EBD44E78;
    v49 = &unk_1BE0E4690;
    v50 = v121;
    goto LABEL_56;
  }

  sub_1BD0DE53C(v121, &unk_1EBD3CF70, &qword_1BE0BA000);
LABEL_90:
  v104 = v118[19];
  v105 = (a1 + v104);
  v106 = *(a1 + v104 + 8);
  v107 = (a2 + v104);
  v108 = v107[1];
  if (v106)
  {
    if (!v108 || (*v105 != *v107 || v106 != v108) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v108)
  {
    goto LABEL_57;
  }

  v109 = v118[20];
  v110 = (a1 + v109);
  v111 = *(a1 + v109 + 8);
  v112 = (a2 + v109);
  v113 = v112[1];
  if (v111)
  {
    if (!v113 || (*v110 != *v112 || v111 != v113) && (sub_1BE053B84() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v113)
  {
    goto LABEL_57;
  }

  v114 = v118[21];
  v115 = *(a1 + v114);
  v116 = *(a1 + v114 + 8);
  v117 = (a2 + v114);
  if (v115 == *v117 && v116 == v117[1] || (sub_1BE053B84()) && (sub_1BD3FE6DC(*(a1 + v118[22]), *(a2 + v118[22])))
  {
    v68 = sub_1BD3FEC0C(*(a1 + v118[23]), *(a2 + v118[23]));
    return v68 & 1;
  }

LABEL_57:
  v68 = 0;
  return v68 & 1;
}

BOOL sub_1BD3DA260(void *a1, void *a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48, &qword_1BE1067C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E80, &qword_1BE0D3550);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1BE053B84() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v21 = v7;
  v22 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1BD0DE19C(a1 + v14, v13, &qword_1EBD44D48, &qword_1BE1067C0);
  sub_1BD0DE19C(a2 + v14, &v13[v15], &qword_1EBD44D48, &qword_1BE1067C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD44D48, &qword_1BE1067C0);
      return sub_1BD3DA5C8(a1 + *(v22 + 28), a2 + *(v22 + 28));
    }

    goto LABEL_11;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD44D48, &qword_1BE1067C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BD3D85F0(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
LABEL_11:
    sub_1BD0DE53C(v13, &qword_1EBD44E80, &qword_1BE0D3550);
    return 0;
  }

  v18 = v21;
  sub_1BD3D8A0C(&v13[v15], v21, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  v19 = sub_1BD3D8E1C(v10, v18);
  sub_1BD3D85F0(v18, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD3D85F0(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  sub_1BD0DE53C(v13, &qword_1EBD44D48, &qword_1BE1067C0);
  if (v19)
  {
    return sub_1BD3DA5C8(a1 + *(v22 + 28), a2 + *(v22 + 28));
  }

  return 0;
}

BOOL sub_1BD3DA5C8(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049FD4();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v78 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E88, &qword_1BE0D3558);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v77 - v24;
  v27 = *(v26 + 56);
  sub_1BD3D89A4(a1, &v77 - v24, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  sub_1BD3D89A4(v84, &v25[v27], type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_16:
        sub_1BD0DE53C(v25, &qword_1EBD44E88, &qword_1BE0D3558);
        return 0;
      }

LABEL_12:
      sub_1BD3D85F0(v25, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      return 1;
    }

    sub_1BD3D89A4(v25, v16, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
      v30 = v16;
      goto LABEL_15;
    }

    v31 = v82;
    sub_1BD3D8A0C(&v25[v27], v82, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v32 = sub_1BD3DB7B0(v16, v31);
    sub_1BD3D85F0(v31, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails);
    v33 = v16;
    v34 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BD3D89A4(v25, v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      if (swift_getEnumCaseMultiPayload())
      {
        v29 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails;
        v30 = v22;
LABEL_15:
        sub_1BD3D85F0(v30, v29);
        goto LABEL_16;
      }

      sub_1BD3D8A0C(&v25[v27], v83, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      sub_1BE049FE4();
      v36 = sub_1BE049FC4();
      v38 = v37;
      v39 = v81;
      v40 = *(v80 + 8);
      v40(v12, v81);
      v41 = v79;
      sub_1BE049FE4();
      v42 = sub_1BE049FC4();
      v44 = v43;
      v40(v41, v39);
      if (v36 == v42 && v38 == v44)
      {
        v44, v45, v46, v47, v48, v49, v50, v51;
        v38, v52, v53, v54, v55, v56, v57, v58;
        v59 = v83;
      }

      else
      {
        v60 = sub_1BE053B84();
        v44, v61, v62, v63, v64, v65, v66, v67;
        v38, v68, v69, v70, v71, v72, v73, v74;
        v59 = v83;
        if ((v60 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v75 = sub_1BE049FF4();
      if (v75 == sub_1BE049FF4())
      {
        v76 = sub_1BD3FEE38(*&v22[*(v78 + 20)], *(v59 + *(v78 + 20)));
        sub_1BD3D85F0(v59, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        sub_1BD3D85F0(v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
        if ((v76 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_12;
      }

LABEL_26:
      sub_1BD3D85F0(v59, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
      sub_1BD3D85F0(v22, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails);
LABEL_27:
      sub_1BD3D85F0(v25, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
      return 0;
    }

    sub_1BD3D89A4(v25, v19, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
      v30 = v19;
      goto LABEL_15;
    }

    sub_1BD3D8A0C(&v25[v27], v7, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    v32 = sub_1BD3DB180(v19, v7);
    sub_1BD3D85F0(v7, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails);
    v33 = v19;
    v34 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails;
  }

  sub_1BD3D85F0(v33, v34);
  sub_1BD3D85F0(v25, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.PaymentType);
  return v32;
}

uint64_t sub_1BD3DAC78(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1BE049FD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  sub_1BE049FE4();
  v12 = sub_1BE049FC4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  sub_1BE049FE4();
  v16 = sub_1BE049FC4();
  v18 = v17;
  v15(v8, v5);
  if (v12 == v16 && v14 == v18)
  {
    v18, v19, v20, v21, v22, v23, v24, v25;
    v14, v42, v43, v44, v45, v46, v47, v48;
  }

  else
  {
    v27 = sub_1BE053B84();
    v18, v28, v29, v30, v31, v32, v33, v34;
    v14, v35, v36, v37, v38, v39, v40, v41;
    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v49 = sub_1BE049FF4();
  if (v49 != sub_1BE049FF4())
  {
LABEL_10:
    v51 = 0;
    return v51 & 1;
  }

  v50 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails(0);
  v51 = sub_1BD3FEE38(*(a1 + *(v50 + 20)), *(a2 + *(v50 + 20)));
  return v51 & 1;
}

uint64_t sub_1BD3DAE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98, &unk_1BE0D4CB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v22 - v12, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
LABEL_9:
      v20 = type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.RecurringPaymentDetails.ScheduledPayment(0);
      v17 = MEMORY[0x1BFB374A0](a1 + *(v20 + 20), a2 + *(v20 + 20));
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD44E98, &unk_1BE0D4CB0);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
  v18 = sub_1BE052334();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1BD0DE53C(v13, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

BOOL sub_1BD3DB180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04A474();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44DC0, &unk_1BE0D3070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E90, &unk_1BE0D3560);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v38 - v8;
  v9 = sub_1BE0493F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98, &unk_1BE0D4CB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v20 = *(v19 + 56);
  v42 = a1;
  sub_1BD0DE19C(a1, &v38 - v17, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v43 = a2;
  sub_1BD0DE19C(a2, &v18[v20], &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_1BD0DE19C(v18, v15, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
      v25 = sub_1BE052334();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_1BD0DE53C(v18, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_1EBD44E98;
    v23 = &unk_1BE0D4CB0;
    v24 = v18;
LABEL_14:
    sub_1BD0DE53C(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1BD0DE53C(v18, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
LABEL_8:
  v27 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.DeferredPaymentDetails(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_1BD0DE19C(v42 + v27, v41, &qword_1EBD44DC0, &unk_1BE0D3070);
  sub_1BD0DE19C(v43 + v27, v28 + v29, &qword_1EBD44DC0, &unk_1BE0D3070);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_1BD0DE53C(v28, &qword_1EBD44DC0, &unk_1BE0D3070);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_1BD0DE19C(v28, v39, &qword_1EBD44DC0, &unk_1BE0D3070);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_1EBD44E90;
    v23 = &unk_1BE0D3560;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_1BD3D1640(&qword_1EBD44EA0, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
  v36 = sub_1BE052334();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_1BD0DE53C(v28, &qword_1EBD44DC0, &unk_1BE0D3070);
  return (v36 & 1) != 0;
}

BOOL sub_1BD3DB7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0493F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E98, &unk_1BE0D4CB0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v18 = *(v17 + 48);
  v40 = a1;
  sub_1BD0DE19C(a1, &v36 - v15, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v41 = a2;
  sub_1BD0DE19C(a2, &v16[v18], &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD0DE19C(v16, v11, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v16[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
      v25 = sub_1BE052334();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_1BD0DE53C(v16, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v16;
LABEL_14:
    sub_1BD0DE53C(v20, &qword_1EBD44E98, &unk_1BE0D4CB0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_1BD0DE53C(v16, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
LABEL_8:
  v27 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment.AutomaticReloadPaymentDetails(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_1BD0DE19C(v40 + v27, v39, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  sub_1BD0DE19C(v41 + v27, v29 + v28, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_1BD0DE53C(v29, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_1BD0DE19C(v29, v37, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1BD3D1640(&qword_1EBD44EA8, MEMORY[0x1E6967790], MEMORY[0x1E69677A8]);
  v34 = sub_1BE052334();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_1BD0DE53C(v29, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  return (v34 & 1) != 0;
}

uint64_t sub_1BD3DBD4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE051F54();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1BD3DCBA4;
  v31 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_83;
  v16 = _Block_copy(aBlock);
  v17 = v31;
  v18 = a1;
  v19 = a2;
  sub_1BE048964();
  v17, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v29 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v28);
}

uint64_t type metadata accessor for ProvisioningVerificationAppClipFlowItem(uint64_t a1)
{
  result = qword_1EBD44EE8;
  if (!qword_1EBD44EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD3DC168(uint64_t a1)
{
  result = sub_1BE04AA64();
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

void sub_1BD3DC240(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v5 = objc_allocWithZone(MEMORY[0x1E6994678]);
  sub_1BE048964();
  v6 = sub_1BE04A9C4();
  v7 = [v5 initWithURL_];

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BD3DCBF4;
  *(v8 + 24) = v4;
  v25[4] = sub_1BD201978;
  v26 = v8;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1BD14E1D8;
  v25[3] = &block_descriptor_26;
  v9 = _Block_copy(v25);
  v10 = v26;
  sub_1BE048964();
  v10, v11, v12, v13, v14, v15, v16, v17;
  [v7 requestMetadataWithCompletion_];
  _Block_release(v9);
  v4, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD3DC3A8()
{
  [*(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter) reportViewAppeared];
  v1 = objc_allocWithZone(MEMORY[0x1E6994680]);
  v2 = sub_1BE04A9C4();
  v3 = [v1 initWithURL_];

  [v3 setShouldReturnErrorOnUserCancellation_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_1BD3DCBDC;
  v15 = v4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD3CC8C0;
  v14[3] = &block_descriptor_10_2;
  v5 = _Block_copy(v14);
  v15, v6, v7, v8, v9, v10, v11, v12;
  [v3 requestClipWithCompletion_];
  _Block_release(v5);

  return 1;
}

uint64_t sub_1BD3DC4F8(char a1, void *a2, uint64_t a3)
{
  v5 = sub_1BE051F54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  aBlock[4] = sub_1BD3DCBE4;
  v29 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_17_2;
  v16 = _Block_copy(aBlock);
  v17 = v29;
  v18 = a2;
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v8, v16);
  _Block_release(v16);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v27);
}

void sub_1BD3DC7D8(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2)
    {
      sub_1BE04D0C4();
      v14 = sub_1BE04D204();
      v15 = sub_1BE052C54();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1BD026000, v14, v15, "Starting app clip verification", v16, 2u);
        MEMORY[0x1BFB45F20](v16, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v11, v5);
    }

    else
    {
      sub_1BE04D0C4();
      v17 = a3;
      v18 = sub_1BE04D204();
      v19 = sub_1BE052C54();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45[1] = a3;
        v46 = v21;
        *v20 = 136315138;
        v22 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0, &unk_1BE0CB420);
        v23 = sub_1BE0524A4();
        v25 = v24;
        v26 = sub_1BD123690(v23, v24, &v46);
        v25, v27, v28, v29, v30, v31, v32, v33;
        *(v20 + 4) = v26;
        _os_log_impl(&dword_1BD026000, v18, v19, "Failed to start app clip verification with error: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21, v34, v35, v36, v37, v38, v39, v40);
        MEMORY[0x1BFB45F20](v21, -1, -1);
        MEMORY[0x1BFB45F20](v20, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      v41 = &v13[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v42 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v44 = v13;
        sub_1BD8659A4(v44, &off_1F3BA4BB0, ObjectType, v42);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1BD3DCAFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD3DCB38(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD3DCBA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24) == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  return (*(v0 + 32))(v2);
}

uint64_t sub_1BD3DCBF4(char a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE127870;
    v2 = 0xD000000000000016;
    v4 = 1;
  }

  return (*(v1 + 16))(v2, v3, 0, v4);
}

void sub_1BD3DCC6C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v306 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v306 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v306 - v10;
  KeyPath = swift_getKeyPath();
  v314 = v0;
  v13 = sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  if (*(v0 + 72))
  {
    if ((*(v0 + 73) & 1) == 0)
    {
      *(v0 + 73) = 0;
      return;
    }

    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    *(&v306 - 2) = v0;
    *(&v306 - 8) = 0;
    v314 = v0;
LABEL_26:
    sub_1BE04B584();
    v21, v275, v276, v277, v278, v279, v280, v281;
    return;
  }

  v22 = swift_getKeyPath();
  v314 = v0;
  sub_1BE04B594();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = *(v0 + 16);
  v312 = v13;
  v313 = v3;
  if (!v30)
  {
LABEL_20:
    sub_1BE04D094();
    sub_1BE048964();
    v183 = sub_1BE04D204();
    v184 = sub_1BE052C24();
    v1, v185, v186, v187, v188, v189, v190, v191;
    if (os_log_type_enabled(v183, v184))
    {
      v192 = swift_slowAlloc();
      v310 = swift_slowAlloc();
      v316[0] = v310;
      *v192 = 136315906;
      v193 = swift_getKeyPath();
      v314 = v1;
      sub_1BE04B594();
      v193, v194, v195, v196, v197, v198, v199, v200;
      v314 = *(v1 + 16);
      v201 = v314;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F60, &unk_1BE0D3920);
      v202 = sub_1BE0524A4();
      v204 = v203;
      v205 = sub_1BD123690(v202, v203, v316);
      v204, v206, v207, v208, v209, v210, v211, v212;
      *(v192 + 4) = v205;
      *(v192 + 12) = 2080;
      v213 = swift_getKeyPath();
      v314 = v1;
      sub_1BE04B594();
      v213, v214, v215, v216, v217, v218, v219, v220;
      v221 = *(v1 + 32);
      v314 = *(v1 + 24);
      v315 = v221;
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
      v222 = sub_1BE0524A4();
      v224 = v223;
      v225 = sub_1BD123690(v222, v223, v316);
      v311 = v2;
      v226 = v225;
      v224, v227, v228, v229, v230, v231, v232, v233;
      *(v192 + 14) = v226;
      *(v192 + 22) = 2080;
      v234 = swift_getKeyPath();
      v314 = v1;
      sub_1BE04B594();
      v234, v235, v236, v237, v238, v239, v240, v241;
      v242 = *(v1 + 48);
      v314 = *(v1 + 40);
      v315 = v242;
      sub_1BE048C84();
      v243 = sub_1BE0524A4();
      v245 = v244;
      v246 = sub_1BD123690(v243, v244, v316);
      v245, v247, v248, v249, v250, v251, v252, v253;
      *(v192 + 24) = v246;
      *(v192 + 32) = 2080;
      v254 = swift_getKeyPath();
      v314 = v1;
      sub_1BE04B594();
      v254, v255, v256, v257, v258, v259, v260, v261;
      v262 = *(v1 + 64);
      v314 = *(v1 + 56);
      v315 = v262;
      sub_1BE048C84();
      v263 = sub_1BE0524A4();
      v265 = v264;
      v266 = sub_1BD123690(v263, v264, v316);
      v265, v267, v268, v269, v270, v271, v272, v273;
      *(v192 + 34) = v266;
      _os_log_impl(&dword_1BD026000, v183, v184, "PeerPaymentMessagesExtension: ObserverBubble: incomplete dataset to perform signature validation. currencyAmount: %s, recipient: %s, sender: %s, paymentSignature: %s", v192, 0x2Au);
      v274 = v310;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v274, -1, -1);
      MEMORY[0x1BFB45F20](v192, -1, -1);

      (*(v313 + 8))(v5, v311);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    if (*(v1 + 73) == 1)
    {
      *(v1 + 73) = 1;
      return;
    }

    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    *(&v306 - 2) = v1;
    *(&v306 - 8) = 1;
    v314 = v1;
    goto LABEL_26;
  }

  v31 = swift_getKeyPath();
  v314 = v1;
  v32 = v30;
  sub_1BE04B594();
  v31, v33, v34, v35, v36, v37, v38, v39;
  v40 = *(v1 + 32);
  if (!v40)
  {

LABEL_19:
    v3 = v313;
    goto LABEL_20;
  }

  v310 = v32;
  v308 = *(v1 + 24);
  v41 = swift_getKeyPath();
  v314 = v1;
  sub_1BE048C84();
  v42 = v40;
  sub_1BE04B594();
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = *(v1 + 48);
  if (!v50)
  {

    v40, v162, v163, v164, v165, v166, v167, v168;
    goto LABEL_19;
  }

  v311 = v2;
  v307 = *(v1 + 40);
  v51 = swift_getKeyPath();
  v314 = v1;
  sub_1BE048C84();
  sub_1BE04B594();
  v51, v52, v53, v54, v55, v56, v57, v58;
  v309 = *(v1 + 64);
  if (!v309)
  {

    v40, v169, v170, v171, v172, v173, v174, v175;
    v50, v176, v177, v178, v179, v180, v181, v182;
    v2 = v311;
    goto LABEL_19;
  }

  v306 = *(v1 + 56);
  sub_1BE048C84();
  v59 = sub_1BD3E04C8();
  v60 = v310;
  v61 = [v310 amount];
  v62 = [v59 stringForObjectValue_];

  if (v62)
  {
    v70 = sub_1BE052434();
    v72 = v71;

    v314 = v307;
    v315 = v50;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v308, v42);
    v73 = v315;
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v70, v72);
    v73, v74, v75, v76, v77, v78, v79, v80;
    v81 = v60;
    v82 = v314;
    v83 = v315;
    v84 = [v81 currency];
    if (v84)
    {
      v92 = v84;
      v72, v85, v86, v87, v88, v89, v90, v91;
      v50, v93, v94, v95, v96, v97, v98, v99;
      v42, v100, v101, v102, v103, v104, v105, v106;
      v107 = sub_1BE052434();
      v109 = v108;

      v314 = v82;
      v315 = v83;
      sub_1BE048C84();
      MEMORY[0x1BFB3F610](v107, v109);
      v83, v110, v111, v112, v113, v114, v115, v116;
      v109, v117, v118, v119, v120, v121, v122, v123;
      v125 = v314;
      v124 = v315;
      sub_1BE04D094();
      sub_1BE048C84();
      v126 = sub_1BE04D204();
      v127 = sub_1BE052C14();
      v124, v128, v129, v130, v131, v132, v133, v134;
      if (os_log_type_enabled(v126, v127))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v314 = v136;
        *v135 = 136315138;
        *(v135 + 4) = sub_1BD123690(v125, v124, &v314);
        _os_log_impl(&dword_1BD026000, v126, v127, "PeerPaymentMessagesExtension: ObserverBubble: validating transaction string: %s", v135, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v136, v137, v138, v139, v140, v141, v142, v143);
        MEMORY[0x1BFB45F20](v136, -1, -1);
        MEMORY[0x1BFB45F20](v135, -1, -1);
      }

      (*(v313 + 8))(v11, v311);
      v144 = sub_1BE052404();
      v124, v145, v146, v147, v148, v149, v150, v151;
      v152 = v309;
      v153 = sub_1BE052404();
      v152, v154, v155, v156, v157, v158, v159, v160;
      LODWORD(v152) = PKPeerPaymentSignatureIsValid();

      if (v152)
      {
        if ((*(v1 + 73) & 1) == 0)
        {

          *(v1 + 73) = 0;
          return;
        }

        v161 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v161);
        *(&v306 - 2) = v1;
        *(&v306 - 8) = 0;
        v314 = v1;
      }

      else
      {
        if (*(v1 + 73))
        {

          *(v1 + 73) = 1;
          return;
        }

        v161 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v161);
        *(&v306 - 2) = v1;
        *(&v306 - 8) = 1;
        v314 = v1;
      }

      sub_1BE04B584();
      v161, v299, v300, v301, v302, v303, v304, v305;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v309, v63, v64, v65, v66, v67, v68, v69;
    v50, v282, v283, v284, v285, v286, v287, v288;
    v42, v289, v290, v291, v292, v293, v294, v295;
    sub_1BE04D094();
    v296 = sub_1BE04D204();
    v297 = sub_1BE052C34();
    if (os_log_type_enabled(v296, v297))
    {
      v298 = swift_slowAlloc();
      *v298 = 0;
      _os_log_impl(&dword_1BD026000, v296, v297, "PeerPaymentMessagesExtension: ObserverBubble: error formatting the amount", v298, 2u);
      MEMORY[0x1BFB45F20](v298, -1, -1);
    }

    (*(v313 + 8))(v8, v311);
  }
}

void *sub_1BD3DD76C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 16);
  v10 = v9;
  return v9;
}

id sub_1BD3DD7E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 16);
  *a2 = v12;

  return v12;
}

void sub_1BD3DD86C(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD3DE6D8();
  v4 = v3;
  v5 = a1;
  v6 = sub_1BE053074();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = a1;
  v16 = v5;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DD9DC()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 24);
  sub_1BE048C84();
  return v9;
}

uint64_t sub_1BD3DDA5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v12;
  return sub_1BE048C84();
}

void sub_1BD3DDAD8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 32);
  if (v11)
  {
    if (a2)
    {
      v12 = *(v8 + 24) == a1 && v11 == a2;
      if (v12 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a2, v21, v22, v23, v24, v25, v26, v27;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v11, a2, a3, a4, a5, a6, a7, a8;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DDC1C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 40);
  sub_1BE048C84();
  return v9;
}

uint64_t sub_1BD3DDC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v12;
  return sub_1BE048C84();
}

void sub_1BD3DDD18(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 48);
  if (v11)
  {
    if (a2)
    {
      v12 = *(v8 + 40) == a1 && v11 == a2;
      if (v12 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a2, v21, v22, v23, v24, v25, v26, v27;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  v11, a2, a3, a4, a5, a6, a7, a8;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DDE5C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 56);
  sub_1BE048C84();
  return v9;
}

uint64_t sub_1BD3DDEDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v12;
  return sub_1BE048C84();
}

void sub_1BD3DDF58(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = *(v8 + 64);
  if (v11)
  {
    if (a2)
    {
      v12 = *(v8 + 56) == a1 && v11 == a2;
      if (v12 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    a2, v21, v22, v23, v24, v25, v26, v27;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v11, a2, a3, a4, a5, a6, a7, a8;

  sub_1BD3DCC6C();
}

uint64_t sub_1BD3DE09C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 72);
}

void sub_1BD3DE10C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 72);
}

void sub_1BD3DE184(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;

    sub_1BD3DCC6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD3DE288()
{
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 73);
}

void sub_1BD3DE2F8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 73);
}

void sub_1BD3DE370(char a1)
{
  if (*(v1 + 73) == (a1 & 1))
  {
    *(v1 + 73) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD3DF1D0();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD3DE450()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[6], v8, v9, v10, v11, v12, v13, v14;
  v0[8], v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtC9PassKitUI19ObserverBubbleModel___observationRegistrar;
  v23 = sub_1BE04B5D4();
  (*(*(v23 - 8) + 8))(v0 + v22, v23);

  return swift_deallocClassInstance();
}

void *sub_1BD3DE558()
{
  v1 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD3DE600(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = *(v2 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    v10 = a1;
    sub_1BE048964();
    sub_1BD3DD86C(a1);
    v9, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD3DE6D8();
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = *(v2 + v4);
  *(v2 + v4) = a1;
}

unint64_t sub_1BD3DE6D8()
{
  result = qword_1EBD43B00;
  if (!qword_1EBD43B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43B00);
  }

  return result;
}

void (*sub_1BD3DE724(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BD3DE7C0;
}

void sub_1BD3DE7C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;
    sub_1BD3DE600(v3);
    v5 = v2[3];
    goto LABEL_10;
  }

  v6 = v2[4];
  v7 = *(v6 + v2[5]);
  if (v7)
  {
    if (v3)
    {
      sub_1BD3DE6D8();
      v8 = v7;
      v9 = v3;
      v10 = sub_1BE053074();

      v6 = v2[4];
      if (v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    v11 = *(v6 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    v12 = v3;
    sub_1BE048964();
    sub_1BD3DD86C(v3);
    v11, v13, v14, v15, v16, v17, v18, v19;
    v6 = v2[4];
  }

LABEL_9:
  v20 = v2[5];
  v5 = *(v6 + v20);
  *(v6 + v20) = v3;
LABEL_10:

  free(v2);
}

void (*sub_1BD3DE908(uint64_t *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DE9A8;
}

void sub_1BD3DEA04(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void (*sub_1BD3DEAAC(uint64_t *a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DEB4C;
}

void sub_1BD3DEB78(uint64_t a1, char a2, void (*a3)(uint64_t, const char *), void (*a4)(uint64_t, const char *), void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 24);
  v10 = *(*a1 + 32);
  if (a2)
  {
    sub_1BE048C84();
    a4(v9, v10);
    v13 = v8[4];
    goto LABEL_14;
  }

  v15 = v8[5];
  v16 = (v15 + v8[6]);
  v12 = v16[1];
  if (v12)
  {
    if (v10)
    {
      if (*v16 == v9 && v12 == v10)
      {
        goto LABEL_13;
      }

      v18 = sub_1BE053B84();
      v15 = v8[5];
      if (v18)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (v10)
  {
LABEL_12:
    v19 = *(v15 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    sub_1BE048C84();
    sub_1BE048964();
    a3(v9, v10);
    v19, v20, v21, v22, v23, v24, v25, v26;
    v15 = v8[5];
  }

LABEL_13:
  v27 = (v15 + v8[6]);
  v13 = v27[1];
  *v27 = v9;
  v27[1] = v10;
LABEL_14:
  v13, v12, a3, a4, a5, a6, a7, a8;

  free(v8);
}

id sub_1BD3DEC94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  v4 = *(v3 + 8);
  if (v4)
  {
    sub_1BE048C84();
    v5 = sub_1BE052404();
    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1BD3DED28(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1BE048C84();
  return v3;
}

void sub_1BD3DEDB4(uint64_t a1, const char *a2, void *a3, void (*a4)(uint64_t, const char *))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v15 = v8[1];
  if (!v15)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = *(v4 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    sub_1BE048C84();
    sub_1BE048964();
    a4(a1, a2);
    v17, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v16 = *v8 == a1 && v15 == a2;
  if (!v16 && (sub_1BE053B84() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v25 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  v25, v15, v9, v10, v11, v12, v13, v14;
}

void (*sub_1BD3DEE88(uint64_t *a1))(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  sub_1BE048C84();
  return sub_1BD3DEF28;
}

uint64_t sub_1BD3DEF9C()
{
  v1 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BD3DF034(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  swift_beginAccess();
  if (*(v2 + v5) != v4)
  {
    v6 = *(v2 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
    if (v6[72] == v4)
    {
      LOBYTE(v4) = a1 & 1;
      v6[72] = a1 & 1;
      sub_1BE048964();
      sub_1BD3DCC6C();
      v6, v22, v23, v24, v25, v26, v27, v28;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      LOBYTE(v4) = a1 & 1;
      sub_1BD3DF1D0();
      sub_1BE048964();
      sub_1BE04B584();
      v6, v8, v9, v10, v11, v12, v13, v14;
      KeyPath, v15, v16, v17, v18, v19, v20, v21;
    }
  }

  *(v2 + v5) = v4;
}

unint64_t sub_1BD3DF1D0()
{
  result = qword_1EBD44F30;
  if (!qword_1EBD44F30)
  {
    type metadata accessor for ObserverBubbleModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F30);
  }

  return result;
}

uint64_t type metadata accessor for ObserverBubbleModel(uint64_t a1)
{
  result = qword_1EBD44F48;
  if (!qword_1EBD44F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1BD3DF274(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v5);
  return sub_1BD3DF308;
}

void sub_1BD3DF308(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    sub_1BD3DF034(*(*a1 + 48));
  }

  else
  {
    v4 = v2[4];
    if (v3 != *(v4 + v2[5]))
    {
      v5 = *(v4 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel);
      if (v3 == v5[72])
      {
        v5[72] = v3;
        sub_1BE048964();
        sub_1BD3DCC6C();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v2[3] = v5;
        sub_1BD3DF1D0();
        sub_1BE048964();
        sub_1BE04B584();
        KeyPath, v7, v8, v9, v10, v11, v12, v13;
      }

      v5, v14, v15, v16, v17, v18, v19, v20;
    }

    *(v2[4] + v2[5]) = v3;
  }

  free(v2);
}

id PeerPaymentObserverBubbleContentView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PeerPaymentObserverBubbleContentView.init()()
{
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount] = 0;
  v1 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript] = 0;
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView] = 0;
  type metadata accessor for ObserverBubbleModel(0);
  v4 = swift_allocObject();
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(v4 + 58) = 0u;
  sub_1BE04B5C4();
  *&v0[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel] = v4;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for PeerPaymentObserverBubbleContentView();
  v5 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_observerBubbleModel];
  v27 = v6;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F40, &qword_1BE0D3638));
  swift_retain_n();
  v8 = v5;
  v9 = sub_1BE04F894();
  v10 = sub_1BE04EC64();
  v12 = sub_1BE04F864();
  if ((*v11 & v10) != 0)
  {
    *v11 &= ~v10;
  }

  v12(&v27, 0);
  v13 = v9;
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() clearColor];
    [v15 setBackgroundColor_];

    v17 = [v13 view];
    v18 = *&v8[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView];
    *&v8[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView] = v17;
    v19 = v17;

    if (v19)
    {
      [v8 addSubview_];
    }

    v6, v20, v21, v22, v23, v24, v25, v26;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PeerPaymentObserverBubbleContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PeerPaymentObserverBubbleContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerPaymentObserverBubbleContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  return sub_1BE048C84();
}

uint64_t sub_1BD3DF990(uint64_t a1)
{
  result = sub_1BE04B5D4();
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

void *sub_1BD3DFE3C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1BD3E00D8(a2);
  *(&v65 + 1) = v3;
  sub_1BD0DDEBC();
  v4 = sub_1BE0506C4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BE050424();
  v12 = sub_1BE0505F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11, v13, v15, v17, v19, v20, v21, v22;
  sub_1BD0DDF10(v4, v6, (v8 & 1), v23, v24, v25, v26, v27);
  v10, v28, v29, v30, v31, v32, v33, v34;
  v35 = [objc_opt_self() clearColor];
  result = [objc_opt_self() primaryTextColor];
  if (result)
  {

    *&v65 = sub_1BE0511C4();
    v37 = sub_1BE050574();
    v39 = v38;
    v41 = v40;
    v63 = v42;
    sub_1BD0DDF10(v12, v14, (v16 & 1), v42, v43, v44, v45, v46);
    v65, v47, v48, v49, v50, v51, v52, v53;
    v18, v54, v55, v56, v57, v58, v59, v60;
    KeyPath = swift_getKeyPath();
    v62 = swift_getKeyPath();
    sub_1BE051CA4();
    result = sub_1BE04EE54();
    *&v64[54] = v68;
    *&v64[70] = v69;
    *&v64[86] = v70;
    *&v64[102] = v71;
    *&v64[6] = v65;
    *&v64[22] = v66;
    *&v64[38] = v67;
    *(a1 + 146) = *&v64[64];
    *(a1 + 162) = *&v64[80];
    *(a1 + 178) = *&v64[96];
    *(a1 + 82) = *v64;
    *(a1 + 98) = *&v64[16];
    *(a1 + 114) = *&v64[32];
    *a1 = v37;
    *(a1 + 8) = v39;
    *(a1 + 16) = v41 & 1;
    *(a1 + 24) = v63;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = v62;
    *(a1 + 64) = 0x3FE8000000000000;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 192) = *(&v71 + 1);
    *(a1 + 130) = *&v64[48];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD3E00D8(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  KeyPath = swift_getKeyPath();
  v69 = a1;
  sub_1BD3DF1D0();
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  if (*(a1 + 73))
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v18 = result;
      v19 = sub_1BE04B6F4();

      (*(v3 + 8))(v5, v2);
      return v19;
    }

    __break(1u);
  }

  else
  {
    v20 = swift_getKeyPath();
    v69 = a1;
    sub_1BE04B594();
    v20, v21, v22, v23, v24, v25, v26, v27;
    v28 = *(a1 + 16);
    if (v28 && (v29 = [v28 minimalFormattedStringValue]) != 0)
    {
      v30 = v29;
      v31 = sub_1BE052434();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = swift_getKeyPath();
    v69 = a1;
    sub_1BE04B594();
    v34, v35, v36, v37, v38, v39, v40, v41;
    v42 = *(a1 + 24);
    v43 = *(a1 + 32);
    sub_1BE048C84();
    v44 = sub_1BD3E0704(v42, v43);
    v46 = v45;
    v43, v45, v47, v48, v49, v50, v51, v52;
    (*(v3 + 104))(v8, *MEMORY[0x1E69B8050], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v53 = result;
      sub_1BE04B6F4();
      v55 = v54;

      (*(v3 + 8))(v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1BE0B6CA0;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1BD110550();
      *(v56 + 32) = v31;
      *(v56 + 40) = v33;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      if (v46)
      {
        v59 = v44;
      }

      else
      {
        v59 = 0;
      }

      v60 = 0xE000000000000000;
      if (v46)
      {
        v60 = v46;
      }

      *(v56 + 64) = v58;
      *(v56 + 72) = v59;
      *(v56 + 80) = v60;
      v19 = sub_1BE052454();
      v55, v61, v62, v63, v64, v65, v66, v67;
      return v19;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD3E0474()
{
  result = qword_1EBD44F58;
  if (!qword_1EBD44F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F58);
  }

  return result;
}

id sub_1BD3E04C8()
{
  v0 = sub_1BE04B0F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  [v4 setUsesGroupingSeparator_];
  [v4 setNumberStyle_];
  sub_1BE04AFF4();
  sub_1BE04B024();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    v7 = sub_1BE052404();
    v6, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  [v4 setDecimalSeparator_];

  return v4;
}

void sub_1BD3E0654()
{
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount) = 0;
  v1 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_recipient);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_sender);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_signature);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript) = 0;
  *(v0 + OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD3E0704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BE052404();
  }

  else
  {
    v3 = 0;
  }

  v4 = PKIDSSanitizedAddress();

  v5 = [objc_opt_self() defaultContactResolver];
  v6 = [v5 contactForHandle_];
  v7 = [objc_opt_self() displayNameForCounterpartHandle:v4 contact:v6];

  if (v7)
  {
    a1 = sub_1BE052434();
  }

  else
  {

    sub_1BE048C84();
  }

  return a1;
}

void sub_1BD3E0828()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 64);
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  sub_1BD3DCC6C();
}

void sub_1BD3E0878()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 48);
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  sub_1BD3DCC6C();
}

void sub_1BD3E08C8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  sub_1BD3DCC6C();
}

void sub_1BD3E0918()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;

  sub_1BD3DCC6C();
}

unint64_t sub_1BD3E0960()
{
  result = qword_1EBD44F68;
  if (!qword_1EBD44F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F70, &qword_1BE0D3980);
    sub_1BD3E09EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F68);
  }

  return result;
}

unint64_t sub_1BD3E09EC()
{
  result = qword_1EBD44F78;
  if (!qword_1EBD44F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F80, &qword_1BE0D3988);
    sub_1BD3E0A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F78);
  }

  return result;
}

unint64_t sub_1BD3E0A78()
{
  result = qword_1EBD44F88;
  if (!qword_1EBD44F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD44F90, &unk_1BE0D3990);
    sub_1BD1B9C50();
    sub_1BD3E0B1C(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD44F88);
  }

  return result;
}

uint64_t sub_1BD3E0B1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _s16BreakdownRowViewVMa(uint64_t a1)
{
  result = qword_1EBD44FA0;
  if (!qword_1EBD44FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD3E0C14(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD3E0CC0(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3E0D28(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD3E0CC0(uint64_t a1)
{
  if (!qword_1EBD44090)
  {
    sub_1BD0E5E8C(255, qword_1EBD4F790, 0x1E69DCAB8);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD44090);
    }
  }
}

void sub_1BD3E0D28(uint64_t a1)
{
  if (!qword_1EBD44FB0)
  {
    type metadata accessor for FinanceKitSpendingTrend(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD44FB0);
    }
  }
}

uint64_t sub_1BD3E0D80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1BE052404();
  [a1 setPrimaryString_];

  v13 = sub_1BE052404();
  [a1 setSecondaryString_];

  if (*(v1 + 40))
  {
    v14 = v7;
    v15 = sub_1BD1ACD28(MEMORY[0x1E69E7CC0]);
    v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v17 = sub_1BE052404();
    type metadata accessor for Key(0);
    sub_1BD3E1654(&qword_1EBD37B80, type metadata accessor for Key, &unk_1BE0B3A08);
    v18 = sub_1BE052224();
    v15, v19, v20, v21, v22, v23, v24, v25;
    v26 = [v16 initWithString:v17 attributes:v18];

    v7 = v14;
    [a1 setTransactionValueAttributedText_];
  }

  v27 = *(v1 + 48);
  if (v27)
  {
    [a1 setPrimaryImage:v27 animated:1];
  }

  else
  {
    [a1 setPrimaryImage_];
  }

  [a1 setShowsDisclosureView_];
  v28 = _s16BreakdownRowViewVMa(0);
  sub_1BD3E15E4(v1 + *(v28 + 32), v5);
  v29 = type metadata accessor for FinanceKitSpendingTrend(0);
  result = (*(*(v29 - 8) + 48))(v5, 1, v29);
  if (result != 1)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result < 2)
    {
      (*(v7 + 32))(v11, v5, v6);
      v32 = 0x80000001BE127B70;
      v33 = a1;
      v34 = v11;
      v31 = 0xD000000000000014;
    }

    else
    {
      if ((result - 2) >= 2)
      {
        return result;
      }

      v11 = v36;
      (*(v7 + 32))(v36, v5, v6);
      v31 = 0xD000000000000016;
      v32 = 0x80000001BE127B50;
      v33 = a1;
      v34 = v11;
    }

    sub_1BD3E1148(v33, v34, v31, v32);
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

void sub_1BD3E1148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BE04B0F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B054();
  sub_1BE0493E4();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = sub_1BE052404();
  v10, v12, v13, v14, v15, v16, v17, v18;
  [a1 setBadgeString_];

  v19 = sub_1BE052404();
  [a1 setSecondaryBadgeSymbol_];

  [a1 setHideBadgeBackground_];
  [a1 setHideSecondaryBadgeSymbolBackground_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0D39A0;
  v21 = objc_opt_self();
  *(v20 + 32) = [v21 labelColor];
  *(v20 + 40) = [v21 tertiarySystemFillColor];
  sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
  v22 = sub_1BE052724();
  v20, v23, v24, v25, v26, v27, v28, v29;
  v30 = [objc_opt_self() configurationWithPaletteColors_];

  [a1 setSecondaryBadgeSymbolConfiguration_];
}

id sub_1BD3E13A0()
{
  v0 = objc_allocWithZone(PKPaymentTransactionView);

  return [v0 init];
}

id sub_1BD3E13DC(uint64_t a1, int a2, id a3)
{
  result = [a3 sizeThatFits_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1BD3E141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa, &unk_1BE0D3A24);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD3E14B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa, &unk_1BE0D3A24);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD3E1544(uint64_t a1)
{
  sub_1BD3E1654(&unk_1EBD44FC0, _s16BreakdownRowViewVMa, &unk_1BE0D3A24);
  sub_1BE04F964();
  __break(1u);
}

uint64_t sub_1BD3E15E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD3E1654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD3E169C(void *a1, void *a2, void *a3, __int128 *a4)
{
  v8 = [a1 isQuantitative];
  v9 = a3;
  result = [v9 amount];
  v11 = result;
  if (v8)
  {
    if (result)
    {
      v12 = sub_1BE0533F4();
      v14 = v13;
      v16 = v15;

      result = [v9 currency];
      if (result)
      {
        v17 = result;
        v18 = sub_1BE052434();
        v20 = v19;

        v75[0] = v12;
        v75[1] = v14;
        v76 = v16;
        v77 = v18;
        v78 = v20;
        type metadata accessor for PaymentRewardsAmountAndQuantityModel(0);
        v21 = swift_allocObject();
        sub_1BE048964();
        sub_1BD994058(v12, v14, v16);
        if ((v24 & 0x100000000) != 0)
        {
          v22 = MEMORY[0x1BFB403C0](0);
        }

        v25 = &v21[OBJC_IVAR____TtC9PassKitUI36PaymentRewardsAmountAndQuantityModel_maximumRedeemableQuantity];
        *v25 = v22;
        *(v25 + 1) = v23;
        *(v25 + 4) = v24;
        v26 = a4[1];
        v73[0] = *a4;
        v73[1] = v26;
        v74[0] = a4[2];
        *(v74 + 10) = *(a4 + 42);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45070, &qword_1BE0D3C68);
        MEMORY[0x1BFB3E970](&v67, v27);
        v65 = a2;
        v66 = a4;
        v64 = a1;
        if (v72 == 1 || v71 == 1)
        {
          v35 = *v25;
          v36 = *(v25 + 1);
          v37 = *(v25 + 4);
        }

        else
        {
          v35 = *v70;
          v36 = *&v70[8];
          v37 = *&v70[16];
        }

        v63 = v21;
        v21, v28, v29, v30, v31, v32, v33, v34;
        v51 = *(v25 + 3);
        v52 = *(v25 + 4);
        v53 = *(v25 + 5);
        v54 = *(v25 + 6);
        v55 = *(v25 + 7);
        v56 = *(v25 + 8);
        v60 = *(v25 + 2);
        v61 = *v25;
        v57 = *(v25 + 9);
        if (MEMORY[0x1BFB403F0](v61 | (v60 << 32) | (v51 << 48), v52 | (v53 << 16) | (v54 << 32) | (v55 << 48), v56 | (v57 << 16), v35, v36, v37))
        {
          LOWORD(v58) = v51;
          LOWORD(v62) = v55;
          LOWORD(v55) = v60;
          v59 = v61;
        }

        else
        {
          v57 = WORD1(v37);
          v62 = HIWORD(v36);
          v53 = v36 >> 16;
          v59 = v35;
          v55 = HIDWORD(v35);
          LOWORD(v52) = v36;
          v54 = HIDWORD(v36);
          v58 = HIWORD(v35);
          LOWORD(v56) = v37;
        }

        v47 = v63;
        swift_beginAccess();
        LODWORD(v67) = v59;
        WORD2(v67) = v55;
        HIWORD(v67) = v58;
        LOWORD(v68) = v52;
        WORD1(v68) = v53;
        WORD2(v68) = v54;
        HIWORD(v68) = v62;
        LOWORD(v69) = v56;
        HIWORD(v69) = v57;
        type metadata accessor for Decimal(0);
        sub_1BE04D874();
        swift_endAccess();
        v48 = v64;
        v49 = v65;
        a4 = v66;
        sub_1BD0DE19C(v66, v73, &unk_1EBD45070, &qword_1BE0D3C68);
        v50 = v75;
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!result)
  {
    goto LABEL_19;
  }

  v38 = sub_1BE0533F4();
  v40 = v39;
  v42 = v41;

  result = [v9 currency];
  if (result)
  {
    v43 = result;
    v44 = sub_1BE052434();
    v46 = v45;

    v67 = v38;
    v68 = v40;
    v69 = v42;
    *&v70[4] = v44;
    *&v70[12] = v46;
    type metadata accessor for PaymentRewardsAmountModel(0);
    v47 = swift_allocObject();
    v48 = a1;
    v49 = a2;
    sub_1BD0DE19C(a4, v73, &unk_1EBD45070, &qword_1BE0D3C68);
    v50 = &v67;
LABEL_17:
    sub_1BD3E7E10(v48, v49, v50, a4);
    return v47;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BD3E1A54@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348, &qword_1BE0BC4C0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = v34 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45170, &qword_1BE0D3D90) - 8;
  MEMORY[0x1EEE9AC00](v41);
  v42 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = v34 - v5;
  v6 = sub_1BE04ECC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45178, &qword_1BE0D3D98);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v38 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45180, &qword_1BE0D3DA0);
  sub_1BD3EC21C();
  v35 = v18;
  sub_1BE051A44();
  sub_1BE04ECB4();
  v37 = *(v7 + 16);
  v37(v9, v12, v6);
  v36 = sub_1BD3EBF40(&qword_1EBD451A0, MEMORY[0x1E697E8B8], MEMORY[0x1E697E8B0]);
  v19 = sub_1BE04E644();
  v20 = *(v7 + 8);
  v34[1] = v7 + 8;
  v20(v12, v6);
  *&v18[*(v14 + 44)] = v19;
  sub_1BD3E2174(v44);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451A8, &qword_1BE0D3DA8);
  v21 = type metadata accessor for MultiHyperLinkDetailSheet(255);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD451B0, &unk_1BE0D3DB0);
  v23 = sub_1BD3EC358();
  v24 = sub_1BD3EBF40(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  v25 = sub_1BD3EC3AC();
  v47 = &type metadata for PaymentPassHubRewardsInfoView;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1BD3EC438();
  v26 = v39;
  sub_1BE051A54();
  sub_1BE04ECB4();
  v37(v9, v12, v6);
  v27 = sub_1BE04E644();
  v20(v12, v6);
  *(v26 + *(v41 + 44)) = v27;
  v28 = v35;
  v29 = v38;
  sub_1BD0DE19C(v35, v38, &qword_1EBD45178, &qword_1BE0D3D98);
  v30 = v42;
  sub_1BD0DE19C(v26, v42, &qword_1EBD45170, &qword_1BE0D3D90);
  v31 = v43;
  sub_1BD0DE19C(v29, v43, &qword_1EBD45178, &qword_1BE0D3D98);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45210, &qword_1BE0D3DC0);
  sub_1BD0DE19C(v30, v31 + *(v32 + 48), &qword_1EBD45170, &qword_1BE0D3D90);
  sub_1BD0DE53C(v26, &qword_1EBD45170, &qword_1BE0D3D90);
  sub_1BD0DE53C(v28, &qword_1EBD45178, &qword_1BE0D3D98);
  sub_1BD0DE53C(v30, &qword_1EBD45170, &qword_1BE0D3D90);
  return sub_1BD0DE53C(v29, &qword_1EBD45178, &qword_1BE0D3D98);
}

double sub_1BD3E1FB0@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel, &unk_1BE0D3C30);
  v3 = sub_1BE04E3C4();
  type metadata accessor for PaymentRewardsAmountAndQuantityModel(0);
  v4 = swift_dynamicCastClass();
  v3, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE04E3C4();
  if (v4)
  {
    swift_dynamicCastClassUnconditional();
    sub_1BD3EBF40(&qword_1EBD45218, type metadata accessor for PaymentRewardsAmountAndQuantityModel, &unk_1BE0D3C30);
  }

  sub_1BE04E954();
  sub_1BD3EC2A8();
  sub_1BD3EC2FC();
  sub_1BE04F9A4();
  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_1BD3E2174@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = v3;
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_1BD0DE19C(v1, v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
    v18 = 1;
    v19 = v52;
  }

  else
  {
    v20 = *(v12 + 32);
    v21 = v17;
    v42 = v17;
    v20(v17, v10, v11);
    v22 = v43;
    sub_1BD3EC4BC(v1, v43);
    (*(v12 + 16))(v14, v21, v11);
    v23 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v24 = (v45 + *(v12 + 80) + v23) & ~*(v12 + 80);
    v25 = swift_allocObject();
    sub_1BD3EC520(v22, v25 + v23);
    v26 = (v20)(v25 + v24, v14, v11);
    MEMORY[0x1EEE9AC00](v26);
    *(&v41 - 2) = v1;
    v27 = v47;
    sub_1BE051704();
    sub_1BE052434();
    v29 = v28;
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    v30 = v46;
    v31 = v49;
    sub_1BE050DE4();
    v29, v32, v33, v34, v35, v36, v37, v38;
    (*(v48 + 8))(v27, v31);
    (*(v12 + 8))(v42, v11);
    v39 = v52;
    sub_1BD0DE204(v30, v52, &unk_1EBD45200, &qword_1BE0BB900);
    v18 = 0;
    v19 = v39;
  }

  return (*(v50 + 56))(v19, v18, 1, v51);
}

void sub_1BD3E2698(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel, &unk_1BE0D3C30);
  sub_1BE04E3C4();
  v4 = sub_1BE04E954();
  v6 = v5;
  v14[0] = v4;
  v14[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451B0, &unk_1BE0D3DB0);
  sub_1BD3EC358();
  sub_1BD3EBF40(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD3EC3AC();
  sub_1BE050F74();
  sub_1BD0DE53C(v3, &qword_1EBD393E8, &qword_1BE0B8680);
  v6, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD3E28B8@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1BD957218(a2, a1);
  v3 = sub_1BE04EC54();
  v4 = sub_1BE0501D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD451B0, &unk_1BE0D3DB0);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  v6[8] = v4;
  return result;
}

uint64_t sub_1BD3E2918(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = sub_1BE04AA64();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  v10 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  sub_1BD0DE19C(v8, v5, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v8, &unk_1EBD45160, &qword_1BE0C25A0);
}

void sub_1BD3E2AAC(uint64_t a2@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8088], v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BE0B69E0;
  type metadata accessor for PaymentPassHubRewardsApplyView(0);
  type metadata accessor for PaymentRewardsAmountModel(0);
  sub_1BD3EBF40(&unk_1EBD45150, type metadata accessor for PaymentRewardsAmountModel, &unk_1BE0D3C30);
  v9 = sub_1BE04E3C4();
  v10 = [v9[2] programName];
  v11 = sub_1BE052434();
  v13 = v12;
  v9, v12, v14, v15, v16, v17, v18, v19;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1BD110550();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  v20 = sub_1BE04B714();
  v22 = v21;
  v8, v21, v23, v24, v25, v26, v27, v28;
  (*(v4 + 8))(v7, v3);
  v58[2] = v20;
  v58[3] = v22;
  sub_1BD0DDEBC();
  v29 = sub_1BE0506C4();
  v31 = v30;
  LOBYTE(v8) = v32;
  v34 = v33;
  v35 = sub_1BE050454();
  v36 = sub_1BE0505F4();
  v38 = v37;
  LOBYTE(v4) = v39;
  v41 = v40;
  v35, v37, v39, v40, v42, v43, v44, v45;
  sub_1BD0DDF10(v29, v31, (v8 & 1), v46, v47, v48, v49, v50);
  v34, v51, v52, v53, v54, v55, v56, v57;
  *a2 = v36;
  *(a2 + 8) = v38;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v41;
}

void sub_1BD3E2D5C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v56 = v7;
    v57 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE0505D4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v21, v23, v24, v25, v26);
    v15, v27, v28, v29, v30, v31, v32, v33;
    v56 = v16;
    v57 = v18;
    v58 = v20 & 1;
    v59 = v22;
    sub_1BE052434();
    v35 = v34;
    sub_1BE050DE4();
    v35, v36, v37, v38, v39, v40, v41, v42;
    sub_1BD0DDF10(v16, v18, (v20 & 1), v43, v44, v45, v46, v47);
    v22, v48, v49, v50, v51, v52, v53, v54;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD3E2F60(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_1BE0532E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v65 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v67 = v65 - v11;
  v12 = sub_1BE04A974();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04B0F4();
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - v17;
  v66 = *(a1 + 48);
  v65[1] = *(a1 + 40);
  sub_1BE048C84();
  sub_1BE04B054();
  sub_1BE04A964();
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v20 = v67;
  sub_1BE0532D4();
  v19(v9, v3);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0], MEMORY[0x1E6969FB8]);
  sub_1BE053464();
  v19(v20, v3);
  (*(v70 + 8))(v14, v71);
  (*(v68 + 8))(v18, v69);
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  LOBYTE(v3) = v24;
  v26 = v25;
  v27 = sub_1BE0505D4();
  v29 = v28;
  LOBYTE(v14) = v30;
  v32 = v31;
  sub_1BD0DDF10(v21, v23, (v3 & 1), v31, v33, v34, v35, v36);
  v26, v37, v38, v39, v40, v41, v42, v43;
  v73 = v27;
  v74 = v29;
  v75 = v14 & 1;
  v76 = v32;
  sub_1BE052434();
  v45 = v44;
  sub_1BE050DE4();
  v45, v46, v47, v48, v49, v50, v51, v52;
  sub_1BD0DDF10(v27, v29, (v14 & 1), v53, v54, v55, v56, v57);
  v32, v58, v59, v60, v61, v62, v63, v64;
}

void sub_1BD3E335C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v62 = v7;
    v63 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE051494();
    v17 = sub_1BE050564();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v62 = v17;
    v63 = v19;
    v64 = v21 & 1;
    v65 = v23;
    sub_1BE052434();
    v41 = v40;
    sub_1BE050DE4();
    v41, v42, v43, v44, v45, v46, v47, v48;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v49, v50, v51, v52, v53);
    v23, v54, v55, v56, v57, v58, v59, v60;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD3E357C(uint64_t a1@<X8>)
{
  v80 = a1;
  v1 = sub_1BE0532E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - v9;
  v79 = sub_1BE04A974();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BE04B0F4();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  sub_1BD3E8918(&v85);
  v83 = v85;
  v84 = v86;
  sub_1BE053424();
  *&v82[8] = v87;
  *v82 = v84;
  v88[0] = v83;
  v88[1] = *v82;
  v89 = *(&v87 + 1);
  sub_1BE04B054();
  sub_1BE04A964();
  sub_1BD3EB974(v88, v81);
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v16 = v75;
  sub_1BE0532D4();
  v15(v7, v1);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0], MEMORY[0x1E6969FB8]);
  sub_1BE053464();
  sub_1BD3EB9B4(v88, v17, v18, v19, v20, v21, v22, v23);
  v15(v16, v1);
  (*(v78 + 8))(v11, v79);
  (*(v76 + 8))(v14, v77);
  sub_1BD0DDEBC();
  v24 = sub_1BE0506C4();
  v26 = v25;
  LOBYTE(v1) = v27;
  v29 = v28;
  v30 = sub_1BE051494();
  v31 = sub_1BE050564();
  v33 = v32;
  LOBYTE(v7) = v34;
  v36 = v35;
  v30, v32, v34, v35, v37, v38, v39, v40;
  sub_1BD0DDF10(v24, v26, (v1 & 1), v41, v42, v43, v44, v45);
  v29, v46, v47, v48, v49, v50, v51, v52;
  v81[0] = v31;
  v81[1] = v33;
  v82[0] = v7 & 1;
  *&v82[8] = v36;
  sub_1BE052434();
  v54 = v53;
  sub_1BE050DE4();
  v54, v55, v56, v57, v58, v59, v60, v61;
  sub_1BD0DDF10(v31, v33, (v7 & 1), v62, v63, v64, v65, v66);
  v36, v67, v68, v69, v70, v71, v72, v73;
}

void sub_1BD3E3A18()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v62 = v7;
    v63 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE051494();
    v17 = sub_1BE050564();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v62 = v17;
    v63 = v19;
    v64 = v21 & 1;
    v65 = v23;
    sub_1BE052434();
    v41 = v40;
    sub_1BE050DE4();
    v41, v42, v43, v44, v45, v46, v47, v48;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v49, v50, v51, v52, v53);
    v23, v54, v55, v56, v57, v58, v59, v60;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD3E3C38(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v106 = a2;
  v102 = sub_1BE0532E4();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v4 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v97 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v97 - v9;
  v10 = sub_1BE04A974();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE04B0F4();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v110);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE053394();
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  *&v110 = v31;
  *(&v110 + 1) = v34;
  v111 = v35;
  v112 = v32;
  v113 = v33;
  sub_1BE048C84();
  sub_1BE04B054();
  v36 = v98;
  sub_1BE04A964();
  sub_1BD3EB974(&v110, v107);
  sub_1BE04B054();
  sub_1BE0532B4();
  sub_1BE0532C4();
  v37 = *(v100 + 8);
  v38 = v102;
  v37(v4, v102);
  v39 = v99;
  sub_1BE0532D4();
  v37(v7, v38);
  sub_1BD3EBF40(&qword_1EBD45388, MEMORY[0x1E6969FC0], MEMORY[0x1E6969FB8]);
  sub_1BE053464();
  sub_1BD3EB9B4(&v110, v40, v41, v42, v43, v44, v45, v46);
  v37(v39, v38);
  (*(v104 + 8))(v36, v105);
  (*(v101 + 8))(v14, v103);
  sub_1BD0DDEBC();
  v47 = sub_1BE0506C4();
  v49 = v48;
  LOBYTE(v32) = v50;
  v52 = v51;
  v53 = sub_1BE051494();
  v54 = sub_1BE050564();
  v56 = v55;
  LOBYTE(v7) = v57;
  v59 = v58;
  v53, v55, v57, v58, v60, v61, v62, v63;
  sub_1BD0DDF10(v47, v49, (v32 & 1), v64, v65, v66, v67, v68);
  v52, v69, v70, v71, v72, v73, v74, v75;
  v107[0] = v54;
  v107[1] = v56;
  v108 = v7 & 1;
  v109 = v59;
  sub_1BE052434();
  v77 = v76;
  sub_1BE050DE4();
  v77, v78, v79, v80, v81, v82, v83, v84;
  sub_1BD0DDF10(v54, v56, (v7 & 1), v85, v86, v87, v88, v89);
  v59, v90, v91, v92, v93, v94, v95, v96;
}

void sub_1BD3E40E8()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v85 = v7;
    v86 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    LOBYTE(v6) = v13;
    v15 = v14;
    v16 = sub_1BE051494();
    v17 = sub_1BE050564();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v16, v18, v20, v22, v24, v25, v26, v27;
    sub_1BD0DDF10(v10, v12, (v6 & 1), v28, v29, v30, v31, v32);
    v15, v33, v34, v35, v36, v37, v38, v39;
    v40 = sub_1BE0502A4();
    v41 = sub_1BE0505F4();
    v43 = v42;
    LOBYTE(v15) = v44;
    v46 = v45;
    v40, v42, v44, v45, v47, v48, v49, v50;
    sub_1BD0DDF10(v17, v19, (v21 & 1), v51, v52, v53, v54, v55);
    v23, v56, v57, v58, v59, v60, v61, v62;
    v85 = v41;
    v86 = v43;
    v63 = (v15 & 1);
    v87 = v63;
    v88 = v46;
    sub_1BE052434();
    v65 = v64;
    sub_1BE050DE4();
    v65, v66, v67, v68, v69, v70, v71, v72;
    sub_1BD0DDF10(v41, v43, v63, v73, v74, v75, v76, v77);
    v46, v78, v79, v80, v81, v82, v83, v84;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3E4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v76[1] = a1;
  v82 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = v76 - v7;
  v80 = sub_1BE051994();
  v92 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v90 = v76 - v10;
  v94 = sub_1BE04FF64();
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45328, &qword_1BE0D4050);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45330, &qword_1BE0D4058);
  v78 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v17 = v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45338, &qword_1BE0D4060);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v89 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v88 = v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v87 = v76 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v93 = v76 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v95 = v76 - v29;
  *v15 = sub_1BE050194();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45340, &qword_1BE0D4068);
  sub_1BD3E5034(a2, sub_1BD3E2D5C, sub_1BD3E2F60, &v15[*(v83 + 44)]);
  sub_1BE04FF44();
  v30 = sub_1BD0DE4F4(&qword_1EBD45348, &qword_1EBD45328, &qword_1BE0D4050, MEMORY[0x1E697BF80]);
  sub_1BE050D14();
  v84 = *(v97 + 8);
  v97 += 8;
  v84(v12, v94);
  sub_1BD0DE53C(v15, &qword_1EBD45328, &qword_1BE0D4050);
  sub_1BE052434();
  v32 = v31;
  v98 = v13;
  v99 = v30;
  v76[0] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v86;
  sub_1BE050DE4();
  v32, v34, v35, v36, v37, v38, v39, v40;
  v78 = *(v78 + 8);
  (v78)(v17, v33);
  *v15 = sub_1BE050194();
  v41 = v77;
  sub_1BD3E5034(v77, sub_1BD3E335C, sub_1BD3E357C, &v15[*(v83 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v84(v12, v94);
  sub_1BD0DE53C(v15, &qword_1EBD45328, &qword_1BE0D4050);
  sub_1BE052434();
  v43 = v42;
  v44 = v86;
  sub_1BE050DE4();
  v43, v45, v46, v47, v48, v49, v50, v51;
  v52 = v78;
  (v78)(v17, v44);
  *v15 = sub_1BE050194();
  sub_1BD3E5034(v41, sub_1BD3E3A18, sub_1BD3E3C38, &v15[*(v83 + 44)]);
  sub_1BE04FF44();
  sub_1BE050D14();
  v84(v12, v94);
  sub_1BD0DE53C(v15, &qword_1EBD45328, &qword_1BE0D4050);
  sub_1BE052434();
  v54 = v53;
  v55 = v87;
  sub_1BE050DE4();
  v54, v56, v57, v58, v59, v60, v61, v62;
  v52(v17, v44);
  v63 = v90;
  sub_1BE051984();
  v64 = v91;
  sub_1BD3E40E8();
  v65 = v88;
  sub_1BD0DE19C(v95, v88, &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE19C(v93, v96, &qword_1EBD45338, &qword_1BE0D4060);
  v66 = v89;
  sub_1BD0DE19C(v55, v89, &qword_1EBD45338, &qword_1BE0D4060);
  v67 = *(v92 + 16);
  v69 = v79;
  v68 = v80;
  v67(v79, v63, v80);
  v70 = v81;
  sub_1BD0DE19C(v64, v81, &qword_1EBD452C0, &qword_1BE0B7620);
  v71 = v65;
  v72 = v82;
  sub_1BD0DE19C(v71, v82, &qword_1EBD45338, &qword_1BE0D4060);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45350, &unk_1BE0D4070);
  sub_1BD0DE19C(v96, v72 + v73[12], &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE19C(v66, v72 + v73[16], &qword_1EBD45338, &qword_1BE0D4060);
  v67((v72 + v73[20]), v69, v68);
  sub_1BD0DE19C(v70, v72 + v73[24], &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v91, &qword_1EBD452C0, &qword_1BE0B7620);
  v74 = *(v92 + 8);
  v74(v90, v68);
  sub_1BD0DE53C(v87, &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE53C(v93, &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE53C(v95, &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE53C(v70, &qword_1EBD452C0, &qword_1BE0B7620);
  v74(v69, v68);
  sub_1BD0DE53C(v89, &qword_1EBD45338, &qword_1BE0D4060);
  sub_1BD0DE53C(v96, &qword_1EBD45338, &qword_1BE0D4060);
  return sub_1BD0DE53C(v88, &qword_1EBD45338, &qword_1BE0D4060);
}

uint64_t sub_1BD3E4C88@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  v21 = a2(v18);
  a3(v21, a1);
  sub_1BD0DE19C(v20, v13, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v16, v10, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v13, a4, &qword_1EBD452C0, &qword_1BE0B7620);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45390, &qword_1BE1009C0);
  v23 = a4 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1BD0DE19C(v10, a4 + *(v22 + 64), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v16, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v20, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v10, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v13, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3E4E68@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  v21 = a2(v18);
  a3(v21, a1);
  sub_1BD0DE19C(v20, v13, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v16, v10, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v13, a4, &qword_1EBD452C0, &qword_1BE0B7620);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380, &unk_1BE0D40A0);
  sub_1BD0DE19C(v10, a4 + *(v22 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v16, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v20, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v10, &qword_1EBD452C0, &qword_1BE0B7620);
  return sub_1BD0DE53C(v13, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD3E5034@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(double)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42B58, &qword_1BE0FE680);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45360, &unk_1BE0D4080);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  *v18 = sub_1BE04F504();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45368, &unk_1BE1009B0);
  sub_1BD3E4C88(a1, a2, a3, &v18[*(v19 + 44)]);
  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370, &qword_1BE0D4090);
  sub_1BD3E4E68(a1, a2, a3, &v12[*(v20 + 44)]);
  sub_1BD0DE19C(v18, v15, &qword_1EBD45360, &unk_1BE0D4080);
  sub_1BD0DE19C(v12, v9, &qword_1EBD42B58, &qword_1BE0FE680);
  v21 = v25;
  sub_1BD0DE19C(v15, v25, &qword_1EBD45360, &unk_1BE0D4080);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45378, &qword_1BE0D4098);
  sub_1BD0DE19C(v9, v21 + *(v22 + 48), &qword_1EBD42B58, &qword_1BE0FE680);
  sub_1BD0DE53C(v12, &qword_1EBD42B58, &qword_1BE0FE680);
  sub_1BD0DE53C(v18, &qword_1EBD45360, &unk_1BE0D4080);
  sub_1BD0DE53C(v9, &qword_1EBD42B58, &qword_1BE0FE680);
  return sub_1BD0DE53C(v15, &qword_1EBD45360, &unk_1BE0D4080);
}

uint64_t sub_1BD3E52D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v27[0] = sub_1BE04FF64();
  v5 = *(v27[0] - 8);
  MEMORY[0x1EEE9AC00](v27[0]);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45250, &qword_1BE0D3FA0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45258, &qword_1BE0D3FA8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  *v10 = sub_1BE050194();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45268, &qword_1BE0D3FB8);
  sub_1BD3E6E90(a1, a2, sub_1BD3E5838, &v10[*(v15 + 44)]);
  sub_1BE04FF44();
  v16 = sub_1BD0DE4F4(&qword_1EBD45270, &qword_1EBD45250, &qword_1BE0D3FA0, MEMORY[0x1E697BF80]);
  sub_1BE050D14();
  (*(v5 + 8))(v7, v27[0]);
  sub_1BD0DE53C(v10, &qword_1EBD45250, &qword_1BE0D3FA0);
  sub_1BE052434();
  v18 = v17;
  v27[2] = v8;
  v27[3] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  return (*(v12 + 8))(v14, v11);
}

void sub_1BD3E55B0(uint64_t a1, uint64_t a2)
{
  sub_1BE0528A4();
  sub_1BE048964();
  v4 = sub_1BE052894();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for Decimal(0);
  sub_1BE051934();
  v41 = v38;
  v42 = v39;
  v43 = v40;
  v44 = *(a2 + 72);
  v45 = *(a2 + 88);
  v46 = *(a2 + 92);
  v47 = *(a2 + 108);
  v9 = [*(a2 + 16) monetaryValue];
  v10 = [v9 currency];

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    sub_1BD3E5ACC(v14, a2);
    v16 = v15;
    *&v35[4] = v46;
    *v35 = v43;
    *&v35[20] = v47;
    *&v35[24] = v44;
    *&v35[40] = v45;
    *&v33 = v11;
    *(&v33 + 1) = v13;
    *&v34 = 2;
    *(&v34 + 1) = [objc_opt_self() systemBlueColor];
    sub_1BE052434();
    v18 = v17;
    sub_1BD3EC708();
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    v36[4] = *&v35[32];
    v36[5] = v33;
    v36[6] = v34;
    v37 = v16;
    v36[0] = v41;
    v36[1] = v42;
    v36[2] = *v35;
    v36[3] = *&v35[16];
    sub_1BD3EC75C(v36, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD3E5838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a1;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45300, &qword_1BE0D4030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v51 = sub_1BD3E8D8C();
  v52 = v15;
  sub_1BD0DDEBC();
  v16 = sub_1BE0506C4();
  v18 = v17;
  v20 = v19;
  v51 = v16;
  v52 = v17;
  v22 = (v21 & 1);
  v53 = v21 & 1;
  v54 = v19;
  sub_1BE052434();
  v24 = v23;
  sub_1BE050DE4();
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DDF10(v16, v18, v22, v32, v33, v34, v35, v36);
  v20, v37, v38, v39, v40, v41, v42, v43;
  sub_1BD3E55B0(v49, v48);
  sub_1BD0DE19C(v14, v11, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE19C(v8, v5, &qword_1EBD45300, &qword_1BE0D4030);
  v44 = v50;
  sub_1BD0DE19C(v11, v50, &qword_1EBD452C0, &qword_1BE0B7620);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45308, &unk_1BE0D4038);
  sub_1BD0DE19C(v5, v44 + *(v45 + 48), &qword_1EBD45300, &qword_1BE0D4030);
  sub_1BD0DE53C(v8, &qword_1EBD45300, &qword_1BE0D4030);
  sub_1BD0DE53C(v14, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v5, &qword_1EBD45300, &qword_1BE0D4030);
  return sub_1BD0DE53C(v11, &qword_1EBD452C0, &qword_1BE0B7620);
}

void sub_1BD3E5ACC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0B7020;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8088], v3);
  v8 = PKPassKitBundle();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8;
  sub_1BE04B6F4();
  v11 = v10;

  (*(v4 + 8))(v6, v3);
  v12 = sub_1BE053344();
  v13 = [*(a2 + 16) monetaryValue];
  v14 = [v13 currency];

  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();
  v16 = v15;

  v17 = sub_1BE052404();
  v11, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1BE052404();
  v16, v26, v27, v28, v29, v30, v31, v32;
  v33 = [objc_opt_self() suggestionWithTitle:v17 value:v12 currencyCode:v25];

  if (v33)
  {
    *(v7 + 32) = v33;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BD3E5D24@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v65 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v63 - v3;
  v5 = sub_1BD993C74();
  if (v6)
  {
    v66 = v5;
    v67 = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE0506C4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_1BE051494();
    v15 = sub_1BE050564();
    v17 = v16;
    v63 = a1;
    v64 = v2;
    v19 = v18;
    v21 = v20;
    v14, v16, v18, v20, v22, v23, v24, v25;
    sub_1BD0DDF10(v7, v9, (v11 & 1), v26, v27, v28, v29, v30);
    v13, v31, v32, v33, v34, v35, v36, v37;
    v66 = v15;
    v67 = v17;
    v38 = (v19 & 1);
    v68 = v38;
    v69 = v21;
    sub_1BE052434();
    v40 = v39;
    sub_1BE050DE4();
    v40, v41, v42, v43, v44, v45, v46, v47;
    sub_1BD0DDF10(v15, v17, v38, v48, v49, v50, v51, v52);
    v21, v53, v54, v55, v56, v57, v58, v59;
    v60 = v63;
    sub_1BD0DE204(v4, v63, &qword_1EBD452C0, &qword_1BE0B7620);
    return (*(v65 + 56))(v60, 0, 1, v64);
  }

  else
  {
    v62 = *(v65 + 56);

    return v62(a1, 1, 1, v2);
  }
}

void sub_1BD3E5F68()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8088], v0, v2);
  v5 = PKPassKitBundle();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v38 = v7;
    v39 = v9;
    sub_1BD0DDEBC();
    v10 = sub_1BE0506C4();
    v12 = v11;
    v14 = v13;
    v38 = v10;
    v39 = v11;
    v16 = (v15 & 1);
    v40 = v15 & 1;
    v41 = v13;
    sub_1BE052434();
    v18 = v17;
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    sub_1BD0DDF10(v10, v12, v16, v26, v27, v28, v29, v30);
    v14, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD3E6130(uint64_t a1, uint64_t a2)
{
  sub_1BE0528A4();
  sub_1BE048964();
  v4 = sub_1BE052894();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for Decimal(0);
  sub_1BE051934();
  v41 = v38;
  v42 = v39;
  v43 = v40;
  v44 = *(a2 + 72);
  v45 = *(a2 + 88);
  v46 = *(a2 + 92);
  v47 = *(a2 + 108);
  v9 = [*(a2 + 16) monetaryValue];
  v10 = [v9 currency];

  if (v10)
  {
    v11 = sub_1BE052434();
    v13 = v12;

    sub_1BD3E6448(v14, a2);
    v16 = v15;
    *&v35[4] = v46;
    *v35 = v43;
    *&v35[20] = v47;
    *&v35[24] = v44;
    *&v35[40] = v45;
    *&v33 = v11;
    *(&v33 + 1) = v13;
    *&v34 = 2;
    *(&v34 + 1) = [objc_opt_self() systemBlueColor];
    sub_1BE052434();
    v18 = v17;
    sub_1BD3EC708();
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    v36[4] = *&v35[32];
    v36[5] = v33;
    v36[6] = v34;
    v37 = v16;
    v36[0] = v41;
    v36[1] = v42;
    v36[2] = *v35;
    v36[3] = *&v35[16];
    sub_1BD3EC75C(v36, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {
    __break(1u);
  }
}
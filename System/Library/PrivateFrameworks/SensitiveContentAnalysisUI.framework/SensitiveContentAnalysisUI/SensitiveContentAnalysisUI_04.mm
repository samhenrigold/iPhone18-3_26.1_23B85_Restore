uint64_t sub_1BC6A589C()
{
  v1 = *(type metadata accessor for InterventionConfig(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC6A3C38(v2);
}

unint64_t sub_1BC6A590C()
{
  result = qword_1EBCDCD58;
  if (!qword_1EBCDCD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCC8, &qword_1BC764180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC20, &qword_1BC7640C8);
    sub_1BC6A4A10();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EBCDCD60, &qword_1EBCDCCD0, &qword_1BC764188, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCD58);
  }

  return result;
}

void sub_1BC6A5A14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id HostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BC75BB30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HostViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1BC75BB30();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for HostViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id HostViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HostViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HostViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id HostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC6A5D8C()
{
  v1 = v0;
  v2 = sub_1BC759FE0();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BC759D00();
  v8 = *(v33 - 8);
  v9 = MEMORY[0x1EEE9AC00](v33);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - v12;
  sub_1BC6A6198(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if ((EnumCaseMultiPayload - 8) >= 2)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return *v7;
      }

      else
      {
        v18 = *v7;

        v19 = *(v18 + 16);
        if (v19)
        {
          v35 = v15;
          sub_1BC6701A4(0, v19, 0);
          v21 = *(v8 + 16);
          v20 = v8 + 16;
          v22 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
          v30 = *(v20 + 56);
          v31 = v21;
          v32 = v20;
          v23 = (v20 - 8);
          v15 = v35;
          v29[0] = v18;
          v29[1] = v34 + 32;
          do
          {
            v24 = v2;
            v25 = v33;
            v31(v11, v22, v33);
            sub_1BC759CC0();
            (*v23)(v11, v25);
            v35 = v15;
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1BC6701A4((v26 > 1), v27 + 1, 1);
              v15 = v35;
            }

            *(v15 + 16) = v27 + 1;
            v28 = v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27;
            v2 = v24;
            (*(v34 + 32))(v28, v4, v24);
            v22 += v30;
            --v19;
          }

          while (v19);
        }
      }
    }
  }

  else if (EnumCaseMultiPayload <= 2 || (EnumCaseMultiPayload - 4) >= 2)
  {
    sub_1BC6A61FC(v7);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

    v16 = v33;
    (*(v8 + 32))(v13, v7, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC761600;
    sub_1BC759CC0();
    (*(v8 + 8))(v13, v16);
  }

  return v15;
}

uint64_t sub_1BC6A6198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6A61FC(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6A6258(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDD8, &qword_1BC764718);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for InterventionView(0);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v13 + *(v3 + 32)) < 0xFFFFFFFF80000000)
  {
    sub_1BC6A72EC(v13, v5, type metadata accessor for InterventionConfig);
    RemoteView.init(_:)(v5, v8);
    sub_1BC6A72EC(v8, v11, type metadata accessor for RemoteView);
    swift_storeEnumTagMultiPayload();
    sub_1BC6A67F0(&qword_1EBCDCD88, type metadata accessor for InterventionView, &protocol conformance descriptor for InterventionView);
    sub_1BC6A67F0(&qword_1EBCDCD90, type metadata accessor for RemoteView, &protocol conformance descriptor for RemoteView);
    sub_1BC75AE00();
    v17 = type metadata accessor for RemoteView;
    v18 = v8;
  }

  else
  {
    sub_1BC6A72EC(v13, &v15[*(v12 + 28)], type metadata accessor for InterventionConfig);
    *v15 = swift_getKeyPath();
    *(v15 + 1) = 0;
    v15[16] = 0;
    *(v15 + 3) = swift_getKeyPath();
    *(v15 + 4) = 0;
    v15[40] = 0;
    sub_1BC759D90();
    sub_1BC6A67F0(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
    *(v15 + 6) = sub_1BC75A740();
    v15[56] = v16 & 1;
    sub_1BC6A72EC(v15, v11, type metadata accessor for InterventionView);
    swift_storeEnumTagMultiPayload();
    sub_1BC6A67F0(&qword_1EBCDCD88, type metadata accessor for InterventionView, &protocol conformance descriptor for InterventionView);
    sub_1BC6A67F0(&qword_1EBCDCD90, type metadata accessor for RemoteView, &protocol conformance descriptor for RemoteView);
    sub_1BC75AE00();
    v17 = type metadata accessor for InterventionView;
    v18 = v15;
  }

  return sub_1BC6A80A4(v18, v17);
}

unint64_t sub_1BC6A6660()
{
  result = qword_1EBCDCD70;
  if (!qword_1EBCDCD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD68, &qword_1BC7642C0);
    sub_1BC6A66E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCD70);
  }

  return result;
}

unint64_t sub_1BC6A66E4()
{
  result = qword_1EBCDCD78;
  if (!qword_1EBCDCD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD80, &qword_1BC7642C8);
    sub_1BC6A67F0(&qword_1EBCDCD88, type metadata accessor for InterventionView, &protocol conformance descriptor for InterventionView);
    sub_1BC6A67F0(&qword_1EBCDCD90, type metadata accessor for RemoteView, &protocol conformance descriptor for RemoteView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCD78);
  }

  return result;
}

uint64_t sub_1BC6A67F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InterventionView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_1BC759D90();
  sub_1BC6A67F0(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  *(a2 + 48) = sub_1BC75A740();
  *(a2 + 56) = v4 & 1;
  v5 = type metadata accessor for InterventionView(0);
  return sub_1BC6A7354(a1, a2 + *(v5 + 28), type metadata accessor for InterventionConfig);
}

uint64_t sub_1BC6A6944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD68, &qword_1BC7642C0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - v2;
  sub_1BC6A6258(v0);
  sub_1BC759D90();
  sub_1BC759D80();
  sub_1BC6A6660();
  sub_1BC6A67F0(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  sub_1BC75B210();

  return sub_1BC66008C(v3, &qword_1EBCDCD68, &qword_1BC7642C0);
}

uint64_t sub_1BC6A6A70()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    sub_1BC63302C(*(v0 + 24), *(v0 + 32));
  }

  else
  {

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v6, v5, 0, sub_1BC635480);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_1BC6A6BE8()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  if ((v6 & 1) == 0)
  {
    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t InterventionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30[1] = a1;
  v3 = type metadata accessor for InterventionView(0);
  v4 = v3 - 8;
  v30[0] = *(v3 - 8);
  v5 = *(v30[0] + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _InterventionView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD98, &qword_1BC764330);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  sub_1BC6A72EC(v2 + *(v4 + 36), v9, type metadata accessor for InterventionConfig);
  v14 = &v9[*(v7 + 20)];
  *&v31[0] = swift_getKeyPath();
  sub_1BC6A7104(v31);
  v15 = v31[11];
  *(v14 + 10) = v31[10];
  *(v14 + 11) = v15;
  *(v14 + 12) = v31[12];
  v14[208] = v32;
  v16 = v31[7];
  *(v14 + 6) = v31[6];
  *(v14 + 7) = v16;
  v17 = v31[9];
  *(v14 + 8) = v31[8];
  *(v14 + 9) = v17;
  v18 = v31[3];
  *(v14 + 2) = v31[2];
  *(v14 + 3) = v18;
  v19 = v31[5];
  *(v14 + 4) = v31[4];
  *(v14 + 5) = v19;
  v20 = v31[1];
  *v14 = v31[0];
  *(v14 + 1) = v20;
  sub_1BC6A72EC(v2, v6, type metadata accessor for InterventionView);
  v21 = (*(v30[0] + 80) + 16) & ~*(v30[0] + 80);
  v22 = swift_allocObject();
  sub_1BC6A7354(v6, v22 + v21, type metadata accessor for InterventionView);
  v23 = sub_1BC6A67F0(&qword_1EBCDCDA0, type metadata accessor for _InterventionView, &unk_1BC7644B4);
  View.onShowContent(_:)(sub_1BC6A73BC, v22, v7, v23);

  sub_1BC6A80A4(v9, type metadata accessor for _InterventionView);
  v24 = 0;
  v25 = 0;
  if (sub_1BC6E49CC())
  {
    v26 = sub_1BC6A6A70();
    if (v26 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = v26;
    }

    if (v26 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v27;
    }
  }

  v30[2] = v7;
  v30[3] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.onEndCall(_:)(v24, v25, v10, OpaqueTypeConformance2);
  sub_1BC635484(v24, v25);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BC6A710C(uint64_t a1)
{
  v2 = type metadata accessor for InterventionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1BC75BE10();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BC6A72EC(a1, v5, type metadata accessor for InterventionView);
  sub_1BC75BDE0();
  v10 = sub_1BC75BDD0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BC6A7354(v5, v12 + v11, type metadata accessor for InterventionView);
  sub_1BC652910(0, 0, v8, &unk_1BC764708, v12);
}

uint64_t sub_1BC6A72EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6A7354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC6A73BC()
{
  v1 = *(type metadata accessor for InterventionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC6A710C(v2);
}

uint64_t sub_1BC6A741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1BC75ABB0();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[8] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC6A7510, v7, v6);
}

uint64_t sub_1BC6A7510()
{
  v0[11] = sub_1BC6A6BE8();
  type metadata accessor for InterventionView(0);
  v1 = sub_1BC6A5D8C();
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1BC6A75E8;

  return MEMORY[0x1EEDD8B60](v1, 3000000000000000000, 0, 0);
}

uint64_t sub_1BC6A75E8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC6A8F8C;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1BC6A7758;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC6A7758()
{
  v1 = v0[4];

  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16) != 1)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v3, v2, 0, sub_1BC635480);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
    if (v3 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v0[2] = v3;
  v0[3] = v2;
  sub_1BC63302C(v3, v2);
  if (v3 != 1)
  {
LABEL_5:
    v10 = v0[3];
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v3, v10);
  }

LABEL_6:

  v8 = v0[1];

  return v8();
}

id sub_1BC6A78DC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for _InterventionView(0) + 20));
  v6 = v5[11];
  v7 = v5[9];
  v83 = v5[10];
  v84 = v6;
  v8 = v5[11];
  v85 = v5[12];
  v9 = v5[7];
  v10 = v5[5];
  v79 = v5[6];
  v80 = v9;
  v11 = v5[7];
  v12 = v5[9];
  v81 = v5[8];
  v82 = v12;
  v13 = v5[3];
  v14 = v5[1];
  v75 = v5[2];
  v76 = v13;
  v15 = v5[3];
  v16 = v5[5];
  v77 = v5[4];
  v78 = v16;
  v17 = v5[1];
  v73 = *v5;
  v74 = v17;
  v87[10] = v83;
  v87[11] = v8;
  v87[12] = v5[12];
  v87[6] = v79;
  v87[7] = v11;
  v87[8] = v81;
  v87[9] = v7;
  v87[2] = v75;
  v87[3] = v15;
  v87[4] = v77;
  v87[5] = v10;
  v86 = *(v5 + 208);
  v88 = *(v5 + 208);
  v87[0] = v73;
  v87[1] = v14;
  if (sub_1BC6A78D4(v87) == 1)
  {
    nullsub_1();
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v45 = v86;
    v38 = v79;
    v39 = v80;
    v40 = v81;
    v41 = v82;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v32 = v73;
    v33 = v74;
    nullsub_1();
    v60 = *v18;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[4];
    v63 = v18[3];
    v64 = v21;
    v61 = v19;
    v62 = v20;
    v22 = v18[5];
    v23 = v18[6];
    v24 = v18[8];
    v67 = v18[7];
    v68 = v24;
    v65 = v22;
    v66 = v23;
    v25 = v18[9];
    v26 = v18[10];
    v27 = v18[12];
    v71 = v18[11];
    v72 = v27;
    v69 = v25;
    v70 = v26;
    v59 = v86;
    v57 = v84;
    v58 = v85;
    v55 = v82;
    v56 = v83;
    v53 = v80;
    v54 = v81;
    v51 = v78;
    v52 = v79;
    v49 = v76;
    v50 = v77;
    v47 = v74;
    v48 = v75;
    v46 = v73;
    nullsub_1();
    sub_1BC6362BC(v28, v31);
  }

  else
  {
    nullsub_1();
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v45 = v86;
    v38 = v79;
    v39 = v80;
    v40 = v81;
    v41 = v82;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v32 = v73;
    v33 = v74;
    nullsub_1();
    v46 = v73;
    v47 = v74;
    v50 = v77;
    v51 = v78;
    v48 = v75;
    v49 = v76;
    v54 = v81;
    v55 = v82;
    v52 = v79;
    v53 = v80;
    v59 = v86;
    v57 = v84;
    v58 = v85;
    v56 = v83;
    nullsub_1();

    sub_1BC75BF70();
    v29 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v73, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for Callbacks.LegacyDelegate(0);
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v55 = v69;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v46 = v60;
  v47 = v61;
  return Callbacks.LegacyDelegate.__allocating_init(callbacks:)(&v46);
}

void *sub_1BC6A7CB4()
{
  v1 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InterventionViewController(0);
  sub_1BC6A72EC(v0, v3, type metadata accessor for InterventionConfig);
  v4 = InterventionViewController.__allocating_init(with:nestedIn:)(v3, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDA8, &unk_1BC764370);
  sub_1BC75AFB0();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x68))(v6[1]);
  return v4;
}

uint64_t sub_1BC6A7DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6A67F0(&qword_1EBCDCDD0, type metadata accessor for _InterventionView, &unk_1BC764420);

  return ViewControllerRepresentableType.makeUIViewController(context:)(a1, a2, v4);
}

uint64_t sub_1BC6A7E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDD0, type metadata accessor for _InterventionView, &unk_1BC764420);

  return ViewControllerRepresentableType.updateUIViewController(_:context:)(a1, a2, a3, v6);
}

id sub_1BC6A7ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6A78DC();
  *a1 = result;
  return result;
}

uint64_t sub_1BC6A7F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDB8, type metadata accessor for _InterventionView, &unk_1BC76443C);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC6A7F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDB8, type metadata accessor for _InterventionView, &unk_1BC76443C);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC6A802C(uint64_t a1)
{
  sub_1BC6A67F0(&qword_1EBCDCDB8, type metadata accessor for _InterventionView, &unk_1BC76443C);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t sub_1BC6A80A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6A8104()
{
  HelpWebView = type metadata accessor for _WaysToGetHelpWebView(0);
  MEMORY[0x1EEE9AC00](HelpWebView);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  PolicyProperty.init()(v2);
  v3 = sub_1BC6A67F0(&qword_1EBCDCDB0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC7645E8);
  View.prefetchSensitiveContentPolicy()(HelpWebView, v3);
  return sub_1BC6A80A4(v2, type metadata accessor for _WaysToGetHelpWebView);
}

id sub_1BC6A81E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  PolicyProperty.wrappedValue.getter(&v9 - v1);
  v3 = sub_1BC759EE0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1BC66008C(v2, &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    v5 = sub_1BC6F39FC();
    v7 = v6;
    (*(v4 + 8))(v2, v3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v5 = 2;
LABEL_5:
  result = [objc_allocWithZone(SCUIMoreHelpWebViewController) initWithType_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6A833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6A67F0(&qword_1EBCDCDC8, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764554);

  return ViewControllerRepresentableType.makeUIViewController(context:)(a1, a2, v4);
}

uint64_t sub_1BC6A83B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDC8, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764554);

  return ViewControllerRepresentableType.updateUIViewController(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_1BC6A8474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDC0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764570);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BC6A8508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6A67F0(&qword_1EBCDCDC0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764570);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BC6A859C(uint64_t a1)
{
  sub_1BC6A67F0(&qword_1EBCDCDC0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764570);
  sub_1BC75AF80();
  __break(1u);
}

uint64_t SCAParticipant.structParticipant.getter()
{
  v1 = v0;
  v2 = [v0 displayName];
  v3 = sub_1BC75BB60();
  v5 = v4;

  v6 = [v1 firstName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BC75BB60();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [v1 lastName];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BC75BB60();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v1 handles];
  v17 = sub_1BC75BE50();

  return MEMORY[0x1EEDD8C80](v3, v5, v8, v10, v13, v15, v17);
}

id SCAParticipant.init(_:)(uint64_t a1)
{
  sub_1BC759F80();
  v2 = sub_1BC75BB30();

  sub_1BC759FD0();
  if (!v3)
  {
    v4 = 0;
    sub_1BC759FB0();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v4 = sub_1BC75BB30();

  sub_1BC759FB0();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = sub_1BC75BB30();

LABEL_6:
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1BC759FA0();
  v9 = sub_1BC75BE40();

  v10 = [v8 initWithDisplayName:v2 firstName:v4 lastName:v6 handles:v9];

  v11 = sub_1BC759FE0();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_1BC6A88C4(uint64_t a1)
{
  result = sub_1BC6A67F0(&qword_1EBCDCDB8, type metadata accessor for _InterventionView, &unk_1BC76443C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC6A898C(uint64_t a1)
{
  result = sub_1BC6A67F0(&qword_1EBCDCDC0, type metadata accessor for _WaysToGetHelpWebView, &unk_1BC764570);
  *(a1 + 8) = result;
  return result;
}

void sub_1BC6A8A7C(uint64_t a1)
{
  sub_1BC67DE5C(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50);
  if (v1 <= 0x3F)
  {
    sub_1BC67DE5C(319, &qword_1EBCDC488, &qword_1EBCDC490, &unk_1BC764690);
    if (v2 <= 0x3F)
    {
      sub_1BC6A8B60(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for InterventionConfig(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC6A8B60(uint64_t a1)
{
  if (!qword_1EDDCF110[0])
  {
    sub_1BC759D90();
    v1 = sub_1BC75A720();
    if (!v2)
    {
      atomic_store(v1, qword_1EDDCF110);
    }
  }
}

void sub_1BC6A8BE0(uint64_t a1)
{
  type metadata accessor for InterventionConfig(319);
  if (v1 <= 0x3F)
  {
    sub_1BC6A8C64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6A8C64()
{
  if (!qword_1EBCDD950)
  {
    v0 = sub_1BC75A720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDD950);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BC6A8DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BC6A8E48()
{
  v2 = *(type metadata accessor for InterventionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6A741C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1BC6A8F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BC6A8FC0(void *a1, void *a2)
{
  if (!a1)
  {
    if (qword_1EBCE6590 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC75A4E0();
    __swift_project_value_buffer(v20, qword_1EBCF45D8);
    oslog = sub_1BC75A4C0();
    v21 = sub_1BC75BF60();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BC630000, oslog, v21, "No container present for intervention bypass!", v22, 2u);
      MEMORY[0x1BFB27EF0](v22, -1, -1);
    }

    goto LABEL_22;
  }

  if (a2)
  {
    v4 = qword_1EBCE6590;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_1BC75A4E0();
    __swift_project_value_buffer(v5, qword_1EBCF45D8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = sub_1BC75A4C0();
    v7 = sub_1BC75BF50();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315394;
      v10 = [a1 description];
      v11 = sub_1BC75BB60();
      v13 = v12;

      v14 = sub_1BC674BD8(v11, v13, &v34);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2080;
      v15 = [a2 description];
      v16 = sub_1BC75BB60();
      v18 = v17;

      v19 = sub_1BC674BD8(v16, v18, &v34);

      *(v8 + 14) = v19;
      _os_log_impl(&dword_1BC630000, v6, v7, "Bypassing intervention. Container: %s Delegate: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB27EF0](v9, -1, -1);
      MEMORY[0x1BFB27EF0](v8, -1, -1);
    }

    if ([a2 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      sub_1BC6A9570();
      sub_1BC694F54();
      swift_unknownObjectRetain();
      oslog = sub_1BC75BCF0();
      [a2 didBypassInterventionWithUpdatedAnalyses:oslog container:a1];
      swift_unknownObjectRelease_n();

      swift_unknownObjectRelease_n();
LABEL_22:

      return;
    }

    [a2 didConfirmForInterventionViewController_];
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = qword_1EBCE6590;
    swift_unknownObjectRetain();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1BC75A4E0();
    __swift_project_value_buffer(v24, qword_1EBCF45D8);
    swift_unknownObjectRetain();
    oslog = sub_1BC75A4C0();
    v25 = sub_1BC75BF60();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(oslog, v25))
    {
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    v28 = [a1 description];
    v29 = sub_1BC75BB60();
    v31 = v30;

    v32 = sub_1BC674BD8(v29, v31, &v34);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1BC630000, oslog, v25, "No delegate present for intervention bypass! Container: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFB27EF0](v27, -1, -1);
    MEMORY[0x1BFB27EF0](v26, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1BC6A9570()
{
  v100 = sub_1BC759C40();
  v93 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = v89 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1BC759DE0();
  v96 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InterventionConfig.Layout(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759D00();
  v8 = *(v7 - 8);
  v103 = v7;
  v104 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = v89 - v12;
  v13 = sub_1BC759CA0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v101 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v89 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v94 = v89 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v89 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v89 - v25;
  sub_1BC6A6198(v97, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = v14;
  if (EnumCaseMultiPayload <= 3)
  {
    v32 = v96;
    if (EnumCaseMultiPayload < 2)
    {
      v33 = *(v14 + 32);
      v33(v26, v6, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDE0, &qword_1BC764728);
      v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BC761600;
      v33((v35 + v34), v26, v13);
      v36 = v35;
LABEL_27:
      v37 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 2)
    {
      (*(v96 + 32))(v3, v6, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDE0, &qword_1BC764728);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BC761600;
      sub_1BC759DD0();
      (*(v32 + 8))(v3, v1);
      goto LABEL_23;
    }

    v50 = *v6;
    v51 = *(*v6 + 16);
    if (v51)
    {
      v104 = v1;
      v98 = v19;
      v102 = v13;
      v108[0] = MEMORY[0x1E69E7CC0];
      sub_1BC6AA174(0, v51, 0);
      v36 = v108[0];
      v52 = v32 + 16;
      v103 = *(v32 + 16);
      v53 = &v50[(*(v32 + 80) + 32) & ~*(v32 + 80)];
      v97 = *(v32 + 72);
      v54 = v14;
      v55 = (v32 + 8);
      v95 = v50;
      v96 = v54 + 32;
      v56 = v3;
      do
      {
        v57 = v104;
        v58 = v52;
        v103(v56, v53, v104);
        v56 = v3;
        sub_1BC759DD0();
        (*v55)(v3, v57);
        v108[0] = v36;
        v60 = *(v36 + 16);
        v59 = *(v36 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1BC6AA174((v59 > 1), v60 + 1, 1);
          v56 = v3;
          v36 = v108[0];
        }

        *(v36 + 16) = v60 + 1;
        (*(v90 + 32))(v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v60, v24, v102);
        v53 += v97;
        --v51;
        v52 = v58;
      }

      while (v51);

      v13 = v102;
      v14 = v90;
      v19 = v98;
      goto LABEL_27;
    }

LABEL_26:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      v28 = v103;
      v29 = v104;
      v30 = v95;
      (*(v104 + 32))(v95, v6, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDE0, &qword_1BC764728);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BC761600;
      sub_1BC759CF0();
      (*(v29 + 8))(v30, v28);
LABEL_23:
      v36 = v31;
      goto LABEL_27;
    }

    sub_1BC6A61FC(v6);
    goto LABEL_26;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  if ((EnumCaseMultiPayload - 8) >= 2)
  {
    v38 = *v6;

    v39 = *(v38 + 2);
    if (v39)
    {
      v98 = v19;
      v108[0] = v37;
      sub_1BC6AA174(0, v39, 0);
      v40 = v108[0];
      v41 = *(v104 + 16);
      v42 = *(v104 + 80);
      v92 = v38;
      v43 = &v38[(v42 + 32) & ~v42];
      v96 = *(v104 + 72);
      v97 = v41;
      v44 = v14;
      v104 += 16;
      v45 = (v104 - 8);
      v95 = (v44 + 32);
      v46 = v94;
      do
      {
        v47 = v103;
        (v97)(v11, v43, v103);
        sub_1BC759CF0();
        (*v45)(v11, v47);
        v108[0] = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1BC6AA174((v48 > 1), v49 + 1, 1);
          v40 = v108[0];
        }

        *(v40 + 16) = v49 + 1;
        (*(v90 + 32))(v40 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v49, v46, v13);
        v43 += v96;
        --v39;
      }

      while (v39);

      v14 = v90;
      v19 = v98;
      v37 = MEMORY[0x1E69E7CC0];
      v36 = v40;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }
  }

LABEL_28:
  v61 = *(v36 + 16);
  if (v61)
  {
    v109 = v37;
    sub_1BC6AA174(0, v61, 0);
    v62 = v109;
    v64 = *(v14 + 16);
    v63 = v14 + 16;
    v96 = v64;
    v65 = (*(v63 + 64) + 32) & ~*(v63 + 64);
    v66 = v13;
    v89[1] = v36;
    v95 = v65;
    v67 = v36 + v65;
    v68 = *(v63 + 56);
    ++v93;
    v94 = v68;
    v97 = v63;
    v98 = v19;
    v91 = (v63 + 16);
    v92 = (v63 - 8);
    v102 = v66;
    do
    {
      v104 = v62;
      v69 = v101;
      v70 = v96;
      (v96)(v101, v67, v66);
      v70(v19, v69, v66);
      v71 = v99;
      sub_1BC759C20();
      v103 = sub_1BC759C80();
      v73 = v72;
      sub_1BC6AA194(&qword_1EBCDCDE8, MEMORY[0x1E697B400]);
      v74 = v100;
      sub_1BC75BC70();
      v75 = *v93;
      (*v93)(v73, v74);
      sub_1BC75BC70();
      v107 = v105 | v106;
      sub_1BC6AA194(&qword_1EBCDCDF0, MEMORY[0x1E697B410]);
      sub_1BC75C790();
      v76 = v71;
      v66 = v102;
      v75(v76, v74);
      (v103)(v108, 0);
      v77 = v69;
      v62 = v104;
      (*v92)(v77, v66);
      v109 = v62;
      v79 = *(v62 + 16);
      v78 = *(v62 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1BC6AA174((v78 > 1), v79 + 1, 1);
        v62 = v109;
      }

      *(v62 + 16) = v79 + 1;
      v80 = v94;
      v81 = &v95[v62 + v79 * v94];
      v19 = v98;
      (*v91)(v81, v98, v66);
      v67 += v80;
      --v61;
    }

    while (v61);

    v13 = v66;
    v14 = v90;
    v37 = MEMORY[0x1E69E7CC0];
    v82 = *(v62 + 16);
    if (v82)
    {
      goto LABEL_34;
    }

LABEL_38:

    return MEMORY[0x1E69E7CC0];
  }

  v62 = MEMORY[0x1E69E7CC0];
  v82 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v82)
  {
    goto LABEL_38;
  }

LABEL_34:
  v108[0] = v37;
  sub_1BC75C340();
  v84 = *(v14 + 16);
  v83 = v14 + 16;
  v103 = v84;
  v104 = v62;
  v85 = v62 + ((*(v83 + 64) + 32) & ~*(v83 + 64));
  v86 = *(v83 + 56);
  v87 = v101;
  do
  {
    v103(v87, v85, v13);
    sub_1BC759B80();
    (*(v83 - 8))(v87, v13);
    sub_1BC75C320();
    sub_1BC75C350();
    sub_1BC75C360();
    sub_1BC75C330();
    v85 += v86;
    --v82;
  }

  while (v82);

  return v108[0];
}

uint64_t sub_1BC6AA0F0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF45D8);
  __swift_project_value_buffer(v0, qword_1EBCF45D8);
  return sub_1BC75A4D0();
}

void *sub_1BC6AA174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC6AA1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BC6AA194(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BC759C40();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BC6AA1D8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCDE0, &qword_1BC764728);
  v10 = *(sub_1BC759CA0() - 8);
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
  v15 = *(sub_1BC759CA0() - 8);
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

uint64_t sub_1BC6AA3B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x736150676E6F7277;
  }

  if (v2)
  {
    v4 = 0xED000065646F6373;
  }

  else
  {
    v4 = 0x80000001BC7727C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x736150676E6F7277;
  }

  if (*a2)
  {
    v6 = 0x80000001BC7727C0;
  }

  else
  {
    v6 = 0xED000065646F6373;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BC75C5E0();
  }

  return v8 & 1;
}

uint64_t sub_1BC6AA468()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6AA4FC(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC6AA57C(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6AA60C@<X0>(char *a2@<X8>)
{
  v3 = sub_1BC75C440();

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

void sub_1BC6AA66C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BC7727C0;
  v3 = 0x736150676E6F7277;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xED000065646F6373;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BC6AA714()
{
  sub_1BC75BDB0();
  sub_1BC6AD694(&qword_1EBCDC238, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  qword_1EBCE65B8 = swift_allocError();
  return sub_1BC75BA20();
}

uint64_t sub_1BC6AA7EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  sub_1BC6AD640(a1, a2, a3);
  result = swift_allocError();
  *a2 = result;
  *v6 = v3;
  return result;
}

id sub_1BC6AA858(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

id sub_1BC6AA8C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = sub_1BC759710();

  return v5;
}

uint64_t static SCUIScreenTimePasscodeController.askUserForScreenTimePasscode(from:model:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC6AA9C0, 0, 0);
}

uint64_t sub_1BC6AA9C0()
{
  v0[6] = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v0[7] = sub_1BC75BDE0();
  v0[8] = sub_1BC75BDD0();
  v2 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6AAA68, v2, v1);
}

uint64_t sub_1BC6AAA68()
{

  return MEMORY[0x1EEE6DFA0](sub_1BC6AAAD0, 0, 0);
}

uint64_t sub_1BC6AAAD0()
{
  type metadata accessor for InterventionConfig(0);
  if (sub_1BC6AB1CC())
  {
    *(v0 + 72) = sub_1BC75BDD0();
    v2 = sub_1BC75BD80();

    return MEMORY[0x1EEE6DFA0](sub_1BC6AAC30, v2, v1);
  }

  else
  {
    sub_1BC6AB474();
    v3 = sub_1BC75C020();

    v4 = *(v0 + 8);

    return v4(v3);
  }
}

uint64_t sub_1BC6AAC30()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BC6AACD4;

  return InterventionConfig.shouldRequireInterventionPasscode.getter();
}

uint64_t sub_1BC6AACD4(char a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BC6AADD4, 0, 0);
}

uint64_t sub_1BC6AADD4()
{
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = sub_1BC75BE10();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    v5 = v3;
    v6 = sub_1BC75BDD0();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v2;
    v7[5] = v5;
    v9 = sub_1BC67B7C8(0, 0, v1, &unk_1BC764748, v7);
    *(v0 + 88) = v9;
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    *v10 = v0;
    v10[1] = sub_1BC6AAFBC;
    v12 = MEMORY[0x1E69E7288];
    v13 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v11, v9, v13, v11, v12);
  }

  else
  {
    sub_1BC6AB474();
    v14 = sub_1BC75C020();

    v15 = *(v0 + 8);

    return v15(v14);
  }
}

uint64_t sub_1BC6AAFBC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1BC6AB164;
  }

  else
  {
    v2 = sub_1BC6AB0D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC6AB0D8()
{

  sub_1BC6AB474();
  v1 = sub_1BC75C020();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BC6AB164()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC6AB1CC()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC759F50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E697B578], v4);
  v8 = sub_1BC759F40();
  (*(v5 + 8))(v7, v4);
  if (v8 & 1) != 0 && (sub_1BC759E90(), sub_1BC6AD694(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]), v9 = sub_1BC75C170(), (*(v1 + 8))(v3, v0), (v9))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18[0] = 0;
    v11 = [ObjCClassFromMetadata _isScreenTimePasscodeSet_];
    v12 = v18[0];
    if (v11)
    {
      v13 = v11;
      v14 = v18[0];
      v12 = [v13 BOOLValue];
    }

    else
    {
      v16 = v18[0];
      sub_1BC759720();

      swift_willThrow();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1BC6AB474()
{
  result = qword_1EBCDCDF8;
  if (!qword_1EBCDCDF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDCDF8);
  }

  return result;
}

uint64_t sub_1BC6AB4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_1BC75BDE0();
  v5[20] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC6AB558, v7, v6);
}

uint64_t sub_1BC6AB558()
{
  v1 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[3] = sub_1BC6AB680;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE10, &unk_1BC7649B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BC6AB848;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [ObjCClassFromMetadata _checkScreenTimePasscodeFromViewController_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BC6AB680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1BC6AD6E4;
  }

  else
  {
    v5 = sub_1BC6AD6E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BC6AB7B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC6AB4C0(v4, v5, v6, v2, v3);
}

uint64_t sub_1BC6AB848(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1BC6ABA80(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v7 = a1;
  v8 = a2;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1BC6ABB58;

  return static SCUIScreenTimePasscodeController.askUserForScreenTimePasscode(from:model:)(v7, v8);
}

uint64_t sub_1BC6ABB58(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_1BC759710();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t static SCUIScreenTimePasscodeController.askUserForScreenTimePasscode(from:interventionType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v3[5] = swift_task_alloc();
  v4 = sub_1BC759EE0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC6ABE0C, 0, 0);
}

uint64_t sub_1BC6ABE0C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1BC6E53B4(v0[3]);
  v4 = sub_1BC6AB1CC();
  (*(v2 + 8))(v1, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = v0[4];
    v7 = v0[2];
    v8 = sub_1BC75BE10();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_1BC75BDE0();
    v9 = v7;
    v10 = sub_1BC75BDD0();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    v11[5] = v9;
    v13 = sub_1BC67B7C8(0, 0, v5, &unk_1BC764768, v11);
    v0[9] = v13;
    v14 = swift_task_alloc();
    v0[10] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    *v14 = v0;
    v14[1] = sub_1BC6AC09C;
    v16 = MEMORY[0x1E69E7288];
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v15, v13, v17, v15, v16);
  }

  else
  {
    sub_1BC6AB474();
    v18 = sub_1BC75C020();

    v19 = v0[1];

    return v19(v18);
  }
}

uint64_t sub_1BC6AC09C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    v2 = sub_1BC6AC258;
  }

  else
  {
    v2 = sub_1BC6AC1B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC6AC1B8()
{

  sub_1BC6AB474();
  v1 = sub_1BC75C020();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BC6AC258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC6AC2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_1BC75BDE0();
  v5[20] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BC6AC360, v7, v6);
}

uint64_t sub_1BC6AC360()
{
  v1 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[3] = sub_1BC6AC488;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE10, &unk_1BC7649B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BC6AB848;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [ObjCClassFromMetadata _checkScreenTimePasscodeFromViewController_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BC6AC488()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1BC6AC61C;
  }

  else
  {
    v5 = sub_1BC6AC5B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BC6AC5B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC6AC61C()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC6AC6D0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC6AC2C8(v4, v5, v6, v2, v3);
}

uint64_t sub_1BC6AC8F0(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v7 = a1;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1BC6AC9C0;

  return static SCUIScreenTimePasscodeController.askUserForScreenTimePasscode(from:interventionType:)(v7, a2);
}

uint64_t sub_1BC6AC9C0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1BC759710();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t PasscodeBypassType.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BC6ACB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCE00;
  if (!qword_1EBCDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE00);
  }

  return result;
}

unint64_t sub_1BC6ACBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCE08;
  if (!qword_1EBCDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE08);
  }

  return result;
}

uint64_t *sub_1BC6ACC24@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1BC6ACC64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC660280;

  return sub_1BC6AC8F0(v2, v3, v5, v4);
}

uint64_t sub_1BC6ACD24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BC660280;

  return v6();
}

uint64_t sub_1BC6ACE0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC660280;

  return sub_1BC6ACD24(v2, v3, v4);
}

uint64_t sub_1BC6ACECC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BC65281C;

  return v7();
}

uint64_t sub_1BC6ACFB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC660280;

  return sub_1BC6ACECC(a1, v4, v5, v6);
}

uint64_t sub_1BC6AD080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1BC6A8F10(a3, v23 - v10);
  v12 = sub_1BC75BE10();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BC6AD33C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1BC75BE00();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BC75BD80();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1BC75BBC0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1BC6AD33C(a3);

    return v21;
  }

LABEL_8:
  sub_1BC6AD33C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BC6AD33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6AD3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC660280;

  return sub_1BC65B53C(a1, v4);
}

uint64_t sub_1BC6AD45C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC660280;

  return sub_1BC6ABA80(v2, v3, v5, v4);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC6AD55C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC65281C;

  return sub_1BC6ACECC(a1, v4, v5, v6);
}

unint64_t sub_1BC6AD640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCE18;
  if (!qword_1EBCDCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE18);
  }

  return result;
}

uint64_t sub_1BC6AD694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6AD6EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x555574726F706572;
  v4 = a1;
  v5 = 0x726574726F706572;
  v6 = 0xE600000000000000;
  if (a1 == 5)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x74726F706572;
  }

  v7 = 0x6556616D65686373;
  v8 = 0xED00006E6F697372;
  if (a1 != 3)
  {
    v7 = 0xD000000000000016;
    v8 = 0x80000001BC772930;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x695474726F706572;
  v10 = 0xEF706D617473656DLL;
  if (a1 != 1)
  {
    v9 = 0x746163696C707061;
    v10 = 0xEB000000006E6F69;
  }

  if (!a1)
  {
    v9 = 0x555574726F706572;
    v10 = 0xEA00000000004449;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF706D617473656DLL;
        if (v11 != 0x695474726F706572)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEB000000006E6F69;
        if (v11 != 0x746163696C707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x726574726F706572)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x74726F706572)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xED00006E6F697372;
      if (v11 != 0x6556616D65686373)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000016;
    v2 = 0x80000001BC772930;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1BC75C5E0();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1BC6AD940(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000495455746ELL;
  v3 = 0x656D686361747461;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7254797465666173;
    }

    else
    {
      v5 = 0x656D686361747461;
    }

    if (v4)
    {
      v6 = 0xED00007265676769;
    }

    else
    {
      v6 = 0xED0000495455746ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xEE0068736148746ELL;
    v5 = 0x656D686361747461;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x656D686361747461;
    }

    else
    {
      v5 = 0x664F7265626D756ELL;
    }

    if (v4 == 3)
    {
      v6 = 0xEE0044495555746ELL;
    }

    else
    {
      v6 = 0xEE00736B6E756843;
    }
  }

  v7 = 0xEE0068736148746ELL;
  v8 = 0xEE0044495555746ELL;
  v9 = 0x664F7265626D756ELL;
  if (a2 == 3)
  {
    v9 = 0x656D686361747461;
  }

  else
  {
    v8 = 0xEE00736B6E756843;
  }

  if (a2 == 2)
  {
    v9 = 0x656D686361747461;
  }

  else
  {
    v7 = v8;
  }

  if (a2)
  {
    v3 = 0x7254797465666173;
    v2 = 0xED00007265676769;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v9;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BC75C5E0();
  }

  return v12 & 1;
}

uint64_t sub_1BC6ADAF0()
{
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC6ADB54(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();
  return sub_1BC75C720();
}

uint64_t sub_1BC6ADBA0(uint64_t a1, unsigned __int8 a2)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6ADCE8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1BC75C440();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1BC6ADE04@<X0>(void *a1@<X8>)
{
  v2._countAndFlagsBits = 0x435F59544944554ELL;
  v2._object = 0xEE004E5245434E4FLL;
  result = SCLocalizedStringKey.init(stringLiteral:)(v2).localized._countAndFlagsBits;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t Report.Evidence.additionalComments.getter()
{
  v1 = *(v0 + *(type metadata accessor for Report.Evidence(0) + 36));

  return v1;
}

uint64_t Report.Evidence.additionalComments.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Report.Evidence(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Report.Evidence.chatTranscript.getter()
{
  type metadata accessor for Report.Evidence(0);
}

uint64_t Report.Evidence.chatTranscript.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Report.Evidence(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Report.Evidence.attachmentsEncapsulatedKey.getter()
{
  v1 = v0 + *(type metadata accessor for Report.Evidence(0) + 52);
  v2 = *v1;
  sub_1BC6AE07C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1BC6AE07C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BC6AE090(a1, a2);
  }

  return a1;
}

uint64_t sub_1BC6AE090(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Report.Evidence.attachmentsEncapsulatedKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Report.Evidence(0) + 52);
  result = sub_1BC6AE12C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_1BC6AE12C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BC6AE140(result, a2);
  }

  return result;
}

uint64_t sub_1BC6AE140(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void Report.Evidence.init(_:interventionType:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v64 - v7;
  v9 = type metadata accessor for Report.Evidence(0);
  v10 = (a3 + v9[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v9[11]) = 8;
  *(a3 + v9[13]) = xmmword_1BC7649C0;
  v11 = &off_1E7FF2000;
  sub_1BC6AE7C4([a1 victim], a3 + v9[6]);
  v12 = &off_1E7FF2000;
  v67 = a1;
  v13 = [a1 suspects];
  v66 = sub_1BC65F664(0, &qword_1EBCDCE28, off_1E7FF12A0);
  v14 = sub_1BC75BD00();

  if (v14 >> 62)
  {
    v15 = sub_1BC75C3F0();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_13:

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  v68 = MEMORY[0x1E69E7CC0];
  sub_1BC6BB3C4(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return;
  }

  v64 = v8;
  v65 = a2;
  v16 = 0;
  v17 = v68;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB26EB0](v16, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v16 + 32);
    }

    sub_1BC6BD150(v18, v69);
    v68 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1BC6BB3C4((v19 > 1), v20 + 1, 1);
      v17 = v68;
    }

    ++v16;
    *(v17 + 16) = v20 + 1;
    v21 = v17 + 168 * v20;
    v22 = v69[0];
    v23 = v69[2];
    *(v21 + 48) = v69[1];
    *(v21 + 64) = v23;
    *(v21 + 32) = v22;
    v24 = v69[3];
    v25 = v69[4];
    v26 = v69[6];
    *(v21 + 112) = v69[5];
    *(v21 + 128) = v26;
    *(v21 + 80) = v24;
    *(v21 + 96) = v25;
    v27 = v69[7];
    v28 = v69[8];
    v29 = v69[9];
    *(v21 + 192) = v70;
    *(v21 + 160) = v28;
    *(v21 + 176) = v29;
    *(v21 + 144) = v27;
  }

  while (v15 != v16);

  a2 = v65;
  v8 = v64;
  v11 = &off_1E7FF2000;
  v12 = &off_1E7FF2000;
LABEL_14:
  *(a3 + v9[7]) = v17;
  v30 = v67;
  v31 = [v67 v12[385]];
  v32 = sub_1BC75BD00();

  v33 = sub_1BC6AEC64(v32);

  v34 = [v30 v11[384]];
  v35 = [v34 mediaFiles];

  sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
  v36 = sub_1BC75BD00();

  v68 = v33;
  sub_1BC6BACBC(v36);
  v37 = v68;
  v38 = [v30 unsortedChatTranscript];
  if (v38)
  {
    v39 = v38;
    sub_1BC65F664(0, &qword_1EBCDCE38, off_1E7FF1290);
    v40 = sub_1BC75BD00();
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + v9[12]) = sub_1BC72D454(v40, v37);
  v41 = [v30 incidentReportDate];
  if (v41)
  {
    v42 = v41;
    sub_1BC7598F0();

    v43 = sub_1BC759910();
    (*(*(v43 - 8) + 56))(v8, 0, 1, v43);
  }

  else
  {
    v44 = sub_1BC759910();
    (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
  }

  sub_1BC65FFBC(v8, a3, &qword_1EBCDCE20, &qword_1BC7649D0);
  *(a3 + v9[15]) = [v30 reportingApplication];
  v45 = [v30 chatRoomName];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1BC75BB60();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = (a3 + v9[14]);
  *v50 = v47;
  v50[1] = v49;
  *(a3 + v9[18]) = [v30 flags];
  v51 = objc_opt_self();
  v52 = [v51 currentDevice];
  v53 = [v52 systemName];

  v54 = sub_1BC75BB60();
  v56 = v55;

  v57 = (a3 + v9[16]);
  *v57 = v54;
  v57[1] = v56;
  v58 = [v51 currentDevice];
  v59 = [v58 systemVersion];

  v60 = sub_1BC75BB60();
  v62 = v61;

  v63 = (a3 + v9[17]);
  *v63 = v60;
  v63[1] = v62;
  *(a3 + v9[8]) = a2;
  *(a3 + v9[10]) = 0;
}

void sub_1BC6AE7C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1BC759910();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v57 - v11;
  v12 = [a1 displayName];
  v13 = sub_1BC75BB60();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v13 = 0;
    v15 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  v17 = [a1 accountID];
  v18 = sub_1BC75BB60();
  v20 = v19;

  *(a2 + 16) = v18;
  *(a2 + 24) = v20;

  v21 = [a1 fullName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BC75BB60();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  v26 = String.isPhoneNumber.getter(v18, v20);

  v27 = String.removingAccountIDPrefix.getter(v18, v20);
  if (v26)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v26)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27;
  }

  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = v28;
  }

  *(a2 + 64) = v29;
  *(a2 + 72) = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = v32;
  v33 = [a1 dateOfBirth];
  if (v33)
  {
    v34 = v57;
    v35 = v33;
    sub_1BC7598F0();

    v36 = *(v8 + 32);
    v36(v6, v34, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v37 = v58;
    v36(v58, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v37 = v58;
    sub_1BC759900();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_1BC66008C(v6, &qword_1EBCDCE20, &qword_1BC7649D0);
    }
  }

  v38 = _s6VictimVMa(0);
  (*(v8 + 32))(a2 + *(v38 + 44), v37, v7);
  v39 = [a1 address];
  if (v39)
  {
    sub_1BC6BCF78(v39, v59);
    v41 = v59[3];
    v40 = v59[4];
    v43 = v59[1];
    v42 = v59[2];
    v44 = v59[0];
  }

  else
  {
    v44 = 0uLL;
    v43 = 0uLL;
    v42 = 0uLL;
    v41 = 0uLL;
    v40 = 0uLL;
  }

  *(a2 + 112) = v44;
  *(a2 + 128) = v43;
  *(a2 + 144) = v42;
  *(a2 + 160) = v41;
  *(a2 + 176) = v40;
  v45 = [a1 deviceRegion];
  if (v45)
  {
    v46 = v45;
    v47 = [v46 identifier];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1BC75BB60();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v54 = [v46 displayName];
    if (v54)
    {
      v55 = v54;
      v52 = sub_1BC75BB60();
      v53 = v56;
    }

    else
    {

      v52 = 0;
      v53 = 0;
    }
  }

  else
  {

    v52 = 0;
    v53 = 0;
    v49 = 0;
    v51 = 0;
  }

  *(a2 + 80) = v52;
  *(a2 + 88) = v53;
  *(a2 + 96) = v49;
  *(a2 + 104) = v51;
}

unint64_t sub_1BC6AEC64(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1BFB26EB0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject sensitiveMediaFiles];
      sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
      v8 = sub_1BC75BD00();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1BC75C3F0();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1BC75C3F0();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1BC75C3F0();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1BC75C2E0();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1BC75C3F0();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1BC633C54(&qword_1EBCDD1E0, &qword_1EBCDD1D8, &unk_1BC766490, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1D8, &unk_1BC766490);
              v19 = sub_1BC6BCD84(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1BC75C3F0();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t Report.Evidence.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE40, &qword_1BC7649D8);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE48, &qword_1BC7649E0);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v9;
  v10 = sub_1BC759940();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE50, &qword_1BC7649E8);
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  sub_1BC6BDCF4(a2, v19, type metadata accessor for Report.Authority);
  v20 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    v40 = v3;
    v21 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BC6BDD5C(v21, v22, v23);
    sub_1BC75C740();
    sub_1BC759930();
    sub_1BC759920();
    (*(v11 + 8))(v13, v10);
    LOBYTE(v50) = 0;
    v24 = v49;
    sub_1BC75C530();
    v25 = v14;
    if (v24)
    {
      (*(v48 + 8))(v16, v14);
    }

    else
    {

      LOBYTE(v50) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
      sub_1BC6BDDB0();
      sub_1BC75C560();
      v27 = type metadata accessor for Report.Evidence(0);
      *&v50 = *(v40 + *(v27 + 60));
      v51 = 2;
      type metadata accessor for SCUIReportingApplication(0);
      sub_1BC6BDE8C(&qword_1EBCDCE68, type metadata accessor for SCUIReportingApplication, &protocol conformance descriptor for SCUIReportingApplication);
      sub_1BC75C560();
      LOBYTE(v50) = 3;
      sub_1BC75C530();
      LOBYTE(v50) = 4;
      sub_1BC75C550();
      LOBYTE(v50) = 5;
      _s6VictimVMa(0);
      sub_1BC6BDE8C(&qword_1EBCDCE70, _s6VictimVMa, &unk_1BC764E10);
      v28 = sub_1BC75C4F0();
      LOBYTE(v50) = 6;
      sub_1BC6BDED4(v28, v29, v30);
      v31 = v44;
      sub_1BC75C4E0();
      v50 = *(v40 + *(v27 + 36));
      v51 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
      sub_1BC6C0FA8(&qword_1EBCDCE80, &qword_1EBCDCE78, &qword_1BC7649F0, MEMORY[0x1E69E6160]);
      v32 = v46;
      v33 = sub_1BC75C560();
      v49 = v27;
      LOBYTE(v50) = 1;
      sub_1BC6BDF28(v33, v34, v35);
      v36 = v41;
      sub_1BC75C4E0();
      LOBYTE(v50) = 0;
      v37 = v43;
      sub_1BC75C550();
      v38 = (v40 + *(v49 + 52));
      v39 = v38[1];
      *&v50 = *v38;
      *(&v50 + 1) = v39;
      v51 = 1;
      sub_1BC6AE07C(v50, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE88, &qword_1BC7649F8);
      sub_1BC6BDF7C();
      sub_1BC75C560();
      sub_1BC6AE12C(v50, *(&v50 + 1));
      *&v50 = *(v40 + *(v49 + 48));
      v51 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
      sub_1BC6BE054();
      sub_1BC75C4F0();
      (*(v42 + 8))(v36, v37);
      (*(v45 + 8))(v31, v32);
      return (*(v48 + 8))(v16, v25);
    }
  }

  else
  {
    Report.Evidence.encode(to:)(a1);
    return sub_1BC6BF988(v19, type metadata accessor for Report.Authority);
  }
}

uint64_t Report.Evidence.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEB8, &qword_1BC764A08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BE108(v9, v10, v11);
  sub_1BC75C740();
  LOBYTE(v26) = 0;
  sub_1BC759910();
  sub_1BC6BDE8C(&qword_1EBCDCE60, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v12 = sub_1BC75C520();
  if (!v2)
  {
    LOBYTE(v26) = 1;
    sub_1BC6BE15C(v12, v13, v14);
    sub_1BC75C560();
    v15 = type metadata accessor for Report.Evidence(0);
    LOBYTE(v26) = 2;
    _s6VictimVMa(0);
    sub_1BC6BDE8C(&qword_1EBCDCEC8, _s6VictimVMa, &unk_1BC764DC0);
    sub_1BC75C560();
    v26 = *(v3 + v15[7]);
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCED0, &qword_1BC764A10);
    sub_1BC6BE1B0(&qword_1EBCDCED8, sub_1BC6BE228, MEMORY[0x1E69E6300]);
    sub_1BC75C560();
    v26 = *(v3 + v15[8]);
    v28 = 4;
    type metadata accessor for SCUIInterventionType(0);
    sub_1BC6BDE8C(&qword_1EBCDCEE8, type metadata accessor for SCUIInterventionType, &protocol conformance descriptor for SCUIInterventionType);
    sub_1BC75C560();
    LOBYTE(v26) = 5;
    sub_1BC75C500();
    LOBYTE(v26) = 6;
    v16 = sub_1BC75C540();
    LOBYTE(v26) = *(v3 + v15[11]);
    v28 = 7;
    sub_1BC6BE27C(v16, v17, v18);
    sub_1BC75C520();
    v26 = *(v3 + v15[12]);
    v28 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BE2D0();
    sub_1BC75C560();
    v19 = (v3 + v15[13]);
    v20 = v19[1];
    v26 = *v19;
    v27 = v20;
    v28 = 9;
    v21 = sub_1BC6AE07C(v26, v20);
    sub_1BC6BE000(v21, v22, v23);
    sub_1BC75C520();
    sub_1BC6AE12C(v26, v27);
    LOBYTE(v26) = 10;
    sub_1BC75C500();
    v26 = *(v3 + v15[15]);
    v28 = 11;
    type metadata accessor for SCUIReportingApplication(0);
    sub_1BC6BDE8C(&qword_1EBCDCE68, type metadata accessor for SCUIReportingApplication, &protocol conformance descriptor for SCUIReportingApplication);
    sub_1BC75C560();
    LOBYTE(v26) = 12;
    sub_1BC75C530();
    LOBYTE(v26) = 13;
    sub_1BC75C530();
    v26 = *(v3 + v15[18]);
    v28 = 14;
    type metadata accessor for SCUIReportFlags(0);
    sub_1BC6BDE8C(&qword_1EBCDCF08, type metadata accessor for SCUIReportFlags, &protocol conformance descriptor for SCUIReportFlags);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BC6AFE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Media(0);
  v79 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16))
  {
    if (!v9 || a1 == a2)
    {
      return 1;
    }

    v10 = 0;
    v11 = a1 + 32;
    v12 = a2 + 32;
    v74 = v9;
    v69 = v12;
    for (i = v11; ; v11 = i)
    {
      v13 = *(v11 + 168 * v10 + 144);
      v89 = *(v11 + 168 * v10 + 128);
      v90 = v13;
      v91 = *(v11 + 168 * v10 + 160);
      v14 = *(v11 + 168 * v10 + 80);
      v85 = *(v11 + 168 * v10 + 64);
      v86 = v14;
      v15 = *(v11 + 168 * v10 + 112);
      v87 = *(v11 + 168 * v10 + 96);
      v88 = v15;
      v16 = *(v11 + 168 * v10 + 16);
      v81 = *(v11 + 168 * v10);
      v82 = v16;
      v17 = *(v11 + 168 * v10 + 48);
      v83 = *(v11 + 168 * v10 + 32);
      v84 = v17;
      v18 = (v12 + 168 * v10);
      v19 = v18[9];
      v100 = v18[8];
      v101 = v19;
      v102 = *(v18 + 20);
      v20 = v18[5];
      v96 = v18[4];
      v97 = v20;
      v21 = v18[7];
      v98 = v18[6];
      v99 = v21;
      v22 = v18[1];
      v92 = *v18;
      v93 = v22;
      v23 = v18[3];
      v94 = v18[2];
      v95 = v23;
      if (v81 != v92 && (sub_1BC75C5E0() & 1) == 0)
      {
        break;
      }

      if (v82 != v93 && (sub_1BC75C5E0() & 1) == 0)
      {
        break;
      }

      if (*(&v83 + 1))
      {
        if (!*(&v94 + 1) || v83 != v94 && (sub_1BC75C5E0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(&v94 + 1))
      {
        return 0;
      }

      if (*(&v84 + 1))
      {
        if (!*(&v95 + 1) || v84 != v95 && (sub_1BC75C5E0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(&v95 + 1))
      {
        return 0;
      }

      if (*(&v85 + 1))
      {
        if (!*(&v96 + 1) || v85 != v96 && (sub_1BC75C5E0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(&v96 + 1))
      {
        return 0;
      }

      v76 = v10;
      v25 = *(&v87 + 1);
      v24 = v87;
      v26 = *(&v88 + 1);
      v27 = v88;
      v28 = *(&v89 + 1);
      v77 = *(&v90 + 1);
      v30 = *(&v98 + 1);
      v29 = v98;
      v31 = *(&v99 + 1);
      v32 = v99;
      v33 = *(&v100 + 1);
      v34 = v100;
      v71 = v90;
      v75 = *(&v101 + 1);
      v72 = v101;
      v73 = v89;
      if (*(&v86 + 1))
      {
        if (!*(&v97 + 1))
        {
          return 0;
        }

        if (v86 != v97)
        {
          v35 = *(&v89 + 1);
          v68 = v88;
          v36 = *(&v100 + 1);
          v67 = v100;
          v37 = *(&v99 + 1);
          v38 = v99;
          v39 = v87;
          v40 = v98;
          v41 = sub_1BC75C5E0();
          v29 = v40;
          v24 = v39;
          v32 = v38;
          v31 = v37;
          v33 = v36;
          v34 = v67;
          v26 = *(&v68 + 1);
          v27 = v68;
          v28 = v35;
          if ((v41 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (*(&v97 + 1))
      {
        return 0;
      }

      if (v25)
      {
        if (!v30)
        {
          return 0;
        }

        if (v24 != v29 || v25 != v30)
        {
          v42 = v28;
          v43 = v33;
          v44 = v31;
          v45 = v32;
          v46 = sub_1BC75C5E0();
          v32 = v45;
          v31 = v44;
          v33 = v43;
          v28 = v42;
          if ((v46 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

      if (v26)
      {
        if (!v31)
        {
          return 0;
        }

        if (v27 != v32 || v26 != v31)
        {
          v47 = v28;
          v48 = v33;
          v49 = sub_1BC75C5E0();
          v33 = v48;
          v28 = v47;
          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v31)
      {
        return 0;
      }

      if (v28)
      {
        v50 = v77;
        v51 = v75;
        if (!v33 || (v73 != v34 || v28 != v33) && (sub_1BC75C5E0() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v50 = v77;
        v51 = v75;
        if (v33)
        {
          return 0;
        }
      }

      if (v50)
      {
        v52 = v74;
        if (!v51 || (v71 != v72 || v50 != v51) && (sub_1BC75C5E0() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v52 = v74;
        if (v51)
        {
          return 0;
        }
      }

      v53 = v91;
      v54 = v102;
      v55 = *(v91 + 16);
      if (v55 != *(v102 + 16))
      {
        return 0;
      }

      v56 = v76;
      if (v55 && v91 != v102)
      {
        v57 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v77 = v91 + v57;
        v58 = v102 + v57;
        sub_1BC6C3F8C(&v81, v80);
        result = sub_1BC6C3F8C(&v92, v80);
        v60 = 0;
        while (v60 < *(v53 + 16))
        {
          v61 = *(v79 + 72) * v60;
          result = sub_1BC6BDCF4(v77 + v61, v8, type metadata accessor for Report.Media);
          if (v60 >= *(v54 + 16))
          {
            goto LABEL_76;
          }

          v62 = v8;
          v63 = v78;
          sub_1BC6BDCF4(v58 + v61, v78, type metadata accessor for Report.Media);
          v64 = _s26SensitiveContentAnalysisUI6ReportC5MediaV2eeoiySbAE_AEtFZ_0(v62, v63);
          v65 = v63;
          v8 = v62;
          sub_1BC6BF988(v65, type metadata accessor for Report.Media);
          result = sub_1BC6BF988(v62, type metadata accessor for Report.Media);
          if (!v64)
          {
            sub_1BC6C3FC4(&v92);
            sub_1BC6C3FC4(&v81);
            return 0;
          }

          if (v55 == ++v60)
          {
            sub_1BC6C3FC4(&v92);
            sub_1BC6C3FC4(&v81);
            v52 = v74;
            v56 = v76;
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
        return result;
      }

LABEL_70:
      v10 = v56 + 1;
      if (v10 == v52)
      {
        return 1;
      }

      v12 = v69;
    }
  }

  return 0;
}

uint64_t sub_1BC6B03FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Message(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1BC6BDCF4(v13, v10, type metadata accessor for Report.Message);
        sub_1BC6BDCF4(v14, v7, type metadata accessor for Report.Message);
        sub_1BC6BDE8C(&qword_1EBCDD1D0, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
        v16 = sub_1BC75BAB0();
        sub_1BC6BF988(v7, type metadata accessor for Report.Message);
        sub_1BC6BF988(v10, type metadata accessor for Report.Message);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_1BC6B0604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Media(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1BC6BDCF4(v13, v10, type metadata accessor for Report.Media);
        sub_1BC6BDCF4(v14, v7, type metadata accessor for Report.Media);
        v16 = _s26SensitiveContentAnalysisUI6ReportC5MediaV2eeoiySbAE_AEtFZ_0(v10, v7);
        sub_1BC6BF988(v7, type metadata accessor for Report.Media);
        sub_1BC6BF988(v10, type metadata accessor for Report.Media);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

unint64_t sub_1BC6B07BC(char a1)
{
  result = 0x746E656469636E69;
  switch(a1)
  {
    case 1:
      result = 0x6E7265636E6F63;
      break;
    case 2:
      result = 0x6D6974636976;
      break;
    case 3:
      result = 0x7374636570737573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x6E61725474616863;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0x6D6F6F5274616863;
      break;
    case 11:
      result = 0x746163696C707061;
      break;
    case 12:
      result = 0x656D614E736FLL;
      break;
    case 13:
      result = 0x6F6973726556736FLL;
      break;
    case 14:
      result = 0x7367616C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC6B0984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6BFFC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6B09B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BE108(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B09F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BE108(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t Report.Evidence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = _s6VictimVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCF10, &qword_1BC764A18);
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Report.Evidence(0);
  v54 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v55 + v54[13]);
  v52 = a1;
  v53 = v15;
  *v15 = xmmword_1BC7649C0;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BE108(v16, v17, v18);
  v50 = v12;
  sub_1BC75C730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);

    sub_1BC6AE12C(*v53, *(v53 + 1));
  }

  else
  {
    v48 = v10;
    sub_1BC759910();
    LOBYTE(v56) = 0;
    sub_1BC6BDE8C(&qword_1EBCDCF18, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1BC75C490();
    v19 = v55;
    v20 = sub_1BC65FFBC(v9, v55, &qword_1EBCDCE20, &qword_1BC7649D0);
    LOBYTE(v56) = 1;
    sub_1BC6BF9E8(v20, v21, v22);
    sub_1BC75C4C0();
    LOBYTE(v56) = 2;
    sub_1BC6BDE8C(&qword_1EBCDCF28, _s6VictimVMa, &unk_1BC764D98);
    v23 = v6;
    sub_1BC75C4C0();
    v24 = v54;
    sub_1BC6C1B80(v23, v19 + v54[6], _s6VictimVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCED0, &qword_1BC764A10);
    v58 = 3;
    sub_1BC6BE1B0(&qword_1EBCDCF30, sub_1BC6BFA3C, MEMORY[0x1E69E6330]);
    sub_1BC75C4C0();
    *(v19 + v24[7]) = v56;
    type metadata accessor for SCUIInterventionType(0);
    v58 = 4;
    sub_1BC6BDE8C(&qword_1EBCDCF40, type metadata accessor for SCUIInterventionType, &protocol conformance descriptor for SCUIInterventionType);
    sub_1BC75C4C0();
    *(v19 + v24[8]) = v56;
    LOBYTE(v56) = 5;
    v25 = sub_1BC75C470();
    v26 = (v19 + v24[9]);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v56) = 6;
    v28 = sub_1BC75C4B0();
    *(v19 + v24[10]) = v28 & 1;
    v58 = 7;
    sub_1BC6BFA90(v28, v29, v30);
    sub_1BC75C490();
    *(v19 + v24[11]) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    v58 = 8;
    sub_1BC6BFAE4();
    v31 = sub_1BC75C4C0();
    *(v19 + v24[12]) = v56;
    v58 = 9;
    sub_1BC6BFB98(v31, v32, v33);
    sub_1BC75C490();
    v34 = v56;
    v35 = v57;
    v36 = v53;
    sub_1BC6AE12C(*v53, *(v53 + 1));
    *v36 = v34;
    v36[1] = v35;
    LOBYTE(v56) = 10;
    v37 = sub_1BC75C470();
    v38 = (v55 + v54[14]);
    *v38 = v37;
    v38[1] = v39;
    type metadata accessor for SCUIReportingApplication(0);
    v58 = 11;
    sub_1BC6BDE8C(&qword_1EBCDCF68, type metadata accessor for SCUIReportingApplication, &protocol conformance descriptor for SCUIReportingApplication);
    sub_1BC75C4C0();
    *(v55 + v54[15]) = v56;
    LOBYTE(v56) = 12;
    v40 = sub_1BC75C4A0();
    v41 = (v55 + v54[16]);
    *v41 = v40;
    v41[1] = v42;
    LOBYTE(v56) = 13;
    v43 = sub_1BC75C4A0();
    v44 = (v55 + v54[17]);
    *v44 = v43;
    v44[1] = v45;
    type metadata accessor for SCUIReportFlags(0);
    v58 = 14;
    sub_1BC6BDE8C(&qword_1EBCDCF70, type metadata accessor for SCUIReportFlags, &protocol conformance descriptor for SCUIReportFlags);
    sub_1BC75C4C0();
    (*(v48 + 8))(v50, v51);
    v46 = v55;
    *(v55 + v54[18]) = v56;
    sub_1BC6BDCF4(v46, v49, type metadata accessor for Report.Evidence);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_1BC6BF988(v46, type metadata accessor for Report.Evidence);
  }
}

uint64_t sub_1BC6B14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BC75C5E0();
  }
}

uint64_t sub_1BC6B1524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001BC772CF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BC6B15B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFBEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B15F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFBEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B1630@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCF80, &qword_1BC764A28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BFBEC(v9, v10, v11);
  sub_1BC75C730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = sub_1BC75C4A0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1BC6B17AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCF78, &qword_1BC764A20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BFBEC(v6, v7, v8);
  sub_1BC75C740();
  sub_1BC75C530();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BC6B18E8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCF88, &qword_1BC764A30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC6BDCF4(a2, v11, type metadata accessor for Report.Authority);
  v12 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BC6BFC78(v13, v14, v15);
    sub_1BC75C740();
    v17[15] = 0;
    sub_1BC75C500();
    if (!v2)
    {
      v17[14] = 1;
      sub_1BC75C500();
      v17[13] = 2;
      sub_1BC75C500();
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_1BC6B1B68(a1);
    return sub_1BC6BF988(v11, type metadata accessor for Report.Authority);
  }
}

uint64_t sub_1BC6B1B68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCF90, &qword_1BC764A38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BFCCC(v9, v10, v11);
  sub_1BC75C740();
  LOBYTE(v33) = 0;
  sub_1BC75C500();
  if (!v2)
  {
    LOBYTE(v33) = 1;
    sub_1BC75C530();
    LOBYTE(v33) = 2;
    sub_1BC75C500();
    LOBYTE(v33) = 3;
    sub_1BC75C500();
    LOBYTE(v33) = 4;
    v12 = sub_1BC75C500();
    v13 = v3[6];
    v39[0] = v3[5];
    v39[1] = v13;
    v38 = 5;
    sub_1BC6BFD20(v12, v14, v15);
    sub_1BC75C560();
    v16 = v3[9];
    v17 = v3[7];
    v34 = v3[8];
    v35 = v16;
    v18 = v3[9];
    v19 = v3[11];
    v36 = v3[10];
    v37 = v19;
    v20 = v3[7];
    v30 = v18;
    v31 = v36;
    v32 = v3[11];
    v33 = v20;
    v28 = v17;
    v29 = v34;
    v27 = 6;
    v21 = sub_1BC6BFC40(&v33, v26);
    sub_1BC6BFD74(v21, v22, v23);
    sub_1BC75C560();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[0] = v28;
    v26[1] = v29;
    sub_1BC6BFDC8(v26);
    _s6VictimVMa(0);
    v25[15] = 7;
    sub_1BC759910();
    sub_1BC6BDE8C(&qword_1EBCDCE60, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BC6B1ED4()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x73736572646461;
  if (v1 != 6)
  {
    v3 = 0x6942664F65746164;
  }

  v4 = 0x6D754E656E6F6870;
  if (v1 != 4)
  {
    v4 = 0x6552656369766564;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E6C6C7566;
  if (v1 != 2)
  {
    v5 = 0x6464416C69616D65;
  }

  if (*v0)
  {
    v2 = 0x49746E756F636361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC6B1FFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6C0484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6B2024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFCCC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B2060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFCCC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B209C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1BC759910();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFA8, &qword_1BC764A40);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = _s6VictimVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v53 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BC6BFCCC(v13, v14, v15);
  v16 = v8;
  v17 = v54;
  sub_1BC75C730();
  if (v17)
  {
    v54 = v17;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v11;
  }

  else
  {
    v47 = v9;
    v48 = v5;
    v19 = v51;
    v18 = v52;
    LOBYTE(v55) = 0;
    v20 = v16;
    v26 = v11;
    *v11 = sub_1BC75C470();
    *(v11 + 1) = v30;
    LOBYTE(v55) = 1;
    *(v11 + 2) = sub_1BC75C4A0();
    *(v11 + 3) = v31;
    LOBYTE(v55) = 2;
    *(v11 + 4) = sub_1BC75C470();
    *(v11 + 5) = v32;
    LOBYTE(v55) = 3;
    *(v11 + 6) = sub_1BC75C470();
    *(v11 + 7) = v33;
    LOBYTE(v55) = 4;
    v34 = sub_1BC75C470();
    v54 = 0;
    *(v11 + 8) = v34;
    *(v11 + 9) = v35;
    v61 = 5;
    sub_1BC6BFDF8(v34, v35, v36);
    v37 = v54;
    v38 = sub_1BC75C4C0();
    v54 = v37;
    if (v37)
    {
      (*(v19 + 8))(v20, v18);
      v24 = 0;
      v25 = 0;
      v21 = 1;
      v22 = 1;
      v23 = 1;
    }

    else
    {
      v41 = v56;
      *(v11 + 5) = v55;
      *(v11 + 6) = v41;
      v61 = 6;
      sub_1BC6BFE4C(v38, v39, v40);
      v42 = v54;
      sub_1BC75C4C0();
      v54 = v42;
      if (v42)
      {
        (*(v19 + 8))(v20, v18);
        v25 = 0;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
      }

      else
      {
        v43 = v58;
        *(v11 + 9) = v57;
        *(v11 + 10) = v43;
        *(v11 + 11) = v59;
        v44 = v56;
        *(v11 + 7) = v55;
        *(v11 + 8) = v44;
        v60 = 7;
        sub_1BC6BDE8C(&qword_1EBCDCF18, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v45 = v48;
        v46 = v54;
        sub_1BC75C4C0();
        v54 = v46;
        if (!v46)
        {
          (*(v19 + 8))(v20, v18);
          (*(v49 + 32))(&v26[*(v47 + 44)], v45, v3);
          sub_1BC6BDCF4(v26, v50, _s6VictimVMa);
          __swift_destroy_boxed_opaque_existential_1(v53);
          return sub_1BC6BF988(v26, _s6VictimVMa);
        }

        (*(v19 + 8))(v20, v18);
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v25 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);

  if (v21)
  {
  }

  if (v22)
  {

    if (!v23)
    {
LABEL_8:
      if (!v24)
      {
        goto LABEL_9;
      }

LABEL_13:

      if (!v25)
      {
        return result;
      }

      goto LABEL_14;
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  if (v24)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v25)
  {
    return result;
  }

LABEL_14:
  v28 = *(v26 + 10);
  v57 = *(v26 + 9);
  v58 = v28;
  v59 = *(v26 + 11);
  v29 = *(v26 + 8);
  v55 = *(v26 + 7);
  v56 = v29;
  return sub_1BC6BFDC8(&v55);
}

unint64_t sub_1BC6B271C()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x73736572646461;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6464416C69616D65;
  if (v1 != 3)
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x49746E756F636361;
  if (v1 != 1)
  {
    v5 = 0x656D614E6C6C7566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC6B2818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6C0734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6B284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFEA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B2888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFEA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B28C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC0, &qword_1BC764A48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6BFEA0(v9, v10, v11);
  sub_1BC75C740();
  LOBYTE(v25) = 0;
  sub_1BC75C530();
  if (!v2)
  {
    LOBYTE(v25) = 1;
    sub_1BC75C530();
    LOBYTE(v25) = 2;
    sub_1BC75C500();
    LOBYTE(v25) = 3;
    sub_1BC75C500();
    LOBYTE(v25) = 4;
    sub_1BC75C500();
    v12 = *(v3 + 112);
    v13 = *(v3 + 80);
    v31 = *(v3 + 96);
    v32 = v12;
    v14 = *(v3 + 112);
    v15 = *(v3 + 144);
    v33 = *(v3 + 128);
    v34 = v15;
    v16 = *(v3 + 80);
    v27 = v14;
    v28 = v33;
    v29 = *(v3 + 144);
    v30 = v16;
    v25 = v13;
    v26 = v31;
    v24 = 5;
    v17 = sub_1BC6BFC40(&v30, v23);
    sub_1BC6BFD74(v17, v18, v19);
    sub_1BC75C560();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[0] = v25;
    v23[1] = v26;
    sub_1BC6BFDC8(v23);
    v22 = *(v3 + 160);
    v21[7] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC6BFEF4();
    sub_1BC75C560();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BC6B2BC8@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  result = MEMORY[0x1BFB267E0](v3, v4);
  *a1 = v6;
  a1[1] = v7;
  return result;
}

__n128 sub_1BC6B2C20@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1BC6C0998(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

BOOL sub_1BC6B2CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1BC6BE9D4(v13, v15);
}

uint64_t Report.Media.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for Report.Media(0) + 32));

  return v1;
}

uint64_t Report.Media.sha256.getter()
{
  v1 = v0 + *(type metadata accessor for Report.Media(0) + 36);
  v2 = *v1;
  sub_1BC6AE07C(*v1, *(v1 + 8));
  return v2;
}

uint64_t Report.Media.sha256.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Report.Media(0) + 36);
  result = sub_1BC6AE12C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Report.Media.assetUUID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Report.Media(0) + 40));

  return v1;
}

uint64_t Report.Media.assetUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Report.Media(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Report.Media.encryptedFileURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Report.Media(0) + 44);

  return sub_1BC6C0EE4(a1, v3);
}

uint64_t Report.Media.numberOfChunks.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Report.Media(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Report.Media.init(url:utiType:sensitivity:wasImpetusOfReport:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v43 = a1;
  v44 = a6;
  v6 = sub_1BC759940();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE8, &qword_1BC764A58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1BC759B50();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Report.Media(0);
  v42 = *(v15 - 1);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v18[v16[9]];
  *v19 = xmmword_1BC7649C0;
  v20 = &v18[v16[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v16[11];
  v22 = sub_1BC759800();
  v23 = *(v22 - 8);
  (*(v23 + 56))(&v18[v21], 1, 1, v22);
  sub_1BC759B60();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BC66008C(v41, &qword_1EBCDCFE0, &unk_1BC76D070);
    (*(v23 + 8))(v43, v22);
    sub_1BC66008C(v10, &qword_1EBCDCFE8, &qword_1BC764A58);
    sub_1BC6AE12C(*v19, *(v19 + 1));
    sub_1BC66008C(&v18[v21], &qword_1EBCDC6D0, &qword_1BC761EF0);
    return (*(v42 + 56))(v44, 1, 1, v15);
  }

  else
  {
    v40 = &v18[v15[12]];
    (*(v12 + 32))(v14, v10, v11);
    v25 = v43;
    (*(v23 + 16))(v18, v43, v22);
    (*(v12 + 16))(&v18[v15[5]], v14, v11);
    v26 = v41;
    sub_1BC660024(v41, &v18[v15[6]], &qword_1EBCDCFE0, &unk_1BC76D070);
    v27 = v35;
    sub_1BC759930();
    v39 = sub_1BC759920();
    v34 = v28;
    sub_1BC66008C(v26, &qword_1EBCDCFE0, &unk_1BC76D070);
    (*(v23 + 8))(v25, v22);
    (*(v36 + 8))(v27, v37);
    (*(v12 + 8))(v14, v11);
    v29 = &v18[v15[8]];
    v30 = v34;
    *v29 = v39;
    v29[1] = v30;
    v31 = v40;
    *v40 = 0;
    v31[8] = 0;
    v18[v15[7]] = v38 & 1;
    v32 = v44;
    sub_1BC6BDCF4(v18, v44, type metadata accessor for Report.Media);
    (*(v42 + 56))(v32, 0, 1, v15);
    return sub_1BC6BF988(v18, type metadata accessor for Report.Media);
  }
}

uint64_t Report.Media.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BC759890();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v80 = sub_1BC75A050();
  v8 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFF0, &qword_1BC764A60);
  MEMORY[0x1EEE9AC00](v10);
  v79 = (&v70 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFF8, &qword_1BC764A68);
  v81 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6BDCF4(a2, v22, type metadata accessor for Report.Authority);
  v23 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) != 1)
  {
    Report.Media.encode(to:configuration:)(a1, a2);
    return sub_1BC6BF988(v22, type metadata accessor for Report.Authority);
  }

  v74 = v8;
  v24 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C0F54(v24, v25, v26);
  sub_1BC75C740();
  v27 = type metadata accessor for Report.Media(0);
  sub_1BC759B00();
  LOBYTE(v84) = 0;
  v28 = v83;
  sub_1BC75C530();
  if (v28)
  {
    (*(v81 + 8))(v19, v17);
  }

  v83 = 0;
  v71 = v19;
  v72 = v17;

  v73 = v3;
  v30 = v27[6];
  v31 = v74;
  v32 = v80;
  (*(v74 + 104))(v16, *MEMORY[0x1E697B5F8], v80);
  (*(v31 + 56))(v16, 0, 1, v32);
  v33 = *(v10 + 48);
  v34 = v73 + v30;
  v35 = v73;
  v36 = v79;
  sub_1BC660024(v34, v79, &qword_1EBCDCFE0, &unk_1BC76D070);
  sub_1BC660024(v16, v36 + v33, &qword_1EBCDCFE0, &unk_1BC76D070);
  v37 = *(v31 + 48);
  if (v37(v36, 1, v32) == 1)
  {
    sub_1BC66008C(v16, &qword_1EBCDCFE0, &unk_1BC76D070);
    if (v37(v36 + v33, 1, v32) == 1)
    {
      sub_1BC66008C(v36, &qword_1EBCDCFE0, &unk_1BC76D070);
      v38 = v71;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v39 = v78;
  sub_1BC660024(v36, v78, &qword_1EBCDCFE0, &unk_1BC76D070);
  if (v37(v36 + v33, 1, v32) == 1)
  {
    sub_1BC66008C(v16, &qword_1EBCDCFE0, &unk_1BC76D070);
    (*(v74 + 8))(v39, v32);
LABEL_10:
    sub_1BC66008C(v36, &qword_1EBCDCFF0, &qword_1BC764A60);
    v38 = v71;
    goto LABEL_11;
  }

  v46 = v39;
  v47 = v74;
  v48 = v36 + v33;
  v49 = v77;
  (*(v74 + 32))(v77, v48, v32);
  sub_1BC6BDE8C(&qword_1EBCDD030, MEMORY[0x1E697B600], MEMORY[0x1E697B610]);
  v85 = sub_1BC75BAB0();
  v50 = *(v47 + 8);
  v50(v49, v32);
  sub_1BC66008C(v16, &qword_1EBCDCFE0, &unk_1BC76D070);
  v50(v46, v32);
  v35 = v73;
  sub_1BC66008C(v36, &qword_1EBCDCFE0, &unk_1BC76D070);
  v38 = v71;
LABEL_11:
  LOBYTE(v84) = 1;
  v40 = v72;
  v41 = v83;
  sub_1BC75C550();
  v83 = v41;
  if (v41)
  {
    return (*(v81 + 8))(v38, v40);
  }

  v42 = (v35 + v27[9]);
  v43 = v42[1];
  if (v43 >> 60 == 15)
  {
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v51 = *v42;
    v52 = v76;
    v79 = v27;
    sub_1BC6AE090(v51, v43);
    sub_1BC7598A0();
    sub_1BC6BDE8C(&qword_1EBCDD010, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
    sub_1BC75C150();
    if (BYTE1(v84))
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
      v80 = xmmword_1BC761600;
      v60 = MEMORY[0x1E69E7508];
      v61 = MEMORY[0x1E69E7558];
      do
      {
        v62 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD028, &qword_1BC764A80);
        v63 = swift_allocObject();
        *(v63 + 16) = v80;
        *(v63 + 56) = v60;
        *(v63 + 64) = v61;
        *(v63 + 32) = v62;
        v64 = sub_1BC75BB80();
        v66 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1BC6BB024(0, *(v53 + 2) + 1, 1, v53);
        }

        v68 = *(v53 + 2);
        v67 = *(v53 + 3);
        if (v68 >= v67 >> 1)
        {
          v53 = sub_1BC6BB024((v67 > 1), v68 + 1, 1, v53);
        }

        *(v53 + 2) = v68 + 1;
        v69 = &v53[16 * v68];
        *(v69 + 4) = v64;
        *(v69 + 5) = v66;
        sub_1BC75C150();
      }

      while (BYTE1(v84) != 1);
    }

    (*(v75 + 8))(v82, v52);
    *&v84 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD018, &qword_1BC764A78);
    sub_1BC633C54(&qword_1EBCDD020, &qword_1EBCDD018, &qword_1BC764A78, MEMORY[0x1E69E6310]);
    v44 = sub_1BC75BA90();
    v45 = v54;

    v38 = v71;
    v27 = v79;
  }

  *&v84 = v44;
  *(&v84 + 1) = v45;
  v86 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE78, &qword_1BC7649F0);
  sub_1BC6C0FA8(&qword_1EBCDCE80, &qword_1EBCDCE78, &qword_1BC7649F0, MEMORY[0x1E69E6160]);
  v55 = v72;
  v56 = v83;
  sub_1BC75C560();
  if (v56)
  {
    (*(v81 + 8))(v38, v55);
  }

  else
  {

    v57 = v73;
    v84 = *(v73 + v27[10]);
    v86 = 3;
    sub_1BC75C560();
    v58 = (v57 + v27[12]);
    v59 = *v58;
    LOBYTE(v58) = *(v58 + 8);
    *&v84 = v59;
    BYTE8(v84) = v58;
    v86 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD000, &qword_1BC764A70);
    sub_1BC6C0FA8(&qword_1EBCDD008, &qword_1EBCDD000, &qword_1BC764A70, MEMORY[0x1E69E6538]);
    sub_1BC75C560();
    return (*(v81 + 8))(v38, v55);
  }
}

unint64_t sub_1BC6B40B4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 7107189;
    v6 = 0x76697469736E6573;
    if (a1 != 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x65707954697475;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4955557465737361;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x664F7265626D756ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 25705;
    if (a1 != 4)
    {
      v3 = 0x363532616873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BC6B41E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6C10B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6B4218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1010(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B4254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1010(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t Report.Media.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD038, &qword_1BC764A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1010(v9, v10, v11);
  sub_1BC75C740();
  LOBYTE(v20) = 0;
  sub_1BC759800();
  sub_1BC6BDE8C(&qword_1EBCDD040, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1BC75C560();
  if (!v2)
  {
    v19 = type metadata accessor for Report.Media(0);
    LOBYTE(v20) = 1;
    sub_1BC759B50();
    sub_1BC6BDE8C(&qword_1EBCDD048, MEMORY[0x1E69E8450], MEMORY[0x1E69E8458]);
    sub_1BC75C560();
    LOBYTE(v20) = 2;
    sub_1BC75A050();
    sub_1BC6BDE8C(&qword_1EBCDD050, MEMORY[0x1E697B600], MEMORY[0x1E697B608]);
    sub_1BC75C520();
    LOBYTE(v20) = 3;
    sub_1BC75C540();
    LOBYTE(v20) = 4;
    sub_1BC75C530();
    v12 = (v3 + *(v19 + 36));
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    v22 = 5;
    v14 = sub_1BC6AE07C(v20, v13);
    sub_1BC6BE000(v14, v15, v16);
    sub_1BC75C520();
    sub_1BC6AE12C(v20, v21);
    LOBYTE(v20) = 6;
    sub_1BC75C500();
    LOBYTE(v20) = 7;
    sub_1BC75C520();
    LOBYTE(v20) = 8;
    sub_1BC75C510();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Report.Media.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v52 - v6;
  v7 = sub_1BC759B50();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759800();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD058, &qword_1BC764A90);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v52 - v14;
  v16 = type metadata accessor for Report.Media(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[*(v17 + 36)];
  v64 = v19;
  v65 = v20;
  *v20 = xmmword_1BC7649C0;
  v21 = *(v11 + 56);
  v66 = *(v17 + 44);
  v21(&v19[v66], 1, 1, v10);
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1010(v22, v23, v24);
  v62 = v15;
  v25 = v63;
  sub_1BC75C730();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v64;
    sub_1BC6AE12C(*v65, *(v65 + 1));

    return sub_1BC66008C(&v28[v66], &qword_1EBCDC6D0, &qword_1BC761EF0);
  }

  else
  {
    v53 = v16;
    v63 = v11;
    LOBYTE(v67) = 0;
    v26 = sub_1BC6BDE8C(&qword_1EBCDD060, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v27 = v59;
    sub_1BC75C4C0();
    v52[1] = v26;
    v29 = v64;
    v30 = *(v63 + 32);
    v59 = v10;
    v30(v64, v27, v10);
    LOBYTE(v67) = 1;
    sub_1BC6BDE8C(&qword_1EBCDD068, MEMORY[0x1E69E8450], MEMORY[0x1E69E8470]);
    v31 = v58;
    sub_1BC75C4C0();
    v32 = v53;
    (*(v57 + 32))(v29 + *(v53 + 20), v9, v31);
    sub_1BC75A050();
    LOBYTE(v67) = 2;
    sub_1BC6BDE8C(&qword_1EBCDD070, MEMORY[0x1E697B600], MEMORY[0x1E697B618]);
    v33 = v56;
    v52[0] = 0;
    sub_1BC75C490();
    sub_1BC65FFBC(v33, v29 + v32[6], &qword_1EBCDCFE0, &unk_1BC76D070);
    LOBYTE(v67) = 3;
    v34 = sub_1BC75C4B0();
    v35 = v65;
    v36 = v32;
    *(v29 + v32[7]) = v34 & 1;
    LOBYTE(v67) = 4;
    v37 = v61;
    v38 = sub_1BC75C4A0();
    v39 = (v29 + v36[8]);
    *v39 = v38;
    v39[1] = v40;
    v69 = 5;
    sub_1BC6BFB98(v38, v40, v41);
    sub_1BC75C490();
    v42 = v67;
    v43 = v68;
    sub_1BC6AE12C(*v35, *(v35 + 1));
    *v35 = v42;
    *(v35 + 1) = v43;
    LOBYTE(v67) = 6;
    v44 = sub_1BC75C470();
    v45 = (v29 + v36[10]);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v67) = 7;
    v47 = v55;
    sub_1BC75C490();
    sub_1BC6C0EE4(v47, v29 + v66);
    LOBYTE(v67) = 8;
    v48 = sub_1BC75C480();
    LOBYTE(v35) = v49;
    v50 = v29 + v36[12];
    (*(v60 + 8))(v62, v37);
    *v50 = v48;
    *(v50 + 8) = v35 & 1;
    sub_1BC6BDCF4(v29, v54, type metadata accessor for Report.Media);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BC6BF988(v29, type metadata accessor for Report.Media);
  }
}

uint64_t sub_1BC6B4FA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1BC6B4FB8()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x6574617473;
  v4 = 0x7972746E756F63;
  if (v1 != 3)
  {
    v4 = 0x6F436C6174736F70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC6B504C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC6C13B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6B5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1064(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B50B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1064(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B50EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD078, &qword_1BC764A98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1064(v7, v8, v9);
  sub_1BC75C740();
  v11[15] = 0;
  sub_1BC75C500();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_1BC75C500();
  v11[13] = 2;
  sub_1BC75C500();
  v11[12] = 3;
  sub_1BC75C500();
  v11[11] = 4;
  sub_1BC75C500();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_1BC6B52CC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1BC6C1564(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1BC6B5330(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1BC6BE5CC(v8, v9) & 1;
}

uint64_t sub_1BC6B538C()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1BC6B53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_1BC75C5E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BC6B54BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1940(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1940(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B5534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD080, &qword_1BC764AA0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1940(v11, v12, v13);
  sub_1BC75C740();
  v17 = 0;
  sub_1BC75C500();
  if (!v5)
  {
    v16 = 1;
    sub_1BC75C500();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BC6B56C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1BC6C1994(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1BC6B5718(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1BC75C5E0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BC6B57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for CloudKitReport(0);
  v9 = *(v8 + 20);
  v10 = sub_1BC759800();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_1BC6B5B8C()
{
  v1 = type metadata accessor for Report.Evidence(0);
  v3 = *(v0 + *(v1 + 64));

  MEMORY[0x1BFB267E0](32, 0xE100000000000000);
  MEMORY[0x1BFB267E0](*(v0 + *(v1 + 68)), *(v0 + *(v1 + 68) + 8));
  return v3;
}

uint64_t sub_1BC6B5C04()
{
  v1 = v0;
  v2 = sub_1BC759910();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = *sub_1BC750224();
  sub_1BC660024(v1, v8, &qword_1EBCDCE20, &qword_1BC7649D0);
  v10 = (*(v3 + 48))(v8, 1, v2);
  result = 0;
  if (v10 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = v9;
    v13 = sub_1BC7598C0();
    v14 = [v12 stringFromDate_];

    v15 = sub_1BC75BB60();
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  return result;
}

uint64_t sub_1BC6B5DE8()
{
  v1 = type metadata accessor for Report.Evidence(0);
  result = 0;
  if (!*(v0 + *(v1 + 60)))
  {
    if (*(v0 + *(v1 + 72)))
    {
      return 5459283;
    }

    else
    {
      return 0x6567617373654D69;
    }
  }

  return result;
}

uint64_t sub_1BC6B5E58@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for Report.Evidence(0);
  if (*(v1 + *(result + 60)))
  {
    goto LABEL_2;
  }

  v4 = *(v1 + *(result + 72));
  if ((v4 & 2) != 0)
  {
    v5 = 0x48435F50554F5247;
    v6 = 0xEA00000000005441;
  }

  else
  {
    if ((v4 & 4) == 0)
    {
LABEL_2:
      *a1 = 0;
      a1[1] = 0;
      return result;
    }

    v5 = 0x4F4F525F54414843;
    v6 = 0xE90000000000004DLL;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v5).localized._countAndFlagsBits;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

BOOL sub_1BC6B5EF4(uint64_t a1)
{
  v3 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6BDCF4(a1, v5, type metadata accessor for Report.Authority);
  v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v7 = 1;
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
  {
    v8 = type metadata accessor for Report.Evidence(0);
    v9 = (v1 + v8[6]);
    v10 = v9[5];
    if (!v10)
    {
      goto LABEL_18;
    }

    if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v9[4] & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    v12 = v9[9];
    if (!v12)
    {
      goto LABEL_18;
    }

    if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : v9[8] & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    v14 = v9[7];
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v9[6] & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    if (v15)
    {
      if (*(v1 + v8[10]) == 1)
      {
        v7 = *(v1 + v8[11]) != 8;
      }
    }

    else
    {
LABEL_18:
      v7 = 0;
    }

    sub_1BC6BF988(v5, type metadata accessor for Report.Authority);
  }

  return v7;
}

uint64_t SCUIReportingApplication.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x656D695465636146;
    }

    if (a1 == 3)
    {
      return 0x73746361746E6F43;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x736567617373654DLL;
    }

    if (a1 == 1)
    {
      return 0x706F7244726941;
    }
  }

  sub_1BC75C290();

  v2 = sub_1BC75C590();
  MEMORY[0x1BFB267E0](v2);

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC6B61C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = 0x454D495445434146;
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v3 = 0x53544341544E4F43;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      v3 = 0x534547415353454DLL;
LABEL_10:
      v4 = 0xE800000000000000;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v3 = 0x504F5244524941;
      v4 = 0xE700000000000000;
LABEL_11:
      result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
      *a2 = v7;
      a2[1] = v8;
      return result;
    }
  }

  sub_1BC75C290();

  v6 = sub_1BC75C590();
  MEMORY[0x1BFB267E0](v6);

  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t sub_1BC6B6320@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[1];
  if (v7)
  {
    v8 = *v2;
    v9 = v7;
LABEL_5:

    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
    v11._countAndFlagsBits = v8;
    v11._object = v9;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

    v12._countAndFlagsBits = 1431263520;
    v12._object = 0xE400000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    return SCLocalizedStringKey.init(stringInterpolation:)(v6, a1);
  }

  v9 = v2[5];
  if (v9)
  {
    v8 = v2[4];

    goto LABEL_5;
  }

  v14 = 5590873;
  v15 = 0xE300000000000000;

  return SCLocalizedStringKey.init(stringLiteral:)(*&v14).localized._countAndFlagsBits;
}

uint64_t sub_1BC6B6444@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  object = v2[5]._object;
  v8 = v2[4]._object;
  if (!v2[3]._object)
  {
    if (v8)
    {
      if (!object)
      {
        v10 = 0x554E5F454E4F4850;
        v9 = 0xEC0000005245424DLL;
        goto LABEL_17;
      }

      v11 = 0x5F454E4F4850;
      goto LABEL_10;
    }

    if (!object)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
      SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2[1]);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
      return SCLocalizedStringKey.init(stringInterpolation:)(v6, a1);
    }

    v10 = 0x525F454349564544;
    v12 = 0x4E4F494745;
LABEL_16:
    v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    goto LABEL_17;
  }

  if (!v8)
  {
    if (object)
    {
      v11 = 0x5F4C49414D45;
LABEL_10:
      v10 = v11 & 0xFFFFFFFFFFFFLL | 0x4552000000000000;
      v9 = 0xEC0000004E4F4947;
      goto LABEL_17;
    }

    v10 = 0x44415F4C49414D45;
    v12 = 0x5353455244;
    goto LABEL_16;
  }

  if (object)
  {
    v9 = 0x80000001BC772A80;
    v10 = 0xD000000000000012;
  }

  else
  {
    v10 = 0x4D455F454E4F4850;
    v9 = 0xEB000000004C4941;
  }

LABEL_17:

  return SCLocalizedStringKey.init(stringLiteral:)(*&v10).localized._countAndFlagsBits;
}

char *sub_1BC6B6614()
{
  v1 = v0;
  v2 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  if (!v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v22 = v1[7];
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_12:
    v34 = v1[6];
    v35._countAndFlagsBits = 0x44415F4C49414D45;
    v35._object = 0xED00005353455244;
    SCLocalizedStringKey.init(stringLiteral:)(v35);
    v36 = v51;
    v37 = v52;
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    v39._countAndFlagsBits = v34;
    v39._object = v22;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
    SCLocalizedStringKey.init(stringInterpolation:)(v4, &v49);
    v41 = v49;
    v42 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1BC6BB130(0, *(v18 + 2) + 1, 1, v18);
    }

    v44 = *(v18 + 2);
    v43 = *(v18 + 3);
    if (v44 >= v43 >> 1)
    {
      v18 = sub_1BC6BB130((v43 > 1), v44 + 1, 1, v18);
    }

    *(v18 + 2) = v44 + 1;
    v45 = &v18[32 * v44];
    *(v45 + 4) = v36;
    *(v45 + 5) = v37;
    *(v45 + 6) = v41;
    *(v45 + 7) = v42;
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  v48 = v1[11];
  v8 = v6;
  v9 = v1[8];
  v10._countAndFlagsBits = 0x554E5F454E4F4850;
  v10._object = 0xEC0000005245424DLL;
  SCLocalizedStringKey.init(stringLiteral:)(v10);
  v11 = v51;
  v12 = v52;
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = v9;
  v14._object = v7;
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  SCLocalizedStringKey.init(stringInterpolation:)(v4, &v49);
  v16 = v49;
  v17 = v50;
  v18 = sub_1BC6BB130(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1BC6BB130((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[32 * v20];
  *(v21 + 4) = v11;
  *(v21 + 5) = v12;
  *(v21 + 6) = v16;
  *(v21 + 7) = v17;
  v6 = v8;
  v5 = v48;
  v22 = v1[7];
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v5)
  {
LABEL_6:
    v23._countAndFlagsBits = 0x525F454349564544;
    v23._object = 0xED00004E4F494745;
    SCLocalizedStringKey.init(stringLiteral:)(v23);
    v24 = v51;
    v25 = v52;
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    v27._countAndFlagsBits = v6;
    v27._object = v5;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
    SCLocalizedStringKey.init(stringInterpolation:)(v4, &v49);
    v29 = v49;
    v30 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1BC6BB130(0, *(v18 + 2) + 1, 1, v18);
    }

    v32 = *(v18 + 2);
    v31 = *(v18 + 3);
    if (v32 >= v31 >> 1)
    {
      v18 = sub_1BC6BB130((v31 > 1), v32 + 1, 1, v18);
    }

    *(v18 + 2) = v32 + 1;
    v33 = &v18[32 * v32];
    *(v33 + 4) = v24;
    *(v33 + 5) = v25;
    *(v33 + 6) = v29;
    *(v33 + 7) = v30;
    return v18;
  }

LABEL_17:
  if (!*(v18 + 2))
  {

    return 0;
  }

  return v18;
}

uint64_t sub_1BC6B6980@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = v2[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    v12 = v8;
    v13 = v9;
LABEL_5:
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v12);
    v14._countAndFlagsBits = 0x5245444E455320;
    v14._object = 0xE700000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    result = SCLocalizedStringKey.init(stringInterpolation:)(v7, v20);
    v15 = v20[1];
    *a1 = v20[0];
    a1[1] = v15;
    return result;
  }

  v16 = v2[5];
  if (v16)
  {
    v17 = v2[4];
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
      v12 = v17;
      v13 = v16;
      goto LABEL_5;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_1BC6B6ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6B6980(&v16);
  v7 = v17;
  if (v17)
  {
    v8 = &v16;
  }

  else
  {
    v8 = &v18;
    v9._countAndFlagsBits = 0x5245444E4553;
    v9._object = 0xE600000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v9);
    v7 = v19;
  }

  v10 = *v8;
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2[1]);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  result = SCLocalizedStringKey.init(stringInterpolation:)(v6, &v16);
  v14 = v16;
  v15 = v17;
  *a1 = v10;
  a1[1] = v7;
  a1[2] = v14;
  a1[3] = v15;
  return result;
}

uint64_t sub_1BC6B6BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v4 = 0x80000001BC772AA0;
    v3 = 0xD000000000000015;
  }

  else if (a1)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xD000000000000016;
    v4 = 0x80000001BC772AC0;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BC6B6C54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v4 = 0x80000001BC772AE0;
    v3 = 0xD000000000000016;
  }

  else if (a1)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xD000000000000017;
    v4 = 0x80000001BC772B00;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BC6B6CE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v4 = 0x80000001BC772B20;
    v3 = 0xD000000000000018;
  }

  else if (a1)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xD000000000000019;
    v4 = 0x80000001BC772B40;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BC6B6D74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = "ADULT_APPLE_ADULTS_WILL_REVIEW";
LABEL_7:
    v5 = (v3 - 32) | 0x8000000000000000;
    v4 = 0xD00000000000001ELL;
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      v4 = 0;
      v5 = 0xE000000000000000;
      goto LABEL_9;
    }

    v3 = "CHILD_APPLE_ADULTS_WILL_REVIEW";
    goto LABEL_7;
  }

  v4 = 0xD00000000000001DLL;
  v5 = 0x80000001BC772B80;
LABEL_9:
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v4).localized._countAndFlagsBits;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_1BC6B6E18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = "ADULT_APPLE_WILL_TALK_TO_ADULT_POLICE";
LABEL_7:
    v5 = (v3 - 32) | 0x8000000000000000;
    v4 = 0xD000000000000025;
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      v4 = 0;
      v5 = 0xE000000000000000;
      goto LABEL_9;
    }

    v3 = "CHILD_APPLE_WILL_TALK_TO_ADULT_POLICE";
    goto LABEL_7;
  }

  v4 = 0xD000000000000024;
  v5 = 0x80000001BC772BF0;
LABEL_9:
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v4).localized._countAndFlagsBits;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_1BC6B6EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    v4 = 0x80000001BC772C50;
    v3 = 0xD000000000000011;
  }

  else if (a1 == 1)
  {
    v3 = 0xD00000000000001DLL;
    v4 = 0x80000001BC772C70;
  }

  else if (a1)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xD00000000000001ELL;
    v4 = 0x80000001BC772C90;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BC6B6F78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      v3 = 0;
      v4 = 0xE000000000000000;
    }

    else
    {
      v3 = 0x4D4255535F534559;
      v4 = 0xEA00000000005449;
    }
  }

  else
  {
    v3 = 0x54494D425553;
    v4 = 0xE600000000000000;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v3).localized._countAndFlagsBits;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1BC6B7000@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5._countAndFlagsBits = 0x5F544E4F445F4F4ELL;
    v5._object = 0xEE0054494D425553;
    result = SCLocalizedStringKey.init(stringLiteral:)(v5).localized._countAndFlagsBits;
    v3 = v6;
    v4 = v7;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

id sub_1BC6B7068()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  qword_1EBCE6958 = result;
  return result;
}

id sub_1BC6B709C()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  qword_1EBCE6968 = result;
  return result;
}

uint64_t sub_1BC6B70D0@<X0>(uint64_t *a1@<X8>)
{
  v110 = a1;
  v2 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v109 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1BC759B50();
  v112 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Report.Media(0);
  v5 = *(v121 - 8);
  v6 = MEMORY[0x1EEE9AC00](v121);
  v116 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v113 = &v106 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v118 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v106 - v12;
  v13 = type metadata accessor for Report.Message(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v115 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v106 - v17;
  result = type metadata accessor for Report.Evidence(0);
  v20 = *(v1 + *(result + 48));
  v21 = *(v20 + 16);
  v107 = v13;
  v108 = v14;
  v111 = v20;
  if (v21)
  {
    v117 = *(v13 + 32);
    v22 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23 = *(v14 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1BC6BDCF4(v22, v18, type metadata accessor for Report.Message);
      v25 = *&v18[v117];

      result = sub_1BC6BF988(v18, type metadata accessor for Report.Message);
      v26 = *(v25 + 16);
      v27 = v24[2];
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_75;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v28 <= v24[3] >> 1)
      {
        if (!*(v25 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v29 = v27 + v26;
        }

        else
        {
          v29 = v27;
        }

        result = sub_1BC6BAE4C(result, v29, 1, v24);
        v24 = result;
        if (!*(v25 + 16))
        {
LABEL_3:

          if (v26)
          {
            goto LABEL_76;
          }

          goto LABEL_4;
        }
      }

      if ((v24[3] >> 1) - v24[2] < v26)
      {
        goto LABEL_80;
      }

      swift_arrayInitWithCopy();

      if (v26)
      {
        v30 = v24[2];
        v31 = __OFADD__(v30, v26);
        v32 = v30 + v26;
        if (v31)
        {
          goto LABEL_82;
        }

        v24[2] = v32;
      }

LABEL_4:
      v22 += v23;
      if (!--v21)
      {
        goto LABEL_19;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v117 = v24[2];
  if (v117)
  {
    v33 = 0;
    v34 = (v112 + 8);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v114;
    while (v33 < v24[2])
    {
      v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v38 = *(v5 + 72);
      sub_1BC6BDCF4(v24 + v37 + v38 * v33, v36, type metadata accessor for Report.Media);
      v39 = v119;
      sub_1BC759B20();
      v40 = sub_1BC759B40();
      (*v34)(v39, v120);
      if (v40)
      {
        sub_1BC6C1B80(v36, v118, type metadata accessor for Report.Media);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6BB3E4(0, *(v35 + 16) + 1, 1);
          v35 = v122;
        }

        v43 = *(v35 + 16);
        v42 = *(v35 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1BC6BB3E4((v42 > 1), v43 + 1, 1);
          v35 = v122;
        }

        *(v35 + 16) = v43 + 1;
        result = sub_1BC6C1B80(v118, v35 + v37 + v43 * v38, type metadata accessor for Report.Media);
        v36 = v114;
      }

      else
      {
        result = sub_1BC6BF988(v36, type metadata accessor for Report.Media);
      }

      if (v117 == ++v33)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v117 = *(v35 + 16);

  v44 = *(v111 + 16);
  if (v44)
  {
    v45 = *(v107 + 32);
    v46 = v111 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v47 = *(v108 + 72);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v49 = v115;
      sub_1BC6BDCF4(v46, v115, type metadata accessor for Report.Message);
      v50 = *(v49 + v45);

      result = sub_1BC6BF988(v49, type metadata accessor for Report.Message);
      v51 = *(v50 + 16);
      v52 = v48[2];
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_78;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v53 <= v48[3] >> 1)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v54 = v52 + v51;
        }

        else
        {
          v54 = v52;
        }

        result = sub_1BC6BAE4C(result, v54, 1, v48);
        v48 = result;
        if (!*(v50 + 16))
        {
LABEL_33:

          if (v51)
          {
            goto LABEL_79;
          }

          goto LABEL_34;
        }
      }

      if ((v48[3] >> 1) - v48[2] < v51)
      {
        goto LABEL_81;
      }

      swift_arrayInitWithCopy();

      if (v51)
      {
        v55 = v48[2];
        v31 = __OFADD__(v55, v51);
        v56 = v55 + v51;
        if (v31)
        {
          goto LABEL_83;
        }

        v48[2] = v56;
      }

LABEL_34:
      v46 += v47;
      if (!--v44)
      {
        goto LABEL_49;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_49:
  v118 = v48[2];
  if (!v118)
  {
    v60 = MEMORY[0x1E69E7CC0];
LABEL_61:

    v68 = *(v60 + 16);

    v69 = v117;
    v70 = v109;
    if (v117 == 1)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
      v122 = 1;
      v75 = sub_1BC6C1BE8(v72, v73, v74);
      SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v122, MEMORY[0x1E69E6530], v75);
      v76 = 0x4F544F485020;
      v77 = 0xE600000000000000;
    }

    else
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
      v122 = v69;
      v82 = sub_1BC6C1BE8(v79, v80, v81);
      SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v122, MEMORY[0x1E69E6530], v82);
      v76 = 0x534F544F485020;
      v77 = 0xE700000000000000;
    }

    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v76);
    SCLocalizedStringKey.init(stringInterpolation:)(v70, &v122);
    v84 = v122;
    v83 = v123;
    v85 = v110;
    if (v68 == 1)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v86);
      v122 = 1;
      v90 = sub_1BC6C1BE8(v87, v88, v89);
      SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v122, MEMORY[0x1E69E6530], v90);
      v91._countAndFlagsBits = 0x4F4544495620;
      v91._object = 0xE600000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v91);
      SCLocalizedStringKey.init(stringInterpolation:)(v70, &v122);
      v93 = v122;
      v92 = v123;
      if (!v69)
      {
        goto LABEL_71;
      }
    }

    else
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v94);
      v122 = v68;
      v98 = sub_1BC6C1BE8(v95, v96, v97);
      SCLocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(&v122, MEMORY[0x1E69E6530], v98);
      v99._countAndFlagsBits = 0x534F4544495620;
      v99._object = 0xE700000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v99);
      SCLocalizedStringKey.init(stringInterpolation:)(v70, &v122);
      v93 = v122;
      v92 = v123;
      if (!v69)
      {
        if (!v68)
        {

          v105._countAndFlagsBits = 0;
          v105._object = 0xE000000000000000;
          return SCLocalizedStringKey.init(stringLiteral:)(v105).localized._countAndFlagsBits;
        }

LABEL_71:

        *v85 = v93;
        v85[1] = v92;
        return result;
      }

      if (!v68)
      {

        *v85 = v84;
        v85[1] = v83;
        return result;
      }
    }

    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v100);
    v122 = v84;
    v123 = v83;
    v101.localized._countAndFlagsBits = &v122;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v101);

    v102._countAndFlagsBits = 8236;
    v102._object = 0xE200000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v102);
    v122 = v93;
    v123 = v92;
    v103.localized._countAndFlagsBits = &v122;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v103);

    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v104);
    return SCLocalizedStringKey.init(stringInterpolation:)(v70, v85);
  }

  v57 = 0;
  v58 = v113;
  v59 = (v112 + 8);
  v60 = MEMORY[0x1E69E7CC0];
  while (v57 < v48[2])
  {
    v61 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v62 = *(v5 + 72);
    sub_1BC6BDCF4(v48 + v61 + v62 * v57, v58, type metadata accessor for Report.Media);
    v63 = v119;
    sub_1BC759B30();
    v64 = sub_1BC759B40();
    (*v59)(v63, v120);
    if (v64)
    {
      sub_1BC6C1B80(v58, v116, type metadata accessor for Report.Media);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v60;
      if ((v65 & 1) == 0)
      {
        sub_1BC6BB3E4(0, *(v60 + 16) + 1, 1);
        v60 = v122;
      }

      v67 = *(v60 + 16);
      v66 = *(v60 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1BC6BB3E4((v66 > 1), v67 + 1, 1);
        v60 = v122;
      }

      *(v60 + 16) = v67 + 1;
      result = sub_1BC6C1B80(v116, v60 + v61 + v67 * v62, type metadata accessor for Report.Media);
      v58 = v113;
    }

    else
    {
      result = sub_1BC6BF988(v58, type metadata accessor for Report.Media);
    }

    if (v118 == ++v57)
    {
      goto LABEL_61;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1BC6B7BDC(void (*a1)(uint64_t))
{
  v2 = sub_1BC759B50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  LOBYTE(a1) = sub_1BC759B40();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t sub_1BC6B7CBC@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x534547415353454DLL;
  v5._object = 0xEE0020485449575FLL;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  v6 = *(v1 + *(type metadata accessor for Report.Evidence(0) + 28));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BC6BB404(0, v7, 0);
    v8 = v30;
    v9 = *(v30 + 2);
    v10 = 16 * v9;
    v11 = (v6 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v30 = v8;
      v14 = *(v8 + 3);

      if (v9 >= v14 >> 1)
      {
        sub_1BC6BB404((v14 > 1), v9 + 1, 1);
        v8 = v30;
      }

      *(v8 + 2) = v9 + 1;
      v15 = &v8[v10];
      *(v15 + 4) = v13;
      *(v15 + 5) = v12;
      v10 += 16;
      v11 += 21;
      ++v9;
      --v7;
    }

    while (v7);
  }

  v16 = sub_1BC6C1C3C(v8);

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_1BC6BB340(*(v16 + 16), 0);
    v19 = sub_1BC6BCE0C(&v30, v18 + 4, v17, v16);
    v20 = v30;

    sub_1BC639AFC(v20);
    if (v19 == v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v30 = v18;
  sub_1BC6BB984(&v30);

  v21 = *(v30 + 2);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = *(v30 + 4);
      v23 = *(v30 + 5);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD018, &qword_1BC764A78);
      sub_1BC633C54(&qword_1EBCDD020, &qword_1EBCDD018, &qword_1BC764A78, MEMORY[0x1E69E6310]);
      v22 = sub_1BC75BA90();
      v23 = v24;
    }
  }

  else
  {

    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v25._countAndFlagsBits = v22;
  v25._object = v23;
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  return SCLocalizedStringKey.init(stringInterpolation:)(v4, v29);
}

uint64_t sub_1BC6B7FC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759600();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v96 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759A10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759910();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v95 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = v86 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v86 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v99 = v86 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v86 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v86 - v24;
  v26 = *(v1 + *(type metadata accessor for Report.Evidence(0) + 48));
  if (*(v26 + 16))
  {
    v90 = v8;
    v91 = v18;
    v88 = v7;
    v92 = a1;
    v87 = *(type metadata accessor for Report.Message(0) - 8);
    v27 = v26 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v29 = v11 + 16;
    v28 = *(v11 + 16);
    v28(v23, v27, v10);
    v30 = v11;
    v31 = *(v11 + 32);
    v31(v25, v23, v10);
    v32 = *(v26 + 16);
    if (!v32)
    {
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(v53);
      return (*(v11 + 8))(v25, v10);
    }

    v33 = v27 + *(v87 + 9) * (v32 - 1);
    v34 = v91;
    v87 = v28;
    v28(v91, v33, v10);
    v35 = v99;
    v91 = v10;
    v31(v99, v34, v10);
    v36 = v35;
    v37 = v93;
    sub_1BC759A00();
    v38 = sub_1BC7599F0();
    v86[0] = v30;
    v86[1] = v29;
    v39 = v25;
    v40 = v90;
    if (v38)
    {
      if (qword_1EBCE6950 != -1)
      {
        swift_once();
      }

      v41 = qword_1EBCE6958;
      [qword_1EBCE6958 setTimeStyle_];
      [v41 setDateStyle_];
      v42 = v91;
      v43 = v87;
      v87(v94, v36, v91);
      v43(v95, v25, v42);
      v44 = v96;
      sub_1BC7595F0();
      v45 = sub_1BC7595E0();
      (*(v97 + 8))(v44, v98);
      v46 = [v41 stringFromDateInterval_];

      if (v46)
      {
        v47 = sub_1BC75BB60();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0xE000000000000000;
      }

      v54._countAndFlagsBits = v47;
      v54._object = v49;
      SCLocalizedStringKey.init(rawValue:)(v54);
      v55 = v101;
      v39 = v25;
      if (v101)
      {
        v56 = &v100;
      }

      else
      {
        v56 = &v102;
        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        SCLocalizedStringKey.init(stringLiteral:)(v57);
        v55 = v103;
      }

      v58 = *v56;
      if (sub_1BC7599D0())
      {
        v59 = v89;
        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v60 = 0x202C5941444F54;
        v61 = 0xE700000000000000;
LABEL_20:
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v60);
        v102 = v58;
        v103 = v55;
        v62.localized._countAndFlagsBits = &v102;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v62);

        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
        SCLocalizedStringKey.init(stringInterpolation:)(v59, v92);
        (*(v90 + 8))(v37, v88);
        v64 = *(v86[0] + 8);
        v65 = v91;
        v64(v36, v91);
        return (v64)(v25, v65);
      }

      if (sub_1BC7599E0())
      {
        v59 = v89;
        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v60 = 0x4144524554534559;
        v61 = 0xEB00000000202C59;
        goto LABEL_20;
      }

      v40 = v90;
    }

    if (qword_1EBCE6960 != -1)
    {
      swift_once();
    }

    v66 = qword_1EBCE6968;
    [qword_1EBCE6968 setTimeStyle_];
    [v66 setDateStyle_];
    v67 = v91;
    v68 = v87;
    v87(v94, v36, v91);
    v68(v95, v39, v67);
    v69 = v96;
    sub_1BC7595F0();
    v70 = sub_1BC7595E0();
    (*(v97 + 8))(v69, v98);
    v71 = [v66 stringFromDateInterval_];

    if (v71)
    {
      v72 = sub_1BC75BB60();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0xE000000000000000;
    }

    v75._countAndFlagsBits = v72;
    v75._object = v74;
    v105 = SCLocalizedStringKey.init(rawValue:)(v75);
    v76 = v103;
    v77 = (v40 + 8);
    v78 = (v86[0] + 8);
    if (v103)
    {
      v79 = v102;
      (*v77)(v37, v88, *&v105.is_nil);
      v80 = *v78;
      v81 = v91;
      (*v78)(v99, v91);
      result = (v80)(v39, v81);
      v82 = v92;
      *v92 = v79;
      v82[1] = v76;
    }

    else
    {
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(v83);
      (*v77)(v37, v88);
      v84 = *v78;
      v85 = v91;
      (*v78)(v99, v91);
      return (v84)(v39, v85);
    }
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;

    return SCLocalizedStringKey.init(stringLiteral:)(*&v50).localized._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_1BC6B8860@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(type metadata accessor for Report.Evidence(0) + 28));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1BC6BB404(0, v7, 0);
    v8 = v51[0];
    v9 = (v6 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v51[0] = v8;
      v13 = *(v8 + 2);
      v12 = *(v8 + 3);

      if (v13 >= v12 >> 1)
      {
        sub_1BC6BB404((v12 > 1), v13 + 1, 1);
        v8 = v51[0];
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v9 += 21;
      --v7;
    }

    while (v7);
  }

  v15 = sub_1BC6C1C3C(v8);

  v16 = *(v15 + 16);
  if (v16)
  {
    v49 = v5;
    v17 = sub_1BC6BB340(v16, 0);
    v18 = sub_1BC6BCE0C(v51, v17 + 4, v16, v15);
    v19 = v51[0];

    sub_1BC639AFC(v19);
    if (v18 != v16)
    {
      __break(1u);
      goto LABEL_29;
    }

    v5 = v49;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v51[0] = v17;
  sub_1BC6BB984(v51);

  v20 = v51[0];
  v21 = *(v51[0] + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v20;
  if (!isUniquelyReferenced_nonNull_native || (v17 = v20, v21 >= *(v20 + 3) >> 1))
  {
    v17 = sub_1BC6BB024(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v20);
    v50 = v17;
  }

  sub_1BC6C1CD4(0, 0, 1, 7696217, 0xE300000000000000);
  v23 = *(v20 + 2);
  if (v23)
  {
    if (v23 != 1)
    {
      v36 = (v17 + 16);
      v35 = *(v17 + 2);
      v51[0] = v17;
      v51[1] = v17 + 32;
      if (v35 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * v35 - 1;
      }

      v51[2] = 0;
      v51[3] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD090, &qword_1BC764AA8);
      sub_1BC633C54(&qword_1EBCDD098, &qword_1EBCDD090, &qword_1BC764AA8, MEMORY[0x1E69E6958]);
      v38 = sub_1BC75BA90();
      v40 = v39;
      swift_unknownObjectRelease();
      v41 = *v36;

      if (v41)
      {
        if (v41 <= *v36)
        {
          v42 = &v36[2 * v41];
          v43 = *v42;
          v44 = v42[1];

          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v45._countAndFlagsBits = 0;
          v45._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
          v46._countAndFlagsBits = v38;
          v46._object = v40;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v46);

          v47._countAndFlagsBits = 0x20646E61202CLL;
          v47._object = 0xE600000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v47);
          v31 = v43;
          v32 = v44;
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
    if (*(v17 + 2))
    {
      v25 = *(v17 + 4);
      v26 = *(v17 + 5);

      v27._countAndFlagsBits = v25;
      v27._object = v26;
      SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);

      v28._countAndFlagsBits = 0x20646E6120;
      v28._object = 0xE500000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
      if (*(v17 + 2) >= 2uLL)
      {
        v29 = *(v17 + 6);
        v30 = *(v17 + 7);

        v31 = v29;
        v32 = v30;
LABEL_27:
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*&v31);

        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
        SCLocalizedStringKey.init(stringInterpolation:)(v5, a1);
      }

      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
    return result;
  }

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v33);
}

uint64_t sub_1BC6B8CF4()
{
  v1 = (v0 + *(type metadata accessor for Report.Message(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return String.removingAccountIDPrefix.getter(v2, v3);
}

uint64_t sub_1BC6B8D2C()
{
  v34 = sub_1BC759800();
  v1 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Report.Media(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Report.Message(0);
  v8 = *(v7 + 32);
  v9 = (v0 + *(v7 + 28));
  v11 = *v9;
  v10 = v9[1];
  v36 = 32;
  v37 = 0xE100000000000000;
  v12 = *(v0 + v8);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v30 = v11;
    v31 = v10;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1BC6BB404(0, v13, 0);
    v14 = v35;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v32 = *(v4 + 72);
    v16 = (v1 + 8);
    do
    {
      sub_1BC6BDCF4(v15, v6, type metadata accessor for Report.Media);
      v17 = v33;
      sub_1BC759780();
      v18 = sub_1BC759760();
      v20 = v19;
      (*v16)(v17, v34);
      sub_1BC6BF988(v6, type metadata accessor for Report.Media);
      v35 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BC6BB404((v21 > 1), v22 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v32;
      --v13;
    }

    while (v13);
    v11 = v30;
    v10 = v31;
  }

  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD018, &qword_1BC764A78);
  sub_1BC633C54(&qword_1EBCDD020, &qword_1EBCDD018, &qword_1BC764A78, MEMORY[0x1E69E6310]);
  v24 = sub_1BC75BA90();
  v26 = v25;

  MEMORY[0x1BFB267E0](v24, v26);

  v27 = v36;
  v28 = v37;
  v36 = v11;
  v37 = v10;

  MEMORY[0x1BFB267E0](v27, v28);

  return v36;
}

uint64_t sub_1BC6B906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1BC759B50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759B20();
  v12 = sub_1BC759B40();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    v14 = a1;
LABEL_5:
    v17 = a2;
    result = SCLocalizedStringKey.init(stringLiteral:)(*&v14).localized._countAndFlagsBits;
    v18 = v19[1];
    *a4 = v19[0];
    a4[1] = v18;
    return result;
  }

  sub_1BC759B30();
  v15 = sub_1BC759B40();
  result = (v13)(v11, v8);
  if (v15)
  {
    v14 = a3;
    goto LABEL_5;
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

uint64_t sub_1BC6B91D8(uint64_t a1)
{
  sub_1BC75BBE0();
}

unint64_t sub_1BC6B9314@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC6C3D54(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BC6B9344(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x555574726F706572;
  v5 = 0xE800000000000000;
  v6 = 0x726574726F706572;
  if (v2 != 5)
  {
    v6 = 0x74726F706572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xED00006E6F697372;
  v8 = 0x6556616D65686373;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x80000001BC772930;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF706D617473656DLL;
  v10 = 0x695474726F706572;
  if (v2 != 1)
  {
    v10 = 0x746163696C707061;
    v9 = 0xEB000000006E6F69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1BC6B9448()
{
  v1 = *v0;
  v2 = 0x555574726F706572;
  v3 = 0x726574726F706572;
  if (v1 != 5)
  {
    v3 = 0x74726F706572;
  }

  v4 = 0x6556616D65686373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x695474726F706572;
  if (v1 != 1)
  {
    v5 = 0x746163696C707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1BC6B9548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC6C3D54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6B9570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDD5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B95AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDD5C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B95E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736567617373656DLL;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x80000001BC772960;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x736567617373656DLL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x80000001BC772960;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BC75C5E0();
  }

  return v8 & 1;
}

uint64_t sub_1BC6B9694()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6B971C(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC6B9790(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6B9814@<X0>(char *a2@<X8>)
{
  v3 = sub_1BC75C440();

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

void sub_1BC6B9874(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BC772960;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x736567617373656DLL;
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BC6B98B8()
{
  if (*v0)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1BC6B98F8@<X0>(char *a3@<X8>)
{
  v4 = sub_1BC75C440();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1BC6B995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDED4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B9998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDED4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B99D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001ALL;
  v4 = 0x80000001BC772990;
  if (v2 == 1)
  {
    v5 = 0x80000001BC772990;
  }

  else
  {
    v3 = 0x6E61725474616863;
    v5 = 0xEE00747069726373;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x65636976726573;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD00000000000001ALL;
  if (*a2 != 1)
  {
    v8 = 0x6E61725474616863;
    v4 = 0xEE00747069726373;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65636976726573;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BC75C5E0();
  }

  return v11 & 1;
}

uint64_t sub_1BC6B9AE8()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6B9B9C(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC6B9C3C(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

unint64_t sub_1BC6B9CEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC6C3DA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BC6B9D1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001BC772990;
  v5 = 0xD00000000000001ALL;
  if (v2 != 1)
  {
    v5 = 0x6E61725474616863;
    v4 = 0xEE00747069726373;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636976726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BC6B9D8C()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0x6E61725474616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636976726573;
  }
}

unint64_t sub_1BC6B9DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC6C3DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6B9E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDF28(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6B9E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BDF28(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6B9E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D754E656E6F6870;
  v4 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v3 = 0x6552656369766564;
    v4 = 0xEC0000006E6F6967;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6464416C69616D65;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000073736572;
  }

  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v7 = 0x6552656369766564;
    v8 = 0xEC0000006E6F6967;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6464416C69616D65;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000073736572;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BC75C5E0();
  }

  return v11 & 1;
}

uint64_t sub_1BC6B9FC0()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6BA07C(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC6BA124(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

unint64_t sub_1BC6BA1DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC6C3DEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BC6BA20C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073736572;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x6552656369766564;
    v4 = 0xEC0000006E6F6967;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6464416C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BC6BA284()
{
  v1 = 0x6D754E656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x6552656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

unint64_t sub_1BC6BA2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC6C3DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6BA320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFC78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6BA35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6BFC78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6BA3A4()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC6BA4A4(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC6BA590(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

unint64_t sub_1BC6BA68C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC6C3E38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BC6BA6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000495455746ELL;
  v4 = 0x656D686361747461;
  v5 = 0xEE0068736148746ELL;
  v6 = 0x656D686361747461;
  v7 = 0xEE0044495555746ELL;
  v8 = 0x656D686361747461;
  if (v2 != 3)
  {
    v8 = 0x664F7265626D756ELL;
    v7 = 0xEE00736B6E756843;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7254797465666173;
    v3 = 0xED00007265676769;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1BC6BA798()
{
  v1 = 0x656D686361747461;
  v2 = *v0;
  v3 = 0x664F7265626D756ELL;
  if (v2 == 3)
  {
    v3 = 0x656D686361747461;
  }

  if (v2 == 2)
  {
    v4 = 0x656D686361747461;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v1 = 0x7254797465666173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1BC6BA850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC6C3E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6BA884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C0F54(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC6BA8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C0F54(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC6BA8FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1BC759620();
    if (v10)
    {
      v11 = sub_1BC759640();
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
      result = sub_1BC759630();
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
  v10 = sub_1BC759620();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BC759640();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BC759630();
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

uint64_t sub_1BC6BAB2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BC6BE3AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BC6AE140(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BC6BA8FC(v13, a3, a4, &v12);
  v10 = v4;
  sub_1BC6AE140(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BC6BACBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1BC75C3F0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1BC75C3F0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1BC6BADAC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1BC6BCBD0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BC6BADAC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BC75C3F0();
LABEL_9:
  result = sub_1BC75C2E0();
  *v2 = result;
  return result;
}

void *sub_1BC6BAE4C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD178, &qword_1BC766458);
  v10 = *(type metadata accessor for Report.Media(0) - 8);
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
  v15 = *(type metadata accessor for Report.Media(0) - 8);
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

char *sub_1BC6BB024(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD170, &qword_1BC766448);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC6BB130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD180, &qword_1BC766460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BC6BB23C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD168, &qword_1BC766440);
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

void *sub_1BC6BB340(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD170, &qword_1BC766448);
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

char *sub_1BC6BB3C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC6BB424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BC6BB3E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC6BB550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC6BB404(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC6BB728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BC6BB424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1F0, &qword_1BC7664A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BC6BB550(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD178, &qword_1BC766458);
  v10 = *(type metadata accessor for Report.Media(0) - 8);
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
  v15 = *(type metadata accessor for Report.Media(0) - 8);
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

char *sub_1BC6BB728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD170, &qword_1BC766448);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BC6BB834(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BC75C700();
  sub_1BC75BBE0();
  v8 = sub_1BC75C720();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BC75C5E0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1BC6BC6BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BC6BB984(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BC6BCF64(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BC6BB9F0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BC6BB9F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BC75C580();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BC75BD40();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BC6BBBB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BC6BBAE8(0, v2, 1, a1);
  }

  return result;
}
uint64_t sub_1BD10DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD1054F4(a1, v6, a2);
}

uint64_t sub_1BD10DDA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD10CAFC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD10DE58()
{
  result = qword_1EBD394E8;
  if (!qword_1EBD394E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394F0, &unk_1BE0B8730);
    sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD394E8);
  }

  return result;
}

unint64_t sub_1BD10DF64()
{
  result = qword_1EBD39528;
  if (!qword_1EBD39528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39520, &qword_1BE0B8790);
    sub_1BD0DE4F4(&qword_1EBD39530, &qword_1EBD39538, &qword_1BE0B8798, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39528);
  }

  return result;
}

unint64_t sub_1BD10E01C()
{
  result = qword_1EBD39548;
  if (!qword_1EBD39548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39510, &qword_1BE0B8780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39508, &qword_1BE0B8778);
    sub_1BD0DE4F4(&qword_1EBD39540, &qword_1EBD39508, &qword_1BE0B8778, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39548);
  }

  return result;
}

unint64_t sub_1BD10E1AC()
{
  result = qword_1EBD39588;
  if (!qword_1EBD39588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39558, &qword_1BE0B87A8);
    sub_1BD10E264();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39588);
  }

  return result;
}

unint64_t sub_1BD10E264()
{
  result = qword_1EBD39590;
  if (!qword_1EBD39590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39578, &qword_1BE0B87C0);
    sub_1BD0DE4F4(&qword_1EBD39598, &qword_1EBD395A0, &unk_1BE0B8800, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39590);
  }

  return result;
}

uint64_t sub_1BD10E348(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1BD10A714(a1, a2, a3, v8);
}

uint64_t sub_1BD10E3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD10E438()
{
  result = qword_1EBD39628;
  if (!qword_1EBD39628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39618, &qword_1BE0DB120);
    sub_1BD10E4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39628);
  }

  return result;
}

unint64_t sub_1BD10E4BC()
{
  result = qword_1EBD39630;
  if (!qword_1EBD39630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39630);
  }

  return result;
}

uint64_t sub_1BD10E570()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_1BD1099B4(v2, v3);
}

unint64_t sub_1BD10E5DC()
{
  result = qword_1EBD39670;
  if (!qword_1EBD39670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39670);
  }

  return result;
}

unint64_t sub_1BD10E640()
{
  result = qword_1EBD43BB0;
  if (!qword_1EBD43BB0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD43BA0, 0x1E69B8B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD43BB0);
  }

  return result;
}

unint64_t sub_1BD10E6A8()
{
  result = qword_1EBD396C0;
  if (!qword_1EBD396C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD396C8, &qword_1BE0B88F0);
    sub_1BD10E734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD396C0);
  }

  return result;
}

unint64_t sub_1BD10E734()
{
  result = qword_1EBD396D0;
  if (!qword_1EBD396D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD396D8, &qword_1BE0B88F8);
    sub_1BD0DE4F4(&qword_1EBD396E0, &qword_1EBD396E8, &qword_1BE0B8900, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD396D0);
  }

  return result;
}

void sub_1BD10E870()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD109F7C(v3, v0 + v2, v4);
}

unint64_t sub_1BD10E910()
{
  result = qword_1EBD39748;
  if (!qword_1EBD39748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394C0, &qword_1BE0B8710);
    sub_1BD10E99C();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39748);
  }

  return result;
}

unint64_t sub_1BD10E99C()
{
  result = qword_1EBD39750;
  if (!qword_1EBD39750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394B8, &unk_1BE0B8700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39408, &qword_1BE0B86A0);
    type metadata accessor for MultiHyperLinkDetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39400, &qword_1BE0B8698);
    type metadata accessor for PaymentPassHubView.DetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39470, &qword_1BE0B86E8);
    sub_1BD10DDA4(&qword_1EBD39478, &qword_1EBD39400, &qword_1BE0B8698, sub_1BD10C944);
    sub_1BD10CAFC(&qword_1EBD39480, type metadata accessor for PaymentPassHubView.DetailSheet, &unk_1BE0B85F8);
    sub_1BD10CB44();
    swift_getOpaqueTypeConformance2();
    sub_1BD10CAFC(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39750);
  }

  return result;
}

unint64_t sub_1BD10EBB8()
{
  result = qword_1EBD39758;
  if (!qword_1EBD39758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39758);
  }

  return result;
}

unint64_t sub_1BD10EC0C()
{
  result = qword_1EBD39760;
  if (!qword_1EBD39760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39760);
  }

  return result;
}

uint64_t type metadata accessor for PeerPaymentToggleSection(uint64_t a1)
{
  result = qword_1EBD39768;
  if (!qword_1EBD39768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD10ECD8(uint64_t a1)
{
  type metadata accessor for PKPaymentRequestType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v2 <= 0x3F)
    {
      sub_1BD10EDF4(319, &qword_1EBD39778, type metadata accessor for AccountServiceAuthorizationModel);
      if (v3 <= 0x3F)
      {
        sub_1BD10EDF4(319, &qword_1EBD36458, type metadata accessor for PeerPaymentModel);
        if (v4 <= 0x3F)
        {
          sub_1BD0FA9D0(319);
          if (v5 <= 0x3F)
          {
            sub_1BD10EE48();
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

void sub_1BD10EDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD10EE48()
{
  if (!qword_1EBD496E0)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD496E0);
    }
  }
}

double sub_1BD10EEB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v3 = type metadata accessor for PeerPaymentToggleSection(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39798, &qword_1BE0B8CC8);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = (a1 + *(v4 + 48));
  v12 = *(v10 + 1);
  v35 = *v10;
  v11 = v35;
  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v32 = a1;
  type metadata accessor for PassRow(0);
  sub_1BD1105AC(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
  sub_1BE051814();
  LOBYTE(v33) = v11;
  v34 = v12;
  sub_1BE0516A4();
  LOBYTE(v33) = v35;
  sub_1BD1106D8(v27, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PeerPaymentToggleSection);
  v13 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v14 = swift_allocObject();
  sub_1BD1105F4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1BD0DE4F4(&qword_1EBD397A0, &qword_1EBD39798, &qword_1BE0B8CC8, MEMORY[0x1E697D6A8]);
  v15 = v31;
  v16 = v29;
  sub_1BE051064();
  v14, v17, v18, v19, v20, v21, v22, v23;
  (*(v30 + 8))(v9, v16);
  v24 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39788, &qword_1BE0B8CC0) + 36);
  result = 10.0;
  *v24 = xmmword_1BE0B8C20;
  *(v24 + 16) = xmmword_1BE0B8C20;
  *(v24 + 32) = 0;
  return result;
}

uint64_t sub_1BD10F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PeerPaymentToggleSection(0) + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  sub_1BD1106D8(a1 + v4, a2, type metadata accessor for AvailablePass);
  *(a2 + v6) = 0;
  *(a2 + v7) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PassRow(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

void sub_1BD10F29C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a3 + *(type metadata accessor for PeerPaymentToggleSection(0) + 32);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = *a2;
    sub_1BE048964();
    v5(v7);

    sub_1BD0D4744(v5, v6, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_1BD10F328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v104 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397D0, &qword_1BE0B8CE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v104 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397C0, &unk_1BE0B8CD8);
  v109 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v104 - v11;
  v13 = sub_1BD10F7F4();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v106 = v4;
    v107 = v10;
    v108 = a2;
    sub_1BD10FE40();
    if (v17)
    {
      v18 = v17;
      v26 = (a1 + *(type metadata accessor for PeerPaymentToggleSection(0) + 36));
      v27 = *v26;
      if (*v26)
      {
        v28 = v26[1];
        v104 = objc_allocWithZone(PKTextRangeHyperlink);
        sub_1BD0D44B8(v27, v28);
        sub_1BE048964();
        v29 = sub_1BE052404();
        v18, v30, v31, v32, v33, v34, v35, v36;
        v114 = v27;
        v115 = v28;
        v105 = v28;
        aBlock = MEMORY[0x1E69E9820];
        v111 = 1107296256;
        v112 = sub_1BD126964;
        v113 = &block_descriptor_3;
        v37 = _Block_copy(&aBlock);
        v115, v38, v39, v40, v41, v42, v43, v44;
        v45 = [v104 initWithLinkText:v29 action:v37];
        _Block_release(v37);

        if (v45)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1BE0B7020;
          *(v52 + 32) = v45;
          *v9 = v52;
          *(v9 + 1) = 4;
          v9[16] = 0;
          *(v9 + 3) = v15;
          *(v9 + 4) = v16;
          *(v9 + 5) = 0;
          *(v9 + 6) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1BD10E4BC();
          sub_1BD1103C8();
          sub_1BE048C84();
          sub_1BE048C84();
          sub_1BE04F9A4();
          sub_1BD0D4744(v27, v105, v53, v54, v55, v56, v57, v58);
          v16, v59, v60, v61, v62, v63, v64, v65;
          v52, v66, v67, v68, v69, v70, v71, v72;
LABEL_12:
          v103 = v108;
          sub_1BD110484(v12, v108);
          return (*(v109 + 56))(v103, 0, 1, v107);
        }

        sub_1BD0D4744(v27, v105, v46, v47, v48, v49, v50, v51);
      }

      else
      {
        v18, v19, v20, v21, v22, v23, v24, v25;
      }
    }

    aBlock = v15;
    v111 = v16;
    sub_1BD0DDEBC();
    v75 = sub_1BE0506C4();
    v77 = v76;
    v79 = v78;
    aBlock = v75;
    v111 = v76;
    v81 = (v80 & 1);
    LOBYTE(v112) = v80 & 1;
    v113 = v78;
    sub_1BE052434();
    v83 = v82;
    sub_1BE050DE4();
    v83, v84, v85, v86, v87, v88, v89, v90;
    sub_1BD0DDF10(v75, v77, v81, v91, v92, v93, v94, v95);
    v79, v96, v97, v98, v99, v100, v101, v102;
    sub_1BD0DE19C(v6, v9, &qword_1EBD452C0, &qword_1BE0B7620);
    swift_storeEnumTagMultiPayload();
    sub_1BD10E4BC();
    sub_1BD1103C8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v6, &qword_1EBD452C0, &qword_1BE0B7620);
    goto LABEL_12;
  }

  v73 = *(v109 + 56);

  return v73(a2, 1, 1, v10);
}

id sub_1BD10F7F4()
{
  v63 = sub_1BE04BD74();
  v1 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v3 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v59 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v59 - v20;
  if (*v0 == 2)
  {
    v26 = *(v0 + *(type metadata accessor for PeerPaymentToggleSection(0) + 24));
    if (v26 && *(v26 + qword_1EBDAB038) == 2)
    {
      v27 = v63;
      (*(v1 + 104))(v6, *MEMORY[0x1E69B80E0], v63);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v29 = result;
      v23 = sub_1BE04B6F4();

      (*(v1 + 8))(v6, v27);
    }

    else
    {
      v30 = v63;
      (*(v1 + 104))(v3, *MEMORY[0x1E69B8050], v63);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v31 = result;
      v23 = sub_1BE04B6F4();

      (*(v1 + 8))(v3, v30);
    }

    return v23;
  }

  v22 = v12;
  v23 = 0;
  if (*v0 != 9)
  {
    return v23;
  }

  v24 = type metadata accessor for PeerPaymentToggleSection(0);
  sub_1BD0DE19C(v0 + *(v24 + 28), v21, &qword_1EBD45480, &unk_1BE0B8C30);
  v25 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v25 - 8) + 48))(v21, 1, v25) == 1)
  {
    sub_1BD0DE53C(v21, &qword_1EBD45480, &unk_1BE0B8C30);
LABEL_16:
    v57 = v63;
    (*(v1 + 104))(v9, *MEMORY[0x1E69B8050], v63);
    result = PKPassKitBundle();
    if (result)
    {
      v58 = result;
      v23 = sub_1BE04B6F4();

      (*(v1 + 8))(v9, v57);
      return v23;
    }

    __break(1u);
    goto LABEL_20;
  }

  v32 = v21[*(v25 + 64)];
  sub_1BD1104F4(v21);
  if (v32 != 1)
  {
    goto LABEL_16;
  }

  v33 = *MEMORY[0x1E69B80A0];
  v34 = v63;
  v62 = *(v1 + 104);
  v62(v18, v33, v63);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = result;
  v59[1] = sub_1BE04B6F4();
  v60 = v36;

  v37 = *(v1 + 8);
  v37(v18, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BE0B6CA0;
  v61 = v33;
  v62(v15, v33, v34);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = result;
  v40 = sub_1BE04B6F4();
  v42 = v41;

  v37(v15, v34);
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1BD110550();
  *(v38 + 64) = v43;
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  v44 = v22;
  v62(v22, v61, v34);
  result = PKPassKitBundle();
  if (result)
  {
    v45 = result;
    v46 = sub_1BE04B6F4();
    v48 = v47;

    v37(v44, v34);
    *(v38 + 96) = MEMORY[0x1E69E6158];
    *(v38 + 104) = v43;
    *(v38 + 72) = v46;
    *(v38 + 80) = v48;
    v49 = v60;
    v23 = sub_1BE052454();
    v49, v50, v51, v52, v53, v54, v55, v56;
    return v23;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1BD10FE40()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  if (*v0 != 9)
  {
    return 0;
  }

  v8 = type metadata accessor for PeerPaymentToggleSection(0);
  sub_1BD0DE19C(v0 + *(v8 + 28), v7, &qword_1EBD45480, &unk_1BE0B8C30);
  v9 = type metadata accessor for PeerPaymentModel(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1BD0DE53C(v7, &qword_1EBD45480, &unk_1BE0B8C30);
    return 0;
  }

  v10 = v7[*(v9 + 64)];
  sub_1BD1104F4(v7);
  if (v10 != 1)
  {
    return 0;
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69B80A0], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();

    (*(v2 + 8))(v4, v1);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD110080()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39780, &qword_1BE0B8CB8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v0;
  sub_1BD10F328(v0, &v4[-v2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39788, &qword_1BE0B8CC0);
  sub_1BD11017C();
  sub_1BD1102B8();
  return sub_1BE051A54();
}

unint64_t sub_1BD11017C()
{
  result = qword_1EBD39790;
  if (!qword_1EBD39790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39788, &qword_1BE0B8CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39798, &qword_1BE0B8CC8);
    sub_1BD0DE4F4(&qword_1EBD397A0, &qword_1EBD39798, &qword_1BE0B8CC8, MEMORY[0x1E697D6A8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39790);
  }

  return result;
}

unint64_t sub_1BD1102B8()
{
  result = qword_1EBD397B0;
  if (!qword_1EBD397B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39780, &qword_1BE0B8CB8);
    sub_1BD11033C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397B0);
  }

  return result;
}

unint64_t sub_1BD11033C()
{
  result = qword_1EBD397B8;
  if (!qword_1EBD397B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD397C0, &unk_1BE0B8CD8);
    sub_1BD10E4BC();
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397B8);
  }

  return result;
}

unint64_t sub_1BD1103C8()
{
  result = qword_1EBD397C8;
  if (!qword_1EBD397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD1105AC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397C8);
  }

  return result;
}

uint64_t sub_1BD110484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397C0, &unk_1BE0B8CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1104F4(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD110550()
{
  result = qword_1EBD3FC80;
  if (!qword_1EBD3FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FC80);
  }

  return result;
}

uint64_t sub_1BD1105AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD1105F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPaymentToggleSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD110658(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for PeerPaymentToggleSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD10F29C(a1, a2, v6);
}

uint64_t sub_1BD1106D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD110740()
{
  result = qword_1EBD397E8;
  if (!qword_1EBD397E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD397F0, &unk_1BE0B8D10);
    sub_1BD11017C();
    sub_1BD1102B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD397E8);
  }

  return result;
}

void BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(uint64_t a1, int a2)
{
  v87 = a2;
  v2 = sub_1BE04AF64();
  v89 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v79 - v9;
  v10 = sub_1BE04B2F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04A474();
  v85 = *(v14 - 8);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04AE64();
  v18 = PKRelativeDateString();

  if (v18)
  {
    v83 = v4;
    v84 = v2;
    v19 = sub_1BE052434();
    v80 = v20;
    v81 = v19;

    v82 = v11;
    v21 = *(v11 + 16);
    v22 = v90 + OBJC_IVAR____TtC9PassKitUI20BankConnectFormatter_calendar;
    v90 = v10;
    v21(v13, v22, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
    v23 = sub_1BE04B2D4();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    v79 = xmmword_1BE0B69E0;
    *(v26 + 16) = xmmword_1BE0B69E0;
    (*(v24 + 104))(v26 + v25, *MEMORY[0x1E6969A10], v23);
    v27 = sub_1BD111674(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_1BE04AE64();
    v29 = PKDateIgnoringTime();

    if (v29)
    {
      v30 = v88;
      sub_1BE04AEE4();

      sub_1BE04AEF4();
      v31 = sub_1BE04AE64();
      v32 = *(v89 + 8);
      v33 = v7;
      v34 = v84;
      v32(v33, v84);
      v35 = PKDateIgnoringTime();

      if (v35)
      {
        v36 = v83;
        sub_1BE04AEE4();

        sub_1BE04B184();
        v27, v37, v38, v39, v40, v41, v42, v43;
        (*(v82 + 8))(v13, v90);
        v32(v36, v34);
        v32(v30, v34);
        v44 = sub_1BE04A3F4();
        v46 = v45;
        (*(v85 + 8))(v16, v86);
        if ((v46 & 1) == 0 && v44 >= 1)
        {
          v47 = "BANK_CONNECT_LAST_UPDATED_DATE_ABSOLUTE_FOOTER";
          if (v87)
          {
            v47 = "BANK_CONNECT_LAST_UPDATED_DATE_ABSOLUTE_PLURAL_FOOTER";
          }

          v48 = v47 - 32;
          v49 = sub_1BE052404();
          (v48 | 0x8000000000000000), v50, v51, v52, v53, v54, v55, v56;
          v57 = PKLocalizedBankConnectString(v49);

          if (!v57)
          {
            __break(1u);
            return;
          }

LABEL_14:
          sub_1BE052434();
          v69 = v68;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v70 = swift_allocObject();
          *(v70 + 16) = v79;
          *(v70 + 56) = MEMORY[0x1E69E6158];
          *(v70 + 64) = sub_1BD110550();
          v71 = v80;
          *(v70 + 32) = v81;
          *(v70 + 40) = v71;
          sub_1BE052454();
          v69, v72, v73, v74, v75, v76, v77, v78;
          return;
        }

        v58 = "BANK_CONNECT_LAST_UPDATED_DATE_RELATIVE_FOOTER";
        if (v87)
        {
          v58 = "BANK_CONNECT_LAST_UPDATED_DATE_RELATIVE_PLURAL_FOOTER";
        }

        v59 = v58 - 32;
        v60 = sub_1BE052404();
        (v59 | 0x8000000000000000), v61, v62, v63, v64, v65, v66, v67;
        v57 = PKLocalizedBankConnectString(v60);

        if (v57)
        {
          goto LABEL_14;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

void BankConnectFormatter.formatAsOfDateWithFullStop(_:hasMultipleBalances:)(uint64_t a1, int a2)
{
  v87 = a2;
  v2 = sub_1BE04AF64();
  v89 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v79 - v9;
  v10 = sub_1BE04B2F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04A474();
  v85 = *(v14 - 8);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE04AE64();
  v18 = PKRelativeDateString();

  if (v18)
  {
    v83 = v4;
    v84 = v2;
    v19 = sub_1BE052434();
    v80 = v20;
    v81 = v19;

    v82 = v11;
    v21 = *(v11 + 16);
    v22 = v90 + OBJC_IVAR____TtC9PassKitUI20BankConnectFormatter_calendar;
    v90 = v10;
    v21(v13, v22, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
    v23 = sub_1BE04B2D4();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    v79 = xmmword_1BE0B69E0;
    *(v26 + 16) = xmmword_1BE0B69E0;
    (*(v24 + 104))(v26 + v25, *MEMORY[0x1E6969A10], v23);
    v27 = sub_1BD111674(v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    v28 = sub_1BE04AE64();
    v29 = PKDateIgnoringTime();

    if (v29)
    {
      v30 = v88;
      sub_1BE04AEE4();

      sub_1BE04AEF4();
      v31 = sub_1BE04AE64();
      v32 = *(v89 + 8);
      v33 = v7;
      v34 = v84;
      v32(v33, v84);
      v35 = PKDateIgnoringTime();

      if (v35)
      {
        v36 = v83;
        sub_1BE04AEE4();

        sub_1BE04B184();
        v27, v37, v38, v39, v40, v41, v42, v43;
        (*(v82 + 8))(v13, v90);
        v32(v36, v34);
        v32(v30, v34);
        v44 = sub_1BE04A3F4();
        v46 = v45;
        (*(v85 + 8))(v16, v86);
        if ((v46 & 1) == 0 && v44 >= 1)
        {
          v47 = "BANK_CONNECT_LAST_UPDATED_DATE_ABSOLUTE_FOOTER_WITH_FULL_STOP";
          if (v87)
          {
            v47 = "BANK_CONNECT_LAST_UPDATED_DATE_ABSOLUTE_PLURAL_FOOTER_WITH_FULL_STOP";
          }

          v48 = v47 - 32;
          v49 = sub_1BE052404();
          (v48 | 0x8000000000000000), v50, v51, v52, v53, v54, v55, v56;
          v57 = PKLocalizedBankConnectString(v49);

          if (!v57)
          {
            __break(1u);
            return;
          }

LABEL_14:
          sub_1BE052434();
          v69 = v68;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v70 = swift_allocObject();
          *(v70 + 16) = v79;
          *(v70 + 56) = MEMORY[0x1E69E6158];
          *(v70 + 64) = sub_1BD110550();
          v71 = v80;
          *(v70 + 32) = v81;
          *(v70 + 40) = v71;
          sub_1BE052454();
          v69, v72, v73, v74, v75, v76, v77, v78;
          return;
        }

        v58 = "BANK_CONNECT_LAST_UPDATED_DATE_RELATIVE_FOOTER_WITH_FULL_STOP";
        if (v87)
        {
          v58 = "BANK_CONNECT_LAST_UPDATED_DATE_RELATIVE_PLURAL_FOOTER_WITH_FULL_STOP";
        }

        v59 = v58 - 32;
        v60 = sub_1BE052404();
        (v59 | 0x8000000000000000), v61, v62, v63, v64, v65, v66, v67;
        v57 = PKLocalizedBankConnectString(v60);

        if (v57)
        {
          goto LABEL_14;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_1BD1113BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();
  v12 = a1;
  a5(v11, a4);
  v14 = v13;

  (*(v9 + 8))(v11, v8);
  v15 = sub_1BE052404();
  v14, v16, v17, v18, v19, v20, v21, v22;

  return v15;
}

id BankConnectFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectFormatter.init()()
{
  ObjectType = swift_getObjectType();
  sub_1BE04B2A4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id BankConnectFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD111674(uint64_t a1)
{
  v2 = sub_1BE04B2D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD398C0, &unk_1BE0B8DD0);
    v9 = sub_1BE053804();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1BD113090(&qword_1EBD398C8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1BE052284();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1BD113090(&unk_1EBD398D0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1BE052334();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t type metadata accessor for BankConnectFormatter(uint64_t a1)
{
  result = qword_1EBD39808;
  if (!qword_1EBD39808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD1119E8(uint64_t a1)
{
  result = sub_1BE04B2F4();
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

void sub_1BD111A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880, &qword_1BE0C8340);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v59 = a1 + 32;
    v58 = v1;
    do
    {
      v13 = *(v59 + v4);
      v60 = v4 + 1;
      sub_1BE053D04();
      sub_1BE052434();
      v15 = v14;
      sub_1BE052524();
      v15, v16, v17, v18, v19, v20, v21, v22;
      v23 = sub_1BE053D64();
      v24 = ~(-1 << *(v3 + 32));
      v25 = v23 & v24;
      v26 = (v23 & v24) >> 6;
      v27 = *(v5 + 8 * v26);
      v28 = 1 << (v23 & v24);
      if ((v28 & v27) != 0)
      {
        while (1)
        {
          v29 = sub_1BE052434();
          v31 = v30;
          v33 = sub_1BE052434();
          v39 = v32;
          if (v29 == v33 && v31 == v32)
          {
            break;
          }

          v40 = sub_1BE053B84();
          v31, v41, v42, v43, v44, v45, v46, v47;
          v39, v48, v49, v50, v51, v52, v53, v54;
          if (v40)
          {
            goto LABEL_4;
          }

          v25 = (v25 + 1) & v24;
          v26 = v25 >> 6;
          v27 = *(v5 + 8 * (v25 >> 6));
          v28 = 1 << v25;
          if ((v27 & (1 << v25)) == 0)
          {
            goto LABEL_10;
          }
        }

        v31, v32, v33, v34, v35, v36, v37, v38;
        v39, v6, v7, v8, v9, v10, v11, v12;
      }

      else
      {
LABEL_10:
        *(v5 + 8 * v26) = v27 | v28;
        *(*(v3 + 48) + v25) = v13;
        v55 = *(v3 + 16);
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          __break(1u);
          return;
        }

        *(v3 + 16) = v57;
      }

LABEL_4:
      v4 = v60;
    }

    while (v60 != v58);
  }
}

void sub_1BD111E08(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1BE053704();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1BE053804();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1BE053704();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x1BFB40900](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1BE053064();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1BD0E5E8C(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_1BE053074();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_1BE053064();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_1BD0E5E8C(0, a4, a5);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_1BE053074();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1BD1120F4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    if (sub_1BE053704())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39848, &qword_1BE0B8D78);
      v3 = sub_1BE053804();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BE053704();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v29 = v1 & 0xC000000000000001;
  v26 = v1 + 32;
  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  v28 = v1;
  while (v29)
  {
    v8 = MEMORY[0x1BFB40900](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1BE04D7F4();
    sub_1BD113090(&qword_1EBD597F0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v10 = sub_1BE052284();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1BD113090(&qword_1EBD39850, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (sub_1BE052334())
        {
          v8, v17, v18, v19, v20, v21, v22, v23;
          v1 = v28;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v28;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v24 = *(v3 + 16);
    v9 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v25;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v27 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v26 + 8 * v6);
  sub_1BE048964();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1BD1123D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888, &unk_1BE0B8DA0);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      result = sub_1BE053D64();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = sub_1BE053B84();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1BD11253C(uint64_t a1)
{
  v2 = sub_1BE04F674();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39830, &qword_1BE0B8D70);
    v9 = sub_1BE053804();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1BD113090(&qword_1EBD39838, MEMORY[0x1E697C4F8], MEMORY[0x1E697C500]);
      v16 = sub_1BE052284();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1BD113090(&qword_1EBD39840, MEMORY[0x1E697C4F8], MEMORY[0x1E697C508]);
          v23 = sub_1BE052334();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1BD11285C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39858, &qword_1BE0B8D80);
    v3 = sub_1BE053804();
    v4 = 0;
    v5 = v3 + 56;
    v61 = v1;
    v62 = a1 + 32;
    while (1)
    {
      v13 = *(v62 + v4++);
      sub_1BE053D04();
      v14 = 0xEA0000000000656CLL;
      if (v13 != 3)
      {
        v14 = 0xE800000000000000;
      }

      if (v13 == 2)
      {
        v14 = 0xEC000000726F7272;
      }

      v15 = 0xE400000000000000;
      if (v13)
      {
        v15 = 0xE700000000000000;
      }

      if (v13 <= 1)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      sub_1BE052524();
      v16, v17, v18, v19, v20, v21, v22, v23;
      v24 = sub_1BE053D64();
      v31 = ~(-1 << *(v3 + 32));
      v32 = v24 & v31;
      v33 = (v24 & v31) >> 6;
      v34 = *(v5 + 8 * v33);
      v35 = 1 << (v24 & v31);
      if ((v35 & v34) != 0)
      {
        do
        {
          v36 = *(*(v3 + 48) + v32);
          if (v36 <= 1)
          {
            if (*(*(v3 + 48) + v32))
            {
              v37 = 0x676E6964616F6CLL;
            }

            else
            {
              v37 = 1701736302;
            }

            if (*(*(v3 + 48) + v32))
            {
              v38 = 0xE700000000000000;
            }

            else
            {
              v38 = 0xE400000000000000;
            }

            if (v13 > 1)
            {
LABEL_32:
              v39 = 0x656C626967696C65;
              if (v13 == 3)
              {
                v39 = 0x626967696C656E69;
              }

              v40 = 0xEA0000000000656CLL;
              if (v13 != 3)
              {
                v40 = 0xE800000000000000;
              }

              if (v13 == 2)
              {
                v41 = 0x45676E6964616F6CLL;
              }

              else
              {
                v41 = v39;
              }

              if (v13 == 2)
              {
                v42 = 0xEC000000726F7272;
              }

              else
              {
                v42 = v40;
              }

              if (v37 != v41)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }

          else if (v36 == 2)
          {
            v37 = 0x45676E6964616F6CLL;
            v38 = 0xEC000000726F7272;
            if (v13 > 1)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v36 == 3)
            {
              v37 = 0x626967696C656E69;
            }

            else
            {
              v37 = 0x656C626967696C65;
            }

            if (v36 == 3)
            {
              v38 = 0xEA0000000000656CLL;
            }

            else
            {
              v38 = 0xE800000000000000;
            }

            if (v13 > 1)
            {
              goto LABEL_32;
            }
          }

          if (v13)
          {
            v42 = 0xE700000000000000;
            v41 = 0x676E6964616F6CLL;
            if (v37 != 0x676E6964616F6CLL)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v42 = 0xE400000000000000;
            v41 = 1701736302;
            if (v37 != 1701736302)
            {
              goto LABEL_50;
            }
          }

LABEL_49:
          if (v38 == v42)
          {
            v38, v25, v41, v26, v27, v28, v29, v30;
            v42, v6, v7, v8, v9, v10, v11, v12;
            goto LABEL_4;
          }

LABEL_50:
          v43 = sub_1BE053B84();
          v38, v44, v45, v46, v47, v48, v49, v50;
          v42, v51, v52, v53, v54, v55, v56, v57;
          if (v43)
          {
            goto LABEL_4;
          }

          v32 = (v32 + 1) & v31;
          v33 = v32 >> 6;
          v34 = *(v5 + 8 * (v32 >> 6));
          v35 = 1 << v32;
        }

        while ((v34 & (1 << v32)) != 0);
      }

      *(v5 + 8 * v33) = v34 | v35;
      *(*(v3 + 48) + v32) = v13;
      v58 = *(v3 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        break;
      }

      *(v3 + 16) = v60;
LABEL_4:
      if (v4 == v61)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD112BF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1BE053804();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + 8 * v6);
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v12);
      result = sub_1BE053D64();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + 8 * v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + 8 * v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BD112D70(uint64_t a1)
{
  v2 = sub_1BE049E14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39860, &qword_1BE0B8D88);
    v9 = sub_1BE053804();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1BD113090(&qword_1EBD39868, MEMORY[0x1E6967C28], MEMORY[0x1E6967C30]);
      v16 = sub_1BE052284();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1BD113090(&qword_1EBD39870, MEMORY[0x1E6967C28], MEMORY[0x1E6967C38]);
          v23 = sub_1BE052334();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BD113090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD1130D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_1BE048964();
  v1(v3);

  v2, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t static NearbyPeerPaymentSenderState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1BD113234(a1, v4);
  sub_1BD113234(a2, &v6);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v5 == 2 && v7 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        if (v7 == 3)
        {
          goto LABEL_20;
        }
      }

      else if (v7 == 4)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_1BD0DE53C(v4, &qword_1EBD398E0, &qword_1BE0B8E80);
      return 0;
    }

    if (v5 != 5)
    {
      if (v5 == 6 && v7 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7 != 5)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  sub_1BD11326C(v4);
  return 1;
}

uint64_t sub_1BD11329C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04DC74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04DCA4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  result = (*(v9 + 88))(v12, v8);
  if (result == *MEMORY[0x1E69CDB98])
  {
    (*(v9 + 96))(v12, v8);
    *(v12 + 1), v14, v15, v16, v17, v18, v19, v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC8, &qword_1BE0B95E0);
    v22 = v21[12];
    *&v12[v21[16] + 8], v23, v24, v25, v26, v27, v28, v29;
    v30 = v21[20];
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E20;
    v31 = sub_1BE04E084();
    (*(*(v31 - 8) + 8))(&v12[v30], v31);
    v32 = sub_1BE04E0C4();
    return (*(*(v32 - 8) + 8))(&v12[v22], v32);
  }

  if (result == *MEMORY[0x1E69CDBA0])
  {
    (*(v9 + 96))(v12, v8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AC0, &unk_1BE0C8B50);
    (*(v5 + 32))(v7, &v12[*(v33 + 48)], v4);
    v34 = sub_1BE04B784();
    *(a2 + 24) = v34;
    *(a2 + 32) = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88], MEMORY[0x1E69B7E80]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
    (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7E70], v34);
    (*(v5 + 8))(v7, v4);
LABEL_7:
    v44 = sub_1BE04DCE4();
    return (*(*(v44 - 8) + 8))(v12, v44);
  }

  if (result == *MEMORY[0x1E69CDBA8])
  {
    (*(v9 + 96))(v12, v8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39AB8, &unk_1BE0B95D0);
    *&v12[*(v36 + 48) + 8], v37, v38, v39, v40, v41, v42, v43;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E10;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69CDBB8])
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1BE0B8E00;
  }

  else
  {
    v45 = *MEMORY[0x1E69CDBB0];
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (result == v45)
    {
      *(a2 + 24) = xmmword_1BE0B8DF0;
    }

    else
    {
      *(a2 + 24) = xmmword_1BE0B8DE0;
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t NearbyPeerPaymentSenderState.description.getter()
{
  sub_1BD113234(v0, &v11);
  if (v12 > 2)
  {
    if (v12 <= 4)
    {
      if (v12 != 3)
      {
        return 0x4C676E69646E6573;
      }

      v2 = 1684956531;
      return v2 | 0x676E6900000000;
    }

    if (v12 == 5)
    {
      return 0x4C676E69646E6573;
    }

    if (v12 == 6)
    {
      return 0x73736563637573;
    }

LABEL_13:
    sub_1BD043990(&v11, v10);
    MEMORY[0x1BFB3F610](0x28726F727265, 0xE600000000000000);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1BE053B64();
    MEMORY[0x1BFB3F610](41, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0(v10, v3, v4, v5, v6, v7, v8, v9);
    return 0;
  }

  if (!v12)
  {
    v2 = 1819045744;
    return v2 | 0x676E6900000000;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      return 0xD000000000000012;
    }

    goto LABEL_13;
  }

  return 0x697463656E6E6F63;
}

uint64_t NearbyPeerPaymentSenderState.isTerminal.getter()
{
  sub_1BD113234(v0, v3);
  if (v4 >= 6)
  {
    v1 = 1;
    if (v4 == 6)
    {
      return v1;
    }
  }

  else
  {
    v1 = 0;
  }

  sub_1BD11326C(v3);
  return v1;
}

BOOL NearbyPeerPaymentSenderState.isError.getter()
{
  sub_1BD113234(v0, v3);
  v1 = v4 > 6;
  sub_1BD11326C(v3);
  return v1;
}

uint64_t sub_1BD113964(uint64_t a1, uint64_t a2)
{
  sub_1BD113234(a1, v4);
  sub_1BD113234(a2, &v6);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v7 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v5 == 2 && v7 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 == 3)
      {
        if (v7 == 3)
        {
          goto LABEL_20;
        }
      }

      else if (v7 == 4)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_1BD0DE53C(v4, &qword_1EBD398E0, &qword_1BE0B8E80);
      return 0;
    }

    if (v5 != 5)
    {
      if (v5 == 6 && v7 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v7 != 5)
    {
      goto LABEL_16;
    }
  }

LABEL_20:
  sub_1BD11326C(v4);
  return 1;
}

uint64_t sub_1BD113A84()
{
  v1 = 0x6576697463616E69;
  v2 = 0x6164696C61766E69;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x657669746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BD113BE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BD113E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_1BD113F08(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD113AFC(v4);
  return sub_1BD114040;
}

uint64_t sub_1BD114074@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a3;
  swift_beginAccess();
  v18 = a4(0);
  return (*(*(v18 - 8) + 16))(a5, v8 + v17, v18);
}

uint64_t sub_1BD114178(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE04C4C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v20 = v9;
  v21 = v8;
  v22 = v9;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD114328@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v19 = v4;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a2;
  swift_beginAccess();
  v17 = a3(0);
  return (*(*(v17 - 8) + 16))(a4, v19 + v16, v17);
}

uint64_t sub_1BD114428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(v8 + 16))(&v14 - v10, a2, v7, v9);
  v12 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v12, v11, v7);
  return swift_endAccess();
}

id sub_1BD11454C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  *a2 = v12;

  return v12;
}

id sub_1BD114638()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);

  return v9;
}

void sub_1BD1146F0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  sub_1BD0E5E8C(0, &qword_1EBD39A30, 0x1E69B8660);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD114864(uint64_t a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  v47[0] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(&v1[v12], v48);
  if (v49 > 2)
  {
    if ((v49 - 5) >= 2)
    {
      if (v49 == 3 || v49 == 4)
      {
        sub_1BD11CAC8(0xF);
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_1BD11326C(v48);
    goto LABEL_14;
  }

  switch(v49)
  {
    case 0:
      goto LABEL_10;
    case 1:
      goto LABEL_12;
    case 2:
      goto LABEL_10;
  }

LABEL_11:
  sub_1BD11326C(v48);
LABEL_12:
  v13 = swift_getKeyPath();
  v48[0] = v1;
  sub_1BE04B594();
  v13, v14, v15, v16, v17, v18, v19, v20;
  if (*&v1[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BE052E04();
    swift_unknownObjectRelease();
  }

LABEL_14:
  v21 = swift_getKeyPath();
  v48[0] = v1;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = &v1[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate];
  swift_beginAccess();
  if (*v29)
  {
    v30 = *(v29 + 1);
    ObjectType = swift_getObjectType();
    v49 = type metadata accessor for NearbyPeerPaymentDiscoveryMonitor(0);
    v50 = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    v48[0] = v2;
    v32 = swift_getKeyPath();
    v47[0] = v2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    sub_1BE04B594();
    v32, v33, v34, v35, v36, v37, v38, v39;
    sub_1BD113234(v2 + v12, v47);
    (*(v30 + 8))(v48, a1, v47, ObjectType, v30);
    swift_unknownObjectRelease();
    sub_1BD11326C(v47);
    __swift_destroy_boxed_opaque_existential_0(v48, v40, v41, v42, v43, v44, v45, v46);
  }
}

uint64_t sub_1BD114B20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v12, a2);
}

uint64_t sub_1BD114C00@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v13 + v11, a1);
}

uint64_t sub_1BD114CC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v3, v18);
  v13 = v18[0];
  v14 = v18[1];
  v15 = v19;
  sub_1BD113234(a1, &v16);
  if (*(&v14 + 1) <= 2)
  {
    if (*(&v14 + 1))
    {
      if (*(&v14 + 1) == 1)
      {
        if (v17 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (*(&v14 + 1) == 2 && v17 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1BD11326C(&v13);
    sub_1BD113234(a1, &v13);
    sub_1BD113234(v1 + v3, v18);
    swift_beginAccess();
    sub_1BD1263C8(&v13, v1 + v3);
    swift_endAccess();
    sub_1BD114864(v18);
    sub_1BD11326C(v18);
    sub_1BD11326C(&v13);
    return sub_1BD11326C(a1);
  }

  if (*(&v14 + 1) > 4)
  {
    if (*(&v14 + 1) != 5)
    {
      if (*(&v14 + 1) == 6 && v17 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v17 != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (*(&v14 + 1) == 3)
  {
    if (v17 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v17 == 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1BD0DE53C(&v13, &qword_1EBD398E0, &qword_1BE0B8E80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v13 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BD11326C(a1);
}

uint64_t sub_1BD114F3C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
}

void sub_1BD114FE4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
}

void sub_1BD115094(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD1151A4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  return sub_1BD0DE19C(v13 + v11, a1, &qword_1EBD39980, &qword_1BE0BF3C0);
}

uint64_t sub_1BD11527C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD39980, &qword_1BE0BF3C0);
}

uint64_t sub_1BD115354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD39980, &qword_1BE0BF3C0);
  return sub_1BD115400(v4);
}

uint64_t sub_1BD115400(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD39980, &qword_1BE0BF3C0);
  v7 = sub_1BD1254A0(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD39980, &qword_1BE0BF3C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD39980, &qword_1BE0BF3C0);
    swift_beginAccess();
    sub_1BD12651C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD39980, &qword_1BE0BF3C0);
}

uint64_t sub_1BD115608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1BD0DE19C(a2, &v9 - v5, &qword_1EBD39980, &qword_1BE0BF3C0);
  v7 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
  swift_beginAccess();
  sub_1BD12651C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1BD1156E4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating);
}

void sub_1BD11578C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating);
}

void sub_1BD11583C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD115954@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  a2[1] = v12;
  return sub_1BE048C84();
}

uint64_t sub_1BD115A24()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v9;
}

void sub_1BD115AE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = (v8 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  v12 = *(v8 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  if (v12)
  {
    if (a2)
    {
      v13 = *v11 == a1 && v12 == a2;
      if (v13 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    a2, v22, v23, v24, v25, v26, v27, v28;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v11 = a1;
  v11[1] = a2;

  v12, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BD115C5C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  sub_1BD030394(v9, *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8));
  return v9;
}

uint64_t sub_1BD115D1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v13 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
  *a2 = v12;
  a2[1] = v13;
  return sub_1BD030394(v12, v13);
}

void sub_1BD115DD4(void *a1, const char *a2)
{
  v5 = v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
  sub_1BD030394(v6, v7);
  v8 = sub_1BD1257C0(v6, v7, a1, a2);
  sub_1BD030220(v6, v7, v9, v10, v11, v12, v13, v14);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    sub_1BD030220(a1, a2, v22, v23, v24, v25, v26, v27);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v35 = *v5;
    v36 = *(v5 + 8);
    *v5 = a1;
    *(v5 + 8) = a2;

    sub_1BD030220(v35, v36, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_1BD115FC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  return swift_unknownObjectRetain();
}

void sub_1BD11608C(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD11615C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD116224(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD11632C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD115F60(v4);
  return sub_1BD116464;
}

uint64_t sub_1BD1164D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  *a2 = *(v3 + v12);
  return result;
}

uint64_t sub_1BD1165BC()
{
  KeyPath = swift_getKeyPath();
  v11 = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v11 + v9);
}

void sub_1BD116678(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t (*sub_1BD1167C4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD116470(v4);
  return sub_1BD1168FC;
}

void sub_1BD116908(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  KeyPath = swift_getKeyPath();
  sub_1BE04B5A4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  free(v3);
}

uint64_t sub_1BD11699C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD116A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer);
  return swift_unknownObjectRetain();
}

void sub_1BD116AFC(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD116BC8()
{
  v1 = *v0;
  v2 = sub_1BE051F54();
  v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BE051FA4();
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  aBlock = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) & 1) == 0)
  {
    v16 = swift_getKeyPath();
    aBlock = v0;
    sub_1BE04B594();
    v16, v17, v18, v19, v20, v21, v22, v23;
    v25 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState;
    if (*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState))
    {
      aBlock = 0;
      v66 = 0xE000000000000000;
      sub_1BE053834();
      MEMORY[0x1BFB3F610](0xD000000000000057, 0x80000001BE1197E0);
      v45 = swift_getKeyPath();
      v71 = v0;
      sub_1BE04B594();
      v45, v46, v47, v48, v49, v50, v51, v52;
      if (*(v0 + v25) > 1u)
      {
        if (*(v0 + v25) == 2)
        {
          v53 = 0xEB00000000646574;
          v54 = 0x6164696C61766E69;
        }

        else
        {
          v53 = 0xE600000000000000;
          v54 = 0x64656C696166;
        }
      }

      else if (*(v0 + v25))
      {
        v53 = 0xE600000000000000;
        v54 = 0x657669746361;
      }

      else
      {
        v53 = 0xE800000000000000;
        v54 = 0x6576697463616E69;
      }

      MEMORY[0x1BFB3F610](v54, v53);
      v53, v55, v56, v57, v58, v59, v60, v61;
      sub_1BE053994();
      __break(1u);
    }

    else
    {
      v26 = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
      MEMORY[0x1EEE9AC00](v24);
      os_unfair_lock_lock(v26 + 4);
      sub_1BD126A00();
      os_unfair_lock_unlock(v26 + 4);
      v62[1] = *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      *(v28 + 32) = v1;
      v69 = sub_1BD12612C;
      v70 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v66 = 1107296256;
      v67 = sub_1BD126964;
      v68 = &block_descriptor_225;
      v29 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BE051F74();
      v71 = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v7, v4, v29);
      _Block_release(v29);
      (*(v64 + 8))(v4, v2);
      (*(v5 + 8))(v7, v63);
      v30 = v70;
      v27, v31, v32, v33, v34, v35, v36, v37;
      v30, v38, v39, v40, v41, v42, v43, v44;
    }
  }
}

void sub_1BD117144(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
    v7 = Strong;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a2;
    *(v9 + 32) = a3;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD123BC4(v7, sub_1BD12613C, v9, v6);
    v6, v10, v11, v12, v13, v14, v15, v16;

    v8, v17, v18, v19, v20, v21, v22, v23;
    v9, v24, v25, v26, v27, v28, v29, v30;
  }
}

void sub_1BD117260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
    v4 = Strong;
    sub_1BE048964();
    v4, v5, v6, v7, v8, v9, v10, v11;
    v12 = swift_allocObject();
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    swift_weakInit();
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1EEE9AC00](v21);
    MEMORY[0x1EEE9AC00](v22);
    os_unfair_lock_lock(v3 + 4);
    sub_1BD126250(&v37);
    os_unfair_lock_unlock(v3 + 4);
    v3, v23, v24, v25, v26, v27, v28, v29;
    v12, v30, v31, v32, v33, v34, v35, v36;
  }
}

void sub_1BD1173DC(char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = sub_1BE04AFE4();
  v142 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v137[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BE04D214();
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v137[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v137[-v15];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
    v141 = a4;
    if ((a2 & 1) != 0 && a3 == 1)
    {
      if (v19 != 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *&v137[-16] = v18;
        v137[-8] = 1;
        v145 = v18;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B584();
        KeyPath, v21, v22, v23, v24, v25, v26, v27;
      }

      sub_1BE04D094();
      sub_1BE048964();
      v28 = sub_1BE04D204();
      v29 = sub_1BE052C54();
      v18, v30, v31, v32, v33, v34, v35, v36;
      v37 = os_log_type_enabled(v28, v29);
      v140 = v4;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v146 = v139;
        *v38 = 136315138;
        v39 = swift_getKeyPath();
        v145 = v18;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B594();
        v39, v40, v41, v42, v43, v44, v45, v46;
        v47 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v138 = v29;
        v48 = v142;
        (*(v142 + 16))(v10, &v18[v47], v8);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v49 = sub_1BE053B24();
        v51 = v50;
        (*(v48 + 8))(v10, v8);
        v52 = sub_1BD123690(v49, v51, &v146);
        v51, v53, v54, v55, v56, v57, v58, v59;
        *(v38 + 4) = v52;
        _os_log_impl(&dword_1BD026000, v28, v138, "NearbyPeerPayment: DiscoveryMonitor: monitoring started for monitorID: %s", v38, 0xCu);
        v60 = v139;
        __swift_destroy_boxed_opaque_existential_0(v139, v61, v62, v63, v64, v65, v66, v67);
        MEMORY[0x1BFB45F20](v60, -1, -1);
        MEMORY[0x1BFB45F20](v38, -1, -1);
      }

      (*(v143 + 8))(v16, v144);
      sub_1BD11CAC8(0x78);
    }

    else
    {
      if (v19 == 3)
      {
        v140 = v4;
      }

      else
      {
        v75 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v75);
        *&v137[-16] = v18;
        v137[-8] = 3;
        v145 = v18;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B584();
        v140 = v4;
        v75, v76, v77, v78, v79, v80, v81, v82;
      }

      sub_1BE04D094();
      sub_1BE048964();
      v83 = sub_1BE04D204();
      v84 = sub_1BE052C54();
      v18, v85, v86, v87, v88, v89, v90, v91;
      if (os_log_type_enabled(v83, v84))
      {
        v92 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v146 = v139;
        *v92 = 136315138;
        v93 = swift_getKeyPath();
        v145 = v18;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        sub_1BE04B594();
        v93, v94, v95, v96, v97, v98, v99, v100;
        v101 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v138 = v84;
        v102 = v142;
        (*(v142 + 16))(v10, &v18[v101], v8);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v103 = sub_1BE053B24();
        v105 = v104;
        (*(v102 + 8))(v10, v8);
        v106 = sub_1BD123690(v103, v105, &v146);
        v105, v107, v108, v109, v110, v111, v112, v113;
        *(v92 + 4) = v106;
        _os_log_impl(&dword_1BD026000, v83, v138, "NearbyPeerPayment: DiscoveryMonitor: monitoring could not start for monitorID: %s", v92, 0xCu);
        v114 = v139;
        __swift_destroy_boxed_opaque_existential_0(v139, v115, v116, v117, v118, v119, v120, v121);
        MEMORY[0x1BFB45F20](v114, -1, -1);
        MEMORY[0x1BFB45F20](v92, -1, -1);
      }

      (*(v143 + 8))(v13, v144);
    }

    if (v18[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating])
    {
      v122 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v122);
      *&v137[-16] = v18;
      v137[-8] = 0;
      v146 = v18;
      sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
      sub_1BE04B584();
      v18, v123, v124, v125, v126, v127, v128, v129;
      v122, v130, v131, v132, v133, v134, v135, v136;
    }

    else
    {
      v18[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating] = 0;
      v18, v68, v69, v70, v71, v72, v73, v74;
    }

    a4 = v141;
  }

  *a4 = 0;
}

void sub_1BD117C74()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v106 = *(v2 - 8);
  v107 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v105 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v110 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051F54();
  v109 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v108 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  aBlock[0] = v0;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  if ((v0[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating] & 1) == 0)
  {
    v104 = v4;
    v20 = swift_getKeyPath();
    aBlock[0] = v0;
    sub_1BE04B594();
    v20, v21, v22, v23, v24, v25, v26, v27;
    v29 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState;
    if (v0[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState] == 2)
    {
      v30 = v111;
      sub_1BE04D094();
      sub_1BE048964();
      v31 = sub_1BE04D204();
      v32 = sub_1BE052C54();
      v1, v33, v34, v35, v36, v37, v38, v39;
      if (os_log_type_enabled(v31, v32))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v112 = v41;
        *v40 = 136315394;
        v42 = swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();
        v42, v43, v44, v45, v46, v47, v48, v49;
        if (v1[v29] > 1u)
        {
          if (v1[v29] == 2)
          {
            v50 = 0xEB00000000646574;
            v51 = 0x6164696C61766E69;
          }

          else
          {
            v50 = 0xE600000000000000;
            v51 = 0x64656C696166;
          }
        }

        else if (v1[v29])
        {
          v50 = 0xE600000000000000;
          v51 = 0x657669746361;
        }

        else
        {
          v50 = 0xE800000000000000;
          v51 = 0x6576697463616E69;
        }

        v71 = v104;
        v72 = sub_1BD123690(v51, v50, &v112);
        v50, v73, v74, v75, v76, v77, v78, v79;
        *(v40 + 4) = v72;
        *(v40 + 12) = 2080;
        v80 = swift_getKeyPath();
        aBlock[0] = v1;
        sub_1BE04B594();
        v80, v81, v82, v83, v84, v85, v86, v87;
        v88 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        v90 = v105;
        v89 = v106;
        v91 = &v1[v88];
        v92 = v107;
        (*(v106 + 16))(v105, v91, v107);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v93 = sub_1BE053B24();
        v95 = v94;
        (*(v89 + 8))(v90, v92);
        v96 = sub_1BD123690(v93, v95, &v112);
        v95, v97, v98, v99, v100, v101, v102, v103;
        *(v40 + 14) = v96;
        _os_log_impl(&dword_1BD026000, v31, v32, "NearbyPeerPayment: DiscoveryMonitor: cannot call invalidate on a session with sessionState: %s; monitorID: %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v41, -1, -1);
        MEMORY[0x1BFB45F20](v40, -1, -1);

        (*(v110 + 8))(v111, v71);
      }

      else
      {

        (*(v110 + 8))(v30, v104);
      }
    }

    else
    {
      v52 = *&v0[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock];
      MEMORY[0x1EEE9AC00](v28);
      *(&v104 - 2) = sub_1BD12362C;
      *(&v104 - 1) = v0;
      os_unfair_lock_lock(v52 + 4);
      sub_1BD12365C();
      os_unfair_lock_unlock(v52 + 4);
      v111 = *&v0[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue];
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = 2;
      aBlock[4] = sub_1BD123684;
      v114 = v54;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_4;
      v55 = _Block_copy(aBlock);
      sub_1BE048964();
      sub_1BE051F74();
      v112 = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v11, v8, v55);
      _Block_release(v55);
      (*(v109 + 8))(v8, v6);
      (*(v108 + 8))(v11, v9);
      v56 = v114;
      v53, v57, v58, v59, v60, v61, v62, v63;
      v56, v64, v65, v66, v67, v68, v69, v70;
    }
  }
}

void sub_1BD118458(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) == 1)
  {
    *(result + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BD118578(uint64_t a1, int a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v72[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v74 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v76 = a2;
    v14 = v7;
    v75 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
    KeyPath = swift_getKeyPath();
    *&v79 = v13;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v23 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
    swift_beginAccess();
    sub_1BD0DE19C(v13 + v23, v11, &qword_1EBD39980, &qword_1BE0BF3C0);
    v24 = swift_getKeyPath();
    *&v79 = v13;
    sub_1BE04B594();
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v13 + v32, &v79);
    v77[0] = v79;
    v77[1] = v80;
    v78 = v81;
    if (*(&v80 + 1) >= 6uLL)
    {
      v33 = 0;
      v34 = 0;
      if (*(&v80 + 1) == 6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v33 = 1;
    }

    sub_1BD11326C(v77);
    v34 = v33;
LABEL_5:
    v73 = v34;
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v76;
    v37 = sub_1BE0528D4();
    (*(*(v37 - 8) + 56))(v5, 1, 1, v37);
    v38 = v74;
    sub_1BD0DE19C(v11, v74, &qword_1EBD39980, &qword_1BE0BF3C0);
    v39 = (*(v14 + 80) + 41) & ~*(v14 + 80);
    v40 = (v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = v75;
    *(v41 + 40) = v73;
    sub_1BD124200(v38, v41 + v39);
    v42 = (v41 + v40);
    *v42 = sub_1BD1265A8;
    v42[1] = v36;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v43 = sub_1BD122C00(0, 0, v5, &unk_1BE0B9610, v41);
    v36, v44, v45, v46, v47, v48, v49, v50;
    v43, v51, v52, v53, v54, v55, v56, v57;
    sub_1BD0DE53C(v11, &qword_1EBD39980, &qword_1BE0BF3C0);
    v35, v58, v59, v60, v61, v62, v63, v64;
    v13, v65, v66, v67, v68, v69, v70, v71;
  }
}

void sub_1BD1189D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock);
    v4 = Strong;
    sub_1BE048964();
    v4, v5, v6, v7, v8, v9, v10, v11;
    v12 = swift_allocObject();
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    swift_weakInit();
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1EEE9AC00](v21);
    MEMORY[0x1EEE9AC00](v22);
    os_unfair_lock_lock(v3 + 4);
    sub_1BD12694C(&v37);
    os_unfair_lock_unlock(v3 + 4);
    v3, v23, v24, v25, v26, v27, v28, v29;
    v12, v30, v31, v32, v33, v34, v35, v36;
  }
}

void sub_1BD118B44(char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v189 = a4;
  v6 = sub_1BE04AFE4();
  v186 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v185 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04D214();
  v187 = *(v8 - 8);
  v188 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v180 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v180 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v180 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = *(Strong + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState);
    if ((a2 & 1) != 0 && a3 == 2)
    {
      if (v25 != 2)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v180 - 2) = v24;
        *(&v180 - 8) = 2;
        v192 = v24;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        v27 = v190;
        sub_1BE04B584();
        v190 = v27;
        KeyPath, v28, v29, v30, v31, v32, v33, v34;
      }

      (*(v186 + 56))(v22, 1, 1, v6);
      sub_1BD115400(v22);
      [*&v24[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_dismissalAssertion] invalidate];
      sub_1BE04D094();
      sub_1BE048964();
      v35 = sub_1BE04D204();
      v36 = sub_1BE052C54();
      v24, v37, v38, v39, v40, v41, v42, v43;
      if (os_log_type_enabled(v35, v36))
      {
        LODWORD(v184) = v36;
        v44 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v193 = v183;
        *v44 = 136315394;
        v45 = swift_getKeyPath();
        v46 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
        v192 = v24;
        v181 = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        v182 = v46;
        sub_1BE04B594();
        v47 = v45;
        v48 = v186;
        v47, v49, v50, v51, v52, v53, v54, v55;
        v56 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
        swift_beginAccess();
        sub_1BD0DE19C(&v24[v56], v19, &qword_1EBD39980, &qword_1BE0BF3C0);
        if ((*(v48 + 48))(v19, 1, v6))
        {
          sub_1BD0DE53C(v19, &qword_1EBD39980, &qword_1BE0BF3C0);
          v57 = 0;
          v58 = 0xE000000000000000;
          v59 = v185;
        }

        else
        {
          v59 = v185;
          (*(v48 + 16))(v185, v19, v6);
          v133 = sub_1BD0DE53C(v19, &qword_1EBD39980, &qword_1BE0BF3C0);
          v134 = MEMORY[0x1BFB38010](v133);
          v58 = v135;
          (*(v48 + 8))(v59, v6);
          v57 = v134;
        }

        v136 = sub_1BD123690(v57, v58, &v193);
        v58, v137, v138, v139, v140, v141, v142, v143;
        *(v44 + 4) = v136;
        *(v44 + 12) = 2080;
        v144 = swift_getKeyPath();
        v191 = v24;
        sub_1BE04B594();
        v144, v145, v146, v147, v148, v149, v150, v151;
        v152 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        (*(v48 + 16))(v59, &v24[v152], v6);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v153 = sub_1BE053B24();
        v155 = v154;
        (*(v48 + 8))(v59, v6);
        v156 = sub_1BD123690(v153, v155, &v193);
        v155, v157, v158, v159, v160, v161, v162, v163;
        *(v44 + 14) = v156;
        _os_log_impl(&dword_1BD026000, v35, v184, "NearbyPeerPayment: DiscoveryMonitor: device discovery ended for session ID: %s; monitorID: %s", v44, 0x16u);
        v164 = v183;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v164, -1, -1);
        MEMORY[0x1BFB45F20](v44, -1, -1);
      }

      (*(v187 + 8))(v13, v188);
    }

    else
    {
      if (v25 != 3)
      {
        v60 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v60);
        *(&v180 - 2) = v24;
        *(&v180 - 8) = 3;
        v192 = v24;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        v61 = v190;
        sub_1BE04B584();
        v190 = v61;
        v60, v62, v63, v64, v65, v66, v67, v68;
      }

      sub_1BE04D094();
      sub_1BE048964();
      v69 = sub_1BE04D204();
      v70 = sub_1BE052C34();
      v24, v71, v72, v73, v74, v75, v76, v77;
      if (os_log_type_enabled(v69, v70))
      {
        LODWORD(v183) = v70;
        v184 = v69;
        v78 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v193 = v182;
        *v78 = 136315394;
        v79 = swift_getKeyPath();
        v80 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
        v192 = v24;
        sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
        v181 = v80;
        sub_1BE04B594();
        v79, v81, v82, v83, v84, v85, v86, v87;
        v88 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
        swift_beginAccess();
        sub_1BD0DE19C(&v24[v88], v16, &qword_1EBD39980, &qword_1BE0BF3C0);
        v89 = v186;
        if ((*(v186 + 48))(v16, 1, v6))
        {
          sub_1BD0DE53C(v16, &qword_1EBD39980, &qword_1BE0BF3C0);
          v90 = 0;
          v91 = 0xE000000000000000;
          v92 = v185;
        }

        else
        {
          v92 = v185;
          (*(v89 + 16))(v185, v16, v6);
          v93 = sub_1BD0DE53C(v16, &qword_1EBD39980, &qword_1BE0BF3C0);
          v94 = MEMORY[0x1BFB38010](v93);
          v91 = v95;
          (*(v89 + 8))(v92, v6);
          v90 = v94;
        }

        v96 = sub_1BD123690(v90, v91, &v193);
        v91, v97, v98, v99, v100, v101, v102, v103;
        *(v78 + 4) = v96;
        *(v78 + 12) = 2080;
        v104 = swift_getKeyPath();
        v191 = v24;
        sub_1BE04B594();
        v104, v105, v106, v107, v108, v109, v110, v111;
        v112 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
        swift_beginAccess();
        (*(v89 + 16))(v92, &v24[v112], v6);
        sub_1BD113E88(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v113 = sub_1BE053B24();
        v115 = v114;
        (*(v89 + 8))(v92, v6);
        v116 = sub_1BD123690(v113, v115, &v193);
        v115, v117, v118, v119, v120, v121, v122, v123;
        *(v78 + 14) = v116;
        v124 = v184;
        _os_log_impl(&dword_1BD026000, v184, v183, "NearbyPeerPayment: DiscoveryMonitor: Failed to cancel discovery with session ID: %s; monitorID: %s", v78, 0x16u);
        v125 = v182;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v125, -1, -1);
        MEMORY[0x1BFB45F20](v78, -1, -1);
      }

      else
      {
      }

      (*(v187 + 8))(v10, v188);
    }

    if (v24[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating])
    {
      v165 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v165);
      *(&v180 - 2) = v24;
      *(&v180 - 8) = 0;
      v193 = v24;
      sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
      sub_1BE04B584();
      v24, v166, v167, v168, v169, v170, v171, v172;
      v165, v173, v174, v175, v176, v177, v178, v179;
    }

    else
    {
      v24[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating] = 0;
      v24, v126, v127, v128, v129, v130, v131, v132;
    }
  }

  *v189 = 0;
}

uint64_t sub_1BD119750()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
  v9 = [v8 account];

  sub_1BE04DF34();
  v17 = v10;
  if (v9)
  {
    if ([v9 role] == 1 && objc_msgSend(v9, sel_sendRestrictionType) == 2 && !v17)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v31 = sub_1BE052D54();
      v19 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1BD1241B0;
      v33 = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_39;
      v30 = _Block_copy(aBlock);
      v33, v20, v21, v22, v23, v24, v25, v26;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v29[1] = sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BE053664();
      v28 = v30;
      v27 = v31;
      MEMORY[0x1BFB3FDF0](0, v7, v3, v30);
      _Block_release(v28);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
      return 0;
    }
  }

  v17, v10, v11, v12, v13, v14, v15, v16;
  return 1;
}

void sub_1BD119AE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    memset(v10, 0, sizeof(v10));
    v11 = xmmword_1BE0B8E00;
    sub_1BD114CC8(v10);
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

id sub_1BD119B58@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v169) = a2;
  v168 = a1;
  v170 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v167 = &v155 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v166 = &v155 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v163 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v164 = v10;
  v165 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v155 - v12;
  v13 = sub_1BE051F54();
  v161 = *(v13 - 8);
  v162 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1BE051FA4();
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v155 - v21;
  KeyPath = swift_getKeyPath();
  aBlock[0] = v3;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v31 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  result = [*(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) peerPaymentQuote];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = [result validUntil];

  if (v34)
  {
    sub_1BE04AEE4();

    v35 = v22;
    sub_1BE04AEF4();
    v36 = sub_1BE04AE74();
    v37 = (v17 + 8);
    v156 = *(v17 + 8);
    v156(v19, v16);
    if (v36)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v38 = sub_1BE052D54();
      v39 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1BD1241DC;
      v173 = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_47;
      v40 = _Block_copy(aBlock);
      v173, v41, v42, v43, v44, v45, v46, v47;
      v48 = v157;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v168 = v16;
      v169 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      v167 = v37;
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
      v49 = v159;
      v50 = v162;
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v48, v49, v40);
      _Block_release(v40);

      (*(v161 + 8))(v49, v50);
      (*(v158 + 8))(v48, v160);
      v51 = *(v4 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession);
      v52 = swift_getKeyPath();
      aBlock[0] = v4;
      sub_1BE04B594();
      v52, v53, v54, v55, v56, v57, v58, v59;
      v60 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID;
      swift_beginAccess();
      v61 = v171;
      sub_1BD0DE19C(v4 + v60, v171, &qword_1EBD39980, &qword_1BE0BF3C0);
      v62 = sub_1BE0528D4();
      v63 = v166;
      (*(*(v62 - 8) + 56))(v166, 1, 1, v62);
      v64 = v165;
      sub_1BD0DE19C(v61, v165, &qword_1EBD39980, &qword_1BE0BF3C0);
      v65 = (*(v163 + 80) + 41) & ~*(v163 + 80);
      v66 = (v164 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      *(v67 + 32) = v51;
      *(v67 + 40) = 1;
      sub_1BD124200(v64, v67 + v65);
      v68 = (v67 + v66);
      *v68 = sub_1BD11E07C;
      v68[1] = 0;
      sub_1BE048964();
      v69 = sub_1BD122C00(0, 0, v63, &unk_1BE0B9038, v67);
      v69, v70, v71, v72, v73, v74, v75, v76;
      sub_1BD0DE53C(v61, &qword_1EBD39980, &qword_1BE0BF3C0);
      v156(v169, v168);
      v77 = sub_1BE04C4C4();
      return (*(*(v77 - 8) + 56))(v170, 1, 1, v77);
    }

    v156(v35, v16);
  }

  v78 = v16;
  v79 = sub_1BE04AFE4();
  v80 = *(v79 - 8);
  v81 = v171;
  (*(v80 + 16))(v171, v168, v79);
  (*(v80 + 56))(v81, 0, 1, v79);
  sub_1BD115400(v81);
  v82 = swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();
  v82, v83, v84, v85, v86, v87, v88, v89;
  aBlock[0] = v4;
  v90 = swift_getKeyPath();
  sub_1BE04B5B4();
  v90, v91, v92, v93, v94, v95, v96, v97;
  v98 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  swift_beginAccess();
  sub_1BE04C414();
  swift_endAccess();
  aBlock[0] = v4;
  v99 = swift_getKeyPath();
  sub_1BE04B5A4();
  v99, v100, v101, v102, v103, v104, v105, v106;
  v107 = swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();
  v107, v108, v109, v110, v111, v112, v113, v114;
  result = [*(v4 + v31) peerPaymentQuote];
  if (!result)
  {
    goto LABEL_13;
  }

  v115 = result;
  v116 = [result validUntil];

  v117 = v167;
  if (v116)
  {
    sub_1BE04AEE4();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  (*(v17 + 56))(v117, v118, 1, v78);
  v119 = swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();
  v119, v120, v121, v122, v123, v124, v125, v126;
  aBlock[0] = v4;
  v127 = swift_getKeyPath();
  sub_1BE04B5B4();
  v127, v128, v129, v130, v131, v132, v133, v134;
  swift_beginAccess();
  sub_1BE04C444();
  swift_endAccess();
  aBlock[0] = v4;
  v135 = swift_getKeyPath();
  sub_1BE04B5A4();
  v135, v136, v137, v138, v139, v140, v141, v142;
  v143 = swift_getKeyPath();
  aBlock[0] = v4;
  sub_1BE04B594();
  v143, v144, v145, v146, v147, v148, v149, v150;
  v151 = sub_1BE04C4C4();
  v152 = *(v151 - 8);
  v153 = v4 + v98;
  v154 = v170;
  (*(v152 + 16))(v170, v153, v151);
  return (*(v152 + 56))(v154, 0, 1, v151);
}

void sub_1BD11A6C4(uint64_t a1, unsigned int *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1BE04B7C4();
    v14[3] = v5;
    v14[4] = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7ED8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *a2, v5);
    sub_1BD114CC8(v14);
    v4, v7, v8, v9, v10, v11, v12, v13;
  }
}

void sub_1BD11A7AC(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04DF14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69CDD48])
  {
    (*(v9 + 96))(v11, v8);
    if ((*v11 & 1) == 0)
    {
      v13 = sub_1BE04B784();
      v39 = v13;
      v40 = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88], MEMORY[0x1E69B7E80]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      (*(*(v13 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7E68], v13);
      sub_1BD1243D0(aBlock, v12 + 16);
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v15 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  v40 = sub_1BD1243C8;
  v41 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  v39 = &block_descriptor_65;
  v18 = _Block_copy(aBlock);
  v19 = v41;
  sub_1BE048964();
  v19, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v4, v18);
  _Block_release(v18);

  (*(v37 + 8))(v4, v2);
  (*(v35 + 8))(v7, v36);
  v12, v27, v28, v29, v30, v31, v32, v33;
}

void sub_1BD11AC80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    sub_1BD113234(a2 + 16, v12);
    sub_1BD114CC8(v12);
    v4, v5, v6, v7, v8, v9, v10, v11;
  }
}

void *sub_1BD11AD3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1BD11329C(a2, &v51);
    if (*(&v52 + 1) == 7)
    {
      v4, v5, v6, v7, v8, v9, v10, v11;
      return sub_1BD0DE53C(&v51, &qword_1EBD39AB0, &qword_1BE0B95C8);
    }

    v59[0] = v51;
    v59[1] = v52;
    v60 = v53;
    KeyPath = swift_getKeyPath();
    *&v51 = v4;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
    v20 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v4 + v20, &v56);
    v51 = v56;
    v52 = v57;
    v53 = v58;
    sub_1BD113234(v59, v54);
    if (*(&v52 + 1) <= 2)
    {
      if (*(&v52 + 1))
      {
        if (*(&v52 + 1) == 1)
        {
          if (v55 == 1)
          {
            goto LABEL_30;
          }
        }

        else if (*(&v52 + 1) == 2 && v55 == 2)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v55)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (*(&v52 + 1) <= 4)
      {
        if (*(&v52 + 1) == 3)
        {
          if (v55 == 3)
          {
            goto LABEL_30;
          }
        }

        else if (v55 == 4)
        {
          goto LABEL_30;
        }

LABEL_19:
        sub_1BD0DE53C(&v51, &qword_1EBD398E0, &qword_1BE0B8E80);
        v28 = swift_getKeyPath();
        *&v56 = v4;
        sub_1BE04B594();
        v28, v29, v30, v31, v32, v33, v34, v35;
        sub_1BD113234(v4 + v20, &v51);
        v56 = v51;
        v57 = v52;
        v58 = v53;
        if (*(&v52 + 1) < 6uLL)
        {
          sub_1BD11326C(&v56);
          sub_1BD113234(v59, &v51);
          memset(v54, 0, sizeof(v54));
          v55 = xmmword_1BE0B8E10;
          if (*(&v52 + 1) == 6)
          {
            sub_1BD11326C(&v51);
            sub_1BD11E1B0();
          }

          else
          {
            sub_1BD0DE53C(&v51, &qword_1EBD398E0, &qword_1BE0B8E80);
          }

          sub_1BD113234(v59, &v51);
          sub_1BD114CC8(&v51);
          v4, v43, v44, v45, v46, v47, v48, v49;
          return sub_1BD11326C(v59);
        }

        if (*(&v52 + 1) == 6)
        {
          v4, v36, v37, v38, v39, v40, v41, v42;
          return sub_1BD11326C(v59);
        }

        v4, v36, v37, v38, v39, v40, v41, v42;
        v50 = &v56;
LABEL_31:
        sub_1BD11326C(v50);
        return sub_1BD11326C(v59);
      }

      if (*(&v52 + 1) != 5)
      {
        if (*(&v52 + 1) == 6 && v55 == 6)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v55 != 5)
      {
        goto LABEL_19;
      }
    }

LABEL_30:
    v4, v21, v22, v23, v24, v25, v26, v27;
    v50 = &v51;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1BD11B0B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31[1] = a3;
  v7 = sub_1BE051F54();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2)(0, v11);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v31 - v16;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v32 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v17, a1, v14);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  (*(v15 + 32))(&v20[v19], v17, v14);
  aBlock[4] = v33;
  v39 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v34;
  v21 = _Block_copy(aBlock);
  v39, v22, v23, v24, v25, v26, v27, v28;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  v29 = v32;
  MEMORY[0x1BFB3FDF0](0, v13, v9, v21);
  _Block_release(v21);

  (*(v37 + 8))(v9, v7);
  return (*(v35 + 8))(v13, v36);
}

void sub_1BD11B474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1BE04B784();
    v14[3] = v5;
    v14[4] = sub_1BD113E88(&qword_1EBD47890, MEMORY[0x1E69B7E88], MEMORY[0x1E69B7E80]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a2, v5);
    sub_1BD114CC8(v14);
    v4, v7, v8, v9, v10, v11, v12, v13;
  }
}

uint64_t sub_1BD11B55C(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399A0, &qword_1BE0B9048);
  v3[46] = swift_task_alloc();
  v4 = sub_1BE04DC04();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399A8, &unk_1BE0B9050);
  v3[50] = swift_task_alloc();
  v5 = sub_1BE04B884();
  v3[51] = v5;
  v3[52] = *(v5 - 8);
  v3[53] = swift_task_alloc();
  v6 = sub_1BE04D214();
  v3[54] = v6;
  v3[55] = *(v6 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v7 = sub_1BE04B674();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD11B7B0, 0, 0);
}

uint64_t sub_1BD11B7B0()
{
  v53 = v0;
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  sub_1BE04C524();
  (*(v2 + 104))(v1, *MEMORY[0x1E69B7E60], v3);
  v4 = MEMORY[0x1E69B82E8];
  sub_1BD113E88(&qword_1EBD399B0, MEMORY[0x1E69B82E8], MEMORY[0x1E69B82F8]);
  sub_1BD113E88(&qword_1EBD399B8, v4, MEMORY[0x1E69B82F0]);
  sub_1BE04B664();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 288);
  *(v0 + 488) = v5;
  if (v5)
  {
    swift_weakInit();
    sub_1BE0528A4();
    v6 = v5;
    *(v0 + 496) = sub_1BE052894();
    v7 = sub_1BE052844();
    v9 = v8;
    v10 = sub_1BD11BCBC;
  }

  else
  {
    sub_1BE04D094();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "NearbyPeerPayment: failed to initialize receiver metadata", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v0 + 456);
    v15 = *(v0 + 432);
    v16 = *(v0 + 440);

    (*(v16 + 8))(v14, v15);
    v17 = sub_1BE04B7C4();
    sub_1BD113E88(&unk_1EBD399C0, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7EE8]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69B7ED0], v17);
    swift_willThrow();
    *(v0 + 544) = v18;
    *(v0 + 296) = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
    if (swift_dynamicCast())
    {

      sub_1BD043990((v0 + 16), v0 + 96);
      swift_weakInit();
      sub_1BE0528A4();
      *(v0 + 560) = sub_1BE052894();
      v7 = sub_1BE052844();
      v9 = v21;
      v10 = sub_1BD11C104;
    }

    else
    {

      sub_1BE04D094();
      v22 = v18;
      v23 = sub_1BE04D204();
      v24 = sub_1BE052C34();

      v25 = os_log_type_enabled(v23, v24);
      v27 = *(v0 + 440);
      v26 = *(v0 + 448);
      v28 = *(v0 + 432);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v52 = v30;
        *v29 = 136315138;
        *(v0 + 312) = v18;
        v31 = v18;
        v32 = sub_1BE0524A4();
        v34 = v33;
        v35 = sub_1BD123690(v32, v33, &v52);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v29 + 4) = v35;
        _os_log_impl(&dword_1BD026000, v23, v24, "NearbyPeerPayment: failed with undefined error: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30, v43, v44, v45, v46, v47, v48, v49);
        MEMORY[0x1BFB45F20](v30, -1, -1);
        MEMORY[0x1BFB45F20](v29, -1, -1);
      }

      (*(v27 + 8))(v26, v28);
      swift_weakInit();
      sub_1BE0528A4();
      *(v0 + 568) = sub_1BE052894();
      v7 = sub_1BE052844();
      v9 = v50;
      v10 = sub_1BD11C4E4;
    }
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1BD11BCBC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v31 = v8;
  *(v8 + 496), a2, a3, a4, a5, a6, a7, a8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1BE04C504();
    sub_1BD115AE0(v11, v12, v13, v14, v15, v16, v17, v18);
    v19 = sub_1BE04C514();
    sub_1BD115DD4(v19, v20);
    memset(v29, 0, sizeof(v29));
    v30 = xmmword_1BE0B8E20;
    sub_1BD114CC8(v29);
    v10, v21, v22, v23, v24, v25, v26, v27;
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11BDA0, 0, 0);
}

uint64_t sub_1BD11BDA0()
{
  v1 = v0[45];
  sub_1BE04C184();
  KeyPath = swift_getKeyPath();
  v0[42] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  v0[63] = v10;
  v16 = (*MEMORY[0x1E69B8278] + MEMORY[0x1E69B8278]);
  v11 = v10;
  v12 = swift_task_alloc();
  v0[64] = v12;
  *v12 = v0;
  v12[1] = sub_1BD11BEF4;
  v13 = v0[43];
  v14 = v0[44];

  return v16(v11, v13, v14, 0);
}

uint64_t sub_1BD11BEF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v7 = sub_1BD11C6D4;
  }

  else
  {

    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v7 = sub_1BD11C034;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BD11C034()
{
  v1 = v0[61];

  v2 = v0[1];
  v3 = v0[67];
  v4 = v0[66];

  return v2(v3, v4);
}

uint64_t sub_1BD11C104(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 560), a2, a3, a4, a5, a6, a7, a8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1BD0EE8CC(v8 + 96, v8 + 136);
    sub_1BD114CC8(v8 + 136);
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11C1B4, 0, 0);
}

uint64_t sub_1BD11C1B4()
{
  v1 = *(v0 + 416);
  sub_1BD0EE8CC(v0 + 96, v0 + 176);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if ((v2 & 1) == 0)
  {
    v15 = *(v0 + 400);
    v3(v15, 1, 1, *(v0 + 408));
    v16 = &qword_1EBD399A8;
    v17 = &unk_1BE0B9050;
    goto LABEL_5;
  }

  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v10 = *(v0 + 368);
  v3(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
  sub_1BE04B864();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v14 = *(v0 + 408);
  if (v11 == 1)
  {
    v15 = *(v0 + 368);
    (*(v13 + 8))(*(v0 + 424), *(v0 + 408));
    v16 = &qword_1EBD399A0;
    v17 = &qword_1BE0B9048;
LABEL_5:
    sub_1BD0DE53C(v15, v16, v17);
    v18 = *(v0 + 408);
    v19 = *(v0 + 416);
    sub_1BD113E88(&unk_1EBD399E0, MEMORY[0x1E69B7F50], MEMORY[0x1E69B7F58]);
    swift_allocError();
    (*(v19 + 104))(v20, *MEMORY[0x1E69B7F40], v18);
    swift_willThrow();
    goto LABEL_7;
  }

  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v30 = *(v0 + 376);
  (*(v29 + 32))(v28, *(v0 + 368), v30);
  sub_1BD113E88(&qword_1EBD478A0, MEMORY[0x1E69CDB60], MEMORY[0x1E69CDB68]);
  swift_allocError();
  (*(v29 + 16))(v31, v28, v30);
  swift_willThrow();
  (*(v29 + 8))(v28, v30);
  (*(v13 + 8))(v12, v14);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0((v0 + 96), v21, v22, v23, v24, v25, v26, v27);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1BD11C4E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 568), a2, a3, a4, a5, a6, a7, a8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1BE04B7C4();
    *(v8 + 80) = v11;
    *(v8 + 88) = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7ED8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 56));
    (*(*(v11 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7ED0], v11);
    sub_1BD114CC8(v8 + 56);
    v10, v13, v14, v15, v16, v17, v18, v19;
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1BD11C610, 0, 0);
}

uint64_t sub_1BD11C610(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1BD11C6D4()
{
  v39 = v0;
  v1 = *(v0 + 488);

  v2 = *(v0 + 520);
  *(v0 + 544) = v2;
  *(v0 + 296) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD399D0, &qword_1BE0B9060);
  if (swift_dynamicCast())
  {

    sub_1BD043990((v0 + 16), v0 + 96);
    swift_weakInit();
    sub_1BE0528A4();
    *(v0 + 560) = sub_1BE052894();
    v4 = sub_1BE052844();
    v6 = v5;
    v7 = sub_1BD11C104;
  }

  else
  {

    sub_1BE04D094();
    v8 = v2;
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v14 = *(v0 + 432);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315138;
      *(v0 + 312) = v2;
      v17 = v2;
      v18 = sub_1BE0524A4();
      v20 = v19;
      v21 = sub_1BD123690(v18, v19, &v38);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v15 + 4) = v21;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: failed with undefined error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16, v29, v30, v31, v32, v33, v34, v35);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    swift_weakInit();
    sub_1BE0528A4();
    *(v0 + 568) = sub_1BE052894();
    v4 = sub_1BE052844();
    v6 = v36;
    v7 = sub_1BD11C4E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

void sub_1BD11C988(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE04B5B4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  swift_beginAccess();
  sub_1BE04C484();
  swift_endAccess();
  v17 = swift_getKeyPath();
  sub_1BE04B5A4();
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD11CAC8(uint64_t (**a1)())
{
  v128 = a1;
  v136 = sub_1BE051F54();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BE051FA4();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051F44();
  v127 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v126 = (&v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v122 = (&v118 - v7);
  v125 = sub_1BE051FC4();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v10;
  v11 = sub_1BE052DC4();
  v120 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BE04D214();
  v13 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v17 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  aBlock = v1;
  v18 = sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v138 = v1;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1BE052E04();
    swift_unknownObjectRelease();
  }

  v26 = swift_getKeyPath();
  v27 = v138;
  aBlock = v138;
  v130 = v17;
  v129 = v18;
  sub_1BE04B594();
  v26, v28, v29, v30, v31, v32, v33, v34;
  v35 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v27 + v35, v148);
  sub_1BE04D094();
  sub_1BD113234(v148, &aBlock);
  v36 = sub_1BE04D204();
  v37 = sub_1BE052C54();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v118 = v4;
    v40 = v11;
    v41 = v39;
    *&v145 = v39;
    *v38 = 136315138;
    v42 = NearbyPeerPaymentSenderState.description.getter();
    v44 = v43;
    sub_1BD11326C(&aBlock);
    v45 = sub_1BD123690(v42, v44, &v145);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v38 + 4) = v45;
    _os_log_impl(&dword_1BD026000, v36, v37, "NearbyPeerPayment: starting timer for state: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41, v53, v54, v55, v56, v57, v58, v59);
    v60 = v41;
    v11 = v40;
    v4 = v118;
    MEMORY[0x1BFB45F20](v60, -1, -1);
    MEMORY[0x1BFB45F20](v38, -1, -1);
  }

  else
  {

    sub_1BD11326C(&aBlock);
  }

  (*(v13 + 8))(v15, v137);
  sub_1BD0E5E8C(0, &unk_1EBD39A90, 0x1E69E9630);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v61 = sub_1BE052D54();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
  sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0, &qword_1BE0B95A0);
  v62 = v119;
  sub_1BE053664();
  v137 = sub_1BE052DD4();

  (*(v120 + 8))(v62, v11);
  ObjectType = swift_getObjectType();
  v64 = v121;
  sub_1BE051FB4();
  v65 = v122;
  *v122 = v128;
  v66 = v127;
  (*(v127 + 104))(v65, *MEMORY[0x1E69E7F48], v4);
  v67 = v123;
  MEMORY[0x1BFB3F070](v64, v65);
  v68 = *(v66 + 8);
  v68(v65, v4);
  v69 = *(v124 + 8);
  v70 = v125;
  v69(v64, v125);
  v71 = ObjectType;
  v120 = ObjectType;
  sub_1BD85BB68(v65);
  v72 = v126;
  sub_1BD85BBDC(v126);
  MEMORY[0x1BFB3FF60](v67, v65, v72, v71);
  v68(v72, v4);
  v68(v65, v4);
  v69(v67, v70);
  v73 = swift_allocObject();
  swift_weakInit();
  sub_1BD113234(v148, &v145);
  v74 = swift_allocObject();
  v75 = v146;
  *(v74 + 24) = v145;
  *(v74 + 16) = v73;
  *(v74 + 40) = v75;
  *(v74 + 56) = v147;
  v143 = sub_1BD126078;
  v144 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v140 = 1107296256;
  v128 = &v141;
  v141 = sub_1BD126964;
  v142 = &block_descriptor_209;
  v76 = _Block_copy(&aBlock);
  sub_1BE048964();
  v77 = v131;
  v78 = v120;
  sub_1BD85BC54(v120);
  v79 = v134;
  sub_1BD56AC68();
  sub_1BE052DE4();
  _Block_release(v76);
  v135 = *(v135 + 8);
  v80 = v136;
  (v135)(v79, v136);
  v132 = *(v132 + 8);
  v81 = v133;
  (v132)(v77, v133);
  v82 = v144;
  v73, v83, v84, v85, v86, v87, v88, v89;
  v82, v90, v91, v92, v93, v94, v95, v96;
  sub_1BD113234(v148, &v145);
  v97 = swift_allocObject();
  v98 = v146;
  *(v97 + 16) = v145;
  *(v97 + 32) = v98;
  *(v97 + 48) = v147;
  v143 = sub_1BD1260C8;
  v144 = v97;
  aBlock = MEMORY[0x1E69E9820];
  v140 = 1107296256;
  v141 = sub_1BD126964;
  v142 = &block_descriptor_215;
  v99 = _Block_copy(&aBlock);
  sub_1BD56AC64(v78);
  sub_1BD56AC68();
  v100 = v137;
  sub_1BE052DF4();
  _Block_release(v99);
  (v135)(v79, v80);
  (v132)(v77, v81);
  v144, v101, v102, v103, v104, v105, v106, v107;
  sub_1BE052E14();
  v108 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v108);
  v109 = v138;
  *(&v118 - 2) = v138;
  *(&v118 - 1) = v100;
  aBlock = v109;
  sub_1BE04B584();
  v108, v110, v111, v112, v113, v114, v115, v116;
  swift_unknownObjectRelease();
  return sub_1BD11326C(v148);
}

void sub_1BD11D690(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BE04D094();
    sub_1BD113234(a2, v55);
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54[0] = v12;
      *v11 = 136315138;
      v13 = NearbyPeerPaymentSenderState.description.getter();
      v15 = v14;
      sub_1BD11326C(v55);
      v16 = sub_1BD123690(v13, v15, v54);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&dword_1BD026000, v9, v10, "NearbyPeerPayment: firing timer for state: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12, v24, v25, v26, v27, v28, v29, v30);
      MEMORY[0x1BFB45F20](v12, -1, -1);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    else
    {

      sub_1BD11326C(v55);
    }

    (*(v4 + 8))(v6, v3);
    KeyPath = swift_getKeyPath();
    v55[0] = v8;
    sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B594();
    KeyPath, v32, v33, v34, v35, v36, v37, v38;
    if (*&v8[OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1BE052E04();
      swift_unknownObjectRelease();
    }

    v39 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v39);
    v54[-2] = v8;
    v54[-1] = 0;
    v55[0] = v8;
    sub_1BE04B584();
    v39, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD11DB9C();
    v8, v47, v48, v49, v50, v51, v52, v53;
  }
}

uint64_t sub_1BD11D9C4(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE04D094();
  sub_1BD113234(a1, v30);
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v10 = NearbyPeerPaymentSenderState.description.getter();
    v12 = v11;
    sub_1BD11326C(v30);
    v13 = sub_1BD123690(v10, v12, &v29);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BD026000, v6, v7, "NearbyPeerPayment: cancelling timer for state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v21, v22, v23, v24, v25, v26, v27);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {

    sub_1BD11326C(v30);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD11DBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE051FA4();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  v24 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);
  v24, v13, v14, v15, v16, v17, v18, v19;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

void sub_1BD11DE90(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  KeyPath = swift_getKeyPath();
  v29 = v2;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v2 + v11, v33);
  switch(v34)
  {
    case 4:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v28 = xmmword_1BE0B8E40;
      goto LABEL_8;
    case 3:
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v28 = xmmword_1BE0B8E30;
LABEL_8:
      v32 = v28;
      sub_1BD114CC8(&v29);
      goto LABEL_9;
    case 0:
      v19 = sub_1BE04B7C4();
      *&v32 = v19;
      *(&v32 + 1) = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7ED8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      (*(*(v19 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7EA8], v19);
      sub_1BD114CC8(&v29);
      sub_1BD117C74();
LABEL_9:
      v2, v21, v22, v23, v24, v25, v26, v27;
      return;
  }

  v2, v12, v13, v14, v15, v16, v17, v18;
  sub_1BD11326C(v33);
}

uint64_t sub_1BD11E07C()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "NearbyPeerPayment: stopped monitoring due to early tap failure", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1BD11E1B0()
{
  v1 = v0;
  v134 = sub_1BE04C4C4();
  v136 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v3 = v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "NearbyPeerPayment: payment succceeded, updating sent transaction", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  aBlock[0] = v1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  swift_beginAccess();
  v21 = v136;
  v22 = *(v136 + 16);
  v137 = v136 + 16;
  v132 = v20;
  v23 = v3;
  v24 = v3;
  v25 = v134;
  v22(v24, v1 + v20, v134);
  v133 = v22;
  v26 = sub_1BE04C454();
  v130 = v27;
  v131 = v26;
  v136 = *(v21 + 8);
  (v136)(v23, v25);
  v28 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v22(v23, v1 + v20, v25);
  v36 = sub_1BE04C4A4();
  v128 = v37;
  v129 = v36;
  (v136)(v23, v25);
  v38 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE04B594();
  v38, v39, v40, v41, v42, v43, v44, v45;
  v46 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  v135 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  v47 = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BE048C84();
  v127[1] = v12;
  sub_1BE04B594();
  v47, v48, v49, v50, v51, v52, v53, v54;
  v133(v23, v1 + v132, v25);
  v55 = sub_1BE04C3F4();
  (v136)(v23, v25);
  v56 = swift_allocObject();
  v56[2] = 0;
  if (v46)
  {
    v57 = swift_getKeyPath();
    aBlock[0] = v1;
    sub_1BE048C84();
    sub_1BE04B594();
    v57, v58, v59, v60, v61, v62, v63, v64;
    v72 = (v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData);
    v73 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8);
    if (v73 >> 60 == 15)
    {
      v46, v65, v66, v67, v68, v69, v70, v71;
    }

    else
    {
      v74 = *v72;
      v75 = objc_allocWithZone(MEMORY[0x1E69B8FB8]);
      sub_1BD041A38(v74, v73);
      v76 = sub_1BE052404();
      v46, v77, v78, v79, v80, v81, v82, v83;
      v84 = sub_1BE04AAB4();
      v85 = [v75 initWithDisplayName:v76 imageData:v84];

      sub_1BD030220(v74, v73, v86, v87, v88, v89, v90, v91);
      v56[2] = v85;
    }
  }

  v92 = [objc_opt_self() sharedInstance];
  if (v92)
  {
    v93 = v92;
    v95 = v130;
    v94 = v131;
    v137 = sub_1BE052404();
    v96 = v128;
    v97 = v129;
    if (v128)
    {
      sub_1BE048C84();
      v98 = sub_1BE052404();
      v96, v99, v100, v101, v102, v103, v104, v105;
    }

    else
    {
      v98 = 0;
    }

    v106 = v56[2];
    v107 = swift_allocObject();
    v107[2] = v94;
    v107[3] = v95;
    v107[4] = v97;
    v107[5] = v96;
    v107[6] = v56;
    v107[7] = v55;
    v107[8] = v135;
    v107[9] = v46;
    aBlock[4] = sub_1BD125FE8;
    v139 = v107;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD3F08C0;
    aBlock[3] = &block_descriptor_190;
    v108 = _Block_copy(aBlock);
    v109 = v139;
    v110 = v106;
    sub_1BE048964();
    v111 = v55;
    v109, v112, v113, v114, v115, v116, v117, v118;
    v119 = v137;
    [v93 insertOrUpdateDeviceOriginatedNearbyPeerPaymentTransactionWithIdentifier:v137 memo:v98 counterpartAppearanceData:v110 completion:v108];
    _Block_release(v108);

    v56, v120, v121, v122, v123, v124, v125, v126;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD11E80C(int a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v90 = a8;
  v86 = a4;
  v88 = a1;
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D094();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048C84();
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C54();
  a6, v20, v21, v22, v23, v24, v25, v26;
  a5, v27, v28, v29, v30, v31, v32, v33;
  a3, v34, v35, v36, v37, v38, v39, v40;
  v87 = v19;
  v41 = os_log_type_enabled(v18, v19);
  v89 = a2;
  if (v41)
  {
    v82 = v18;
    v42 = v15;
    v85 = a7;
    v43 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v91 = v83;
    *v43 = 136315906;
    v84 = a3;
    *(v43 + 4) = sub_1BD123690(a2, a3, &v91);
    *(v43 + 12) = 2080;
    if (a5)
    {
      v44 = v86;
    }

    else
    {
      v44 = 0;
    }

    v45 = 0xE000000000000000;
    if (a5)
    {
      v46 = a5;
    }

    else
    {
      v46 = 0xE000000000000000;
    }

    sub_1BE048C84();
    v47 = sub_1BD123690(v44, v46, &v91);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v43 + 14) = v47;
    *(v43 + 22) = 2080;
    swift_beginAccess();
    v55 = a6[2];
    if (v55)
    {
      v56 = [v55 description];
      v57 = sub_1BE052434();
      v45 = v58;
    }

    else
    {
      v57 = 0;
    }

    v59 = sub_1BD123690(v57, v45, &v91);
    v45, v60, v61, v62, v63, v64, v65, v66;
    *(v43 + 24) = v59;
    *(v43 + 32) = 2080;
    if (v88)
    {
      v67 = 5457241;
    }

    else
    {
      v67 = 20302;
    }

    if (v88)
    {
      v68 = 0xE300000000000000;
    }

    else
    {
      v68 = 0xE200000000000000;
    }

    v69 = sub_1BD123690(v67, v68, &v91);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v43 + 34) = v69;
    v77 = v82;
    _os_log_impl(&dword_1BD026000, v82, v87, "NearbyPeerPayment: finished updating sent transaction %s with memo: %s, counterparAppearanceData: %s success: %s", v43, 0x2Au);
    v78 = v83;
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v78, -1, -1);
    MEMORY[0x1BFB45F20](v43, -1, -1);

    (*(v42 + 8))(v17, v14);
    a7 = v85;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v79 = objc_opt_self();
  if ([v79 useMock])
  {
    v80 = a9;
    v81 = sub_1BE052404();
    if (a9)
    {
      v80 = sub_1BE052404();
    }

    [v79 processNearbyPeerPaymentTransactionSuccessWithIdentifier:v81 peerPaymentType:1 amount:a7 counterpartDisplayName:v80];
  }
}

uint64_t NearbyPeerPaymentDiscoveryMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession), v12, v13, v14, v15, v16, v17, v18;
  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID, &qword_1EBD39980, &qword_1BE0BF3C0);

  *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName + 8), v19, v20, v21, v22, v23, v24, v25;
  sub_1BD030220(*(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData), *(v0 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData + 8), v26, v27, v28, v29, v30, v31);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v33 = sub_1BE04B5D4();
  (*(*(v33 - 8) + 8))(v0 + v32, v33);
  return v0;
}

uint64_t NearbyPeerPaymentDiscoveryMonitor.__deallocating_deinit()
{
  NearbyPeerPaymentDiscoveryMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BD11EDB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v12, a1);
}

uint64_t sub_1BD11EE7C()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v10;
}

id sub_1BD11EF60()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);

  return v10;
}

uint64_t sub_1BD11F018()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD11F0E0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD11F1C4(uint64_t **a1))()
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
  v2[4] = sub_1BD11632C(v2);
  return sub_1BD11F238;
}

uint64_t sub_1BD11F23C()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v1 + v10);
}

uint64_t sub_1BD11F340@<X0>(uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a2;
  swift_beginAccess();
  v18 = a3(0);
  return (*(*(v18 - 8) + 16))(a4, v8 + v17, v18);
}

uint64_t sub_1BD11F468(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD11F50C;

  return sub_1BD11B55C(a1, a2);
}

uint64_t sub_1BD11F50C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1BD11F644@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v19 = v4;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a2;
  swift_beginAccess();
  v17 = a3(0);
  return (*(*(v17 - 8) + 16))(a4, v19 + v16, v17);
}

uint64_t sub_1BD11F76C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a3;
  swift_beginAccess();
  v18 = a4(0);
  return (*(*(v18 - 8) + 16))(a5, v8 + v17, v18);
}

uint64_t sub_1BD11F888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1BE04AFE4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.id.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v9 = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20[-2] = v2;
    v20[-1] = a1;
    v20[1] = v2;
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v12, v13, v14, v15, v16, v17, v18;
  }

  return (v10)(a1, v4);
}

uint64_t (*MockNearbyPeerPaymentDiscoveryMonitor.id.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD11FD24;
}

uint64_t sub_1BD11FD80(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE04C4C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v20 = v9;
  v21 = v8;
  v22 = v9;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  return (*(v5 + 8))(v8, v4);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.metadata.setter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1BE04C4C4();
  return (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_1BD120008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t (*MockNearbyPeerPaymentDiscoveryMonitor.metadata.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD1201F8;
}

id MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.getter()
{
  KeyPath = swift_getKeyPath();
  v12 = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v10 = *(v12 + v9);

  return v10;
}

id sub_1BD1202D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v13 = *(v3 + v12);
  *a2 = v13;

  return v13;
}

void MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1BD0E5E8C(0, &qword_1EBD39A30, 0x1E69B8660);
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD120538(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t (*MockNearbyPeerPaymentDiscoveryMonitor.authorizedQuote.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD1206F0;
}

void sub_1BD1206FC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  KeyPath = swift_getKeyPath();
  v33[0] = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v13 = (v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate);
  swift_beginAccess();
  if (*v13)
  {
    v14 = v13[1];
    ObjectType = swift_getObjectType();
    v33[3] = v4;
    v33[4] = &protocol witness table for MockNearbyPeerPaymentDiscoveryMonitor;
    v33[0] = v2;
    v16 = swift_getKeyPath();
    v32[0] = v2;
    swift_unknownObjectRetain();
    sub_1BE048964();
    sub_1BE04B594();
    v16, v17, v18, v19, v20, v21, v22, v23;
    v24 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
    swift_beginAccess();
    sub_1BD113234(v2 + v24, v32);
    (*(v14 + 8))(v33, a1, v32, ObjectType, v14);
    swift_unknownObjectRelease();
    sub_1BD11326C(v32);
    __swift_destroy_boxed_opaque_existential_0(v33, v25, v26, v27, v28, v29, v30, v31);
  }
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.delegate.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.state.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v13 + v11, a1);
}

uint64_t sub_1BD120A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v12, a2);
}

uint64_t sub_1BD120B88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v1 + v3, v18);
  v13 = v18[0];
  v14 = v18[1];
  v15 = v19;
  sub_1BD113234(a1, &v16);
  if (*(&v14 + 1) <= 2)
  {
    if (*(&v14 + 1))
    {
      if (*(&v14 + 1) == 1)
      {
        if (v17 == 1)
        {
          goto LABEL_20;
        }
      }

      else if (*(&v14 + 1) == 2 && v17 == 2)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1BD11326C(&v13);
    sub_1BD113234(a1, &v13);
    sub_1BD113234(v1 + v3, v18);
    swift_beginAccess();
    sub_1BD1263C8(&v13, v1 + v3);
    swift_endAccess();
    sub_1BD1206FC(v18);
    sub_1BD11326C(v18);
    sub_1BD11326C(&v13);
    return sub_1BD11326C(a1);
  }

  if (*(&v14 + 1) > 4)
  {
    if (*(&v14 + 1) != 5)
    {
      if (*(&v14 + 1) == 6 && v17 == 6)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v17 != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (*(&v14 + 1) == 3)
  {
    if (v17 == 3)
    {
      goto LABEL_20;
    }
  }

  else if (v17 == 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1BD0DE53C(&v13, &qword_1EBD398E0, &qword_1BE0B8E80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v13 = v1;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BD11326C(a1);
}

uint64_t sub_1BD120DF8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(_BYTE *))
{
  sub_1BD113234(a2, v10);
  v7 = *a3;
  swift_beginAccess();
  sub_1BD113234(a1 + v7, v9);
  swift_beginAccess();
  sub_1BD1263C8(v10, a1 + v7);
  swift_endAccess();
  a4(v9);
  sub_1BD11326C(v9);
  return sub_1BD11326C(v10);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.receiverName.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v9;
}

uint64_t sub_1BD120F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  a2[1] = v12;
  return sub_1BE048C84();
}

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1BE048C84();
  return a5(v7, v6);
}

void sub_1BD121088(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = (v8 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  v12 = *(v8 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8);
  if (v12)
  {
    if (a2)
    {
      v13 = *v11 == a1 && v12 == a2;
      if (v13 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    a2, v22, v23, v24, v25, v26, v27, v28;
    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v11 = a1;
  v11[1] = a2;

  v12, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BD121204@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  return swift_unknownObjectRetain();
}

void sub_1BD1212D0(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD121480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*MockNearbyPeerPaymentDiscoveryMonitor.delegate.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD121638;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.isDebug.getter()
{
  KeyPath = swift_getKeyPath();
  v11 = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v11 + v9);
}

uint64_t sub_1BD121700@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  result = swift_beginAccess();
  *a2 = *(v3 + v12);
  return result;
}

void MockNearbyPeerPaymentDiscoveryMonitor.isDebug.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }
}

uint64_t (*MockNearbyPeerPaymentDiscoveryMonitor.isDebug.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  KeyPath = swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  swift_beginAccess();
  return sub_1BD121A60;
}

void sub_1BD121A6C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  KeyPath = swift_getKeyPath();
  sub_1BE04B5A4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  free(v3);
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  MockNearbyPeerPaymentDiscoveryMonitor.init()();
  return v0;
}

void MockNearbyPeerPaymentDiscoveryMonitor.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD476F0, &qword_1BE0B9180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1BE04C4C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04AFE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AFD4();
  (*(v13 + 32))(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id, v15, v12);
  sub_1BD0E5E8C(0, &qword_1EBD38840, 0x1E696AB90);
  v16 = sub_1BE053054();
  v17 = sub_1BE052404();
  v18 = PKCurrencyAmountMake();

  if (v18)
  {
    v19 = [objc_allocWithZone(PKPeerPaymentIdentityManager) init];
    v20 = [v19 appearanceData];

    v21 = sub_1BE04AF64();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    sub_1BE04C464();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v22 = *(v9 + 32);
      v22(v11, v7, v8);
      v22((v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata), v11, v8);
      v23 = [objc_allocWithZone(MEMORY[0x1E69B8660]) init];
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v23;
      v24 = v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 32) = 0;
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName) = xmmword_1BE0B8E50;
      v25 = (v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__delegate);
      *v25 = 0;
      v25[1] = 0;
      *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug) = 1;
      sub_1BE04B5C4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MockNearbyPeerPaymentDiscoveryMonitor.advanceToNextState()()
{
  KeyPath = swift_getKeyPath();
  *&v14[0] = v0;
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  sub_1BD113234(v0 + v9, v15);
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        memset(v14, 0, 24);
        v11 = xmmword_1BE0B8DF0;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_11;
        }

        memset(v14, 0, 24);
        v11 = xmmword_1BE0B8E20;
      }
    }

    else
    {
      memset(v14, 0, 24);
      v11 = xmmword_1BE0B8E00;
    }

    *(&v14[1] + 8) = v11;
    goto LABEL_14;
  }

  if ((v16 - 3) >= 3)
  {
    if (v16 == 6)
    {
      v12 = sub_1BE04B7C4();
      *(&v14[1] + 1) = v12;
      *&v14[2] = sub_1BD113E88(&qword_1EBD399D8, MEMORY[0x1E69B7EE0], MEMORY[0x1E69B7ED8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
      (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69B7ED0], v12);
LABEL_14:
      v10 = v14;
      goto LABEL_15;
    }

LABEL_11:
    memset(v14, 0, 40);
    sub_1BD120B88(v14);
    sub_1BD11326C(v15);
    return;
  }

  memset(v15, 0, sizeof(v15));
  v16 = xmmword_1BE0B8E10;
  v10 = v15;
LABEL_15:
  sub_1BD120B88(v10);
}

void MockNearbyPeerPaymentDiscoveryMonitor.updateMetadata(for:)(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE04B5B4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  swift_beginAccess();
  sub_1BE04C484();
  swift_endAccess();
  v17 = swift_getKeyPath();
  sub_1BE04B5A4();
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state);
  *(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8), v5, v6, v7, v8, v9, v10, v11;
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v13 = sub_1BE04B5D4();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t MockNearbyPeerPaymentDiscoveryMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__metadata;
  v4 = sub_1BE04C4C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BD11326C(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state);
  *(v0 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName + 8), v5, v6, v7, v8, v9, v10, v11;
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor___observationRegistrar;
  v13 = sub_1BE04B5D4();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD122518@<X0>(uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a2;
  swift_beginAccess();
  v18 = a3(0);
  return (*(*(v18 - 8) + 16))(a4, v8 + v17, v18);
}

uint64_t sub_1BD12261C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__state;
  swift_beginAccess();
  return sub_1BD113234(v3 + v12, a1);
}

uint64_t sub_1BD1226E4()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__receiverName);
  sub_1BE048C84();
  return v10;
}

id sub_1BD1227C8()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__authorizedQuote;
  swift_beginAccess();
  v11 = *(v1 + v10);

  return v11;
}

uint64_t sub_1BD122894()
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD12295C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD122A40(uint64_t **a1))()
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
  v2[4] = MockNearbyPeerPaymentDiscoveryMonitor.delegate.modify(v2);
  return sub_1BD1269E4;
}

void sub_1BD122AB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1BD122AFC()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  sub_1BD113E88(&qword_1EBD39A10, type metadata accessor for MockNearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for MockNearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI37MockNearbyPeerPaymentDiscoveryMonitor__isDebug;
  swift_beginAccess();
  return *(v1 + v10);
}

uint64_t sub_1BD122C00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v53 - v10;
  sub_1BD0DE19C(a3, v53 - v10, &unk_1EBD3E580, &unk_1BE0B9000);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1BE048964();
  if (v14 == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3E580, &unk_1BE0B9000);
  }

  else
  {
    sub_1BE0528C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = a5[2];
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (v15)
  {
    swift_getObjectType();
    v23 = sub_1BE052844();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1BE0524D4();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;
      sub_1BE048964();
      if (v25 | v23)
      {
        v54[0] = 0;
        v54[1] = 0;
        v28 = v54;
        v54[2] = v23;
        v54[3] = v25;
      }

      else
      {
        v28 = 0;
      }

      v53[1] = 7;
      v53[2] = v28;
      v53[3] = v26 + 32;
      v30 = swift_task_create();
      v26, v31, v32, v33, v34, v35, v36, v37;
      sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
      a2, v38, v39, v40, v41, v42, v43, v44;
      a5, v45, v46, v47, v48, v49, v50, v51;
      return v30;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  if (v25 | v23)
  {
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v23;
    v54[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_1BD122F00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v53 - v10;
  sub_1BD0DE19C(a3, v53 - v10, &unk_1EBD3E580, &unk_1BE0B9000);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1BE048964();
  if (v14 == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3E580, &unk_1BE0B9000);
  }

  else
  {
    sub_1BE0528C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = a5[2];
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (v15)
  {
    swift_getObjectType();
    v23 = sub_1BE052844();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1BE0524D4();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
      v28 = (v25 | v23);
      if (v25 | v23)
      {
        v54[0] = 0;
        v54[1] = 0;
        v28 = v54;
        v54[2] = v23;
        v54[3] = v25;
      }

      v53[1] = 7;
      v53[2] = v28;
      v53[3] = v26 + 32;
      v29 = swift_task_create();
      a5, v30, v31, v32, v33, v34, v35, v36;
      v26, v37, v38, v39, v40, v41, v42, v43;
      sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
      a2, v44, v45, v46, v47, v48, v49, v50;
      return v29;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
  v52 = swift_allocObject();
  *(v52 + 16) = a4;
  *(v52 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970, &qword_1BE0B9540);
  if (v25 | v23)
  {
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v23;
    v54[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_1BD123214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v53 - v10;
  sub_1BD0DE19C(a3, v53 - v10, &unk_1EBD3E580, &unk_1BE0B9000);
  v12 = sub_1BE0528D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1BE048964();
  if (v14 == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3E580, &unk_1BE0B9000);
  }

  else
  {
    sub_1BE0528C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = a5[2];
  swift_unknownObjectRetain();
  a5, v16, v17, v18, v19, v20, v21, v22;
  if (v15)
  {
    swift_getObjectType();
    v23 = sub_1BE052844();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = sub_1BE0524D4();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;
      sub_1BE048964();
      if (v25 | v23)
      {
        v54[0] = 0;
        v54[1] = 0;
        v28 = v54;
        v54[2] = v23;
        v54[3] = v25;
      }

      else
      {
        v28 = 0;
      }

      v53[1] = 7;
      v53[2] = v28;
      v53[3] = v26 + 32;
      v30 = swift_task_create();
      v26, v31, v32, v33, v34, v35, v36, v37;
      sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
      a2, v38, v39, v40, v41, v42, v43, v44;
      a5, v45, v46, v47, v48, v49, v50, v51;
      return v30;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BD0DE53C(a3, &unk_1EBD3E580, &unk_1BE0B9000);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  if (v25 | v23)
  {
    v54[4] = 0;
    v54[5] = 0;
    v54[6] = v23;
    v54[7] = v25;
  }

  return swift_task_create();
}

uint64_t sub_1BD12350C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1BD123690(void *a1, void *a2, uint64_t *a3)
{
  sub_1BE048C84();
  v6 = sub_1BD12375C(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BD038CD0(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v18, v7, v8, v9, v10, v11, v12, v13);
  return v14;
}

unint64_t sub_1BD12375C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BD123868(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BE0538B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1BD123868(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BD1238B4(a1, a2);
  sub_1BD1239E4(qword_1F3B8C7D8);
  return v3;
}

void *sub_1BD1238B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BD1E7848(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BE0538B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BE0525A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BD1E7848(v10, 0);
        result = sub_1BE053814();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1BD1239E4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (result[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1BD123AD0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!result[2])
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v15 + 32], result + 4, v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *(v3 + 2);
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *(v3 + 2) = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_1BD123AD0(char *result, int64_t a2, void *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF90, &qword_1BE0B9608);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * v15 - 64;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

void sub_1BD123BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  if (*(a4 + 48))
  {
    sub_1BE053994();
    __break(1u);
  }

  else
  {
    v11 = sub_1BE0528D4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a4;
    v12[5] = a1;
    v12[6] = &protocol witness table for NearbyPeerPaymentDiscoveryMonitor;
    v12[7] = a2;
    v12[8] = a3;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v13 = sub_1BDA543A4(0, 0, v10, &unk_1BE0B95A8, v12);
    v14 = *(a4 + 48);
    *(a4 + 48) = v13;
    v14, v15, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_1BD123D6C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BD123E60;

  return v5(v2 + 32);
}

uint64_t sub_1BD123E60()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9PassKitUI33NearbyPeerPaymentDiscoveryMonitorC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - v9;
  KeyPath = swift_getKeyPath();
  v32[3] = a1;
  sub_1BD113E88(&qword_1EBD398F0, type metadata accessor for NearbyPeerPaymentDiscoveryMonitor, &protocol conformance descriptor for NearbyPeerPaymentDiscoveryMonitor);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v20 = *(v5 + 16);
  v20(v10, a1 + v19, v4);
  v21 = swift_getKeyPath();
  v32[0] = a2;
  sub_1BE04B594();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id;
  swift_beginAccess();
  v20(v7, a2 + v29, v4);
  LOBYTE(v29) = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v30 = *(v5 + 8);
  v30(v7, v4);
  v30(v10, v4);
  return v29 & 1;
}

uint64_t sub_1BD124200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD124270(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BD126968;

  return sub_1BD2BF964(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t objectdestroy_68Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  *(v1 + 16), v5, v6, v7, v8, v9, v10, v11;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1BD12452C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_1BD1245AC(void *result, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }

    v9 = a2;
    result, a2, a3, a4, a5, a6, a7, a8;
    a2 = v9;
  }

  (a2 & 0x3FFFFFFFFFFFFFFFLL), a2, a3, a4, a5, a6, a7, a8;
}

uint64_t sub_1BD1246F4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI28NearbyPeerPaymentSenderStateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD1247C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD12481C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

double sub_1BD124874(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1BD1249BC(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BE04C4C4();
    if (v2 <= 0x3F)
    {
      sub_1BD12513C(319);
      if (v3 <= 0x3F)
      {
        sub_1BE04B5D4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of NearbyPeerPaymentDiscoveryMonitor.responseMetadataReceived(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 864) + **(*v2 + 864));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BD125004;

  return v8(a1, a2);
}

uint64_t sub_1BD125004(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1BD12513C(uint64_t a1)
{
  if (!qword_1EBD36A28)
  {
    sub_1BE04AFE4();
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD36A28);
    }
  }
}

uint64_t sub_1BD12519C(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04C4C4();
    if (v3 <= 0x3F)
    {
      result = sub_1BE04B5D4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyPeerPaymentDiscoveryMonitor.SessionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyPeerPaymentDiscoveryMonitor.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BD12544C()
{
  result = qword_1EBD39A80;
  if (!qword_1EBD39A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39A80);
  }

  return result;
}

uint64_t sub_1BD1254A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0, &qword_1BE0B9600);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD39980, &qword_1BE0BF3C0);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD39980, &qword_1BE0BF3C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD39980, &qword_1BE0BF3C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD113E88(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD39980, &qword_1BE0BF3C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &unk_1EBD39AD0, &qword_1BE0B9600);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD39980, &qword_1BE0BF3C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD1257C0(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_1BD030394(a1, a2);
      sub_1BD030394(a3, a4);
      v27 = sub_1BD3D8CB4(a1, a2, a3, a4);
      sub_1BD030220(a3, a4, v28, v29, v30, v31, v32, v33);
      sub_1BD030220(a1, a2, v34, v35, v36, v37, v38, v39);
      v14 = !v27;
      return v14 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_1BD030394(a1, a2);
    sub_1BD030394(a3, a4);
    sub_1BD030220(a1, a2, v15, v16, v17, v18, v19, v20);
    sub_1BD030220(a3, a4, v21, v22, v23, v24, v25, v26);
    v14 = 1;
    return v14 & 1;
  }

  sub_1BD030394(a1, a2);
  sub_1BD030394(a3, a4);
  sub_1BD030220(a1, a2, v8, v9, v10, v11, v12, v13);
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1BD1258D4(uint64_t a1, void *a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = sub_1BE04DD64();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052D44();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1BE04AFE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AFD4();
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__id, v13, v10);
  v14 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39A88, &unk_1BE0DA7B0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v2 + v14) = v15;
  v16 = v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__state;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__sessionState) = 0;
  (*(v11 + 56))(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__discoverySessionID, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__updating) = 0;
  v36 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_queue;
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  sub_1BE051F74();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1BD113E88(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
  v17 = v40;
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530);
  sub_1BE053664();
  (*(v38 + 104))(v37, *MEMORY[0x1E69E8090], v39);
  *(v2 + v36) = sub_1BE052D74();
  v18 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_dismissalAssertion;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 acquireAssertion];

  *(v3 + v18) = v20;
  v21 = (v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverName);
  *v21 = 0;
  v21[1] = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData) = xmmword_1BE0B8E60;
  v22 = (v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__delegate);
  *v22 = 0;
  v22[1] = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__isDebug) = 0;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer) = 0;
  sub_1BE04B5C4();
  v23 = OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__metadata;
  v24 = sub_1BE04C4C4();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v3 + v23, v17, v24);
  v26 = v41;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v41;
  type metadata accessor for NearbyPeerPaymentDeviceDiscoverySession(0);
  v27 = swift_allocObject();
  *(v27 + 3) = 0;
  *(v27 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 6) = 0;
  v28 = OBJC_IVAR____TtC9PassKitUI39NearbyPeerPaymentDeviceDiscoverySession_transferID;
  v29 = sub_1BE04E0B4();
  (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
  sub_1BE04DDC4();
  v30 = qword_1EBD36B98;
  v31 = v26;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = v44;
  v33 = __swift_project_value_buffer(v44, qword_1EBD40A58);
  (*(v43 + 16))(v42, v33, v32);
  v34 = sub_1BE04DD74();
  (*(v25 + 8))(v17, v24);
  *(v27 + 2) = v34;
  *(v3 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor_discoverySession) = v27;
  return v3;
}

uint64_t sub_1BD125F30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD123D6C(a1, v4);
}

uint64_t sub_1BD126024(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_57Tm(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (*(v8 + 40) >= 7uLL)
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 16), a2, a3, a4, a5, a6, a7, a8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BD1260E8(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 16) + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__timer) = *(v2 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD12614C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD2BD598(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BD126298()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote);
  *(v1 + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__authorizedQuote) = v2;
  v4 = v2;
}

uint64_t sub_1BD1262D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD126968;

  return sub_1BD123D6C(a1, v4);
}

void sub_1BD126420()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2] + OBJC_IVAR____TtC9PassKitUI33NearbyPeerPaymentDiscoveryMonitor__receiverImageData;
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = v1;
  *(v3 + 8) = v2;
  sub_1BD030394(v1, v2);
  sub_1BD030220(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1BD126498(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  v4 = v3[1];
  *v3 = v1[3];
  v3[1] = v2;
  sub_1BE048C84();
  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD12651C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();
  *(v0 + 32), v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1BE04AFE4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v2, 1, v11))
  {
    (*(v12 + 8))(v0 + v2, v11);
  }

  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v13, v14, v15, v16, v17, v18, v19;

  return swift_deallocObject();
}

uint64_t sub_1BD1266F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BD0F985C;

  return sub_1BD2BF964(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

void *sub_1BD126870@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_1BD126AFC(void (*a1)(void), uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v3 = sub_1BE04BAC4();
  v72 = *(v3 - 8);
  v73 = v3;
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_serviceProviderProducts);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_30:
    v7 = sub_1BE053704();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v77 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1BFB40900](v9, v6, v4);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v12 = [v10 items];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          sub_1BD0E5E8C(0, &qword_1EBD39B80, 0x1E69B87B8);
          v14 = sub_1BE052744();

          if (v14 >> 62)
          {
            if (!sub_1BE053704())
            {
LABEL_5:
              v14, v15, v16, v17, v18, v19, v20, v21;

              goto LABEL_6;
            }
          }

          else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_5;
          }

          if ((v14 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFB40900](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v22 = *(v14 + 32);
          }

          v30 = v22;
          v14, v23, v24, v25, v26, v27, v28, v29;
          v31 = [objc_allocWithZone(PKPaymentSetupServiceProviderProductWithItem) initWithServiceProviderProduct:v11 item:v30];

          if (v31)
          {
            break;
          }

LABEL_6:
          ++v9;
          if (v8 == v7)
          {
            goto LABEL_32;
          }
        }

        MEMORY[0x1BFB3F7A0]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v77 = aBlock[0];
        if (v8 == v7)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v32 = v74;
  v33 = sub_1BE04BBD4();
  v34 = v71;
  sub_1BE04BC34();
  v35 = sub_1BE04B9A4();
  (*(v72 + 8))(v34, v73);
  v36 = *(v32 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v37 = *(v32 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_showOtherProviders);
  v38 = objc_allocWithZone(PKPaymentSetupPurchaseServiceProviderProductItemsViewController);
  sub_1BD0E5E8C(0, qword_1EBD39B88, off_1E8005D20);
  v39 = v77;
  v40 = sub_1BE052724();
  v39, v41, v42, v43, v44, v45, v46, v47;
  v48 = [v38 initWithProvisioningController:v33 context:v35 product:v36 serviceProviderProductWithItems:v40 showOtherProviders:v37];

  v49 = *(v32 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController);
  *(v32 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController) = v48;
  v50 = v48;

  if (v50)
  {
    [v50 setFlowDelegate_];
    sub_1BE052434();
    v52 = v51;
    v53 = sub_1BE04BB74();
    v52, v54, v55, v56, v57, v58, v59, v60;
    [v50 setReporter_];

    aBlock[4] = v75;
    v79 = v76;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD976224;
    aBlock[3] = &block_descriptor_5;
    v61 = _Block_copy(aBlock);
    v62 = v79;
    sub_1BE048964();
    v62, v63, v64, v65, v66, v67, v68, v69;
    [v50 preflightWithCompletion_];
    _Block_release(v61);
  }

  else
  {
    v75(0);
  }
}

uint64_t sub_1BD126FB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD126FF4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD127044()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_viewController);
  v2 = v1;
  return v1;
}

void sub_1BD127074(void *a1, void *a2)
{
  v4 = [a1 purchaseController];
  v5 = [v4 acceptedTerms];

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context);
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v8 = type metadata accessor for ProvisioningCredentialFlowSection();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_identifier];
  *v10 = 0x100000000000001ALL;
  v10[1] = 0x80000001BE1199C0;
  v11 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_dismissalConfiguration] = 2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_provisionedPasses] = 0;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_context] = v6;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_credential] = a2;
  *&v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_product] = v7;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_allowManualEntry] = 0;
  v9[OBJC_IVAR____TtC9PassKitUI33ProvisioningCredentialFlowSection_previouslyAcceptedTerms] = v5;
  v9[v11] = 1;
  v18.receiver = v9;
  v18.super_class = v8;
  v12 = v7;
  sub_1BE048964();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v2 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3B92D58, v14, &off_1F3BCBBE8, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD1273C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_context);
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_product);
  v3 = type metadata accessor for PaymentSetupOtherProvidersFlowItem();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController] = 0;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_identifier];
  *v5 = 0xD000000000000016;
  *(v5 + 1) = 0x80000001BE1199A0;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_context] = v1;
  *&v4[OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product] = v2;
  v11.receiver = v4;
  v11.super_class = v3;
  sub_1BE048964();
  v6 = v2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = v0 + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3B92D58, v7, &off_1F3BAD0E8, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD127524(uint64_t a1)
{
  _s8MerchantVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v2 <= 0x3F)
    {
      sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BD0FA9D0(319);
        if (v4 <= 0x3F)
        {
          sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD127650(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = (v7 + v8) & ~v8;
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v10 = v7 + v9;
  if (v10 <= 0x30)
  {
    v11 = 48;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v13)
  {
    v18 = 7;
  }

  else
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v11 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)) + v16 + 1;
  if (v15 >= a2)
  {
    goto LABEL_38;
  }

  v20 = ((((((v18 + v17 + (v19 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_38:
    if ((v14 & 0x80000000) != 0)
    {
      v30 = (*(*(*(a3 + 16) - 8) + 48))((a1 + v19) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = *(a1 + 1);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    v28 = *a1;
  }

  else
  {
    v28 = 0;
  }

  return v15 + (v28 | v27) + 1;
}

void sub_1BD127880(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  v12 = (v10 + v11) & ~v11;
  if (!*(v9 + 84))
  {
    ++v10;
  }

  v13 = v10 + v12;
  if (v13 <= 0x30)
  {
    v14 = 48;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v15 + 80);
  if (v16)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v14 + ((v11 & 0xF8 ^ 0x1F8u) & (v11 + 16)) + 1;
  if (v16)
  {
    v21 = *(v15 + 64);
  }

  else
  {
    v21 = *(v15 + 64) + 1;
  }

  v22 = ((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v23 = a3 - v19 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v8 = v24;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a2 - v19;
    }

    else
    {
      v25 = 1;
    }

    if (((((((v21 + ((v20 + v17) & ~v17) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v19 + a2;
      bzero(a1, v22);
      *a1 = v26;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v22) = v25;
      }

      else
      {
        *(a1 + v22) = v25;
      }
    }

    else if (v8)
    {
      *(a1 + v22) = v25;
    }

    return;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v8 == 2)
  {
    *(a1 + v22) = 0;
    goto LABEL_44;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v18 & 0x80000000) != 0)
  {
    a1 = ((a1 + v20 + v17) & ~v17);
    if (v18 >= a2)
    {
      v31 = *(v15 + 56);

      v31(a1, a2 + 1);
    }

    else
    {
      if (v21 <= 3)
      {
        v27 = ~(-1 << (8 * v21));
      }

      else
      {
        v27 = -1;
      }

      if (v21)
      {
        v28 = v27 & (~v18 + a2);
        if (v21 <= 3)
        {
          v29 = v21;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v21);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_71:
            *a1 = v28;
            return;
          }

LABEL_61:
          *a1 = v28;
          return;
        }

LABEL_75:
        if (v29 == 3)
        {
          *a1 = v28;
          *(a1 + 2) = BYTE2(v28);
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(a1 + 1) = a2 - 1;
      return;
    }

    if (v20 <= 3)
    {
      v30 = ~(-1 << (8 * v20));
    }

    else
    {
      v30 = 0x7FFFFFFF;
    }

    if (v20)
    {
      v28 = v30 & a2;
      if (v20 <= 3)
      {
        v29 = v20;
      }

      else
      {
        v29 = 4;
      }

      bzero(a1, v20);
      if (v29 <= 2)
      {
        if (v29 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_61;
      }

      goto LABEL_75;
    }
  }
}

void sub_1BD127BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BD127C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for MerchantOriginIconImage(255);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10, &qword_1BE0B9710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  v47 = *(a1 + 16);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v7 = sub_1BD1291DC();
  v8 = sub_1BD129234();
  WitnessTable = swift_getWitnessTable();
  v53 = v4;
  v54 = v5;
  v55 = MEMORY[0x1E6981E70];
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v59 = MEMORY[0x1E6981E60];
  v60 = WitnessTable;
  v10 = sub_1BE04C6F4();
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = swift_getWitnessTable();
  v17 = sub_1BE051754();
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = sub_1BE04F9B4();
  v24 = a1;
  v48 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v45 - v27;
  v28 = (v2 + *(v26 + 44));
  v29 = *v28;
  if (*v28)
  {
    v45 = &v45;
    v30 = v28[1];
    MEMORY[0x1EEE9AC00](v26);
    v32 = *(v31 + 24);
    *(&v45 - 4) = v47;
    *(&v45 - 3) = v32;
    *(&v45 - 2) = v2;
    sub_1BD0D44B8(v29, v30);
    sub_1BE048964();
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308();
    v47 = v25;
    v33 = v16;
    v34 = *(v46 + 8);
    v34(v19, v17);
    sub_1BD147308();
    sub_1BD13A700(v19, v17);
    sub_1BD0D4744(v29, v30, v35, v36, v37, v38, v39, v40);
    v34(v19, v17);
    v34(v22, v17);
    v16 = v33;
    v25 = v47;
  }

  else
  {
    sub_1BD128464(v26, v12);
    sub_1BD147308();
    v41 = *(v45 + 8);
    v41(v12, v10);
    sub_1BD147308();
    swift_getWitnessTable();
    sub_1BD13A7F8(v12, v17, v10);
    v41(v12, v10);
    v41(v15, v10);
  }

  v51 = swift_getWitnessTable();
  v52 = v16;
  v42 = v48;
  swift_getWitnessTable();
  v43 = v50;
  sub_1BD147308();
  return (*(v25 + 8))(v43, v42);
}

uint64_t sub_1BD1281FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MerchantOriginIconImage(255);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10, &qword_1BE0B9710);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051854();
  v8 = sub_1BD1291DC();
  v9 = sub_1BD129234();
  WitnessTable = swift_getWitnessTable();
  v22[0] = v5;
  v22[1] = v6;
  v22[2] = MEMORY[0x1E6981E70];
  v22[3] = v7;
  v22[4] = v8;
  v22[5] = v9;
  v22[6] = MEMORY[0x1E6981E60];
  v22[7] = WitnessTable;
  v11 = sub_1BE04C6F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v19 = type metadata accessor for RecurringPaymentItem(0, a2, a3, v18);
  sub_1BD128464(v19, v14);
  swift_getWitnessTable();
  sub_1BD147308();
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_1BD147308();
  return (v20)(v17, v11);
}

uint64_t sub_1BD128464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_1BE04C624();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04C894();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MerchantOriginIconImage(255);
  v28[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10, &qword_1BE0B9710);
  v28[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  v8 = *(a1 + 16);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v9 = sub_1BE051854();
  v10 = sub_1BD1291DC();
  v28[2] = v10;
  v11 = sub_1BD129234();
  v28[1] = v11;
  WitnessTable = swift_getWitnessTable();
  v45 = v6;
  v46 = v7;
  v47 = MEMORY[0x1E6981E70];
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = MEMORY[0x1E6981E60];
  v52 = WitnessTable;
  v13 = sub_1BE04C6F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - v19;
  v21 = *(a1 + 24);
  v42 = v8;
  v43 = v21;
  v44 = v30;
  v39 = v8;
  v40 = v21;
  v22 = *(v30 + *(a1 + 44));
  v23 = *(v4 + 104);
  v41 = v30;
  v24 = v30;
  if (v22)
  {
    v25 = MEMORY[0x1E69BCA00];
  }

  else
  {
    v25 = MEMORY[0x1E69BC9E8];
  }

  v23(v29, *v25, v31, v18);
  v36 = v8;
  v37 = v21;
  v38 = v24;
  (*(v33 + 104))(v32, *MEMORY[0x1E69BC910], v34);
  sub_1BE04C6C4();
  swift_getWitnessTable();
  sub_1BD147308();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_1BD147308();
  return (v26)(v20, v13);
}

uint64_t sub_1BD128944@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *(a1 + *(type metadata accessor for RecurringPaymentItem(0, a2, a3, a4) + 52));
  v8 = *(_s8MerchantVMa(0) + 20);
  v9 = type metadata accessor for MerchantOriginIconImage(0);
  sub_1BD129504(a1 + v8, &a5[*(v9 + 20)]);
  v11 = *a1;
  v10 = a1[1];
  *a5 = v7;
  v12 = &a5[*(v9 + 24)];
  *v12 = v11;
  v12[1] = v10;

  return sub_1BE048C84();
}

int *sub_1BD1289D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C38, &unk_1BE0B9720);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  if (*(a1 + *(type metadata accessor for RecurringPaymentItem(0, a2, a3, v16) + 48) + 8))
  {
    goto LABEL_4;
  }

  v21[0] = a4;
  v21[1] = 0;
  (*(v9 + 104))(v11, *MEMORY[0x1E69B8068], v8);
  result = PKPassKitBundle();
  if (result)
  {
    v18 = result;
    sub_1BE04B6F4();

    (*(v9 + 8))(v11, v8);
    a4 = v21[0];
LABEL_4:
    sub_1BE048C84();
    sub_1BE048C84();
    sub_1BE051224();
    sub_1BE04C644();
    KeyPath = swift_getKeyPath();
    (*(v13 + 32))(a4, v15, v12);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C10, &qword_1BE0B9710);
    v20 = a4 + result[9];
    *v20 = KeyPath;
    *(v20 + 8) = 2;
    *(v20 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD128C68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v6 = sub_1BE051854();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v14 = type metadata accessor for RecurringPaymentItem(0, a1, a2, v13);
  sub_1BD128E68(v14);
  swift_getWitnessTable();
  sub_1BD147308();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_1BD147308();
  v15(v12, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_1BD128E68(uint64_t a1)
{
  sub_1BE04F7C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  return sub_1BE051844();
}

uint64_t sub_1BD128F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[0] = a4;
  v7 = sub_1BE0534B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v15 = (a1 + *(type metadata accessor for RecurringPaymentItem(0, a2, a3, v14) + 40));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    sub_1BE048C84();
    v18 = sub_1BE0502A4();
    v19 = sub_1BE051234();
    v29 = xmmword_1BE0B9680;
    *&v30 = v17;
    *(&v30 + 1) = v16;
    v20 = MEMORY[0x1E6981568];
    v21 = MEMORY[0x1E69815C0];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    v29 = 0u;
    v30 = 0u;
    v33 = 0;
    v34 = 0;
  }

  v31 = v18;
  v32 = v19;
  v35 = v21;
  v36 = v20;
  v28[2] = a3;
  WitnessTable = swift_getWitnessTable();
  sub_1BD147308();
  sub_1BD129354(&v29, v27);
  v28[0] = v27;
  (*(v8 + 16))(v10, v13, v7);
  v28[1] = v10;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18, &qword_1BE0B9718);
  v26[1] = v7;
  v25[1] = sub_1BD1293C4();
  v25[2] = WitnessTable;
  sub_1BD13A4C4(v28, 2uLL, v26);
  v23 = *(v8 + 8);
  v23(v13, v7);
  sub_1BD12949C(&v29);
  v23(v10, v7);
  return sub_1BD12949C(v27);
}

unint64_t sub_1BD1291DC()
{
  result = qword_1EBD39C20;
  if (!qword_1EBD39C20)
  {
    type metadata accessor for MerchantOriginIconImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C20);
  }

  return result;
}

unint64_t sub_1BD129234()
{
  result = qword_1EBD39C28;
  if (!qword_1EBD39C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C10, &qword_1BE0B9710);
    sub_1BD0DE4F4(&qword_1EBD39C30, &qword_1EBD39C38, &unk_1BE0B9720, MEMORY[0x1E69BC918]);
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C28);
  }

  return result;
}

uint64_t sub_1BD129354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18, &qword_1BE0B9718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1293C4()
{
  result = qword_1EBD39C40;
  if (!qword_1EBD39C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39C18, &qword_1BE0B9718);
    sub_1BD129448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C40);
  }

  return result;
}

unint64_t sub_1BD129448()
{
  result = qword_1EBD39C48;
  if (!qword_1EBD39C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39C48);
  }

  return result;
}

uint64_t sub_1BD12949C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39C18, &qword_1BE0B9718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD129504(uint64_t a1, uint64_t a2)
{
  v4 = _s14MerchantOriginOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}
unint64_t sub_1BD850FFC()
{
  result = qword_1EBD55900;
  if (!qword_1EBD55900)
  {
    type metadata accessor for PeerPaymentGroupRecipientPickerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55900);
  }

  return result;
}

unint64_t sub_1BD8510E8()
{
  result = qword_1EBD55970;
  if (!qword_1EBD55970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD55970);
  }

  return result;
}

uint64_t sub_1BD851150(uint64_t a1)
{
  v2 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD851288(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  v3 = sub_1BE04BAC4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v44 = v2;
  v6 = sub_1BD1882B8(v2, KeyPath);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v21 = v6[2];
  v22 = v6 + 4;
  v50 = 0x80000001BE1182F0;
  v51 = 0x80000001BE118310;
  v48 = 0x80000001BE118260;
  v49 = 0x80000001BE1182A0;
  v47 = "Precursor Education";
  while (2)
  {
    if (v21)
    {
      v23 = 0xEF65636976654420;
      v32 = "fer";
      switch(*v22)
      {
        case 1:
          goto LABEL_13;
        case 2:
          v23 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v23 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v23 = v48;
          goto LABEL_3;
        case 5:
          v32 = v47;
LABEL_13:
          v23 = (v32 | 0x8000000000000000);
          if (0x80000001BE118230 != (v32 | 0x8000000000000000))
          {
            goto LABEL_3;
          }

          v6, v14, v15, v16, v17, v18, v19, v20;
          v6 = v23;
          goto LABEL_27;
        case 6:
          v23 = v49;
          goto LABEL_3;
        case 7:
          v23 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v23 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v23 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v23 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v23 = v50;
          goto LABEL_3;
        case 0xC:
          v23 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v23 = v51;
          goto LABEL_3;
        default:
LABEL_3:
          v24 = sub_1BE053B84();
          v23, v25, v26, v27, v28, v29, v30, v31;
          ++v22;
          --v21;
          if ((v24 & 1) == 0)
          {
            continue;
          }

LABEL_27:
          v6, v14, v15, v16, v17, v18, v19, v20;
          v36 = 0x6F63206775626564;
          v37 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_28;
    }

    break;
  }

  v6, v14, v15, v16, v17, v18, v19, v20;
  v33 = v41;
  sub_1BE04BC34();
  v34 = sub_1BE04B994();
  (*(v42 + 8))(v33, v43);
  if (v34)
  {
    v35 = "is card on file provisioning";
    v36 = 0xD000000000000044;
  }

  else
  {
    if (sub_1BE04BD04())
    {
      v36 = 0;
      v37 = 0;
LABEL_28:
      v38 = 0;
      return v46(v36, v37, 0, v38);
    }

    v35 = "onalExpressSetupFlowItem";
    v36 = 0xD000000000000022;
  }

  v37 = v35 | 0x8000000000000000;
  v38 = 1;
  return v46(v36, v37, 0, v38);
}

id sub_1BD85167C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BBD4();
  v7 = sub_1BE04BC84();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(PKPaymentSetupOptionalExpressModeViewController) initWithProvisioningController:v6 secureElementPass:v7 context:v8];

  [v9 setFlowItemDelegate_];
  sub_1BE052434();
  v11 = v10;
  v12 = sub_1BE04BB74();
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v9 setReporter_];

  return v9;
}

uint64_t sub_1BD851814()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD851850(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningOptionalExpressSetupFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD851A1C(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_precursorUpgradeController) devicePrecursorRequests];
  if (v3)
  {
    v4 = v3;
    sub_1BD851BF8();
    v5 = sub_1BE052744();

    if (a1)
    {
      v5, v6, v7, v8, v9, v10, v11, v12;
      return;
    }

    if (v5 >> 62)
    {
      sub_1BE053704();
      if ((v5 & 0xC000000000000001) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_7:
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v13 = *(v5 + 32);
LABEL_9:
      v21 = v13;
      v5, v14, v15, v16, v17, v18, v19, v20;
      v22 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_context);
      v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_provisionedPasses);
      type metadata accessor for PrecursorPassActionsFlowSection();
      swift_allocObject();
      sub_1BE048964();
      v24 = v23;
      sub_1BD207020(v22, v24, v21);
      v22, v25, v26, v27, v28, v29, v30, v31;

      return;
    }

    v13 = MEMORY[0x1BFB40900](0, v5);
    goto LABEL_9;
  }
}

uint64_t sub_1BD851B70()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD851BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PrecursorPassUpgradeFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1BD851BF8()
{
  result = qword_1EBD55A48[0];
  if (!qword_1EBD55A48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD55A48);
  }

  return result;
}

void sub_1BD851C44(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD85223C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD851CFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BE051AD4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v12 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v12)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v11 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v13 + 40) & ~v13);
    }

    else
    {
      v25 = *(v24 + 8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_1BD851F68(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1BE051AD4() - 8);
  v11 = *(v8 + 64);
  if (*(v10 + 84) <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) == -8)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v13)
      {
        v22 = *(v25 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v23 + v14 + 40) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          v23[1] = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) == -8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + 7) & 0xFFFFFFF8) + ((((v11 + 31) & 0xFFFFFFF8) + v14 + 16) & ~v14) != -8)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void sub_1BD85223C(uint64_t a1)
{
  if (!qword_1EBD4D390)
  {
    sub_1BE051AD4();
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4D390);
    }
  }
}

uint64_t sub_1BD8522D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55AD0, &qword_1BE0FD438);
  v4 = *(a1 + 24);
  sub_1BD0DE4F4(&qword_1EBD55AD8, &qword_1EBD55AD0, &qword_1BE0FD438, MEMORY[0x1E697C5E0]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4D410, &unk_1BE0D2B20);
  sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1BD0DDEBC();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = WitnessTable;
  v27 = v6;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v24 = OpaqueTypeMetadata2;
  v25 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_1BE04E944();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  v19 = v3;
  v20 = v4;
  v21 = v1;
  sub_1BE04E934();
  swift_getWitnessTable();
  sub_1BD147308();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_1BD147308();
  return (v16)(v15, v9);
}

uint64_t sub_1BD852634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a1;
  v77 = a4;
  v6 = sub_1BE04F434();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55AD0, &qword_1BE0FD438);
  v11 = sub_1BD0DE4F4(&qword_1EBD55AD8, &qword_1EBD55AD0, &qword_1BE0FD438, MEMORY[0x1E697C5E0]);
  v83 = a2;
  v84 = v10;
  v85 = a3;
  v86 = v11;
  v12 = v11;
  v57[1] = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v57[0] = v57 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4D410, &unk_1BE0D2B20);
  v14 = sub_1BE04EBD4();
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v67 = v57 - v15;
  v83 = a2;
  v84 = v10;
  v85 = a3;
  v86 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeConformance2;
  v17 = sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410, &unk_1BE0D2B20, MEMORY[0x1E6980A18]);
  v81 = OpaqueTypeConformance2;
  v82 = v17;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BD0DDEBC();
  v83 = v14;
  v84 = MEMORY[0x1E69E6158];
  v58 = v14;
  v20 = MEMORY[0x1E69E6158];
  v85 = WitnessTable;
  v86 = v19;
  v60 = WitnessTable;
  v21 = v19;
  v59 = v19;
  v22 = swift_getOpaqueTypeMetadata2();
  v68 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v61 = v57 - v23;
  v83 = v14;
  v84 = v20;
  v85 = WitnessTable;
  v86 = v21;
  v63 = swift_getOpaqueTypeConformance2();
  v83 = v22;
  v84 = v63;
  v65 = MEMORY[0x1E697D448];
  v24 = swift_getOpaqueTypeMetadata2();
  v66 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v62 = v57 - v28;
  v78 = a2;
  v79 = a3;
  v80 = v69;
  v29 = v69;
  sub_1BE051024();
  KeyPath = swift_getKeyPath();
  v32 = type metadata accessor for EditNavigationView(0, a2, a3, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v33 = v72;
  sub_1BE0516C4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = v67;
  v36 = OpaqueTypeMetadata2;
  v37 = v57[0];
  sub_1BE0508C4();
  KeyPath, v38, v39, v40, v41, v42, v43, v44;
  sub_1BD0DE53C(v33, &qword_1EBD40450, &qword_1BE0D7250);
  (*(v73 + 8))(v37, v36);
  v45 = (v29 + *(v32 + 36));
  v47 = *v45;
  v46 = v45[1];
  v83 = v47;
  v84 = v46;
  v48 = v61;
  v49 = v58;
  sub_1BE050B74();
  (*(v71 + 8))(v35, v49);
  v51 = v74;
  v50 = v75;
  v52 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x1E697C438], v76);
  v53 = v63;
  sub_1BE050E84();
  (*(v50 + 8))(v51, v52);
  (*(v68 + 8))(v48, v22);
  v83 = v22;
  v84 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v62;
  sub_1BD147308();
  v55 = *(v66 + 8);
  v55(v26, v24);
  sub_1BD147308();
  return (v55)(v54, v24);
}

uint64_t sub_1BD852DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v37 = a3;
  v36 = a2;
  v38 = a1;
  v47 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AE0, &qword_1BE0FD470);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v36 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AE8, &qword_1BE0FD478);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v36 - v7;
  v8 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55AF0, &unk_1BE0FD480);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - v10;
  v11 = sub_1BE051AD4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  type metadata accessor for EditNavigationView(0, a2, v4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
  v22 = v38;
  sub_1BE0516C4();
  MEMORY[0x1BFB3E970](v18);
  sub_1BD0DE53C(v20, &qword_1EBD40520, &qword_1BE0D70B0);
  (*(v12 + 104))(v14, *MEMORY[0x1E697D708], v11);
  sub_1BD853FA8(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
  LOBYTE(v4) = sub_1BE052334();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);
  sub_1BE04FAD4();
  v24 = v36;
  v25 = v37;
  v52 = v36;
  v53 = v37;
  v54 = (v4 & 1) == 0;
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B348, &qword_1BE0BC4C0);
  sub_1BD3EC438();
  v26 = v39;
  sub_1BE04E424();
  sub_1BE04FB14();
  v48 = v24;
  v49 = v25;
  v50 = (v4 & 1) == 0;
  v51 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52C10, &unk_1BE0FD490);
  sub_1BD79F5A4();
  v27 = v42;
  sub_1BE04E424();
  v28 = *(v46 + 48);
  v30 = v40;
  v29 = v41;
  v31 = v44;
  (*(v40 + 16))(v44, v26, v41);
  v32 = v43;
  v33 = &v31[v28];
  v34 = v45;
  (*(v43 + 16))(v33, v27, v45);
  sub_1BE04F854();
  (*(v32 + 8))(v27, v34);
  return (*(v30 + 8))(v26, v29);
}

id sub_1BD853354@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a3;
  v73 = a4;
  v8 = sub_1BE051AD4();
  v71 = *(v8 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_1BE04BD74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v65 = &v58 - v26;
  if ((a1 & 1) != 0 && (v27 = v72, v28 = v73, v72 = v24, v73 = v23, v29 = type metadata accessor for EditNavigationView(0, v27, v28, v23), v24 = v72, v23 = v73, *(a2 + *(v29 + 40)) == 1))
  {
    v60 = a2;
    v61 = v8;
    v62 = a5;
    (*(v18 + 104))(v20, *MEMORY[0x1E69B8068], v17, v73);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_1BE04B6F4();
      v34 = v33;

      (*(v18 + 8))(v20, v17);
      v74 = v32;
      v75 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
      v59 = v16;
      sub_1BE0516C4();
      v35 = v71;
      v36 = v68;
      v37 = v61;
      (*(v71 + 104))(v68, *MEMORY[0x1E697D708], v61);
      v38 = v16;
      v39 = v64;
      sub_1BD854000(v38, v64);
      v40 = v69;
      (*(v35 + 16))(v69, v36, v37);
      v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v42 = (v13 + *(v35 + 80) + v41) & ~*(v35 + 80);
      v43 = swift_allocObject();
      sub_1BD0DE204(v39, v43 + v41, &qword_1EBD40520, &qword_1BE0D70B0);
      (*(v35 + 32))(v43 + v42, v40, v37);
      (*(v35 + 8))(v36, v37);
      sub_1BD0DE53C(v59, &qword_1EBD40520, &qword_1BE0D70B0);
      sub_1BD0DDEBC();
      v44 = v66;
      sub_1BE051744();
      sub_1BE052434();
      v46 = v45;
      sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
      v47 = v65;
      v48 = v70;
      sub_1BE050DE4();
      v46, v49, v50, v51, v52, v53, v54, v55;
      (*(v67 + 8))(v44, v48);
      v56 = v62;
      sub_1BD0DE204(v47, v62, &unk_1EBD45200, &qword_1BE0BB900);
      return (*(v72 + 56))(v56, 0, 1, v73);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v57 = *(v24 + 56);

    return v57(a5, 1, 1, v23, v25);
  }

  return result;
}

uint64_t sub_1BD8539A8@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v51 = a2;
  v50 = a1;
  v54 = a5;
  v6 = sub_1BE051AD4();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  sub_1BE04E1C4();
  v23 = type metadata accessor for EditNavigationView(0, a3, v49, v22);
  if (v50)
  {
    v24 = &v51[*(v23 + 44)];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_1BE048964();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8, &qword_1BE0D28D8);
    v45 = v15;
    sub_1BE0516C4();
    v27 = v48;
    (*(v48 + 104))(v10, *MEMORY[0x1E697D710], v6);
    v28 = v15;
    v29 = v46;
    sub_1BD854000(v28, v46);
    (*(v27 + 16))(&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v6);
    v30 = *(v47 + 80);
    v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v6;
    v32 = (v30 + 16) & ~v30;
    v33 = (v12 + *(v27 + 80) + v32) & ~*(v27 + 80);
    v26 = swift_allocObject();
    sub_1BD0DE204(v29, v26 + v32, &qword_1EBD40520, &qword_1BE0D70B0);
    (*(v27 + 32))(v26 + v33, v51, v31);
    (*(v27 + 8))(v10, v31);
    sub_1BD0DE53C(v45, &qword_1EBD40520, &qword_1BE0D70B0);
    v25 = sub_1BD854070;
  }

  MEMORY[0x1BFB3E7A0](v18, v25, v26);
  sub_1BE052434();
  v35 = v34;
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
  v36 = v53;
  sub_1BE050DE4();
  v35, v37, v38, v39, v40, v41, v42, v43;
  return (*(v52 + 8))(v21, v36);
}

void sub_1BD853E24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE051D74();
  sub_1BE04E7D4();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD853E90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE051AD4();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  return sub_1BE0518F4();
}

uint64_t sub_1BD853FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD854000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_99()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1BE051AD4();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (v0 + v2);
  *v7, v8, v9, v10, v11, v12, v13, v14;
  v7[1], v15, v16, v17, v18, v19, v20, v21;
  v22 = v1[10];
  v23 = *(v5 + 8);
  v23(v7 + v22, v4);
  v23((v0 + v6), v4);

  return swift_deallocObject();
}

void sub_1BD8541EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE051AD4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1BD853E24(v0 + v2, v5);
}

uint64_t type metadata accessor for AccountModuleView(uint64_t a1)
{
  result = qword_1EBD55AF8;
  if (!qword_1EBD55AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD85433C(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD0FA9D0(319);
    if (v2 <= 0x3F)
    {
      sub_1BD8543F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD8543F8(uint64_t a1)
{
  if (!qword_1EBD4B278)
  {
    sub_1BE04EB44();
    v1 = sub_1BE04E3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD4B278);
    }
  }
}

uint64_t sub_1BD85446C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountModuleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B08, &qword_1BE0FD520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B10, &qword_1BE0FD528);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B18, &unk_1BE0FD530);
  sub_1BD854704(v1, &v8[*(v12 + 44)]);
  v13 = sub_1BE050234();
  _UISolariumFeatureFlagEnabled();
  sub_1BE04E1F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD0DE204(v8, v11, &qword_1EBD55B08, &qword_1BE0FD520);
  v22 = &v11[*(v9 + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  sub_1BD855EE0(v1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_1BD855F44(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_1BD0DE204(v11, a1, &qword_1EBD55B10, &qword_1BE0FD528);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B20, &qword_1BE0FD540);
  v26 = (a1 + *(result + 36));
  *v26 = sub_1BD855FA8;
  v26[1] = v24;
  v26[2] = 0;
  v26[3] = 0;
  return result;
}

uint64_t sub_1BD854704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v101 = sub_1BE04C744();
  v118 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v117 = &v84[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BE04C734();
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v127 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v84[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B28, &unk_1BE0FD548);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v84[-v11];
  v12 = type metadata accessor for AccountModuleView(0);
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v100 = &v84[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B440, &qword_1BE0BC570);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v84[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B30, &qword_1BE0FD558);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v84[-v17];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B38, &unk_1BE0FD560);
  MEMORY[0x1EEE9AC00](v103);
  v123 = &v84[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v84[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v84[-v23];
  _UISolariumFeatureFlagEnabled();
  v107 = 0x4030000000000000;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v115 = v141;
  v116 = v139;
  v113 = v144;
  v114 = v143;
  v138 = 1;
  v137 = v140;
  v136 = v142;
  if (_UISolariumFeatureFlagEnabled())
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v111 = 0;
    v112 = v145;
    v109 = v149;
    v110 = v147;
    v108 = v150;
    LOBYTE(v160) = 1;
    LOBYTE(v154) = v146;
    LOBYTE(v151) = v148;
    v104 = 1;
    v105 = v146;
    v106 = v148;
    LOBYTE(v166) = 0;
  }

  else
  {
    v112 = 0;
    v109 = 0;
    v110 = 0;
    v108 = 0;
    v105 = 0;
    v106 = 0;
    v104 = 0;
    v111 = 1;
  }

  *v18 = sub_1BE04F7B4();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v24 = *a1;
  if (_UISolariumFeatureFlagEnabled())
  {
    v25 = 8.0;
  }

  else
  {
    v25 = 4.0;
  }

  v26 = v122;
  v27 = (v122 + *(v14 + 36));
  v28 = *(sub_1BE04EDE4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1BE04F684();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v25;
  v27[1] = v25;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  *v26 = v24;
  sub_1BE048964();
  v31 = sub_1BE051CD4();
  v33 = v32;
  v34 = 0;
  v35 = 0;
  v36 = *(a1 + 40);
  v119 = a1;
  if (v36 == 1)
  {
    v37 = a1;
    v38 = v100;
    sub_1BD855EE0(v37, v100);
    v39 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v40 = (v13 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_1BD855F44(v38, v35 + v39);
    __asm { FMOV            V0.2D, #18.0 }

    *(v35 + v40) = _Q0;
    *(v35 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = 0x401C000000000000;
    v34 = sub_1BD856014;
  }

  v46 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B40, &qword_1BE0FD570) + 44)];
  sub_1BD0DE204(v122, v46, &qword_1EBD3B440, &qword_1BE0BC570);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B48, &qword_1BE0FD578) + 36));
  *v47 = v34;
  v47[1] = v35;
  v47[2] = v31;
  v47[3] = v33;
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v48 = v102;
  sub_1BD0DE204(v18, v102, &qword_1EBD55B30, &qword_1BE0FD558);
  v49 = &v48[*(v103 + 36)];
  v50 = v152;
  *v49 = v151;
  v49[1] = v50;
  v49[2] = v153;
  sub_1BD0DE204(v48, v128, &qword_1EBD55B38, &unk_1BE0FD560);
  if (_UISolariumFeatureFlagEnabled())
  {
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LODWORD(v103) = 0;
    v122 = v154;
    v102 = v156;
    v99 = v159;
    v100 = v158;
    LOBYTE(v160) = 1;
    v135 = v155;
    v134 = v157;
    v96 = 1;
    v97 = v155;
    v98 = v157;
    LOBYTE(v166) = 0;
  }

  else
  {
    v122 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    LODWORD(v103) = 1;
  }

  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v94 = v162;
  v95 = v160;
  v92 = v165;
  v93 = v164;
  v135 = 1;
  v134 = v161;
  v133 = v163;
  v51 = sub_1BE04F7C4();
  v52 = v124;
  *v124 = v51;
  v52[1] = 0;
  *(v52 + 16) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B50, &qword_1BE0FD580);
  sub_1BD8556F4(v119, (v52 + *(v53 + 44)));
  (*(v118 + 104))(v117, *MEMORY[0x1E69BC950], v101);
  v54 = v125;
  sub_1BE04C724();
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v118 = v168;
  v119 = v166;
  v117 = v170;
  v107 = v171;
  v132 = 1;
  v131 = v167;
  v130 = v169;
  v55 = v138;
  v56 = v137;
  v57 = v136;
  v58 = v123;
  sub_1BD0DE19C(v128, v123, &qword_1EBD55B38, &unk_1BE0FD560);
  v85 = v135;
  v86 = v134;
  v87 = v133;
  sub_1BD0DE19C(v52, v126, &qword_1EBD55B28, &unk_1BE0FD548);
  v129 = 1;
  v60 = v120;
  v59 = v121;
  v88 = *(v120 + 16);
  v88(v127, v54, v121);
  v89 = v132;
  v90 = v131;
  LODWORD(v101) = v130;
  v61 = v91;
  *v91 = 0;
  *(v61 + 8) = v55;
  v62 = v115;
  v61[2] = v116;
  *(v61 + 24) = v56;
  v61[4] = v62;
  *(v61 + 40) = v57;
  v63 = v113;
  v61[6] = v114;
  v61[7] = v63;
  v64 = v104;
  v61[8] = 0;
  v61[9] = v64;
  v65 = v105;
  v61[10] = v112;
  v61[11] = v65;
  v66 = v106;
  v61[12] = v110;
  v61[13] = v66;
  v67 = v108;
  v61[14] = v109;
  v61[15] = v67;
  *(v61 + 128) = v111;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B58, &qword_1BE0FD588);
  sub_1BD0DE19C(v58, v61 + v68[16], &qword_1EBD55B38, &unk_1BE0FD560);
  v69 = v61 + v68[20];
  v70 = v96;
  *v69 = 0;
  *(v69 + 1) = v70;
  v71 = v97;
  *(v69 + 2) = v122;
  *(v69 + 3) = v71;
  v72 = v98;
  *(v69 + 4) = v102;
  *(v69 + 5) = v72;
  v73 = v99;
  *(v69 + 6) = v100;
  *(v69 + 7) = v73;
  v69[64] = v103;
  v74 = v61 + v68[24];
  *v74 = 0;
  v74[8] = v85;
  *(v74 + 2) = v95;
  v74[24] = v86;
  *(v74 + 4) = v94;
  v74[40] = v87;
  v75 = v92;
  *(v74 + 6) = v93;
  *(v74 + 7) = v75;
  v76 = v126;
  sub_1BD0DE19C(v126, v61 + v68[28], &qword_1EBD55B28, &unk_1BE0FD548);
  v77 = v61 + v68[32];
  v78 = v129;
  *v77 = 0;
  v77[8] = v78;
  v79 = v127;
  v88(v61 + v68[36], v127, v59);
  v80 = v61 + v68[40];
  *v80 = 0;
  v80[8] = v89;
  *(v80 + 2) = v119;
  v80[24] = v90;
  *(v80 + 4) = v118;
  v80[40] = v101;
  v81 = v107;
  *(v80 + 6) = v117;
  *(v80 + 7) = v81;
  v82 = *(v60 + 8);
  v82(v125, v59);
  sub_1BD0DE53C(v124, &qword_1EBD55B28, &unk_1BE0FD548);
  sub_1BD0DE53C(v128, &qword_1EBD55B38, &unk_1BE0FD560);
  v82(v79, v59);
  sub_1BD0DE53C(v76, &qword_1EBD55B28, &unk_1BE0FD548);
  return sub_1BD0DE53C(v123, &qword_1EBD55B38, &unk_1BE0FD560);
}

double sub_1BD855298@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a6@<D2>)
{
  v48[1] = a1;
  v51 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCE0, &qword_1BE0BD590);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = v48 - v12;
  v13 = sub_1BE04EB44();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  type metadata accessor for AccountModuleView(0);
  v48[2] = a2;
  sub_1BD70A548(v19);
  v20 = *MEMORY[0x1E697E7D0];
  v21 = *(v14 + 104);
  v21(v16, v20, v13);
  v22 = sub_1BE04EB34();
  v23 = *(v14 + 8);
  v23(v16, v13);
  v23(v19, v13);
  v24 = 0.0;
  if (v22)
  {
    sub_1BE04E684();
    v24 = v25 - a4;
  }

  sub_1BD70A548(v19);
  v21(v16, v20, v13);
  v26 = sub_1BE04EB34();
  v23(v16, v13);
  v23(v19, v13);
  v27 = -a6;
  if ((v26 & 1) == 0)
  {
    a6 = -a6;
  }

  v28 = sub_1BE051574();
  v29 = *MEMORY[0x1E6981688];
  v30 = sub_1BE0515C4();
  v31 = *(v30 - 8);
  v32 = v49;
  (*(v31 + 104))(v49, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = sub_1BE051594();
  v28, v34, v35, v36, v37, v38, v39, v40;
  sub_1BD0DE53C(v32, &qword_1EBD3BCE0, &qword_1BE0BD590);
  v41 = sub_1BE050354();
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  v43 = sub_1BE0503B4();
  sub_1BD0DE53C(v42, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  result = v24 + a6;
  v46 = v51;
  *v51 = v33;
  v46[1] = KeyPath;
  v46[2] = v43;
  v47 = v53;
  *(v46 + 3) = v52;
  *(v46 + 5) = v47;
  *(v46 + 7) = v54;
  *(v46 + 9) = v24 + a6;
  *(v46 + 10) = v27;
  return result;
}

uint64_t sub_1BD8556F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v179 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v178 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v180 = &v161 - v6;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v161 - v9;
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v176 = v190;
  v175 = v192;
  v174 = v194;
  v173 = v195;
  v186 = 1;
  v185 = v191;
  v184 = v193;
  v165 = a1;
  v11 = *(a1 + 16);
  v202 = *(a1 + 8);
  v203 = v11;
  v12 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v164 = v12;
  v13 = sub_1BE0506C4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_1BE0502A4();
  v21 = sub_1BE0505F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v20, v22, v24, v26, v28, v29, v30, v31;
  sub_1BD0DDF10(v13, v15, (v17 & 1), v32, v33, v34, v35, v36);
  v19, v37, v38, v39, v40, v41, v42, v43;
  v202 = v21;
  v203 = v23;
  LOBYTE(v204) = v25 & 1;
  v205 = v27;
  sub_1BE052434();
  v45 = v44;
  v177 = v10;
  sub_1BE050DE4();
  v45, v46, v47, v48, v49, v50, v51, v52;
  sub_1BD0DDF10(v21, v23, (v25 & 1), v53, v54, v55, v56, v57);
  v27, v58, v59, v60, v61, v62, v63, v64;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v169 = v196;
  v168 = v198;
  v167 = v200;
  v166 = v201;
  v189 = 1;
  v188 = v197;
  v187 = v199;
  v65 = *(v165 + 32);
  if (v65)
  {
    v202 = *(v165 + 24);
    v203 = v65;
    sub_1BE048C84();
    v66 = sub_1BE0506C4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = sub_1BE0502A4();
    v74 = sub_1BE0505F4();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v73, v75, v77, v79, v81, v82, v83, v84;
    sub_1BD0DDF10(v66, v68, (v70 & 1), v85, v86, v87, v88, v89);
    v72, v90, v91, v92, v93, v94, v95, v96;
    v97 = sub_1BE051494();
    v98 = sub_1BE050564();
    v100 = v99;
    LOBYTE(v68) = v101;
    v103 = v102;
    v97, v99, v101, v102, v104, v105, v106, v107;
    sub_1BD0DDF10(v74, v76, (v78 & 1), v108, v109, v110, v111, v112);
    v80, v113, v114, v115, v116, v117, v118, v119;
    v202 = v98;
    v203 = v100;
    LOBYTE(v204) = v68 & 1;
    v205 = v103;
    sub_1BE052434();
    v121 = v120;
    v122 = v170;
    sub_1BE050DE4();
    v121, v123, v124, v125, v126, v127, v128, v129;
    sub_1BD0DDF10(v98, v100, (v68 & 1), v130, v131, v132, v133, v134);
    v103, v135, v136, v137, v138, v139, v140, v141;
    v142 = v180;
    sub_1BD0DE204(v122, v180, &qword_1EBD452C0, &qword_1BE0B7620);
    v143 = 0;
  }

  else
  {
    v143 = 1;
    v142 = v180;
    v122 = v170;
  }

  (*(v171 + 56))(v142, v143, 1, v172);
  _UISolariumFeatureFlagEnabled();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v172 = v202;
  v171 = v204;
  v170 = v206;
  v165 = v207;
  v183 = 1;
  v182 = v203;
  v181 = v205;
  v144 = v186;
  v145 = v185;
  v146 = v184;
  v147 = v177;
  sub_1BD0DE19C(v177, v122, &qword_1EBD452C0, &qword_1BE0B7620);
  v148 = v189;
  v149 = v188;
  v150 = v187;
  v151 = v142;
  v152 = v178;
  sub_1BD0DE19C(v151, v178, &unk_1EBD5BB60, &qword_1BE0C4580);
  v162 = v183;
  v163 = v182;
  LODWORD(v164) = v181;
  v153 = v179;
  *v179 = 0;
  *(v153 + 8) = v144;
  v153[2] = v176;
  *(v153 + 24) = v145;
  v153[4] = v175;
  *(v153 + 40) = v146;
  v154 = v173;
  v153[6] = v174;
  v153[7] = v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B60, &unk_1BE0FD5C0);
  sub_1BD0DE19C(v122, v153 + v155[12], &qword_1EBD452C0, &qword_1BE0B7620);
  v156 = v153 + v155[16];
  *v156 = 0;
  v156[8] = v148;
  *(v156 + 2) = v169;
  v156[24] = v149;
  *(v156 + 4) = v168;
  v156[40] = v150;
  v157 = v166;
  *(v156 + 6) = v167;
  *(v156 + 7) = v157;
  sub_1BD0DE19C(v152, v153 + v155[20], &unk_1EBD5BB60, &qword_1BE0C4580);
  v158 = v153 + v155[24];
  *v158 = 0;
  v158[8] = v162;
  *(v158 + 2) = v172;
  v158[24] = v163;
  *(v158 + 4) = v171;
  v158[40] = v164;
  v159 = v165;
  *(v158 + 6) = v170;
  *(v158 + 7) = v159;
  sub_1BD0DE53C(v180, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v147, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v152, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v122, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD855EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountModuleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD855F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountModuleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD855FA8()
{
  v1 = type metadata accessor for AccountModuleView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 48);
  if (v4)
  {
    return v4();
  }

  return result;
}

double sub_1BD856014@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AccountModuleView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD855298(a1, v2 + v6, a2, v8, v9);
}

unint64_t sub_1BD8560D0()
{
  result = qword_1EBD55B68;
  if (!qword_1EBD55B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B20, &qword_1BE0FD540);
    sub_1BD85615C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B68);
  }

  return result;
}

unint64_t sub_1BD85615C()
{
  result = qword_1EBD55B70;
  if (!qword_1EBD55B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B10, &qword_1BE0FD528);
    sub_1BD8561E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B70);
  }

  return result;
}

unint64_t sub_1BD8561E8()
{
  result = qword_1EBD55B78;
  if (!qword_1EBD55B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B08, &qword_1BE0FD520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55B78);
  }

  return result;
}

uint64_t AccountAutomaticPaymentsDateView.init(model:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  result = sub_1BE051694();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t AccountAutomaticPaymentsDateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v42 = sub_1BE04FB94();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B80, &qword_1BE0FD5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B88, &qword_1BE0FD5D8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B90, &qword_1BE0FD5E0);
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55B98, &qword_1BE0FD5E8);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v37 - v14;
  v16 = *v2;
  v40 = v2[1];
  v41 = v16;
  v47 = v16;
  v48 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BA0, &qword_1BE0FD5F0);
  sub_1BD856A54();
  sub_1BE0504E4();
  sub_1BE052434();
  v18 = v17;
  sub_1BD0DE4F4(&qword_1EBD55BD0, &qword_1EBD55B80, &qword_1BE0FD5D0, MEMORY[0x1E697CD20]);
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  (*(v6 + 8))(v8, v5);
  sub_1BE04FB84();
  v26 = sub_1BD856BE8();
  v27 = MEMORY[0x1E697C750];
  v28 = v38;
  v29 = v42;
  sub_1BE051144();
  (*(v44 + 8))(v4, v29);
  sub_1BD0DE53C(v10, &qword_1EBD55B88, &qword_1BE0FD5D8);
  v49 = v28;
  v50 = v29;
  v51 = v26;
  v52 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DF4();
  (*(v39 + 8))(v13, v11);
  sub_1BE0501C4();
  if (qword_1EBD36DD0 != -1)
  {
    swift_once();
  }

  v49 = v11;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v46;
  sub_1BE050904();
  (*(v43 + 8))(v15, v31);
  v49 = v41;
  v50 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v33 = v49;
  v34 = v50;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BE0, &qword_1BE0FD618);
  v36 = (v32 + *(result + 36));
  *v36 = v33;
  v36[1] = v34;
  return result;
}

uint64_t sub_1BD8567E0(uint64_t a1, const char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54268, &unk_1BE0FA460);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BD8582B4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  sub_1BDA1C820();
  v6 = v5;
  v14, v5, v7, v8, v9, v10, v11, v12;
  if (v6)
  {
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501F4();
    sub_1BE04E1F4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BC8, &unk_1BE0FD608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541E8, &unk_1BE0FA1B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0, &unk_1BE0FA190);
  sub_1BD7E3BFC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD55BC0, &qword_1EBD55BC8, &unk_1BE0FD608, MEMORY[0x1E6981F48]);
  sub_1BD7E3D40();
  return sub_1BE051A34();
}

unint64_t sub_1BD856A54()
{
  result = qword_1EBD55BA8;
  if (!qword_1EBD55BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BA0, &qword_1BE0FD5F0);
    sub_1BD856AE0();
    sub_1BD734220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BA8);
  }

  return result;
}

unint64_t sub_1BD856AE0()
{
  result = qword_1EBD55BB0;
  if (!qword_1EBD55BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BB8, &unk_1BE0FD5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0, &unk_1BE0FA190);
    sub_1BD7E3BFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55BC0, &qword_1EBD55BC8, &unk_1BE0FD608, MEMORY[0x1E6981F48]);
    sub_1BD7E3D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BB0);
  }

  return result;
}

unint64_t sub_1BD856BE8()
{
  result = qword_1EBD55BD8;
  if (!qword_1EBD55BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B88, &qword_1BE0FD5D8);
    sub_1BD0DE4F4(&qword_1EBD55BD0, &qword_1EBD55B80, &qword_1BE0FD5D0, MEMORY[0x1E697CD20]);
    sub_1BD858A5C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BD8);
  }

  return result;
}

uint64_t sub_1BD856CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v75 = a3;
  v73 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BF0, &qword_1BE0FD6D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55BF8, &qword_1BE0FD6E0);
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v66 - v14;
  v78 = a1;
  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v15 = v77;
  KeyPath = swift_getKeyPath();
  v78 = v15;
  sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v31 = v15[3];
  v72 = v10;
  if ((v31 - 2) >= 2)
  {
    if (v31 == 1)
    {
      v32 = v15[4];
      sub_1BE048C84();
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v32 = &unk_1F3B8F7B8;
  }

  v15, v24, v25, v26, v27, v28, v29, v30;
  v77 = v32;
  swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *(v33 + 24) = a2;
  sub_1BE048964();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54430, &qword_1BE0FA690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C00, &qword_1BE0FD740);
  sub_1BD0DE4F4(&qword_1EBD54438, &qword_1EBD54430, &qword_1BE0FA690, MEMORY[0x1E69E6338]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55C08, &qword_1BE0FD748);
  v35 = sub_1BD858880();
  v78 = v34;
  v79 = v35;
  v36 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1BE0519C4();
  v78 = a1;
  v79 = a2;
  sub_1BE0516A4();
  v37 = v77;
  v38 = swift_getKeyPath();
  v78 = v37;
  sub_1BE04B594();
  v38, v39, v40, v41, v42, v43, v44, v45;
  v46 = v37[5];
  v37, v47, v48, v49, v50, v51, v52, v53;
  v54 = v72;
  if (v46 == 6)
  {
    v78 = a1;
    v79 = a2;
    sub_1BE0516A4();
    v55 = v67;
    sub_1BD894404(v77, v67);
    sub_1BD858964(v55, v54);
    v36 = 0;
  }

  (*(v71 + 56))(v54, v36, 1, v73);
  v56 = v68;
  v57 = v69;
  v58 = *(v68 + 16);
  v59 = v70;
  v60 = v76;
  v58(v70, v76, v69);
  v61 = v74;
  sub_1BD0DE19C(v54, v74, &qword_1EBD55BF0, &qword_1BE0FD6D8);
  v62 = v75;
  v58(v75, v59, v57);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C28, &qword_1BE0FD788);
  sub_1BD0DE19C(v61, &v62[*(v63 + 48)], &qword_1EBD55BF0, &qword_1BE0FD6D8);
  sub_1BD0DE53C(v54, &qword_1EBD55BF0, &qword_1BE0FD6D8);
  v64 = *(v56 + 8);
  v64(v60, v57);
  sub_1BD0DE53C(v61, &qword_1EBD55BF0, &qword_1BE0FD6D8);
  return (v64)(v59, v57);
}

uint64_t sub_1BD857290(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C08, &qword_1BE0FD748);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *a1;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C30, &unk_1BE0FD790);
  sub_1BD857404(v9, a2, a3, &v8[*(v10 + 44)]);
  v8[*(v6 + 36)] = 0;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v9;
  sub_1BD858880();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE0509D4();
  v11, v12, v13, v14, v15, v16, v17, v18;
  return sub_1BD0DE53C(v8, &qword_1EBD55C08, &qword_1BE0FD748);
}

uint64_t sub_1BD857404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a1;
  v62 = a4;
  v60 = sub_1BE051F34();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BE051F14();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1F0, &qword_1BE1089E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v52 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C38, &qword_1BE0FD7A0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v56 = sub_1BE04F7B4();
  v80 = 0;
  v18 = a1;
  v19 = a2;
  v20 = a2;
  v21 = a3;
  sub_1BD857A5C(v18, v19, a3, v71);
  memcpy(v81, v71, sizeof(v81));
  memcpy(v82, v71, 0x120uLL);
  sub_1BD0DE19C(v81, v70, &qword_1EBD467B0, &unk_1BE0D7320);
  sub_1BD0DE53C(v82, &qword_1EBD467B0, &unk_1BE0D7320);
  memcpy(&v79[7], v81, 0x120uLL);
  v54 = v80;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v22 = sub_1BE051574();
  sub_1BE04EA34();
  *v11 = v22;
  sub_1BE050384();
  sub_1BD1BC688();
  sub_1BE050854();
  sub_1BD0DE53C(v11, &qword_1EBD3C1F0, &qword_1BE1089E0);
  sub_1BE051F04();
  v71[0] = v20;
  v71[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  v23 = v70[0];
  KeyPath = swift_getKeyPath();
  v71[0] = v23;
  sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = v23[5];
  v23, v33, v34, v35, v36, v37, v38, v39;
  LOBYTE(KeyPath) = v32 != v53;
  v40 = v55;
  sub_1BE051F24();
  v41 = &v17[*(v13 + 44)];
  v42 = sub_1BE050124();
  v43 = v58;
  v44 = v60;
  (*(v58 + 16))(&v41[*(v42 + 20)], v40, v60);
  sub_1BD858A5C(&qword_1EBD55C40, MEMORY[0x1E6982148], MEMORY[0x1E6982140]);
  v45 = v52;
  v46 = v59;
  sub_1BE051ED4();
  (*(v43 + 8))(v40, v44);
  (*(v61 + 8))(v45, v46);
  v41[*(v42 + 24)] = KeyPath;
  v47 = v57;
  sub_1BD0BB7FC(v17, v57);
  v48 = v56;
  v70[0] = v56;
  v70[1] = 0;
  LOBYTE(v44) = v54;
  LOBYTE(v70[2]) = v54;
  memcpy(&v70[2] + 1, v79, 0x127uLL);
  *&v70[47] = v67;
  *&v70[49] = v68;
  *&v70[51] = v69;
  *&v70[39] = v63;
  *&v70[41] = v64;
  *&v70[43] = v65;
  *&v70[45] = v66;
  v49 = v62;
  memcpy(v62, v70, 0x1A8uLL);
  v49[53] = 0;
  *(v49 + 432) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C48, &qword_1BE0FD7A8);
  sub_1BD0BB7FC(v47, v49 + *(v50 + 64));
  sub_1BD0DE19C(v70, v71, &qword_1EBD55C50, &unk_1BE0FD7B0);
  sub_1BD0DE53C(v17, &qword_1EBD55C38, &qword_1BE0FD7A0);
  sub_1BD0DE53C(v47, &qword_1EBD55C38, &qword_1BE0FD7A0);
  v71[0] = v48;
  v71[1] = 0;
  LOBYTE(v71[2]) = v44;
  memcpy(&v71[2] + 1, v79, 0x127uLL);
  v76 = v67;
  v77 = v68;
  v78 = v69;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v75 = v66;
  return sub_1BD0DE53C(v71, &qword_1EBD55C50, &unk_1BE0FD7B0);
}

uint64_t sub_1BD857A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v183 = a2;
  v184 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  [*(v172[0] + 6) featureIdentifier];
  v172[0], v8, v9, v10, v11, v12, v13, v14;
  __dst = a4;
  v140 = a2;
  v141 = a3;
  if (a1 == 7 || a1 == 6)
  {
    v15 = sub_1BE04C124();
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v183 = v15;
  v184 = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (qword_1EBD36DE0 != -1)
  {
    swift_once();
  }

  v24 = sub_1BE0505F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BD0DDF10(v17, v19, (v21 & 1), v29, v31, v32, v33, v34);
  v23, v35, v36, v37, v38, v39, v40, v41;
  if (qword_1EBD36DE8 != -1)
  {
    swift_once();
  }

  v42 = qword_1EBDAB550;
  sub_1BE048964();
  v43 = sub_1BE050574();
  v143 = v44;
  v46 = v45;
  v48 = v47;
  sub_1BD0DDF10(v24, v26, (v28 & 1), v47, v49, v50, v51, v52);
  v42, v53, v54, v55, v56, v57, v58, v59;
  v30, v60, v61, v62, v63, v64, v65, v66;
  v138 = sub_1BE051CE4();
  v139 = v67;
  LOBYTE(v137) = 1;
  LOBYTE(v136) = 1;
  sub_1BE04EE54();
  v205 = v46 & 1;
  v183 = v140;
  v184 = v141;
  sub_1BE0516A4();
  [*(v172[0] + 6) featureIdentifier];
  v172[0], v68, v69, v70, v71, v72, v73, v74;
  v144 = v43;
  v142 = v46 & 1;
  if (a1 == 7 || a1 == 6)
  {
    v75 = sub_1BE04C124();
  }

  else
  {
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v183 = v75;
  v184 = v76;
  v77 = sub_1BE0506C4();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = PKOBKListSubtitleCellSubtitleFont(0);
  v85 = sub_1BE050484();
  v86 = sub_1BE0505F4();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v85, v87, v89, v91, v93, v94, v95, v96;
  sub_1BD0DDF10(v77, v79, (v81 & 1), v97, v98, v99, v100, v101);
  v83, v102, v103, v104, v105, v106, v107, v108;
  if (qword_1EBD36DF0 != -1)
  {
    swift_once();
  }

  v109 = qword_1EBDAB558;
  v183 = qword_1EBDAB558;
  sub_1BE048964();
  v110 = sub_1BE050574();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  sub_1BD0DDF10(v86, v88, (v90 & 1), v115, v117, v118, v119, v120);
  v109, v121, v122, v123, v124, v125, v126, v127;
  v92, v128, v129, v130, v131, v132, v133, v134;
  sub_1BE051CE4();
  sub_1BE04EE54();
  v196 = v114 & 1;
  *&v154 = v144;
  *(&v154 + 1) = v143;
  LOBYTE(v155) = v142;
  *(&v155 + 1) = *v204;
  DWORD1(v155) = *&v204[3];
  *(&v155 + 1) = v48;
  v160 = v201;
  v161 = v202;
  v162 = v203;
  v156 = v197;
  v157 = v198;
  v158 = v199;
  v159 = v200;
  __src[6] = v201;
  __src[7] = v202;
  __src[2] = v197;
  __src[3] = v198;
  __src[4] = v199;
  __src[5] = v200;
  __src[0] = v154;
  __src[1] = v155;
  *&v163 = v110;
  *(&v163 + 1) = v112;
  LOBYTE(v164) = v114 & 1;
  *(&v164 + 1) = *v195;
  DWORD1(v164) = *&v195[3];
  *(&v164 + 1) = v116;
  v169 = v151;
  v170 = v152;
  v171 = v153;
  v165 = v147;
  v166 = v148;
  v167 = v149;
  v168 = v150;
  __src[12] = v148;
  __src[13] = v149;
  __src[10] = v164;
  __src[11] = v147;
  __src[14] = v150;
  __src[15] = v151;
  __src[16] = v152;
  __src[17] = v153;
  __src[8] = v203;
  __src[9] = v163;
  memcpy(__dst, __src, 0x120uLL);
  v172[0] = v110;
  v172[1] = v112;
  v173 = v114 & 1;
  *v174 = *v195;
  *&v174[3] = *&v195[3];
  v175 = v116;
  v180 = v151;
  v181 = v152;
  v182 = v153;
  v176 = v147;
  v177 = v148;
  v178 = v149;
  v179 = v150;
  sub_1BD0DE19C(&v154, &v183, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE19C(&v163, &v183, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BD0DE53C(v172, &qword_1EBD3E090, &unk_1BE0D49D0);
  v183 = v144;
  v184 = v143;
  v185 = v142;
  *v186 = *v204;
  *&v186[3] = *&v204[3];
  v187 = v48;
  v192 = v201;
  v193 = v202;
  v194 = v203;
  v188 = v197;
  v189 = v198;
  v190 = v199;
  v191 = v200;
  return sub_1BD0DE53C(&v183, &qword_1EBD3E090, &unk_1BE0D49D0);
}

void sub_1BD8580E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BE051D74();
  sub_1BE04E7D4();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1BD858154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  if (v26[5] == a3)
  {
    sub_1BDA217C4();
    sub_1BDA21BE0();
    v26, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD858A5C(&qword_1EBD54250, type metadata accessor for AccountAutomaticPaymentsModel, &protocol conformance descriptor for AccountAutomaticPaymentsModel);
    sub_1BE04B584();
    v26, v12, v13, v14, v15, v16, v17, v18;
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
  }
}

uint64_t sub_1BD8582B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE04F7B4();
  v28 = 0;
  sub_1BD8584FC(&v34);
  v29 = v34;
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  sub_1BD0DE19C(&v29, &v19, &qword_1EBD54278, &qword_1BE0FD6D0);
  sub_1BD0DE53C(v33, &qword_1EBD54278, &qword_1BE0FD6D0);
  *&v27[7] = v29;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  v3 = v28;
  v4 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v34) = 0;
  v13 = sub_1BE0501F4();
  sub_1BE04E1F4();
  *&v20[17] = *&v27[16];
  *&v20[33] = *&v27[32];
  *&v20[49] = *&v27[48];
  v28 = 0;
  v19 = v2;
  v20[0] = v3;
  *&v20[64] = *&v27[63];
  *&v20[1] = *v27;
  v20[72] = v4;
  *&v21 = v6;
  *(&v21 + 1) = v8;
  *&v22 = v10;
  *(&v22 + 1) = v12;
  LOBYTE(v23) = 0;
  BYTE8(v23) = v13;
  *&v24 = v14;
  *(&v24 + 1) = v15;
  *&v25 = v16;
  *(&v25 + 1) = v17;
  v26 = 0;
  sub_1BE0501C4();
  if (qword_1EBD36DD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541A0, &unk_1BE0FA190);
  sub_1BD7E3BFC();
  sub_1BE050A34();
  v42 = v23;
  v43 = v24;
  v44 = v25;
  v45 = v26;
  v38 = *&v20[48];
  v39 = *&v20[64];
  v40 = v21;
  v41 = v22;
  v34 = v19;
  v35 = *v20;
  v36 = *&v20[16];
  v37 = *&v20[32];
  return sub_1BD0DE53C(&v34, &qword_1EBD541A0, &unk_1BE0FA190);
}

void sub_1BD8584FC(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  [v56[6] featureIdentifier];
  v56, v4, v5, v6, v7, v8, v9, v10;
  sub_1BE04C124();
  sub_1BD0DDEBC();
  v11 = sub_1BE0506C4();
  v13 = v12;
  v55 = v14;
  v16 = v15;
  sub_1BE0516A4();
  [v56[6] featureIdentifier];
  v56, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE04C124();
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  v30 = (v29 & 1);
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v55 & 1;
  *(a3 + 24) = v16;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
  *(a3 + 48) = v29 & 1;
  *(a3 + 56) = v27;
  sub_1BD0D7F18(v11, v13, v55 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v24, v26, v30);
  sub_1BE048C84();
  sub_1BD0DDF10(v24, v26, v30, v31, v32, v33, v34, v35);
  v28, v36, v37, v38, v39, v40, v41, v42;
  sub_1BD0DDF10(v11, v13, (v55 & 1), v43, v44, v45, v46, v47);
  v16, v48, v49, v50, v51, v52, v53, v54;
}

unint64_t sub_1BD858708()
{
  result = qword_1EBD55BE8;
  if (!qword_1EBD55BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55BE0, &qword_1BE0FD618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B98, &qword_1BE0FD5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B90, &qword_1BE0FD5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55B88, &qword_1BE0FD5D8);
    sub_1BE04FB94();
    sub_1BD856BE8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD7E82BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55BE8);
  }

  return result;
}

unint64_t sub_1BD858880()
{
  result = qword_1EBD55C10;
  if (!qword_1EBD55C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55C08, &qword_1BE0FD748);
    sub_1BD0DE4F4(&qword_1EBD55C18, &qword_1EBD55C20, &unk_1BE0FD750, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55C10);
  }

  return result;
}

uint64_t sub_1BD858964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountAutomaticPaymentsDayPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_100(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD858A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD858AA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_1BE048964();
  v3(v4, v6);
  v2, v7, v8, v9, v10, v11, v12, v13;

  v6, v14, v15, v16, v17, v18, v19, v20;
}

uint64_t sub_1BD858B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v17;
  *(v8 + 160) = v18;
  *(v8 + 136) = v16;
  *(v8 + 356) = v15;
  *(v8 + 120) = v14;
  *(v8 + 352) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  *(v8 + 168) = sub_1BE0528A4();
  *(v8 + 176) = sub_1BE052894();
  v10 = sub_1BE052844();
  *(v8 + 184) = v10;
  *(v8 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD858BF0, v10, v9);
}

uint64_t sub_1BD858BF0()
{
  *(v0 + 200) = [*(v0 + 80) transferType];
  *(v0 + 208) = sub_1BE052894();
  v2 = sub_1BE052844();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BD858C90, v2, v1);
}

uint64_t sub_1BD858C90(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(*(v8 + 88) + 32);
  if (v9 && (v10 = [v9 targetDevice], (*(v8 + 232) = v10) != 0))
  {
    v11 = v10;
    if ([v10 respondsToSelector_])
    {
      v19 = *(v8 + 88);
      v20 = sub_1BE052894();
      *(v8 + 240) = v20;
      v21 = swift_task_alloc();
      *(v8 + 248) = v21;
      v21[2] = v11;
      v21[3] = v19;
      v21[4] = 251;
      v22 = swift_task_alloc();
      *(v8 + 256) = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C68, &qword_1BE0FD8B0);
      *v22 = v8;
      v22[1] = sub_1BD858EA8;
      v24 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DDE0](v8 + 72, v20, v24, 0xD000000000000015, 0x80000001BE13D2C0, sub_1BD85B950, v21, v23);
    }

    *(v8 + 208), v12, v13, v14, v15, v16, v17, v18;
    swift_unknownObjectRelease();
  }

  else
  {
    *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  }

  *(v8 + 264) = 0;
  v25 = swift_task_alloc();
  *(v8 + 272) = v25;
  *v25 = v8;
  v25[1] = sub_1BD8590CC;
  v26 = *(v8 + 200);
  v27 = *(v8 + 356);
  v28 = *(v8 + 120);
  v29 = *(v8 + 128);
  v30 = *(v8 + 352);
  v31 = *(v8 + 104);
  v32 = *(v8 + 112);

  return sub_1BD85A94C(v26, v31, v32, v30, v28, v29, v27);
}

uint64_t sub_1BD858EA8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  v2, v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v1 + 224);
  v11 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1BD859008, v11, v10);
}

uint64_t sub_1BD859008(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectRelease();
  *(v8 + 264) = *(v8 + 72);
  v9 = swift_task_alloc();
  *(v8 + 272) = v9;
  *v9 = v8;
  v9[1] = sub_1BD8590CC;
  v10 = *(v8 + 200);
  v11 = *(v8 + 356);
  v12 = *(v8 + 120);
  v13 = *(v8 + 128);
  v14 = *(v8 + 352);
  v15 = *(v8 + 104);
  v16 = *(v8 + 112);

  return sub_1BD85A94C(v10, v15, v16, v14, v12, v13, v11);
}

uint64_t sub_1BD8590CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[35] = a1;
  v3[36] = a2;

  v3[37] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[38] = v5;
  v3[39] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD859214, v5, v4);
}

uint64_t sub_1BD859214(uint64_t a1)
{
  v11 = *(v1 + 280);
  v2 = *(v1 + 264);
  v4 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5 = sub_1BE052894();
  *(v1 + 320) = v5;
  v6 = swift_task_alloc();
  *(v1 + 328) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v11;
  *(v6 + 48) = v4;
  v7 = swift_task_alloc();
  *(v1 + 336) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C60, &qword_1BE0FD8A8);
  *v7 = v1;
  v7[1] = sub_1BD85935C;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v1 + 64, v5, v9, 0xD00000000000003ELL, 0x80000001BE13D280, sub_1BD85B940, v6, v8);
}

uint64_t sub_1BD85935C()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 288);

  v2, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v1 + 312);
  v19 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1BD8594E0, v19, v18);
}

uint64_t sub_1BD8594E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 264);
  *(v8 + 296), a2, a3, a4, a5, a6, a7, a8;

  *(v8 + 344) = *(v8 + 64);
  v10 = *(v8 + 184);
  v11 = *(v8 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1BD859554, v10, v11);
}

uint64_t sub_1BD859554(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 344);
  *(v8 + 176), a2, a3, a4, a5, a6, a7, a8;
  if (v9)
  {
    v10 = *(v8 + 344);
    v11 = *(v8 + 96);
    v12 = [v10 referenceIdentifier];
    v13 = [v11 manifestHashWithReferenceIdentifier_];

    if (v13)
    {
      v14 = sub_1BE04AAC4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    sub_1BE052434();
    v18 = v17;
    v19 = [v10 nonce];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1BE04AAC4();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xF000000000000000;
    }

    v24 = sub_1BE052404();
    v18, v25, v26, v27, v28, v29, v30, v31;
    if (v16 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1BE04AAB4();
      sub_1BD030220(v14, v16, v33, v34, v35, v36, v37, v38);
    }

    if (v23 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_1BE04AAB4();
      sub_1BD030220(v21, v23, v40, v41, v42, v43, v44, v45);
    }

    v46 = *(v8 + 136);
    v47 = [objc_allocWithZone(MEMORY[0x1E69B8598]) initWithKeyIdentifier:v24 manifestHash:v32 nonce:v39];

    swift_beginAccess();
    v48 = *(v46 + 16);
    *(v46 + 16) = v47;
  }

  v49 = *(v8 + 160);
  v50 = *(v8 + 136);
  v51 = *(v8 + 144);
  v52 = *(v8 + 96);
  swift_beginAccess();
  v53 = *(v50 + 16);
  v54 = v53;
  v51(v53, v49, v52);

  v55 = *(v8 + 8);

  return v55();
}

void sub_1BD8597AC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v9 = v8;
  v172 = a8;
  LODWORD(v173) = a5;
  v170 = a6;
  v171 = a7;
  v14 = sub_1BE04AA64();
  v177 = *(v14 - 8);
  v178 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04AF64();
  v179 = *(v16 - 8);
  v180 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE04B3B4();
  v174 = *(v19 - 8);
  v175 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *(v9 + 24);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = v22;
  sub_1BE04D8B4(&v181);
  KeyPath, v26, v27, v28, v29, v30, v31, v32;
  v24, v33, v34, v35, v36, v37, v38, v39;

  v40 = v181;
  v41 = [v181 type];

  if (v41 != 4)
  {
    return;
  }

  v42 = *(v9 + 24);
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = v42;
  sub_1BE04D8B4(&v181);
  v43, v46, v47, v48, v49, v50, v51, v52;
  v44, v53, v54, v55, v56, v57, v58, v59;

  v60 = v181;
  v61 = [v181 savingsDetails];

  if (!v61)
  {
    return;
  }

  v62 = [a2 selectedMethods];
  if ((v62 & 2) != 0)
  {
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v67 = a4;
    v68 = v173;
    v69 = 2;
  }

  else
  {
    if ((v62 & 1) == 0)
    {
      v63 = 0;
      goto LABEL_10;
    }

    v64 = a1;
    v65 = a2;
    v66 = v170;
    v67 = v171;
    v68 = v172;
    v69 = 1;
  }

  sub_1BD859F38(v64, v65, v66, v67, v68, v69);
  v63 = v70;
LABEL_10:
  v71 = [objc_allocWithZone(MEMORY[0x1E69B83F8]) init];
  v173 = v63;
  [v71 addScheduledTransfer_];
  v72 = [a1 transferType];
  v73 = *(v9 + 24);
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  if (v72 == 2)
  {
    v76 = v73;
    sub_1BE04D8B4(&v181);
    v74, v77, v78, v79, v80, v81, v82, v83;
    v75, v84, v85, v86, v87, v88, v89, v90;

    v91 = v181;
    v92 = [v181 oneTimeDepositFeatureDescriptor];

    if (v92)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v93 = v73;
  sub_1BE04D8B4(&v181);
  v74, v94, v95, v96, v97, v98, v99, v100;
  v75, v101, v102, v103, v104, v105, v106, v107;

  v108 = v181;
  v92 = [v181 oneTimeWithdrawalFeatureDescriptor];

  if (!v92)
  {
    goto LABEL_27;
  }

LABEL_14:
  v109 = [v92 transferTermsIdentifier];

  if (v109)
  {
    sub_1BE052434();
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  v112 = [objc_allocWithZone(MEMORY[0x1E69B8440]) init];
  [v112 setFrequency_];
  v113 = [v61 productTimeZone];
  if (v113)
  {
    v114 = v113;
    sub_1BE04B394();

    v115 = sub_1BE04B374();
    (*(v174 + 8))(v21, v175);
  }

  else
  {
    v115 = 0;
  }

  [v112 setScheduleTimeZone_];

  v116 = [objc_opt_self() now];
  sub_1BE04AEE4();

  v117 = sub_1BE04AE64();
  (*(v179 + 8))(v18, v180);
  [v112 setScheduledDate_];

  v118 = v61;
  if (v111)
  {
    v119 = sub_1BE052404();
    v111, v120, v121, v122, v123, v124, v125, v126;
  }

  else
  {
    v119 = 0;
  }

  [v112 setTransferTermsIdentifier_];

  v127 = [objc_allocWithZone(MEMORY[0x1E69B84C8]) init];
  [v127 setScheduledTransfers_];
  [v127 setScheduleDetails_];
  v128 = *(v9 + 24);
  v129 = swift_getKeyPath();
  v130 = swift_getKeyPath();
  v131 = v128;
  sub_1BE04D8B4(&v181);
  v129, v132, v133, v134, v135, v136, v137, v138;
  v130, v139, v140, v141, v142, v143, v144, v145;

  v146 = v181;
  v147 = [v181 accountIdentifier];

  [v127 setAccountIdentifier_];
  v148 = *(v9 + 24);
  v149 = swift_getKeyPath();
  v150 = swift_getKeyPath();
  v151 = v148;
  sub_1BE04D8B4(&v181);
  v149, v152, v153, v154, v155, v156, v157, v158;
  v150, v159, v160, v161, v162, v163, v164, v165;

  v166 = v181;
  v167 = [v181 accountBaseURL];

  if (v167)
  {
    v168 = v176;
    sub_1BE04A9F4();

    v167 = sub_1BE04A9C4();
    (*(v177 + 8))(v168, v178);
  }

  [v127 setBaseURL_];
}

void sub_1BD859F38(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [a1 transferType];
  if (v13 == 3)
  {
    v72 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB403F0](a3, a4, a5, v72, v73, v74))
    {
      return;
    }
  }

  else
  {
    if (v13 != 2)
    {
      return;
    }

    v14 = MEMORY[0x1BFB403C0](0);
    if ((MEMORY[0x1BFB403F0](v14) & 1) == 0)
    {
      return;
    }
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69B8438]) initWithType_];
  if (a6 == 1)
  {
    v16 = [a2 bankAccountInformation];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 identifier];

      if (v18)
      {
        if (v15)
        {
          v19 = v15;
          [v19 setIdentifier_];
        }
      }
    }
  }

  swift_beginAccess();
  v20 = *(v6 + 24);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = v20;
  sub_1BE04D8B4(&v77);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v22, v31, v32, v33, v34, v35, v36, v37;

  v38 = v77;
  v39 = [v77 type];

  if (v39 != 4)
  {
    goto LABEL_17;
  }

  v40 = *(v6 + 24);
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  v43 = v40;
  sub_1BE04D8B4(&v77);
  v41, v44, v45, v46, v47, v48, v49, v50;
  v42, v51, v52, v53, v54, v55, v56, v57;

  v58 = v77;
  v59 = [v77 savingsDetails];

  if (v59)
  {
    v60 = [v59 currencyCode];

    if (v60)
    {
      sub_1BE052434();
      v62 = v61;

      v63 = sub_1BE053344();
      if (v62)
      {
        v64 = sub_1BE052404();
        v62, v65, v66, v67, v68, v69, v70, v71;
LABEL_19:
        v75 = PKCurrencyAmountMake();

        v76 = [a1 transferType];
        [objc_allocWithZone(MEMORY[0x1E69B83F0]) initWithCurrencyAmount:v75 type:v76 externalAccount:v15];

        return;
      }

LABEL_18:
      v64 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v63 = sub_1BE053344();
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1BD85A274(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78, &unk_1BE0FD8C0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = aBlock - v14;
  [a2 setDeviceMetadata_];
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  [a2 setOdiAssessment_];

  v16 = *(a6 + 32);
  if (v16)
  {
    (*(v12 + 16))(v15, a1, v11);
    v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v18 = swift_allocObject();
    (*(v12 + 32))(&v18[v17], v15, v11);
    aBlock[4] = sub_1BD85BA5C;
    v28 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_43_3;
    v19 = _Block_copy(aBlock);
    v28, v20, v21, v22, v23, v24, v25, v26;
    [v16 scheduleTransferWithRequest:a2 completion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_1BD85A488(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78, &unk_1BE0FD8C0);
  return sub_1BE052864();
}

void sub_1BD85A4D8(void *a1)
{
  v27 = sub_1BE04D214();
  v2 = *(v27 - 8);
  v3 = MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1BFB403C0](0, v3);
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1BFB403C0](0);
  v13 = v12;
  v15 = v14;
  v16 = [a1 _transactionAmount];
  if (v16)
  {
    v17 = v16;
    [v16 decimalValue];

    v18 = sub_1BD85B83C([a1 transferType], v6, v8, v10, v11, v13, v15);
    if ((v19 & 1) == 0)
    {
      v20 = v18;
      sub_1BE04D1E4();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C54();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v20;
        _os_log_impl(&dword_1BD026000, v21, v22, "Prewarming assessment for %ld", v23, 0xCu);
        MEMORY[0x1BFB45F20](v23, -1, -1);
      }

      (*(v2 + 8))(v5, v27);
      v24 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
      v25 = *(v28 + 40);
      *(v28 + 40) = v24;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD85A6F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70, &qword_1BE0FD8B8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  result = [a2 respondsToSelector_];
  if (result)
  {
    v14 = *(a3 + 32);
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    (*(v9 + 32))(&v16[v15], v12, v8);
    aBlock[4] = sub_1BD85B95C;
    v34 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD20815C;
    aBlock[3] = &block_descriptor_37_0;
    v17 = _Block_copy(aBlock);
    v18 = v34;
    swift_unknownObjectRetain();
    sub_1BE048964();
    v18, v19, v20, v21, v22, v23, v24, v25;
    [a2 paymentWebService:v14 deviceMetadataWithFields:a4 completion:v17];
    _Block_release(v17);
    v16, v26, v27, v28, v29, v30, v31, v32;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD85A8FC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70, &qword_1BE0FD8B8);
  return sub_1BE052864();
}

uint64_t sub_1BD85A94C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = v7;
  *(v8 + 160) = a4;
  *(v8 + 164) = a7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_1BE04D214();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = sub_1BE0528A4();
  *(v8 + 120) = sub_1BE052894();
  v11 = sub_1BE052844();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD85AA5C, v11, v10);
}

uint64_t sub_1BD85AA5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 32);
  if (v9 == 3)
  {
    v17 = *(v8 + 160);
    v19 = *(v8 + 40);
    v18 = *(v8 + 48);
    v20 = MEMORY[0x1BFB403C0](0, a2, a3, a4, a5, a6, a7, a8);
    if (MEMORY[0x1BFB40440](v19, v18, v17, v20, v21, v22))
    {
      v16 = 4;
    }

    else
    {
      v16 = 3;
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v10 = *(v8 + 160);
    v12 = *(v8 + 40);
    v11 = *(v8 + 48);
    v13 = MEMORY[0x1BFB403C0](0, a2, a3, a4, a5, a6, a7, a8);
    if (MEMORY[0x1BFB40440](v12, v11, v10, v13, v14, v15))
    {
      v16 = 6;
    }

    else
    {
      v25 = *(v8 + 164);
      v27 = *(v8 + 56);
      v26 = *(v8 + 64);
      v28 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB40440](v27, v26, v25, v28, v29, v30))
      {
        v16 = 5;
      }

      else
      {
        v16 = 7;
      }
    }

LABEL_14:
    v31 = *(v8 + 72);
    v32 = *(v31 + 40);
    if (v32)
    {
      if ([v32 type] != v16)
      {
        sub_1BE04D1E4();
        v33 = sub_1BE04D204();
        v34 = sub_1BE052C54();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          *(v35 + 4) = v16;
          _os_log_impl(&dword_1BD026000, v33, v34, "ODI assessment changed to type %ld", v35, 0xCu);
          MEMORY[0x1BFB45F20](v35, -1, -1);
        }

        v37 = *(v8 + 88);
        v36 = *(v8 + 96);
        v38 = *(v8 + 80);

        (*(v37 + 8))(v36, v38);
        [*(v31 + 40) updateAssessmentType_];
      }
    }

    else
    {
      sub_1BE04D1E4();
      v39 = sub_1BE04D204();
      v40 = sub_1BE052C54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = v16;
        _os_log_impl(&dword_1BD026000, v39, v40, "ODI assessment was not prewarmed for %ld", v41, 0xCu);
        MEMORY[0x1BFB45F20](v41, -1, -1);
      }

      v42 = *(v8 + 104);
      v43 = *(v8 + 80);
      v44 = *(v8 + 88);

      (*(v44 + 8))(v42, v43);
      v45 = [objc_allocWithZone(MEMORY[0x1E69B9178]) initWithType_];
      v46 = *(v31 + 40);
      *(v31 + 40) = v45;
    }

    v47 = sub_1BE052894();
    *(v8 + 144) = v47;
    v48 = swift_task_alloc();
    *(v8 + 152) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
    *v48 = v8;
    v48[1] = sub_1BD85AE2C;
    v50 = *(v8 + 72);
    v51 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v8 + 16, v47, v51, 0xD000000000000035, 0x80000001BE13D240, sub_1BD85B6FC, v50, v49);
  }

  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;

  v23 = *(v8 + 8);

  return v23(0, 0);
}

uint64_t sub_1BD85AE2C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 136);
  v11 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD85AF70, v11, v10);
}

uint64_t sub_1BD85AF70(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);

  v11 = *(v8 + 8);

  return v11(v10, v9);
}

void sub_1BD85AFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 40);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v5 + 32))(v11 + v10, v8, v4);
    aBlock[4] = sub_1BD85B704;
    v23 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD858AA4;
    aBlock[3] = &block_descriptor_192;
    v12 = _Block_copy(aBlock);
    v13 = v23;
    v14 = v9;
    sub_1BE048964();
    v13, v15, v16, v17, v18, v19, v20, v21;
    [v14 waitForAssessmentWithCompletion_];
    _Block_release(v12);
  }
}

uint64_t sub_1BD85B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v36 = a2;
  v37 = sub_1BE051F54();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  sub_1BD14BE3C();
  v34 = sub_1BE052D54();
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a4, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = (v18 + v17);
  v20 = v36;
  *v19 = v35;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_1BD85B794;
  v42 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_26_2;
  v21 = _Block_copy(aBlock);
  v22 = v42;
  sub_1BE048C84();
  v22, v23, v24, v25, v26, v27, v28, v29;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  v30 = v37;
  sub_1BE053664();
  v31 = v34;
  MEMORY[0x1BFB3FDF0](0, v9, v6, v21);
  _Block_release(v21);

  (*(v40 + 8))(v6, v30);
  return (*(v38 + 8))(v9, v39);
}

void sub_1BD85B570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848);
  sub_1BE052864();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 40);
    v5, v7, v8, v9, v10, v11, v12, v13;
    [v6 provideSessionFeedbackIngested];
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v22 = v14[5];
    v14[5] = 0;
    v14, v15, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_1BD85B64C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BD85B6C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountScheduleTransferModel();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD85B704(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD85B1C8(a1, a2, v6, v7);
}

void sub_1BD85B794()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C58, &unk_1BE0FD848) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1BD85B570(v0 + v2, v6, v7, v8);
}

uint64_t sub_1BD85B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 3)
  {
    v17 = MEMORY[0x1BFB403C0](0, a2, a3, a4, a5, a6, a7);
    if (MEMORY[0x1BFB40440](a2, a3, a4, v17, v18, v19))
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if (a1 == 2)
  {
    v13 = MEMORY[0x1BFB403C0](0);
    if (MEMORY[0x1BFB40440](a2, a3, a4, v13, v14, v15))
    {
      return 6;
    }

    else
    {
      v20 = MEMORY[0x1BFB403C0](0);
      if (MEMORY[0x1BFB40440](a5, a6, a7, v20, v21, v22))
      {
        return 5;
      }

      else
      {
        return 7;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD85B95C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C70, &qword_1BE0FD8B8);

  return sub_1BD85A8FC(a1);
}

uint64_t objectdestroy_33Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1BD85BA5C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55C78, &unk_1BE0FD8C0);

  return sub_1BD85A488(a1);
}

unint64_t sub_1BD85BB14()
{
  result = qword_1EBD55C80;
  if (!qword_1EBD55C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55C80);
  }

  return result;
}

uint64_t sub_1BD85BB68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1BE051F44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD85BBDC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1BE051F44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BD85BC58()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD85BCD0(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD85BD48(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 4);
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0)
  {
    return 0;
  }

  if ((v5 ^ v4))
  {
    return 0;
  }

  else
  {
    return ((v4 & 0x100) == 0) ^ ((v5 & 0x100) >> 8);
  }
}

char *sub_1BD85BDFC(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel__displayableError;
  v16 = type metadata accessor for FeatureError(0);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_1BD23C2BC(v14, v11);
  sub_1BE04D874();
  sub_1BD23C32C(v14);
  (*(v6 + 32))(&v2[v15], v8, v5);
  *&v2[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer] = 0;
  v17 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService;
  *&v2[v17] = [objc_opt_self() sharedInstance];
  v18 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_paymentWebService;
  *&v2[v18] = [objc_opt_self() sharedService];
  *&v2[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account] = a1;
  if (a2)
  {
    v19 = a1;
    v20 = a2;
    v21 = [v20 state];
    if ([v20 isExpired])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    swift_beginAccess();
    v32 = a2;
    v33 = v23;
  }

  else
  {
    swift_beginAccess();
    v32 = 0;
    v33 = 0;
    v24 = a1;
  }

  sub_1BE04D874();
  swift_endAccess();
  v25 = type metadata accessor for InStoreTopUpTokenModel(0);
  v31.receiver = v2;
  v31.super_class = v25;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  v27 = *&v26[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v27)
  {
    v28 = v27;
    [v28 registerObserver_];
  }

  return v26;
}

id sub_1BD85C148()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v1)
  {
    [v1 unregisterObserver_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for InStoreTopUpTokenModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for InStoreTopUpTokenModel(uint64_t a1)
{
  result = qword_1EBD55CC0;
  if (!qword_1EBD55CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD85C36C()
{
  v1 = sub_1BE051F54();
  v107 = *(v1 - 8);
  v108 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v105 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1BE051FA4();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE051F44();
  v102 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v101 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = v85 - v6;
  v7 = sub_1BE04AF64();
  v98 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FC4();
  v99 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v85 - v14;
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE052DC4();
  MEMORY[0x1EEE9AC00](v20);
  if (!*(v0 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer))
  {
    v24 = v0;
    v86 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer;
    v88 = v23;
    v89 = v21;
    v90 = v19;
    ObjectType = v17;
    v92 = v16;
    v93 = v12;
    v94 = v9;
    v95 = v7;
    v96 = v15;
    v97 = v10;
    v25 = v109;
    KeyPath = swift_getKeyPath();
    v27 = swift_getKeyPath();
    sub_1BE04D8B4(&aBlock);
    KeyPath, v28, v29, v30, v31, v32, v33, v34;
    v27, v35, v36, v37, v38, v39, v40, v41;
    v42 = aBlock;
    if (aBlock >= 2)
    {
      v85[1] = v111;
      sub_1BD0E5E8C(0, &unk_1EBD39A90, 0x1E69E9630);
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&unk_1EBD3F6A0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AA0, &qword_1BE0B95A0);
      sub_1BD126024(&qword_1EBD3F6B0, &unk_1EBD39AA0, &qword_1BE0B95A0);
      v43 = v86;
      v44 = v89;
      sub_1BE053664();
      v45 = sub_1BE052DD4();
      (*(v88 + 8))(v43, v44);
      *(v24 + v87) = v45;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v46 = v90;
      sub_1BE04D194();
      v47 = sub_1BE04D204();
      v48 = sub_1BE052C54();
      v49 = os_log_type_enabled(v47, v48);
      v89 = v24;
      if (v49)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1BD026000, v47, v48, "Setting up timer for in store token", v50, 2u);
        MEMORY[0x1BFB45F20](v50, -1, -1);
      }

      (*(ObjectType + 8))(v46, v92);
      ObjectType = swift_getObjectType();
      v92 = v45;
      v51 = v93;
      sub_1BE051FB4();
      v52 = [v42 expirationDate];
      v53 = v94;
      sub_1BE04AEE4();

      sub_1BE04AEB4();
      (*(v98 + 8))(v53, v95);
      v54 = v96;
      sub_1BE051FF4();
      v55 = v99[1];
      v56 = v51;
      v57 = v97;
      v55(v56, v97);
      v58 = *MEMORY[0x1E69E7F40];
      v59 = v102;
      v99 = v42;
      v60 = *(v102 + 104);
      v61 = v100;
      v60(v100, v58, v25);
      v62 = v101;
      *v101 = 0;
      v60(v62, *MEMORY[0x1E69E7F28], v25);
      MEMORY[0x1BFB3FF60](v54, v61, v62, ObjectType);
      v63 = *(v59 + 8);
      v63(v62, v25);
      v63(v61, v25);
      v55(v54, v57);
      v64 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v65 = swift_allocObject();
      v66 = v99;
      *(v65 + 16) = v64;
      *(v65 + 24) = v66;
      v114 = sub_1BD85ED44;
      v115 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v111 = 1107296256;
      v112 = sub_1BD126964;
      v113 = &block_descriptor_64_1;
      v67 = _Block_copy(&aBlock);
      sub_1BE048964();
      sub_1BD576BC0(v66);
      v68 = v103;
      sub_1BE051F74();
      v69 = v105;
      sub_1BD56AC68();
      sub_1BE052DE4();
      _Block_release(v67);
      (*(v107 + 8))(v69, v108);
      (*(v104 + 8))(v68, v106);
      v70 = v115;
      v64, v71, v72, v73, v74, v75, v76, v77;
      v70, v78, v79, v80, v81, v82, v83, v84;
      sub_1BE052E14();
      sub_1BD576BB0(v66);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BD576BB0(aBlock);
    }
  }
}

uint64_t sub_1BD85CCD0(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BE04D194();
    v8 = sub_1BE04D204();
    v9 = sub_1BE052C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "In Store token expired", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    KeyPath = swift_getKeyPath();
    v12 = swift_getKeyPath();
    sub_1BE04D8B4(&v29);
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
    v12, v20, v21, v22, v23, v24, v25, v26;
    LOWORD(KeyPath) = (v29 > 1) & v30;
    sub_1BD576BB0(v29);
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = a2;
    v30 = KeyPath | 0x100;
    v27 = a2;
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD85CEDC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_timer))
  {
    swift_unknownObjectRetain();
    sub_1BE04D194();
    v7 = sub_1BE04D204();
    v8 = sub_1BE052C54();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, v8, "Cancelling timer for in store token", v9, 2u);
      MEMORY[0x1BFB45F20](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    swift_getObjectType();
    sub_1BE052E04();
    swift_unknownObjectRelease();
    *(v1 + v6) = 0;
    swift_unknownObjectRelease();
  }
}

void sub_1BD85D060(void *a1, uint64_t a2, void *a3)
{
  v7 = [*(v3 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account) accountIdentifier];
  if (!v7)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1BE052434();
  v11 = v10;

  if (a3)
  {
    if (v9 == a2 && v11 == a3)
    {
      v11, v12, v13, v14, v15, v16, v17, v18;
    }

    else
    {
      v20 = sub_1BE053B84();
      v11, v21, v22, v23, v24, v25, v26, v27;
      if ((v20 & 1) == 0)
      {
        return;
      }
    }

LABEL_15:
    if (a1)
    {

      sub_1BD85E840(a1);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v11, v12, v13, v14, v15, v16, v17, v18;
}

id sub_1BD85D214(double a1)
{
  v1 = sub_1BE052484();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  sub_1BE04D8B4(&v54);
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v10, v18, v19, v20, v21, v22, v23, v24;
  v25 = v54;
  if (v54 < 2)
  {
    goto LABEL_7;
  }

  if ([v54 tokenType])
  {
    sub_1BE04D194();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = v1;
      v29 = v28;
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v26, v27, "Attempted to render top up barcode token for the wrong type", v28, 2u);
      v30 = v29;
      v1 = v53;
      MEMORY[0x1BFB45F20](v30, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  v31 = [v25 token];
  sub_1BE052434();
  v33 = v32;

  sub_1BE052474();
  v34 = sub_1BE052444();
  v36 = v35;
  v33, v35, v37, v38, v39, v40, v41, v42;
  (*(v2 + 8))(v4, v1);
  if (v36 >> 60 == 15)
  {
LABEL_7:
    sub_1BD576BB0(v25);
    return 0;
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E69B86B0]) init];
    [v44 setFormat_];
    v45 = sub_1BE04AAB4();
    [v44 setMessageData_];

    [v44 setShouldRemoveQuietZone_];
    sub_1BD030220(v34, v36, v46, v47, v48, v49, v50, v51);
    sub_1BD576BB0(v25);
    return v44;
  }
}

uint64_t sub_1BD85D55C()
{
  v0 = 0x45444F43524142;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v20[0];
  if (v20[0] < 2)
  {
    sub_1BD576BB0(v20[0]);
    return v0;
  }

  v18 = [v20[0] tokenType];
  sub_1BD576BB0(v17);
  if (!v18)
  {
    return v0;
  }

  if (v18 == 1)
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000043, 0x80000001BE13D410);
  type metadata accessor for PKAppleBalanceInStoreTopUpTokenType(0);
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

void sub_1BD85D6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v25) = 0;
  v1 = v0;
  sub_1BE04D8C4();
  v2 = [*&v1[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account] accountIdentifier];
  if (v2)
  {
    v3 = sub_1BE052434();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *&v1[OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService];
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v3;
    v8[4] = v5;
    v28 = sub_1BD85ECC0;
    v29 = v8;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1BD20815C;
    v27 = &block_descriptor_193;
    v9 = _Block_copy(&v24);
    v29, v10, v11, v12, v13, v14, v15, v16;
    [v6 inStoreTopUpTokenForAccountWithIdentifier:v2 completion:v9];
    _Block_release(v9);
  }

  else
  {

    v5, v17, v18, v19, v20, v21, v22, v23;
  }
}

void sub_1BD85D88C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v59 = v15;
    v60 = v11;
    v19 = [a1 isExpired];
    v20 = a1;
    if (![v20 state] && (v19 & 1) == 0)
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v62 = sub_1BE052D54();
      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      *(v21 + 24) = v20;
      v67 = sub_1BD85ED64;
      v68 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1BD126964;
      v66 = &block_descriptor_39_3;
      v22 = _Block_copy(&aBlock);
      v23 = v68;
      v24 = v20;
      sub_1BE048964();
      v23, v25, v26, v27, v28, v29, v30, v31;
      sub_1BE051F74();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BE053664();
      v32 = v62;
      MEMORY[0x1BFB3FDF0](0, v18, v13, v22);
      _Block_release(v22);

      (*(v60 + 8))(v13, v10);
      (*(v59 + 8))(v18, v14);
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = *(Strong + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_account);

    v36 = [objc_allocWithZone(MEMORY[0x1E69B84B0]) init];
    v37 = [v35 accountBaseURL];
    if (v37)
    {
      v38 = v37;
      sub_1BE04A9F4();

      v39 = sub_1BE04A9C4();
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v39 = 0;
    }

    [v36 setBaseURL_];

    v40 = [v35 accountIdentifier];
    [v36 setAccountIdentifier_];

    [v36 setTokenType_];
    swift_beginAccess();
    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41 && (v42 = *(v41 + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_paymentWebService), v43 = v41, v44 = v42, v43, v42))
    {
      v45 = swift_allocObject();
      v46 = v61;
      v47 = v62;
      v45[2] = a2;
      v45[3] = v46;
      v45[4] = v47;
      v67 = sub_1BD85ED0C;
      v68 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1BD14E1D8;
      v66 = &block_descriptor_33_7;
      v48 = _Block_copy(&aBlock);
      v49 = v68;
      sub_1BE048C84();
      sub_1BE048964();
      v50 = v35;
      v51 = v36;
      v49, v52, v53, v54, v55, v56, v57, v58;
      [v44 generateTopUpTokenWithRequest:v51 forAccount:v50 completion:v48];

      _Block_release(v48);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD85DE80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE051FA4();
  v63 = *(v64 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13 && (v17 = [v13 token]) != 0)
  {
    v18 = v17;
    v62 = v10;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = *(Strong + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService);
      v21 = Strong;
      v61 = v20;

      if (v20)
      {
        v22 = v18;
        if (a5)
        {
          v60 = sub_1BE052404();
        }

        else
        {
          v60 = 0;
        }

        v35 = swift_allocObject();
        *(v35 + 16) = v18;
        v69 = sub_1BD85ED3C;
        v70 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1BD03E30C;
        v68 = &block_descriptor_57_5;
        v36 = _Block_copy(&aBlock);
        v37 = v70;
        v38 = v18;
        v37, v39, v40, v41, v42, v43, v44, v45;
        v47 = v60;
        v46 = v61;
        [v61 insertOrUpdateInStoreTopUpToken:v38 accountIdentifier:v60 completion:v36];
        _Block_release(v36);
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v23 = sub_1BE052D54();
    v48 = swift_allocObject();
    *(v48 + 16) = a3;
    *(v48 + 24) = v18;
    v69 = sub_1BD85ED20;
    v70 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v66 = 1107296256;
    v67 = sub_1BD126964;
    v68 = &block_descriptor_51_1;
    v49 = _Block_copy(&aBlock);
    v50 = v70;
    sub_1BE048964();
    v51 = v18;
    v50, v52, v53, v54, v55, v56, v57, v58;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v12, v49);
    _Block_release(v49);

    v10 = v62;
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v23 = sub_1BE052D54();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a2;
    v69 = sub_1BD85ED18;
    v70 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v66 = 1107296256;
    v67 = sub_1BD126964;
    v68 = &block_descriptor_45_0;
    v25 = _Block_copy(&aBlock);
    v26 = v70;
    sub_1BE048964();
    v27 = a2;
    v26, v28, v29, v30, v31, v32, v33, v34;
    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD56E888(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v16, v12, v25);
    _Block_release(v25);
  }

  (*(v10 + 8))(v12, v9);
  return (*(v63 + 8))(v16, v64);
}

void sub_1BD85E454(void *a1, void *a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_1BE04D194();
    v9 = a1;
    v10 = a2;
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2112;
      v15 = a1;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&dword_1BD026000, v11, v12, "Failed to insert in store token %@ with error: %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E590, &unk_1BE0B7E50);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v14, -1, -1);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1BD85E658(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BD85E840(a2);
  }
}

uint64_t sub_1BD85E6B4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a2;
    FeatureError.init(feature:error:)(4, a2, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v8, v5);
    sub_1BE04D8C4();
    sub_1BD23C32C(v8);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = 0;
    v12 = 0;
    return sub_1BE04D8C4();
  }

  return result;
}

void sub_1BD85E840(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  if (PKVerifySignatureForInStoreTopUpToken())
  {
    v9 = a1;
    v10 = [v9 state];
    if ([v9 isExpired])
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = a1;
    v17 = v12;
    v13 = v1;
    sub_1BE04D8C4();
    sub_1BD85C36C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = 0;
    v17 = 0;
    v14 = v1;
    sub_1BE04D8C4();
    FeatureError.init(feature:error:)(4, 0, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v8, v5);
    v15 = v14;
    sub_1BE04D8C4();
    sub_1BD23C32C(v8);
  }
}

void sub_1BD85EA4C(uint64_t a1)
{
  sub_1BD85EB34();
  if (v1 <= 0x3F)
  {
    sub_1BD693914(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD85EB34()
{
  if (!qword_1EBD55CD0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD55CD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI22InStoreTopUpTokenModelC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD85EB9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 10))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD85EBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BD85EC50(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BD85EC80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InStoreTopUpTokenModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t objectdestroy_26Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD85ED80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 88);
  return sub_1BE048964();
}

id sub_1BD85EE58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext);
  *a2 = v12;

  return v12;
}

void sub_1BD85EF18(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD402AC0(v1);
}

uint64_t WalletSettingsView.init(settingsModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WalletDeepLinkCoordinator(0);
  sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
  *a2 = sub_1BE04EEC4();
  a2[1] = v3;
  v4 = type metadata accessor for WalletSettingsView(0);
  v5 = a2 + v4[6];
  sub_1BE051694();
  *v5 = v9;
  *(v5 + 1) = *(&v9 + 1);
  v6 = a2 + v4[7];
  sub_1BE051694();
  *v6 = v9;
  *(v6 + 1) = *(&v9 + 1);
  v7 = a2 + v4[8];
  sub_1BE051694();
  *v7 = v9;
  *(v7 + 2) = v10;
  type metadata accessor for WalletSettingsModel(0);
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  return sub_1BE051A94();
}

uint64_t type metadata accessor for WalletSettingsView(uint64_t a1)
{
  result = qword_1EBD55CE8;
  if (!qword_1EBD55CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372A0, &qword_1BE0B12C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  *v5 = sub_1BE04F784();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55CE0, &qword_1BE0FDB48);
  sub_1BD85F5CC(v1, &v5[*(v6 + 44)]);
  v7 = type metadata accessor for WalletSettingsView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1BD864588(v1, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalletSettingsView);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1BD864520(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for WalletSettingsView);
  v14 = sub_1BE0528D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v44 - v17;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v47 = sub_1BE04EAA4();
    v48 = &v44;
    v46 = *(v47 - 8);
    MEMORY[0x1EEE9AC00](v47);
    v45 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1BE053834();
    v51, v20, v21, v22, v23, v24, v25, v26;
    v50 = 0xD00000000000002FLL;
    v51 = 0x80000001BE13D490;
    v49 = 48;
    v27 = sub_1BE053B24();
    v29 = v28;
    MEMORY[0x1BFB3F610](v27);
    v29, v30, v31, v32, v33, v34, v35, v36;
    v44 = &v44;
    v38 = MEMORY[0x1EEE9AC00](v37);
    (*(v15 + 16))(&v44 - v17, &v44 - v17, v14, v38);
    v39 = v45;
    sub_1BE04EA94();
    (*(v15 + 8))(v18, v14);
    sub_1BD0DE204(v5, a1, &qword_1EBD372A0, &qword_1BE0B12C0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372A8, &qword_1BE0B12C8);
    return (*(v46 + 32))(a1 + *(v40 + 36), v39, v47);
  }

  else
  {
    v42 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD372B0, &qword_1BE0B12D0) + 36));
    v43 = sub_1BE04E7B4();
    (*(v15 + 32))(&v42[*(v43 + 20)], &v44 - v17, v14);
    *v42 = &unk_1BE0FDB60;
    *(v42 + 1) = v12;
    return sub_1BD0DE204(v5, a1, &qword_1EBD372A0, &qword_1BE0B12C0);
  }
}

uint64_t sub_1BD85F5CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D28, &qword_1BE0FDD18);
  v43 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v42 = &v40 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D30, &qword_1BE0FDD20);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v40 - v7;
  v46 = sub_1BE04ECF4();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D38, &qword_1BE0FDD28);
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v12 = &v40 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D40, &qword_1BE0FDD30);
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v40 - v14;
  v16 = (a1 + *(type metadata accessor for WalletSettingsView(0) + 24));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v51) = v17;
  *&v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  v19 = sub_1BE0516A4();
  if (v54 == 1)
  {
    MEMORY[0x1EEE9AC00](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462D0, &qword_1BE0D69C8);
    sub_1BD447538();
    sub_1BE0504A4();
    sub_1BE051DD4();
    v20 = sub_1BD0DE4F4(&qword_1EBD55DD8, &qword_1EBD55D38, &qword_1BE0FDD28, MEMORY[0x1E697CCF0]);
    v21 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    v22 = v44;
    v23 = v46;
    sub_1BE051134();
    (*(v40 + 8))(v9, v23);
    (*(v10 + 8))(v12, v22);
    v24 = v47;
    (*(v13 + 16))(v48, v15, v47);
    swift_storeEnumTagMultiPayload();
    v51 = v22;
    *&v52 = v23;
    *(&v52 + 1) = v20;
    v53 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55DE0, &qword_1EBD55D28, &qword_1BE0FDD18, MEMORY[0x1E697C1A8]);
    sub_1BE04F9A4();
    return (*(v13 + 8))(v15, v24);
  }

  else
  {
    sub_1BE051A84();
    KeyPath = swift_getKeyPath();
    sub_1BE051AA4();
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    v34 = (*(v41 + 8))(v5, v3);
    v54 = v51;
    v55 = v52;
    MEMORY[0x1EEE9AC00](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D48, &qword_1BE0FDD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D50, &qword_1BE0FDD68);
    sub_1BD0DE4F4(&qword_1EBD55D58, &qword_1EBD55D48, &qword_1BE0FDD60, MEMORY[0x1E69E6318]);
    sub_1BD0DE4F4(&qword_1EBD55D60, &qword_1EBD55D48, &qword_1BE0FDD60, MEMORY[0x1E69E6338]);
    sub_1BD0DE4F4(&qword_1EBD55D68, &qword_1EBD55D48, &qword_1BE0FDD60, MEMORY[0x1E69E6348]);
    sub_1BD863C28();
    sub_1BD5F84E0();
    v35 = v42;
    sub_1BE04EBF4();
    v36 = v43;
    v37 = v49;
    (*(v43 + 16))(v48, v35, v49);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1BD0DE4F4(&qword_1EBD55DD8, &qword_1EBD55D38, &qword_1BE0FDD28, MEMORY[0x1E697CCF0]);
    v39 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    v51 = v44;
    *&v52 = v46;
    *(&v52 + 1) = v38;
    v53 = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD55DE0, &qword_1EBD55D28, &qword_1BE0FDD18, MEMORY[0x1E697C1A8]);
    sub_1BE04F9A4();
    return (*(v36 + 8))(v35, v37);
  }
}

uint64_t sub_1BD85FE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a3;
  v3[8] = sub_1BE0528A4();
  v3[9] = sub_1BE052894();
  v3[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD85FEC0, v5, v4);
}

uint64_t sub_1BD85FEC0()
{
  v1 = type metadata accessor for WalletSettingsView(0);
  *(v0 + 104) = v1;
  *(v0 + 168) = *(v1 + 20);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  *(v0 + 120) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1BD85FFA8;

  return sub_1BD40EDBC();
}

uint64_t sub_1BD85FFA8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 173) = a1;

  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = *(v2 + 96);
  v12 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD8600F4, v12, v11);
}

uint64_t sub_1BD8600F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 173);
  v10 = *(v8 + 104);
  v11 = *(v8 + 56);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v12 = (v11 + *(v10 + 24));
  v13 = *v12;
  v14 = *(v12 + 1);
  *(v8 + 16) = v13;
  *(v8 + 24) = v14;
  *(v8 + 172) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v16 = sub_1BE052844();
  *(v8 + 136) = v16;
  *(v8 + 144) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BD8601D8, v16, v15);
}

uint64_t sub_1BD8601D8()
{
  sub_1BE051A74();
  v1 = v0[5];
  KeyPath = swift_getKeyPath();
  v0[6] = v1;
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v0[19] = v1[11];
  sub_1BE048964();
  v1, v10, v11, v12, v13, v14, v15, v16;
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_1BD860310;

  return sub_1BD1BD518();
}

uint64_t sub_1BD860310()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 144);
  v11 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1BD262FF0, v11, v10);
}

uint64_t sub_1BD860454()
{
  v2 = *(type metadata accessor for WalletSettingsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD85FE18(v4, v5, v0 + v3);
}

uint64_t sub_1BD86054C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD462C0, &qword_1BE0D69A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

uint64_t sub_1BD860660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBE0, &unk_1BE0D69B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC00, &unk_1BE0C2460);
  sub_1BD0DE4F4(&qword_1EBD3DBF8, &qword_1EBD3DC00, &unk_1BE0C2460, MEMORY[0x1E6981870]);
  sub_1BE051A44();
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD210888();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050AE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD860834@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DC08, &qword_1BE0D69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B660, &qword_1BE0C2470);
  sub_1BD0DE4F4(&qword_1EBD3B668, &qword_1EBD3B660, &qword_1BE0C2470, MEMORY[0x1E6981F48]);
  return sub_1BE04E2B4();
}

void sub_1BD8608FC(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v61[-v7];
  v9 = *MEMORY[0x1E69B80F0];
  v10 = *(v3 + 104);
  v10(&v61[-v7], v9, v2, v6);
  v11 = PKPassKitBundle();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    v16 = *(v3 + 8);
    v16(v8, v2);
    v68 = v13;
    v69 = v15;
    sub_1BD0DDEBC();
    v63 = sub_1BE0506C4();
    v64 = v17;
    v19 = v18;
    v62 = v20;
    (v10)(v65, v9, v2);
    v21 = PKPassKitBundle();
    if (v21)
    {
      v22 = v21;
      v23 = v65;
      v24 = sub_1BE04B6F4();
      v26 = v25;

      v16(v23, v2);
      v68 = v24;
      v69 = v26;
      v27 = sub_1BE0506C4();
      v29 = v28;
      v31 = v30;
      v32 = v62 & 1;
      v66 = v62 & 1;
      LOBYTE(v68) = v62 & 1;
      v34 = (v33 & 1);
      v67 = v33 & 1;
      v36 = v63;
      v35 = v64;
      *a1 = v63;
      *(a1 + 8) = v19;
      *(a1 + 16) = v32;
      *(a1 + 24) = v35;
      *(a1 + 32) = v27;
      *(a1 + 40) = v28;
      *(a1 + 48) = v33 & 1;
      *(a1 + 56) = v30;
      sub_1BD0D7F18(v36, v19, v32);
      sub_1BE048C84();
      sub_1BD0D7F18(v27, v29, v34);
      sub_1BE048C84();
      sub_1BD0DDF10(v27, v29, v34, v37, v38, v39, v40, v41);
      v31, v42, v43, v44, v45, v46, v47, v48;
      sub_1BD0DDF10(v36, v19, v66, v49, v50, v51, v52, v53);
      v35, v54, v55, v56, v57, v58, v59, v60;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD860BD0(uint64_t a1)
{
  v2 = type metadata accessor for WalletSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD864588(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalletSettingsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD864520(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for WalletSettingsView);
  return sub_1BE051704();
}

void sub_1BD860D24()
{
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  sub_1BD40EC88();
  v7, v0, v1, v2, v3, v4, v5, v6;
}

id sub_1BD860D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD860EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a2;
  v182 = sub_1BE04ECF4();
  v183 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WalletSettingsView(0);
  v198 = *(v4 - 8);
  v200 = *(v198 + 64);
  v5 = v4 - 8;
  v172 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DB0, &unk_1BE0FDDA0);
  v176 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v170 = v166 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DA8, &qword_1BE0FDD98);
  v178 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v173 = v166 - v9;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D98, &qword_1BE0FDD88);
  v181 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v174 = v166 - v10;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D90, &qword_1BE0FDD80);
  v184 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = (v166 - v11);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D88, &qword_1BE0FDD78);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v197 = v166 - v12;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DE8, &qword_1BE0FDDB0);
  v188 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v186 = v166 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D80, &qword_1BE0FDD70);
  MEMORY[0x1EEE9AC00](v185);
  v191 = v166 - v14;
  v201 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF0, &qword_1BE0FDDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DF8, &qword_1BE0FDDC0);
  sub_1BD0DE4F4(&qword_1EBD55E00, &qword_1EBD55DF0, &qword_1BE0FDDB8, MEMORY[0x1E6981F48]);
  sub_1BD0DE4F4(&qword_1EBD55E08, &qword_1EBD55DF8, &qword_1BE0FDDC0, MEMORY[0x1E69817F8]);
  sub_1BE050494();
  v15 = a1 + *(v5 + 36);
  v16 = *v15;
  v17 = *(v15 + 8);
  v209[0] = v16;
  v210 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v19 = v202;
  v18 = v203;
  v166[3] = v204;
  v171 = a1;
  v194 = type metadata accessor for WalletSettingsView;
  sub_1BD864588(a1, v7, type metadata accessor for WalletSettingsView);
  v20 = *(v198 + 80);
  v21 = (v20 + 16) & ~v20;
  v168 = v21;
  v198 = v20;
  v22 = swift_allocObject();
  v193 = type metadata accessor for WalletSettingsView;
  sub_1BD864520(v7, v22 + v21, type metadata accessor for WalletSettingsView);
  v199 = v7;
  sub_1BD864588(a1, v7, type metadata accessor for WalletSettingsView);
  v23 = swift_allocObject();
  sub_1BD864520(v7, v23 + v21, type metadata accessor for WalletSettingsView);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55DA0, &qword_1BE0FDD90);
  v25 = sub_1BD0DE4F4(&qword_1EBD55DB8, &qword_1EBD55DB0, &unk_1BE0FDDA0, MEMORY[0x1E697CCF0]);
  v26 = sub_1BD863F6C();
  v167 = v26;
  v169 = v24;
  v27 = v173;
  v28 = v175;
  v29 = v170;
  sub_1BE050F64();
  v18, v30, v31, v32, v33, v34, v35, v36;
  v22, v37, v38, v39, v40, v41, v42, v43;
  v23, v44, v45, v46, v47, v48, v49, v50;
  v19, v51, v52, v53, v54, v55, v56, v57;
  (*(v176 + 8))(v29, v28);
  v58 = v179;
  sub_1BE051DD4();
  v202 = v28;
  v203 = v24;
  v204 = v25;
  v205 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
  v61 = v174;
  v62 = v177;
  v63 = v182;
  sub_1BE051134();
  v64 = v63;
  (*(v183 + 8))(v58, v63);
  (*(v178 + 8))(v27, v62);
  v65 = v171;
  v66 = v199;
  sub_1BD864588(v171, v199, v194);
  v67 = v168;
  v68 = swift_allocObject();
  sub_1BD864520(v66, v68 + v67, v193);
  v202 = v62;
  v203 = v64;
  v204 = OpaqueTypeConformance2;
  v205 = v60;
  v183 = swift_getOpaqueTypeConformance2();
  v69 = sub_1BD5F84E0();
  v70 = v167;
  v71 = v180;
  v72 = v169;
  sub_1BE050D64();
  v68, v73, v74, v75, v76, v77, v78, v79;
  (*(v181 + 8))(v61, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  v80 = v202;
  KeyPath = swift_getKeyPath();
  v202 = v80;
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  KeyPath, v82, v83, v84, v85, v86, v87, v88;
  swift_beginAccess();
  v89 = v80[4];
  sub_1BE048C84();
  v80, v90, v91, v92, v93, v94, v95, v96;
  v208 = v89;
  v97 = v65;
  v98 = v199;
  sub_1BD864588(v65, v199, v194);
  v99 = swift_allocObject();
  v100 = v67;
  sub_1BD864520(v98, v99 + v67, v193);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D48, &qword_1BE0FDD60);
  v202 = v71;
  v203 = &type metadata for PaymentPassPaneIdentifier;
  v102 = v97;
  v204 = v72;
  v205 = v183;
  v206 = v69;
  v207 = v70;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_1BD864068();
  v105 = v196;
  v194 = v101;
  v106 = v195;
  sub_1BE051064();
  v89, v107, v108, v109, v110, v111, v112, v113;
  v99, v114, v115, v116, v117, v118, v119, v120;
  (*(v184 + 8))(v106, v105);
  v121 = *v102;
  if (*v102)
  {
    v122 = swift_getKeyPath();
    v123 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v202);
    v122, v124, v125, v126, v127, v128, v129, v130;
    v123, v131, v132, v133, v134, v135, v136, v137;
    v121, v138, v139, v140, v141, v142, v143, v144;
    LOBYTE(v208) = v202;
    v195 = type metadata accessor for WalletSettingsView;
    v145 = v199;
    sub_1BD864588(v102, v199, type metadata accessor for WalletSettingsView);
    v146 = swift_allocObject();
    sub_1BD864520(v145, v146 + v100, type metadata accessor for WalletSettingsView);
    v202 = v196;
    v203 = v194;
    v204 = v103;
    v205 = v104;
    swift_getOpaqueTypeConformance2();
    v147 = v186;
    v148 = v189;
    v149 = v197;
    sub_1BE051064();
    v146, v150, v151, v152, v153, v154, v155, v156;
    (*(v187 + 8))(v149, v148);
    v157 = v195;
    sub_1BD864588(v102, v145, v195);
    v158 = swift_allocObject();
    sub_1BD864520(v145, v158 + v100, type metadata accessor for WalletSettingsView);
    v159 = v191;
    (*(v188 + 32))(v191, v147, v190);
    v160 = &v159[*(v185 + 36)];
    *v160 = sub_1BD86432C;
    v160[1] = v158;
    v160[2] = 0;
    v160[3] = 0;
    sub_1BD864588(v102, v145, v157);
    v161 = swift_allocObject();
    sub_1BD864520(v145, v161 + v100, type metadata accessor for WalletSettingsView);
    v162 = v159;
    v163 = v192;
    sub_1BD0DE204(v162, v192, &qword_1EBD55D80, &qword_1BE0FDD70);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D50, &qword_1BE0FDD68);
    v165 = (v163 + *(result + 36));
    *v165 = 0;
    v165[1] = 0;
    v165[2] = sub_1BD864478;
    v165[3] = v161;
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator(0);
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD861E0C(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SettingsOptionsSection(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v61 - v6);
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  sub_1BD5F9048(v65[0], v65);
  sub_1BE051A74();
  v8 = sub_1BD2D3FE0(v64);
  v62 = v9;
  v63 = v8;
  sub_1BE051A74();
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *v7 = sub_1BE04E124();
  type metadata accessor for WalletSettingsModel(0);
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE051A94();
  v10 = v65[0];
  v11 = v65[1];
  v13 = v65[2];
  v12 = v65[3];
  v14 = v66;
  v15 = v67;
  sub_1BD864588(v7, v4, type metadata accessor for SettingsOptionsSection);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14 & 1;
  v17 = v62;
  v16 = v63;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E18, &qword_1BE0FDE88);
  sub_1BD864588(v4, a1 + *(v18 + 64), type metadata accessor for SettingsOptionsSection);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD8645F0(v7);
  sub_1BD8645F0(v4);
  v15, v19, v20, v21, v22, v23, v24, v25;
  v13, v26, v27, v28, v29, v30, v31, v32;
  v11, v33, v34, v35, v36, v37, v38, v39;
  v10, v40, v41, v42, v43, v44, v45, v46;
  v17, v47, v48, v49, v50, v51, v52, v53;
  v16, v54, v55, v56, v57, v58, v59, v60;
}

uint64_t sub_1BD8620C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  *a1 = sub_1BE04F504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55E10, &qword_1BE0FDE80);
  sub_1BE051704();
  sub_1BE052434();
  v7 = v6;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return (*(v3 + 8))(v5, v2);
}

id sub_1BD86227C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F0], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD8623E8(uint64_t a1)
{
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD8624A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for PaymentPassDetailsSheet(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  v8 = v37;
  v9 = (a1 + *(v7 + 32));
  v10 = *v9;
  v11 = *(v9 + 2);
  v37 = v10;
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  object = v36._object;
  *&v13 = WalletSettingsModel.passForUniqueID(uniqueID:)(v36);
  v14 = v13;
  v8, *(&v13 + 1), v15, v16, v17, v18, v19, v20;
  object, v21, v22, v23, v24, v25, v26, v27;
  if (v14)
  {
    sub_1BE051A74();
    v28 = v37;
    *v6 = v14;
    *(v6 + 1) = v28;
    LOBYTE(v36._countAndFlagsBits) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B88, &qword_1BE0FDE40);
    sub_1BE051694();
    v29 = *(&v37 + 1);
    v6[16] = v37;
    *(v6 + 3) = v29;
    v30 = *(v3 + 28);
    *&v6[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    v31 = v35;
    sub_1BD864520(v6, v35, type metadata accessor for PaymentPassDetailsSheet);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v35;
  }

  return (*(v4 + 56))(v33, v32, 1, v3);
}

uint64_t sub_1BD8626E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentPassDetailsSheet(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = a1[1];
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  v10 = v26;
  v11._countAndFlagsBits = v8;
  v11._object = v9;
  *&v12 = WalletSettingsModel.passForUniqueID(uniqueID:)(v11);
  v13 = v12;
  v10, *(&v12 + 1), v14, v15, v16, v17, v18, v19;
  if (v13)
  {
    sub_1BE051A74();
    v20 = v26;
    *v7 = v13;
    *(v7 + 1) = v20;
    v25[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46B88, &qword_1BE0FDE40);
    sub_1BE051694();
    v21 = v27;
    v7[16] = v26;
    *(v7 + 3) = v21;
    v22 = *(v4 + 28);
    *&v7[v22] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    sub_1BD864520(v7, a2, type metadata accessor for PaymentPassDetailsSheet);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v5 + 56))(a2, v23, 1, v4);
}

void sub_1BD8628D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v5 = (*a2 + 16 + 16 * v4);
    v7 = *v5;
    v6 = v5[1];
    v8 = type metadata accessor for WalletSettingsView(0);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
    sub_1BE051A74();
    sub_1BE048C84();
    v9._countAndFlagsBits = v7;
    v9._object = v6;
    *&v10 = WalletSettingsModel.passForUniqueID(uniqueID:)(v9);
    v11 = v10;
    v174, *(&v10 + 1), v12, v13, v14, v15, v16, v17;
    v6, v18, v19, v20, v21, v22, v23, v24;
    if (!v11)
    {
      v6, v25, v26, v27, v28, v29, v30, v31;
      goto LABEL_11;
    }

    if (![v11 passActivationState] || objc_msgSend(v11, sel_passActivationState) == 2)
    {
      v6, v32, v33, v34, v35, v36, v37, v38;

      goto LABEL_11;
    }

    sub_1BE051A74();
    KeyPath = swift_getKeyPath();
    sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v40, v41, v42, v43, v44, v45, v46;
    v47 = swift_getKeyPath();
    sub_1BE04B5B4();
    v47, v48, v49, v50, v51, v52, v53, v54;
    swift_beginAccess();
    v62 = v174[4];
    if (*(v62 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v63 = *(v62 + 2);
        if (v63)
        {
LABEL_10:
          v64 = v63 - 1;
          v65 = *&v62[16 * v64 + 40];
          *(v62 + 2) = v64;
          v174[4] = v62;
          swift_endAccess();
          v65, v66, v67, v68, v69, v70, v71, v72;
          v73 = swift_getKeyPath();
          sub_1BE04B5A4();
          v174, v74, v75, v76, v77, v78, v79, v80;
          v73, v81, v82, v83, v84, v85, v86, v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
          sub_1BE0516B4();
          v88 = a3 + *(v8 + 32);
          v174 = *v88;
          v175 = *(v88 + 8);
          v176 = *(v88 + 16);
          v173 = v7;
          sub_1BE048964();
          sub_1BE048C84();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
          sub_1BE0516B4();
          v176, v89, v90, v91, v92, v93, v94, v95;
          v175, v96, v97, v98, v99, v100, v101, v102;

          goto LABEL_11;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    v62 = sub_1BD4FFFA4(v62, v55, v56, v57, v58, v59, v60, v61);
    v63 = *(v62 + 2);
    if (v63)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_11:
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  v103 = swift_getKeyPath();
  sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
  sub_1BE04B594();
  v103, v104, v105, v106, v107, v108, v109, v110;
  swift_beginAccess();
  v111 = v174[4];
  sub_1BE048C84();
  v174, v112, v113, v114, v115, v116, v117, v118;
  v119 = v111[2];
  v111, v120, v121, v122, v123, v124, v125, v126;
  if (!v119)
  {
    sub_1BE051A74();
    if (*&v173[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel__authenticationContext])
    {
      v134 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v134);
      sub_1BE04B584();
      v173, v135, v136, v137, v138, v139, v140, v141;
      v134, v142, v143, v144, v145, v146, v147, v148;
    }

    else
    {
      v173, v127, v128, v129, v130, v131, v132, v133;
    }

    sub_1BE051A74();
    sub_1BE051A74();
    v149 = *&v173[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath];
    v150 = *&v173[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath + 8];
    sub_1BE048C84();
    v173, v151, v152, v153, v154, v155, v156, v157;
    v158._countAndFlagsBits = v149;
    v158._object = v150;
    WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v158);
    v173, v159, v160, v161, v162, v163, v164, v165;
    v150, v166, v167, v168, v169, v170, v171, v172;
  }
}

void sub_1BD862DE8(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    type metadata accessor for WalletSettingsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
    sub_1BE051A74();
    sub_1BE051A74();
    v5 = *(v53 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
    v4 = *(v53 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8);
    sub_1BE048C84();
    v53, v6, v7, v8, v9, v10, v11, v12;
    KeyPath = swift_getKeyPath();
    sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
    sub_1BE04B594();
    KeyPath, v14, v15, v16, v17, v18, v19, v20;
    v21 = swift_getKeyPath();
    sub_1BE04B5B4();
    v21, v22, v23, v24, v25, v26, v27, v28;
    swift_beginAccess();
    v29 = v53[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[4] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1BD1D8E5C(0, *(v29 + 2) + 1, 1, v29, v31, v32, v33, v34);
      v53[4] = v29;
    }

    v36 = *(v29 + 2);
    v35 = *(v29 + 3);
    if (v36 >= v35 >> 1)
    {
      v29 = sub_1BD1D8E5C((v35 > 1), v36 + 1, 1, v29, v31, v32, v33, v34);
    }

    *(v29 + 2) = v36 + 1;
    v37 = &v29[16 * v36];
    *(v37 + 4) = v5;
    *(v37 + 5) = v4;
    v53[4] = v29;
    swift_endAccess();
    v38 = swift_getKeyPath();
    sub_1BE04B5A4();
    v53, v39, v40, v41, v42, v43, v44, v45;
    v38, v46, v47, v48, v49, v50, v51, v52;
    if (*a3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator(0);
      sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

void sub_1BD8630B8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v76);
    KeyPath, v4, v5, v6, v7, v8, v9, v10;
    v3, v11, v12, v13, v14, v15, v16, v17;
    v1, v18, v19, v20, v21, v22, v23, v24;
    if (v76)
    {
      type metadata accessor for WalletSettingsView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
      sub_1BE051A74();
      v25 = v76;
      sub_1BE051A74();
      v26 = v76;
      v28 = *(v76 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath);
      v27 = *(v76 + OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8);
      sub_1BE048C84();
      v26, v29, v30, v31, v32, v33, v34, v35;
      v36 = swift_getKeyPath();
      v76 = v25;
      sub_1BD864020(&qword_1EBD40BF8, type metadata accessor for WalletSettingsModel, &protocol conformance descriptor for WalletSettingsModel);
      sub_1BE04B594();
      v36, v37, v38, v39, v40, v41, v42, v43;
      v76 = v25;
      v44 = swift_getKeyPath();
      sub_1BE04B5B4();
      v44, v45, v46, v47, v48, v49, v50, v51;
      swift_beginAccess();
      v52 = v25[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[4] = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_1BD1D8E5C(0, *(v52 + 2) + 1, 1, v52, v54, v55, v56, v57);
        v25[4] = v52;
      }

      v59 = *(v52 + 2);
      v58 = *(v52 + 3);
      if (v59 >= v58 >> 1)
      {
        v52 = sub_1BD1D8E5C((v58 > 1), v59 + 1, 1, v52, v54, v55, v56, v57);
      }

      *(v52 + 2) = v59 + 1;
      v60 = &v52[16 * v59];
      *(v60 + 4) = v28;
      *(v60 + 5) = v27;
      v25[4] = v52;
      swift_endAccess();
      v76 = v25;
      v61 = swift_getKeyPath();
      sub_1BE04B5A4();
      v25, v62, v63, v64, v65, v66, v67, v68;
      v61, v69, v70, v71, v72, v73, v74, v75;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v76) = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
    }
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator(0);
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD8633D4()
{
  type metadata accessor for WalletSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  sub_1BE051A74();
  sub_1BE051A74();
  v0 = *&v48[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath];
  v1 = *&v48[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsAuthPath + 8];
  sub_1BE048C84();
  v48, v2, v3, v4, v5, v6, v7, v8;
  v9._countAndFlagsBits = v0;
  v9._object = v1;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v9);
  v48, v10, v11, v12, v13, v14, v15, v16;
  v1, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051A74();
  sub_1BE051A74();
  v24 = *&v48[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath];
  v25 = *&v48[OBJC_IVAR____TtC9PassKitUI19WalletSettingsModel_autoFillSettingsPath + 8];
  sub_1BE048C84();
  v48, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = v24;
  v33._object = v25;
  WalletSettingsModel.invalidateNavigationPathsWithUniqueID(uniqueID:)(v33);
  v48, v34, v35, v36, v37, v38, v39, v40;
  v25, v41, v42, v43, v44, v45, v46, v47;
}

void sub_1BD863538(uint64_t a1)
{
  sub_1BD86360C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD8636A0(319);
    if (v2 <= 0x3F)
    {
      sub_1BD327BD8(319, &qword_1EBD496E0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD86360C(uint64_t a1)
{
  if (!qword_1EBD55CF8)
  {
    type metadata accessor for WalletDeepLinkCoordinator(255);
    sub_1BD864020(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD55CF8);
    }
  }
}

void sub_1BD8636A0(uint64_t a1)
{
  if (!qword_1EBD40C80)
  {
    type metadata accessor for WalletSettingsModel(255);
    v1 = sub_1BE051AB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD40C80);
    }
  }
}

void sub_1BD863720(void *a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0x4449657571696E75 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a3, a4, a5, a6, a7;
    v19 = 0;
  }

  else
  {
    v11 = sub_1BE053B84();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a8 = v19 & 1;
}

uint64_t sub_1BD8637A8(uint64_t a1)
{
  v2 = sub_1BD863BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BD8637E4(uint64_t a1)
{
  v2 = sub_1BD863BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BD863820()
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD863874(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BE052524();
  return sub_1BE053D64();
}

void sub_1BD8638BC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D10, &qword_1BE0FDCD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD863BCC();
  sub_1BE053D94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = sub_1BE053A94();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1, v19, v20, v21, v22, v23, v24, v25);
    *a2 = v16;
    a2[1] = v18;
  }
}

uint64_t sub_1BD863A38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55D20, &unk_1BE0FDCE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BD863BCC();
  sub_1BE053DA4();
  sub_1BE053AE4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1BD863B78()
{
  result = qword_1EBD55D08;
  if (!qword_1EBD55D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D08);
  }

  return result;
}

unint64_t sub_1BD863BCC()
{
  result = qword_1EBD55D18;
  if (!qword_1EBD55D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D18);
  }

  return result;
}

unint64_t sub_1BD863C28()
{
  result = qword_1EBD55D70;
  if (!qword_1EBD55D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D50, &qword_1BE0FDD68);
    sub_1BD863CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D70);
  }

  return result;
}

unint64_t sub_1BD863CB4()
{
  result = qword_1EBD55D78;
  if (!qword_1EBD55D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D80, &qword_1BE0FDD70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D88, &qword_1BE0FDD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D90, &qword_1BE0FDD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D48, &qword_1BE0FDD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D98, &qword_1BE0FDD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA0, &qword_1BE0FDD90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA8, &qword_1BE0FDD98);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DB0, &unk_1BE0FDDA0);
    sub_1BD0DE4F4(&qword_1EBD55DB8, &qword_1EBD55DB0, &unk_1BE0FDDA0, MEMORY[0x1E697CCF0]);
    sub_1BD863F6C();
    swift_getOpaqueTypeConformance2();
    sub_1BD864020(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD5F84E0();
    swift_getOpaqueTypeConformance2();
    sub_1BD864068();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55D78);
  }

  return result;
}

unint64_t sub_1BD863F6C()
{
  result = qword_1EBD55DC0;
  if (!qword_1EBD55DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55DA0, &qword_1BE0FDD90);
    sub_1BD864020(&qword_1EBD55DC8, type metadata accessor for PaymentPassDetailsSheet, &unk_1BE0D7F44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55DC0);
  }

  return result;
}

uint64_t sub_1BD864020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD864068()
{
  result = qword_1EBD55DD0;
  if (!qword_1EBD55DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55D48, &qword_1BE0FDD60);
    sub_1BD863B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55DD0);
  }

  return result;
}

uint64_t sub_1BD86413C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD8624A8(v4, a1);
}

uint64_t sub_1BD8641AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WalletSettingsView(0);

  return sub_1BD8626E0(a1, a2);
}

void sub_1BD86422C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WalletSettingsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD8628D0(a1, a2, v6);
}

void sub_1BD8642AC(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for WalletSettingsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD862DE8(a1, a2, v6);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = (type metadata accessor for WalletSettingsView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C68, &unk_1BE109EC0);
  (*(*(v11 - 8) + 8))(v2 + v10, v11);
  *(v2 + v1[8] + 8), v12, v13, v14, v15, v16, v17, v18;
  *(v2 + v1[9] + 8), v19, v20, v21, v22, v23, v24, v25;
  v26 = (v2 + v1[10]);
  v26[1], v27, v28, v29, v30, v31, v32, v33;
  v26[2], v34, v35, v36, v37, v38, v39, v40;

  return swift_deallocObject();
}

uint64_t sub_1BD864490(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WalletSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD864520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD864588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8645F0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsOptionsSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD864660()
{
  result = qword_1EBD55E20;
  if (!qword_1EBD55E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55E20);
  }

  return result;
}

unint64_t sub_1BD8646B8()
{
  result = qword_1EBD55E28;
  if (!qword_1EBD55E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55E28);
  }

  return result;
}

unint64_t sub_1BD864710()
{
  result = qword_1EBD55E30[0];
  if (!qword_1EBD55E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD55E30);
  }

  return result;
}

void *WrapperHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1BD864EE8(a1);
  (*(*(*(v2 + class metadata base offset for WrapperHostingController) - 8) + 8))(a1);
  return v5;
}

void sub_1BD86481C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BD864868(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD8648F8;
}

void sub_1BD8648F8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ObservableHostingController.__deallocating_deinit()
{
  MEMORY[0x1BFB46050](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8649CC@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ObservableHostingController();
  result = sub_1BE04D814();
  *a3 = result;
  return result;
}

void *WrapperHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = sub_1BD864EE8(a1);
  (*(*(*(v3 + class metadata base offset for WrapperHostingController) - 8) + 8))(a1);
  return v4;
}

void sub_1BD864AAC(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1BD8651E0(v3);
}

id WrapperHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WrapperHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for WrapperHostingController), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for WrapperHostingController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t InnerHostingView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B1E8, &qword_1BE0BC320);
  v2 = sub_1BE04EBD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  type metadata accessor for ObservableHostingController();
  v9 = *(a1 + 24);
  sub_1BD8652DC();
  sub_1BE050BE4();
  v10 = sub_1BD865330();
  v13[0] = v9;
  v13[1] = v10;
  swift_getWitnessTable();
  sub_1BD147308();
  v11 = *(v3 + 8);
  v11(v5, v2);
  sub_1BD147308();
  return (v11)(v8, v2);
}

void *sub_1BD864EE8(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for WrapperHostingController);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - v5;
  v9 = type metadata accessor for InnerHostingView(0, v3, *(v7 + 8), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  type metadata accessor for ObservableHostingController();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for WrapperHostingController + 16)) = v16;
  (*(v4 + 16))(v6, a1, v3);
  (*(v4 + 32))(v15, v6, v3);
  *&v15[*(v9 + 36)] = v16;
  (*(v10 + 16))(v12, v15, v9);
  sub_1BE048964();
  v17 = sub_1BE04F894();
  (*(v10 + 8))(v15, v9);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v17;
}

unint64_t sub_1BD8652DC()
{
  result = qword_1EBD3B1A0;
  if (!qword_1EBD3B1A0)
  {
    type metadata accessor for ObservableHostingController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1A0);
  }

  return result;
}

unint64_t sub_1BD865330()
{
  result = qword_1EBD3B1E0;
  if (!qword_1EBD3B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3B1E8, &qword_1BE0BC320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1E0);
  }

  return result;
}

uint64_t sub_1BD8654E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ObservableHostingController();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BD865560(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1BD86569C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI14UIFlowItemViewO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BD86588C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

void *sub_1BD8658E8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1BD865948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  (*(a6 + 8))(a1, a2, v7, a3, a4, a5);
  return sub_1BD12FF7C(v7);
}

uint64_t sub_1BD8659A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v5, 0, sizeof(v5));
  v6 = -1;
  (*(a4 + 8))(a1, a2, v5, 0, 0, a3, a4);
  return sub_1BD12FF7C(v5);
}

uint64_t sub_1BD865A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD865A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BD865AAC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1BD865AF4()
{
  result = qword_1EBD55F38;
  if (!qword_1EBD55F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55F38);
  }

  return result;
}

uint64_t type metadata accessor for ShippingAddressRow(uint64_t a1)
{
  result = qword_1EBD55F40;
  if (!qword_1EBD55F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD865BC4(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD2A1EF0(319);
    if (v2 <= 0x3F)
    {
      sub_1BD3A0CE0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD865CA0()
{
  result = qword_1EBD55F50;
  if (!qword_1EBD55F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55F50);
  }

  return result;
}

uint64_t sub_1BD865CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v28 = sub_1BE04FF64();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F58, &qword_1BE0FE3D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F60, &qword_1BE0FE3D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F68, &qword_1BE0FE3E0);
  sub_1BD866004(v2, &v8[*(v13 + 44)]);
  sub_1BE04FF44();
  v14 = sub_1BD0DE4F4(&qword_1EBD55F70, &qword_1EBD55F58, &qword_1BE0FE3D0, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v28);
  sub_1BD0DE53C(v8, &qword_1EBD55F58, &qword_1BE0FE3D0);
  sub_1BE052434();
  v16 = v15;
  v30 = v6;
  v31 = v14;
  swift_getOpaqueTypeConformance2();
  v17 = v29;
  sub_1BE050DE4();
  v16, v18, v19, v20, v21, v22, v23, v24;
  (*(v10 + 8))(v12, v9);
  LOBYTE(v8) = *(v27[1] + 64);
  v25 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F78, &qword_1BE0FE3E8) + 36);
  *v25 = 0;
  *(v25 + 8) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F80, &qword_1BE0FE3F0);
  *(v17 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1BD866004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v169 = sub_1BE04F454();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v148[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = sub_1BE04E8A4();
  v163 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v160 = &v148[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54650, &qword_1BE0FA928);
  v165 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v161 = &v148[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v162 = &v148[-v7];
  v154 = sub_1BE04C894();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v148[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_1BE04C764();
  v157 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v148[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54658, &qword_1BE0FA930);
  MEMORY[0x1EEE9AC00](v179);
  v155 = &v148[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v148[-v12];
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F88, &qword_1BE0FE3F8);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v148[-v13];
  v173 = sub_1BE04F6E4();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v148[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558, &qword_1BE0FE400);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v148[-v15];
  v16 = sub_1BE051AD4();
  v191 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v148[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v190);
  v182 = &v148[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v148[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v148[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v148[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v181 = &v148[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v189 = &v148[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v180 = &v148[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v151 = &v148[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v148[-v36];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v148[-v39];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F90, &qword_1BE0FE408);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v148[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v44);
  v186 = &v148[-v45];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55F98, &qword_1BE0FE410);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v185 = &v148[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v148[-v49];
  v51 = *(a1 + *(type metadata accessor for ShippingAddressRow(0) + 44));
  *v50 = sub_1BE04F504();
  *(v50 + 1) = v51;
  v50[16] = 0;
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FA0, &unk_1BE0FE418) + 44);
  v184 = v50;
  sub_1BD867578(a1, &v50[v52]);
  v53 = *(a1 + 64) == 1;
  v187 = v43;
  v175 = a1;
  if (!v53)
  {
    goto LABEL_14;
  }

  v150 = v23;
  sub_1BD70A2C8(v26);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  if ((*(*(v54 - 8) + 48))(v26, 1, v54) == 1)
  {
    sub_1BD0DE53C(v26, &qword_1EBD40450, &qword_1BE0D7250);
    v55 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v54);
    sub_1BD0DE53C(v26, &qword_1EBD40520, &qword_1BE0D70B0);
    v55 = 0;
  }

  v56 = v191;
  v57 = *(v191 + 56);
  v57(v40, v55, 1, v16);
  (*(v56 + 104))(v37, *MEMORY[0x1E697D708], v16);
  v57(v37, 0, 1, v16);
  v58 = *(v190 + 48);
  v59 = v183;
  sub_1BD0DE19C(v40, v183, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE19C(v37, &v59[v58], &qword_1EBD40530, &unk_1BE0C80F0);
  v60 = *(v56 + 48);
  if (v60(v59, 1, v16) == 1)
  {
    sub_1BD0DE53C(v37, &qword_1EBD40530, &unk_1BE0C80F0);
    v61 = v183;
    sub_1BD0DE53C(v40, &qword_1EBD40530, &unk_1BE0C80F0);
    if (v60(&v61[v58], 1, v16) == 1)
    {
      sub_1BD0DE53C(v61, &qword_1EBD40530, &unk_1BE0C80F0);
      v23 = v150;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v62 = v151;
  sub_1BD0DE19C(v59, v151, &qword_1EBD40530, &unk_1BE0C80F0);
  if (v60(&v59[v58], 1, v16) == 1)
  {
    sub_1BD0DE53C(v37, &qword_1EBD40530, &unk_1BE0C80F0);
    v61 = v183;
    sub_1BD0DE53C(v40, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v191 + 8))(v62, v16);
LABEL_11:
    sub_1BD0DE53C(v61, &qword_1EBD40528, &unk_1BE0CE330);
    goto LABEL_12;
  }

  v108 = v191;
  v109 = v62;
  v110 = v170;
  (*(v191 + 32))(v170, &v59[v58], v16);
  sub_1BD8681A4(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
  v149 = sub_1BE052334();
  v111 = *(v108 + 8);
  v111(v110, v16);
  sub_1BD0DE53C(v37, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v40, &qword_1EBD40530, &unk_1BE0C80F0);
  v111(v109, v16);
  sub_1BD0DE53C(v59, &qword_1EBD40530, &unk_1BE0C80F0);
  v23 = v150;
  if (v149)
  {
LABEL_14:
    sub_1BD70A2C8(v23);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if ((*(*(v112 - 8) + 48))(v23, 1, v112) == 1)
    {
      sub_1BD0DE53C(v23, &qword_1EBD40450, &qword_1BE0D7250);
      v113 = 1;
      v114 = v181;
      v115 = v182;
      v116 = v180;
    }

    else
    {
      v116 = v180;
      MEMORY[0x1BFB3E970](v112);
      sub_1BD0DE53C(v23, &qword_1EBD40520, &qword_1BE0D70B0);
      v113 = 0;
      v114 = v181;
      v115 = v182;
    }

    v117 = v189;
    v118 = v191;
    v119 = *(v191 + 56);
    v119(v116, v113, 1, v16);
    (*(v118 + 104))(v117, *MEMORY[0x1E697D708], v16);
    v119(v117, 0, 1, v16);
    v120 = *(v190 + 48);
    sub_1BD0DE19C(v116, v115, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE19C(v117, v115 + v120, &qword_1EBD40530, &unk_1BE0C80F0);
    v121 = *(v118 + 48);
    if (v121(v115, 1, v16) == 1)
    {
      sub_1BD0DE53C(v117, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v116, &qword_1EBD40530, &unk_1BE0C80F0);
      v122 = v121(v115 + v120, 1, v16);
      v106 = v186;
      if (v122 == 1)
      {
        sub_1BD0DE53C(v115, &qword_1EBD40530, &unk_1BE0C80F0);
LABEL_25:
        v127 = MEMORY[0x1E69BC9F8];
        if (!*(v175 + 32))
        {
          v127 = MEMORY[0x1E69BCA00];
        }

        (*(v153 + 104))(v152, *v127, v154);
        v128 = v156;
        sub_1BE04C754();
        v129 = v160;
        sub_1BE04E894();
        v130 = v164;
        sub_1BE04F444();
        v131 = sub_1BD8681A4(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
        v132 = sub_1BD8681A4(&unk_1EBD367A0, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
        v133 = v162;
        v134 = v166;
        v135 = v169;
        sub_1BE04E314();
        (*(v167 + 8))(v130, v135);
        (*(v163 + 8))(v129, v134);
        v136 = v165;
        v137 = v168;
        (*(v165 + 16))(v161, v133, v168);
        v192 = v134;
        v193 = v135;
        v194 = v131;
        v195 = v132;
        swift_getOpaqueTypeConformance2();
        v138 = sub_1BE04E644();
        (*(v136 + 8))(v133, v137);
        v139 = v155;
        (*(v157 + 32))(v155, v128, v159);
        *(v139 + *(v179 + 36)) = v138;
        v140 = v158;
        sub_1BD0DE204(v139, v158, &qword_1EBD54658, &qword_1BE0FA930);
        sub_1BD0DE19C(v140, v178, &qword_1EBD54658, &qword_1BE0FA930);
        swift_storeEnumTagMultiPayload();
        sub_1BD8680E8();
        sub_1BD7F1A50();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v140, &qword_1EBD54658, &qword_1BE0FA930);
        v107 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      sub_1BD0DE19C(v115, v114, &qword_1EBD40530, &unk_1BE0C80F0);
      if (v121(v115 + v120, 1, v16) != 1)
      {
        v123 = v191;
        v124 = v170;
        (*(v191 + 32))(v170, v115 + v120, v16);
        sub_1BD8681A4(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
        v125 = sub_1BE052334();
        v126 = *(v123 + 8);
        v126(v124, v16);
        sub_1BD0DE53C(v189, &qword_1EBD40530, &unk_1BE0C80F0);
        sub_1BD0DE53C(v116, &qword_1EBD40530, &unk_1BE0C80F0);
        v126(v114, v16);
        sub_1BD0DE53C(v115, &qword_1EBD40530, &unk_1BE0C80F0);
        v106 = v186;
        if (v125)
        {
          goto LABEL_25;
        }

LABEL_23:
        v107 = 1;
LABEL_28:
        v70 = v187;
        goto LABEL_29;
      }

      sub_1BD0DE53C(v189, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v116, &qword_1EBD40530, &unk_1BE0C80F0);
      (*(v191 + 8))(v114, v16);
      v106 = v186;
    }

    sub_1BD0DE53C(v115, &qword_1EBD40528, &unk_1BE0CE330);
    goto LABEL_23;
  }

LABEL_12:
  v63 = sub_1BE051574();
  v64 = sub_1BE0502D4();
  KeyPath = swift_getKeyPath();
  v66 = sub_1BE0511E4();
  v67 = swift_getKeyPath();
  v192 = v63;
  v193 = KeyPath;
  v194 = v64;
  v195 = v67;
  v196 = v66;
  v197 = sub_1BD1F3E44;
  v198 = 0;
  v68 = v171;
  sub_1BE04F6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578, &qword_1BE0C8108);
  sub_1BD2A298C();
  v69 = v174;
  v70 = v187;
  sub_1BE050DA4();
  (*(v172 + 8))(v68, v173);
  v66, v71, v72, v73, v74, v75, v76, v77;
  v67, v78, v79, v80, v81, v82, v83, v84;
  v64, v85, v86, v87, v88, v89, v90, v91;
  KeyPath, v92, v93, v94, v95, v96, v97, v98;
  v63, v99, v100, v101, v102, v103, v104, v105;
  sub_1BD0DE19C(v69, v178, &qword_1EBD40558, &qword_1BE0FE400);
  swift_storeEnumTagMultiPayload();
  sub_1BD8680E8();
  sub_1BD7F1A50();
  v106 = v186;
  sub_1BE04F9A4();
  sub_1BD0DE53C(v69, &qword_1EBD40558, &qword_1BE0FE400);
  v107 = 0;
LABEL_29:
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FA8, &qword_1BE0FE428);
  (*(*(v141 - 8) + 56))(v106, v107, 1, v141);
  v143 = v184;
  v142 = v185;
  sub_1BD0DE19C(v184, v185, &qword_1EBD55F98, &qword_1BE0FE410);
  sub_1BD0DE19C(v106, v70, &qword_1EBD55F90, &qword_1BE0FE408);
  v144 = v188;
  sub_1BD0DE19C(v142, v188, &qword_1EBD55F98, &qword_1BE0FE410);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FB0, &qword_1BE0FE430);
  v146 = v144 + *(v145 + 48);
  *v146 = 0;
  *(v146 + 8) = 1;
  sub_1BD0DE19C(v70, v144 + *(v145 + 64), &qword_1EBD55F90, &qword_1BE0FE408);
  sub_1BD0DE53C(v106, &qword_1EBD55F90, &qword_1BE0FE408);
  sub_1BD0DE53C(v143, &qword_1EBD55F98, &qword_1BE0FE410);
  sub_1BD0DE53C(v70, &qword_1EBD55F90, &qword_1BE0FE408);
  return sub_1BD0DE53C(v142, &qword_1EBD55F98, &qword_1BE0FE410);
}

void sub_1BD867578(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FB8, &qword_1BE0FE498);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FC0, &qword_1BE0FE4A0);
  sub_1BD867718(a1, &v9[*(v13 + 44)]);
  sub_1BD0DE19C(v9, v6, &qword_1EBD55FB8, &qword_1BE0FE498);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FC8, &qword_1BE0FE4A8);
  sub_1BD0DE19C(v6, a2 + *(v14 + 48), &qword_1EBD55FB8, &qword_1BE0FE498);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1BD0DE53C(v9, &qword_1EBD55FB8, &qword_1BE0FE498);
  sub_1BD0DE53C(v6, &qword_1EBD55FB8, &qword_1BE0FE498);
  v12, v15, v16, v17, v18, v19, v20, v21;
  v11, v22, v23, v24, v25, v26, v27, v28;
  v10, v29, v30, v31, v32, v33, v34, v35;
}

uint64_t sub_1BD867718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v225 = a2;
  v217 = sub_1BE04F774();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v212 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD0, &qword_1BE0FE4B0);
  MEMORY[0x1EEE9AC00](v219);
  v220 = &v212 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FD8, &qword_1BE0FE4B8);
  v222 = *(v5 - 8);
  v223 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v218 = &v212 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FE0, &qword_1BE0FE4C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v224 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v227 = &v212 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A98, &unk_1BE0C3CC0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v212 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E660, &unk_1BE0C3640);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v221 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v212 - v18;
  v228 = a1;
  v21 = a1[1];
  v226 = &v212 - v18;
  if (v21)
  {
    v229 = *v228;
    v230 = v21;
    sub_1BD0DDEBC();
    v214 = v11;
    sub_1BE048C84();
    v22 = sub_1BE0506C4();
    v24 = v23;
    v213 = v12;
    v26 = v25;
    v28 = v27;
    v29 = sub_1BE050324();
    v212 = v14;
    v30 = v29;
    v31 = sub_1BE0505F4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v30, v32, v34, v36, v38, v39, v40, v41;
    sub_1BD0DDF10(v22, v24, (v26 & 1), v42, v43, v44, v45, v46);
    v28, v47, v48, v49, v50, v51, v52, v53;
    sub_1BE050384();
    v54 = sub_1BE050544();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_1BD0DDF10(v31, v33, (v35 & 1), v59, v61, v62, v63, v64);
    v37, v65, v66, v67, v68, v69, v70, v71;
    v72 = sub_1BE051224();
    v73 = sub_1BE050564();
    v75 = v74;
    LOBYTE(v37) = v76;
    v78 = v77;
    v72, v74, v76, v77, v79, v80, v81, v82;
    sub_1BD0DDF10(v54, v56, (v58 & 1), v83, v84, v85, v86, v87);
    v60, v88, v89, v90, v91, v92, v93, v94;
    KeyPath = swift_getKeyPath();
    v229 = v73;
    v230 = v75;
    v96 = (v37 & 1);
    v231 = v37 & 1;
    v232 = v78;
    v233 = KeyPath;
    v234 = 1;
    sub_1BE052434();
    v98 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38AA0, &unk_1BE0C3690);
    sub_1BD0EF0FC();
    v99 = v212;
    v20 = v226;
    sub_1BE050DE4();
    v98, v100, v101, v102, v103, v104, v105, v106;
    sub_1BD0DDF10(v73, v75, v96, v107, v108, v109, v110, v111);
    KeyPath, v112, v113, v114, v115, v116, v117, v118;
    v78, v119, v120, v121, v122, v123, v124, v125;
    sub_1BD0DE204(v99, v20, &qword_1EBD38A98, &unk_1BE0C3CC0);
    (v213[7])(v20, 0, 1, v214);
  }

  else
  {
    v12[7](&v212 - v18, 1, 1, v11, v19);
  }

  v126 = v228[3];
  if (v126)
  {
    v127 = v228;
    v229 = v228[2];
    v230 = v126;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v128 = sub_1BE0506C4();
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v135 = sub_1BE0502E4();
    v136 = sub_1BE0505F4();
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v135, v137, v139, v141, v143, v144, v145, v146;
    sub_1BD0DDF10(v128, v130, (v132 & 1), v147, v148, v149, v150, v151);
    v134, v152, v153, v154, v155, v156, v157, v158;
    v159 = *(v127 + 32);
    if (v159)
    {
      v160 = sub_1BE051264();
    }

    else
    {
      v160 = sub_1BE051234();
    }

    v161 = v160;
    v162 = v215;
    v215 = sub_1BE050564();
    v214 = v163;
    v165 = v164;
    v213 = v166;
    v161, v163, v164, v166, v167, v168, v169, v170;
    sub_1BD0DDF10(v136, v138, (v140 & 1), v171, v172, v173, v174, v175);
    v142, v176, v177, v178, v179, v180, v181, v182;
    type metadata accessor for ShippingAddressRow(0);
    sub_1BD70A4D0(v162);
    if (v159)
    {
      (*(v216 + 8))(v162, v217);
      v183 = 2;
    }

    else
    {
      v184 = sub_1BE04F764();
      (*(v216 + 8))(v162, v217);
      if (v184)
      {
        v183 = 2;
      }

      else
      {
        v183 = 1;
      }
    }

    v185 = swift_getKeyPath();
    v186 = swift_getKeyPath();
    v187 = v165 & 1;
    LOBYTE(v229) = v165 & 1;
    v235 = 0;
    v188 = swift_getKeyPath();
    v189 = v220;
    v190 = &v220[*(v219 + 36)];
    v191 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410) + 28);
    v192 = *MEMORY[0x1E6980FA8];
    v193 = sub_1BE050554();
    (*(*(v193 - 8) + 104))(v190 + v191, v192, v193);
    *v190 = swift_getKeyPath();
    v194 = v214;
    *v189 = v215;
    *(v189 + 8) = v194;
    *(v189 + 16) = v187;
    *(v189 + 24) = v213;
    *(v189 + 32) = v185;
    *(v189 + 40) = v183;
    *(v189 + 48) = 0;
    *(v189 + 56) = v186;
    *(v189 + 64) = 0;
    *(v189 + 72) = v188;
    *(v189 + 80) = 1;
    sub_1BE052434();
    v196 = v195;
    sub_1BD8681EC();
    v197 = v218;
    sub_1BE050DE4();
    v196, v198, v199, v200, v201, v202, v203, v204;
    sub_1BD0DE53C(v189, &qword_1EBD55FD0, &qword_1BE0FE4B0);
    v205 = v227;
    sub_1BD0DE204(v197, v227, &qword_1EBD55FD8, &qword_1BE0FE4B8);
    (*(v222 + 56))(v205, 0, 1, v223);
    v20 = v226;
  }

  else
  {
    (*(v222 + 56))(v227, 1, 1, v223);
  }

  v206 = v221;
  sub_1BD0DE19C(v20, v221, &qword_1EBD3E660, &unk_1BE0C3640);
  v207 = v227;
  v208 = v224;
  sub_1BD0DE19C(v227, v224, &qword_1EBD55FE0, &qword_1BE0FE4C0);
  v209 = v225;
  sub_1BD0DE19C(v206, v225, &qword_1EBD3E660, &unk_1BE0C3640);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55FE8, &qword_1BE0FE4C8);
  sub_1BD0DE19C(v208, v209 + *(v210 + 48), &qword_1EBD55FE0, &qword_1BE0FE4C0);
  sub_1BD0DE53C(v207, &qword_1EBD55FE0, &qword_1BE0FE4C0);
  sub_1BD0DE53C(v20, &qword_1EBD3E660, &unk_1BE0C3640);
  sub_1BD0DE53C(v208, &qword_1EBD55FE0, &qword_1BE0FE4C0);
  return sub_1BD0DE53C(v206, &qword_1EBD3E660, &unk_1BE0C3640);
}

unint64_t sub_1BD8680E8()
{
  result = qword_1EBD40568;
  if (!qword_1EBD40568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40558, &qword_1BE0FE400);
    sub_1BD2A298C();
    sub_1BD8681A4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40568);
  }

  return result;
}

uint64_t sub_1BD8681A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD8681EC()
{
  result = qword_1EBD55FF0;
  if (!qword_1EBD55FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55FD0, &qword_1BE0FE4B0);
    sub_1BD8682A4();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318, &qword_1BE0BE410, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55FF0);
  }

  return result;
}

unint64_t sub_1BD8682A4()
{
  result = qword_1EBD55FF8;
  if (!qword_1EBD55FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56000, &qword_1BE0FE598);
    sub_1BD86835C();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55FF8);
  }

  return result;
}

unint64_t sub_1BD86835C()
{
  result = qword_1EBD56008;
  if (!qword_1EBD56008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56010, &unk_1BE0FE5A0);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56008);
  }

  return result;
}

unint64_t sub_1BD868414()
{
  result = qword_1EBD56018;
  if (!qword_1EBD56018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F80, &qword_1BE0FE3F0);
    sub_1BD8684CC();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56018);
  }

  return result;
}

unint64_t sub_1BD8684CC()
{
  result = qword_1EBD56020;
  if (!qword_1EBD56020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F78, &qword_1BE0FE3E8);
    sub_1BD868584();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56020);
  }

  return result;
}

unint64_t sub_1BD868584()
{
  result = qword_1EBD56028;
  if (!qword_1EBD56028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56030, &unk_1BE0FE5B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55F58, &qword_1BE0FE3D0);
    sub_1BD0DE4F4(&qword_1EBD55F70, &qword_1EBD55F58, &qword_1BE0FE3D0, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD8681A4(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56028);
  }

  return result;
}

uint64_t sub_1BD8686DC()
{
  v1 = v0;
  v103 = sub_1BE051F54();
  v108 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BE051FA4();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AF64();
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v93 - v13;
  v15 = sub_1BE04B3B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v0 + 24);
  v19 = *(v0 + 40);
  aBlock = *(v0 + 24);
  v115 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516A4();
  if (*(&v120 + 1))
  {
    return v120;
  }

  v99 = v14;
  v93 = v18;
  v100 = v16;
  v101 = v15;
  v97 = v8;
  v21 = v112;
  v98 = v6;
  v94 = v19;
  v22 = *(v0 + 8);
  if (v22)
  {
    v23 = *v0;
    v24 = v22;
    v102 = v23;
    v25 = sub_1BD2F4DC8(v23);

    v26 = v21;
    v27 = v99;
    v96 = v1;
    v95 = v24;
    if (v25)
    {
      v28 = [v25 savingsDetails];

      if (!v28)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v29 = [v28 productTimeZone];

      if (v29)
      {
        sub_1BE04B394();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = v100;
      v32 = v101;
      (*(v100 + 56))(v11, v30, 1, v101);
      sub_1BD196DA8(v11, v27);
      if ((*(v31 + 48))(v27, 1, v32) != 1)
      {
        v35 = v93;
        (*(v31 + 32))(v93, v27, v32);
        v34 = v97;
        if (qword_1EBD36C20 != -1)
        {
          swift_once();
        }

        v36 = qword_1EBDAB168;
        v37 = sub_1BE04B374();
        [v36 setTimeZone_];

        if (qword_1EBD36C28 != -1)
        {
          swift_once();
        }

        v38 = qword_1EBDAB170;
        v39 = sub_1BE04B374();
        [v38 setTimeZone_];

        (*(v100 + 8))(v35, v101);
        LODWORD(v101) = 1;
        v33 = v102;
        goto LABEL_17;
      }
    }

    else
    {
      (*(v100 + 56))(v99, 1, 1, v101);
    }

    sub_1BD0DE53C(v27, &unk_1EBD3D260, &unk_1BE0C0F20);
    LODWORD(v101) = 0;
    v33 = v102;
    v34 = v97;
LABEL_17:
    v40 = v98;
    if (qword_1EBD36C20 != -1)
    {
      swift_once();
    }

    v41 = qword_1EBDAB168;
    v42 = [v33 openingDate];
    sub_1BE04AEE4();

    v43 = sub_1BE04AE64();
    v44 = *(v26 + 8);
    v44(v34, v40);
    v45 = [v41 stringFromDate_];

    v46 = sub_1BE052434();
    v112 = v47;

    v48 = v111;
    if (qword_1EBD36C28 != -1)
    {
      swift_once();
    }

    v49 = qword_1EBDAB170;
    v50 = [v33 closingDate];
    sub_1BE04AEE4();

    v51 = sub_1BE04AE64();
    v44(v34, v40);
    v52 = [v49 stringFromDate_];

    v53 = sub_1BE052434();
    v55 = v54;

    v57 = v109;
    v56 = v110;
    (*(v110 + 104))(v109, *MEMORY[0x1E69B80E0], v48);
    v58 = PKPassKitBundle();
    if (v58)
    {
      v59 = v58;
      sub_1BE04B6F4();
      v61 = v60;

      (*(v56 + 8))(v57, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1BE0B6CA0;
      v63 = MEMORY[0x1E69E6158];
      *(v62 + 56) = MEMORY[0x1E69E6158];
      v64 = sub_1BD110550();
      v65 = v112;
      *(v62 + 32) = v46;
      *(v62 + 40) = v65;
      *(v62 + 96) = v63;
      *(v62 + 104) = v64;
      *(v62 + 64) = v64;
      *(v62 + 72) = v53;
      *(v62 + 80) = v55;
      v20 = sub_1BE052454();
      v67 = v66;
      v61, v66, v68, v69, v70, v71, v72, v73;
      if (v101)
      {
        sub_1BD14BE3C();
        v74 = sub_1BE052D54();
        v120 = v119;
        v121 = v94;
        v75 = swift_allocObject();
        v76 = v96;
        v77 = v96[1];
        *(v75 + 16) = *v96;
        *(v75 + 32) = v77;
        *(v75 + 48) = v76[2];
        *(v75 + 64) = v20;
        *(v75 + 72) = v67;
        v117 = sub_1BD869B80;
        v118 = v75;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v115 = sub_1BD126964;
        v116 = &block_descriptor_194;
        v78 = _Block_copy(&aBlock);
        v79 = v118;
        v80 = v95;
        v81 = v102;
        sub_1BD0DE19C(&v120, v113, &qword_1EBD3A5C8, &qword_1BE0BAA50);
        sub_1BD0DE19C(&v121, v113, &qword_1EBD56050, &unk_1BE0FE688);
        sub_1BE048C84();
        v79, v82, v83, v84, v85, v86, v87, v88;
        v89 = v104;
        sub_1BE051F74();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD869C84(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
        sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
        v90 = v106;
        v91 = v103;
        sub_1BE053664();
        MEMORY[0x1BFB3FDF0](0, v89, v90, v78);
        _Block_release(v78);

        (*(v108 + 8))(v90, v91);
        (*(v105 + 8))(v89, v107);
      }

      return v20;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD869C84(&qword_1EBD3B318, type metadata accessor for SavingsStatementsModel, &unk_1BE0CAB80);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

double sub_1BD869258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD8692BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v3 = sub_1BE04FF64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56038, &qword_1BE0FE668);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56040, &unk_1BE0FE670);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - v12;
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45370, &qword_1BE0D4090);
  sub_1BD86957C(v2, &v9[*(v14 + 44)]);
  LOBYTE(v2) = sub_1BE050234();
  sub_1BE04E1F4();
  v15 = &v9[*(v7 + 36)];
  *v15 = v2;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_1BE04FF44();
  v20 = sub_1BD8699E4();
  sub_1BE050D14();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v9, &qword_1EBD56038, &qword_1BE0FE668);
  sub_1BE052434();
  v22 = v21;
  v31[2] = v7;
  v31[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v22, v23, v24, v25, v26, v27, v28, v29;
  return (*(v11 + 8))(v13, v10);
}

id sub_1BD86957C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a1;
  v152 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v153 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v151 = &v149 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v150 = &v149 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v149 - v9;
  v156 = sub_1BD8686DC();
  v157 = v11;
  v154 = sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1BE051234();
  v20 = sub_1BE050564();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v19, v21, v23, v25, v27, v28, v29, v30;
  sub_1BD0DDF10(v12, v14, (v16 & 1), v31, v32, v33, v34, v35);
  v18, v36, v37, v38, v39, v40, v41, v42;
  v43 = sub_1BE0502A4();
  v44 = sub_1BE0505F4();
  v46 = v45;
  LOBYTE(v12) = v47;
  v49 = v48;
  v43, v45, v47, v48, v50, v51, v52, v53;
  sub_1BD0DDF10(v20, v22, (v24 & 1), v54, v55, v56, v57, v58);
  v26, v59, v60, v61, v62, v63, v64, v65;
  v156 = v44;
  v157 = v46;
  v158 = v12 & 1;
  v159 = v49;
  sub_1BE052434();
  v67 = v66;
  v149 = v10;
  sub_1BE050DE4();
  v67, v68, v69, v70, v71, v72, v73, v74;
  sub_1BD0DDF10(v44, v46, (v12 & 1), v75, v76, v77, v78, v79);
  v49, v80, v81, v82, v83, v84, v85, v86;
  sub_1BD869A9C(*v155);
  v156 = v87;
  v157 = v88;
  v89 = sub_1BE0506C4();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  result = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  if (result)
  {
    v97 = sub_1BE050484();
    v98 = sub_1BE0505F4();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v97, v99, v101, v103, v105, v106, v107, v108;
    sub_1BD0DDF10(v89, v91, (v93 & 1), v109, v110, v111, v112, v113);
    v95, v114, v115, v116, v117, v118, v119, v120;
    v156 = v98;
    v157 = v100;
    v121 = (v102 & 1);
    v158 = v102 & 1;
    v159 = v104;
    sub_1BE052434();
    v123 = v122;
    v124 = v150;
    sub_1BE050DE4();
    v123, v125, v126, v127, v128, v129, v130, v131;
    sub_1BD0DDF10(v98, v100, v121, v132, v133, v134, v135, v136);
    v104, v137, v138, v139, v140, v141, v142, v143;
    v144 = v149;
    v145 = v151;
    sub_1BD0DE19C(v149, v151, &qword_1EBD452C0, &qword_1BE0B7620);
    v146 = v153;
    sub_1BD0DE19C(v124, v153, &qword_1EBD452C0, &qword_1BE0B7620);
    v147 = v152;
    sub_1BD0DE19C(v145, v152, &qword_1EBD452C0, &qword_1BE0B7620);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45380, &unk_1BE0D40A0);
    sub_1BD0DE19C(v146, v147 + *(v148 + 48), &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v124, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v144, &qword_1EBD452C0, &qword_1BE0B7620);
    sub_1BD0DE53C(v146, &qword_1EBD452C0, &qword_1BE0B7620);
    return sub_1BD0DE53C(v145, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD8699E4()
{
  result = qword_1EBD56048;
  if (!qword_1EBD56048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56038, &qword_1BE0FE668);
    sub_1BD0DE4F4(&qword_1EBD42B70, &qword_1EBD42B58, &qword_1BE0FE680, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56048);
  }

  return result;
}

void sub_1BD869A9C(void *a1)
{
  v2 = [a1 closingBalance];
  v3 = [a1 currencyCode];
  if (!v3)
  {
    sub_1BE052434();
    v5 = v4;
    v3 = sub_1BE052404();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  v13 = PKCurrencyAmountMake();

  if (v13)
  {
    v14 = [v13 formattedStringValue];

    if (v14)
    {
      sub_1BE052434();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD869B8C()
{
  result = qword_1EBD56058;
  if (!qword_1EBD56058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD56060, &qword_1BE0FE698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD56038, &qword_1BE0FE668);
    sub_1BD8699E4();
    swift_getOpaqueTypeConformance2();
    sub_1BD869C84(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56058);
  }

  return result;
}

uint64_t sub_1BD869C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD869CD0()
{
  result = qword_1EBD56070;
  if (!qword_1EBD56070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56070);
  }

  return result;
}

unint64_t sub_1BD869D28()
{
  result = qword_1EBD56078;
  if (!qword_1EBD56078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD56078);
  }

  return result;
}

double sub_1BD869DB4@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD869F48()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB740);
  __swift_project_value_buffer(v6, qword_1EBDAB740);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD86A27C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56160, &qword_1BE0FE8E0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56168, &qword_1BE0FE8E8);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v19 - v10;
  v30 = 7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56170, &qword_1BE0FE8F0);
  v21 = sub_1BD15D0F8();
  sub_1BD15D344();
  sub_1BD0DE4F4(&qword_1EBD56180, &unk_1EBD56170, &qword_1BE0FE8F0, MEMORY[0x1E695A498]);
  v22 = v11;
  sub_1BE048F04();
  sub_1BD0DE4F4(&qword_1EBD56188, &qword_1EBD56168, &qword_1BE0FE8E8, MEMORY[0x1E695A670]);
  v12 = v6;
  sub_1BE048ED4();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1BE048F24();
  sub_1BD0DE4F4(&qword_1EBD56190, &qword_1EBD56160, &qword_1BE0FE8E0, MEMORY[0x1E695A710]);
  v14 = v25;
  v15 = v26;
  sub_1BE048ED4();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1BE048EB4();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1BD86A678()
{
  KeyPath = swift_getKeyPath();
  sub_1BD15D0F8();
  v1 = sub_1BE048964();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE048964();
  v10 = sub_1BE048964();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE048964();
  v19 = sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = swift_getKeyPath();
  sub_1BE048964();
  v28 = sub_1BE048964();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE048964();
  v37 = sub_1BE048964();
  v36, v38, v39, v40, v41, v42, v43, v44;
  v45 = swift_getKeyPath();
  sub_1BE048964();
  v46 = sub_1BE048964();
  v45, v47, v48, v49, v50, v51, v52, v53;
  v54 = swift_getKeyPath();
  sub_1BE048964();
  v55 = sub_1BE048964();
  v54, v56, v57, v58, v59, v60, v61, v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1BE0FE6A0;
  *(v63 + 32) = v1;
  *(v63 + 40) = v10;
  *(v63 + 48) = v19;
  *(v63 + 56) = v28;
  *(v63 + 64) = v37;
  *(v63 + 72) = v46;
  *(v63 + 80) = v55;
  sub_1BE048964();
  v64 = sub_1BE048C84();
  v63, v65, v66, v67, v68, v69, v70, v71;
  v1, v72, v73, v74, v75, v76, v77, v78;
  v10, v79, v80, v81, v82, v83, v84, v85;
  v19, v86, v87, v88, v89, v90, v91, v92;
  v28, v93, v94, v95, v96, v97, v98, v99;
  v37, v100, v101, v102, v103, v104, v105, v106;
  v46, v107, v108, v109, v110, v111, v112, v113;
  v55, v114, v115, v116, v117, v118, v119, v120;
  return v64;
}

uint64_t sub_1BD86A8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56198, &qword_1BE0FE8F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD561A0, &qword_1BE0FE900);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56170, &qword_1BE0FE8F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  sub_1BD15D0F8();
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD561A8, &qword_1BE0FE930);
  sub_1BE048CC4();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  sub_1BE048CD4();
  sub_1BE048D04();
  sub_1BE048CB4();
  v19 = sub_1BD0DE4F4(&qword_1EBD56180, &unk_1EBD56170, &qword_1BE0FE8F0, MEMORY[0x1E695A498]);
  MEMORY[0x1BFB35E60](v7, &type metadata for SearchTransactionsIntent, v4, v19);
  v20 = *(v5 + 8);
  v20(v7, v4);
  MEMORY[0x1BFB35E50](v10, &type metadata for SearchTransactionsIntent, v4, v19);
  return (v20)(v10, v4);
}

uint64_t sub_1BD86ABB8()
{
  KeyPath = swift_getKeyPath();
  sub_1BD15D0F8();
  v1 = sub_1BE048964();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = swift_getKeyPath();
  sub_1BE048964();
  v10 = sub_1BE048964();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = swift_getKeyPath();
  sub_1BE048964();
  v19 = sub_1BE048964();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = swift_getKeyPath();
  sub_1BE048964();
  v28 = sub_1BE048964();
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE048964();
  v37 = sub_1BE048964();
  v36, v38, v39, v40, v41, v42, v43, v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BE0FE6B0;
  *(v45 + 32) = v1;
  *(v45 + 40) = v10;
  *(v45 + 48) = v19;
  *(v45 + 56) = v28;
  *(v45 + 64) = v37;
  sub_1BE048964();
  v46 = sub_1BE048C84();
  v45, v47, v48, v49, v50, v51, v52, v53;
  v1, v54, v55, v56, v57, v58, v59, v60;
  v10, v61, v62, v63, v64, v65, v66, v67;
  v19, v68, v69, v70, v71, v72, v73, v74;
  v28, v75, v76, v77, v78, v79, v80, v81;
  v37, v82, v83, v84, v85, v86, v87, v88;
  return v46;
}

uint64_t sub_1BD86AD6C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_1BE04D214();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v2[33] = swift_task_alloc();
  v4 = sub_1BE04AFE4();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_1BE04B0D4();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_1BE04B0F4();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC98, &unk_1BE0EF348);
  v2[43] = swift_task_alloc();
  v7 = sub_1BE04CFC4();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v8 = sub_1BE04CFE4();
  v2[48] = v8;
  v2[49] = *(v8 - 8);
  v2[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD86B074, 0, 0);
}

uint64_t sub_1BD86B074(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:SearchTransactionsIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = *(v1 + 392);
  v6 = *(v1 + 400);
  v9 = *(v1 + 376);
  v8 = *(v1 + 384);
  v11 = *(v1 + 360);
  v10 = *(v1 + 368);
  v12 = *(v1 + 352);

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v13 = sub_1BE04D014();
  *(v1 + 408) = v13;
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 coordinator];
  *(v1 + 416) = v15;

  if (v15)
  {
    *(v1 + 424) = **(v1 + 232);
    sub_1BE048874();
    v16 = *(v1 + 32);
    *(v1 + 432) = v16;
    v17 = v16;
    sub_1BD030458(v1 + 16);
    v18 = [objc_opt_self() sharedInstance];
    *(v1 + 440) = v18;
    if (v18)
    {
      v19 = v18;
      if (PKSupportsSearchForPass())
      {
        v20 = swift_task_alloc();
        *(v1 + 448) = v20;
        *v20 = v1;
        v20[1] = sub_1BD86B4DC;

        return sub_1BD99C8D8(v17);
      }
    }

    v36 = *(v1 + 408);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD86C508(v36);
    v35 = v36;
  }

  else
  {
    sub_1BE04D074();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1BD026000, v22, v23, "SearchTransactionsIntent: PKAppIntentCoordinator was nil", v24, 2u);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    v26 = *(v1 + 248);
    v25 = *(v1 + 256);
    v27 = *(v1 + 240);

    (*(v26 + 8))(v25, v27);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    sub_1BD86C508(v13);
    v35 = v13;
  }

  v35, v28, v29, v30, v31, v32, v33, v34;

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_1BD86B4DC(char a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_1BD86B9E4;
  }

  else
  {
    *(v4 + 521) = a1 & 1;
    v5 = sub_1BD86B608;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD86B608()
{
  v1 = *(v0 + 521);
  v2 = *(v0 + 440);

  if (v1)
  {
    v3 = *(v0 + 408);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484C4();
LABEL_11:
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1BD86C508(v3);
    v3, v51, v52, v53, v54, v55, v56, v57;

    v58 = *(v0 + 8);

    return v58();
  }

  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 296);
  sub_1BE04B0A4();
  sub_1BE04B0E4();
  (*(v7 + 8))(v5, v6);
  sub_1BE04B0B4();
  (*(v9 + 8))(v8, v10);
  v11 = sub_1BE04B014();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {
    v3 = *(v0 + 408);
    sub_1BD0DE53C(*(v0 + 344), &qword_1EBD4FC98, &unk_1BE0EF348);
LABEL_10:
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    goto LABEL_11;
  }

  v13 = *(v0 + 344);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 272);
  sub_1BE04B004();
  v18 = v17;
  (*(v12 + 8))(v13, v11);
  sub_1BE04AFD4();
  sub_1BE04AF74();
  v20 = v19;
  (*(v15 + 8))(v14, v16);
  sub_1BE048874();
  v21 = *(v0 + 88);
  sub_1BE048C84();
  sub_1BD030458(v0 + 80);
  v22 = objc_allocWithZone(MEMORY[0x1E69B92F0]);
  v23 = sub_1BE052404();
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BE052404();
  v18, v32, v33, v34, v35, v36, v37, v38;
  v39 = sub_1BE052404();
  v21, v40, v41, v42, v43, v44, v45, v46;
  v47 = [v22 initWithIdentifier:v23 keyboardLanguage:v31 passUniqueIdentifier:v39];
  *(v0 + 464) = v47;

  if (!v47)
  {
    v3 = *(v0 + 408);
    goto LABEL_10;
  }

  v48 = v47;
  v49 = swift_task_alloc();
  *(v0 + 472) = v49;
  *v49 = v0;
  v49[1] = sub_1BD86BAE4;

  return sub_1BD86C7F4();
}

uint64_t sub_1BD86B9E4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);

  swift_unknownObjectRelease();
  sub_1BD86C508(v2);
  v2, v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BD86BAE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {

    v5 = sub_1BD86C40C;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_1BD86BC14;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD86BC14()
{
  v1 = v0[61];
  v2 = v0[58];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56128, &qword_1BE0FE880);
  v3 = sub_1BE052724();
  v1, v4, v5, v6, v7, v8, v9, v10;
  [v2 setTokens_];

  sub_1BE048874();
  v11 = v0[27];
  if (v11)
  {
    v12 = sub_1BE052404();
    v11, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v12 = 0;
  }

  v20 = v0[58];
  [v20 setText_];

  v21 = swift_task_alloc();
  v0[62] = v21;
  *v21 = v0;
  v21[1] = sub_1BD86BD64;

  return sub_1BD0D7278();
}

uint64_t sub_1BD86BD64(char a1)
{
  *(*v1 + 522) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD86BE64, 0, 0);
}

uint64_t sub_1BD86BE64()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  if (*(v0 + 522) == 1)
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 232);
    v5 = sub_1BE0528D4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1BE0528A4();
    v6 = v1;
    swift_unknownObjectRetain();
    sub_1BD871118(v4, v0 + 144);
    v7 = sub_1BE052894();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v8 + 32) = v2;
    v10 = v4[2];
    v11 = v4[3];
    v12 = v4[1];
    *(v8 + 40) = *v4;
    *(v8 + 88) = v11;
    *(v8 + 72) = v10;
    *(v8 + 56) = v12;
    *(v8 + 104) = v6;
    v13 = sub_1BD123214(0, 0, v3, &unk_1BE0FE898, v8);
    *(v0 + 504) = v13;
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    *v14 = v0;
    v14[1] = sub_1BD86C118;
    v15 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DA40](v0 + 520, v13, v15);
  }

  else
  {
    v16 = *(v0 + 408);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1BD86C508(v16);
    v16, v17, v18, v19, v20, v21, v22, v23;

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1BD86C118()
{
  v1 = *(*v0 + 504);

  v1, v2, v3, v4, v5, v6, v7, v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD86C230, 0, 0);
}

uint64_t sub_1BD86C230(uint64_t a1)
{
  v2 = *(v1 + 464);
  v3 = *(v1 + 408);
  if (*(v1 + 520) == 1)
  {
    sub_1BE048774();
  }

  else
  {
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  sub_1BD86C508(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_1BD86C40C()
{
  v1 = *(v0 + 408);

  swift_unknownObjectRelease();
  sub_1BD86C508(v1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD86C508(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:SearchTransactionsIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD86C7F4()
{
  v1[24] = v0;
  v1[22] = MEMORY[0x1E69E7CC0];
  v2 = swift_task_alloc();
  v1[25] = v2;
  *v2 = v1;
  v2[1] = sub_1BD86C890;

  return sub_1BD86D540();
}

uint64_t sub_1BD86C890(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1BD86D19C;
  }

  else
  {
    v4 = sub_1BD86C9A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BD86C9A4()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v3 = *(v0 + 176);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1BE048874();
  v4 = *(v0 + 272);
  if (v4 != 8)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69B8EB0]) init];
    [v5 setType_];
    [v5 setMerchantCategory_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69B91D0]) init];
    [v6 setGroup_];
    v7 = v6;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();

    v3 = *(v0 + 176);
  }

  sub_1BE048874();
  v8 = *(v0 + 273);
  if (v8 != 12)
  {
    if (sub_1BD231C4C(*(v0 + 273)) == 0x6E776F6E6B6E75 && v9 == 0xE700000000000000)
    {
      0xE700000000000000, 0xE700000000000000, v10, v11, v12, v13, v14, v15;
    }

    else
    {
      v16 = v9;
      v17 = sub_1BE053B84();
      v16, v18, v19, v20, v21, v22, v23, v24;
      if ((v17 & 1) == 0)
      {
        v25 = [objc_allocWithZone(MEMORY[0x1E69B91C8]) init];
        v26 = sub_1BD231BFC(v8);
        [v25 setTag_];

        v27 = v25;
        MEMORY[0x1BFB3F7A0]();
        if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();

        v3 = *(v0 + 176);
      }
    }
  }

  *(v0 + 224) = v3;
  sub_1BE048874();
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  *(v0 + 232) = v29;
  *(v0 + 248) = *(v0 + 168);
  v30 = v29;
  if (v29)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    *(v0 + 256) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BE0B69E0;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    sub_1BE048C84();
    v33 = sub_1BE052724();
    *(v0 + 264) = v33;
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_1BD86CE30;
    v41 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD56130, &qword_1BE103FE0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD994558;
    *(v0 + 104) = &block_descriptor_17_3;
    *(v0 + 112) = v41;
    [v31 regionsWithIdentifiers:v33 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v42 = *(v0 + 8);

    return v42(v3);
  }
}

uint64_t sub_1BD86CE30()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD86CF10, 0, 0);
}

uint64_t sub_1BD86CF10()
{
  v1 = *(v0 + 184);

  if (!v1)
  {
    v51 = *(v0 + 248);
    v53 = *(v0 + 232);
    v52 = *(v0 + 240);

    v51, v54, v55, v56, v57, v58, v59, v60;
    v52, v61, v62, v63, v64, v65, v66, v67;
    v75 = v53;
LABEL_13:
    v75, v68, v69, v70, v71, v72, v73, v74;
    v12 = (v0 + 224);
    goto LABEL_14;
  }

  if (v1 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:
    v76 = *(v0 + 248);
    v78 = *(v0 + 232);
    v77 = *(v0 + 240);

    v1, v79, v80, v81, v82, v83, v84, v85;
    v76, v86, v87, v88, v89, v90, v91, v92;
    v77, v93, v94, v95, v96, v97, v98, v99;
    v75 = v78;
    goto LABEL_13;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1BFB40900](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v11 = v3;
  v12 = (v0 + 176);
  v1, v4, v5, v6, v7, v8, v9, v10;
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8EB0]) init];
  [v13 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = v11;
  sub_1BD871218();
  v15 = v11;
  v16 = sub_1BE052724();
  v14, v17, v18, v19, v20, v21, v22, v23;
  [v13 setRegions_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69B91D0]) init];
  [v24 setGroup_];
  v25 = v24;
  MEMORY[0x1BFB3F7A0]();
  if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  sub_1BE0527C4();

  v29, v30, v31, v32, v33, v34, v35, v36;
  v28, v37, v38, v39, v40, v41, v42, v43;
  v26, v44, v45, v46, v47, v48, v49, v50;

LABEL_14:
  v100 = *v12;
  v101 = *(v0 + 8);

  return v101(v100);
}

uint64_t sub_1BD86D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  sub_1BE0528A4();
  v6[30] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[31] = v8;
  v6[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD86D250, v8, v7);
}

uint64_t sub_1BD86D250()
{
  v1 = v0[29];
  v2 = v0[27];
  sub_1BE048874();
  v3 = v0[11];
  sub_1BE048C84();
  sub_1BD030458((v0 + 10));
  v4 = sub_1BE052404();
  v0[33] = v4;
  v3, v5, v6, v7, v8, v9, v10, v11;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1BD86D3C4;
  v12 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52980, &unk_1BE0ED700);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1BD68F38C;
  v0[21] = &block_descriptor_195;
  v0[22] = v12;
  [v2 presentSearchForPassWithUniqueID:v4 withQuery:v1 completion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD86D3C4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1BD86D4CC, v2, v1);
}

uint64_t sub_1BD86D4CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 264);
  v10 = *(v8 + 208);
  *(v8 + 240), a2, a3, a4, a5, a6, a7, a8;
  *v10 = *(v8 + 272);

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD86D540()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260, &unk_1BE0C0F20);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4E840, &unk_1BE0C73F0);
  v1[6] = swift_task_alloc();
  v2 = sub_1BE04A474();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BE04B2F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_1BE04AF64();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD86D8C4, 0, 0);
}

uint64_t sub_1BD86D8C4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B9190]) init];
  *(v0 + 328) = v1;
  sub_1BE04AEF4();
  sub_1BE048874();
  v2 = *(v0 + 416);
  if (v2 <= 3)
  {
    if (*(v0 + 416) > 1u)
    {
      if (v2 == 2)
      {
        v129 = *(v0 + 184);
        v130 = *(v0 + 160);
        v132 = *(v0 + 176);
        v10 = *(v0 + 88);
        v9 = *(v0 + 96);
        v12 = *(v0 + 72);
        v11 = *(v0 + 80);
        v13 = *(v0 + 64);
        v127 = *(v0 + 168);
        v128 = *(v0 + 56);
        v15 = *(v0 + 40);
        v14 = *(v0 + 48);
        [v1 setType_];
        sub_1BE04B2A4();
        (*(v10 + 56))(v14, 1, 1, v11);
        v16 = sub_1BE04B3B4();
        (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
        LOBYTE(v126) = 1;
        LOBYTE(v125) = 1;
        LOBYTE(v124) = 1;
        LOBYTE(v123) = 1;
        LOBYTE(v122) = 1;
        LOBYTE(v121) = 1;
        LOBYTE(v120) = 1;
        LOBYTE(v119) = 1;
        LOBYTE(v118) = 1;
        LOBYTE(v117) = 1;
        LOBYTE(v116) = 0;
        sub_1BE04A454();
        sub_1BE04B214();
        (*(v13 + 8))(v12, v128);
        (*(v10 + 8))(v9, v11);
        sub_1BD15D62C(v127, v130);
        v17 = *(v129 + 48);
        v18 = 0;
        if (v17(v130, 1, v132) != 1)
        {
          v19 = *(v0 + 176);
          v20 = *(v0 + 184);
          v21 = *(v0 + 160);
          v18 = sub_1BE04AE64();
          (*(v20 + 8))(v21, v19);
        }

        v22 = PKStartOfDay();

        if (v22)
        {
          v23 = *(v0 + 296);
          v24 = *(v0 + 176);
          v25 = *(v0 + 184);
          sub_1BE04AEE4();

          v26 = sub_1BE04AE64();
          (*(v25 + 8))(v23, v24);
        }

        else
        {
          v26 = 0;
        }

        v70 = *(v0 + 168);
        v69 = *(v0 + 176);
        v71 = *(v0 + 152);
        [v1 setStartDate_];

        sub_1BD15D62C(v70, v71);
        if (v17(v71, 1, v69) == 1)
        {
          v72 = 0;
        }

        else
        {
          v73 = *(v0 + 176);
          v74 = *(v0 + 184);
          v75 = *(v0 + 152);
          v72 = sub_1BE04AE64();
          (*(v74 + 8))(v75, v73);
        }

        v76 = PKEndOfDay();

        if (v76)
        {
          v77 = *(v0 + 288);
          v78 = *(v0 + 176);
          v79 = *(v0 + 184);
          sub_1BE04AEE4();

          v80 = sub_1BE04AE64();
          (*(v79 + 8))(v77, v78);
        }

        else
        {
          v80 = 0;
        }

        v87 = *(v0 + 184);
        v90 = *(v0 + 168);
        [v1 setEndDate_];

        sub_1BD0DE53C(v90, &unk_1EBD39970, &unk_1BE0B9F80);
        goto LABEL_53;
      }

      [v1 setType_];
      v45 = sub_1BE04AE64();
      v46 = PKStartOfMonth();

      if (v46)
      {
        v47 = *(v0 + 280);
        v48 = *(v0 + 176);
        v49 = *(v0 + 184);
        sub_1BE04AEE4();

        v50 = sub_1BE04AE64();
        (*(v49 + 8))(v47, v48);
      }

      else
      {
        v50 = 0;
      }

      [v1 setStartDate_];

      v84 = sub_1BE04AE64();
      v67 = PKEndOfMonth();

      if (!v67)
      {
LABEL_52:
        v87 = *(v0 + 184);
        [v1 setEndDate_];

LABEL_53:
        v88 = *(v87 + 8);
LABEL_54:
        v131 = *(v0 + 328);
        v88(*(v0 + 320), *(v0 + 176));
        goto LABEL_55;
      }

      v68 = *(v0 + 272);
    }

    else
    {
      if (!*(v0 + 416))
      {
        (*(*(v0 + 184) + 8))(*(v0 + 320), *(v0 + 176));

        v131 = 0;
LABEL_55:

        v89 = *(v0 + 8);

        return v89(v131);
      }

      [v1 setType_];
      v33 = sub_1BE04AE64();
      v34 = PKStartOfDay();

      if (v34)
      {
        v35 = *(v0 + 312);
        v36 = *(v0 + 176);
        v37 = *(v0 + 184);
        sub_1BE04AEE4();

        v38 = sub_1BE04AE64();
        (*(v37 + 8))(v35, v36);
      }

      else
      {
        v38 = 0;
      }

      [v1 setStartDate_];

      v82 = sub_1BE04AE64();
      v67 = PKEndOfDay();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 304);
    }

LABEL_51:
    v85 = *(v0 + 176);
    v86 = *(v0 + 184);
    sub_1BE04AEE4();

    v67 = sub_1BE04AE64();
    (*(v86 + 8))(v68, v85);
    goto LABEL_52;
  }

  if (*(v0 + 416) <= 5u)
  {
    if (v2 == 4)
    {
      [v1 setType_];
      v3 = sub_1BE04AE64();
      v4 = PKStartOfLastMonth();

      if (v4)
      {
        v5 = *(v0 + 264);
        v6 = *(v0 + 176);
        v7 = *(v0 + 184);
        sub_1BE04AEE4();

        v8 = sub_1BE04AE64();
        (*(v7 + 8))(v5, v6);
      }

      else
      {
        v8 = 0;
      }

      [v1 setStartDate_];

      v66 = sub_1BE04AE64();
      v67 = PKEndOfLastMonth();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 256);
    }

    else
    {
      [v1 setType_];
      v39 = sub_1BE04AE64();
      v40 = PKStartOfYear();

      if (v40)
      {
        v41 = *(v0 + 248);
        v42 = *(v0 + 176);
        v43 = *(v0 + 184);
        sub_1BE04AEE4();

        v44 = sub_1BE04AE64();
        (*(v43 + 8))(v41, v42);
      }

      else
      {
        v44 = 0;
      }

      [v1 setStartDate_];

      v83 = sub_1BE04AE64();
      v67 = PKEndOfYear();

      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = *(v0 + 240);
    }

    goto LABEL_51;
  }

  if (v2 == 6)
  {
    [v1 setType_];
    v27 = sub_1BE04AE64();
    v28 = PKStartOfLastYear();

    if (v28)
    {
      v29 = *(v0 + 232);
      v30 = *(v0 + 176);
      v31 = *(v0 + 184);
      sub_1BE04AEE4();

      v32 = sub_1BE04AE64();
      (*(v31 + 8))(v29, v30);
    }

    else
    {
      v32 = 0;
    }

    [v1 setStartDate_];

    v81 = sub_1BE04AE64();
    v67 = PKEndOfLastYear();

    if (!v67)
    {
      goto LABEL_52;
    }

    v68 = *(v0 + 224);
    goto LABEL_51;
  }

  v51 = *(v0 + 176);
  v52 = *(v0 + 184);
  v53 = *(v0 + 144);
  *(v0 + 336) = *(*(v0 + 16) + 16);
  sub_1BE048874();
  v54 = *(v52 + 48);
  *(v0 + 344) = v54;
  *(v0 + 352) = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v51) = v54(v53, 1, v51);
  sub_1BD0DE53C(v53, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v51 == 1)
  {
    v55 = *(v0 + 32);
    *(v0 + 360) = sub_1BE048894();
    v56 = sub_1BE048654();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = sub_1BD86E6C8;
    v58 = *(v0 + 216);
    v59 = *(v0 + 32);
  }

  else
  {
    v60 = *(v0 + 344);
    v61 = *(v0 + 176);
    v62 = *(v0 + 120);
    *(v0 + 384) = *(*(v0 + 16) + 24);
    sub_1BE048874();
    LODWORD(v61) = v60(v62, 1, v61);
    sub_1BD0DE53C(v62, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v61 != 1)
    {
      v91 = *(v0 + 344);
      v92 = *(v0 + 176);
      v93 = *(v0 + 112);
      sub_1BE048874();
      if (v91(v93, 1, v92) == 1)
      {
        v94 = *(v0 + 328);
        v95 = *(v0 + 112);
        (*(*(v0 + 184) + 8))(*(v0 + 320), *(v0 + 176));

        v96 = v95;
      }

      else
      {
        v97 = *(v0 + 344);
        v98 = *(v0 + 176);
        v99 = *(v0 + 104);
        v100 = *(*(v0 + 184) + 32);
        v100(*(v0 + 200), *(v0 + 112), v98);
        sub_1BE048874();
        v101 = v97(v99, 1, v98);
        v102 = *(v0 + 328);
        if (v101 != 1)
        {
          v110 = *(v0 + 192);
          v109 = *(v0 + 200);
          v111 = *(v0 + 176);
          v112 = *(v0 + 184);
          v100(v110, *(v0 + 104), v111);
          [v102 setType_];
          v113 = sub_1BE04AE64();
          [v102 setStartDate_];

          v114 = sub_1BE04AE64();
          [v102 setEndDate_];

          v88 = *(v112 + 8);
          v88(v110, v111);
          v88(v109, v111);
          goto LABEL_54;
        }

        v103 = *(v0 + 320);
        v104 = *(v0 + 200);
        v105 = *(v0 + 176);
        v106 = *(v0 + 184);
        v107 = *(v0 + 104);

        v108 = *(v106 + 8);
        v108(v104, v105);
        v108(v103, v105);
        v96 = v107;
      }

      sub_1BD0DE53C(v96, &unk_1EBD39970, &unk_1BE0B9F80);
      v131 = 0;
      goto LABEL_55;
    }

    v63 = *(v0 + 24);
    *(v0 + 392) = sub_1BE048894();
    v64 = sub_1BE048654();
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
    v65 = swift_task_alloc();
    *(v0 + 400) = v65;
    *v65 = v0;
    v65[1] = sub_1BD86ED98;
    v58 = *(v0 + 208);
    v59 = *(v0 + 24);
  }

  return MEMORY[0x1EEDB33A8](v58, v59);
}
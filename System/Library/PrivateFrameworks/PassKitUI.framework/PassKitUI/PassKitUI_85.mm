void sub_1BD8FC2AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a3 & 1) == 0)
    {
      v8 = Strong;
      [Strong reportDeviceEvent:a2 account:a4];
      Strong = v8;
    }
  }
}

void sub_1BD8FC33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58800, &unk_1BE1047F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  type metadata accessor for AccountModuleView(0);
  v8 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v12[-2] = v8;
    sub_1BD8FC830();
    v11 = v10;
    sub_1BE04FCE4();
    sub_1BE0501D4();
    v12[3] = v4;
    v12[4] = sub_1BD8FC888();
    __swift_allocate_boxed_opaque_existential_1(v12);
    sub_1BE04FCD4();
    (*(v5 + 8))(v7, v4);
    MEMORY[0x1BFB3FEF0](v12);
  }
}

uint64_t PKAccountModuleCollectionViewCell.shouldShowBalance(for:)(void *a1)
{
  if ([a1 type] != 4)
  {
    return 0;
  }

  if (PKSavingsFDICSignageEnabled())
  {
    return [a1 FDICBehaviorShowCreditDashboardBalance];
  }

  return 1;
}

CGSize __swiftcall PKAccountModuleCollectionViewCell.sizeThatFits(_:)(CGSize a1)
{
  LODWORD(v2) = 1148846080;
  LODWORD(v3) = 1112014848;
  [v1 systemLayoutSizeFittingSize:a1.width withHorizontalFittingPriority:a1.height verticalFittingPriority:{v2, v3}];
  result.height = v5;
  result.width = v4;
  return result;
}

void _sSo33PKAccountModuleCollectionViewCellC9PassKitUIE17reportDeviceEvent_7accountySo0ajK0V_So0A0CtF_0(uint64_t a1, void *a2)
{
  if ([objc_opt_self() sharedService])
  {
    v3 = objc_allocWithZone(sub_1BE04BF14());
    v4 = a2;
    v5 = sub_1BE04BF04();
    v6 = [objc_allocWithZone(MEMORY[0x1E69B8390]) initWithApp:1 page:1];
    v7 = swift_allocObject();
    v7[2] = v5;
    v8 = v6;
    v9 = v5;
    sub_1BE04BEF4();

    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD8FC7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  return sub_1BD855EE0(v3, a1);
}

unint64_t sub_1BD8FC830()
{
  result = qword_1EBD58808;
  if (!qword_1EBD58808)
  {
    type metadata accessor for AccountModuleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58808);
  }

  return result;
}

unint64_t sub_1BD8FC888()
{
  result = qword_1EBD58810;
  if (!qword_1EBD58810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58800, &unk_1BE1047F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WrappedFrequency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WrappedFrequency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BD8FC944(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD15D62C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD15D69C(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = sub_1BE04AE64();
    v11 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

    if (v11)
    {
      v12 = sub_1BE052434();

      (*(v7 + 8))(v9, v6);
      return v12;
    }

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t sub_1BD8FCB20()
{
  sub_1BE053D04();
  v0 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();
  v2 = v1;

  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

void sub_1BD8FCBA0(uint64_t a1)
{
  v1 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();
  v3 = v2;

  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD8FCC10(uint64_t a1)
{
  sub_1BE053D04();
  v1 = PKPeerPaymentRecurringPaymentFrequencyToString();
  sub_1BE052434();
  v3 = v2;

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

uint64_t sub_1BD8FCC8C(void *a1, uint64_t *a2)
{
  v2 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v3 = sub_1BE052434();
  v5 = v4;

  v6 = PKPeerPaymentRecurringPaymentFrequencyToString();
  v7 = sub_1BE052434();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1BE053B84();
  }

  v5, v10, v11, v12, v13, v14, v15, v16;
  v9, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_1BD8FCD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BD8FCD6C, 0, 0);
}

uint64_t sub_1BD8FCD6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818, &qword_1BE104958);
  v1 = sub_1BE049E14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B69E0;
  (*(v2 + 104))(v4 + v3, *MEMORY[0x1E6967C20], v1);
  v5 = sub_1BD112D70(v4);
  v0[4] = v5;
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_1BE049924();
  v6 = sub_1BE049914();
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1BD8FCF2C;
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x1EEDC1BE8](v5, v8, v9, v6);
}

uint64_t sub_1BD8FCF2C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD8FD074, 0, 0);
  }

  else
  {
    v10 = *(v2 + 32);
    *(v2 + 40), v3, v4, v5, v6, v7, v8, v9;
    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = *(v2 + 8);

    return v18();
  }
}

uint64_t sub_1BD8FD074(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 32);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + 8);

  return v17();
}

void sub_1BD8FD0E0(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v4 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v19 = type metadata accessor for AvailablePass(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v85 = v2;
  if (*(v2 + 24))
  {
    return;
  }

  v91 = a1;
  sub_1BD0DE19C(v90, v18, &qword_1EBD520A0, &qword_1BE0B9840);
  v86 = v20;
  v26 = (*(v20 + 48))(v18, 1, v19);
  v82 = v6;
  if (v26 == 1)
  {
    sub_1BE048C84();
    sub_1BD0DE53C(v18, &qword_1EBD520A0, &qword_1BE0B9840);
  }

  else
  {
    sub_1BD8FE078(v18, v25, type metadata accessor for AvailablePass);
    sub_1BE048C84();
    sub_1BD535950(v25, v15);
    sub_1BD0DE53C(v15, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD8FDF64(v25, type metadata accessor for AvailablePass);
    a1 = v91;
  }

  v89 = v10;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  sub_1BE048C84();
  v39 = 0;
  v83 = MEMORY[0x1E69E7CC0];
  v40 = v86;
  v90 = a1;
  while (v30)
  {
LABEL_14:
    v42 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    sub_1BD133398(*(a1 + 48) + *(v40 + 72) * (v42 | (v39 << 6)), v22, type metadata accessor for AvailablePass);
    v43 = &v22[*(v19 + 28)];
    v44 = v22;
    v45 = v89;
    sub_1BD0DE19C(v43, v89, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    v46 = type metadata accessor for BalanceInfo(0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
    {
      sub_1BD8FDF64(v44, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v45, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      a1 = v90;
      v22 = v44;
    }

    else
    {
      sub_1BD0DE53C(v45, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      v47 = v88;
      sub_1BD133398(v44, v88, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v44;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1BD8FDF64(v47, type metadata accessor for WrappedPass);
          a1 = v90;
          goto LABEL_19;
        }

        v51 = v82;
        sub_1BD8FE078(v47, v82, type metadata accessor for PlaceholderPass);
        v50 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
        [v50 setCardType_];
        sub_1BD8FDF64(v51, type metadata accessor for PlaceholderPass);
        a1 = v90;
LABEL_21:
        v52 = [v50 primaryAccountIdentifier];

        v53 = sub_1BE052434();
        v81 = v54;

        sub_1BD8FDF64(v22, type metadata accessor for AvailablePass);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1BD03B038(0, *(v83 + 2) + 1, 1, v83, v35, v36, v37, v38);
        }

        v56 = *(v83 + 2);
        v55 = *(v83 + 3);
        if (v56 >= v55 >> 1)
        {
          v83 = sub_1BD03B038((v55 > 1), v56 + 1, 1, v83, v35, v36, v37, v38);
        }

        v57 = v83;
        *(v83 + 2) = v56 + 1;
        v58 = &v57[16 * v56];
        v59 = v81;
        *(v58 + 4) = v53;
        *(v58 + 5) = v59;
        v40 = v86;
      }

      else
      {
        v49 = *v88;
        v50 = [*v88 secureElementPass];

        a1 = v90;
        if (v50)
        {
          goto LABEL_21;
        }

LABEL_19:
        sub_1BD8FDF64(v22, type metadata accessor for AvailablePass);
        v40 = v86;
      }
    }
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v31)
    {
      a1, v32, v33, v34, v35, v36, v37, v38;
      a1, v60, v61, v62, v63, v64, v65, v66;
      v67 = v85;
      *(v85 + 24) = 1;
      v68 = sub_1BE0528D4();
      v69 = v84;
      (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
      v70 = swift_allocObject();
      v70[2] = 0;
      v70[3] = 0;
      v70[4] = v83;
      v71 = sub_1BDA543A4(0, 0, v69, &unk_1BE104950, v70);
      v72 = *(v67 + 16);
      *(v67 + 16) = v71;
      v72, v73, v74, v75, v76, v77, v78, v79;
      return;
    }

    v30 = *(v27 + 8 * v41);
    ++v39;
    if (v30)
    {
      v39 = v41;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD8FD8A0(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = v2[2];
  *(v1 + 24) = v3;
  if (v3)
  {
    v4 = sub_1BE049924();
    v5 = *MEMORY[0x1E6967C20];
    *(v1 + 80) = v5;
    *(v1 + 32) = v4;
    *(v1 + 40) = 0;
    v6 = v2[5];
    *(v1 + 48) = v6;
    v7 = v2[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818, &qword_1BE104958);
    v8 = sub_1BE049E14();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    (*(v9 + 104))(v11 + v10, v5, v8);
    sub_1BE048C84();
    v12 = sub_1BD112D70(v11);
    *(v1 + 56) = v12;
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    v13 = sub_1BE049914();
    *(v1 + 64) = v13;
    v14 = swift_task_alloc();
    *(v1 + 72) = v14;
    *v14 = v1;
    v14[1] = sub_1BD8FDADC;

    return MEMORY[0x1EEDC1BE8](v12, v7, v6, v13);
  }

  else
  {
    v15 = *(v1 + 8);

    return v15(a1);
  }
}

uint64_t sub_1BD8FDADC()
{
  v2 = *v1;
  v3 = *v1;

  v11 = v2[8];
  v12 = v2[7];
  v13 = v2[6];
  if (v0)
  {
    v11, v4, v5, v6, v7, v8, v9, v10;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;
    v28 = v3[1];

    return v28();
  }

  else
  {
    v13, v4, v5, v6, v7, v8, v9, v10;
    v11, v30, v31, v32, v33, v34, v35, v36;
    v12, v37, v38, v39, v40, v41, v42, v43;

    return MEMORY[0x1EEE6DFA0](sub_1BD8FDC98, 0, 0);
  }
}

uint64_t sub_1BD8FDC98()
{
  v1 = *(v0 + 40) + 1;
  if (v1 == *(v0 + 24))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 40) = v1;
    v4 = *(v0 + 80);
    v5 = *(v0 + 16) + 16 * v1;
    v6 = *(v5 + 40);
    *(v0 + 48) = v6;
    v7 = *(v5 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58818, &qword_1BE104958);
    v8 = sub_1BE049E14();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    (*(v9 + 104))(v11 + v10, v4, v8);
    sub_1BE048C84();
    v12 = sub_1BD112D70(v11);
    *(v0 + 56) = v12;
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    v13 = sub_1BE049914();
    *(v0 + 64) = v13;
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = sub_1BD8FDADC;

    return MEMORY[0x1EEDC1BE8](v12, v7, v6, v13);
  }
}

uint64_t sub_1BD8FDECC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

uint64_t sub_1BD8FDF28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectInterface();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BD8FDF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD8FDFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD8FD880(a1, v4, v5, v6);
}

uint64_t sub_1BD8FE078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8FE0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for AvailablePass(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v10, &qword_1EBD520A0, &qword_1BE0B9840);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1BD0DE53C(v10, &qword_1EBD520A0, &qword_1BE0B9840);
  }

  sub_1BD8FE078(v10, v14, type metadata accessor for AvailablePass);
  sub_1BD0DE19C(&v14[*(v11 + 28)], v7, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  v16 = type metadata accessor for BalanceInfo(0);
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
  sub_1BD0DE53C(v7, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  if (v17 != 1)
  {
    v18 = WrappedPass.secureElementPass.getter();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 primaryAccountIdentifier];

      v21 = sub_1BE052434();
      v23 = v22;

      v24 = sub_1BE0528D4();
      (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v21;
      v25[5] = v23;
      v26 = sub_1BDA543A4(0, 0, v4, &unk_1BE104968, v25);
      v26, v27, v28, v29, v30, v31, v32, v33;
    }
  }

  return sub_1BD8FDF64(v14, type metadata accessor for AvailablePass);
}

uint64_t sub_1BD8FE45C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD8FCD4C(a1, v4, v5, v7, v6);
}

void sub_1BD8FE600(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product);
  v4 = [v3 supportsSetupProductMethodForType_];
  v5 = [v3 supportsSetupProductMethodForType_];
  v6 = [v3 supportsSetupProductMethodForType_];
  v7 = [v3 supportsSetupProductMethodForType_];
  v8 = OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod))
  {
    v9 = 0x80000001BE140010;
    v10 = 0xD00000000000001ALL;
LABEL_44:
    v11 = 1;
    goto LABEL_45;
  }

  if ((v4 | v5))
  {
    if ((v6 | v7))
    {
      v10 = 0;
      v9 = 0;
      v11 = 0;
LABEL_45:
      a1(v10, v9, 0, v11);
      return;
    }

    if (!(v5 & 1 | ((v4 & 1) == 0)))
    {
      v33 = [v3 setupProductMethodsOfType_];
      if (v33)
      {
        v34 = v33;
        sub_1BD8FEEA4();
        v35 = sub_1BE052744();

        if (v35 >> 62)
        {
          if (sub_1BE053704() == 1)
          {
            if (!sub_1BE053704())
            {
              v35, v72, v73, v74, v75, v76, v77, v78;
              v51 = 0;
              goto LABEL_24;
            }

            goto LABEL_20;
          }
        }

        else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
LABEL_20:
          if ((v35 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x1BFB40900](0, v35);
            goto LABEL_23;
          }

          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v43 = *(v35 + 32);
LABEL_23:
            v51 = v43;
            v35, v44, v45, v46, v47, v48, v49, v50;
LABEL_24:
            v52 = *(v1 + v8);
            *(v1 + v8) = v51;

            v32 = "derMode provisioning methods";
            v10 = 0xD000000000000031;
            goto LABEL_43;
          }

          goto LABEL_57;
        }

        v35, v36, v37, v38, v39, v40, v41, v42;
      }
    }

    v79 = *(v1 + v8);
    *(v1 + v8) = 0;

    v32 = "inApp provisioning method only";
    v10 = 0xD00000000000003CLL;
    goto LABEL_43;
  }

  if ((v6 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v32 = "";
      v10 = 0xD00000000000001DLL;
      goto LABEL_43;
    }

    v53 = [v3 setupProductMethodsOfType_];
    if (!v53)
    {
      return;
    }

    v54 = v53;
    sub_1BD8FEEA4();
    v14 = sub_1BE052744();

    if (v14 >> 62)
    {
      if (sub_1BE053704() != 1)
      {
        goto LABEL_50;
      }

      if (!sub_1BE053704())
      {
        v14, v80, v81, v82, v83, v84, v85, v86;
        v63 = 0;
        goto LABEL_33;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_50;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1BFB40900](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_58:
        __break(1u);
        return;
      }

      v55 = *(v14 + 32);
    }

    v63 = v55;
    v14, v56, v57, v58, v59, v60, v61, v62;
LABEL_33:
    v64 = *(v1 + v8);
    *(v1 + v8) = v63;

    v32 = "no valid provisioning methods";
    v10 = 0xD000000000000030;
    goto LABEL_43;
  }

  if (v7)
  {
    return;
  }

  v12 = [v3 setupProductMethodsOfType_];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  sub_1BD8FEEA4();
  v14 = sub_1BE052744();

  if (v14 >> 62)
  {
    if (sub_1BE053704() == 1)
    {
      if (!sub_1BE053704())
      {
        v14, v65, v66, v67, v68, v69, v70, v71;
        v30 = 0;
        goto LABEL_15;
      }

LABEL_11:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1BFB40900](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v22 = *(v14 + 32);
      }

      v30 = v22;
      v14, v23, v24, v25, v26, v27, v28, v29;
LABEL_15:
      v31 = *(v1 + v8);
      *(v1 + v8) = v30;

      v32 = "ning method only";
      v10 = 0xD00000000000002ELL;
LABEL_43:
      v9 = v32 | 0x8000000000000000;
      goto LABEL_44;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_11;
  }

LABEL_50:

  v14, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD8FEA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_product);
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v7 + 8))(v9, v6);
  v12 = [objc_allocWithZone(PKPaymentSetupProductProvidersViewController) initWithProduct:v10 showOtherProviders:0 context:v11];
  [v12 setFlowDelegate_];
  sub_1BE052434();
  v14 = v13;
  v15 = sub_1BE04BB74();
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setReporter_];

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v12;
  v24[4] = a1;
  v24[5] = a2;
  aBlock[4] = sub_1BD8FEE98;
  v36 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_209;
  v25 = _Block_copy(aBlock);
  v26 = v36;
  v27 = v12;
  sub_1BE048964();
  v26, v28, v29, v30, v31, v32, v33, v34;
  [v27 preflightWithCompletion_];
  _Block_release(v25);
}

uint64_t sub_1BD8FECCC(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController);
      *(Strong + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController) = a3;
      v8 = Strong;

      v9 = a3;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return a4(v10);
}

uint64_t sub_1BD8FED60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD8FED9C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD8FEDF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_viewController);
  v2 = v1;
  return v1;
}

unint64_t sub_1BD8FEEA4()
{
  result = qword_1EBD48A90;
  if (!qword_1EBD48A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD48A90);
  }

  return result;
}

id sub_1BD8FEEF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod);
  *(v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_selectedMethod) = a1;

  v3 = v1 + OBJC_IVAR____TtC9PassKitUI36PaymentSetupProductProvidersFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = a1;
    sub_1BD8659A4(v1, &off_1F3BC55C8, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1BD8FEFBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BD8FF004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD8FF080@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v130 = sub_1BE04F434();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v144 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v142 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v117 - v7;
  v134 = sub_1BE04FA74();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BE04F3D4();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04FA94();
  v140 = *(v10 - 8);
  v141 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04E9A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58898, &qword_1BE104B30);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v117 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58888, &qword_1BE104B28);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v117 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58880, &qword_1BE104B20);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v145 = &v117 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58878, &qword_1BE104B18);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v117 - v24;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58870, &unk_1BE104B08);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v117 - v25;
  v147 = a1;
  sub_1BD9007E0();
  sub_1BE0504E4();
  sub_1BE04E994();
  sub_1BD0DE4F4(&qword_1EBD588A0, &qword_1EBD58898, &qword_1BE104B30, MEMORY[0x1E697CD20]);
  sub_1BE051144();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  v139 = v20;
  v26 = sub_1BE051274();
  LOBYTE(v19) = sub_1BE0501D4();
  v27 = sub_1BE051CD4();
  v28 = *(v20 + 36);
  v138 = v22;
  v29 = &v22[v28];
  *v29 = v26;
  v29[8] = v19;
  *(v29 + 2) = v27;
  *(v29 + 3) = v30;
  type metadata accessor for AddressSearchingModel(0);
  sub_1BD900834(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel, &unk_1BE0F05E8);
  v31 = sub_1BE04E3D4();
  KeyPath = swift_getKeyPath();
  sub_1BE04E974();
  KeyPath, v33, v34, v35, v36, v37, v38, v39;

  v40 = v150;
  v137 = v151;
  v135 = v152;
  v136 = v153;
  if (sub_1BE051C54())
  {
    v155 = a1[48];
    v41 = *(a1 + 5);
    v154 = v41;
    if (v155 == 1)
    {
      if ((v41 & 1) == 0)
      {
LABEL_4:
        sub_1BE04FA84();
        goto LABEL_7;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v42 = v4;
      v43 = sub_1BE050174();
      sub_1BE04CF84();

      v4 = v42;
      v44 = v117;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD5AB484(&v154);
      (*(v118 + 8))(v44, v119);
      if ((v148 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  v45 = v131;
  sub_1BE04FA64();
  sub_1BE04FA54();
  v133[1](v45, v134);
LABEL_7:
  v131 = a1;
  v46 = v143;
  v47 = v144;
  v48 = *(v144 + 104);
  LODWORD(v134) = *MEMORY[0x1E69B8068];
  v133 = v48;
  (v48)(v143);
  result = PKPassKitBundle();
  if (result)
  {
    v50 = result;
    v51 = sub_1BE04B6F4();
    v53 = v52;

    v144 = *(v47 + 8);
    (v144)(v46, v4);
    v148 = v51;
    v149 = v53;
    v54 = sub_1BD900690();
    v119 = sub_1BD0DDEBC();
    v143 = v54;
    v55 = v4;
    v57 = v137;
    v56 = v138;
    v58 = v136;
    v59 = v146;
    v60 = v139;
    sub_1BE050874();
    v53, v61, v62, v63, v64, v65, v66, v67;
    v58, v68, v69, v70, v71, v72, v73, v74;
    v57, v75, v76, v77, v78, v79, v80, v81;
    v40, v82, v83, v84, v85, v86, v87, v88;
    (*(v140 + 8))(v59, v141);
    sub_1BD0C2330(v56);
    v89 = v142;
    (v133)(v142, v134, v55);
    result = PKPassKitBundle();
    if (result)
    {
      v90 = result;
      v91 = sub_1BE04B6F4();
      v93 = v92;

      (v144)(v89, v55);
      v148 = v91;
      v149 = v93;
      v150 = v60;
      v94 = MEMORY[0x1E69E6158];
      v151 = MEMORY[0x1E69E6158];
      v152 = v143;
      v95 = v119;
      v153 = v119;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v97 = v121;
      v98 = v122;
      v99 = v145;
      sub_1BE050B74();
      v93, v100, v101, v102, v103, v104, v105, v106;
      (*(v120 + 8))(v99, v98);
      v107 = v129;
      v108 = v128;
      v109 = v130;
      (*(v129 + 104))(v128, *MEMORY[0x1E697C438], v130);
      v150 = v98;
      v151 = v94;
      v152 = OpaqueTypeConformance2;
      v153 = v95;
      v110 = swift_getOpaqueTypeConformance2();
      v111 = v125;
      v112 = v124;
      sub_1BE050E84();
      (*(v107 + 8))(v108, v109);
      v113 = (*(v123 + 8))(v97, v112);
      MEMORY[0x1EEE9AC00](v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
      v150 = v112;
      v151 = v110;
      swift_getOpaqueTypeConformance2();
      v114 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
      v115 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
      v150 = v114;
      v151 = v115;
      swift_getOpaqueTypeConformance2();
      v116 = v127;
      sub_1BE051024();
      return (*(v126 + 8))(v111, v116);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD8FFDC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AddressSearchingModel(0);
  sub_1BD900834(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel, &unk_1BE0F05E8);
  sub_1BE04E3C4();
  v5 = *a1;
  v4 = a1[1];
  sub_1BE048964();
  result = sub_1BE04E954();
  *a2 = result;
  a2[1] = v7;
  a2[2] = v5;
  a2[3] = v4;
  return result;
}

uint64_t sub_1BD8FFE90(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

id sub_1BD90007C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v16 = v9;
    v17 = v11;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v12 = swift_allocObject();
    v13 = *(a1 + 16);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(a1 + 32);
    *(v12 + 64) = *(a1 + 48);
    sub_1BE048964();
    sub_1BD0DE19C(&v20, v15, &qword_1EBD588B8, &unk_1BE104B60);
    sub_1BD0DE19C(&v18, v15, &qword_1EBD5C6E0, &qword_1BE0C3590);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD900284@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_1BE04FE84();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58860, &qword_1BE104AF8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(v1 + 16);
  v36[0] = *v1;
  v36[1] = v10;
  v36[2] = *(v1 + 32);
  v37 = *(v1 + 48);
  v31 = v36;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58868, &qword_1BE104B00);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58870, &unk_1BE104B08);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0, &qword_1BE0E06C0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58878, &qword_1BE104B18);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58880, &qword_1BE104B20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58888, &qword_1BE104B28);
  v14 = sub_1BD900690();
  v15 = sub_1BD0DDEBC();
  v16 = MEMORY[0x1E69E6158];
  v32 = v13;
  v33 = MEMORY[0x1E69E6158];
  v34 = v14;
  v35 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v12;
  v33 = v16;
  v34 = OpaqueTypeConformance2;
  v35 = v15;
  v18 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v33 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0, &unk_1BE0BB850);
  v21 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0, &unk_1BE0BB850, MEMORY[0x1E697BEF0]);
  v32 = v20;
  v33 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v32 = v26;
  v33 = v25;
  v34 = v19;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FE74();
  sub_1BD0DE4F4(&qword_1EBD588A8, &qword_1EBD58860, &qword_1BE104AF8, MEMORY[0x1E697C0C0]);
  sub_1BD900834(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v23 = v28;
  sub_1BE0507D4();
  (*(v29 + 8))(v5, v23);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BD900690()
{
  result = qword_1EBD58890;
  if (!qword_1EBD58890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58888, &qword_1BE104B28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58898, &qword_1BE104B30);
    sub_1BE04E9A4();
    sub_1BD0DE4F4(&qword_1EBD588A0, &qword_1EBD58898, &qword_1BE104B30, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58890);
  }

  return result;
}

unint64_t sub_1BD9007E0()
{
  result = qword_1EBD588B0;
  if (!qword_1EBD588B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588B0);
  }

  return result;
}

uint64_t sub_1BD900834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BD9008B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C70, &qword_1BE105060);
  v7 = (a3 + v6[13]);
  v8 = a2[13];
  v7[12] = a2[12];
  v7[13] = v8;
  *(v7 + 217) = *(a2 + 217);
  v9 = a2[9];
  v7[8] = a2[8];
  v7[9] = v9;
  v10 = a2[11];
  v7[10] = a2[10];
  v7[11] = v10;
  v11 = a2[5];
  v7[4] = a2[4];
  v7[5] = v11;
  v12 = a2[7];
  v7[6] = a2[6];
  v7[7] = v12;
  v13 = a2[1];
  *v7 = *a2;
  v7[1] = v13;
  v14 = a2[3];
  v7[2] = a2[2];
  v7[3] = v14;
  sub_1BD909B64(a1, a3, type metadata accessor for TitleBodyMultiHyperlinkView);
  v15 = (a3 + v6[14]);
  sub_1BE051694();
  *v15 = v20;
  *(v15 + 1) = v21;
  v16 = (a3 + v6[15]);
  sub_1BE051694();
  *v16 = v20;
  *(v16 + 1) = v21;
  v17 = (a3 + v6[16]);
  sub_1BE051694();
  *v17 = v20;
  *(v17 + 1) = v21;
  v18 = (a3 + v6[17]);
  sub_1BE051694();
  result = v20;
  *v18 = v20;
  *(v18 + 1) = v21;
  *(a3 + v6[18]) = 0x4010000000000000;
  return result;
}

double sub_1BD900A34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58970, &qword_1BE104F18);
  v7 = a3 + v6[13];
  v8 = *(a2 + 176);
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = v8;
  *(v7 + 192) = *(a2 + 192);
  v9 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v9;
  v10 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v10;
  v11 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v11;
  v12 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v12;
  v13 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v13;
  sub_1BD0DE204(a1, a3, &qword_1EBD58968, &qword_1BE104F10);
  v14 = (a3 + v6[14]);
  sub_1BE051694();
  *v14 = v19;
  *(v14 + 1) = v20;
  v15 = (a3 + v6[15]);
  sub_1BE051694();
  *v15 = v19;
  *(v15 + 1) = v20;
  v16 = (a3 + v6[16]);
  sub_1BE051694();
  *v16 = v19;
  *(v16 + 1) = v20;
  v17 = (a3 + v6[17]);
  sub_1BE051694();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  *(a3 + v6[18]) = 0x4010000000000000;
  return result;
}

uint64_t PaymentOfferPostPurchasePresentationSource.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

unint64_t sub_1BD900C34()
{
  result = qword_1EBD588C0;
  if (!qword_1EBD588C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI28PaymentOfferSelectionContextO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 5;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BD900CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 9))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD900D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD900D6C(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 7;
    *(result + 8) = -32;
  }

  return result;
}

unint64_t sub_1BD900DBC()
{
  result = qword_1EBD588C8;
  if (!qword_1EBD588C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD588C8);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferInstallmentSelectionView(uint64_t a1)
{
  result = qword_1EBD588D0;
  if (!qword_1EBD588D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD900E84(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD496B0, 0x1E69B8CE8);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD39D98, 0x1E69B8C90);
    if (v2 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD3DC40, 0x1E69B8C80);
      if (v3 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v4 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD39360, &qword_1EBD49710, &qword_1BE0B8580);
          if (v5 <= 0x3F)
          {
            sub_1BD23BC4C(319, &qword_1EBD39358, &unk_1EBD45160, &qword_1BE0C25A0);
            if (v6 <= 0x3F)
            {
              sub_1BD90109C(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1BD23BC4C(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &qword_1BE0BAA50);
                if (v8 <= 0x3F)
                {
                  sub_1BD249694(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD90109C(319, &qword_1EBD59660, MEMORY[0x1E697DCC0]);
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

void sub_1BD90109C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD90110C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BD9012E8();
  sub_1BD908A54(v1, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD909B64(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588E0, &unk_1BE104E40) + 36));
  *v9 = sub_1BD908AB8;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = v1 + *(v4 + 72);
  v11 = *v10;
  v12 = *(v10 + 8);
  v17[16] = v11;
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v8) = v17[15];
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588E8, &qword_1BE104E80);
  v16 = (a1 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_1BD10DF54;
  v16[2] = v14;
  return result;
}

uint64_t sub_1BD9012E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F0, &qword_1BE104E88);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F8, &qword_1BE104E90);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58900, &qword_1BE104E98);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  if (*(v1 + 9) == 2)
  {
    sub_1BD901C20(v4);
    sub_1BD0DE19C(v4, v7, &qword_1EBD588F0, &qword_1BE104E88);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900, &qword_1BE104E98, MEMORY[0x1E697C1A8]);
    sub_1BD908AF4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v4, &qword_1EBD588F0, &qword_1BE104E88);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    *(&v14 - 2) = v1;
    sub_1BD908AF4();
    sub_1BE04EC04();
    (*(v9 + 16))(v7, v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900, &qword_1BE104E98, MEMORY[0x1E697C1A8]);
    sub_1BE04F9A4();
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_1BD9015F4(uint64_t a1)
{
  v2 = [*(a1 + 16) selectedOfferDetails];
  v3 = [v2 selectedPaymentOffer];

  if (v3)
  {
    if ([v3 type] == 1 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
    {
      v5 = v4;
      v6 = v3;
      v7 = [v5 selectedOfferIdentifier];
      sub_1BE052434();

      v8 = a1 + *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) + 56);
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      sub_1BE048964();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
      sub_1BE0516B4();
      v10, v11, v12, v13, v14, v15, v16, v17;
      v9, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
    }
  }

  sub_1BD90175C();
}

void sub_1BD90175C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = *MEMORY[0x1E69BA9C8];
  *(inited + 80) = *MEMORY[0x1E69BA9C8];
  v10 = *(v0 + 32);
  v11 = v3;
  v12 = v7;
  v13 = v9;
  v14 = [v10 offers];
  if (v14)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
    v15 = sub_1BE052744();

    if (v15 >> 62)
    {
      sub_1BE053704();
    }

    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  *(inited + 88) = sub_1BE053B24();
  *(inited + 96) = v23;
  v24 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v73 = v24;
  v25 = *(v1 + 8);
  if ((v25 & 0xE0) == 0xC0)
  {
    if (v25)
    {
      v26 = 0xD000000000000012;
    }

    else
    {
      v26 = 0xD000000000000010;
    }

    if (v25)
    {
      v27 = "tSetupProductProvidersFlowItem";
    }

    else
    {
      v27 = "transactionSummary";
    }

    sub_1BD6B05C0(v26, v27 | 0x8000000000000000, *MEMORY[0x1E69BB0E0]);
  }

  v28 = *v1;
  if ((v25 >> 5) - 1 < 6 || !(v25 >> 5) && v28)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v31 = *MEMORY[0x1E69BAC80];
      sub_1BD8D37B8(v28, v25);
      v32 = [v30 organizationName];
      v33 = sub_1BE052434();
      v35 = v34;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v33, v35, v31, isUniquelyReferenced_nonNull_native);

      v37 = *MEMORY[0x1E69BAC78];
      v38 = [v30 issuerCountryCode];
      if (v38)
      {
        v39 = v38;
        v40 = sub_1BE052434();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      sub_1BD6B05C0(v40, v42, v37);
      v43 = *MEMORY[0x1E69BAD48];
      v44 = PKDefaultPaymentNetworkNameForPaymentPass();
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

      sub_1BD6B05C0(v46, v48, v43);
      sub_1BD8D3858(v28, v25);
    }
  }

  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BE0B98D0;
  v51 = *MEMORY[0x1E69BB6E0];
  v52 = *MEMORY[0x1E69BB6C0];
  *(v50 + 32) = *MEMORY[0x1E69BB6E0];
  *(v50 + 40) = v52;
  v53 = *MEMORY[0x1E69BB6F8];
  *(v50 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v54 = v51;
  v55 = v52;
  v56 = v53;
  v57 = sub_1BE052724();
  v50, v58, v59, v60, v61, v62, v63, v64;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD908E5C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v65 = sub_1BE052224();
  v73, v66, v67, v68, v69, v70, v71, v72;
  [v49 subjects:v57 sendEvent:v65];
}

uint64_t sub_1BD901C20@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1BE04FE84();
  v3 = *(v2 - 8);
  v102 = v2;
  v103 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v6 = v5 - 8;
  v94 = *(v5 - 8);
  v108 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v87 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58930, &qword_1BE104EC0);
  MEMORY[0x1EEE9AC00](v90);
  v12 = &v87 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58920, &qword_1BE104EB0);
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v87 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58918, &qword_1BE104EA8);
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v87 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58910, &qword_1BE104EA0);
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v107 = &v87 - v15;
  *v12 = sub_1BE04F7B4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58950, &qword_1BE104EC8) + 44)];
  v105 = v1;
  sub_1BD90253C(v1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516C4();
  v88 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  v17 = sub_1BD0DE4F4(&qword_1EBD58938, &qword_1EBD58930, &qword_1BE104EC0, MEMORY[0x1E6981870]);
  v18 = sub_1BD908E5C(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  v19 = sub_1BD10CC54();
  v20 = v90;
  sub_1BE050F74();
  sub_1BD0DE53C(v10, &qword_1EBD393E8, &qword_1BE0B8680);
  sub_1BD0DE53C(v12, &qword_1EBD58930, &qword_1BE104EC0);
  v21 = v105;
  v22 = v105 + *(v6 + 68);
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v110) = v23;
  *(&v110 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v25 = v112;
  v26 = v106;
  sub_1BD908A54(v21, v106);
  v94 = *(v94 + 80);
  v27 = (v94 + 16) & ~v94;
  v91 = v27;
  v28 = swift_allocObject();
  v92 = type metadata accessor for PaymentOfferInstallmentSelectionView;
  sub_1BD909B64(v26, v28 + v27, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58928, &qword_1BE104EB8);
  *&v112 = v20;
  *(&v112 + 1) = v88;
  v113 = v87;
  v114 = v17;
  v115 = v18;
  v116 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = sub_1BD908DA8();
  v30 = v93;
  v31 = v95;
  v32 = v89;
  sub_1BE050F64();
  *(&v25 + 1), v33, v34, v35, v36, v37, v38, v39;
  v28, v40, v41, v42, v43, v44, v45, v46;
  v25, v47, v48, v49, v50, v51, v52, v53;
  (*(v96 + 8))(v32, v31);
  v54 = v100;
  sub_1BE04FE74();
  *&v112 = v31;
  *(&v112 + 1) = v29;
  v113 = OpaqueTypeConformance2;
  v114 = v86;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_1BD908E5C(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v57 = v97;
  v58 = v102;
  sub_1BE0507D4();
  (*(v103 + 8))(v54, v58);
  v59 = v57;
  (*(v98 + 8))(v30, v57);
  v60 = v105;
  v110 = *(v105 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516C4();
  v61 = v112;
  v62 = v113;
  v110 = v112;
  v111 = v113;
  *&v112 = v59;
  v109 = v60;
  *(&v112 + 1) = v58;
  v113 = v55;
  v114 = v56;
  swift_getOpaqueTypeConformance2();
  sub_1BD8D2B48();
  v63 = v104;
  v64 = v99;
  v65 = v107;
  sub_1BE050EF4();
  *(&v61 + 1), v66, v67, v68, v69, v70, v71, v72;
  v61, v73, v74, v75, v76, v77, v78, v79;

  (*(v101 + 8))(v65, v64);
  v80 = v106;
  sub_1BD908A54(v60, v106);
  v81 = v91;
  v82 = swift_allocObject();
  sub_1BD909B64(v80, v82 + v81, v92);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD588F0, &qword_1BE104E88);
  v84 = (v63 + *(result + 36));
  *v84 = 0;
  v84[1] = 0;
  v84[2] = sub_1BD908F1C;
  v84[3] = v82;
  return result;
}

uint64_t sub_1BD90253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1BE04F434();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58958, &qword_1BE104F00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58960, &qword_1BE104F08);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58968, &qword_1BE104F10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58970, &qword_1BE104F18);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v55 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58978, &qword_1BE104F20);
  MEMORY[0x1EEE9AC00](v57);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58980, &qword_1BE104F28);
  v59 = *(v19 - 8);
  v60 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v55 - v20;
  *v7 = sub_1BE04F7C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58988, &qword_1BE104F30);
  v22 = a1;
  sub_1BD9047CC(a1, &v7[*(v21 + 44)]);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, v11, &qword_1EBD58958, &qword_1BE104F00);
  v23 = &v11[*(v9 + 44)];
  v24 = v98;
  *(v23 + 4) = v97;
  *(v23 + 5) = v24;
  *(v23 + 6) = v99;
  v25 = v94;
  *v23 = v93;
  *(v23 + 1) = v25;
  v26 = v96;
  *(v23 + 2) = v95;
  *(v23 + 3) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BE0B6CA0;
  v28 = sub_1BE050204();
  *(v27 + 32) = v28;
  v29 = sub_1BE050224();
  *(v27 + 33) = v29;
  v30 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v28)
  {
    v30 = sub_1BE050214();
  }

  v27, v31, v32, v33, v34, v35, v36, v37;
  sub_1BE050214();
  if (sub_1BE050214() != v29)
  {
    v30 = sub_1BE050214();
  }

  sub_1BD0DE204(v11, v14, &qword_1EBD58960, &qword_1BE104F08);
  v38 = &v14[*(v12 + 36)];
  *v38 = v30;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  if (*(v22 + 9) - 1 > 1)
  {
    sub_1BD34A124(&v80);
  }

  else
  {
    sub_1BD906074(&v67);
    v110 = v77;
    v111 = v78;
    v112 = v79;
    v106 = v73;
    v107 = v74;
    v108 = v75;
    v109 = v76;
    v102 = v69;
    v103 = v70;
    v104 = v71;
    v105 = v72;
    v100 = v67;
    v101 = v68;
    PKEdgeInsetsMake();
    v90 = v110;
    v91 = v111;
    v92 = v112;
    v86 = v106;
    v87 = v107;
    v88 = v108;
    v89 = v109;
    v82 = v102;
    v83 = v103;
    v84 = v104;
    v85 = v105;
    v80 = v100;
    v81 = v101;
  }

  v77 = v90;
  v78 = v91;
  v79 = v92;
  v73 = v86;
  v74 = v87;
  v75 = v88;
  v76 = v89;
  v69 = v82;
  v70 = v83;
  v71 = v84;
  v72 = v85;
  v67 = v80;
  v68 = v81;
  PKEdgeInsetsMake();
  v110 = v77;
  v111 = v78;
  v112 = v79;
  v106 = v73;
  v107 = v74;
  v108 = v75;
  v109 = v76;
  v102 = v69;
  v103 = v70;
  v104 = v71;
  v105 = v72;
  v100 = v67;
  v101 = v68;
  v39 = v56;
  sub_1BD900A34(v14, &v100, v56);
  v40 = sub_1BE051274();
  v41 = sub_1BE0501D4();
  v42 = sub_1BE051CD4();
  v44 = v43;
  sub_1BD0DE204(v39, v18, &qword_1EBD58970, &qword_1BE104F18);
  v45 = v57;
  v46 = &v18[*(v57 + 36)];
  *v46 = v40;
  v46[8] = v41;
  *(v46 + 2) = v42;
  *(v46 + 3) = v44;
  v48 = v61;
  v47 = v62;
  v49 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x1E697C438], v63);
  v50 = sub_1BD908FBC();
  v51 = v58;
  sub_1BE050E84();
  (*(v47 + 8))(v48, v49);
  v52 = sub_1BD0DE53C(v18, &qword_1EBD58978, &qword_1BE104F20);
  MEMORY[0x1EEE9AC00](v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589A0, &qword_1BE104F38);
  v65 = v45;
  v66 = v50;
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD589A8, &qword_1EBD589A0, &qword_1BE104F38, MEMORY[0x1E697C5E0]);
  v53 = v60;
  sub_1BE051024();
  return (*(v59 + 8))(v51, v53);
}

uint64_t sub_1BD902CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589B8, &qword_1BE104F70);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v55[-v5];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589C0, &qword_1BE104F78);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v55[-v6];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589C8, &qword_1BE104F80);
  v64 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v55[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589D0, &qword_1BE104F88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v55[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39DE0, &unk_1BE104F90);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v55[-v14];
  v15 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E28, &unk_1BE0B99D0);
  v59 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v19 = &v55[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45C78, &unk_1BE0D5470);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v55[-v25];
  v26 = [*(a1 + 32) dynamicContent];
  v62 = a1;
  if (v26 && (v27 = v26, v28 = [v26 dynamicContentPageForPageType_], v27, v28))
  {

    v29 = 1;
    if (*(a1 + 9) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(a1 + 9) != 2)
    {
      if (sub_1BE051C54())
      {
        v57 = v4;
        v58 = a2;
        v37 = sub_1BE04FAC4();
        v56 = 0;
        goto LABEL_13;
      }

      v29 = 0;
LABEL_12:
      v56 = v29;
      v57 = v4;
      v58 = a2;
      v37 = sub_1BE04FB04();
LABEL_13:
      MEMORY[0x1EEE9AC00](v37);
      *&v55[-16] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E68, &unk_1BE0B99F0);
      sub_1BD0DE4F4(&qword_1EBD39E70, &qword_1EBD39E68, &unk_1BE0B99F0, MEMORY[0x1E697D680]);
      sub_1BE04E424();
      v38 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
      v39 = v60;
      v40 = v66;
      MEMORY[0x1BFB3CC50](v19, v66, v38);
      (*(v13 + 16))(v22, v39, v12);
      (*(v13 + 56))(v22, 0, 1, v12);
      v74 = v40;
      v75 = v38;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1BFB3CC80](v22, v12, OpaqueTypeConformance2);
      sub_1BD0DE53C(v22, &qword_1EBD45C78, &unk_1BE0D5470);
      (*(v13 + 8))(v39, v12);
      (*(v59 + 8))(v19, v40);
      v4 = v57;
      if (v56)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    LOBYTE(v29) = 0;
  }

  (*(v13 + 56))(v22, 1, 1, v12);
  v30 = sub_1BD0DE4F4(&qword_1EBD39E30, &qword_1EBD39E28, &unk_1BE0B99D0, MEMORY[0x1E697BEF0]);
  v74 = v66;
  v75 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3CC80](v22, v12, v31);
  sub_1BD0DE53C(v22, &qword_1EBD45C78, &unk_1BE0D5470);
  if (v29)
  {
LABEL_14:
    v42 = sub_1BE04FAC4();
    MEMORY[0x1EEE9AC00](v42);
    *&v55[-16] = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860, &unk_1BE0C4F70);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860, &unk_1BE0C4F70, MEMORY[0x1E697D680]);
    v43 = v63;
    sub_1BE04E424();
    v44 = sub_1BD0DE4F4(&qword_1EBD589D8, &qword_1EBD589C8, &qword_1BE104F80, MEMORY[0x1E697BEF0]);
    v45 = v65;
    v46 = v69;
    MEMORY[0x1BFB3CC50](v43, v69, v44);
    v48 = v67;
    v47 = v68;
    v49 = v71;
    (*(v68 + 16))(v67, v45, v71);
    (*(v47 + 56))(v48, 0, 1, v49);
    v74 = v46;
    v75 = v44;
    v50 = swift_getOpaqueTypeConformance2();
    v36 = v70;
    MEMORY[0x1BFB3CC80](v48, v49, v50);
    sub_1BD0DE53C(v48, &qword_1EBD589D0, &qword_1BE104F88);
    (*(v47 + 8))(v45, v49);
    (*(v64 + 8))(v43, v46);
    goto LABEL_15;
  }

LABEL_8:
  v32 = v67;
  v33 = v71;
  (*(v68 + 56))(v67, 1, 1, v71);
  v34 = sub_1BD0DE4F4(&qword_1EBD589D8, &qword_1EBD589C8, &qword_1BE104F80, MEMORY[0x1E697BEF0]);
  v74 = v69;
  v75 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v70;
  MEMORY[0x1BFB3CC80](v32, v33, v35);
  sub_1BD0DE53C(v32, &qword_1EBD589D0, &qword_1BE104F88);
LABEL_15:
  v51 = *(v4 + 48);
  v52 = v72;
  v53 = v73;
  sub_1BD0DE19C(v73, v72, &qword_1EBD45C78, &unk_1BE0D5470);
  sub_1BD0DE19C(v36, &v52[v51], &qword_1EBD589D0, &qword_1BE104F88);
  sub_1BE04F854();
  sub_1BD0DE53C(v36, &qword_1EBD589D0, &qword_1BE104F88);
  return sub_1BD0DE53C(v53, &qword_1EBD45C78, &unk_1BE0D5470);
}

uint64_t sub_1BD9036D4(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD908A54(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD909B64(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PaymentOfferInstallmentSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E78, &unk_1BE0B9A00);
  sub_1BD12DFE4();
  return sub_1BE051704();
}

id sub_1BD9038C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
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

uint64_t sub_1BD903A28(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD908A54(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD909B64(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PaymentOfferInstallmentSelectionView);
  return sub_1BE051704();
}

double sub_1BD903B68(uint64_t a1)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD903BDC@<X0>(uint64_t *a2@<X8>)
{
  sub_1BE051C54();
  result = sub_1BE051574();
  *a2 = result;
  return result;
}

uint64_t sub_1BD903C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v66);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v8 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v67 = &v59 - v17;
  v18 = [*(a1 + 32) dynamicContent];
  if (v18 && (v19 = v18, v20 = [v18 dynamicContentPageForPageType_], v19, v20))
  {
    v21 = *(a1 + 16);
    v60 = *(a1 + 24);
    v61 = v21;
    sub_1BD908A54(a1, &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v23 = swift_allocObject();
    sub_1BD909B64(v11, v23 + v22, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v24 = sub_1BE052434();
    v64 = v25;
    v65 = v24;
    v26 = sub_1BE052434();
    v62 = v27;
    v63 = v26;
    v74 = 0;
    v28 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
    v29 = v60;
    sub_1BE051694();
    sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
    v30 = &v14[*(v12 + 68)];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    v31 = v61;
    *v14 = v61;
    *(v14 + 1) = v29;
    *(v14 + 2) = v20;
    *(v14 + 3) = 0;
    *(v14 + 4) = 0xE000000000000000;
    *(v14 + 11) = 0;
    *(v14 + 72) = 0u;
    *(v14 + 56) = 0u;
    *(v14 + 40) = 0u;
    v14[96] = 0;
    *(v14 + 13) = 0;
    *(v14 + 16) = sub_1BD908F4C;
    *(v14 + 17) = v23;
    *(v14 + 72) = 1793;
    v32 = v31;
    v33 = [v29 identifier];
    if (!v33)
    {
      sub_1BE052434();
      v35 = v34;
      v33 = sub_1BE052404();
      v35, v36, v37, v38, v39, v40, v41, v42;
    }

    v43 = [v32 preferredLocalizationLanguageForCriteriaIdentifier_];

    v44 = sub_1BE052434();
    v46 = v45;

    *(v14 + 14) = v44;
    *(v14 + 15) = v46;
    v70 = 0;
    sub_1BE051944();
    v47 = v72;
    v48 = v73;
    v49 = &v14[*(v12 + 64)];
    *v49 = v71;
    *(v49 + 1) = v47;
    v49[16] = v48;
    v50 = v64;
    *(v14 + 19) = v65;
    *(v14 + 20) = v50;
    v51 = v62;
    *(v14 + 21) = v63;
    *(v14 + 22) = v51;
    v14[184] = 1;
    *(v14 + 24) = 0;
    *(v14 + 25) = 0;
    v52 = v14;
    v53 = v67;
    sub_1BD909B64(v52, v67, type metadata accessor for PaymentOfferActionExplanationView);
    v54 = v53;
    v55 = v69;
    sub_1BD909B64(v54, v69, type metadata accessor for PaymentOfferActionExplanationView);
    return (*(v68 + 56))(v55, 0, 1, v12);
  }

  else
  {
    v57 = v69;
    v58 = *(v68 + 56);

    return v58(v57, 1, 1, v12);
  }
}

double sub_1BD904144(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

id sub_1BD9041B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v78 = a1;
  v81 = a2;
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = v3;
  v79 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD440B8, &qword_1BE0D1620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = v71 - v5;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v82 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v71 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v71 - v14;
  v16 = *MEMORY[0x1E69B80D8];
  v17 = *(v7 + 104);
  v17(v71 - v14, v16, v6, v13);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = result;
  v20 = sub_1BE04B6F4();
  v22 = v21;

  v23 = *(v7 + 8);
  v23(v15, v6);
  v83 = v20;
  v84 = v22;
  sub_1BD0DDEBC();
  v24 = sub_1BE0506C4();
  v74 = v25;
  v75 = v24;
  v72 = v26;
  v73 = v27;
  (v17)(v11, v16, v6);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = result;
  v29 = sub_1BE04B6F4();
  v31 = v30;

  v23(v11, v6);
  v83 = v29;
  v84 = v31;
  v32 = sub_1BE0506C4();
  v71[1] = v33;
  v71[2] = v32;
  v71[0] = v34;
  v35 = v82;
  (v17)(v82, *MEMORY[0x1E69B80D0], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v36 = result;
    v37 = v35;
    v38 = sub_1BE04B6F4();
    v40 = v39;

    v23(v37, v6);
    v83 = v38;
    v84 = v40;
    v41 = sub_1BE0506C4();
    v43 = v42;
    LOBYTE(v36) = v44;
    v46 = v45;
    v47 = v79;
    sub_1BD908A54(v78, v79);
    v48 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v49 = swift_allocObject();
    sub_1BD909B64(v47, v49 + v48, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v50 = v80;
    sub_1BE051194();
    sub_1BD0DDF10(v41, v43, (v36 & 1), v51, v52, v53, v54, v55);
    v49, v56, v57, v58, v59, v60, v61, v62;
    v46, v63, v64, v65, v66, v67, v68, v69;
    v70 = sub_1BE0511A4();
    (*(*(v70 - 8) + 56))(v50, 0, 1, v70);
    return sub_1BE051174();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1BD9046A4(uint64_t a1)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();
  return result;
}

void *sub_1BD904744(uint64_t a1)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  result = sub_1BE0516A4();
  if ((v3 & 1) == 0 && *(a1 + 9) != 2)
  {
    return (*(a1 + 56))(result);
  }

  return result;
}

uint64_t sub_1BD9047CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = v4;
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589E0, &qword_1BE104FA0);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589E8, &qword_1BE104FA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v93 - v13);
  v15 = type metadata accessor for PassHeaderView(0);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0, &qword_1BE0B8820);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v101 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v93 - v22;
  v23 = *a1;
  v24 = *(a1 + 8) >> 5;
  if (((v24 - 1) < 6 || !v24 && v23) && (v25 = [v23 paymentPass]) != 0)
  {
    v98 = v5;
    *v14 = v25;
    v26 = v25;
    v27 = type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
    v28 = v26;
    v29 = PKSanitizedPrimaryAccountRepresentationForPass();
    if (v29)
    {
      v30 = v29;
      v31 = sub_1BE052434();
      v33 = v32;
    }

    else
    {

      v31 = 0;
      v33 = 0;
    }

    sub_1BD0DE19C(v14, v18, &unk_1EBD43B90, &unk_1BE0B89D0);
    v34 = &v18[v15[5]];
    *v34 = 0;
    *(v34 + 1) = 0;
    v35 = &v18[v15[6]];
    *v35 = v31;
    v35[1] = v33;
    v36 = &v18[v15[7]];
    *v36 = 0;
    *(v36 + 1) = 0;
    sub_1BD0DE53C(v14, &unk_1EBD43B90, &unk_1BE0B89D0);
    *&v18[v15[8]] = 0x4059000000000000;
    v37 = v18;
    v38 = v105;
    sub_1BD909B64(v37, v105, type metadata accessor for PassHeaderView);
    (*(v16 + 56))(v38, 0, 1, v15);
    v5 = v98;
  }

  else
  {
    (*(v16 + 56))(v105, 1, 1, v15);
  }

  v39 = *(a1 + 32);
  v40 = [v39 dynamicContent];
  if (v40 && (v41 = v40, v42 = [v40 dynamicContentPageForPageType_], v41, v42) && (v43 = objc_msgSend(v42, sel_title), v42, v43))
  {
    v44 = sub_1BE052434();
    v46 = v45;

    *&v127 = v44;
    *(&v127 + 1) = v46;
    sub_1BD0DDEBC();
    v98 = sub_1BE0506C4();
    v48 = v47;
    v50 = v49;
    v94 = v51;
    KeyPath = swift_getKeyPath();
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v106[55] = v138[5];
    *&v106[71] = v138[6];
    *&v106[87] = v138[7];
    *&v106[103] = v138[8];
    *&v106[7] = v138[2];
    *&v106[23] = v138[3];
    v50 &= 1u;
    LOBYTE(v107) = v50;
    *&v106[39] = v138[4];
    v53 = sub_1BE0501E4();
    *(&v123[4] + 9) = *&v106[64];
    *(&v123[5] + 9) = *&v106[80];
    *(&v123[6] + 9) = *&v106[96];
    *(v123 + 9) = *v106;
    *(&v123[1] + 9) = *&v106[16];
    *(&v123[2] + 9) = *&v106[32];
    LOBYTE(v119[0]) = 1;
    *&v121 = v98;
    *(&v121 + 1) = v48;
    LOBYTE(v122) = v50;
    *(&v122 + 1) = v94;
    *&v123[0] = KeyPath;
    BYTE8(v123[0]) = 1;
    *(&v123[7] + 1) = *&v106[111];
    *(&v123[3] + 9) = *&v106[48];
    LOBYTE(v124[0]) = v53;
    *(v124 + 8) = 0u;
    *(&v124[1] + 8) = 0u;
    BYTE8(v124[2]) = 1;
    PKEdgeInsetsMake();
    v136 = v123[7];
    v137 = v124[0];
    v138[0] = v124[1];
    *(v138 + 9) = *(&v124[1] + 9);
    v133 = v123[4];
    v134 = v123[5];
    v135 = v123[6];
    v129 = v123[0];
    v130 = v123[1];
    v131 = v123[2];
    v132 = v123[3];
    v127 = v121;
    v128 = v122;
  }

  else
  {
    sub_1BD909338(&v127);
  }

  LODWORD(v98) = sub_1BE0501D4();
  v54 = 1;
  v126 = 1;
  v125 = 1;
  v55 = [v39 offers];
  if (v55)
  {
    v56 = v55;
    sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
    v57 = sub_1BE052744();

    v58 = sub_1BE048C84();
    v59 = sub_1BD6CAF30(v58);
    v57, v60, v61, v62, v63, v64, v65, v66;
    *&v121 = v59;
    swift_getKeyPath();
    sub_1BD908A54(a1, v5);
    v67 = (*(v95 + 80) + 24) & ~*(v95 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v57;
    sub_1BD909B64(v5, v68 + v67, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1BD90935C;
    *(v69 + 24) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A00, &qword_1BE104FF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A08, &qword_1BE104FF8);
    sub_1BD0DE4F4(&qword_1EBD58A10, &qword_1EBD58A00, &qword_1BE104FF0, MEMORY[0x1E69E6338]);
    sub_1BD0DE4F4(&qword_1EBD58A18, &qword_1EBD58A08, &qword_1BE104FF8, MEMORY[0x1E6981870]);
    v70 = v97;
    sub_1BE0519C4();
    v72 = v99;
    v71 = v100;
    v73 = v102;
    (*(v99 + 32))(v102, v70, v100);
    v54 = 0;
  }

  else
  {
    v73 = v102;
    v72 = v99;
    v71 = v100;
  }

  (*(v72 + 56))(v73, v54, 1, v71);
  v74 = v101;
  sub_1BD0DE19C(v105, v101, &qword_1EBD395D0, &qword_1BE0B8820);
  v116 = v136;
  v117 = v137;
  v118[0] = v138[0];
  *(v118 + 9) = *(v138 + 9);
  v112 = v132;
  v113 = v133;
  v114 = v134;
  v115 = v135;
  v108 = v128;
  v109 = v129;
  v110 = v130;
  v111 = v131;
  v107 = v127;
  v75 = v126;
  LODWORD(v102) = v125;
  v76 = v103;
  sub_1BD0DE19C(v73, v103, &qword_1EBD589E8, &qword_1BE104FA8);
  v77 = v104;
  sub_1BD0DE19C(v74, v104, &qword_1EBD395D0, &qword_1BE0B8820);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589F0, &qword_1BE104FB0);
  v79 = (v77 + v78[12]);
  v80 = v116;
  v81 = v115;
  v119[9] = v116;
  v119[10] = v117;
  v120[0] = v118[0];
  *(v120 + 9) = *(v118 + 9);
  v82 = v112;
  v119[6] = v113;
  v83 = v113;
  v119[7] = v114;
  v84 = v114;
  v119[8] = v115;
  v85 = v110;
  v119[4] = v111;
  v86 = v111;
  v119[5] = v112;
  v87 = v108;
  v119[2] = v109;
  v88 = v109;
  v119[3] = v110;
  v89 = v107;
  v119[0] = v107;
  v119[1] = v108;
  v90 = v118[0];
  v79[10] = v117;
  v79[11] = v90;
  *(v79 + 185) = *(v118 + 9);
  v79[6] = v83;
  v79[7] = v84;
  v79[8] = v81;
  v79[9] = v80;
  v79[2] = v88;
  v79[3] = v85;
  v79[4] = v86;
  v79[5] = v82;
  *v79 = v89;
  v79[1] = v87;
  v91 = v77 + v78[16];
  *v91 = 0;
  *(v91 + 8) = v75;
  *(v91 + 16) = v98;
  *(v91 + 24) = 0u;
  *(v91 + 40) = 0u;
  *(v91 + 56) = v102;
  sub_1BD0DE19C(v76, v77 + v78[20], &qword_1EBD589E8, &qword_1BE104FA8);
  sub_1BD0DE19C(v119, &v121, &qword_1EBD589F8, &qword_1BE104FB8);
  sub_1BD0DE53C(v73, &qword_1EBD589E8, &qword_1BE104FA8);
  sub_1BD0DE53C(v105, &qword_1EBD395D0, &qword_1BE0B8820);
  sub_1BD0DE53C(v76, &qword_1EBD589E8, &qword_1BE104FA8);
  v124[0] = v117;
  v124[1] = v118[0];
  *(&v124[1] + 9) = *(v118 + 9);
  v123[4] = v113;
  v123[5] = v114;
  v123[6] = v115;
  v123[7] = v116;
  v123[0] = v109;
  v123[1] = v110;
  v123[2] = v111;
  v123[3] = v112;
  v121 = v107;
  v122 = v108;
  sub_1BD0DE53C(&v121, &qword_1EBD589F8, &qword_1BE104FB8);
  return sub_1BD0DE53C(v74, &qword_1EBD395D0, &qword_1BE0B8820);
}

void *sub_1BD905330@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_1BE04F7C4();
  v15 = 0;
  sub_1BD905428(a1, a3, a2, __src);
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v17, __src, 0x149uLL);
  sub_1BD0DE19C(__dst, v12, &qword_1EBD58A20, &qword_1BE105030);
  sub_1BD0DE53C(v17, &qword_1EBD58A20, &qword_1BE105030);
  memcpy(&v14[7], __dst, 0x149uLL);
  v10 = v15;
  *a5 = v9;
  *(a5 + 8) = 0;
  *(a5 + 16) = v10;
  return memcpy((a5 + 17), v14, 0x150uLL);
}

uint64_t sub_1BD905428@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    __dst = a4;
    if (!(a2 >> 62))
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v38 = a1;
  v6 = sub_1BE053704();
  a1 = v38;
LABEL_4:
  if (a1)
  {
    sub_1BD9093E8(&v100);
  }

  else
  {
    sub_1BD905954(&v100);
    v61 = v102;
    v62 = v103;
    v63[0] = v104[0];
    *(v63 + 9) = *(v104 + 9);
    v59 = v100;
    v60 = v101;
    v7 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v94 = v61;
    v95 = v62;
    v96 = v63[0];
    v97 = v63[1];
    v92 = v59;
    v93 = v60;
    LOBYTE(v98) = v7;
    *(&v98 + 1) = v8;
    *v99 = v9;
    *&v99[8] = v10;
    *&v99[16] = v11;
    v99[24] = 0;
    PKEdgeInsetsMake();
    v104[1] = v63[1];
    v105 = v98;
    v106[0] = *v99;
    *(v106 + 9) = *&v99[9];
    v102 = v61;
    v103 = v62;
    v104[0] = v63[0];
    v100 = v59;
    v101 = v60;
  }

  sub_1BD905B30(v4, &v92);
  v49 = v92;
  v48 = BYTE8(v92);
  v46 = *(&v93 + 1);
  v47 = v93;
  v44 = BYTE1(v94);
  v45 = v94;
  v43 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v59) = 0;
  if (v5 == v6)
  {
    sub_1BD905D4C(&v92);
    v20 = *(&v92 + 1);
    v21 = v92;
    v23 = *(&v93 + 1);
    v22 = v93;
    v24 = *(&v94 + 1);
    v25 = v94;
    v27 = *(&v95 + 1);
    v26 = v95;
    v28 = *(&v96 + 1);
    v29 = v96;
    v31 = *(&v97 + 1);
    v30 = v97;
    v32 = v98;
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v21 = 1;
  }

  v39 = v28;
  v40 = v31;
  v41 = v30;
  v56 = v104[1];
  v57 = v105;
  *v58 = v106[0];
  *&v58[9] = *(v106 + 9);
  v53 = v102;
  v54 = v103;
  v55 = v104[0];
  v51 = v100;
  v52 = v101;
  v63[1] = v104[1];
  v63[2] = v105;
  v64[0] = v106[0];
  *(v64 + 9) = *(v106 + 9);
  v61 = v102;
  v62 = v103;
  v63[0] = v104[0];
  v59 = v100;
  v60 = v101;
  __src[6] = v105;
  __src[7] = v106[0];
  *(&__src[7] + 9) = *(v106 + 9);
  __src[2] = v102;
  __src[3] = v103;
  __src[4] = v104[0];
  __src[5] = v104[1];
  __src[0] = v100;
  __src[1] = v101;
  *&v65 = v49;
  BYTE8(v65) = v48;
  *&v66 = v47;
  *(&v66 + 1) = v46;
  LOBYTE(v67) = v45;
  BYTE1(v67) = v44;
  BYTE8(v67) = v43;
  *&v68 = v13;
  *(&v68 + 1) = v15;
  *&v69 = v17;
  *(&v69 + 1) = v19;
  v70 = 0;
  LOBYTE(__src[14]) = 0;
  __src[11] = v67;
  __src[12] = v68;
  __src[13] = v69;
  __src[9] = v65;
  __src[10] = v66;
  *&v71 = v21;
  *(&v71 + 1) = v20;
  *&v72 = v22;
  *(&v72 + 1) = v23;
  *&v73 = v25;
  *(&v73 + 1) = v24;
  *&v74 = v26;
  *(&v74 + 1) = v27;
  *&v75 = v29;
  *(&v75 + 1) = v28;
  *&v76 = v30;
  *(&v76 + 1) = v31;
  v77 = v32;
  *(&__src[18] + 8) = v75;
  *(&__src[19] + 8) = v76;
  *(&__src[16] + 8) = v73;
  *(&__src[17] + 8) = v74;
  *(&__src[15] + 8) = v72;
  *(&__src[14] + 8) = v71;
  BYTE8(__src[20]) = v32;
  v33 = v20;
  v34 = v22;
  v35 = v23;
  v36 = v32;
  memcpy(__dst, __src, 0x149uLL);
  v78[0] = v21;
  v78[1] = v33;
  v78[2] = v34;
  v78[3] = v35;
  v78[4] = v25;
  v78[5] = v24;
  v78[6] = v26;
  v78[7] = v27;
  v78[8] = v29;
  v78[9] = v39;
  v78[10] = v41;
  v78[11] = v40;
  v79 = v36;
  sub_1BD0DE19C(&v59, &v92, &qword_1EBD58A28, &qword_1BE105038);
  sub_1BD0DE19C(&v65, &v92, &qword_1EBD58A30, &qword_1BE105040);
  sub_1BD0DE19C(&v71, &v92, &qword_1EBD58A38, &qword_1BE105048);
  sub_1BD0DE53C(v78, &qword_1EBD58A38, &qword_1BE105048);
  v80 = v49;
  v81 = v48;
  v82 = v47;
  v83 = v46;
  v84 = v45;
  v85 = v44;
  v86 = v43;
  v87 = v13;
  v88 = v15;
  v89 = v17;
  v90 = v19;
  v91 = 0;
  sub_1BD0DE53C(&v80, &qword_1EBD58A30, &qword_1BE105040);
  v98 = v57;
  *v99 = *v58;
  *&v99[9] = *&v58[9];
  v94 = v53;
  v95 = v54;
  v96 = v55;
  v97 = v56;
  v92 = v51;
  v93 = v52;
  return sub_1BD0DE53C(&v92, &qword_1EBD58A28, &qword_1BE105038);
}

id sub_1BD905954@<X0>(uint64_t a1@<X8>)
{
  result = [*(v1 + 24) programName];
  if (result)
  {
    v4 = result;
    sub_1BE052434();
    v6 = v5;

    sub_1BE0524C4();
    v6, v7, v8, v9, v10, v11, v12, v13;
    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    LOBYTE(v6) = v17;
    v19 = v18;
    v20 = sub_1BE051494();
    v21 = sub_1BE050564();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v20, v22, v24, v26, v28, v29, v30, v31;
    sub_1BD0DDF10(v14, v16, (v6 & 1), v32, v33, v34, v35, v36);
    v19, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1BE050454();
    v45 = sub_1BE0505F4();
    v47 = v46;
    LOBYTE(v20) = v48;
    v50 = v49;
    v44, v46, v48, v49, v51, v52, v53, v54;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v55, v56, v57, v58, v59);
    v27, v60, v61, v62, v63, v64, v65, v66;
    LOBYTE(v44) = sub_1BE050204();
    sub_1BE04E1F4();
    *(&v68 + 1) = v67;
    *(&v70 + 1) = v69;
    v75 = v70;
    v76 = v68;
    v71 = v20 & 1;
    result = swift_getKeyPath();
    v73 = v75;
    v72 = v76;
    v74 = v44;
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v50 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0uLL;
  }

  *a1 = v45;
  *(a1 + 8) = v47;
  *(a1 + 16) = v71;
  *(a1 + 24) = v50;
  *(a1 + 32) = v74;
  *(a1 + 40) = v72;
  *(a1 + 56) = v73;
  *(a1 + 72) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = 0;
  return result;
}

id sub_1BD905B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BD908A54(v3, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_1BD909B64(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PaymentOfferInstallmentSelectionView);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v12 = v3 + *(v7 + 64);
  v13 = *(v12 + 16);
  v34 = *v12;
  v35 = v13;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516A4();
  v15 = v32;
  v14 = v33;
  v16 = [v31 identifier];
  v17 = sub_1BE052434();
  v19 = v18;

  if (v14)
  {
    if (v15 == v17 && v14 == v19)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1BE053B84();
    }

    v14, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v27 = 0;
  }

  v19, v20, v21, v22, v23, v24, v25, v26;
  v28 = v31;
  *a2 = v31;
  *(a2 + 8) = 1;
  *(a2 + 16) = sub_1BD909754;
  *(a2 + 24) = v11;
  *(a2 + 32) = v27 & 1;
  *(a2 + 33) = 1;

  return v28;
}

double sub_1BD905D4C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [*(v1 + 32) dynamicContent];
  if (!v6 || (v7 = v6, v8 = [v6 dynamicContentPageForPageType_], v7, !v8))
  {
    v9 = 0;
    goto LABEL_7;
  }

  v9 = [v8 footerContent];

  if (!v9)
  {
LABEL_7:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_10;
  }

  sub_1BD908A54(v1, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1BD909B64(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = 0;
  v13[5] = sub_1BD909DD8;
  v13[6] = v11;
  aBlock[4] = sub_1BD909DDC;
  v43 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD198918;
  aBlock[3] = &block_descriptor_91_3;
  v14 = _Block_copy(aBlock);
  v15 = v43;
  sub_1BE048964();
  v16 = v9;
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v12 hyperlinkSourcesFromApplyFooter:v16 linkTapped:v14];
  _Block_release(v14);
  if (v24)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
    v9 = sub_1BE052744();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v30 = [v16 footerText];
  v26 = sub_1BE052434();
  v27 = v31;

  v11, v32, v33, v34, v35, v36, v37, v38;
  v39 = sub_1BE050204();

  LOBYTE(aBlock[0]) = 0;
  v28 = 1;
  v44 = 1;
  v29 = v39;
  v25 = 4;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v25;
  *(a1 + 16) = 0;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v29;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v28;
  return result;
}

void sub_1BD906074(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = sub_1BE04F3D4();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v5 = *(v110 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 32) dynamicContent];
  if (v13 && (v14 = v13, v15 = [v13 dynamicContentPageForPageType_], v14, v15) && (v16 = objc_msgSend(v15, sel_primaryActionTitle), v15, v16))
  {
    v17 = sub_1BE052434();
    v108 = v18;
    v109 = v17;
  }

  else
  {
    v107 = v5;
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8078], v8);
    v19 = *(v2 + 16);
    v20 = [*(v2 + 24) identifier];
    if (!v20)
    {
      sub_1BE052434();
      v22 = v21;
      v20 = sub_1BE052404();
      v22, v23, v24, v25, v26, v27, v28, v29;
    }

    v30 = [v19 preferredLocalizationLanguageForCriteriaIdentifier_];

    sub_1BE052434();
    v32 = v31;

    v33 = PKPassKitBundle();
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    v35 = sub_1BE04B6E4();
    v108 = v36;
    v109 = v35;
    v32, v36, v37, v38, v39, v40, v41, v42;

    (*(v9 + 8))(v12, v8);
    v5 = v107;
  }

  v43 = v110;
  v44 = v2 + *(v110 + 64);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v111) = *v44;
  *(&v111 + 1) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if ((v117 & 1) != 0 || (v47 = v2 + *(v43 + 56), v48 = *(v47 + 16), v111 = *v47, *&v112 = v48, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0), sub_1BE0516A4(), !v118))
  {
    LODWORD(v107) = 0;
  }

  else
  {
    v118, v49, v50, v51, v52, v53, v54, v55;
    LODWORD(v107) = 1;
  }

  sub_1BD908A54(v2, &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v80 = swift_allocObject();
  sub_1BD909B64(v7, v80 + v56, type metadata accessor for PaymentOfferInstallmentSelectionView);
  LOBYTE(v111) = v45;
  *(&v111 + 1) = v46;
  sub_1BE0516A4();
  v57 = v117;
  LOBYTE(v117) = 1;
  v58 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD589B0 &unk_1BE104F40))];
  sub_1BD9082BC(&v111);
  v105 = v112;
  v106 = v111;
  v59 = v113;
  v60 = v114;
  v104 = v115;
  v116 = 0;
  v61 = &v58[qword_1EBD56240];
  v62 = *&v58[qword_1EBD56240];
  v63 = *&v58[qword_1EBD56240 + 8];
  *v61 = sub_1BD9090A8;
  v61[1] = v80;
  sub_1BD0D4744(v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = &v58[qword_1EBD56248[0]];
  v71 = *&v58[qword_1EBD56248[0]];
  v72 = *&v58[qword_1EBD56248[0] + 8];
  *v70 = 0;
  *(v70 + 1) = 0;
  sub_1BD0D4744(v71, v72, v73, v74, v75, v76, v77, v78);
  v79 = v117;
  LODWORD(v80) = v116;
  v81 = sub_1BE0501F4();
  v82 = v2 + *(v43 + 72);
  v83 = *v82;
  if (*(v82 + 8) != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    LODWORD(v110) = v80;
    v80 = v60;
    v84 = v59;
    v85 = v57;
    v86 = sub_1BE050174();
    sub_1BE04CF84();

    v87 = v101;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v83, 0, v88, v89, v90, v91, v92, v93);
    v94 = v87;
    v57 = v85;
    v59 = v84;
    v60 = v80;
    LOBYTE(v80) = v110;
    (*(v102 + 8))(v94, v103);
  }

  sub_1BE04E1F4();
  LOBYTE(v111) = 0;
  *a1 = v58;
  *(a1 + 8) = 0;
  v95 = v105;
  *(a1 + 16) = v106;
  *(a1 + 32) = v95;
  *(a1 + 48) = v59;
  *(a1 + 56) = v60;
  *(a1 + 64) = v104;
  *(a1 + 72) = v57;
  v96 = v108;
  *(a1 + 80) = v109;
  *(a1 + 88) = v96;
  LOBYTE(v96) = v107;
  *(a1 + 96) = v107;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = v79;
  *(a1 + 129) = v96;
  *(a1 + 136) = 0x4020000000000000;
  *(a1 + 144) = v80;
  *(a1 + 152) = v81;
  *(a1 + 160) = v97;
  *(a1 + 168) = v98;
  *(a1 + 176) = v99;
  *(a1 + 184) = v100;
  *(a1 + 192) = 0;
}

void sub_1BD9066B0(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1BD906888(MEMORY[0x1E69BA500]);
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD908A54(a1, v5);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD909B64(v5, v12 + v11, type metadata accessor for PaymentOfferInstallmentSelectionView);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE104F58, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

void sub_1BD906888(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v4 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v5 = sub_1BE052434();
  v6 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  v8 = *v6;
  *(inited + 56) = *v6;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v9;
  v10 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v11;
  v12 = *MEMORY[0x1E69BA9C8];
  *(inited + 104) = *MEMORY[0x1E69BA9C8];
  v13 = *(v1 + 32);
  v14 = v4;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = [v13 offers];
  if (v18)
  {
    sub_1BD0E5E8C(0, &qword_1EBD39018, 0x1E69B8C88);
    v19 = sub_1BE052744();

    if (v19 >> 62)
    {
      sub_1BE053704();
    }

    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  *(inited + 112) = sub_1BE053B24();
  *(inited + 120) = v27;
  v28 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v77 = v28;
  v29 = *(v2 + 8);
  if ((v29 & 0xE0) == 0xC0)
  {
    if (v29)
    {
      v30 = 0xD000000000000012;
    }

    else
    {
      v30 = 0xD000000000000010;
    }

    if (v29)
    {
      v31 = "tSetupProductProvidersFlowItem";
    }

    else
    {
      v31 = "transactionSummary";
    }

    sub_1BD6B05C0(v30, v31 | 0x8000000000000000, *MEMORY[0x1E69BB0E0]);
  }

  v32 = *v2;
  if ((v29 >> 5) - 1 < 6 || !(v29 >> 5) && v32)
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      v35 = *MEMORY[0x1E69BAC80];
      sub_1BD8D37B8(v32, v29);
      v36 = [v34 organizationName];
      v37 = sub_1BE052434();
      v39 = v38;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAE70(v37, v39, v35, isUniquelyReferenced_nonNull_native);

      v41 = *MEMORY[0x1E69BAC78];
      v42 = [v34 issuerCountryCode];
      if (v42)
      {
        v43 = v42;
        v44 = sub_1BE052434();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      sub_1BD6B05C0(v44, v46, v41);
      v47 = *MEMORY[0x1E69BAD48];
      v48 = PKDefaultPaymentNetworkNameForPaymentPass();
      if (v48)
      {
        v49 = v48;
        v50 = sub_1BE052434();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      sub_1BD6B05C0(v50, v52, v47);
      sub_1BD8D3858(v32, v29);
    }
  }

  v53 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BE0B98D0;
  v55 = *MEMORY[0x1E69BB6E0];
  v56 = *MEMORY[0x1E69BB6C0];
  *(v54 + 32) = *MEMORY[0x1E69BB6E0];
  *(v54 + 40) = v56;
  v57 = *MEMORY[0x1E69BB6F8];
  *(v54 + 48) = *MEMORY[0x1E69BB6F8];
  type metadata accessor for PKAnalyticsSubject(0);
  v58 = v55;
  v59 = v56;
  v60 = v57;
  v61 = sub_1BE052724();
  v54, v62, v63, v64, v65, v66, v67, v68;
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD908E5C(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v69 = sub_1BE052224();
  v77, v70, v71, v72, v73, v74, v75, v76;
  [v53 subjects:v61 sendEvent:v69];
}

uint64_t sub_1BD906D70()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD906E1C();
}

uint64_t sub_1BD906E1C()
{
  v1[71] = v0;
  v2 = sub_1BE04D214();
  v1[72] = v2;
  v1[73] = *(v2 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  sub_1BE0528A4();
  v1[79] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[80] = v4;
  v1[81] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD906F5C, v4, v3);
}

uint64_t sub_1BD906F5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v130 = v8;
  v9 = *(v8 + 568);
  v10 = *v9;
  *(v8 + 656) = *v9;
  v11 = *(v9 + 8);
  *(v8 + 712) = v11;
  if ((v11 >> 5) - 1 >= 6 && (v11 >> 5 || !v10) || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
    *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
LABEL_18:
    sub_1BE04D084();
    v77 = sub_1BE04D204();
    v78 = sub_1BE052C34();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v8 + 600);
    v81 = *(v8 + 584);
    v82 = *(v8 + 576);
    if (v79)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v129 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_1BD123690(0xD000000000000073, 0x80000001BE1400C0, &v129);
      _os_log_impl(&dword_1BD026000, v77, v78, "%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84, v85, v86, v87, v88, v89, v90, v91);
      MEMORY[0x1BFB45F20](v84, -1, -1);
      MEMORY[0x1BFB45F20](v83, -1, -1);
    }

    (*(v81 + 8))(v80, v82);
    v92 = *(v8 + 568);
    v93 = *MEMORY[0x1E69BBBC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = sub_1BE052434();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v95;
    *(inited + 48) = 0xD000000000000073;
    *(inited + 56) = 0x80000001BE1400C0;
    v96 = v93;
    v97 = sub_1BD1AACF8(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
    v98 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v99 = sub_1BE052224();
    v97, v100, v101, v102, v103, v104, v105, v106;
    v107 = [v98 initWithDomain:v96 code:-9000 userInfo:v99];

    v108 = sub_1BE04A844();
    *(v8 + 504) = *(v92 + 72);
    *(v8 + 560) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
    sub_1BE0516B4();
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *(v8 + 568) + *(*(v8 + 608) + 56);
  v15 = *(v14 + 16);
  *(v8 + 352) = *v14;
  *(v8 + 368) = v15;
  sub_1BD8D37B8(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516A4();
  v23 = *(v8 + 448);
  if (!v23)
  {
    *(v8 + 632), v16, v17, v18, v19, v20, v21, v22;
    sub_1BD8D3858(v10, v11);
    goto LABEL_18;
  }

  v24 = *(v8 + 568);
  v25 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
  *(v8 + 664) = v25;
  v26 = *(v24 + 32);
  v27 = sub_1BE052404();
  v23, v28, v29, v30, v31, v32, v33, v34;
  v35 = *(v24 + 24);
  v36 = [v26 sessionIdentifier];
  if (!v36)
  {
    sub_1BE052434();
    v37 = v25;
    v39 = v38;
    v36 = sub_1BE052404();
    v40 = v39;
    v25 = v37;
    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  v48 = *(v8 + 568);
  v128 = v25;
  v49 = [objc_opt_self() selectedOfferWithInstallmentAssessment:v26 selectedOfferIdentifier:v27 criteria:v35 passDetails:v25 sessionIdentifier:v36];
  *(v8 + 672) = v49;

  v50 = *(v48 + 16);
  v51 = [v50 configuration];
  v52 = [v51 transactionAmount];

  if (v52)
  {
    v53 = [v50 configuration];
    v54 = [v53 currencyCode];

    if (v54)
    {
      v55 = v52;
      v56 = PKCurrencyAmountMake();

      [v49 setUserEnteredAmount_];
    }
  }

  v57 = *(v8 + 624);
  v58 = *(v8 + 568);
  v59 = v58 + *(*(v8 + 608) + 52);
  v60 = *v59;
  v61 = *(v59 + 8);
  *(v8 + 424) = v60;
  *(v8 + 432) = v61;
  *(v8 + 707) = 1;
  *(v8 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  sub_1BD908A54(v58, v57);
  v62 = [v50 configuration];
  v63 = [v62 context];

  if (v63 > 1)
  {
    v71 = v128;
    if (v63 != 2)
    {
      if (v63 == 3)
      {
        v72 = v8 + 16;
        v111 = (*(v8 + 568) + *(*(v8 + 608) + 64));
        v112 = *v111;
        v113 = *(v111 + 1);
        *(v8 + 408) = v112;
        *(v8 + 416) = v113;
        *(v8 + 705) = 1;
        sub_1BE0516B4();
        [v50 updateCurrentSelectedPaymentOffer:v49 updateReason:3];
        *(v8 + 16) = v8;
        *(v8 + 56) = v8 + 706;
        *(v8 + 24) = sub_1BD907A74;
        v114 = swift_continuation_init();
        *(v8 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
        *(v8 + 288) = MEMORY[0x1E69E9820];
        *(v8 + 296) = 1107296256;
        *(v8 + 304) = sub_1BD22B1E0;
        *(v8 + 312) = &block_descriptor_58_0;
        *(v8 + 320) = v114;
        [v50 confirmOfferRequestWithCompletion_];
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v71 = v128;
    if (v63)
    {
      if (v63 == 1)
      {
        v72 = v8 + 80;
        v73 = (*(v8 + 568) + *(*(v8 + 608) + 64));
        v74 = *v73;
        v75 = *(v73 + 1);
        *(v8 + 488) = v74;
        *(v8 + 496) = v75;
        *(v8 + 709) = 1;
        sub_1BE0516B4();
        [v50 updateCurrentSelectedPaymentOffer:v49 updateReason:3];
        *(v8 + 80) = v8;
        *(v8 + 120) = v8 + 710;
        *(v8 + 88) = sub_1BD90783C;
        v76 = swift_continuation_init();
        *(v8 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
        *(v8 + 224) = MEMORY[0x1E69E9820];
        *(v8 + 232) = 1107296256;
        *(v8 + 240) = sub_1BD22B1E0;
        *(v8 + 248) = &block_descriptor_61_2;
        *(v8 + 256) = v76;
        [v50 selectOfferRequestWithCompletion_];
LABEL_27:

        return MEMORY[0x1EEE6DEC8](v72);
      }

LABEL_31:
      v120 = *(v8 + 632);
      sub_1BD9091B8(*(v8 + 624));
      sub_1BD8D3858(v10, v11);

      v120, v121, v122, v123, v124, v125, v126, v127;
      goto LABEL_21;
    }
  }

  v115 = *(v8 + 624);
  v116 = *(v8 + 608);
  *(v8 + 632), v64, v65, v66, v67, v68, v69, v70;
  v117 = v115 + *(v116 + 64);
  v118 = *v117;
  v119 = *(v117 + 8);
  *(v8 + 392) = v118;
  *(v8 + 400) = v119;
  *(v8 + 704) = 0;
  sub_1BE0516B4();
  (*(v115 + 40))(v49);

  sub_1BD8D3858(v10, v11);
  sub_1BD9091B8(v115);
LABEL_21:

  v109 = *(v8 + 8);

  return v109();
}

uint64_t sub_1BD90783C()
{
  v1 = *v0;
  v2 = (*v0)[14];
  (*v0)[86] = v2;
  if (v2)
  {
    sub_1BD9091B8(v1[78]);
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907CAC;
  }

  else
  {
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD90795C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD90795C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 672);
  v10 = *(v8 + 664);
  v11 = *(v8 + 656);
  v12 = *(v8 + 624);
  v13 = *(v8 + 608);
  v14 = *(v8 + 712);
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  v15 = v12 + *(v13 + 64);
  v16 = *v15;
  v17 = *(v15 + 8);
  *(v8 + 520) = v16;
  *(v8 + 528) = v17;
  *(v8 + 711) = 0;
  sub_1BE0516B4();
  (*(v12 + 40))(v9);

  sub_1BD8D3858(v11, v14);
  sub_1BD9091B8(v12);

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD907A74()
{
  v1 = *v0;
  v2 = (*v0)[6];
  (*v0)[87] = v2;
  if (v2)
  {
    sub_1BD9091B8(v1[78]);
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907FB4;
  }

  else
  {
    v3 = v1[81];
    v4 = v1[80];
    v5 = sub_1BD907B94;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD907B94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 672);
  v10 = *(v8 + 664);
  v11 = *(v8 + 656);
  v12 = *(v8 + 624);
  v13 = *(v8 + 608);
  v14 = *(v8 + 712);
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  v15 = v12 + *(v13 + 64);
  v16 = *v15;
  v17 = *(v15 + 8);
  *(v8 + 472) = v16;
  *(v8 + 480) = v17;
  *(v8 + 708) = 0;
  sub_1BE0516B4();
  (*(v12 + 40))(v9);

  sub_1BD8D3858(v11, v14);
  sub_1BD9091B8(v12);

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD907CAC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v54 = v8;
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();
  v9 = *(v8 + 688);
  v10 = *(v8 + 616);
  v11 = *(v8 + 568);
  v12 = v9;
  v13 = sub_1BE04A844();

  *(v8 + 376) = *(v11 + 72);
  *(v8 + 536) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD908A54(v11, v10);
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C34();
  if (os_log_type_enabled(v14, v15))
  {
    v46 = *(v8 + 664);
    v47 = *(v8 + 672);
    v16 = *(v8 + 616);
    v49 = *(v8 + 656);
    v50 = *(v8 + 584);
    v51 = *(v8 + 576);
    v52 = *(v8 + 592);
    v48 = *(v8 + 712);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53 = v18;
    *v17 = 136315138;
    *(v8 + 456) = *(v16 + 72);
    sub_1BE0516A4();
    v19 = *(v8 + 544);
    *(v8 + 552) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    v20 = sub_1BE0534A4();
    v22 = v21;

    sub_1BD9091B8(v16);
    v23 = sub_1BD123690(v20, v22, &v53);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v14, v15, "Displaying paymentOffersError %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18, v31, v32, v33, v34, v35, v36, v37);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    sub_1BD8D3858(v49, v48);
    (*(v50 + 8))(v52, v51);
  }

  else
  {
    v38 = *(v8 + 672);
    v39 = *(v8 + 664);
    v40 = *(v8 + 616);
    v41 = *(v8 + 592);
    v42 = *(v8 + 584);
    v43 = *(v8 + 576);
    sub_1BD8D3858(*(v8 + 656), *(v8 + 712));

    (*(v42 + 8))(v41, v43);
    sub_1BD9091B8(v40);
  }

  v44 = *(v8 + 8);

  return v44();
}

uint64_t sub_1BD907FB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v54 = v8;
  *(v8 + 632), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();
  v9 = *(v8 + 696);
  v10 = *(v8 + 616);
  v11 = *(v8 + 568);
  v12 = v9;
  v13 = sub_1BE04A844();

  *(v8 + 376) = *(v11 + 72);
  *(v8 + 536) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD908A54(v11, v10);
  v14 = sub_1BE04D204();
  v15 = sub_1BE052C34();
  if (os_log_type_enabled(v14, v15))
  {
    v46 = *(v8 + 664);
    v47 = *(v8 + 672);
    v16 = *(v8 + 616);
    v49 = *(v8 + 656);
    v50 = *(v8 + 584);
    v51 = *(v8 + 576);
    v52 = *(v8 + 592);
    v48 = *(v8 + 712);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53 = v18;
    *v17 = 136315138;
    *(v8 + 456) = *(v16 + 72);
    sub_1BE0516A4();
    v19 = *(v8 + 544);
    *(v8 + 552) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    v20 = sub_1BE0534A4();
    v22 = v21;

    sub_1BD9091B8(v16);
    v23 = sub_1BD123690(v20, v22, &v53);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v17 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v14, v15, "Displaying paymentOffersError %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18, v31, v32, v33, v34, v35, v36, v37);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);

    sub_1BD8D3858(v49, v48);
    (*(v50 + 8))(v52, v51);
  }

  else
  {
    v38 = *(v8 + 672);
    v39 = *(v8 + 664);
    v40 = *(v8 + 616);
    v41 = *(v8 + 592);
    v42 = *(v8 + 584);
    v43 = *(v8 + 576);
    sub_1BD8D3858(*(v8 + 656), *(v8 + 712));

    (*(v42 + 8))(v41, v43);
    sub_1BD9091B8(v40);
  }

  v44 = *(v8 + 8);

  return v44();
}

void sub_1BD9082BC(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 32) dynamicContent];
  if (v7 && (v8 = v7, v9 = [v7 dynamicContentPageForPageType_], v8, v9) && (v10 = objc_msgSend(v9, sel_altFooterContent), v9, v10))
  {
    sub_1BD908A54(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = swift_allocObject();
    sub_1BD909B64(v6, v12 + v11, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = 0;
    v14[5] = sub_1BD9090C0;
    v14[6] = v12;
    aBlock[4] = sub_1BD9090C4;
    v39 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_210;
    v15 = _Block_copy(aBlock);
    v16 = v39;
    sub_1BE048964();
    v16, v17, v18, v19, v20, v21, v22, v23;
    v24 = [v13 hyperlinkSourcesFromApplyFooter:v10 linkTapped:v15];
    _Block_release(v15);
    if (v24)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
      v25 = sub_1BE052744();
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v29 = [v10 footerText];
    v27 = sub_1BE052434();
    v28 = v30;

    v12, v31, v32, v33, v34, v35, v36, v37;
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  *a1 = v25;
  a1[1] = v26;
  a1[2] = 0;
  a1[3] = v27;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v28;
}

void sub_1BD9085A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - v11;
  v13 = [a2 identifier];
  v14 = sub_1BE052434();
  v16 = v15;

  v17 = (a1 + *(v5 + 64));
  v18 = *(v17 + 2);
  v33 = *v17;
  v34 = v18;
  v32[0] = v14;
  v32[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  sub_1BD906888(MEMORY[0x1E69BB1A8]);
  if (!*(a1 + 9))
  {
    v19 = sub_1BE0528D4();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    sub_1BD908A54(a1, v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BE0528A4();
    v20 = sub_1BE052894();
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v20;
    v22[3] = v23;
    sub_1BD909B64(v8, v22 + v21, type metadata accessor for PaymentOfferInstallmentSelectionView);
    v24 = sub_1BD122C00(0, 0, v12, &unk_1BE105058, v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }
}

uint64_t sub_1BD908810()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD5FEA68;

  return sub_1BD906E1C();
}

uint64_t sub_1BD9088BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BE04AA64();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
}

uint64_t sub_1BD908A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD908AF4()
{
  result = qword_1EBD58908;
  if (!qword_1EBD58908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588F0, &qword_1BE104E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58910, &qword_1BE104EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58918, &qword_1BE104EA8);
    sub_1BE04FE84();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58920, &qword_1BE104EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58928, &qword_1BE104EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58930, &qword_1BE104EC0);
    type metadata accessor for MultiHyperLinkDetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    sub_1BD0DE4F4(&qword_1EBD58938, &qword_1EBD58930, &qword_1BE104EC0, MEMORY[0x1E6981870]);
    sub_1BD908E5C(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD908DA8();
    swift_getOpaqueTypeConformance2();
    sub_1BD908E5C(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    sub_1BD8D2B48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58908);
  }

  return result;
}

unint64_t sub_1BD908DA8()
{
  result = qword_1EBD58940;
  if (!qword_1EBD58940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58928, &qword_1BE104EB8);
    sub_1BD908E5C(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58940);
  }

  return result;
}

uint64_t sub_1BD908E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD908EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD903C3C(v4, a1);
}

double sub_1BD908F4C(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD904144(a1, v4);
}

unint64_t sub_1BD908FBC()
{
  result = qword_1EBD58990;
  if (!qword_1EBD58990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58978, &qword_1BE104F20);
    sub_1BD0DE4F4(&qword_1EBD58998, &qword_1EBD58970, &qword_1BE104F18, &unk_1BE0F0C80);
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58990);
  }

  return result;
}

uint64_t sub_1BD9090C8()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD906D70();
}

uint64_t sub_1BD9091B8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD909254(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD9092C8()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1BD906888(MEMORY[0x1E69BA468]);
  return (*(v2 + 56))();
}

double sub_1BD909338(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_1BD90935C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v7 = *(v3 + 16);

  return sub_1BD905330(a1, a2, v7, a3);
}

double sub_1BD9093E8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  return result;
}

uint64_t objectdestroyTm_112()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1BD8D3858(*v2, *(v2 + 8));

  *(v2 + 48), v3, v4, v5, v6, v7, v8, v9;
  *(v2 + 64), v10, v11, v12, v13, v14, v15, v16;

  *(v2 + 80), v17, v18, v19, v20, v21, v22, v23;
  v24 = (v2 + v1[12]);
  v25 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = sub_1BE04AA64();
      (*(*(v26 - 8) + 8))(v24, v26);
    }

    else
    {

      v24[2], v27, v28, v29, v30, v31, v32, v33;
    }
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v24 + *(v34 + 28)), v35, v36, v37, v38, v39, v40, v41;
  *(v2 + v1[13] + 8), v42, v43, v44, v45, v46, v47, v48;
  v49 = v2 + v1[14];
  *(v49 + 8), v50, v51, v52, v53, v54, v55, v56;
  *(v49 + 16), v57, v58, v59, v60, v61, v62, v63;
  *(v2 + v1[15] + 8), v64, v65, v66, v67, v68, v69, v70;
  *(v2 + v1[16] + 8), v71, v72, v73, v74, v75, v76, v77;
  v78 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = sub_1BE04E354();
    (*(*(v86 - 8) + 8))(v2 + v78, v86);
  }

  else
  {
    *(v2 + v78), v79, v80, v81, v82, v83, v84, v85;
  }

  sub_1BD0D4604(*(v2 + v1[18]), *(v2 + v1[18] + 8), v87, v88, v89, v90, v91, v92);

  return swift_deallocObject();
}

uint64_t objectdestroy_49Tm()
{
  if (*(v0 + 24))
  {
    *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  }

  if (*(v0 + 40))
  {
    *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  }

  return swift_deallocObject();
}

void sub_1BD909754()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD9085A4(v0 + v2, v3);
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1BD8D3858(*(v0 + v2), *(v0 + v2 + 8));

  *(v0 + v2 + 48), v4, v5, v6, v7, v8, v9, v10;
  *(v0 + v2 + 64), v11, v12, v13, v14, v15, v16, v17;

  *(v0 + v2 + 80), v18, v19, v20, v21, v22, v23, v24;
  v25 = (v0 + v2 + v1[12]);
  v26 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = sub_1BE04AA64();
      (*(*(v27 - 8) + 8))(v25, v27);
    }

    else
    {

      v25[2], v28, v29, v30, v31, v32, v33, v34;
    }
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v25 + *(v35 + 28)), v36, v37, v38, v39, v40, v41, v42;
  *(v3 + v1[13] + 8), v43, v44, v45, v46, v47, v48, v49;
  v50 = v3 + v1[14];
  *(v50 + 8), v51, v52, v53, v54, v55, v56, v57;
  *(v50 + 16), v58, v59, v60, v61, v62, v63, v64;
  *(v3 + v1[15] + 8), v65, v66, v67, v68, v69, v70, v71;
  *(v3 + v1[16] + 8), v72, v73, v74, v75, v76, v77, v78;
  v79 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v87 = sub_1BE04E354();
    (*(*(v87 - 8) + 8))(v3 + v79, v87);
  }

  else
  {
    *(v3 + v79), v80, v81, v82, v83, v84, v85, v86;
  }

  sub_1BD0D4604(*(v3 + v1[18]), *(v3 + v1[18] + 8), v88, v89, v90, v91, v92, v93);

  return swift_deallocObject();
}

uint64_t sub_1BD909A74()
{
  type metadata accessor for PaymentOfferInstallmentSelectionView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD908810();
}

uint64_t sub_1BD909B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD909BCC()
{
  result = qword_1EBD58A40;
  if (!qword_1EBD58A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588E8, &qword_1BE104E80);
    sub_1BD909C84();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A40);
  }

  return result;
}

unint64_t sub_1BD909C84()
{
  result = qword_1EBD58A48;
  if (!qword_1EBD58A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD588E0, &unk_1BE104E40);
    sub_1BD909D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A48);
  }

  return result;
}

unint64_t sub_1BD909D10()
{
  result = qword_1EBD58A50;
  if (!qword_1EBD58A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A58, &qword_1BE105068);
    sub_1BD0DE4F4(&qword_1EBD58948, &qword_1EBD58900, &qword_1BE104E98, MEMORY[0x1E697C1A8]);
    sub_1BD908AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A50);
  }

  return result;
}

uint64_t type metadata accessor for PassDetails(uint64_t a1)
{
  result = qword_1EBD58A60;
  if (!qword_1EBD58A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD909E54(uint64_t a1)
{
  type metadata accessor for AvailablePass(319);
  if (v1 <= 0x3F)
  {
    sub_1BD90A034(319, &qword_1EBD392F0, sub_1BD131A80, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD392F8, &_s18BillingAddressInfoVN);
      if (v3 <= 0x3F)
      {
        sub_1BD909FD0(319);
        if (v4 <= 0x3F)
        {
          sub_1BD90A034(319, &qword_1EBD39FD8, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1BD1C2DD8(319, &qword_1EBD502A8, MEMORY[0x1E69E7DE0]);
            if (v6 <= 0x3F)
            {
              sub_1BD1BF1B4();
              if (v7 <= 0x3F)
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

void sub_1BD909FD0(uint64_t a1)
{
  if (!qword_1EBD39FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39FD0, qword_1BE0B9C28);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39FC8);
    }
  }
}

void sub_1BD90A034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD90A0B4@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v2 = sub_1BE04FF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A70, &qword_1BE1050D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A78, &qword_1BE1050D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - v11;
  v13 = sub_1BE04F7C4();
  v14 = v1 + *(type metadata accessor for PassDetails(0) + 36);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  *v8 = v13;
  *(v8 + 1) = v15;
  v8[16] = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58A80, &qword_1BE1050E0);
  sub_1BD90A380(v1, &v8[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v18 = &v8[*(v6 + 36)];
  *v18 = KeyPath;
  v18[8] = 0;
  sub_1BE04FF44();
  v19 = sub_1BD90DBBC();
  sub_1BE050D14();
  (*(v3 + 8))(v5, v2);
  sub_1BD0DE53C(v8, &qword_1EBD58A70, &qword_1BE1050D0);
  sub_1BE052434();
  v21 = v20;
  v30[2] = v6;
  v30[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v21, v22, v23, v24, v25, v26, v27, v28;
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BD90A380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AA0, &qword_1BE105120);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AA8, &qword_1BE105128);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v69 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AB0, &qword_1BE105130);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = type metadata accessor for PassName(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  sub_1BD90E200(a1, &v69 - v19, type metadata accessor for AvailablePass);
  v21 = *(a1 + *(type metadata accessor for PassDetails(0) + 20));
  *&v20[*(v16 + 28)] = v21;
  v22 = *(v16 + 32);
  v23 = v21;
  v24 = v20;
  *&v20[v22] = sub_1BE050324();
  *v9 = sub_1BE04F7C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AB8, &qword_1BE105138);
  sub_1BD90AC84(a1, &v9[*(v25 + 44)]);
  sub_1BE052434();
  v27 = v26;
  sub_1BD0DE4F4(&qword_1EBD58AC0, &qword_1EBD58AA8, &qword_1BE105128, MEMORY[0x1E6981870]);
  v81 = v14;
  sub_1BE050DE4();
  v27, v28, v29, v30, v31, v32, v33, v34;
  sub_1BD0DE53C(v9, &qword_1EBD58AA8, &qword_1BE105128);
  v35 = v7;
  sub_1BD90AA18(v7);
  v36 = (a1 + *(type metadata accessor for AvailablePass(0) + 48));
  v37 = v36[1];
  v95 = *v36;
  *v96 = v37;
  *&v96[9] = *(v36 + 25);
  v38 = v95;
  if (v95)
  {
    v39 = *&v96[8];
    v97 = *v96;
    v98[0] = *&v96[16];
    sub_1BD0DE19C(&v95, v91, &qword_1EBD4F508, &qword_1BE0ED590);
    v40 = v38;
    sub_1BD0DE19C(&v97, v91, &qword_1EBD4C870, &unk_1BE0E2B40);
    v41 = v39;
    sub_1BD0DE19C(v98, v91, &qword_1EBD39330, &qword_1BE0B8568);
    sub_1BD586664(&v95, 1, 1, v93);
    v42 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    sub_1BD0DE53C(&v97, &qword_1EBD4C870, &unk_1BE0E2B40);
    sub_1BD0DE53C(v98, &qword_1EBD39330, &qword_1BE0B8568);
    v80 = v93[0];
    v77 = v93[2];
    v78 = v93[1];
    v75 = v93[4];
    v76 = v93[3];
    v73 = v93[6];
    v74 = v93[5];
    v72 = v94;
    v71 = v42;
    LOBYTE(v91[0]) = 0;
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v44 = 0;
    v46 = 0;
    v48 = 0;
    v50 = 0;
    v80 = 1;
  }

  v70 = v24;
  v51 = v82;
  sub_1BD90E200(v24, v82, type metadata accessor for PassName);
  v52 = v83;
  sub_1BD0DE19C(v81, v83, &qword_1EBD58AB0, &qword_1BE105130);
  v53 = v84;
  sub_1BD0DE19C(v35, v84, &qword_1EBD58AA0, &qword_1BE105120);
  v54 = v79;
  sub_1BD90E200(v51, v79, type metadata accessor for PassName);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AC8, &qword_1BE105140);
  sub_1BD0DE19C(v52, v54 + v55[12], &qword_1EBD58AB0, &qword_1BE105130);
  sub_1BD0DE19C(v53, v54 + v55[16], &qword_1EBD58AA0, &qword_1BE105120);
  v56 = (v54 + v55[20]);
  v58 = v77;
  v57 = v78;
  *&v85 = v80;
  *(&v85 + 1) = v78;
  v59 = v75;
  v60 = v76;
  *&v86 = v77;
  *(&v86 + 1) = v76;
  v61 = v73;
  v62 = v74;
  *&v87 = v75;
  *(&v87 + 1) = v74;
  v63 = v71;
  v64 = v72;
  *&v88 = v73;
  *(&v88 + 1) = v72;
  *&v89 = v71;
  *(&v89 + 1) = v44;
  *&v90[0] = v46;
  *(&v90[0] + 1) = v48;
  *&v90[1] = v50;
  BYTE8(v90[1]) = 0;
  v65 = v86;
  *v56 = v85;
  v56[1] = v65;
  v66 = v88;
  v56[2] = v87;
  v56[3] = v66;
  v67 = v90[0];
  v56[4] = v89;
  v56[5] = v67;
  *(v56 + 89) = *(v90 + 9);
  sub_1BD0DE19C(&v85, v91, &qword_1EBD4F500, &qword_1BE0ED588);
  sub_1BD0DE53C(v35, &qword_1EBD58AA0, &qword_1BE105120);
  sub_1BD0DE53C(v81, &qword_1EBD58AB0, &qword_1BE105130);
  sub_1BD90E268(v70, type metadata accessor for PassName);
  v91[0] = v80;
  v91[1] = v57;
  v91[2] = v58;
  v91[3] = v60;
  v91[4] = v59;
  v91[5] = v62;
  v91[6] = v61;
  v91[7] = v64;
  v91[8] = v63;
  v91[9] = v44;
  v91[10] = v46;
  v91[11] = v48;
  v91[12] = v50;
  v92 = 0;
  sub_1BD0DE53C(v91, &qword_1EBD4F500, &qword_1BE0ED588);
  sub_1BD0DE53C(v84, &qword_1EBD58AA0, &qword_1BE105120);
  sub_1BD0DE53C(v83, &qword_1EBD58AB0, &qword_1BE105130);
  return sub_1BD90E268(v82, type metadata accessor for PassName);
}

uint64_t sub_1BD90AA18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AD0, &qword_1BE105148);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AD8, &qword_1BE105150);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  if (PKOslo2024UIUpdatesEnabled())
  {
    *v5 = sub_1BE04F7C4();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AE0, &qword_1BE105158);
    sub_1BD90D6BC(v1, &v5[*(v9 + 44)]);
    sub_1BE052434();
    v11 = v10;
    sub_1BD0DE4F4(&qword_1EBD58AE8, &qword_1EBD58AD0, &qword_1BE105148, MEMORY[0x1E6981870]);
    sub_1BE050DE4();
    v11, v12, v13, v14, v15, v16, v17, v18;
    sub_1BD0DE53C(v5, &qword_1EBD58AD0, &qword_1BE105148);
    sub_1BD0DE204(v8, a1, &qword_1EBD58AD8, &qword_1BE105150);
    return (*(v22 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v20 = *(v22 + 56);

    return v20(a1, 1, 1, v6);
  }
}

void sub_1BD90AC84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v328 = a2;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B00, &qword_1BE105170);
  MEMORY[0x1EEE9AC00](v327);
  v323 = &v291 - v3;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B08, &qword_1BE105178);
  MEMORY[0x1EEE9AC00](v306);
  v309 = (&v291 - v4);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B10, &qword_1BE105180);
  MEMORY[0x1EEE9AC00](v299);
  v301 = (&v291 - v5);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B18, &qword_1BE105188);
  MEMORY[0x1EEE9AC00](v307);
  v302 = &v291 - v6;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B20, &qword_1BE105190);
  MEMORY[0x1EEE9AC00](v300);
  v298 = (&v291 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B28, &qword_1BE105198);
  v319 = *(v8 - 8);
  v320 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v308 = &v291 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B30, &qword_1BE1051A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v321 = &v291 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v322 = &v291 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190, &qword_1BE0C5788);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v294 = &v291 - v15;
  v16 = type metadata accessor for IdentityCredential(0);
  v292 = *(v16 - 8);
  v293 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v295 = &v291 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B38, &qword_1BE1051A8);
  MEMORY[0x1EEE9AC00](v315);
  v317 = (&v291 - v18);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B40, &qword_1BE1051B0);
  MEMORY[0x1EEE9AC00](v311);
  v313 = (&v291 - v19);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B48, &qword_1BE1051B8);
  MEMORY[0x1EEE9AC00](v316);
  v314 = &v291 - v20;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B8, &unk_1BE0F0340);
  MEMORY[0x1EEE9AC00](v312);
  v297 = &v291 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v291 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v291 - v29;
  v31 = type metadata accessor for BalanceInfo(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v291 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v296 = &v291 - v36;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F0, &qword_1BE0FBF48);
  MEMORY[0x1EEE9AC00](v303);
  v304 = (&v291 - v37);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B50, &qword_1BE1051C0);
  MEMORY[0x1EEE9AC00](v310);
  v305 = &v291 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B58, &qword_1BE1051C8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v318 = &v291 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v329 = &v291 - v42;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B60, &qword_1BE1051D0);
  MEMORY[0x1EEE9AC00](v325);
  v326 = (&v291 - v43);
  v324 = type metadata accessor for PassDetails(0);
  sub_1BD0DE19C(a1 + v324[7], &v335, &qword_1EBD51EC0, &qword_1BE0B7120);
  v330 = a1;
  if (*(&v336 + 1))
  {
    sub_1BD0EF554(&v335, &v331);
    __swift_project_boxed_opaque_existential_1(&v331, *(&v332 + 1));
    if (sub_1BE04C704())
    {
      v51 = PKOslo2024UIUpdatesEnabled();
      a1 = v330;
      if ((v51 & 1) == 0)
      {
        sub_1BD90CB40(&v335);
        v97 = v336;
        v98 = v326;
        *v326 = v335;
        v98[1] = v97;
        v98[2] = *v337;
        *(v98 + 41) = *&v337[9];
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78, &qword_1BE1051E8);
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
        sub_1BD0DE4F4(&qword_1EBD58B88, &qword_1EBD58B00, &qword_1BE105170, MEMORY[0x1E6981F48]);
        sub_1BE04F9A4();
        __swift_destroy_boxed_opaque_existential_0(&v331, v99, v100, v101, v102, v103, v104, v105);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0(&v331, v52, v53, v54, v55, v56, v57, v58);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v331, v44, v45, v46, v47, v48, v49, v50);
      a1 = v330;
    }
  }

  else
  {
    sub_1BD0DE53C(&v335, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v59 = type metadata accessor for AvailablePass(0);
  v60 = v59;
  if (*(a1 + v59[5]) == 1)
  {
    v61 = *(a1 + v59[9]);
    if (v61)
    {
      v62 = v61;
      v63 = [v62 formattedStringValue];
      v297 = v62;
      if (v63)
      {
        v64 = v63;
        v65 = sub_1BE052434();
        v67 = v66;

        v68 = 1;
      }

      else
      {

        v61 = 0;
        v68 = 0;
        v65 = 0;
        v67 = 0;
      }

      v296 = v65;
      *&v331 = v61;
      *(&v331 + 1) = v68;
      *&v332 = v65;
      *(&v332 + 1) = v67;
      LOBYTE(v333[0]) = 0;
      sub_1BD68CE48(v61, v68, v65, v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
      sub_1BD90E11C(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
      sub_1BD90E11C(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v106 = v337[0];
      v107 = v336;
      v108 = v304;
      *v304 = v335;
      v108[1] = v107;
      *(v108 + 32) = v106;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
      sub_1BD68C78C();
      sub_1BD834308();
      v109 = v305;
      sub_1BE04F9A4();

      sub_1BD68CE88(v61, v68, v296, v67);
    }

    else
    {
      v87 = (a1 + v59[8]);
      v88 = v87[1];
      if (!v88)
      {
        sub_1BD0DE19C(a1 + v59[7], v30, &qword_1EBD39FF0, &unk_1BE0B9CA0);
        if ((*(v32 + 48))(v30, 1, v31) == 1)
        {
          sub_1BD0DE53C(v30, &qword_1EBD39FF0, &unk_1BE0B9CA0);
          v188 = 1;
          v86 = v329;
          v109 = v305;
        }

        else
        {
          v222 = v296;
          sub_1BD90E198(v30, v296, type metadata accessor for BalanceInfo);
          sub_1BD90E200(v222, v27, type metadata accessor for BalanceInfo);
          (*(v32 + 56))(v27, 0, 1, v31);
          v223 = v297;
          sub_1BD3AEF64(v27, v297);
          sub_1BD0DE19C(v223, v304, &qword_1EBD502B8, &unk_1BE0F0340);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
          sub_1BD68C78C();
          sub_1BD834308();
          v109 = v305;
          sub_1BE04F9A4();
          sub_1BD0DE53C(v223, &qword_1EBD502B8, &unk_1BE0F0340);
          sub_1BD90E268(v222, type metadata accessor for BalanceInfo);
          v188 = 0;
          v86 = v329;
        }

        goto LABEL_34;
      }

      v89 = *v87;
      v90 = v88;
      v91 = [v90 formattedStringValue];
      v297 = v90;
      if (v91)
      {
        v92 = v91;
        v93 = sub_1BE052434();
        v95 = v94;

        v96 = v89 & 1;
      }

      else
      {

        v96 = 0;
        v88 = 0;
        v93 = 0;
        v95 = 0;
      }

      v296 = v93;
      *&v331 = v96;
      *(&v331 + 1) = v88;
      *&v332 = v93;
      *(&v332 + 1) = v95;
      LOBYTE(v333[0]) = 1;
      sub_1BD68CDC8(v96, v88, v93, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450, &qword_1BE0ED530);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468, &qword_1BE0ED538);
      sub_1BD90E11C(&qword_1EBD4F448, &qword_1EBD4F450, &qword_1BE0ED530, sub_1BD68C870);
      sub_1BD90E11C(&qword_1EBD4F460, &qword_1EBD4F468, &qword_1BE0ED538, sub_1BD68C8C4);
      sub_1BE04F9A4();
      v189 = v337[0];
      v190 = v336;
      v191 = v304;
      *v304 = v335;
      v191[1] = v190;
      *(v191 + 32) = v189;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440, &qword_1BE0ED528);
      sub_1BD68C78C();
      sub_1BD834308();
      v109 = v305;
      sub_1BE04F9A4();

      sub_1BD68CE08(v96, v88, v296, v95);
    }

    v188 = 0;
    v86 = v329;
    a1 = v330;
LABEL_34:
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD552F8, &qword_1BE0FBF50);
    (*(*(v192 - 8) + 56))(v109, v188, 1, v192);
    sub_1BD0DE19C(v109, v313, &qword_1EBD58B50, &qword_1BE1051C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &qword_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    v193 = v314;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v193, v317, &qword_1EBD58B48, &qword_1BE1051B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
    sub_1BD90DFD8();
    sub_1BD68CCD0();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v193, &qword_1EBD58B48, &qword_1BE1051B8);
    sub_1BD0DE53C(v109, &qword_1EBD58B50, &qword_1BE1051C0);
    goto LABEL_35;
  }

  sub_1BD0DE19C(a1 + v59[7], v24, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  if ((*(v32 + 48))(v24, 1, v31) != 1)
  {
    sub_1BD90E198(v24, v34, type metadata accessor for BalanceInfo);
    sub_1BD90E200(v34, v27, type metadata accessor for BalanceInfo);
    (*(v32 + 56))(v27, 0, 1, v31);
    v84 = v297;
    sub_1BD3AEF64(v27, v297);
    sub_1BD0DE19C(v84, v313, &qword_1EBD502B8, &unk_1BE0F0340);
    swift_storeEnumTagMultiPayload();
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &qword_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    v85 = v314;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v85, v317, &qword_1EBD58B48, &qword_1BE1051B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
    sub_1BD90DFD8();
    sub_1BD68CCD0();
    v86 = v329;
    a1 = v330;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v85, &qword_1EBD58B48, &qword_1BE1051B8);
    sub_1BD0DE53C(v84, &qword_1EBD502B8, &unk_1BE0F0340);
    sub_1BD90E268(v34, type metadata accessor for BalanceInfo);
LABEL_35:
    v187 = 0;
    goto LABEL_36;
  }

  sub_1BD0DE53C(v24, &qword_1EBD39FF0, &unk_1BE0B9CA0);
  v69 = sub_1BD494550();
  if (!v70)
  {
    v314 = WrappedPass.secureElementPass.getter();
    if (v314)
    {
      if ([v314 isIdentityPass])
      {
        v110 = v294;
        sub_1BD0DE19C(a1 + v60[6], v294, &qword_1EBD3F190, &qword_1BE0C5788);
        v111 = v293;
        if ((*(v292 + 48))(v110, 1, v293) == 1)
        {
          sub_1BD0DE53C(v110, &qword_1EBD3F190, &qword_1BE0C5788);
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
        }

        else
        {
          v224 = v110;
          v225 = v295;
          sub_1BD90E198(v224, v295, type metadata accessor for IdentityCredential);
          v226 = (v225 + *(v111 + 28));
          v227 = v226[1];
          *&v335 = *v226;
          *(&v335 + 1) = v227;
          sub_1BD0DDEBC();
          sub_1BE048C84();
          v228 = sub_1BE0506C4();
          v230 = v229;
          v232 = v231;
          v234 = v233;
          v235 = sub_1BE0502C4();
          v236 = sub_1BE0505F4();
          v238 = v237;
          v240 = v239;
          v242 = v241;
          v235, v237, v239, v241, v243, v244, v245, v246;
          sub_1BD0DDF10(v228, v230, (v232 & 1), v247, v248, v249, v250, v251);
          v234, v252, v253, v254, v255, v256, v257, v258;
          v259 = sub_1BE051234();
          v112 = sub_1BE050564();
          v113 = v260;
          LOBYTE(v234) = v261;
          v115 = v262;
          v259, v260, v261, v262, v263, v264, v265, v266;
          sub_1BD0DDF10(v236, v238, (v240 & 1), v267, v268, v269, v270, v271);
          v242, v272, v273, v274, v275, v276, v277, v278;
          sub_1BD90E268(v295, type metadata accessor for IdentityCredential);
          v114 = v234 & 1;
          sub_1BD0D7F18(v112, v113, v234 & 1);
          sub_1BE048C84();
        }

        v310 = v114;
        v313 = v115;
        *&v331 = v112;
        *(&v331 + 1) = v113;
        *&v332 = v114;
        *(&v332 + 1) = v115;
        LOBYTE(v333[0]) = 1;
        sub_1BD1969AC(v112, v113, v114, v115);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
        sub_1BD12E194();
        sub_1BE04F9A4();
        v279 = v335;
        v280 = v336;
        v281 = v337[0];
        v282 = v317;
        *v317 = v335;
        v282[1] = v280;
        v312 = v280;
        *(v282 + 32) = v281;
        LODWORD(v311) = v281;
        swift_storeEnumTagMultiPayload();
        sub_1BD68CD98(v279, *(&v279 + 1), v280, *(&v280 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
        v283 = v112;
        sub_1BD90DFD8();
        v284 = v113;
        sub_1BD68CCD0();
        v86 = v329;
        sub_1BE04F9A4();

        v285 = v310;
        v286 = v313;
        sub_1BD1969F0(v283, v284, v310, v313, v287, v288, v289, v290);
        sub_1BD68CD9C(v279, *(&v279 + 1), v312, *(&v280 + 1));
        v183 = v283;
        v184 = v284;
        v185 = v285;
        v186 = v286;
        goto LABEL_28;
      }
    }

    v187 = 1;
    v86 = v329;
    goto LABEL_36;
  }

  v71 = v69;
  v72 = v70;
  if (PKBankConnectEnabled())
  {
    v72, v73, v74, v75, v76, v77, v78, v79;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
  }

  else
  {
    v116 = (a1 + v324[10]);
    v117 = v116[4];
    v312 = v116[3];
    v314 = v117;
    v313 = __swift_project_boxed_opaque_existential_1(v116, v312);
    *&v335 = v71;
    *(&v335 + 1) = v72;
    sub_1BD0DDEBC();
    v118 = sub_1BE0506C4();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = sub_1BE0502C4();
    v126 = sub_1BE0505F4();
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v125, v127, v129, v131, v133, v134, v135, v136;
    sub_1BD0DDF10(v118, v120, (v122 & 1), v137, v138, v139, v140, v141);
    v124, v142, v143, v144, v145, v146, v147, v148;
    v149 = v126;
    v150 = v128;
    v151 = v132;
    v80 = sub_1BE050574();
    v81 = v152;
    LOBYTE(v118) = v153;
    v83 = v154;
    sub_1BD0DDF10(v149, v150, (v130 & 1), v154, v155, v156, v157, v158);
    v151, v159, v160, v161, v162, v163, v164, v165;
    v82 = (v118 & 1);
    sub_1BD0D7F18(v80, v81, v82);
    sub_1BE048C84();
  }

  v311 = v83;
  v314 = v82;
  *&v331 = v80;
  *(&v331 + 1) = v81;
  *&v332 = v82;
  *(&v332 + 1) = v83;
  LOBYTE(v333[0]) = 0;
  sub_1BD1969AC(v80, v81, v82, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD12E194();
  sub_1BE04F9A4();
  v166 = v335;
  v168 = *(&v336 + 1);
  v167 = v336;
  v169 = v337[0];
  v170 = v317;
  *v317 = v335;
  v312 = v168;
  v313 = v166;
  v170[1] = __PAIR128__(v168, v167);
  *(v170 + 32) = v169;
  swift_storeEnumTagMultiPayload();
  sub_1BD68CD98(v166, *(&v166 + 1), v167, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0, &qword_1BE0ED578);
  v171 = v80;
  sub_1BD90DFD8();
  v172 = v81;
  sub_1BD68CCD0();
  v86 = v329;
  sub_1BE04F9A4();
  v173 = v314;
  v174 = v311;
  sub_1BD1969F0(v171, v172, v314, v311, v175, v176, v177, v178);
  sub_1BD68CD9C(v313, *(&v166 + 1), v167, v312);
  v183 = v171;
  v184 = v172;
  v185 = v173;
  v186 = v174;
LABEL_28:
  sub_1BD1969F0(v183, v184, v185, v186, v179, v180, v181, v182);
  v187 = 0;
  a1 = v330;
LABEL_36:
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B68, &qword_1BE1051D8);
  v195 = 1;
  (*(*(v194 - 8) + 56))(v86, v187, 1, v194);
  v196 = (a1 + v324[6]);
  v197 = v196[1];
  v335 = *v196;
  v336 = v197;
  v198 = v196[3];
  *v337 = v196[2];
  *&v337[16] = v198;
  v338 = v196[4];
  if (v198)
  {
    v199 = v335;
    if (v336)
    {
      if (v336 == 1)
      {
        sub_1BD0DE19C(&v335, &v331, &qword_1EBD395E0, &qword_1BE0B8830);
        sub_1BD12B91C(v199, *(&v199 + 1), 1);

        sub_1BD90D224(&v331);
        v200 = v332;
        v201 = v301;
        *v301 = v331;
        v201[1] = v200;
        v201[2] = v333[0];
        *(v201 + 41) = *(v333 + 9);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v331, v334, &qword_1EBD58B78, &qword_1BE1051E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78, &qword_1BE1051E8);
        sub_1BD90DEF4();
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
        v202 = v302;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v202, v309, &qword_1EBD58B18, &qword_1BE105188);
        swift_storeEnumTagMultiPayload();
        sub_1BD90DE3C();
        v203 = v308;
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v335, &qword_1EBD395E0, &qword_1BE0B8830);
        sub_1BD0DE53C(&v331, &qword_1EBD58B78, &qword_1BE1051E8);
        v204 = v202;
        v205 = &qword_1EBD58B18;
        v206 = &qword_1BE105188;
        v86 = v329;
      }

      else
      {
        v210 = *(&v336 + 1);
        v211 = *v337;
        v212 = *(&v338 + 1);
        sub_1BD12B91C(v335, *(&v335 + 1), 2);
        v213 = v212;
        v214 = v210;
        v215 = v211;
        sub_1BE048C84();
        sub_1BE048C84();
        sub_1BD90D470(&v331);
        v216 = v332;
        v217 = v309;
        *v309 = v331;
        v217[1] = v216;
        v217[2] = v333[0];
        *(v217 + 41) = *(v333 + 9);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v331, v334, &qword_1EBD58B78, &qword_1BE1051E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78, &qword_1BE1051E8);
        sub_1BD90DE3C();
        sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
        v203 = v308;
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v335, &qword_1EBD395E0, &qword_1BE0B8830);
        v204 = &v331;
        v205 = &qword_1EBD58B78;
        v206 = &qword_1BE1051E8;
      }
    }

    else
    {
      sub_1BD0DE19C(&v335, &v331, &qword_1EBD395E0, &qword_1BE0B8830);
      sub_1BD12B91C(v199, *(&v199 + 1), 0);
      v208 = v298;
      sub_1BD90CD8C(v199, v298);
      sub_1BD0DE19C(v208, v301, &qword_1EBD58B20, &qword_1BE105190);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78, &qword_1BE1051E8);
      sub_1BD90DEF4();
      sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
      v209 = v302;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v209, v309, &qword_1EBD58B18, &qword_1BE105188);
      swift_storeEnumTagMultiPayload();
      sub_1BD90DE3C();
      v203 = v308;
      sub_1BE04F9A4();
      sub_1BD0D455C(v199, *(&v199 + 1), 0);
      sub_1BD0DE53C(&v335, &qword_1EBD395E0, &qword_1BE0B8830);
      v86 = v329;
      sub_1BD0DE53C(v209, &qword_1EBD58B18, &qword_1BE105188);
      v204 = v298;
      v205 = &qword_1EBD58B20;
      v206 = &qword_1BE105190;
    }

    sub_1BD0DE53C(v204, v205, v206);
    v207 = v322;
    sub_1BD0DE204(v203, v322, &qword_1EBD58B28, &qword_1BE105198);
    v195 = 0;
  }

  else
  {
    v207 = v322;
  }

  (*(v319 + 56))(v207, v195, 1, v320);
  v218 = v318;
  sub_1BD0DE19C(v86, v318, &qword_1EBD58B58, &qword_1BE1051C8);
  v219 = v321;
  sub_1BD0DE19C(v207, v321, &qword_1EBD58B30, &qword_1BE1051A0);
  v220 = v323;
  sub_1BD0DE19C(v218, v323, &qword_1EBD58B58, &qword_1BE1051C8);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B70, &qword_1BE1051E0);
  sub_1BD0DE19C(v219, v220 + *(v221 + 48), &qword_1EBD58B30, &qword_1BE1051A0);
  sub_1BD0DE53C(v219, &qword_1EBD58B30, &qword_1BE1051A0);
  sub_1BD0DE53C(v218, &qword_1EBD58B58, &qword_1BE1051C8);
  sub_1BD0DE19C(v220, v326, &qword_1EBD58B00, &qword_1BE105170);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B78, &qword_1BE1051E8);
  sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
  sub_1BD0DE4F4(&qword_1EBD58B88, &qword_1EBD58B00, &qword_1BE105170, MEMORY[0x1E6981F48]);
  sub_1BE04F9A4();
  sub_1BD0DE53C(v220, &qword_1EBD58B00, &qword_1BE105170);
  sub_1BD0DE53C(v207, &qword_1EBD58B30, &qword_1BE1051A0);
  sub_1BD0DE53C(v86, &qword_1EBD58B58, &qword_1BE1051C8);
}

id sub_1BD90CB40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v67 = v9;
    v68 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE0502F4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE051264();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v17) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v67) = v17 & 1;
    *a1 = v43;
    *(a1 + 8) = v45;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v48;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD90CD8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = sub_1BE04F774();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = (v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PassDetails(0);
  v10 = *(v96 + 40);
  v99 = v2;
  sub_1BD0EE8CC(v2 + v10, v103);
  v94[1] = v105;
  v95 = v104;
  v94[0] = __swift_project_boxed_opaque_existential_1(v103, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B6CA0;
  result = [a1 pkFullName];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = result;
  v14 = sub_1BE052434();
  v16 = v15;

  *(v11 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1BD110550();
  *(v11 + 64) = v17;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  result = [a1 pkSingleLineFormattedContactAddressIncludingCountryName_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1BE052434();
  v21 = v20;

  *(v11 + 96) = MEMORY[0x1E69E6158];
  *(v11 + 104) = v17;
  *(v11 + 72) = v19;
  *(v11 + 80) = v21;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B8068], v6);
  v22 = sub_1BE04B714();
  v24 = v23;
  v11, v23, v25, v26, v27, v28, v29, v30;
  (*(v7 + 8))(v9, v6);
  v101 = v22;
  v102 = v24;
  sub_1BD0DDEBC();
  v31 = sub_1BE0506C4();
  v33 = v32;
  LOBYTE(v24) = v34;
  v36 = v35;
  v37 = sub_1BE0502C4();
  v38 = sub_1BE0505F4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v37, v39, v41, v43, v45, v46, v47, v48;
  sub_1BD0DDF10(v31, v33, (v24 & 1), v49, v50, v51, v52, v53);
  v36, v54, v55, v56, v57, v58, v59, v60;
  v61 = sub_1BE050574();
  v63 = v62;
  v65 = v64;
  v95 = v66;
  sub_1BD0DDF10(v38, v40, (v42 & 1), v66, v67, v68, v69, v70);
  v44, v71, v72, v73, v74, v75, v76, v77;
  v78 = v97;
  sub_1BD70A4D0(v97);
  LOBYTE(v31) = sub_1BE04F764();
  (*(v98 + 8))(v78, v100);
  if (v31)
  {
    v79 = 2;
  }

  else
  {
    v79 = 1;
  }

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_0(v103, v81, v82, v83, v84, v85, v86, v87);
  v88 = swift_getKeyPath();
  v89 = v65 & 1;
  LOBYTE(v101) = v65 & 1;
  v106 = 0;
  v90 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58B20, &qword_1BE105190) + 36));
  v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410) + 28);
  v92 = *MEMORY[0x1E6980FB0];
  v93 = sub_1BE050554();
  (*(*(v93 - 8) + 104))(&v90[v91], v92, v93);
  result = swift_getKeyPath();
  *v90 = result;
  *a2 = v61;
  *(a2 + 8) = v63;
  *(a2 + 16) = v89;
  *(a2 + 24) = v95;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v79;
  *(a2 + 48) = 0;
  *(a2 + 56) = v88;
  *(a2 + 64) = 1;
  return result;
}

id sub_1BD90D224@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v67 = v9;
    v68 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE050324();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE051264();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v17) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v67) = v17 & 1;
    *a1 = v43;
    *(a1 + 8) = v45;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v48;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD90D470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v67 = v9;
    v68 = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE050324();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE0511F4();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v17) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    LOBYTE(v67) = v17 & 1;
    *a1 = v43;
    *(a1 + 8) = v45;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v48;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = 0;
    *(a1 + 48) = result;
    *(a1 + 56) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD90D6BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068, &qword_1BE0E27B8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940, &unk_1BE0CDD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for PassEligibleRewardsInfo(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AF0, &qword_1BE105160);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v48 - v15);
  v17 = type metadata accessor for AvailablePass(0);
  v18 = a1 + *(v17 + 52);
  v19 = *v18;
  if (!*v18 || (v20 = *(v18 + 24)) == 0)
  {
LABEL_6:
    sub_1BD0DE19C(a1 + *(v17 + 40), v6, &unk_1EBD4C940, &unk_1BE0CDD90);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1BD0DE53C(v6, &unk_1EBD4C940, &unk_1BE0CDD90);
    }

    else
    {
      sub_1BD90E198(v6, v13, type metadata accessor for PassEligibleRewardsInfo);
      if (sub_1BD57A1B8())
      {
        sub_1BD90E200(v13, v10, type metadata accessor for PassEligibleRewardsInfo);
        v45 = v51;
        sub_1BD38BA78(v10, v51);
        sub_1BD0DE19C(v45, v16, &qword_1EBD4B068, &qword_1BE0E27B8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A20, &qword_1BE0D0318);
        sub_1BD90E11C(&qword_1EBD43A18, &qword_1EBD43A20, &qword_1BE0D0318, sub_1BD38C118);
        sub_1BD57873C();
        v29 = v53;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v45, &qword_1EBD4B068, &qword_1BE0E27B8);
        sub_1BD90E268(v13, type metadata accessor for PassEligibleRewardsInfo);
        v37 = 0;
        goto LABEL_12;
      }

      sub_1BD90E268(v13, type metadata accessor for PassEligibleRewardsInfo);
    }

    v37 = 1;
    v29 = v53;
    goto LABEL_12;
  }

  v48 = v14;
  v21 = *(v18 + 16);
  v22 = v19;
  v49 = v21;
  v50 = v22;
  sub_1BE048C84();
  v23 = v20;
  v24 = [v23 primaryTitle];
  if (!v24)
  {

    v49, v38, v39, v40, v41, v42, v43, v44;
    goto LABEL_6;
  }

  v25 = v24;
  v26 = sub_1BE052434();
  v28 = v27;

  *v16 = v26;
  v16[1] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43A20, &qword_1BE0D0318);
  sub_1BD90E11C(&qword_1EBD43A18, &qword_1EBD43A20, &qword_1BE0D0318, sub_1BD38C118);
  sub_1BD57873C();
  v29 = v53;
  sub_1BE04F9A4();

  v49, v30, v31, v32, v33, v34, v35, v36;
  v37 = 0;
LABEL_12:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58AF8, &qword_1BE105168);
  return (*(*(v46 - 8) + 56))(v29, v37, 1, v46);
}

unint64_t sub_1BD90DBBC()
{
  result = qword_1EBD58A88;
  if (!qword_1EBD58A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A70, &qword_1BE1050D0);
    sub_1BD0DE4F4(&qword_1EBD58A90, &qword_1EBD58A98, &qword_1BE105118, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58A88);
  }

  return result;
}

uint64_t sub_1BD90DCC4(uint64_t a1)
{
  v2 = sub_1BE050554();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F074();
}

uint64_t sub_1BD90DD8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD90DE3C()
{
  result = qword_1EBD58B90;
  if (!qword_1EBD58B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B18, &qword_1BE105188);
    sub_1BD90DEF4();
    sub_1BD90DD8C(&qword_1EBD58B80, &qword_1EBD58B78, &qword_1BE1051E8, sub_1BD0FF49C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58B90);
  }

  return result;
}

unint64_t sub_1BD90DEF4()
{
  result = qword_1EBD58B98;
  if (!qword_1EBD58B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B20, &qword_1BE105190);
    sub_1BD90DD8C(&qword_1EBD442D8, &qword_1EBD442E0, &qword_1BE0D1AB0, sub_1BD1B9C50);
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318, &qword_1BE0BE410, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58B98);
  }

  return result;
}

unint64_t sub_1BD90DFD8()
{
  result = qword_1EBD58BA0;
  if (!qword_1EBD58BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58B48, &qword_1BE1051B8);
    sub_1BD90E11C(&qword_1EBD58BA8, &qword_1EBD58B50, &qword_1BE1051C0, sub_1BD90E090);
    sub_1BD834308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BA0);
  }

  return result;
}

unint64_t sub_1BD90E090()
{
  result = qword_1EBD58BB0;
  if (!qword_1EBD58BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD552F8, &qword_1BE0FBF50);
    sub_1BD68C78C();
    sub_1BD834308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BB0);
  }

  return result;
}

uint64_t sub_1BD90E11C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_1BD90E198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD90E200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD90E268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD90E2C8()
{
  result = qword_1EBD58BB8;
  if (!qword_1EBD58BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BC0, &unk_1BE105280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58A70, &qword_1BE1050D0);
    sub_1BD90DBBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD90E3C0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BB8);
  }

  return result;
}

uint64_t sub_1BD90E3C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD90E434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_1BE04FF64();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BF0, &qword_1BE105330);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BE0, &qword_1BE105328);
  MEMORY[0x1EEE9AC00](v63);
  v11 = &v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C60, &qword_1BE105360);
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - v14;
  *v9 = sub_1BE04F7B4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C68, &qword_1BE105368);
  sub_1BD90EF30(a1, a2, &v9[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(v70);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  v33 = v70[0];
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v36 = &v9[*(v7 + 36)];
  *v36 = v34;
  v36[1] = sub_1BD10DF54;
  v36[2] = v35;
  type metadata accessor for SEStorageUsageCategory(0);
  v37 = swift_allocObject();
  v37[2] = a1;
  v37[3] = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BF8, &qword_1BE105338);
  sub_1BD915DD4();
  sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory, &unk_1BE0FB398);
  sub_1BD915F3C();
  sub_1BE050D64();
  v37, v38, v39, v40, v41, v42, v43, v44;
  sub_1BD0DE53C(v9, &qword_1EBD58BF0, &qword_1BE105330);
  type metadata accessor for SEStorageCleanupController(0);
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
  v45 = sub_1BE04E954();
  v47 = v63;
  v46 = v64;
  v48 = &v11[*(v63 + 36)];
  *v48 = v45;
  v48[1] = v49;
  sub_1BE04FF54();
  v50 = sub_1BD915C90();
  sub_1BE050D14();
  (*(v67 + 8))(v46, v68);
  sub_1BD0DE53C(v11, &qword_1EBD58BE0, &qword_1BE105328);
  sub_1BE052434();
  v52 = v51;
  v70[0] = v47;
  v70[1] = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v65;
  sub_1BE050DE4();
  v52, v54, v55, v56, v57, v58, v59, v60;
  return (*(v66 + 8))(v15, v53);
}

uint64_t sub_1BD90E910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v62 = a3;
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C70, &qword_1BE1053E8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v58 - v4;
  v5 = sub_1BE051AD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for SEStorageCleanupAppletTypeDetailView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04C164();
  (*(*(v23 - 8) + 56))(v22, 3, 3, v23);
  v24 = sub_1BD809060(a1, v22);
  sub_1BD91717C(v22, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  if (v24)
  {
    v25 = *(v12 + 28);
    *&v19[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    (*(v6 + 104))(v11, *MEMORY[0x1E697D710], v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_1BE048964();
    sub_1BE051694();
    (*(v6 + 8))(v11, v5);
    *v19 = 0;
    *(v19 + 4) = 257;
    type metadata accessor for SEStorageCleanupController(0);
    sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
    *(v19 + 2) = sub_1BE04E954();
    *(v19 + 3) = v26;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v28 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(&v64);
    KeyPath, v29, v30, v31, v32, v33, v34, v35;
    v28, v36, v37, v38, v39, v40, v41, v42;
    v43 = v64;
    MEMORY[0x1EEE9AC00](v44);
    *(&v58 - 2) = a1;
    v45 = sub_1BD619C2C(sub_1BD916D84, (&v58 - 4), v43);
    v47 = v46;
    v43, v46, v48, v49, v50, v51, v52, v53;
    if (v47)
    {
      v54 = 0;
    }

    else
    {
      v54 = v45;
    }

    v55 = *(v12 + 28);
    *&v14[v55] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    (*(v6 + 104))(v11, *MEMORY[0x1E697D710], v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_1BE051694();
    (*(v6 + 8))(v11, v5);
    *v14 = v54;
    *(v14 + 4) = 0;
    type metadata accessor for SEStorageCleanupController(0);
    sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
    *(v14 + 2) = sub_1BE04E954();
    *(v14 + 3) = v56;
    v19 = v59;
    sub_1BD9171DC(v14, v59, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  }

  sub_1BD917114(v19, v61, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
  swift_storeEnumTagMultiPayload();
  sub_1BD917244(&qword_1EBD58C48, type metadata accessor for SEStorageCleanupAppletTypeDetailView, &unk_1BE0D6F38);
  sub_1BE04F9A4();
  return sub_1BD91717C(v19, type metadata accessor for SEStorageCleanupAppletTypeDetailView);
}

id sub_1BD90EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a1;
  v158 = a2;
  v155 = a3;
  v151 = sub_1BE04FB94();
  v147 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v145 = v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C78, &qword_1BE105470);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = v137 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C80, &qword_1BE105478);
  v142 = *(v5 - 8);
  v143 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v140 = v137 - v6;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C88, &qword_1BE105480);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v144 = v137 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C90, &qword_1BE105488);
  v153 = *(v8 - 8);
  v154 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v152 = v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v149 = v137 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58C98, &qword_1BE105490);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v160 = v137 - v15;
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CA0, &qword_1BE105498);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v156 = v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v159 = v137 - v24;
  (*(v17 + 104))(v19, *MEMORY[0x1E69B80D8], v16, v23);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    v27 = sub_1BE04B6F4();
    v29 = v28;

    (*(v17 + 8))(v19, v16);
    *&v175[0] = v27;
    *(&v175[0] + 1) = v29;
    v137[1] = sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    LOBYTE(v27) = v33;
    v35 = v34;
    v36 = sub_1BE050294();
    v37 = sub_1BE0505F4();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v36, v38, v40, v42, v44, v45, v46, v47;
    sub_1BD0DDF10(v30, v32, (v27 & 1), v48, v49, v50, v51, v52);
    v35, v53, v54, v55, v56, v57, v58, v59;
    v60 = sub_1BE0505D4();
    v62 = v61;
    LOBYTE(v35) = v63;
    v65 = v64;
    sub_1BD0DDF10(v37, v39, (v41 & 1), v64, v66, v67, v68, v69);
    v43, v70, v71, v72, v73, v74, v75, v76;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v177 = v35 & 1;
    LOBYTE(v43) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v178 = 0;
    v85 = sub_1BE0501C4();
    v168 = v174[4];
    v169 = v174[5];
    v179 = 1;
    *&v166 = v60;
    *(&v166 + 1) = v62;
    LOBYTE(v167) = v35 & 1;
    *(&v167 + 1) = v65;
    v170 = v174[6];
    LOBYTE(v171) = v43;
    *(&v171 + 1) = v78;
    *&v172 = v80;
    *(&v172 + 1) = v82;
    *&v173 = v84;
    BYTE8(v173) = 0;
    LOBYTE(v174[0]) = v85;
    *(v174 + 8) = 0u;
    *(&v174[1] + 8) = 0u;
    BYTE8(v174[2]) = 1;
    sub_1BE052434();
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CA8, &qword_1BE1054A0);
    sub_1BD916E5C(&qword_1EBD58CB0, &qword_1EBD58CA8, &qword_1BE1054A0, sub_1BD7E1578);
    sub_1BE050DE4();
    v87, v88, v89, v90, v91, v92, v93, v94;
    v175[8] = v174[0];
    v176[0] = v174[1];
    *(v176 + 9) = *(&v174[1] + 9);
    v175[4] = v170;
    v175[5] = v171;
    v175[6] = v172;
    v175[7] = v173;
    v175[0] = v166;
    v175[1] = v167;
    v175[2] = v168;
    v175[3] = v169;
    sub_1BD0DE53C(v175, &qword_1EBD58CA8, &qword_1BE1054A0);
    v95 = v157;
    *&v166 = sub_1BD90FC54(v157, v158);
    *(&v166 + 1) = v96;
    v97 = sub_1BE0506C4();
    v99 = v98;
    LOBYTE(v87) = v100;
    v102 = v101;
    KeyPath = swift_getKeyPath();
    LOBYTE(v37) = sub_1BE0501C4();
    LOBYTE(v87) = v87 & 1;
    LOBYTE(v166) = v87;
    LOBYTE(v161) = 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v165[7] = v180;
    *&v165[23] = v181;
    *&v165[39] = v182;
    *&v161 = v97;
    *(&v161 + 1) = v99;
    LOBYTE(v162) = v87;
    *(&v162 + 1) = v102;
    *&v163 = KeyPath;
    BYTE8(v163) = 1;
    LOBYTE(v164[0]) = v37;
    *(v164 + 8) = 0u;
    *(&v164[1] + 8) = 0u;
    BYTE8(v164[2]) = 1;
    *(&v164[3] + 9) = *&v165[16];
    *(&v164[4] + 9) = *&v165[32];
    *(&v164[2] + 9) = *v165;
    *(&v164[5] + 1) = *(&v182 + 1);
    sub_1BE052434();
    v105 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CB8, &qword_1BE1054D8);
    sub_1BD916DA4();
    sub_1BE050DE4();
    v105, v106, v107, v108, v109, v110, v111, v112;
    v171 = v164[2];
    v172 = v164[3];
    v173 = v164[4];
    v174[0] = v164[5];
    v167 = v162;
    v168 = v163;
    v169 = v164[0];
    v170 = v164[1];
    v166 = v161;
    v113 = sub_1BD0DE53C(&v166, &qword_1EBD58CB8, &qword_1BE1054D8);
    MEMORY[0x1EEE9AC00](v113);
    v137[-2] = v95;
    v114 = v158;
    v137[-1] = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CC8, &qword_1BE1054E8);
    sub_1BD0DE4F4(&qword_1EBD58CD0, &qword_1EBD58CC8, &qword_1BE1054E8, MEMORY[0x1E6981F48]);
    v115 = v138;
    sub_1BE0504E4();
    v116 = sub_1BD0DE4F4(&qword_1EBD58CD8, &qword_1EBD58C78, &qword_1BE105470, MEMORY[0x1E697CD20]);
    v118 = v140;
    v117 = v141;
    sub_1BE050DF4();
    (*(v139 + 8))(v115, v117);
    v119 = v145;
    sub_1BE04FB84();
    *&v161 = v117;
    *(&v161 + 1) = v116;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = MEMORY[0x1E697C750];
    v122 = v143;
    v123 = v144;
    v124 = v151;
    sub_1BE051144();
    (v147[1])(v119, v124);
    v125 = (*(v142 + 8))(v118, v122);
    v147 = v137;
    MEMORY[0x1EEE9AC00](v125);
    v137[-2] = v157;
    v137[-1] = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CE0, &qword_1BE1054F0);
    *&v161 = v122;
    *(&v161 + 1) = v124;
    *&v162 = OpaqueTypeConformance2;
    *(&v162 + 1) = v121;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD58CE8, &qword_1EBD58CE0, &qword_1BE1054F0, MEMORY[0x1E697C5E0]);
    v126 = v148;
    v127 = v149;
    sub_1BE051024();
    (*(v146 + 8))(v123, v126);
    v128 = v156;
    sub_1BD0DE19C(v159, v156, &qword_1EBD58CA0, &qword_1BE105498);
    v129 = v150;
    sub_1BD0DE19C(v160, v150, &qword_1EBD58C98, &qword_1BE105490);
    v131 = v152;
    v130 = v153;
    v132 = *(v153 + 16);
    v133 = v154;
    v132(v152, v127, v154);
    v134 = v155;
    sub_1BD0DE19C(v128, v155, &qword_1EBD58CA0, &qword_1BE105498);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CF0, &qword_1BE1054F8);
    sub_1BD0DE19C(v129, v134 + *(v135 + 48), &qword_1EBD58C98, &qword_1BE105490);
    v132((v134 + *(v135 + 64)), v131, v133);
    v136 = *(v130 + 8);
    v136(v127, v133);
    sub_1BD0DE53C(v160, &qword_1EBD58C98, &qword_1BE105490);
    sub_1BD0DE53C(v159, &qword_1EBD58CA0, &qword_1BE105498);
    v136(v131, v133);
    sub_1BD0DE53C(v129, &qword_1EBD58C98, &qword_1BE105490);
    return sub_1BD0DE53C(v156, &qword_1EBD58CA0, &qword_1BE105498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD90FC54(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04B8D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B924();
  v11 = (*(v8 + 88))(v10, v7);
  v12 = "SE_STORAGE_CLEANUP_SE_NAME";
  if (v11 == *MEMORY[0x1E69B7F78])
  {
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x1E69B7F80])
  {
    v12 = "SE_STORAGE_CLEANUP_SUBTITLE_PAD";
  }

  else
  {
    if (v11 == *MEMORY[0x1E69B7F70])
    {
      v13 = "SE_STORAGE_CLEANUP_SUBTITLE_PAD";
    }

    else
    {
      if (v11 != *MEMORY[0x1E69B7F68])
      {
        if (v11 == *MEMORY[0x1E69B7F88])
        {
          v12 = "UP_SUBTITLE_PHONE";
        }

        else
        {
          (*(v8 + 8))(v10, v7);
        }

        goto LABEL_9;
      }

      v13 = "SE_STORAGE_CLEANUP_SUBTITLE_MAC";
    }

    v12 = (v13 - 32);
  }

LABEL_9:
  (*(v4 + 104))(v6, *MEMORY[0x1E69B80D8], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B69E0;
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(v53);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v32 = [*(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;
  }

  else
  {

    v34 = 0;
    v36 = 0xE000000000000000;
  }

  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1BD110550();
  *(v14 + 32) = v34;
  *(v14 + 40) = v36;
  v37 = sub_1BE04B714();
  (v12 | 0x8000000000000000), v38, v39, v40, v41, v42, v43, v44;
  v14, v45, v46, v47, v48, v49, v50, v51;
  (*(v4 + 8))(v6, v3);
  return v37;
}

uint64_t sub_1BD910014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D00, &qword_1BE105560);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D08, &qword_1BE105568);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D10, &qword_1BE105570);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v29 - v22;
  sub_1BD9103A4(a1, a2, &v29 - v22);
  v29 = v17;
  sub_1BD910664(a1, a2, v17);
  v31 = a1;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D18, &qword_1BE105578);
  sub_1BD916F18();
  sub_1BE051A44();
  v24 = [objc_opt_self() secondarySystemBackgroundColor];
  v33 = sub_1BE0511C4();
  *&v11[*(v6 + 44)] = sub_1BE0518D4();
  sub_1BD0DE19C(v23, v20, &qword_1EBD58D10, &qword_1BE105570);
  sub_1BD0DE19C(v17, v14, &qword_1EBD58D08, &qword_1BE105568);
  v25 = v8;
  sub_1BD0C3000(v11, v8);
  v26 = v30;
  sub_1BD0DE19C(v20, v30, &qword_1EBD58D10, &qword_1BE105570);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D58, &qword_1BE1055A0);
  sub_1BD0DE19C(v14, v26 + *(v27 + 48), &qword_1EBD58D08, &qword_1BE105568);
  sub_1BD0C3000(v25, v26 + *(v27 + 64));
  sub_1BD0DE53C(v11, &qword_1EBD58D00, &qword_1BE105560);
  sub_1BD0DE53C(v29, &qword_1EBD58D08, &qword_1BE105568);
  sub_1BD0DE53C(v23, &qword_1EBD58D10, &qword_1BE105570);
  sub_1BD0DE53C(v25, &qword_1EBD58D00, &qword_1BE105560);
  sub_1BD0DE53C(v14, &qword_1EBD58D08, &qword_1BE105568);
  return sub_1BD0DE53C(v20, &qword_1EBD58D10, &qword_1BE105570);
}

int *sub_1BD9103A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DD8, &unk_1BE105660);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  v26 = a1;
  v27 = a2;
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80D8], v6, v12);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v19 = v18;

    (*(v7 + 8))(v9, v6);
    v28 = v17;
    v29 = v19;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v29 = v20;
    v30 = v21 & 1;
    v31 = v22;
    sub_1BD917354();
    sub_1BE051A24();
    v23 = [objc_opt_self() secondarySystemBackgroundColor];
    v28 = sub_1BE0511C4();
    v24 = sub_1BE0518D4();
    (*(v11 + 32))(a3, v14, v10);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D10, &qword_1BE105570);
    *(a3 + result[9]) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD910664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v40 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DA0, &qword_1BE1055E8);
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v36 - v8);
  v10 = type metadata accessor for SEStorageUsageCategory(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(v9);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD46540, &qword_1BE0D6F88);
    return (*(v4 + 56))(v40, 1, 1, v39);
  }

  else
  {
    v31 = sub_1BD9171DC(v9, v13, type metadata accessor for SEStorageUsageCategory);
    MEMORY[0x1EEE9AC00](v31);
    *(&v36 - 4) = v37;
    *(&v36 - 3) = a2;
    *(&v36 - 2) = v13;
    sub_1BD911EC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DA8, &qword_1BE105638);
    sub_1BD1103C8();
    sub_1BD0DE4F4(&qword_1EBD58DB0, &qword_1EBD58DA8, &qword_1BE105638, MEMORY[0x1E6981F48]);
    sub_1BE051A24();
    v32 = [objc_opt_self() secondarySystemBackgroundColor];
    v41 = sub_1BE0511C4();
    v33 = sub_1BE0518D4();
    v35 = v39;
    v34 = v40;
    *&v6[*(v39 + 36)] = v33;
    sub_1BD0DE204(v6, v34, &qword_1EBD58DA0, &qword_1BE1055E8);
    (*(v4 + 56))(v34, 0, 1, v35);
    return sub_1BD91717C(v13, type metadata accessor for SEStorageUsageCategory);
  }
}

uint64_t sub_1BD910A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58CF8, &unk_1BE105500);
  MEMORY[0x1EEE9AC00](v19[0]);
  v6 = v19 - v5;
  v7 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F0, &qword_1BE0DE5B8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  sub_1BE04FB04();
  v19[8] = a1;
  v19[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49300, &qword_1BE105510);
  sub_1BD51865C();
  sub_1BE04E424();
  sub_1BE04FB14();
  v19[4] = a1;
  v19[5] = a2;
  sub_1BE04E424();
  v15 = *(v19[0] + 48);
  v16 = *(v9 + 16);
  v16(v6, v14, v8);
  v16(&v6[v15], v11, v8);
  sub_1BE04F854();
  v17 = *(v9 + 8);
  v17(v11, v8);
  return (v17)(v14, v8);
}

id sub_1BD910D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v52 = a3;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v49 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v13 = &v49 - v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D0], v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v5 + 8))(v7, v4);
    v53[0] = v16;
    v53[1] = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v49;
    *(v19 + 24) = a2;
    sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE051744();
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_1BE04D8B4(v53);
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
    v36 = v53[0];
    v37 = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    (*(v8 + 32))(v13, v10, v51);
    v39 = &v13[*(v50 + 36)];
    *v39 = v37;
    v39[1] = sub_1BD185ABC;
    v39[2] = v38;
    sub_1BE052434();
    v41 = v40;
    sub_1BD3BAA6C();
    sub_1BE050DE4();
    v41, v42, v43, v44, v45, v46, v47, v48;
    return sub_1BD0DE53C(v13, &qword_1EBD44590, &qword_1BE0DE5D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD911094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
  if (v2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion + 8);
    sub_1BE048964();
    v2(0);

    sub_1BD1107D8(v2, v3);
  }
}

id sub_1BD911104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v68 = a3;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v65 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590, &qword_1BE0DE5D0);
  v11 = MEMORY[0x1EEE9AC00](v66);
  v13 = &v65 - v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69B80D0], v4, v11);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    (*(v5 + 8))(v7, v4);
    v69[0] = v16;
    v69[1] = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v65;
    *(v19 + 24) = a2;
    sub_1BD0DDEBC();
    sub_1BE048964();
    sub_1BE051744();
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_1BE04D8B4(v69);
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
    if (v69[0])
    {
      v36 = 1;
    }

    else
    {
      v37 = swift_getKeyPath();
      v38 = swift_getKeyPath();
      sub_1BE04D8B4(v69);
      v37, v39, v40, v41, v42, v43, v44, v45;
      v38, v46, v47, v48, v49, v50, v51, v52;
      v36 = v70 ^ 1;
    }

    v53 = swift_getKeyPath();
    v54 = swift_allocObject();
    *(v54 + 16) = v36 & 1;
    (*(v8 + 32))(v13, v10, v67);
    v55 = &v13[*(v66 + 36)];
    *v55 = v53;
    v55[1] = sub_1BD185ABC;
    v55[2] = v54;
    sub_1BE052434();
    v57 = v56;
    sub_1BD3BAA6C();
    sub_1BE050DE4();
    v57, v58, v59, v60, v61, v62, v63, v64;
    return sub_1BD0DE53C(v13, &qword_1EBD44590, &qword_1BE0DE5D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD9114E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
  if (v2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion + 8);
    KeyPath = swift_getKeyPath();
    v5 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v20);
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
    v5, v13, v14, v15, v16, v17, v18, v19;
    v2(v21);
    sub_1BD1107D8(v2, v3);
  }
}

uint64_t sub_1BD9115A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SEStorageCleanupController(0);
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
  sub_1BE048964();
  result = sub_1BE04E954();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD911628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v143 = a3;
  v5 = sub_1BE04BD74();
  v136 = *(v5 - 8);
  v137 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v135 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DB8, &qword_1BE105640);
  v139 = *(v15 - 8);
  v140 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v138 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v135 - v18;
  v19 = type metadata accessor for SEStorageUsageGroup(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SEStorageUsageCategory(0);
  v24 = *(a2 + *(v23 + 20));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v19 + 28);
    v27 = v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v28 = *(v20 + 72);
    v29 = 0.0;
    do
    {
      sub_1BD917114(v27, v22, type metadata accessor for SEStorageUsageGroup);
      v30 = *&v22[v26];
      sub_1BD91717C(v22, type metadata accessor for SEStorageUsageGroup);
      v29 = v29 + v30;
      v27 += v28;
      --v25;
    }

    while (v25);
  }

  else
  {
    v29 = 0.0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v32 = [*(a1 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BE052434();
    v36 = v35;
  }

  else
  {

    v34 = 0;
    v36 = 0xE000000000000000;
  }

  sub_1BD917114(a2, v14, type metadata accessor for SEStorageUsageCategory);
  v37 = (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  MEMORY[0x1EEE9AC00](v37);
  *(&v135 - 4) = a2;
  *(&v135 - 3) = v34;
  *(&v135 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DC0, &unk_1BE105648);
  sub_1BD0DE4F4(&qword_1EBD58DC8, &qword_1EBD58DC0, &unk_1BE105648, &unk_1BE0FA020);
  sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory, &unk_1BE0FB398);
  sub_1BE04E8D4();
  v39 = v136;
  v38 = v137;
  (*(v136 + 104))(v7, *MEMORY[0x1E69B80D8], v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BE0B69E0;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1BD110550();
  *(v40 + 32) = v34;
  *(v40 + 40) = v36;
  v41 = sub_1BE04B714();
  v43 = v42;
  v40, v42, v44, v45, v46, v47, v48, v49;
  (*(v39 + 8))(v7, v38);
  v145 = v41;
  v146 = v43;
  sub_1BD0DDEBC();
  v50 = sub_1BE0506C4();
  v52 = v51;
  LOBYTE(v41) = v53;
  v55 = v54;
  v56 = sub_1BE050424();
  v57 = sub_1BE0505F4();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v56, v58, v60, v62, v64, v65, v66, v67;
  sub_1BD0DDF10(v50, v52, (v41 & 1), v68, v69, v70, v71, v72);
  v55, v73, v74, v75, v76, v77, v78, v79;
  v80 = sub_1BE051494();
  v81 = sub_1BE050564();
  v83 = v82;
  LOBYTE(v52) = v84;
  v86 = v85;
  v80, v82, v84, v85, v87, v88, v89, v90;
  sub_1BD0DDF10(v57, v59, (v61 & 1), v91, v92, v93, v94, v95);
  v63, v96, v97, v98, v99, v100, v101, v102;
  v145 = v81;
  v146 = v83;
  v147 = v52 & 1;
  v148 = v86;
  sub_1BE052434();
  v104 = v103;
  v105 = v141;
  sub_1BE050DE4();
  v104, v106, v107, v108, v109, v110, v111, v112;
  sub_1BD0DDF10(v81, v83, (v52 & 1), v113, v114, v115, v116, v117);
  v86, v118, v119, v120, v121, v122, v123, v124;
  v126 = v138;
  v125 = v139;
  v127 = *(v139 + 16);
  v128 = v144;
  v129 = v140;
  v127(v138, v144, v140);
  v130 = v142;
  sub_1BD0DE19C(v105, v142, &qword_1EBD452C0, &qword_1BE0B7620);
  v131 = v143;
  v127(v143, v126, v129);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DD0, &qword_1BE105658);
  sub_1BD0DE19C(v130, &v131[*(v132 + 48)], &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v105, &qword_1EBD452C0, &qword_1BE0B7620);
  v133 = *(v125 + 8);
  v133(v128, v129);
  sub_1BD0DE53C(v130, &qword_1EBD452C0, &qword_1BE0B7620);
  return (v133)(v126, v129);
}

double sub_1BD911DE4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, id *a3@<X8>)
{
  *a3 = sub_1BD802010();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DC0, &unk_1BE105648);
  v8 = v7[9];
  v9 = sub_1BE04AF64();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *(a3 + v7[10]) = 1;
  v10 = (a3 + v7[11]);
  *v10 = a1;
  v10[1] = a2;
  *(a3 + v7[12]) = 2;
  *(a3 + v7[13]) = 0;

  sub_1BE048C84();
  return result;
}

void sub_1BD911EC4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80D8], v0, v2);
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

uint64_t sub_1BD91208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v27);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CAD0, &unk_1BE0E6CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D40, &qword_1BE105588);
  sub_1BD0DE4F4(&qword_1EBD58D60, &qword_1EBD4CAD0, &unk_1BE0E6CF0, MEMORY[0x1E69E6338]);
  sub_1BD917054();
  sub_1BD917244(&qword_1EBD58D68, type metadata accessor for SEStorageUsageCategory, &unk_1BE0FB400);
  sub_1BE0519D4();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1BD91710C;
  *(v24 + 24) = v23;
  v25 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D18, &qword_1BE105578) + 36));
  *v25 = sub_1BD458BE8;
  v25[1] = v24;
  return sub_1BE048964();
}

uint64_t sub_1BD9122A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46540, &qword_1BE0D6F88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D50, &unk_1BE105590);
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (sub_1BD804328())
  {
    v14 = *(v28 + 56);

    return v14(a4, 1, 1, v11);
  }

  else
  {
    sub_1BD917114(a1, v10, type metadata accessor for SEStorageUsageCategory);
    v16 = type metadata accessor for SEStorageUsageCategory(0);
    v17 = (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v27 = &v23;
    MEMORY[0x1EEE9AC00](v17);
    v26 = &v23 - 6;
    *(&v23 - 4) = a1;
    *(&v23 - 3) = a2;
    *(&v23 - 2) = a3;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D80, &qword_1BE1055C0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D88, &unk_1BE1055C8);
    v24 = a4;
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8, &qword_1BE0D73A0);
    v20 = sub_1BD0DE4F4(&qword_1EBD58D90, &qword_1EBD58D88, &unk_1BE1055C8, &unk_1BE0FA020);
    v21 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory, &unk_1BE0FB398);
    sub_1BE04E8D4();
    v22 = v24;
    (*(v28 + 32))(v24, v13, v11);
    return (*(v28 + 56))(v22, 0, 1, v11);
  }
}

uint64_t sub_1BD912648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v57 = a3;
  v55 = a2;
  v5 = type metadata accessor for SEStorageUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D88, &unk_1BE1055C8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = (&v52 - v12);
  v53 = sub_1BD802010();
  v15 = v14;
  sub_1BD803AD4(v11);
  v16 = *(a1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v5 + 28);
    v19 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    v21 = 0.0;
    do
    {
      sub_1BD917114(v19, v8, type metadata accessor for SEStorageUsageGroup);
      v22 = *&v8[v18];
      sub_1BD91717C(v8, type metadata accessor for SEStorageUsageGroup);
      v21 = v21 + v22;
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = 0.0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v24 = [*(v57 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_numberFormatter) stringFromNumber_];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1BE052434();
    v28 = v27;
  }

  else
  {

    v26 = 0;
    v28 = 0xE000000000000000;
  }

  *v13 = v53;
  v13[1] = v15;
  v29 = v54;
  sub_1BD0DE19C(v11, v13 + *(v54 + 36), &unk_1EBD39970, &unk_1BE0B9F80);
  *(v13 + v29[10]) = 0;
  v30 = (v13 + v29[11]);
  *v30 = v26;
  v30[1] = v28;
  *(v13 + v29[12]) = 2;
  *(v13 + v29[13]) = 0;
  v31 = (v13 + v29[14]);
  sub_1BD805880(v58);
  v70 = v58[10];
  v71[0] = v59[0];
  *(v71 + 10) = *(v59 + 10);
  v66 = v58[6];
  v67 = v58[7];
  v68 = v58[8];
  v69 = v58[9];
  v62 = v58[2];
  v63 = v58[3];
  v64 = v58[4];
  v65 = v58[5];
  v60 = v58[0];
  v61 = v58[1];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D98, &unk_1BE1055D8) + 36);
  v33 = *(sub_1BE04EDE4() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_1BE04F684();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #6.0 }

  *v32 = _Q0;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  v41 = v71[2];
  v31[12] = v71[1];
  v31[13] = v41;
  v42 = v71[4];
  v31[14] = v71[3];
  v31[15] = v42;
  v43 = v69;
  v31[8] = v68;
  v31[9] = v43;
  v44 = v71[0];
  v31[10] = v70;
  v31[11] = v44;
  v45 = v65;
  v31[4] = v64;
  v31[5] = v45;
  v46 = v67;
  v31[6] = v66;
  v31[7] = v46;
  v47 = v61;
  *v31 = v60;
  v31[1] = v47;
  v48 = v63;
  v31[2] = v62;
  v31[3] = v48;
  v49 = sub_1BD0DE53C(v11, &unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v55;
  *(&v52 - 4) = a1;
  *(&v52 - 3) = v50;
  *(&v52 - 2) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  sub_1BD0DE4F4(&qword_1EBD58D90, &qword_1EBD58D88, &unk_1BE1055C8, &unk_1BE0FA020);
  sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
  sub_1BE0508B4();
  return sub_1BD0DE53C(v13, &qword_1EBD58D88, &unk_1BE1055C8);
}

uint64_t sub_1BD912B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageUsageCategory(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1BD917114(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SEStorageUsageCategory);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1BD9171DC(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SEStorageUsageCategory);
  v11 = (v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = a2;
  v11[1] = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  return sub_1BE051704();
}

void sub_1BD912D48(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v203 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v188 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v215 = &v184 - v11;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v212);
  v186 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v209 = &v184 - v14;
  v15 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v201 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v195 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v192 = (&v184 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v184 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v184 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818, &qword_1BE0D73B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v185 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v184 - v28;
  v214 = type metadata accessor for SEStorageUsageGroup(0);
  v30 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v187 = (&v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v213 = &v184 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v220 = (&v184 - v35);
  v200 = *(a1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v199 = *(v200 + 16);
  if (!v199)
  {
LABEL_98:
    KeyPath = swift_getKeyPath();
    v161 = swift_getKeyPath();
    sub_1BE04D8B4(&v227);
    KeyPath, v162, v163, v164, v165, v166, v167, v168;
    v161, v169, v170, v171, v172, v173, v174, v175;
    if ((v227 & 1) == 0)
    {
      v176 = sub_1BE048964();
      sub_1BD5EE954(v176, a3, 0, 0);
      a3, v177, v178, v179, v180, v181, v182, v183;
    }

    return;
  }

  v193 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v198 = v200 + v193;
  v194 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  swift_beginAccess();
  v36 = 0;
  v197 = (v201 + 56);
  v210 = (v6 + 48);
  v202 = (v6 + 32);
  v204 = (v6 + 8);
  v184 = (v201 + 48);
  v211 = v5;
  v190 = a3;
  v208 = v15;
  v191 = v29;
  v189 = v30;
  v207 = v24;
  v206 = v21;
  while (2)
  {
    if (v36 >= *(v200 + 16))
    {
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v225 = *(v30 + 72);
    v37 = v220;
    sub_1BD917114(v198 + v225 * v36, v220, type metadata accessor for SEStorageUsageGroup);
    (*v197)(v29, 1, 1, v15);
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    sub_1BE04D8B4(&v227);
    v38, v40, v41, v42, v43, v44, v45, v46;
    v39, v47, v48, v49, v50, v51, v52, v53;
    if (v227)
    {
      goto LABEL_6;
    }

    v196 = v36;
    v54 = *&a3[v194];
    v224 = v54[2];
    if (!v224)
    {
      goto LABEL_5;
    }

    v226 = *v220;
    v223 = v54 + v193;
    sub_1BE048C84();
    v55 = 0;
    v56 = v213;
    v57 = &unk_1BE0B9F80;
    v222 = v54;
    while (1)
    {
      if (v55 >= v54[2])
      {
        goto LABEL_102;
      }

      v221 = v55 * v225;
      sub_1BD917114(v223 + v55 * v225, v56, type metadata accessor for SEStorageUsageGroup);
      v66 = *v56;
      v67 = *(*v56 + 16);
      if (v67 != *(v226 + 16))
      {
        goto LABEL_14;
      }

      if (v67 && v66 != v226)
      {
        v68 = v201;
        v69 = (*(v201 + 80) + 32) & ~*(v201 + 80);
        v219 = v66 + v69;
        v217 = (v226 + v69);
        v216 = sub_1BD22F42C();
        v70 = 0;
        v218 = *(v68 + 72);
        v205 = v55;
        while (1)
        {
          v71 = v218 * v70;
          sub_1BD917114(v219 + v218 * v70, v24, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if (v70 == v67)
          {
            goto LABEL_103;
          }

          sub_1BD917114(v217 + v71, v21, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if ((sub_1BE053074() & 1) == 0)
          {
            goto LABEL_13;
          }

          v72 = *(v24 + 1);
          v73 = *(v21 + 1);
          v74 = *(v72 + 16);
          if (v74 != *(v73 + 16))
          {
            goto LABEL_13;
          }

          v75 = !v74 || v72 == v73;
          if (!v75)
          {
            break;
          }

LABEL_28:
          v76 = v21;
          v77 = v15[6];
          v78 = *(v212 + 48);
          v79 = v209;
          sub_1BD0DE19C(&v24[v77], v209, &unk_1EBD39970, v57);
          sub_1BD0DE19C(&v76[v77], v79 + v78, &unk_1EBD39970, v57);
          v80 = v57;
          v81 = *v210;
          v82 = v211;
          if ((*v210)(v79, 1, v211) == 1)
          {
            v75 = v81(v79 + v78, 1, v82) == 1;
            v58 = v79;
            if (!v75)
            {
              goto LABEL_12;
            }

            v57 = &unk_1BE0B9F80;
            sub_1BD0DE53C(v79, &unk_1EBD39970, &unk_1BE0B9F80);
            v15 = v208;
            v21 = v206;
            v24 = v207;
          }

          else
          {
            v83 = v215;
            sub_1BD0DE19C(v79, v215, &unk_1EBD39970, v57);
            if (v81(v79 + v78, 1, v82) == 1)
            {
              (*v204)(v83, v82);
              v58 = v79;
              v55 = v205;
LABEL_12:
              sub_1BD0DE53C(v58, &qword_1EBD3A750, &unk_1BE0D3540);
              v15 = v208;
              v21 = v206;
              v24 = v207;
              v57 = &unk_1BE0B9F80;
LABEL_13:
              sub_1BD91717C(v21, type metadata accessor for SEStorageUsageGroup.PassEntry);
              sub_1BD91717C(v24, type metadata accessor for SEStorageUsageGroup.PassEntry);
              v56 = v213;
              v54 = v222;
              goto LABEL_14;
            }

            v84 = v203;
            (*v202)(v203, v79 + v78, v82);
            sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
            v85 = sub_1BE052334();
            v86 = *v204;
            (*v204)(v84, v82);
            v86(v215, v82);
            sub_1BD0DE53C(v79, &unk_1EBD39970, v80);
            v21 = v206;
            v24 = v207;
            v57 = v80;
            v15 = v208;
            v55 = v205;
            if ((v85 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (*&v24[v15[7]] != *&v21[v15[7]])
          {
            goto LABEL_13;
          }

          v87 = v15[8];
          v88 = v24[v87];
          v89 = v21[v87];
          sub_1BD91717C(v21, type metadata accessor for SEStorageUsageGroup.PassEntry);
          sub_1BD91717C(v24, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v75 = v88 == v89;
          v56 = v213;
          v54 = v222;
          if (!v75)
          {
            goto LABEL_14;
          }

          if (++v70 == v67)
          {
            goto LABEL_47;
          }
        }

        v90 = (v72 + 40);
        v91 = (v73 + 40);
        while (v74)
        {
          v92 = *(v90 - 1) == *(v91 - 1) && *v90 == *v91;
          if (!v92 && (sub_1BE053B84() & 1) == 0)
          {
            goto LABEL_13;
          }

          v90 += 2;
          v91 += 2;
          if (!--v74)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

LABEL_47:
      sub_1BE04C164();
      sub_1BD917244(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
      sub_1BE0526E4();
      sub_1BE0526E4();
      v99 = v228;
      v100 = v230;
      if (v227 == v229 && v228 == v230)
      {
        v228, v93, v229, v94, v95, v96, v97, v98;
        v100, v101, v102, v103, v104, v105, v106, v107;
        v54 = v222;
      }

      else
      {
        v115 = sub_1BE053B84();
        v99, v116, v117, v118, v119, v120, v121, v122;
        v100, v123, v124, v125, v126, v127, v128, v129;
        v54 = v222;
        if ((v115 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (*(v56 + *(v214 + 24)) == *(v220 + *(v214 + 24)) && *(v56 + *(v214 + 28)) == *(v220 + *(v214 + 28)))
      {
        break;
      }

LABEL_14:
      sub_1BD91717C(v56, type metadata accessor for SEStorageUsageGroup);
      if (++v55 == v224)
      {
        v54, v59, v60, v61, v62, v63, v64, v65;
        a3 = v190;
        goto LABEL_4;
      }
    }

    v54, v108, v109, v110, v111, v112, v113, v114;
    sub_1BD91717C(v56, type metadata accessor for SEStorageUsageGroup);
    a3 = v190;
    v130 = *&v190[v194];
    if (v55 >= *(v130 + 16))
    {
      goto LABEL_106;
    }

    v131 = v187;
    sub_1BD917114(v130 + v193 + v221, v187, type metadata accessor for SEStorageUsageGroup);
    v132 = v185;
    sub_1BD0DE19C(v191, v185, &qword_1EBD46818, &qword_1BE0D73B0);
    if ((*v184)(v132, 1, v15) == 1)
    {
      sub_1BD0DE53C(v132, &qword_1EBD46818, &qword_1BE0D73B0);
      v133 = *v131;
      v134 = *(*v131 + 16);
      if (v134)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1BD4FFFCC(v133);
        }

        v135 = v133 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
        v136 = *(v201 + 72);
        do
        {
          v135[v15[8]] = 1;
          v135 += v136;
          --v134;
        }

        while (v134);
        *v187 = v133;
      }

LABEL_90:
      v154 = v194;
      swift_beginAccess();
      v155 = *&a3[v154];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&a3[v154] = v155;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v155 = sub_1BD4FFFB8(v155);
        *&a3[v194] = v155;
      }

      v157 = v187;
      if (v55 >= v155[2])
      {
        goto LABEL_107;
      }

      sub_1BD5F0418(v187, v155 + v193 + v221);
      *&a3[v194] = v155;
      swift_endAccess();
      sub_1BD91717C(v157, type metadata accessor for SEStorageUsageGroup);
LABEL_4:
      v29 = v191;
      v30 = v189;
LABEL_5:
      sub_1BD5E0C8C();
      v37 = v220;
      v36 = v196;
LABEL_6:
      ++v36;
      sub_1BD0DE53C(v29, &qword_1EBD46818, &qword_1BE0D73B0);
      sub_1BD91717C(v37, type metadata accessor for SEStorageUsageGroup);
      if (v36 == v199)
      {
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  sub_1BD9171DC(v132, v192, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v217 = *v131;
  v137 = v217[2];
  v138 = v195;
  if (!v137)
  {
LABEL_89:
    sub_1BD91717C(v192, type metadata accessor for SEStorageUsageGroup.PassEntry);
    a3 = v190;
    goto LABEL_90;
  }

  v139 = sub_1BD22F42C();
  v140 = 0;
  v226 = *v192;
  v216 = (*(v201 + 80) + 32) & ~*(v201 + 80);
  v225 = v217 + v216;
  v224 = *(v201 + 72);
  v222 = v137;
  v219 = v139;
  while (2)
  {
    v223 = v224 * v140;
    sub_1BD917114(&v225[v224 * v140], v138, type metadata accessor for SEStorageUsageGroup.PassEntry);
    if ((sub_1BE053074() & 1) == 0 || (v141 = *(v195 + 8), v142 = v192[1], v143 = *(v141 + 16), v143 != *(v142 + 16)))
    {
LABEL_65:
      v138 = v195;
      sub_1BD91717C(v195, type metadata accessor for SEStorageUsageGroup.PassEntry);
      if (++v140 == v137)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  if (v143)
  {
    v144 = v141 == v142;
  }

  else
  {
    v144 = 1;
  }

  if (!v144)
  {
    v151 = (v141 + 40);
    v152 = (v142 + 40);
    while (v143)
    {
      v153 = *(v151 - 1) == *(v152 - 1) && *v151 == *v152;
      if (!v153 && (sub_1BE053B84() & 1) == 0)
      {
        goto LABEL_65;
      }

      v151 += 2;
      v152 += 2;
      if (!--v143)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_105;
  }

LABEL_73:
  v145 = v15[6];
  v146 = *(v212 + 48);
  v147 = v186;
  sub_1BD0DE19C(v195 + v145, v186, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE19C(v192 + v145, v147 + v146, &unk_1EBD39970, &unk_1BE0B9F80);
  v148 = *v210;
  v149 = v211;
  if ((*v210)(v147, 1, v211) != 1)
  {
    sub_1BD0DE19C(v147, v188, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v148(v147 + v146, 1, v149) != 1)
    {
      (*v202)(v203, v147 + v146, v149);
      sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      LODWORD(v218) = sub_1BE052334();
      v150 = *v204;
      (*v204)(v203, v149);
      v150(v188, v149);
      sub_1BD0DE53C(v147, &unk_1EBD39970, &unk_1BE0B9F80);
      v137 = v222;
      if (v218)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

    (*v204)(v188, v149);
LABEL_64:
    sub_1BD0DE53C(v147, &qword_1EBD3A750, &unk_1BE0D3540);
    v137 = v222;
    goto LABEL_65;
  }

  if (v148(v147 + v146, 1, v149) != 1)
  {
    goto LABEL_64;
  }

  sub_1BD0DE53C(v147, &unk_1EBD39970, &unk_1BE0B9F80);
  v137 = v222;
LABEL_78:
  if (*(v195 + v15[7]) != *(v192 + v15[7]) || *(v195 + v15[8]) != *(v192 + v15[8]))
  {
    goto LABEL_65;
  }

  sub_1BD91717C(v195, type metadata accessor for SEStorageUsageGroup.PassEntry);
  v158 = v217;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  if ((v159 & 1) == 0)
  {
    v158 = sub_1BD4FFFCC(v158);
  }

  a3 = v190;
  sub_1BD91717C(v192, type metadata accessor for SEStorageUsageGroup.PassEntry);
  if (v140 < v158[2])
  {
    *(v158 + v216 + v223 + v15[8]) = 1;
    *v187 = v158;
    goto LABEL_90;
  }

LABEL_108:
  __break(1u);
}

id sub_1BD9140F4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F0], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD914264(uint64_t a1, uint64_t a2, char *a3)
{
  v239 = a1;
  v265 = sub_1BE04AF64();
  v4 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v260 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v228 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v262 = &v227 - v9;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v264);
  v231 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v246 = &v227 - v12;
  v13 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v232 = &v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v248 = (&v227 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v277 = &v227 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v283 = &v227 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46818, &qword_1BE0D73B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v230 = &v227 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v227 - v25;
  v268 = type metadata accessor for SEStorageUsageGroup(0);
  v257 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v236 = &v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v266 = &v227 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v269 = (&v227 - v31);
  v233 = type metadata accessor for SEStorageUsageCategory(0);
  v235 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v250 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D70, &qword_1BE1055A8);
  v33 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v234 = (&v227 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58D78, &unk_1BE1055B0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v243 = &v227 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v242 = &v227 - v38;
  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  sub_1BE04D8B4(&v288);
  KeyPath, v41, v42, v43, v44, v45, v46, v47;
  v40, v48, v49, v50, v51, v52, v53, v54;
  v55 = 0;
  v56 = v288;
  v57 = v288[2];
  v241 = (v33 + 56);
  v240 = (v33 + 48);
  v254 = (v14 + 56);
  v267 = (v4 + 48);
  v252 = OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_groups;
  v259 = (v4 + 32);
  v263 = (v4 + 8);
  v273 = v14;
  v229 = (v14 + 48);
  v58 = v26;
  v238 = v288;
  v237 = v57;
  v245 = a3;
  v251 = v26;
  v261 = v13;
  while (1)
  {
    v59 = v244;
    if (v55 == v57)
    {
      v60 = 1;
      v247 = v57;
      v61 = v243;
    }

    else
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (v55 >= v56[2])
      {
        goto LABEL_118;
      }

      v62 = v55 + 1;
      v63 = v56 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v55;
      v64 = *(v244 + 48);
      v65 = v234;
      *v234 = v55;
      sub_1BD917114(v63, v65 + v64, type metadata accessor for SEStorageUsageCategory);
      v66 = v65;
      v61 = v243;
      sub_1BD0DE204(v66, v243, &qword_1EBD58D70, &qword_1BE1055A8);
      v60 = 0;
      v247 = v62;
    }

    (*v241)(v61, v60, 1, v59);
    v67 = v242;
    sub_1BD0DE204(v61, v242, &qword_1EBD58D78, &unk_1BE1055B0);
    if ((*v240)(v67, 1, v59) == 1)
    {
LABEL_108:
      v238, v68, v69, v70, v71, v72, v73, v74;
      v203 = swift_getKeyPath();
      v204 = swift_getKeyPath();
      sub_1BE04D8B4(&v284);
      v203, v205, v206, v207, v208, v209, v210, v211;
      v204, v212, v213, v214, v215, v216, v217, v218;
      if ((v284 & 1) == 0)
      {
        v219 = sub_1BE048964();
        sub_1BD5EE954(v219, a3, 0, 0);
        a3, v220, v221, v222, v223, v224, v225, v226;
      }

      return;
    }

    sub_1BD9171DC(v67 + *(v59 + 48), v250, type metadata accessor for SEStorageUsageCategory);
    v75 = v269;
    if (sub_1BE04B334())
    {
      v258 = *(v250 + *(v233 + 20));
      v256 = *(v258 + 16);
      if (v256)
      {
        break;
      }
    }

LABEL_2:
    sub_1BD91717C(v250, type metadata accessor for SEStorageUsageCategory);
    v56 = v238;
    v57 = v237;
    v55 = v247;
  }

  v249 = (*(v257 + 80) + 32) & ~*(v257 + 80);
  v255 = v258 + v249;
  swift_beginAccess();
  v76 = 0;
LABEL_15:
  if (v76 >= *(v258 + 16))
  {
    goto LABEL_114;
  }

  v280 = *(v257 + 72);
  sub_1BD917114(v255 + v280 * v76, v75, type metadata accessor for SEStorageUsageGroup);
  (*v254)(v58, 1, 1, v13);
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  sub_1BE04D8B4(&v284);
  v79 = v77;
  v80 = v277;
  v79, v81, v82, v83, v84, v85, v86, v87;
  v78, v88, v89, v90, v91, v92, v93, v94;
  if (v284)
  {
    goto LABEL_14;
  }

  v253 = v76;
  v95 = *&a3[v252];
  v279 = v95[2];
  if (!v279)
  {
    goto LABEL_13;
  }

  v282 = *v269;
  v96 = *(v282 + 16);
  v278 = v95 + v249;
  sub_1BE048C84();
  v97 = 0;
  a3 = v246;
  v98 = v266;
  v275 = v96;
  v276 = v95;
  while (v97 < v95[2])
  {
    v274 = v97 * v280;
    sub_1BD917114(&v278[v97 * v280], v98, type metadata accessor for SEStorageUsageGroup);
    v106 = *v98;
    if (*(*v98 + 16) != v96)
    {
      goto LABEL_22;
    }

    v281 = v97;
    if (v96 && v106 != v282)
    {
      v107 = (*(v273 + 80) + 32) & ~*(v273 + 80);
      v272 = v106 + v107;
      v271 = v282 + v107;
      v270 = sub_1BD22F42C();
      v108 = 0;
      while (1)
      {
        v109 = v267;
        if (v108 >= *(v106 + 16))
        {
          goto LABEL_112;
        }

        v110 = *(v273 + 72) * v108;
        sub_1BD917114(v272 + v110, v283, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if (v108 >= *(v282 + 16))
        {
          goto LABEL_113;
        }

        sub_1BD917114(v271 + v110, v80, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((sub_1BE053074() & 1) == 0)
        {
          goto LABEL_21;
        }

        v111 = *(v283 + 8);
        v112 = *(v80 + 8);
        v113 = *(v111 + 16);
        if (v113 != *(v112 + 16))
        {
          goto LABEL_21;
        }

        v114 = !v113 || v111 == v112;
        if (!v114)
        {
          break;
        }

LABEL_37:
        v115 = v13[6];
        v116 = *(v264 + 48);
        sub_1BD0DE19C(v283 + v115, a3, &unk_1EBD39970, &unk_1BE0B9F80);
        sub_1BD0DE19C(v80 + v115, &a3[v116], &unk_1EBD39970, &unk_1BE0B9F80);
        v117 = *v109;
        v118 = v265;
        if ((*v109)(a3, 1, v265) == 1)
        {
          if (v117(&a3[v116], 1, v118) != 1)
          {
            goto LABEL_20;
          }

          sub_1BD0DE53C(a3, &unk_1EBD39970, &unk_1BE0B9F80);
        }

        else
        {
          v119 = a3;
          v120 = a3;
          v121 = v262;
          sub_1BD0DE19C(v119, v262, &unk_1EBD39970, &unk_1BE0B9F80);
          if (v117(&v120[v116], 1, v118) == 1)
          {
            (*v263)(v121, v118);
            a3 = v120;
            v13 = v261;
LABEL_20:
            sub_1BD0DE53C(a3, &qword_1EBD3A750, &unk_1BE0D3540);
LABEL_21:
            sub_1BD91717C(v277, type metadata accessor for SEStorageUsageGroup.PassEntry);
            v80 = v277;
            sub_1BD91717C(v283, type metadata accessor for SEStorageUsageGroup.PassEntry);
            v98 = v266;
            v97 = v281;
            v96 = v275;
            v95 = v276;
            goto LABEL_22;
          }

          v122 = v260;
          (*v259)(v260, &v120[v116], v118);
          sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v123 = sub_1BE052334();
          v124 = *v263;
          (*v263)(v122, v118);
          v124(v121, v118);
          sub_1BD0DE53C(v120, &unk_1EBD39970, &unk_1BE0B9F80);
          a3 = v120;
          v13 = v261;
          v80 = v277;
          if ((v123 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        if (*(v283 + v13[7]) != *(v80 + v13[7]))
        {
          goto LABEL_21;
        }

        v125 = v13[8];
        v126 = v283;
        v127 = *(v283 + v125);
        v128 = *(v80 + v125);
        sub_1BD91717C(v80, type metadata accessor for SEStorageUsageGroup.PassEntry);
        sub_1BD91717C(v126, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v114 = v127 == v128;
        v98 = v266;
        v97 = v281;
        v96 = v275;
        v95 = v276;
        if (!v114)
        {
          goto LABEL_22;
        }

        if (++v108 == v275)
        {
          goto LABEL_55;
        }
      }

      v129 = (v111 + 40);
      v130 = (v112 + 40);
      while (v113)
      {
        v68 = *v129;
        v69 = *(v130 - 1);
        v70 = *v130;
        v131 = *(v129 - 1) == v69 && v68 == v70;
        if (!v131 && (sub_1BE053B84() & 1) == 0)
        {
          goto LABEL_21;
        }

        v129 += 2;
        v130 += 2;
        if (!--v113)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

LABEL_55:
    sub_1BE04C164();
    sub_1BD917244(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v138 = v285;
    v139 = v287;
    if (v284 == v286 && v285 == v287)
    {
      v285, v132, v286, v133, v134, v135, v136, v137;
      v139, v140, v141, v142, v143, v144, v145, v146;
      v95 = v276;
      v80 = v277;
      v96 = v275;
    }

    else
    {
      v154 = sub_1BE053B84();
      v138, v155, v156, v157, v158, v159, v160, v161;
      v139, v162, v163, v164, v165, v166, v167, v168;
      v95 = v276;
      v80 = v277;
      v96 = v275;
      if ((v154 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (*(v98 + *(v268 + 24)) == *(v269 + *(v268 + 24)) && *(v98 + *(v268 + 28)) == *(v269 + *(v268 + 28)))
    {
      v95, v147, v148, v149, v150, v151, v152, v153;
      sub_1BD91717C(v98, type metadata accessor for SEStorageUsageGroup);
      a3 = v245;
      v169 = *&v245[v252];
      if (v97 >= *(v169 + 16))
      {
        goto LABEL_119;
      }

      v170 = v236;
      sub_1BD917114(v169 + v249 + v274, v236, type metadata accessor for SEStorageUsageGroup);
      v58 = v251;
      v171 = v230;
      sub_1BD0DE19C(v251, v230, &qword_1EBD46818, &qword_1BE0D73B0);
      if ((*v229)(v171, 1, v13) != 1)
      {
        sub_1BD9171DC(v171, v248, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v176 = *v170;
        v177 = v232;
        v282 = *(*v170 + 16);
        if (!v282)
        {
LABEL_98:
          sub_1BD91717C(v248, type metadata accessor for SEStorageUsageGroup.PassEntry);
          a3 = v245;
          goto LABEL_99;
        }

        v280 = sub_1BD22F42C();
        v178 = 0;
        v179 = *v248;
        v272 = (*(v273 + 80) + 32) & ~*(v273 + 80);
        v278 = v176 + v272;
        v279 = v179;
        v276 = v176;
        while (2)
        {
          if (v178 >= v176[2])
          {
            goto LABEL_116;
          }

          v180 = *(v273 + 72) * v178;
          sub_1BD917114(&v278[v180], v177, type metadata accessor for SEStorageUsageGroup.PassEntry);
          v181 = sub_1BE053074();
          v182 = v267;
          if (v181)
          {
            v183 = *(v177 + 8);
            v184 = v248[1];
            v185 = *(v183 + 16);
            if (v185 == *(v184 + 16))
            {
              if (v185)
              {
                v186 = v183 == v184;
              }

              else
              {
                v186 = 1;
              }

              if (!v186)
              {
                v195 = (v183 + 40);
                v196 = (v184 + 40);
                while (v185)
                {
                  v197 = *(v195 - 1) == *(v196 - 1) && *v195 == *v196;
                  if (!v197 && (sub_1BE053B84() & 1) == 0)
                  {
                    goto LABEL_73;
                  }

                  v195 += 2;
                  v196 += 2;
                  if (!--v185)
                  {
                    goto LABEL_82;
                  }
                }

                goto LABEL_115;
              }

LABEL_82:
              v187 = v13[6];
              v188 = *(v264 + 48);
              v189 = v231;
              sub_1BD0DE19C(v177 + v187, v231, &unk_1EBD39970, &unk_1BE0B9F80);
              sub_1BD0DE19C(v248 + v187, v189 + v188, &unk_1EBD39970, &unk_1BE0B9F80);
              v190 = *v182;
              v191 = v265;
              if ((*v182)(v189, 1, v265) == 1)
              {
                if (v190(v189 + v188, 1, v191) == 1)
                {
                  sub_1BD0DE53C(v189, &unk_1EBD39970, &unk_1BE0B9F80);
                  v177 = v232;
                  v170 = v236;
                  goto LABEL_87;
                }

LABEL_72:
                sub_1BD0DE53C(v189, &qword_1EBD3A750, &unk_1BE0D3540);
                v177 = v232;
                v170 = v236;
              }

              else
              {
                v192 = v228;
                sub_1BD0DE19C(v189, v228, &unk_1EBD39970, &unk_1BE0B9F80);
                if (v190(v189 + v188, 1, v191) == 1)
                {
                  (*v263)(v192, v191);
                  goto LABEL_72;
                }

                v193 = v260;
                (*v259)(v260, (v189 + v188), v191);
                sub_1BD917244(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                LODWORD(v275) = sub_1BE052334();
                v194 = *v263;
                (*v263)(v193, v191);
                v194(v192, v191);
                sub_1BD0DE53C(v189, &unk_1EBD39970, &unk_1BE0B9F80);
                v177 = v232;
                v170 = v236;
                if (v275)
                {
LABEL_87:
                  if (*(v177 + v13[7]) == *(v248 + v13[7]) && *(v177 + v13[8]) == *(v248 + v13[8]))
                  {
                    sub_1BD91717C(v177, type metadata accessor for SEStorageUsageGroup.PassEntry);
                    v201 = v276;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v201 = sub_1BD4FFFCC(v201);
                    }

                    sub_1BD91717C(v248, type metadata accessor for SEStorageUsageGroup.PassEntry);
                    if (v178 < v201[2])
                    {
                      *(v201 + v272 + v180 + v13[8]) = 1;
                      *v170 = v201;
                      a3 = v245;
                      v58 = v251;
                      goto LABEL_99;
                    }

                    goto LABEL_121;
                  }
                }
              }
            }
          }

LABEL_73:
          sub_1BD91717C(v177, type metadata accessor for SEStorageUsageGroup.PassEntry);
          ++v178;
          v58 = v251;
          v176 = v276;
          if (v178 == v282)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      sub_1BD0DE53C(v171, &qword_1EBD46818, &qword_1BE0D73B0);
      v172 = *v170;
      v173 = *(*v170 + 16);
      if (v173)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_1BD4FFFCC(v172);
        }

        v174 = v172 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
        v175 = *(v273 + 72);
        do
        {
          v174[v13[8]] = 1;
          v174 += v175;
          --v173;
        }

        while (v173);
        *v170 = v172;
      }

LABEL_99:
      v198 = v252;
      swift_beginAccess();
      v199 = *&a3[v198];
      v200 = swift_isUniquelyReferenced_nonNull_native();
      *&a3[v198] = v199;
      if ((v200 & 1) == 0)
      {
        v199 = sub_1BD4FFFB8(v199);
        *&a3[v252] = v199;
      }

      if (v281 >= v199[2])
      {
        goto LABEL_120;
      }

      sub_1BD5F0418(v170, v199 + v249 + v274);
      *&a3[v252] = v199;
      swift_endAccess();
      sub_1BD91717C(v170, type metadata accessor for SEStorageUsageGroup);
LABEL_13:
      sub_1BD5E0C8C();
      v75 = v269;
      v76 = v253;
LABEL_14:
      ++v76;
      sub_1BD0DE53C(v58, &qword_1EBD46818, &qword_1BE0D73B0);
      sub_1BD91717C(v75, type metadata accessor for SEStorageUsageGroup);
      if (v76 == v256)
      {
        goto LABEL_2;
      }

      goto LABEL_15;
    }

LABEL_22:
    sub_1BD91717C(v98, type metadata accessor for SEStorageUsageGroup);
    if (++v97 == v279)
    {
      v95, v99, v100, v101, v102, v103, v104, v105;
      a3 = v245;
      v58 = v251;
      goto LABEL_13;
    }
  }

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
LABEL_121:
  __break(1u);
}

uint64_t sub_1BD915A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BC8, &qword_1BE105318);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-v3];
  v5 = v0[1];
  v8 = *v0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58BD0, &qword_1BE105320);
  sub_1BD915B98();
  sub_1BE04EC04();
  sub_1BD0DE4F4(&qword_1EBD58C58, &qword_1EBD58BC8, &qword_1BE105318, MEMORY[0x1E697C1A8]);
  sub_1BE050E54();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1BD915B98()
{
  result = qword_1EBD58BD8;
  if (!qword_1EBD58BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BD0, &qword_1BE105320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BE0, &qword_1BE105328);
    sub_1BD915C90();
    swift_getOpaqueTypeConformance2();
    sub_1BD917244(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BD8);
  }

  return result;
}

unint64_t sub_1BD915C90()
{
  result = qword_1EBD58BE8;
  if (!qword_1EBD58BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BE0, &qword_1BE105328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF0, &qword_1BE105330);
    type metadata accessor for SEStorageUsageCategory(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF8, &qword_1BE105338);
    sub_1BD915DD4();
    sub_1BD917244(&qword_1EBD58C28, type metadata accessor for SEStorageUsageCategory, &unk_1BE0FB398);
    sub_1BD915F3C();
    swift_getOpaqueTypeConformance2();
    sub_1BD916074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58BE8);
  }

  return result;
}

unint64_t sub_1BD915DD4()
{
  result = qword_1EBD58C00;
  if (!qword_1EBD58C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF0, &qword_1BE105330);
    sub_1BD915E8C();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C00);
  }

  return result;
}

unint64_t sub_1BD915E8C()
{
  result = qword_1EBD58C08;
  if (!qword_1EBD58C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58C10, &qword_1BE105340);
    sub_1BD0DE4F4(&qword_1EBD58C18, &qword_1EBD58C20, &unk_1BE105348, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C08);
  }

  return result;
}

unint64_t sub_1BD915F3C()
{
  result = qword_1EBD58C30;
  if (!qword_1EBD58C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58BF8, &qword_1BE105338);
    sub_1BD915FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C30);
  }

  return result;
}

unint64_t sub_1BD915FC0()
{
  result = qword_1EBD58C38;
  if (!qword_1EBD58C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58C40, &qword_1BE105358);
    sub_1BD917244(&qword_1EBD58C48, type metadata accessor for SEStorageCleanupAppletTypeDetailView, &unk_1BE0D6F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C38);
  }

  return result;
}

unint64_t sub_1BD916074()
{
  result = qword_1EBD58C50;
  if (!qword_1EBD58C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58C50);
  }

  return result;
}

void sub_1BD9160C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v67;
  v68, v20, v21, v22, v23, v24, v25, v26;
  type metadata accessor for SEStorageCleanupController(0);
  sub_1BD917244(&qword_1EBD550E0, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
  v27 = sub_1BE04E964();
  v28 = swift_getKeyPath();
  sub_1BE04E974();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v27, v36, v37, v38, v39, v40, v41, v42;
  v43 = v66;
  v44 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DE8, &qword_1BE105750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58DF0, &qword_1BE105758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98, &qword_1BE0B9A30);
  sub_1BD0DE4F4(&qword_1EBD58DF8, &qword_1EBD58DE8, &qword_1BE105750, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD9173E4();
  sub_1BD12E194();
  sub_1BE050C64();
  v19, v45, v46, v47, v48, v49, v50, v51;
  v44, v52, v53, v54, v55, v56, v57, v58;
  v43, v59, v60, v61, v62, v63, v64, v65;
}

id sub_1BD916318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v113 = a1;
  v111 = a3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E08, &qword_1BE105760);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v96 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
  MEMORY[0x1EEE9AC00](v109);
  v103 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v96 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v96 - v28;
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v112 = a2;
  sub_1BE04D8B4(&v114);
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  v115, v45, v46, v47, v48, v49, v50, v51;
  v116, v52, v53, v54, v55, v56, v57, v58;
  v59 = *(v10 + 104);
  if (v117 == 1)
  {
    v59(v17, *MEMORY[0x1E69B80F8], v9);
    result = PKPassKitBundle();
    if (result)
    {
      v61 = result;
      v62 = sub_1BE04B6F4();
      v64 = v63;

      v99 = *(v10 + 8);
      v99(v17, v9);
      v114 = v62;
      v115 = v64;
      sub_1BE04E194();
      v65 = sub_1BE04E1D4();
      v66 = *(v65 - 8);
      v97 = *(v66 + 56);
      v96 = v66 + 56;
      v97(v8, 0, 1, v65);
      v67 = swift_allocObject();
      v68 = v112;
      *(v67 + 16) = v113;
      *(v67 + 24) = v68;
      v69 = sub_1BD0DDEBC();
      sub_1BE048964();
      v98 = v69;
      sub_1BE051724();
      v70 = v104;
      v59(v104, *MEMORY[0x1E69B80D0], v9);
      result = PKPassKitBundle();
      if (result)
      {
        v71 = result;
        v72 = v70;
        v73 = sub_1BE04B6F4();
        v75 = v74;

        v99(v72, v9);
        v114 = v73;
        v115 = v75;
        sub_1BE04E1B4();
        v97(v8, 0, 1, v65);
        v76 = swift_allocObject();
        *(v76 + 16) = v113;
        *(v76 + 24) = v68;
        sub_1BE048964();
        v77 = v102;
        sub_1BE051724();
        v79 = v105;
        v78 = v106;
        v80 = *(v106 + 16);
        v81 = v100;
        v82 = v107;
        v80(v100, v105, v107);
        v83 = v101;
        v80(v101, v77, v82);
        v84 = v103;
        v80(v103, v81, v82);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
        v80((v84 + *(v85 + 48)), v83, v82);
        v86 = *(v78 + 8);
        v86(v83, v82);
        v86(v81, v82);
        sub_1BD0DE19C(v84, v110, &qword_1EBD40D80, &qword_1BE0C9780);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
        sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v84, &qword_1EBD40D80, &qword_1BE0C9780);
        v86(v77, v82);
        return (v86)(v79, v82);
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v59(v12, *MEMORY[0x1E69B80D8], v9);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_9;
  }

  v87 = result;
  v88 = sub_1BE04B6F4();
  v90 = v89;

  (*(v10 + 8))(v12, v9);
  v114 = v88;
  v115 = v90;
  sub_1BE04E1B4();
  v91 = sub_1BE04E1D4();
  (*(*(v91 - 8) + 56))(v8, 0, 1, v91);
  v92 = swift_allocObject();
  v93 = v112;
  *(v92 + 16) = v113;
  *(v92 + 24) = v93;
  sub_1BD0DDEBC();
  sub_1BE048964();
  sub_1BE051724();
  v95 = v106;
  v94 = v107;
  (*(v106 + 16))(v110, v20, v107);
  swift_storeEnumTagMultiPayload();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE04F9A4();
  return (*(v95 + 8))(v20, v94);
}

uint64_t sub_1BD916CB0@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v32, v19, v20, v21, v22, v23, v24, v25;
  v26 = v34;
  if (v34)
  {
    v31 = v33;
    v32 = v34;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    v26 = v30 & 1;
  }

  else
  {
    result = 0;
    v28 = 0;
    v29 = 0;
  }

  *a2 = result;
  a2[1] = v28;
  a2[2] = v26;
  a2[3] = v29;
  return result;
}

unint64_t sub_1BD916DA4()
{
  result = qword_1EBD58CC0;
  if (!qword_1EBD58CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58CB8, &qword_1BE1054D8);
    sub_1BD916E5C(&qword_1EBD43178, &qword_1EBD43170, &qword_1BE1054E0, sub_1BD0FF49C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58CC0);
  }

  return result;
}

uint64_t sub_1BD916E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD916F18()
{
  result = qword_1EBD58D20;
  if (!qword_1EBD58D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D18, &qword_1BE105578);
    sub_1BD916FD0();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0, &qword_1BE0E8860, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D20);
  }

  return result;
}

unint64_t sub_1BD916FD0()
{
  result = qword_1EBD58D28;
  if (!qword_1EBD58D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D30, &qword_1BE105580);
    sub_1BD917054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D28);
  }

  return result;
}

unint64_t sub_1BD917054()
{
  result = qword_1EBD58D38;
  if (!qword_1EBD58D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58D40, &qword_1BE105588);
    sub_1BD0DE4F4(&qword_1EBD58D48, &qword_1EBD58D50, &unk_1BE105590, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58D38);
  }

  return result;
}

uint64_t sub_1BD917114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD91717C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD9171DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD917244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD9172A4()
{
  v1 = *(type metadata accessor for SEStorageUsageCategory(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_1BD912D48(v0 + v2, v4, v5);
}

unint64_t sub_1BD917354()
{
  result = qword_1EBD58DE0;
  if (!qword_1EBD58DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58DE0);
  }

  return result;
}

unint64_t sub_1BD9173E4()
{
  result = qword_1EBD58E00;
  if (!qword_1EBD58E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD58DF0, &qword_1BE105758);
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD58E00);
  }

  return result;
}

void sub_1BD91752C(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  if (v4)
  {
    v6 = v3[4];
    v5 = v3[5];
    v14 = v3[3];
    sub_1BD36A5EC(v4, v3[1], v3[2], v14, v6);
    sub_1BD91A048(a1, v4, v6);
    v5, v7, v8, v9, v10, v11, v12, v13;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD917644(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  v9 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context);
  v8 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 8);
  v10 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 16);
  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 24);
  v12 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 32);
  v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context + 40);
  *v7 = *a1;
  v14 = *(a1 + 8);
  v262 = *(a1 + 8);
  *(v7 + 8) = v14;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_1BD40FB5C(v9, v8, v10, v11, v12, v13);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = v3;
  v18 = v5;
  sub_1BE048964();
  sub_1BD91A424(&v262, &v261);
  v19 = v4;
  sub_1BE04D8B4(&v261);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v16, v27, v28, v29, v30, v31, v32, v33;
  v34 = v261;
  v35 = [v18 shippingPhone];
  v36 = v35;
  if (v34)
  {
    if (v35)
    {
      v258 = v19;
      v259 = v4;
      v37 = v18;
      v38 = [v34 identifier];
      v39 = sub_1BE052434();
      v41 = v40;

      v42 = [v36 identifier];
      v43 = sub_1BE052434();
      v45 = v44;

      if (v39 == v43 && v41 == v45)
      {
        v41, v46, v47, v48, v49, v50, v51, v52;
        v45, v53, v54, v55, v56, v57, v58, v59;
        v18 = v37;
        goto LABEL_10;
      }

      v60 = sub_1BE053B84();
      v41, v61, v62, v63, v64, v65, v66, v67;
      v45, v68, v69, v70, v71, v72, v73, v74;
      v18 = v37;
      if (v60)
      {
LABEL_10:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
        v75 = sub_1BE053074();

        v19 = v258;
        v4 = v259;
        if (v75)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v19 = v258;
      v4 = v259;
    }

    else
    {
      v36 = v34;
    }
  }

  else if (!v35)
  {
    goto LABEL_15;
  }

LABEL_14:
  v76 = [v18 shippingPhone];
  swift_getKeyPath();
  swift_getKeyPath();
  v261 = v76;
  sub_1BE048964();
  sub_1BE04D8C4();
LABEL_15:
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  sub_1BE04D8B4(&v261);
  v77, v79, v80, v81, v82, v83, v84, v85;
  v78, v86, v87, v88, v89, v90, v91, v92;
  v93 = v261;
  if (v4 && (objc_opt_self(), (v94 = swift_dynamicCastObjCClass()) != 0))
  {
    v95 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1BE0B69E0;
    v97 = *MEMORY[0x1E69BB7C8];
    *(v96 + 32) = *MEMORY[0x1E69BB7C8];
    type metadata accessor for PKContactField(0);
    v260 = v19;
    v98 = v97;
    v99 = sub_1BE052724();
    v96, v100, v101, v102, v103, v104, v105, v106;
    v107 = [v95 clientErrors];
    if (v107)
    {
      v108 = v107;
      v109 = v19;
      v110 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v111 = sub_1BE052744();

      v112 = sub_1BD3F00D4(v111);
      v111, v113, v114, v115, v116, v117, v118, v119;
    }

    else
    {
      v109 = v19;
      v110 = v18;
      v112 = MEMORY[0x1E69E7CC0];
    }

    v121 = objc_opt_self();
    v129 = sub_1BD3F01E8(v112, v122, v123, v124, v125, v126, v127, v128);
    v112, v130, v131, v132, v133, v134, v135, v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    v137 = sub_1BE052724();
    v129, v138, v139, v140, v141, v142, v143, v144;
    v145 = [v121 pk:v99 FilteredShippingErrorsForContactFields:v137 errors:?];

    v146 = sub_1BE052744();
    v120 = sub_1BD3F00D4(v146);

    v146, v147, v148, v149, v150, v151, v152, v153;
    v18 = v110;
    v19 = v109;
  }

  else
  {
    v120 = MEMORY[0x1E69E7CC0];
  }

  v154 = sub_1BD3FE590(v93, v120);
  v93, v155, v156, v157, v158, v159, v160, v161;
  v120, v162, v163, v164, v165, v166, v167, v168;
  if ((v154 & 1) == 0)
  {
    if (v4 && (objc_opt_self(), (v169 = swift_dynamicCastObjCClass()) != 0))
    {
      v170 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52A60, &qword_1BE0F6180);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_1BE0B69E0;
      v172 = *MEMORY[0x1E69BB7C8];
      *(v171 + 32) = *MEMORY[0x1E69BB7C8];
      type metadata accessor for PKContactField(0);
      v173 = v19;
      v174 = v172;
      v175 = sub_1BE052724();
      v171, v176, v177, v178, v179, v180, v181, v182;
      v183 = [v170 clientErrors];
      if (v183)
      {
        v184 = v183;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        v185 = sub_1BE052744();

        v186 = sub_1BD3F00D4(v185);
        v185, v187, v188, v189, v190, v191, v192, v193;
      }

      else
      {
        v186 = MEMORY[0x1E69E7CC0];
      }

      v195 = objc_opt_self();
      v203 = sub_1BD3F01E8(v186, v196, v197, v198, v199, v200, v201, v202);
      v186, v204, v205, v206, v207, v208, v209, v210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v211 = sub_1BE052724();
      v203, v212, v213, v214, v215, v216, v217, v218;
      v219 = [v195 pk:v175 FilteredShippingErrorsForContactFields:v211 errors:?];

      v220 = sub_1BE052744();
      v194 = sub_1BD3F00D4(v220);

      v220, v221, v222, v223, v224, v225, v226, v227;
    }

    else
    {
      v194 = MEMORY[0x1E69E7CC0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v261 = v194;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v228 = swift_getKeyPath();
  v229 = swift_getKeyPath();
  sub_1BE04D8B4(&v261);
  v228, v230, v231, v232, v233, v234, v235, v236;
  v229, v237, v238, v239, v240, v241, v242, v243;
  LODWORD(v228) = v261;
  result = sub_1BD9193D4(v4, v18, v244, v245, v246, v247, v248, v249);
  if (v228 != (result & 1))
  {
    v257 = sub_1BD9193D4(v4, v18, v251, v252, v253, v254, v255, v256);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v261) = v257 & 1;
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BD917DB4()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

uint64_t sub_1BD917E28()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD917E9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E78, &qword_1BE1057C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v161 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58E80, &qword_1BE1057D0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v161 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v164 = v2;
  sub_1BE04D8B4(v170);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = v170[0];
  v170[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FB8, &unk_1BE0D4ED0);
  sub_1BD0DE4F4(&qword_1EBD58E88, &qword_1EBD42FB8, &unk_1BE0D4ED0, MEMORY[0x1E69E6310]);
  sub_1BD919378();
  sub_1BE0522D4();
  v28, v29, v30, v31, v32, v33, v34, v35;
  (*(v5 + 16))(v11, v7, v4);
  v36 = *(v9 + 44);
  v37 = sub_1BD0DE4F4(&qword_1EBD58E98, &qword_1EBD58E78, &qword_1BE1057C8, MEMORY[0x1E69E6F00]);
  sub_1BE052AD4();
  (*(v5 + 8))(v7, v4);
  v38 = v11;
  v39 = v36;
  v40 = OBJC_IVAR____TtC9PassKitUI12PhoneNumbers_context;
  sub_1BE052B04();
  if (*(v38 + v36) == v170[0])
  {
    return sub_1BD91A3BC(v38);
  }

  v162 = v164 + v40;
  v161 = *MEMORY[0x1E695C330];
  v165 = v4;
  v166 = v36;
  v167 = v38;
  v168 = v37;
  while (1)
  {
    v42 = sub_1BE052B34();
    v44 = *(v43 + 8);
    v45 = *(v43 + 24);
    v46 = *(v43 + 25);
    v47 = v44;
    v42(v170, 0);
    sub_1BE052B14();
    if ((v46 & 1) == 0)
    {
      break;
    }

    v169 = v45;
    v48 = swift_getKeyPath();
    v49 = swift_getKeyPath();
    v50 = v44;
    sub_1BE04D8B4(v170);
    v48, v51, v52, v53, v54, v55, v56, v57;
    v49, v58, v59, v60, v61, v62, v63, v64;
    v65 = v170[0];
    if (!v170[0])
    {
      goto LABEL_25;
    }

    v163 = v50;
    v66 = v50;
    v67 = [v65 identifier];
    v68 = sub_1BE052434();
    v70 = v69;

    v71 = [v66 identifier];
    v72 = sub_1BE052434();
    v74 = v73;

    if (v68 == v72 && v70 == v74)
    {
      v70, v75, v76, v77, v78, v79, v80, v81;
      v74, v82, v83, v84, v85, v86, v87, v88;
    }

    else
    {
      v130 = sub_1BE053B84();
      v70, v131, v132, v133, v134, v135, v136, v137;
      v74, v138, v139, v140, v141, v142, v143, v144;
      if ((v130 & 1) == 0)
      {

        v39 = v166;
        v38 = v167;
        goto LABEL_24;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    v145 = sub_1BE053074();

    v39 = v166;
    v38 = v167;
    v50 = v163;
    if ((v145 & 1) == 0)
    {
      goto LABEL_25;
    }

    v146 = *v162;
    if (*v162)
    {
      v148 = *(v162 + 32);
      v147 = *(v162 + 40);
      v149 = *(v162 + 24);
      sub_1BD36A5EC(*v162, *(v162 + 8), *(v162 + 16), v149, v148);
      sub_1BD91A048(0, v146, v148);
      v147, v150, v151, v152, v153, v154, v155, v156;

      v39 = v166;
      swift_unknownObjectRelease();

      v38 = v167;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v170[0] = 0;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

LABEL_24:
    v50 = v163;
LABEL_25:
    v157 = [v50 recentContact];
    if (v157)
    {
      v158 = v157;
      result = [objc_opt_self() defaultInstance];
      if (!result)
      {
        goto LABEL_29;
      }

      v159 = result;
      v160 = v158;
      [v159 deleteRecent_];
    }

    else
    {
    }

LABEL_5:

    sub_1BE052B04();
    if (*(v38 + v39) == v170[0])
    {
      return sub_1BD91A3BC(v38);
    }
  }

  v89 = *v162;
  if (*v162)
  {
    v91 = *(v162 + 32);
    v90 = *(v162 + 40);
    v93 = *(v162 + 16);
    v92 = *(v162 + 24);
    v94 = *(v162 + 8);
    v95 = v44;
    v96 = v44;
    sub_1BD36A5EC(v89, v94, v93, v92, v91);
    sub_1BD91A048(v44, v89, v91);
    v90, v97, v98, v99, v100, v101, v102, v103;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v170[0] = v44;
    v104 = v44;
    v105 = v44;
    sub_1BE048964();
    sub_1BE04D8C4();
  }

  v106 = v44;
  v107 = v161;
  v115 = sub_1BD3EFFC8(MEMORY[0x1E69E7CC0], v108, v109, v110, v111, v112, v113, v114);
  v116 = sub_1BE04A0E4();
  v117 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v118 = sub_1BE052404();
  v119 = sub_1BE052724();
  v115, v120, v121, v122, v123, v124, v125, v126;
  v127 = [v117 initWithTitle:v118 preferences:v119 selectedIndex:v116 readOnly:0];

  if (!v127)
  {

    v39 = v166;
    v38 = v167;
    goto LABEL_5;
  }

  [v127 setContactKey_];

  result = [objc_opt_self() defaultInstance];
  v39 = v166;
  v38 = v167;
  if (result)
  {
    v128 = result;
    v129 = [result saveContactToCoreRecents:v44 preference:v127];

    [v44 setContactSource_];
    [v44 setRecentContact_];

    goto LABEL_5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}
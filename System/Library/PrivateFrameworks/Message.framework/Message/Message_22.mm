uint64_t sub_1B07FECD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a2)
  {
    if (a2 == 1)
    {

      return 2;
    }

    else if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFBE8();
      v8 = sub_1B0E45748();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v8)
      {
        v7 = sub_1B0E45748();
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      return v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFBE8();
      if (sub_1B0E45748())
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }

      return v5;
    }
  }

  else if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFBE8();
    if (sub_1B0E45748())
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07FF000(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = 0;
  v37 = 0;
  v33 = 0;
  v31 = 0;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v35[0] = sub_1B0E46A28();
  v35[1] = v3;
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  v34 = a1;
  sub_1B0E469F8();
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v35);
  v36 = sub_1B0E44C88();
  v37 = v6;
  sub_1B07F200C(a2);
  if (a2 < 2)
  {
    v10 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v10);
  }

  else
  {
    v31 = a2;
    v30[2] = a2;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v26 = sub_1B07AFBE8();
    v7 = sub_1B0E45748();
    if (v7)
    {
      v8 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v8);
    }

    else
    {
      v30[1] = a2;
      v30[0] = sub_1B039CA88(sub_1B07AA064, 0, v25, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v24);
      sub_1B0E44838();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v22 = sub_1B0E448E8();
      v23 = v9;

      sub_1B039E440(v30);
      MEMORY[0x1B2726E80](v22, v23);
    }
  }

  v11 = sub_1B0E44838();
  MEMORY[0x1B2726E80](v11);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a3)
  {
    v33 = a3;
    v32[2] = a3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v21 = sub_1B07AFBE8();
    v13 = sub_1B0E45748();
    if (v13)
    {
      v14 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v14);
    }

    else
    {
      v32[1] = a3;
      v32[0] = sub_1B039CA88(sub_1B07AA064, 0, v20, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v24);
      sub_1B0E44838();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B03B11C4();
      v18 = sub_1B0E448E8();
      v19 = v15;

      sub_1B039E440(v32);
      MEMORY[0x1B2726E80](v18, v19);
    }
  }

  else
  {
    v12 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v12);
  }

  v17 = v36;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(&v36);
  return v17;
}

BOOL sub_1B07FF63C(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) != 0)
  {
    return (a4 & 0x100) != 0;
  }

  if ((a4 & 0x100) != 0)
  {
    return 0;
  }

  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

BOOL sub_1B07FF80C(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = *(a1 + 8);
  HIBYTE(v4) = *(a1 + 9) & 1;
  LOBYTE(v3) = *(a2 + 8);
  HIBYTE(v3) = *(a2 + 9) & 1;
  return sub_1B07FF63C(*a1, v4, *a2, v3);
}

uint64_t *sub_1B07FF8CC()
{
  if (qword_1EB6E0B50 != -1)
  {
    swift_once();
  }

  return &qword_1EB7381F8;
}

uint64_t sub_1B0813728@<X0>(void *a1@<X8>)
{
  v6 = a1;
  v8 = 0;
  v7 = sub_1B0813E78;
  v15 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v14 = &v3 - v4;
  v15 = v1;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B041C1E8();
  v13 = &type metadata for UID;
  MessageIdentifierSet.init()();
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v14, v7, v8, v12, v6, &unk_1F26C8718, v5);
  sub_1B03D09B8(v14);
}

uint64_t sub_1B08138C0@<X0>(void *a1@<X8>)
{
  v6 = a1;
  v8 = 0;
  v7 = sub_1B081ABBC;
  v15 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v14 = &v3 - v4;
  v15 = v1;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B041C1E8();
  v13 = &type metadata for UID;
  MessageIdentifierSet.init()();
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v14, v7, v8, v12, v6, &unk_1F26C87A0, v5);
  sub_1B03D09B8(v14);
}

uint64_t sub_1B0813A58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 40);
  v4 = *(result + 41);
  *a2 = *(result + 32);
  *(a2 + 8) = v3;
  *(a2 + 9) = v4 & 1;
  return result;
}

uint64_t sub_1B0813A80(uint64_t a1)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v1 = &v4 - v5;
  v8 = &v4 - v5;
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  sub_1B03D08AC(v6 + *(v2 + 24), v1);
  v9 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v8);
  return v9;
}

uint64_t sub_1B0813B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v11 = a1;
  v9 = 0;
  v12 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v10 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v9 - v10;
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa(v2);
  sub_1B07F4C24((v11 + *(v3 + 20)), v13);
  v4 = &v13[*(v12 + 28)];
  v14 = *v4;
  v15 = v4[8];
  v16 = v4[9];
  result = sub_1B07F4FB8(v13);
  v6 = v15;
  v7 = v16;
  v8 = v17;
  *v17 = v14;
  *(v8 + 8) = v6;
  *(v8 + 9) = v7 & 1;
  return result;
}

uint64_t sub_1B0813C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v18 = a2;
  v20 = a3;
  v17 = 0;
  v16 = sub_1B0813E78;
  v22 = 0;
  v21 = 0;
  v23 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v10 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v14 = &v10 - v12;
  v22 = v6;
  v21 = v3;
  sub_1B0813E10(v6, v7, v8);
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  sub_1B0E44FD8();
  _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  MessageIdentifierSet.subtract(_:)(v14);
  return sub_1B03D09B8(v14);
}

BOOL sub_1B0813E78(uint64_t a1, const void *a2)
{
  v6 = a1;
  memcpy(__dst, a2, sizeof(__dst));
  v4 = sub_1B07CF88C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v5, &v4, v2);
}

uint64_t sub_1B0813EFC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v14 - v14;
  v15 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v14 - v15;
  v32 = &v14 - v15;
  v31 = v8;
  v29 = v9;
  v30 = v10;
  v27 = v11;
  v28 = v12;
  v26 = v5;
  sub_1B041C1E8();
  MessageIdentifierSet.init()();
  v21 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v24 = sub_1B08140B0(v20, v19, v16, v17, v18, v5 + *(v21 + 24), v23);
  v25 = v24;
  sub_1B03D08AC(v23, v22);
  sub_1B0814528(v22);
  sub_1B03D09B8(v22);
  sub_1B03D09B8(v23);
  return v24;
}

uint64_t sub_1B08140B0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v20 - v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v20 - v44;
  v65 = v7;
  v63 = v8;
  v64 = v9;
  v61 = v10;
  v62 = v11;
  v60 = v12;
  v59 = v13;
  v58 = v14;
  v47 = __dst;
  memcpy(__dst, v14, 0x2AuLL);
  sub_1B07F48B4(__dst, v57);
  v49 = type metadata accessor for MissingBodyDataRequest(0);
  v45 = *(v50 + *(v49 + 24));
  sub_1B03D08AC(v50, v46);
  v48 = sub_1B0816558(v45, v46);
  sub_1B03D09B8(v46);
  sub_1B07F4A10();
  v56 = v48;
  if (sub_1B0E452A8() < *(v50 + *(v49 + 24)))
  {
    v15 = v42[40];
    v16 = v42[41];
    v17 = v50 + *(v49 + 20);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v51 = *(v42 + 4);
    LOBYTE(v52) = v15;
    HIBYTE(v52) = v16 & 1;
    v32 = sub_1B0816758(v18, v17 & 1, v51, v52);
  }

  else
  {
    v32 = 0;
  }

  v29 = v32;
  v28 = 1;
  v55 = v32;
  sub_1B03D08AC(v40, v46);
  MessageIdentifierSet.ranges.getter(v35);
  sub_1B03D09B8(v46);
  v27 = sub_1B07D76A4();
  v30 = sub_1B0E45718();
  sub_1B07D772C(v35);
  v31 = v30 > 28;
  v54 = v31 & v28;
  v26 = v29 || v31;
  if ((v26 & 1) == 0)
  {
    return v48;
  }

  if (v29)
  {
    sub_1B0816870(v50, v36, v37, v40, v41);
  }

  sub_1B03D08AC(v40, v46);
  MessageIdentifierSet.ranges.getter(v35);
  sub_1B03D09B8(v46);
  v25 = sub_1B0E45718();
  sub_1B07D772C(v35);
  if (v25 > 28)
  {
    sub_1B0816E60(v38, v39, v40);
  }

  v22 = v66;
  memcpy(v66, v42, 0x2AuLL);
  sub_1B07F48B4(v66, &v53);
  v21 = *(v50 + *(v49 + 24));
  sub_1B03D08AC(v50, v46);
  v23 = sub_1B0816558(v21, v46);
  sub_1B03D09B8(v46);
  sub_1B07F4A10();

  return v23;
}

uint64_t sub_1B0814528(uint64_t a1)
{
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.formUnion(_:)(a1, v1);
}

uint64_t sub_1B0814598(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v25 = a1;
  v24 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v18[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v26 = (v18 - v18[0]);
  v36 = v7;
  v34 = v8;
  v35 = v9;
  v32 = v10;
  v33 = v11;
  v30 = v12;
  v31 = v13;
  v29 = v14;
  v18[2] = __dst;
  memcpy(__dst, v14, 0x2AuLL);
  sub_1B07F48B4(__dst, v28);
  sub_1B0813728(v26);
  v15 = v18[1];
  sub_1B07F4A10();
  v16 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v27 = sub_1B0814750(v25, v24, v19, v20, v21, v22, v23, v26, v15 + *(v16 + 24));
  sub_1B03D09B8(v26);
  return v27;
}

uint64_t sub_1B0814750(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a1;
  v34 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v43 = a9;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v26 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v21 - v26;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v21 - v27;
  v37 = 0;
  v36 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v21 - v36;
  v65 = v42;
  v63 = v9;
  v64 = v10;
  v61 = v11;
  v62 = v12;
  v59 = v13;
  v60 = v14;
  v58 = v15;
  v57 = v16;
  v56 = v17;
  sub_1B07F4C24(v17, &v21 - v36);
  v41 = type metadata accessor for MissingBodyDataRequest(v37);
  v38 = *(v42 + *(v41 + 24));
  sub_1B03D08AC(v42, v45);
  v18 = sub_1B0817EB0(v38, v45);
  v19 = v45;
  v40 = v18;
  sub_1B03D09B8(v45);
  sub_1B07F4FB8(v39);
  v55 = v40;
  v50 = sub_1B0E452A8() < *(v42 + *(v41 + 24));
  v49 = 1;
  v54 = v50;
  sub_1B03D08AC(v43, v19);
  MessageIdentifierSet.ranges.getter(v48);
  sub_1B03D09B8(v45);
  v47 = sub_1B07D76A4();
  v51 = sub_1B0E45718();
  sub_1B07D772C(v48);
  v52 = v51 > 28;
  v53 = v52 & v49;
  v25 = v50 || v52;
  if ((v25 & 1) == 0)
  {
    return v40;
  }

  if (v50)
  {
    sub_1B08180D8(v42, v34, v28, v29, v30, v31, v32, v33, v43);
  }

  sub_1B03D08AC(v43, v45);
  MessageIdentifierSet.ranges.getter(v48);
  sub_1B03D09B8(v45);
  v24 = sub_1B0E45718();
  sub_1B07D772C(v48);
  if (v24 > 28)
  {
    sub_1B0816E60(v31, v32, v43);
  }

  sub_1B07F4C24(v35, v39);
  v21 = *(v42 + *(v41 + 24));
  sub_1B03D08AC(v42, v45);
  v22 = sub_1B0817EB0(v21, v45);
  sub_1B03D09B8(v45);
  sub_1B07F4FB8(v39);

  return v22;
}

void sub_1B0814C54()
{
  sub_1B0814CC4();
  _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  sub_1B0814CC4();
}

void sub_1B0814CC4()
{
  if ((*(v0 + 9) & 1) == 0 && (*(v0 + 8) & 1) == 0)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 9) = 1;
  }
}

uint64_t sub_1B0814D38(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v32 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    v4 = sub_1B07FECD8(a2, a3, a4);
    if (sub_1B06E5C34(v4, 1))
    {
      sub_1B0815120(a1);
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a4;
    sub_1B08151D4(a1, v33);
    memcpy(__dst, v33, sizeof(__dst));
    if ((__dst[2] & 0xFF00) != 0x200)
    {
      memcpy(v36, __dst, sizeof(v36));
      v7 = v36[0];
      v8 = v36[1];
      v9 = v36[2];
      v10 = BYTE1(v36[2]);
      v11 = v36[3];
      v12 = v36[4];
      sub_1B07F200C(a3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = v7;
      v20 = v8;
      LOBYTE(v21) = v9 & 1;
      HIBYTE(v21) = v10;
      sub_1B07F3D8C(v7, v8, v21, v11, v12, a2, a3, a4, v34);
      _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
      sub_1B0815264(v34);
      sub_1B082085C(v34);
      v17 = a1;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.insert(_:)(v18, &v17, v6);
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  sub_1B0820818(a2, a3, a4);
  if (a4 != 1)
  {
    _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
    if (sub_1B0815448(a1, a2, a3, a4))
    {
      sub_1B07F2124(a3);
    }

    sub_1B07F2124(a3);
  }

  return sub_1B08155A8(a1);
}

BOOL sub_1B0815120(uint64_t a1)
{
  v3 = a1;
  v6 = 0;
  v7 = a1;
  sub_1B08151D4(a1, v8);
  _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  sub_1B08156D8(v3);
  v4 = v3;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v5, &v4, v1);
}

void *sub_1B08151D4@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v13 = a1;
  v12 = v2;
  v10 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  result = KeyedSequence.removeElement(forKey:)(&v10, v3, v11);
  v5 = v11[1];
  v6 = v11[2];
  v7 = v11[3];
  v8 = v11[4];
  *a2 = v11[0];
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return result;
}

void *sub_1B0815264(void *a1)
{
  v18 = 0;
  v17 = 0;
  v19 = a1;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  sub_1B07F200C(v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B07FECD8(v7, v8, v9);
  sub_1B07F2124(v8);

  if (!v10 || v10 == 1)
  {
    v17 = 0;
    v5 = 0;
  }

  else
  {
    v17 = 1;
    v5 = 1;
  }

  if (v5)
  {
    memcpy(__dst, a1, sizeof(__dst));
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    KeyedSequence.insert(_:)(__dst, v1);
  }

  else
  {
    v14 = sub_1B07CF88C();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    KeyedSequence.removeElement(forKey:)(&v14, v2, v15);
    memcpy(v16, v15, 0x40uLL);
    sub_1B08208B0(v16);
  }

  v12 = sub_1B07CF88C();
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.remove(_:)(&v12, v3, &v13);
}

BOOL sub_1B0815448(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v20 = 0;
  v18 = 0;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v19 = a1;
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  v11 = KeyedSequence.update(key:_:)(&v19, sub_1B082091C, v12, v4);
  sub_1B07F2124(a3);

  v18 = v11;
  v16 = a1;
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.remove(_:)(&v16, v5, &v17);
  return v11;
}

BOOL sub_1B08155A8(unsigned int a1)
{
  v8 = a1;
  v15 = 0;
  v14 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  v15 = v2;
  v14 = v1;
  sub_1B08151D4(v2, v16);
  v6 = &v13;
  v13 = v8;
  v3 = sub_1B041C1E8();
  MessageIdentifierSet.init(_:)(v6, &type metadata for UID, v3);
  v10 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  sub_1B0814528(v7);
  sub_1B03D09B8(v7);
  v11 = v8;
  return MessageIdentifierSet.insert(_:)(v12, &v11, v9);
}

void *sub_1B08156D8(int a1)
{
  v9 = 0;
  v10 = a1;
  v7 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  KeyedSequence.removeElement(forKey:)(&v7, v1, v8);
  memcpy(__dst, v8, sizeof(__dst));
  sub_1B08208B0(__dst);
  v5 = a1;
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.remove(_:)(&v5, v2, &v6);
}

uint64_t *sub_1B08157B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v132 = a8;
  v125 = a7;
  v124 = a6;
  v123 = a5;
  v122 = a4;
  v121 = a2;
  v127 = a1;
  v129 = a10;
  v111 = a10;
  v128 = a9;
  v112 = a9;
  v137 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v160[1] = 0;
  v160[0] = 0;
  v138 = 0;
  v158 = 0;
  v156 = 0;
  v153 = 0;
  v172 = a8;
  v113 = *(a8 - 8);
  v114 = v113;
  v115 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](0);
  v117 = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v52 - v117;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v52 - v117;
  v171 = &v52 - v117;
  v119 = (*(*(sub_1B0E45D88() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v120 = &v52 - v119;
  v131 = sub_1B0E462B8();
  v126 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v130 = &v52 - v126;
  v170 = v127;
  v169 = v12;
  v168 = a3;
  v166 = v13;
  v167 = v14;
  v164 = v15;
  v165 = v16;
  v163 = sub_1B0E46A48();
  v161 = v137;
  v136 = 1;
  v162 = 1;
  MEMORY[0x1B27270C0](v128, v129);
  swift_getWitnessTable();
  v159[1] = sub_1B0E45038();
  v134 = sub_1B0E45358();
  v133 = v134;
  WitnessTable = swift_getWitnessTable();
  sub_1B0E45798();
  v139 = v137;
  v140 = v136;
  v141 = v138;
LABEL_2:
  v108 = v140;
  v109 = v139;
  for (i = v141; ; i = v57)
  {
    v107 = i;
    sub_1B0E46528();
    sub_1B0E46518();
    if ((*(v114 + 48))(v120, 1, v132) == 1)
    {
      break;
    }

    (*(v114 + 32))(v118, v120, v132);
    v158 = v122(v118);
    v157 = v158;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((MessageIdentifierSet.contains(_:)(&v157, v17) & 1) == 0)
    {
      v105 = v163;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v106 = sub_1B0E452A8();

      if (v106 >= v127)
      {
        if (v108)
        {
          v86 = v109;
          v87 = v108;
          v88 = v107;
        }

        else
        {
          v89 = v109;
          v85 = v109;
          v156 = v109;
          v27 = v124(v118);
          if (sub_1B07FF884(v85, v27))
          {
            v28 = v107;
            v81 = v163;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v154[0] = v81;
            v82 = &v52;
            MEMORY[0x1EEE9AC00](&v52);
            v29 = v124;
            v30 = v125;
            *(&v52 - 6) = v31;
            *(&v52 - 5) = v32;
            *(&v52 - 4) = v33;
            *(&v52 - 3) = v29;
            *(&v52 - 2) = v30;
            *(&v52 - 1) = v34;
            sub_1B0E456F8();
            v83 = v28;
            v84 = v82;
            if (v28)
            {
              goto LABEL_26;
            }

            sub_1B039E440(v154);
            v80 = v154[1];
            if (v155)
            {
              v76 = v109;
              v77 = v108;
              v78 = v83;
            }

            else
            {
              v79 = v80;
              v35 = v83;
              v65 = v80;
              v153 = v80;
              (*(v114 + 16))(v116, v118, v132);
              v66 = &v152;
              v67 = sub_1B0E45398();
              (*(v114 + 40))(v36, v116, v132);
              v67(v66, 0);
              v68 = v163;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v149[1] = v68;
              v70 = swift_getWitnessTable();
              MEMORY[0x1B27270C0](v149, v133);
              v69 = v149[0];

              v148 = v69;
              v71 = &v52;
              MEMORY[0x1EEE9AC00](&v52);
              v37 = v111;
              v38 = v124;
              v72 = &v52 - 8;
              *(&v52 - 6) = v39;
              *(&v52 - 5) = v40;
              *(&v52 - 4) = v37;
              *(&v52 - 3) = v38;
              *(&v52 - 2) = v41;
              v73 = sub_1B0E462B8();
              v147[1] = WitnessTable;
              v42 = swift_getWitnessTable();
              v44 = sub_1B039CA88(sub_1B08209C8, v72, v73, &unk_1F26C8A98, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
              v74 = v35;
              v75 = v44;
              if (v35)
              {
                goto LABEL_27;
              }

              v61 = v75;
              sub_1B039E440(&v148);
              v147[0] = v61;
              v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
              v62 = sub_1B0820A14();
              sub_1B0820A9C();
              v64 = v147;
              sub_1B0E45068();
              sub_1B039E440(v64);
              v161 = v150;
              v162 = v151;
              v76 = v150;
              v77 = v151;
              v78 = v74;
            }
          }

          else
          {
            v76 = v109;
            v77 = v108;
            v78 = v107;
          }

          v86 = v76;
          v87 = v77;
          v88 = v78;
        }

        v94 = v86;
        v95 = v87;
        v96 = v88;
        goto LABEL_21;
      }

      v18 = v107;
      (*(v114 + 16))(v116, v118, v132);
      sub_1B0E452E8();
      v97 = v163;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v144[1] = v97;
      v99 = swift_getWitnessTable();
      MEMORY[0x1B27270C0](v144, v133);
      v98 = v144[0];

      v143 = v98;
      v100 = &v52;
      MEMORY[0x1EEE9AC00](&v52);
      v19 = v111;
      v20 = v124;
      v101 = &v52 - 8;
      *(&v52 - 6) = v21;
      *(&v52 - 5) = v22;
      *(&v52 - 4) = v19;
      *(&v52 - 3) = v20;
      *(&v52 - 2) = v23;
      v102 = sub_1B0E462B8();
      v142[1] = WitnessTable;
      v24 = swift_getWitnessTable();
      v26 = sub_1B039CA88(sub_1B08209C8, v101, v102, &unk_1F26C8A98, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
      v103 = v18;
      v104 = v26;
      if (!v18)
      {
        v90 = v104;
        sub_1B039E440(&v143);
        v142[0] = v90;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
        v91 = sub_1B0820A14();
        sub_1B0820A9C();
        v93 = v142;
        sub_1B0E45068();
        sub_1B039E440(v93);
        v161 = v145;
        v162 = v146;
        v94 = v145;
        v95 = v146;
        v96 = v103;
LABEL_21:
        v60 = v96;
        v59 = v95;
        v58 = v94;
        (*(v114 + 8))(v118, v132);
        v139 = v58;
        v140 = v59;
        v141 = v60;
        goto LABEL_2;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v57 = v107;
    (*(v114 + 8))(v118, v132);
  }

  v45 = v107;
  sub_1B039E440(v160);
  v53 = v163;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v159[0] = v53;
  v54 = &v52;
  MEMORY[0x1EEE9AC00](&v52);
  v46 = v111;
  v47 = v122;
  v55 = &v52 - 8;
  *(&v52 - 6) = v48;
  *(&v52 - 5) = v49;
  *(&v52 - 4) = v46;
  *(&v52 - 3) = v47;
  *(&v52 - 2) = v50;
  swift_getWitnessTable();
  v56 = sub_1B0E44FF8();
  if (!v45)
  {
    v52 = v56;
    sub_1B039E440(v159);
    sub_1B039E440(&v163);
    return v52;
  }

LABEL_28:
  result = v54;
  __break(1u);
  return result;
}

uint64_t sub_1B0816394@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B08163D8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a2();
  sub_1B0820A9C();
  return sub_1B0E44958() & 1;
}

BOOL sub_1B081648C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v16 = a6;
  v15 = a1;
  v14 = a2;
  v12 = a3;
  v13 = a4;
  v11 = a3();
  v10 = (a3)(a2);
  v6 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v11, &v10, &type metadata for UID, v6);
}

uint64_t sub_1B0816558(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v18 = v2;
  v21 = *v2;
  v22 = v2[1];
  sub_1B0820B18(&v21, v17);
  v16[0] = v21;
  v16[1] = v22;
  KeyPath = swift_getKeyPath();

  v10 = swift_getKeyPath();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  v3 = sub_1B0820BAC();
  v12 = sub_1B08157B8(a1, a2, v16, sub_1B0820B9C, KeyPath, sub_1B0820BA4, v10, &unk_1F26C8718, v7, v3);

  sub_1B07F4A10();
  v15 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  v4 = sub_1B0820C34();
  v6 = sub_1B039CA88(sub_1B0817E70, 0, v13, &type metadata for MessageToDownload, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v14);
  sub_1B039E440(&v15);
  return v6;
}

BOOL sub_1B0816758(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) != 0)
  {
    return 1;
  }

  else
  {
    return (a4 & 1) == 0 && ((a2 & 1) != 0 || a3 < a1);
  }
}

void *sub_1B0816870(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v60 = 0;
  v34 = 0;
  v43 = type metadata accessor for MissingBodyDataRequest(0);
  v35 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = v28 - v35;
  v7 = type metadata accessor for MessagesMissingAllBodyData(v6);
  v37 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v38 = (v28 - v37);
  v71 = v28 - v37;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v51 = *(*(v45 - 8) + 64);
  v46 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v28 - v46;
  v48 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v49 = (v28 - v48);
  v50 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v52 = v28 - v50;
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v54 = v28 - v53;
  v70 = v28 - v53;
  v69 = v11;
  v67 = v12;
  v68 = v13;
  v66 = v14;
  v65 = v15;
  v64 = v5;
  v62 = *(v11 + *(v16 + 24));
  v61 = 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1B0E46B78();
  v55 = 2 * v63;
  if ((v63 * 2) >> 64 == (2 * v63) >> 63)
  {
    v60 = v55;
    v28[1] = __dst;
    memcpy(__dst, v33, 0x2AuLL);
    sub_1B07F48B4(__dst, v59);
    sub_1B0813728(v49);
    sub_1B07F4A10();
    sub_1B03D08AC(v41, v47);
    MessageIdentifierSet.union(_:)(v47, v52);
    sub_1B03D09B8(v47);
    sub_1B03D09B8(v49);
    sub_1B03D08AC(v44, v49);
    MessageIdentifierSet.union(_:)(v49, v54);
    sub_1B03D09B8(v49);
    sub_1B03D09B8(v52);
    sub_1B03D08AC(v54, v52);
    sub_1B07D023C(v52, *(v44 + *(v43 + 20)), *(v44 + *(v43 + 20) + 8) & 1, v55, *(v44 + *(v43 + 28)), v36);
    v39(v36);
    sub_1B03D09B8(v36);
    v18 = v44 + *(v43 + 20);
    v30 = *v18;
    v31 = *(v18 + 8);
    v29 = *v38;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58 = v29;
    v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    sub_1B0820C34();
    v19 = sub_1B0E45748();
    v20 = v33;
    v32 = v19;

    v21 = sub_1B0816FFC(v30, v31 & 1, v32 & 1);
    v22 = v42;
    v23 = v21;
    v24 = v38;
    v26 = v25;
    v27 = v41;
    v56 = v23;
    v57 = v26;
    v20[4] = v23;
    *(v20 + 40) = v26;
    *(v20 + 41) = HIBYTE(v26) & 1;
    sub_1B08170E0(v24, v27, v22);
    sub_1B0820CBC(v38);
    return sub_1B03D09B8(v54);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0816E60(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v15 = a2;
  v18 = a3;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v20 - 8) + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v10 - v11;
  v12 = v11;
  MEMORY[0x1EEE9AC00](v3);
  v4 = &v10 - v12;
  v16 = &v10 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v10 - v14;
  v26 = &v10 - v14;
  v24 = v17;
  v25 = v6;
  v23 = v7;
  v22 = v8;
  sub_1B03D08AC(v7, v4);
  sub_1B0817328(v19);
  sub_1B03D09B8(v16);
  v17(v19);
  sub_1B03D09B8(v19);
  MessageIdentifierSet.formUnion(_:)(v21, v20);
  return sub_1B03D09B8(v21);
}

uint64_t sub_1B0816FFC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t sub_1B08170E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v21 = a2;
  v24 = a3;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v14 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v22 = &v14 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v14 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v14 - v16;
  v33 = v8;
  v32 = v9;
  v31 = v10;
  v30 = v3;
  v17 = *v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = &v29;
  v29 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  v11 = sub_1B07F16DC();
  KeyedSequence.insert<A>(contentsOf:)(v20, v18, v19, v11);
  v12 = v23;
  sub_1B039E440(v20);
  v25 = type metadata accessor for MessagesMissingAllBodyData(0);
  sub_1B03D08AC(v26 + *(v25 + 20), v12);
  sub_1B03D08AC(v26 + *(v25 + 24), v22);
  MessageIdentifierSet.union(_:)(v22, v28);
  sub_1B03D09B8(v22);
  sub_1B03D09B8(v23);
  MessageIdentifierSet.formUnion(_:)(v28, v27);
  sub_1B03D09B8(v28);
  sub_1B03D08AC(v26 + *(v25 + 24), v28);
  MessageIdentifierSet.formUnion(_:)(v28, v27);
  return sub_1B03D09B8(v28);
}

void sub_1B0817328(uint64_t a1@<X8>)
{
  v70 = v130;
  v63 = a1;
  v64 = sub_1B081FCD4;
  v65 = sub_1B081FE34;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v74 = 0;
  v126 = 0;
  v124 = 0;
  v122 = 0;
  v110 = 0;
  v106 = 0;
  v102 = 0;
  v92 = 0;
  v93 = 0;
  v85 = 0;
  v77 = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v66 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v13 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v13 - v68;
  v134 = &v13 - v68;
  v133 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E0, &qword_1B0E9CCE0);
  v132 = sub_1B0E46A48();
  *v70 = 0;
  v131 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v71);
  sub_1B07D76A4();
  sub_1B0E45798();
  for (i = v74; ; i = v61)
  {
    v61 = i;
    sub_1B0E46518();
    v62 = v128[5];
    if (v129)
    {
      break;
    }

    v60 = v62;
    v56 = HIDWORD(v62);
    v57 = v62;
    v124 = v62;
    v58 = v132;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59 = sub_1B0E452A8();

    if (v59 >= 1000)
    {
      break;
    }

    v55 = *v70;
    if (v131)
    {
      v123 = __PAIR64__(v56, v57);
      sub_1B081FC84(v130, __SPAIR64__(v56, v57));
    }

    else
    {
      v54 = v55;
      v48 = HIDWORD(v55);
      v49 = v55;
      v122 = v55;
      v121 = v55;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      MessageIdentifierRange.upperBound.getter(v50, &v120);
      v52 = &v119;
      v119 = v120;
      v53 = sub_1B041C1E8();
      v51 = &type metadata for UID;
      static MessageIdentifier.max.getter(&type metadata for UID, v53);
      v118[0] = v118[1];
      if (static MessageIdentifier.< infix(_:_:)(v52, v118, v51, v53))
      {
        v46 = &type metadata for UID;
        static MessageIdentifier.min.getter(&type metadata for UID, v53);
        v47 = v116;
        v116[0] = v116[1];
        v115[1] = v57;
        v115[2] = v56;
        MessageIdentifierRange.lowerBound.getter(v50, v115);
        v114 = v115[0];
        if (static MessageIdentifier.< infix(_:_:)(v47, &v114, v46, v53))
        {
          v112[1] = v49;
          v112[2] = v48;
          MessageIdentifierRange.upperBound.getter(v50, v112);
          v111 = v112[0];
          v39 = &type metadata for UID;
          MessageIdentifier.advanced(by:)(1, &type metadata for UID, v53, &v113);
          v40 = v113;
          v110 = v113;
          v108[1] = v57;
          v108[2] = v56;
          MessageIdentifierRange.lowerBound.getter(v50, v108);
          v107 = v108[0];
          MessageIdentifier.advanced(by:)(-1, v39, v53, &v109);
          v106 = v109;
          v104 = v40;
          v103 = v109;
          static MessageIdentifier.... infix(_:_:)(&v104, &v103, v39, &v105);
          v41 = v105;
          v102 = v105;
          v42 = v132;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v101 = v42;
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
          sub_1B0820F9C();
          sub_1B0E44888();
          v44 = v98;
          v45 = v99;
          if (v100)
          {
          }

          else
          {
            v37 = v44;
            v38 = v45;
            v35 = v45;
            v34 = v44;
            v92 = v44;
            v93 = v45;

            v91 = v35;
            MessageIdentifierRange.upperBound.getter(v50, &v90);
            v36 = &v89;
            v89 = v90;
            v88 = v41;
            MessageIdentifierRange.lowerBound.getter(v50, &v87);
            v86 = v87;
            v2 = MessageIdentifier.distance(to:)(&v86, &type metadata for UID, v53);
            if (v2 <= 3)
            {
              v29 = v132;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v28 = sub_1B0E452A8();

              v30 = sub_1B0E452C8();

              v85 = v30;
              v83 = v35;
              MessageIdentifierRange.lowerBound.getter(v50, &v82);
              v31 = &v81;
              v81 = v82;
              v80 = v41;
              MessageIdentifierRange.upperBound.getter(v50, &v79);
              v78 = v79;
              static MessageIdentifier.... infix(_:_:)(v31, &v78, &type metadata for UID, &v84);
              v32 = v84;
              v77 = v84;
              v76[4] = v41;
              v5 = MessageIdentifierRange.count.getter(v50, v4);
              v33 = v34 + v5;
              if (__OFADD__(v34, v5))
              {
                goto LABEL_26;
              }

              v27 = v76;
              v7 = sub_1B0E45398();
              v8 = v32;
              *v9 = v33;
              v9[1] = v8;
              v7();
              goto LABEL_17;
            }
          }

          v97 = v41;
          v95 = MessageIdentifierRange.count.getter(v50, v3);
          v96 = v41;
          sub_1B0E452E8();
LABEL_17:
          v94 = __PAIR64__(v56, v57);
          sub_1B081FC84(v130, __SPAIR64__(v56, v57));
          continue;
        }
      }

      v117 = __PAIR64__(v56, v57);
      sub_1B081FC84(v130, __SPAIR64__(v56, v57));
    }
  }

  v10 = v61;
  sub_1B07D772C(v72);
  v23 = v132;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v128[0] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
  sub_1B0820D7C();
  v11 = sub_1B0E44FF8();
  v25 = v10;
  v26 = v11;
  if (v10)
  {
    __break(1u);
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v18 = v26;
  sub_1B039E440(v128);
  v127[4] = v18;
  sub_1B0820E04();
  sub_1B0E45738();
  v127[0] = v128[1];
  v127[1] = v128[2];
  v127[2] = v128[3];
  v127[3] = v128[4];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F0, &unk_1B0E9CCF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v12 = sub_1B0820E8C();
  v22 = sub_1B039CA88(v65, 0, v19, v20, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v21);
  v17 = v22;
  sub_1B03FD360(v127);
  v126 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = &v125;
  v125 = v17;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
  v15 = sub_1B041C1E8();
  sub_1B0820F14();
  MessageIdentifierSet.init<A>(_:)(v16, &type metadata for UID, v14);

  sub_1B039E440(&v132);
}

uint64_t sub_1B0817D00(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1B0817DB8(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1B0817E70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 17);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 17) = v5;
  return result;
}

uint64_t sub_1B0817EB0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = a2;
  v21 = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v9;
  v20[3] = v10;
  KeyPath = swift_getKeyPath();

  v14 = swift_getKeyPath();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
  v3 = sub_1B0821034();
  v16 = sub_1B08157B8(a1, a2, v20, sub_1B0821024, KeyPath, sub_1B082102C, v14, &unk_1F26C87A0, v11, v3);

  sub_1B07F4A10();
  v19 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2500, &qword_1B0E9CD50);
  v4 = sub_1B08210BC();
  v6 = sub_1B039CA88(sub_1B0817E70, 0, v17, &type metadata for MessageToDownload, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v18);
  sub_1B039E440(&v19);
  return v6;
}

uint64_t sub_1B08180D8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v59 = a3;
  v71 = a2;
  v66 = a1;
  v65 = a9;
  v58 = a9;
  v73 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v75 = 0;
  v82 = 0;
  v79 = 0;
  v67 = type metadata accessor for MissingBodyDataRequest(0);
  v68 = *(*(v67 - 1) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v70 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = &v32 - v70;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v32 - v70;
  v101 = &v32 - v70;
  v100 = v11;
  v98 = v71;
  v99 = v12;
  v96 = v13;
  v97 = v14;
  v94 = v15;
  v95 = v16;
  v93 = v17;
  v92 = v18;
  v91 = v9;
  sub_1B07F1114(v11, &v32 - v70);
  v86 = v73;
  v87 = 2000;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  for (i = v75; ; i = v42)
  {
    v56 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    sub_1B0E46518();
    if (v85)
    {
      v33 = v56;
      return sub_1B03D09B8(v72);
    }

    if (*(v72 + v67[7]) < 1)
    {
      v33 = v56;
      return sub_1B03D09B8(v72);
    }

    v19 = v56;
    sub_1B081886C(v72, v71, v59, v64, v58);
    sub_1B07F1114(v72, v69);
    sub_1B08194BC(v69, v60, v61, v58);
    sub_1B03D09B8(v69);
    v48 = *v57;
    v49 = v57[1];
    v44 = v49;
    v50 = v57[2];
    v45 = v50;
    v51 = v57[3];
    v46 = v51;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v83 = 0;
    v53 = &v32;
    MEMORY[0x1EEE9AC00](&v32);
    v47 = &v30;
    v52 = sub_1B08207A0();
    v31 = v52;
    KeyedSequence.reduce<A>(into:_:)(&v83, sub_1B0821144, v47, v51, &v84, &unk_1F26C87A0, MEMORY[0x1E69E6530]);
    v54 = v19;
    v55 = v53;
    if (v19)
    {
      break;
    }

    v82 = v84;
    if (v84 >= *(v72 + v67[6]))
    {
      v33 = v54;
      return sub_1B03D09B8(v72);
    }

    v20 = v54;
    v37 = v57[4];
    v38 = v57[5];
    v34 = v38;
    v39 = v57[6];
    v35 = v39;
    v40 = v57[7];
    v36 = v40;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v80 = 0;
    v41 = &v32;
    MEMORY[0x1EEE9AC00](&v32);
    v31 = v21;
    KeyedSequence.reduce<A>(into:_:)(&v80, sub_1B082116C, &v30, v22, &v81, &unk_1F26C0960, MEMORY[0x1E69E6530]);
    v42 = v20;
    v43 = v41;
    if (v20)
    {
      goto LABEL_16;
    }

    v79 = v81;
    if (v81 >= 1)
    {
      v23 = v57 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 28);
      v24 = *v23;
      v25 = v23[8];
      LOBYTE(v23) = v23[9];
      v26 = v72 + v67[5];
      v27 = *v26;
      v28 = *(v26 + 8);
      v77 = v24;
      LOBYTE(v78) = v25;
      HIBYTE(v78) = v23;
      if (sub_1B0816758(v27, v28, v24, v78))
      {
        continue;
      }
    }

    v33 = v42;
    return sub_1B03D09B8(v72);
  }

  __break(1u);
LABEL_16:
  result = v43;
  __break(1u);
  return result;
}

uint64_t sub_1B081886C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a1;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = a5;
  v77 = sub_1B07E07B4;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v119 = 0;
  v78 = 0;
  v81 = 0;
  v92 = type metadata accessor for MissingBodyDataRequest(0);
  v79 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = &v46 - v79;
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult(v6);
  v83 = (*(*(FragmentedMessagesResult - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v84 = (&v46 - v83);
  v130 = &v46 - v83;
  v85 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(v7);
  v86 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v46 - v86;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v108 = *(*(v94 - 8) + 64);
  v95 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v46 - v95;
  v97 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v46 - v97;
  v99 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v100 = (&v46 - v99);
  v101 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v46 - v101;
  v103 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v46 - v103;
  v105 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v46 - v105;
  v107 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v46 - v107;
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v46 - v110;
  v129 = &v46 - v110;
  v128 = v15;
  v126 = v16;
  v127 = v17;
  v125 = v18;
  v124 = v19;
  v123 = v5;
  v121 = *(v15 + *(v20 + 24));
  v120 = 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1B0E46B78();
  v112 = 2 * v122;
  if ((v122 * 2) >> 64 == (2 * v122) >> 63)
  {
    v119 = v112;
    for (i = v78; ; i = v65)
    {
      v74 = i;
      if (*(v93 + *(v92 + 28)) <= 0)
      {
        v73 = 0;
      }

      else
      {
        v68 = *(v76 + 4);
        v69 = *(v76 + 5);
        v70 = *(v76 + 6);
        v71 = *(v76 + 7);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B08207A0();
        v72 = KeyedSequence.count.getter(v68, v69, v70, v71, &type metadata for UID, &unk_1F26C0960);

        result = v72;
        v73 = v72 < v112;
      }

      if (v73)
      {
        v22 = &v76[*(v85 + 28)];
        v23 = *v22;
        v24 = v22[8];
        LOBYTE(v22) = v22[9];
        v25 = v93 + *(v92 + 20);
        v26 = *v25;
        LOBYTE(v25) = *(v25 + 8);
        v113 = v23;
        LOBYTE(v114) = v24;
        HIBYTE(v114) = v22 & 1;
        result = sub_1B0816758(v26, v25 & 1, v23, v114);
        v67 = result;
      }

      else
      {
        v67 = 0;
      }

      if ((v67 & 1) == 0)
      {
        break;
      }

      v27 = v74;
      sub_1B07F4C24(v76, v87);
      sub_1B08138C0(v100);
      sub_1B07F4FB8(v87);
      sub_1B03D08AC(v91, v98);
      MessageIdentifierSet.union(_:)(v98, v102);
      sub_1B03D09B8(v98);
      sub_1B03D09B8(v100);
      MessageIdentifierSet.union(_:)(v90, v104);
      sub_1B03D09B8(v102);
      v59 = *(v76 + 4);
      v60 = *(v76 + 5);
      v61 = *(v76 + 6);
      v62 = *(v76 + 7);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v118[1] = v59;
      v118[2] = v60;
      v118[3] = v61;
      v118[4] = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
      v28 = sub_1B0821194();
      result = sub_1B07CAF78(v77, 0, v63, &type metadata for UID, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v64);
      v65 = v27;
      v66 = result;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }

      v51 = v66;
      sub_1B07F4A10();
      v54 = v118;
      v118[0] = v51;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
      v53 = sub_1B074B97C();
      sub_1B07F193C();
      sub_1B0E46098();
      MessageIdentifierSet.union(_:)(v96, v106);
      sub_1B03D09B8(v96);
      sub_1B03D09B8(v104);
      sub_1B03D08AC(v93, v102);
      MessageIdentifierSet.union(_:)(v102, v109);
      sub_1B03D09B8(v102);
      sub_1B03D09B8(v106);
      sub_1B03D08AC(&v76[*(v85 + 24)], v102);
      MessageIdentifierSet.subtracting(_:)(v102, v111);
      sub_1B03D09B8(v102);
      sub_1B03D09B8(v109);
      sub_1B03D08AC(v111, v102);
      v29 = v93 + *(v92 + 20);
      v55 = *v29;
      v56 = *(v29 + 8);
      v30 = sub_1B07D0230();
      sub_1B07D023C(v102, v55, v56 & 1, v112, v30, v80);
      v88(v80);
      result = sub_1B03D09B8(v80);
      v31 = *(v84 + *(FragmentedMessagesResult + 24));
      v57 = (v93 + *(v92 + 28));
      v32 = __OFSUB__(*v57, v31);
      v58 = *v57 - v31;
      v33 = v32;
      if (v33)
      {
        goto LABEL_19;
      }

      v34 = v84;
      v35 = v93;
      v36 = v92;
      *v57 = v58;
      v37 = v35 + *(v36 + 20);
      v48 = *v37;
      v49 = *(v37 + 8);
      v47 = *v34;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v117 = v47;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
      sub_1B07F18B4();
      v38 = sub_1B0E45748();
      v39 = v76;
      v50 = v38;

      v40 = sub_1B0816FFC(v48, v49 & 1, v50 & 1);
      v41 = v84;
      v43 = v42;
      v44 = v91;
      v115 = v40;
      v116 = v43;
      v45 = &v39[*(v85 + 28)];
      *v45 = v40;
      v45[8] = v43;
      v45[9] = HIBYTE(v43) & 1;
      sub_1B081A03C(v41, v44);
      sub_1B082121C(v84);
      sub_1B03D09B8(v111);
      result = v65;
    }
  }

  else
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08194BC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v105 = &v149;
  v112 = &v133;
  v111 = a4;
  v110 = a3;
  v109 = a2;
  v113 = a1;
  v107 = 0;
  memset(&v148[1], 0, 48);
  v108 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0u;
  v140 = 0u;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0u;
  v133 = 0u;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v116 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v45 - v118;
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v45 - v118;
  *(v6 + 304) = &v45 - v118;
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v45 - v118;
  v9[37] = v8;
  v9[35] = v10;
  v9[36] = v11;
  v9[34] = v12;
  v9[33] = v4;
  v120 = v4[4];
  v122 = v4[5];
  v123 = v4[6];
  v124 = v4[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v121 = sub_1B08207A0();
  v125 = KeyedSequence.isEmpty.getter();

  if (v125)
  {
    return v108;
  }

  v13 = v108;
  v99 = *v106;
  v100 = v106[1];
  v96 = v100;
  v101 = v106[2];
  v97 = v101;
  v102 = v106[3];
  v98 = v102;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v112 + 31) = 0;
  v103 = &v45;
  MEMORY[0x1EEE9AC00](&v45);
  v44 = v14;
  KeyedSequence.reduce<A>(into:_:)(v147, sub_1B0821144, &v43, v15, v148, &unk_1F26C87A0, MEMORY[0x1E69E6530]);
  v104 = v13;
  if (v13)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = v68;
    __break(1u);
    goto LABEL_32;
  }

  v94 = *(v112 + 32);
  *(v112 + 29) = v94;
  result = type metadata accessor for MissingBodyDataRequest(0);
  v17 = *(v113 + *(result + 24));
  v18 = v17 - v94;
  v19 = __OFSUB__(v17, v94);
  v95 = v18;
  if (!v19)
  {
    v20 = v95;
    *(v112 + 28) = v95;
    if (v20 >= 1)
    {
      result = 2 * v95;
      v21 = __OFADD__(v95, v95);
      v93 = 2 * v95;
      if (v21)
      {
        goto LABEL_33;
      }

      v22 = v104;
      sub_1B03D08AC(v113, v119);
      v88 = sub_1B081A46C(v93, v119);
      v87 = v88;
      sub_1B03D09B8(v119);
      v23 = v112;
      v24 = v88;
      *(v112 + 27) = v88;
      *(v23 + 26) = v24;
      sub_1B041C1E8();
      MessageIdentifierSet.init()();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
      v89 = v90;
      v91 = sub_1B07F19EC();
      sub_1B0E44FD8();
      v92 = v22;
      if (!v22)
      {
        v85 = v109(v117);
        v84 = v85;
        *(v112 + 25) = v85;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B043CF70();
        sub_1B0E445C8();
        v25 = v112;
        v26 = v92;
        v27 = *v105;
        v28 = *(v105 + 1);
        *(v112 + 24) = *(v105 + 4);
        v25[11] = v28;
        v25[10] = v27;
        for (i = v26; ; i = v47)
        {
          v79 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2510, &qword_1B0E9CD60);
          sub_1B0E446D8();
          v80 = *(v112 + 16);
          v81 = *(v112 + 17);
          v82 = *(v112 + 18);
          v83 = *(v112 + 19);
          if (v83 == 1)
          {
            break;
          }

          v75 = v80;
          v76 = v81;
          v77 = v82;
          v78 = v83;
          v29 = v112;
          v30 = v81;
          v31 = v82;
          v32 = v83;
          v70 = v83;
          v71 = v82;
          v72 = v81;
          v73 = v80;
          v139 = v80;
          *(v112 + 12) = v81;
          *(v29 + 13) = v31;
          *(v29 + 14) = v32;
          v74 = sub_1B07FECD8(v30, v31, v32);
          if (!v74 || v74 == 1)
          {
            v33 = v79;
            HIDWORD(v127) = v73;
            _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
            MessageIdentifierSet.remove(_:)(&v127 + 4, v114, &v128);
            v126 = v73;
            MessageIdentifierSet.insert(_:)(&v127, &v126, v114);
            v69 = v33;
          }

          else
          {
            v34 = v79;
            *(v112 + 6) = v87;
            v66 = &v45;
            MEMORY[0x1EEE9AC00](&v45);
            LODWORD(v44) = v35;
            sub_1B0E44FB8();
            v67 = v34;
            v68 = v66;
            if (v34)
            {
              goto LABEL_31;
            }

            v61 = *(v112 + 7);
            v62 = *(v112 + 8);
            v63 = *(v112 + 9);
            v64 = *(v112 + 10);
            v65 = *(v112 + 11);
            if ((v63 & 0xFF00) != 0x200)
            {
              v55 = v61;
              v56 = v62;
              v57 = v63;
              v58 = v63 >> 8;
              v59 = v64;
              v60 = v65;
              v36 = v71;
              v37 = v112;
              v38 = v65;
              v53 = v65;
              v52 = v64;
              v49 = v62;
              v48 = v61;
              LODWORD(v133) = v61;
              *(&v133 + 1) = v62;
              v50 = v63 & 1;
              LOWORD(v134) = v63 & 0x101;
              v51 = BYTE1(v63) & 1;
              *(v112 + 3) = v64;
              *(v37 + 4) = v38;
              sub_1B07F200C(v36);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v130 = v48;
              v131 = v49;
              LOBYTE(v132) = v50;
              HIBYTE(v132) = v51;
              sub_1B07F3D8C(v48, v49, v132, v52, v53, v72, v71, v70, v150);
              v39 = *(v105 + 40);
              v40 = *(v105 + 56);
              v41 = *(v105 + 72);
              v129[3] = *(v105 + 88);
              v129[2] = v41;
              v129[1] = v40;
              v129[0] = v39;
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
              v54 = v129;
              KeyedSequence.insert(_:)(v129, v42);
              sub_1B082085C(v54);
            }

            v69 = v67;
          }

          v47 = v69;
          sub_1B07F2124(v71);
        }

        sub_1B06B91B0();

        sub_1B03D09B8(v117);

        return v79;
      }

      goto LABEL_30;
    }

    return v104;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1B0819DAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v13 = a3;
  v19 = 0;
  v18 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v8 - v12;
  v19 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v18 = v13;
  sub_1B03D08AC(v13, &v8 - v12);
  v17 = sub_1B07CF88C();
  v16 = MessageIdentifierSet.contains(_:)(&v17, v14);
  sub_1B03D09B8(v15);
  result = v16;
  if ((v16 & 1) == 0)
  {
    v6 = __OFADD__(*v11, 1);
    v9 = *v11 + 1;
    v7 = v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *v11 = v9;
    }
  }

  return result;
}

uint64_t sub_1B0819EF4(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8[2] = a2;
  v11 = a3;
  v17 = 0;
  v16 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v8 - v10;
  v17 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v16 = v11;
  sub_1B03D08AC(v11, v8 - v10);
  v15 = sub_1B07CF88C();
  v14 = MessageIdentifierSet.contains(_:)(&v15, v12);
  sub_1B03D09B8(v13);
  result = v14;
  if ((v14 & 1) == 0)
  {
    v6 = __OFADD__(*v9, 1);
    v8[0] = *v9 + 1;
    v7 = v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *v9 = v8[0];
    }
  }

  return result;
}

uint64_t sub_1B081A03C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v36 = 0;
  v40 = sub_1B081A820;
  v27 = sub_1B081A88C;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v45 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v14 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v34 = v14 - v33;
  v51 = v14 - v33;
  v50 = v5;
  v49 = v6;
  v48 = v2;
  v35 = *v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2518, &qword_1B0E9CD68);
  v7 = sub_1B07F18B4();
  v8 = sub_1B039CA88(v40, v36, v37, v38, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v39);
  v41 = 0;
  v42 = v8;
  v22 = v8;
  sub_1B039E440(&v47);
  v25 = &v46;
  v46 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2520, &qword_1B0E9CD70);
  v24 = sub_1B043CF70();
  sub_1B08212D0();
  v26 = sub_1B0E44718();
  v21 = v26;
  v45 = v26;
  v16 = &type metadata for UID;
  v17 = &unk_1F26C0960;
  v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[3] = &v44;
  v44 = v9;
  v14[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2528, &qword_1B0E9CD78);
  v14[2] = sub_1B074B97C();
  sub_1B0821358();
  sub_1B0E46098();
  v15 = 0;
  _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  MessageIdentifierSet.subtract(_:)(v34);
  MessageIdentifierSet.formUnion(_:)(v34, v30);
  FragmentedMessagesResult = type metadata accessor for FindFragmentedMessagesResult(v15);
  sub_1B03D08AC(v29 + *(FragmentedMessagesResult + 20), v32);
  MessageIdentifierSet.formUnion(_:)(v32, v30);
  sub_1B03D09B8(v32);
  v11 = sub_1B0E446B8();
  v20 = &v43;
  v43 = v11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2530, &qword_1B0E9CD80);
  v12 = sub_1B08213E0();
  KeyedSequence.insert<A>(contentsOf:)(v20, v18, v19, v12);
  sub_1B039E440(v20);
  sub_1B03D09B8(v34);
}

uint64_t *sub_1B081A46C(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v19 = 0;
  v33 = a1;
  v32 = a2;
  v31 = v2;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[0] = v6;
  v30[1] = v7;
  v30[2] = v8;
  v30[3] = v9;
  KeyPath = swift_getKeyPath();

  v13 = swift_getKeyPath();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2508, &qword_1B0E9CD58);
  v3 = sub_1B0821194();
  v15 = sub_1B08157B8(a1, a2, v30, sub_1B0820B9C, KeyPath, sub_1B0820BA4, v13, &unk_1F26C0960, v10, v3);

  sub_1B07F4A10();
  v29 = v15;
  v26[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v4 = sub_1B07F19EC();
  MEMORY[0x1B27270C0](v26, v16, v4);
  v25 = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2538, &qword_1B0E9CDD0);
  sub_1B0821468();
  sub_1B0E46728();
  sub_1B039E440(&v25);
  v22 = v26[2];
  v23 = v26[3];
  v24 = v26[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2540, &qword_1B0E9CDD8);
  sub_1B0E464B8();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2548, &qword_1B0E9CDE0);
    sub_1B0E464C8();
    if (v21)
    {
      break;
    }

    v19 = v20;
    v17 = v20;
    KeyedSequence.removeElement(forKey:)(&v17, v10, v18);
  }

  sub_1B07F2650();
  return v15;
}

uint64_t sub_1B081A780(const void *a1, int a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B07CF88C();
  sub_1B0714E4C();
  return sub_1B0E45ED8() & 1;
}

void *sub_1B081A820@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  *a2 = sub_1B07CF88C();
  return memcpy(a2 + 2, __dst, 0x28uLL);
}

uint64_t sub_1B081A88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v17[5], 0, 0x28uLL);
  memset(v17, 0, 0x28uLL);
  result = a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  LODWORD(v17[5]) = *a1;
  v17[6] = v4;
  LOBYTE(v17[7]) = v5 & 1;
  BYTE1(v17[7]) = v6;
  v17[8] = v7;
  v17[9] = v8;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  LODWORD(v17[0]) = *a2;
  *a3 = v17[0];
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 17) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_1B081A980(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = a1[6];
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  sub_1B07F2124(v4);
}

uint64_t sub_1B081AA14@<X0>(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  sub_1B0824F18(a2, v4);
  memcpy(__dst, v4, sizeof(__dst));
  *a1 = sub_1B07CF88C();
  return sub_1B082085C(__dst);
}

uint64_t sub_1B081AA7C(const void *a1, uint64_t a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0824F18(__dst, v5);

  memcpy(v4, __dst, sizeof(v4));
  swift_getAtKeyPath();
  sub_1B082085C(v4);

  return v3;
}

uint64_t sub_1B081AB1C(const void *a1, uint64_t a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  sub_1B0824F18(__dst, v5);

  memcpy(v4, __dst, sizeof(v4));
  swift_getAtKeyPath();
  sub_1B082085C(v4);

  return v3;
}

BOOL sub_1B081ABBC(uint64_t a1, const void *a2)
{
  v6 = a1;
  memcpy(__dst, a2, sizeof(__dst));
  v4 = sub_1B07CF88C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.insert(_:)(v5, &v4, v2);
}

uint64_t sub_1B081AC40(uint64_t a1, __int16 a2)
{
  v8 = 0;
  v12 = a1;
  v13 = a2;
  v9 = a1;
  v10 = a2;
  v11 = HIBYTE(a2) & 1;
  if (a2 & 0x100) != 0 || (a2)
  {
    return sub_1B0E44838();
  }

  v8 = a1;
  v7[0] = sub_1B0E46A28();
  v7[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v7);
  return sub_1B0E44C88();
}

uint64_t sub_1B081AE1C()
{
  LOBYTE(v2) = *(v0 + 8);
  HIBYTE(v2) = *(v0 + 9) & 1;
  return sub_1B081AC40(*v0, v2);
}

uint64_t sub_1B081AE64()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1B081AE90(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_1B081AF04(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(_s19CachedMailboxValuesVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B07F3F74(v2, &v5 - v5);
  v3 = _s5CacheV5EntryVMa(v6);
  sub_1B07F436C(v7, v1 + *(v3 + 20));
  return sub_1B07F45A0(v8);
}

uint64_t sub_1B081AFAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v15 = 0;
  v14 = 0;
  v6 = 0;
  v7 = (*(*(_s19CachedMailboxValuesVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = &v6 - v7;
  v9 = _s5CacheV5EntryVMa(v2);
  v8 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = v3;

  v4 = v10;
  *v13 = v12;
  sub_1B07F46DC(v4);
  sub_1B08203F4(v10, &v13[*(v9 + 20)]);
  sub_1B08215D8(v13, v11);

  return sub_1B082189C(v13);
}

uint64_t sub_1B081B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v29 = a1;
  v28 = a2;
  v26 = a3;
  v24 = a4;
  v25 = a5;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v36 = 0;
  v44 = a6;
  v8 = v27;
  v30 = _s5CacheV5EntryVMa(0);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v18 - v31);
  v43 = *v9;
  v41 = v10;
  v42 = v11;
  v39 = v12;
  v40 = v13;
  v38 = v7;
  v37 = v43;
  result = sub_1B081B384(&v37, v10, v11);
  v33 = v8;
  v34 = result;
  v35 = v8;
  if (!v8)
  {
    v18[2] = v34;
    v36 = v34;
    sub_1B0E453A8();
    v19 = *v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    v15 = sub_1B0E45398();
    v16 = v33;
    v20 = v15;
    v24(v19, v17 + *(v30 + 20));
    v21 = v16;
    v22 = v16;
    if (v16)
    {
      v18[0] = v22;
    }

    v20();

    return sub_1B082189C(v32);
  }

  return result;
}

uint64_t sub_1B081B384(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v53 = sub_1B08219F8;
  v37 = "Fatal error";
  v38 = "Range requires lowerBound <= upperBound";
  v39 = "Swift/Range.swift";
  v69 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v59 = 0;
  v57 = 0;
  v43 = _s5CacheV5EntryVMa(0);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v45 = (v14 - v44);
  v69 = v14 - v44;
  v46 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v47 = (v14 - v46);
  v49 = *v6;
  v68 = v49;
  v66 = v7;
  v67 = v8;
  v65 = v3;
  v48 = *v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v63[0] = v48;
  v50 = &v55;
  v56 = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821A24();
  v9 = v52;
  sub_1B0E456F8();
  v54 = v9;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_1B039E440(v63);
    v35 = v63[1];
    if ((v64 & 1) == 0)
    {
      v34 = v35;
      v31 = v35;
      v57 = v35;
      sub_1B0E453A8();
      v32 = *v47;

      v33 = sub_1B081BAC0();

      sub_1B082189C(v47);
      if (v33)
      {
        v29 = v31;
        v30 = v54;
        return v29;
      }

      sub_1B0E45308();
      sub_1B082189C(v47);
    }

    v10 = v54;
    v62 = v49;
    v11 = v41(&v62);
    v26 = v10;
    v27 = v11;
    v28 = v10;
    if (!v10)
    {
      sub_1B081AFAC(v27, v45);
      v24 = *v36;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = sub_1B0E452A8();

      if (v25 >= 5)
      {
        v18 = *v36;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0E452A8();

        if (v19 < 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v14[3] = v60;
        v60[0] = 0;
        v60[1] = v19;
        v14[1] = v36 + 1;
        v14[2] = sub_1B039A4F8();
        sub_1B0714728();
        sub_1B0E46588();
        v17 = v61;
        v59 = v61;
        sub_1B08215D8(v45, v47);
        v16 = v58;
        v15 = sub_1B0E45398();
        sub_1B0821AAC(v47, v12);
        v15();
        sub_1B082189C(v45);
        v29 = v17;
        v30 = v26;
      }

      else
      {
        sub_1B08215D8(v45, v47);
        sub_1B0E452E8();
        v22 = *v36;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = *v36;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = sub_1B0E452A8();

        v23 = sub_1B0E452C8();

        sub_1B082189C(v45);
        v29 = v23;
        v30 = v26;
      }

      return v29;
    }
  }

  return v14[0];
}

BOOL sub_1B081BA20(uint64_t *a1, id a2)
{
  v3 = *a1;

  v4 = *(v3 + 16);
  MEMORY[0x1E69E5928](v4);

  v6 = [v4 databaseID];
  MEMORY[0x1E69E5920](v4);
  return v6 == a2;
}

uint64_t sub_1B081BAC0()
{
  v43 = 0;
  v1 = _s18MailboxPersistenceVMa(0);
  v33 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v6 - v33;
  v43 = v0;
  v35 = *(v0 + 16);
  MEMORY[0x1E69E5928](v35);
  v37 = [v35 isValid];
  MEMORY[0x1E69E5920](v35);

  if ((v37 & 1) == 0)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v31 = *(v36 + 16);
  MEMORY[0x1E69E5928](v31);
  v32 = [v31 account];
  MEMORY[0x1E69E5920](v31);
  if (v32)
  {
    v30 = v32;
    v28 = v32;
    v29 = [v32 identifier];
    if (v29)
    {
      v27 = v29;
      v20 = v29;
      v21 = sub_1B0E44AD8();
      v22 = v2;
      MEMORY[0x1E69E5920](v20);
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v19 = v24;
    v18 = v23;
    MEMORY[0x1E69E5920](v28);
    v25 = v18;
    v26 = v19;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v3 = v34;
  v16 = v26;
  v15 = v25;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03F4D78(v36 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence, v3);
  v14 = sub_1B03F4EB8();
  v17 = v4;
  sub_1B03F4F08(v34);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41[0] = v15;
  v41[1] = v16;
  *&v42 = v14;
  *(&v42 + 1) = v17;
  if (!v16)
  {
    if (!*(&v42 + 1))
    {
      sub_1B03B1198(v41);
      v13 = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_1B070B280(v41, &v40);
  if (!*(&v42 + 1))
  {
    sub_1B03B1198(&v40);
LABEL_15:
    sub_1B06FF6F0(v41);
    v13 = 0;
    goto LABEL_14;
  }

  v11 = &v39;
  v39 = v40;
  v10 = &v38;
  v38 = v42;
  v12 = MEMORY[0x1B2726DE0](v40, *(&v40 + 1), v42, *(&v42 + 1));
  sub_1B03B1198(v10);
  sub_1B03B1198(v11);
  sub_1B03B1198(v41);
  v13 = v12;
LABEL_14:
  v8 = v13;

  v9 = v8;
LABEL_18:
  v7 = v9;

  return v7 & 1;
}

uint64_t sub_1B081BEC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  v32 = a1;
  v31 = a2;
  v28 = a3;
  v29 = a4;
  v26 = a5;
  v27 = a6;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v47 = a7;
  v9 = v30;
  v33 = _s5CacheV5EntryVMa(0);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v35 = (v20 - v34);
  v45 = v10;
  v46 = v11;
  v43 = v12;
  v44 = v13;
  v41 = v14;
  v42 = v15;
  v40 = v8;
  result = sub_1B081C15C(v10, v11, v12, v13);
  v36 = v9;
  v37 = result;
  v38 = v9;
  if (!v9)
  {
    v20[3] = v37;
    v39 = v37;
    sub_1B0E453A8();
    v21 = *v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    v17 = sub_1B0E45398();
    v18 = v36;
    v22 = v17;
    v26(v21, v19 + *(v33 + 20));
    v23 = v18;
    v24 = v18;
    if (v18)
    {
      v20[1] = v24;
    }

    v22();

    return sub_1B082189C(v35);
  }

  return result;
}

uint64_t sub_1B081C15C(uint64_t a1, unsigned int a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v50 = a1;
  v51 = a2;
  v42 = a3;
  v43 = a4;
  v55 = sub_1B0821D18;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v62 = 0;
  v60 = 0;
  v44 = _s5CacheV5EntryVMa(0);
  v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v46 = (v16 - v45);
  v72 = v16 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v48 = (v16 - v47);
  v70 = v7;
  v71 = v8;
  v68 = v9;
  v69 = v10;
  v67 = v4;
  v49 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v65[0] = v49;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = &v57;
  v58 = v50;
  v59 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821A24();
  v11 = v54;
  sub_1B0E456F8();
  v56 = v11;
  if (v11)
  {

    __break(1u);
  }

  else
  {

    sub_1B039E440(v65);
    v37 = v65[1];
    if ((v66 & 1) == 0)
    {
      v36 = v37;
      v33 = v37;
      v60 = v37;
      sub_1B0E453A8();
      v34 = *v48;

      v35 = sub_1B081BAC0();

      sub_1B082189C(v48);
      if (v35)
      {
        v31 = v33;
        v32 = v56;
        return v31;
      }

      sub_1B0E45308();
      sub_1B082189C(v48);
    }

    v12 = v56;
    v13 = v42(v50, v51);
    v28 = v12;
    v29 = v13;
    v30 = v12;
    if (!v12)
    {
      sub_1B081AFAC(v29, v46);
      v26 = *v38;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = sub_1B0E452A8();

      if (v27 >= 5)
      {
        v20 = *v38;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = sub_1B0E452A8();

        if (v21 < 0)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v16[3] = v63;
        v63[0] = 0;
        v63[1] = v21;
        v16[1] = v38 + 1;
        v16[2] = sub_1B039A4F8();
        sub_1B0714728();
        sub_1B0E46588();
        v19 = v64;
        v62 = v64;
        sub_1B08215D8(v46, v48);
        v18 = v61;
        v17 = sub_1B0E45398();
        sub_1B0821AAC(v48, v14);
        v17();
        sub_1B082189C(v46);
        v31 = v19;
        v32 = v28;
      }

      else
      {
        sub_1B08215D8(v46, v48);
        sub_1B0E452E8();
        v24 = *v38;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = *v38;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = sub_1B0E452A8();

        v25 = sub_1B0E452C8();

        sub_1B082189C(v46);
        v31 = v25;
        v32 = v28;
      }

      return v31;
    }
  }

  return v16[0];
}

uint64_t sub_1B081C83C(uint64_t a1, uint64_t a2, int a3)
{

  v8 = sub_1B0829EAC();
  v5 = v3;

  v9 = static MailboxName.== infix(_:_:)(v8, v5, a2, a3);

  return v9 & 1;
}

uint64_t sub_1B081C8E0(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  sub_1B0821D48();
  sub_1B0821DD0();
  sub_1B0E45898();
}

uint64_t sub_1B081C9B8()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  _s5CacheV5EntryVMa(0);
  v3 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v3;
  sub_1B0713BE8();
  sub_1B0713BFC();
  PCG32Random.init(state:inc:)();
  v5 = v0;
  v6 = v1;
  sub_1B039E440(&v4);
  return v3;
}

void sub_1B081CA50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[0] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
  v4 = sub_1B0821A24();
  v5 = sub_1B039CA88(sub_1B081CB48, 0, v8, &unk_1F26C8B98, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v9);
  sub_1B039E440(v10);
  *a4 = v5;
}

uint64_t sub_1B081CB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v29 = a1;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v23 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v23 - v23;
  v24 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v23);
  v35 = &v23 - v24;
  v40 = 0;
  v25 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v34 = &v23 - v25;
  v26 = (*(*(_s19CachedMailboxValuesVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v30 = (&v23 - v26);
  v37 = _s19CachedMailboxValuesV15MissingBodyDataVMa(v4);
  v27 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v57 = &v23 - v27;
  v65 = &v23 - v27;
  v64 = v5;
  v28 = *v5;

  v58 = sub_1B0829EAC();
  v31 = v6;
  v62 = v58;
  v63 = v6;

  v7 = _s5CacheV5EntryVMa(v40);
  sub_1B07F3F74((v29 + *(v7 + 20)), v30);
  sub_1B07F3F74(v30, v57);
  sub_1B07F45A0(v30);
  v61[6] = MailboxName.debugDescription.getter(v58);
  v61[7] = v8;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v9 = v35;
  v32 = v61[11];
  v53 = sub_1B0E44EC8();
  v54 = v10;

  v33 = __dst;
  memcpy(__dst, v57, 0x2AuLL);
  sub_1B07F48B4(__dst, v61);
  v47 = sub_1B081CFF8(v33);
  v48 = v11;
  v49 = v12;
  v50 = v13;
  sub_1B07F4C24(&v57[*(v37 + 20)], v34);
  v51 = v66;
  sub_1B081D624(v34, v66);
  sub_1B03D08AC(&v57[*(v37 + 24)], v9);
  v52 = MessageIdentifierSet.count.getter();
  sub_1B03D09B8(v35);
  v14 = sub_1B0E46A28();
  v44 = &v59;
  v59 = v14;
  v60 = v15;
  v42 = "";
  v41 = 1;
  v16 = sub_1B0E44838();
  v36 = v17;
  MEMORY[0x1B2728B30](v16);

  sub_1B03D08AC(&v57[*(v37 + 24)], v39);
  sub_1B0E469E8();
  sub_1B03D09B8(v39);
  v18 = sub_1B0E44838();
  v43 = v19;
  MEMORY[0x1B2728B30](v18);

  v46 = v59;
  v45 = v60;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v44);
  v20 = sub_1B0E44C88();
  v56 = v67;
  sub_1B081DE70(v51, v53, v54, v47, v48, v49, v50, v52, v67, v20, v21);
  memcpy(v55, v56, 0x78uLL);
  sub_1B07F45A0(v57);
}

uint64_t sub_1B081CFF8(uint64_t *a1)
{
  v44 = a1;
  v48 = 0;
  v47 = sub_1B0813E78;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v58 = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v40 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v54 = &v20[-v40];
  v41 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v20[-v41];
  v62 = v3;
  v42 = 0;
  v60 = sub_1B0E46A28();
  v61 = v4;
  v5 = sub_1B0E44838();
  v43 = v6;
  MEMORY[0x1B2728B30](v5);

  sub_1B07F48B4(v44, v59);
  v49 = *v44;
  v50 = v44[1];
  v51 = v44[2];
  v52 = v44[3];
  sub_1B041C1E8();
  v53 = &type metadata for UID;
  MessageIdentifierSet.init()();
  sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v54, v47, v48, v52, v46, &unk_1F26C8718, v45);
  sub_1B03D09B8(v54);

  v36 = &v60;
  sub_1B0E469E8();
  sub_1B03D09B8(v46);
  v7 = sub_1B0E44838();
  v35 = v8;
  MEMORY[0x1B2728B30](v7);

  v38 = v60;
  v37 = v61;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v36);
  *&v39 = sub_1B0E44C88();
  *(&v39 + 1) = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v63 = v39;
  v65 = v44[4];
  v66 = *(v44 + 20);
  v67 = v65;
  v68 = v66;
  if ((v66 & 0x100) != 0)
  {
    *&v21 = sub_1B0E44838();
    *(&v21 + 1) = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v64 = v21;
    v32 = v21;
  }

  else
  {
    v34 = v67;
    if (v68)
    {
      *&v31 = sub_1B0E44838();
      *(&v31 + 1) = v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v64 = v31;
      v32 = v31;
    }

    else
    {
      v33 = v34;
      v24 = v34;
      v58 = v34;
      v22 = 18;
      v11 = sub_1B0E46A28();
      v27 = &v56;
      v56 = v11;
      v57 = v12;
      v25 = 1;
      v13 = sub_1B0E44838();
      v23 = v14;
      MEMORY[0x1B2728B30](v13);

      v55 = v24;
      sub_1B0E469F8();
      v15 = sub_1B0E44838();
      v26 = v16;
      MEMORY[0x1B2728B30](v15);

      v29 = v56;
      v28 = v57;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v27);
      *&v30 = sub_1B0E44C88();
      *(&v30 + 1) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v64 = v30;
      v32 = v30;
    }
  }

  *&v20[8] = v32;
  sub_1B07F4A10();
  sub_1B06FF6F0(&v63);
  return v39;
}

uint64_t sub_1B081D624@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  v81 = a1;
  v86 = 0;
  v85 = sub_1B081ABBC;
  v70 = sub_1B0813E78;
  memset(__b, 0, sizeof(__b));
  v101 = 0;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v71 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v72 = &v37 - v71;
  v73 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v37 - v73;
  v75 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v76 = (&v37 - v75);
  v77 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v37 - v77;
  v78 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v84 = (&v37 - v78);
  v101 = v10;
  v79 = 0;
  v99 = sub_1B0E46A28();
  v100 = v11;
  v12 = sub_1B0E44838();
  v80 = v13;
  MEMORY[0x1B2728B30](v12);

  v87 = *v81;
  v88 = v81[1];
  v89 = v81[2];
  v90 = v81[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82 = sub_1B041C1E8();
  v91 = &type metadata for UID;
  MessageIdentifierSet.init()();
  v93 = sub_1B08207A0();
  KeyedSequence.reduce<A>(into:_:)(v92, v85, v86, v90, v84, &unk_1F26C87A0, v83);
  v94 = 0;
  sub_1B03D09B8(v92);

  v55 = &v99;
  sub_1B0E469E8();
  sub_1B03D09B8(v84);
  v61 = "";
  v62 = 0;
  v60 = 1;
  v14 = sub_1B0E44838();
  v54 = v15;
  MEMORY[0x1B2728B30](v14);

  v57 = v99;
  v56 = v100;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v55);
  v58 = sub_1B0E44C88();
  v59 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = v58;
  __b[1] = v59;
  v97 = sub_1B0E46A28();
  v98 = v17;
  v18 = sub_1B0E44838();
  v63 = v19;
  MEMORY[0x1B2728B30](v18);

  v64 = v81[4];
  v65 = v81[5];
  v66 = v81[6];
  v67 = v81[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v68 = &type metadata for UID;
  MessageIdentifierSet.init()();
  KeyedSequence.reduce<A>(into:_:)(v74, v70, 0, v67, v76, &unk_1F26C0960, v83);
  sub_1B03D09B8(v74);

  v38 = &v97;
  sub_1B0E469E8();
  sub_1B03D09B8(v76);
  v44 = "";
  v42 = 0;
  v43 = 1;
  v20 = sub_1B0E44838();
  v37 = v21;
  MEMORY[0x1B2728B30](v20);

  v40 = v97;
  v39 = v98;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v38);
  v50 = sub_1B0E44C88();
  v51 = v22;
  v49 = __b;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[2] = v50;
  __b[3] = v51;
  v23 = sub_1B0E46A28();
  v46 = &v95;
  v95 = v23;
  v96 = v24;
  v25 = sub_1B0E44838();
  v41 = v26;
  MEMORY[0x1B2728B30](v25);

  v27 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(v42);
  sub_1B03D08AC(v81 + *(v27 + 24), v72);
  sub_1B0E469E8();
  sub_1B03D09B8(v72);
  v28 = sub_1B0E44838();
  v45 = v29;
  MEMORY[0x1B2728B30](v28);

  v48 = v95;
  v47 = v96;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v46);
  v53 = sub_1B0E44C88();
  v52 = v30;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[4] = v53;
  __b[5] = v52;
  sub_1B07F4FB8(v81);
  sub_1B0821E58();
  v31 = v59;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  v35 = v69;
  result = v53;
  *v69 = v58;
  v35[1] = v31;
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = result;
  v35[5] = v34;
  return result;
}

void *sub_1B081DE70@<X0>(void *__src@<X6>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  memcpy(__dst, __src, sizeof(__dst));
  __srca[0] = a2;
  __srca[1] = a3;
  __srca[2] = a4;
  __srca[3] = a5;
  __srca[4] = a6;
  __srca[5] = a7;
  __srca[6] = __dst[0];
  __srca[7] = __dst[1];
  __srca[8] = __dst[2];
  __srca[9] = __dst[3];
  __srca[10] = __dst[4];
  __srca[11] = __dst[5];
  __srca[12] = a8;
  __srca[13] = a10;
  __srca[14] = a11;
  return memcpy(a9, __srca, 0x78uLL);
}

uint64_t sub_1B081DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void sub_1B081E008(void *a1)
{
  sub_1B0821E9C(a1, v3);
  sub_1B0821F28(a1, (v1 + 48));
  sub_1B0821E58();
}

uint64_t sub_1B081E054()
{
  v2 = *(v0 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B081E08C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1B081E10C(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B081E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v25 = a2;
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25A8, &qword_1B0E9D830);
  v18 = *(v27 - 8);
  v19 = v27 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v23 = v13 - v20;
  v34 = v5;
  *&v32 = v6;
  *(&v32 + 1) = v7;
  *&v33 = v8;
  *(&v33 + 1) = v9;
  v21 = v5[3];
  v22 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v21);
  sub_1B0822024();
  sub_1B0E46D48();
  v10 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = 0;
  sub_1B0E46928();
  v28 = v10;
  v29 = v10;
  if (v10)
  {
    v13[2] = v29;

    return (*(v18 + 8))(v23, v27);
  }

  else
  {

    v11 = v28;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = 1;
    sub_1B0E46928();
    v13[4] = v11;
    v14 = v11;
    if (v11)
    {
      v13[1] = v14;
    }

    return (*(v18 + 8))(v23, v27);
  }
}

uint64_t sub_1B081E6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081E10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081E6F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081E2B0();
  *a1 = result;
  return result;
}

uint64_t sub_1B081E7EC(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = sub_1B0E44838();
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v15[0], v2, a1, a2);
  sub_1B03B1198(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = sub_1B0E44838();
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1B2726DE0](v14[0], v3, a1, a2);
  sub_1B03B1198(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13[0] = sub_1B0E44838();
  v13[1] = v4;
  v7 = MEMORY[0x1B2726DE0](v13[0], v4, a1, a2);
  sub_1B03B1198(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B081EB58(uint64_t a1)
{
  v18 = a1;
  v36 = 0;
  v35 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25B0, &unk_1B0E9D838);
  v19 = *(v29 - 8);
  v20 = v29 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v24 = v7 - v21;
  v36 = v2;
  v35 = v1;
  v22 = v2[3];
  v23 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v22);
  sub_1B082211C();
  sub_1B0E46D48();
  v3 = v26;
  v27 = *v25;
  v28 = v25[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34 = 0;
  sub_1B0E46928();
  v30 = v3;
  v31 = v3;
  if (v3)
  {
    v8 = v31;

    result = (*(v19 + 8))(v24, v29);
    v9 = v8;
  }

  else
  {

    v4 = v30;
    v14 = v25[2];
    v15 = v25[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = 1;
    sub_1B0E46928();
    v16 = v4;
    v17 = v4;
    if (v4)
    {
      v7[2] = v17;

      return (*(v19 + 8))(v24, v29);
    }

    else
    {

      v5 = v16;
      v10 = v25[4];
      v11 = v25[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = 2;
      sub_1B0E46928();
      v12 = v5;
      v13 = v5;
      if (v5)
      {
        v7[1] = v13;
      }

      return (*(v19 + 8))(v24, v29);
    }
  }

  return result;
}

uint64_t sub_1B081EE80(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x1B2726DE0](v21[0], v2, a1, a2);
  sub_1B03B1198(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v20[0], v3, a1, a2);
  sub_1B03B1198(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v19[0], v4, a1, a2);
  sub_1B03B1198(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18[0] = sub_1B0E44838();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v18[0], v5, a1, a2);
  sub_1B03B1198(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = sub_1B0E44838();
  v17[1] = v6;
  v9 = MEMORY[0x1B2726DE0](v17[0], v6, a1, a2);
  sub_1B03B1198(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1B081F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081E7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081F36C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081EA28();
  *a1 = result;
  return result;
}

uint64_t sub_1B081F5FC(uint64_t a1)
{
  v33 = v57;
  v34 = a1;
  v57[1] = 0;
  v57[0] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25A0, &qword_1B0E9D828);
  v35 = *(v45 - 8);
  v36 = v45 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v40 = v12 - v37;
  v3[1] = v2;
  *v3 = v1;
  v38 = v2[3];
  v39 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v38);
  sub_1B0822214();
  sub_1B0E46D48();
  v4 = v42;
  v43 = *v41;
  v44 = v41[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56 = 0;
  sub_1B0E46928();
  v46 = v4;
  v47 = v4;
  if (v4)
  {
    v15 = v47;

    result = (*(v35 + 8))(v40, v45);
    v16 = v15;
  }

  else
  {

    v5 = v41;
    v6 = v33;
    *(v33 + 4) = *(v41 + 1);
    *(v6 + 5) = *(v5 + 2);
    sub_1B075D098(v59, v55);
    v7 = *(v33 + 4);
    v30 = v54;
    v54[0] = v7;
    v54[1] = *(v33 + 5);
    v29 = &v53;
    v53 = 1;
    sub_1B0824D38();
    v8 = v46;
    sub_1B0E46958();
    v31 = v8;
    v32 = v8;
    if (v8)
    {
      v14 = v32;
      sub_1B06FF6F0(v54);
      result = (*(v35 + 8))(v40, v45);
      v16 = v14;
    }

    else
    {
      sub_1B06FF6F0(v54);
      v23 = __dst;
      v24 = 48;
      memcpy(__dst, v41 + 6, sizeof(__dst));
      sub_1B0821E9C(__dst, v52);
      v26 = v51;
      memcpy(v51, v23, v24);
      v25 = &v50;
      v50 = 2;
      sub_1B0824DB4();
      v9 = v31;
      sub_1B0E46958();
      v27 = v9;
      v28 = v9;
      if (v9)
      {
        v13 = v28;
        sub_1B0821E58();
        result = (*(v35 + 8))(v40, v45);
        v16 = v13;
      }

      else
      {
        sub_1B0821E58();
        v10 = v27;
        v49 = 3;
        sub_1B0E46948();
        v21 = v10;
        v22 = v10;
        if (v10)
        {
          v12[2] = v22;
        }

        else
        {
          v17 = v41[13];
          v18 = v41[14];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v48 = 4;
          sub_1B0E46928();
          v19 = 0;
          v20 = 0;
        }

        return (*(v35 + 8))(v40, v45);
      }
    }
  }

  return result;
}

uint64_t sub_1B081FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B081EE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B081FB84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B081F1F4();
  *a1 = result;
  return result;
}

uint64_t sub_1B081FC84(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

BOOL sub_1B081FCD4(uint64_t *a1, uint64_t *a2)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v6 = *a1;
  v7 = a1[1];
  v18 = v6;
  v19 = v7;
  v8 = *a2;
  v9 = a2[1];
  v16 = v8;
  v17 = v9;
  if (v8 >= v6)
  {
    if (v6 == v8)
    {
      v15 = v7;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      MessageIdentifierRange.lowerBound.getter(v4, &v14);
      v13 = v14;
      v12 = v9;
      MessageIdentifierRange.lowerBound.getter(v4, &v11);
      v10 = v11;
      v2 = sub_1B041C1E8();
      return static MessageIdentifier.< infix(_:_:)(&v13, &v10, &type metadata for UID, v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B081FE34@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 12);
  *a2 = *(result + 8);
  a2[1] = v2;
  return result;
}

void sub_1B081FE6C(uint64_t (*a1)(void))
{
  v12 = a1();
  v13 = sub_1B03B1F78(v12);
  if (!v13)
  {

    v6 = sub_1B0A18AE0(0);
LABEL_9:
    v14[0] = v6;
    sub_1B0E44838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    sub_1B0E448E8();

    sub_1B039E440(v14);
    return;
  }

  v15 = sub_1B0A188BC();
  sub_1B0A188EC(v13);
  if (v13 < 0)
  {
    __break(1u);
  }

  else if (v13 > 0)
  {
    for (i = 0; ; ++i)
    {
      has_malloc_size = _swift_stdlib_has_malloc_size();
      v7 = sub_1B082010C(i, has_malloc_size & 1, v12);
      sub_1B0A5D9E4(4);
      v14[1] = sub_1B0E44838();
      v14[2] = v2;

      v3 = SectionSpecifier.Part.debugDescription.getter(v7);
      MEMORY[0x1B2726E80](v3);

      v4 = sub_1B0E44838();
      MEMORY[0x1B2726E80](v4);

      v9 = sub_1B0E44C88();
      v10 = v5;

      sub_1B0A189D4();
      v8 = *(v15 + 16);
      sub_1B0A18A44(v8);
      sub_1B0A18ABC(v8, v9, v10);
      sub_1B0394A5C();
      if (i + 1 == v13)
      {
        break;
      }
    }

    v6 = v15;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B082010C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 32 + 8 * a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  else
  {
    v5 = sub_1B0820194(a1, a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_unknownObjectRelease();
    return v5;
  }
}

uint64_t sub_1B0820194(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7[1] = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B0A5D9E4(82);
    v2 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v2);

    v3 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v3);

    v4 = sub_1B0E44838();
    MEMORY[0x1B2726E80](v4);

    swift_getObjectType();
    v5 = sub_1B0E46FF8();
    MEMORY[0x1B2726E80](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44C88();
    sub_1B0E465C8();
    __break(1u);
  }

  sub_1B039E440(v7);
  return v6;
}

unint64_t sub_1B0820378()
{
  v2 = qword_1EB6E24A8;
  if (!qword_1EB6E24A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E24A8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B08203F4(char *a1, char *__dst)
{
  memcpy(__dst, a1, 0x2AuLL);
  v12 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v7 = &a1[*(v12 + 20)];
  v8 = &__dst[*(v12 + 20)];
  *v8 = *v7;
  *(v8 + 1) = *(v7 + 1);
  *(v8 + 2) = *(v7 + 2);
  *(v8 + 3) = *(v7 + 3);
  v6 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v5 = *(v6 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v11 = *(*(v10 - 8) + 32);
  v11(&v8[v5], &v7[v5]);
  v2 = &v7[*(v6 + 28)];
  v3 = &v8[*(v6 + 28)];
  *v3 = *v2;
  *(v3 + 4) = *(v2 + 4);
  (v11)(&__dst[*(v12 + 24)], &a1[*(v12 + 24)], v10);
  return __dst;
}

uint64_t sub_1B0820564@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813A58(v3, a1);
}

unint64_t sub_1B08205D8()
{
  v2 = qword_1EB6E24B8;
  if (!qword_1EB6E24B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E24B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0820654()
{
  v1 = *(_s19CachedMailboxValuesV15MissingBodyDataVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0813A80(v2);
}

uint64_t sub_1B08206B8@<X0>(void *a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813B8C(v3, a1);
}

uint64_t sub_1B082072C@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0813B48(v3, a1);
}

unint64_t sub_1B08207A0()
{
  v2 = qword_1EB6DE1E0;
  if (!qword_1EB6DE1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1E0);
    return WitnessTable;
  }

  return v2;
}

double sub_1B0820818(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1B07F200C(a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B082085C(uint64_t a1)
{
  if (*(a1 + 48) > 1uLL)
  {
  }

  return a1;
}

uint64_t sub_1B08208B0(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    if (*(a1 + 48) > 1uLL)
    {
    }
  }

  return a1;
}

unint64_t sub_1B0820A14()
{
  v2 = qword_1EB6DB168;
  if (!qword_1EB6DB168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24D0, &qword_1B0E9CC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820A9C()
{
  v2 = qword_1EB6DBC48;
  if (!qword_1EB6DBC48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC48);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0820B18(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  v6 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v6;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[3] = v8;
  return result;
}

unint64_t sub_1B0820BAC()
{
  v2 = qword_1EB6DEAF0;
  if (!qword_1EB6DEAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24C0, &qword_1B0E9CC70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820C34()
{
  v2 = qword_1EB6DB170;
  if (!qword_1EB6DB170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0820CBC(uint64_t a1)
{

  v3 = type metadata accessor for MessagesMissingAllBodyData(0);
  v2 = *(v3 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v2);
  (v5)(a1 + *(v3 + 24), v4);
  return a1;
}

unint64_t sub_1B0820D7C()
{
  v2 = qword_1EB6DB030;
  if (!qword_1EB6DB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820E04()
{
  v2 = qword_1EB6DB028;
  if (!qword_1EB6DB028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820E8C()
{
  v2 = qword_1EB6DA558;
  if (!qword_1EB6DA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24F0, &unk_1B0E9CCF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820F14()
{
  v2 = qword_1EB6DB570;
  if (!qword_1EB6DB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24F8, &qword_1B0E9CD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0820F9C()
{
  v2 = qword_1EB6DB038;
  if (!qword_1EB6DB038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24E8, &qword_1B0E9CCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821034()
{
  v2 = qword_1EB6DEB00[0];
  if (!qword_1EB6DEB00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24C8, &qword_1B0E9CC78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB6DEB00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08210BC()
{
  v2 = qword_1EB6DB188;
  if (!qword_1EB6DB188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2500, &qword_1B0E9CD50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821194()
{
  v2 = qword_1EB6DEAE8;
  if (!qword_1EB6DEAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2508, &qword_1B0E9CD58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEAE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B082121C(uint64_t a1)
{

  v3 = *(type metadata accessor for FindFragmentedMessagesResult(0) + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1B08212D0()
{
  v2 = qword_1EB6DB510;
  if (!qword_1EB6DB510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2520, &qword_1B0E9CD70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821358()
{
  v2 = qword_1EB6DB840;
  if (!qword_1EB6DB840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2528, &qword_1B0E9CD78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08213E0()
{
  v2 = qword_1EB6DB7E0;
  if (!qword_1EB6DB7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2530, &qword_1B0E9CD80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821468()
{
  v2 = qword_1EB6DA508;
  if (!qword_1EB6DA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2538, &qword_1B0E9CDD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA508);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s5CacheV5EntryVMa(uint64_t a1)
{
  v2 = qword_1EB6DBB28;
  if (!qword_1EB6DBB28)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t _s19CachedMailboxValuesVMa(uint64_t a1)
{
  v2 = qword_1EB6DBC20;
  if (!qword_1EB6DBC20)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1B08215D8(uint64_t *a1, void *a2)
{
  v5 = *a1;

  *a2 = v5;
  v7 = *(_s5CacheV5EntryVMa(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);

  v25 = a2 + v7;
  *v25 = v8;
  *(v25 + 1) = v9;
  v10 = *(a1 + v7 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v25 + 2) = v10;
  v11 = *(a1 + v7 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v25 + 3) = v11;
  *(v25 + 4) = *(a1 + v7 + 32);
  *(v25 + 20) = *(a1 + v7 + 40);
  v28 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v12 = *(v28 + 20);
  v23 = a1 + v7 + v12;
  v13 = *v23;
  v14 = *(v23 + 1);

  v24 = a2 + v7 + v12;
  *v24 = v13;
  *(v24 + 1) = v14;
  v15 = *(v23 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 2) = v15;
  v16 = *(v23 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 3) = v16;
  v17 = *(v23 + 4);
  v18 = *(v23 + 5);

  *(v24 + 4) = v17;
  *(v24 + 5) = v18;
  v19 = *(v23 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 6) = v19;
  v20 = *(v23 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 7) = v20;
  v22 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v21 = *(v22 + 24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v27 = *(*(v26 - 8) + 16);
  v27(&v24[v21], &v23[v21]);
  v2 = *(v22 + 28);
  v3 = &v24[v2];
  *v3 = *&v23[v2];
  *(v3 + 4) = *&v23[v2 + 8];
  (v27)(a2 + v7 + *(v28 + 24), a1 + v7 + *(v28 + 24), v26);
  return a2;
}

uint64_t sub_1B082189C(uint64_t a1)
{

  v5 = a1 + *(_s5CacheV5EntryVMa(0) + 20);

  v4 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v2 = v5 + *(v4 + 20);

  v3 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0) + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v7 = *(*(v6 - 8) + 8);
  v7(v2 + v3);
  (v7)(v5 + *(v4 + 24), v6);
  return a1;
}

unint64_t sub_1B0821A24()
{
  v2 = qword_1EB6DB0F0;
  if (!qword_1EB6DB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0821AAC(void *a1, void *a2)
{
  *a2 = *a1;

  v2 = _s5CacheV5EntryVMa(0);
  v15 = a1 + *(v2 + 20);
  v3 = *(v15 + 1);
  v14 = a2 + *(v2 + 20);
  *v14 = *v15;
  *(v14 + 1) = v3;

  *(v14 + 2) = *(v15 + 2);

  *(v14 + 3) = *(v15 + 3);

  *(v14 + 4) = *(v15 + 4);
  *(v14 + 20) = *(v15 + 20);
  v18 = _s19CachedMailboxValuesV15MissingBodyDataVMa(0);
  v12 = &v15[*(v18 + 20)];
  v4 = *(v12 + 1);
  v13 = &v14[*(v18 + 20)];
  *v13 = *v12;
  *(v13 + 1) = v4;

  *(v13 + 2) = *(v12 + 2);

  *(v13 + 3) = *(v12 + 3);

  v5 = *(v12 + 5);
  *(v13 + 4) = *(v12 + 4);
  *(v13 + 5) = v5;

  *(v13 + 6) = *(v12 + 6);

  *(v13 + 7) = *(v12 + 7);

  v11 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v10 = *(v11 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v17 = *(*(v16 - 8) + 40);
  v17(&v13[v10], &v12[v10]);
  v6 = &v12[*(v11 + 28)];
  v7 = &v13[*(v11 + 28)];
  *v7 = *v6;
  *(v7 + 4) = *(v6 + 4);
  (v17)(&v14[*(v18 + 24)], &v15[*(v18 + 24)], v16);
  return a2;
}

unint64_t sub_1B0821D48()
{
  v2 = qword_1EB6DB0F8;
  if (!qword_1EB6DB0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0821DD0()
{
  v2 = qword_1EB6DB0E8;
  if (!qword_1EB6DB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2550, &qword_1B0E9CDE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0E8);
    return WitnessTable;
  }

  return v2;
}

void sub_1B0821E58()
{
}

void *sub_1B0821E9C(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3] = v5;
  a2[4] = a1[4];
  v7 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  a2[5] = v7;
  return result;
}

void *sub_1B0821F28(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];

  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];
  a2[5] = a1[5];

  return a2;
}

unint64_t sub_1B0821FA8()
{
  v2 = qword_1EB6E2558;
  if (!qword_1EB6E2558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822024()
{
  v2 = qword_1EB6DBB78;
  if (!qword_1EB6DBB78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08220A0()
{
  v2 = qword_1EB6E2560;
  if (!qword_1EB6E2560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082211C()
{
  v2 = qword_1EB6DBB58;
  if (!qword_1EB6DBB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822198()
{
  v2 = qword_1EB6E2568;
  if (!qword_1EB6E2568)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0822214()
{
  v2 = qword_1EB6DBB90;
  if (!qword_1EB6DBB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08222E0(uint64_t a1)
{
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B08223C8(uint64_t a1)
{
  v4 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B08224D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08225F0(uint64_t result, int a2, int a3)
{
  v3 = (result + 42);
  if (a2 < 0)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B0822814(uint64_t a1)
{
  v5 = sub_1B082292C(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1B08229D4(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_1B043B29C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1B082292C(uint64_t a1)
{
  v7 = qword_1EB6DEAF8;
  if (!qword_1EB6DEAF8)
  {
    v1 = sub_1B08207A0();
    v5 = type metadata accessor for KeyedSequence(a1, &type metadata for UID, &unk_1F26C87A0, v1);
    v7 = v5;
    if (!v2)
    {
      v3 = v5;
      atomic_store(v5, &qword_1EB6DEAF8);
      return v3;
    }
  }

  return v7;
}

unint64_t sub_1B08229D4(uint64_t a1)
{
  v7 = qword_1EB6DEAE0;
  if (!qword_1EB6DEAE0)
  {
    v1 = sub_1B08207A0();
    v5 = type metadata accessor for KeyedSequence(a1, &type metadata for UID, &unk_1F26C0960, v1);
    v7 = v5;
    if (!v2)
    {
      v3 = v5;
      atomic_store(v5, &qword_1EB6DEAE0);
      return v3;
    }
  }

  return v7;
}

uint64_t get_enum_tag_for_layout_string_7Message24MailboxPersistenceHelperC07MissingA5PartsV013NonAttachmentF0O(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0822BF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 64))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 56) < 0x100000000uLL)
      {
        v4 = *(a1 + 56);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0822D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0822F38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v4 = *(a1 + 16);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0823068(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B082324C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483645;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B082339C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFE)
  {
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B0823704(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 10))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0823814(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 10);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t sub_1B0823B10(uint64_t a1)
{
  v4 = type metadata accessor for MailboxPersistenceHelper(319);
  if (v1 <= 0x3F)
  {
    v4 = _s19CachedMailboxValuesVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0823C0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0823D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B0823F34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0824074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B082429C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08243B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08245C8()
{
  v2 = qword_1EB6DB100;
  if (!qword_1EB6DB100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2578, &unk_1B0EA2E60);
    sub_1B0824660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824660()
{
  v2 = qword_1EB6DBB38;
  if (!qword_1EB6DBB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08246F4()
{
  v2 = qword_1EB6DBB80;
  if (!qword_1EB6DBB80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824788()
{
  v2 = qword_1EB6DBB88;
  if (!qword_1EB6DBB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082481C()
{
  v2 = qword_1EB6E2580;
  if (!qword_1EB6E2580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08248B0()
{
  v2 = qword_1EB6DBB48;
  if (!qword_1EB6DBB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824944()
{
  v2 = qword_1EB6DBB50;
  if (!qword_1EB6DBB50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08249D8()
{
  v2 = qword_1EB6E2588;
  if (!qword_1EB6E2588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824A6C()
{
  v2 = qword_1EB6DBB68;
  if (!qword_1EB6DBB68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824B00()
{
  v2 = qword_1EB6DBB70;
  if (!qword_1EB6DBB70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824B94()
{
  v2 = qword_1EB6E2590;
  if (!qword_1EB6E2590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824C28()
{
  v2 = qword_1EB6DBC40;
  if (!qword_1EB6DBC40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824CBC()
{
  v2 = qword_1EB6E2598;
  if (!qword_1EB6E2598)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824D38()
{
  v2 = qword_1EB6DBB60;
  if (!qword_1EB6DBB60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0824DB4()
{
  v2 = qword_1EB6DBB40;
  if (!qword_1EB6DBB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBB40);
    return WitnessTable;
  }

  return v2;
}

char *sub_1B0824E30(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v7 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa(0);
  v6 = *(v7 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(&a2[v6], &a1[v6]);
  result = a2;
  v4 = &a1[*(v7 + 28)];
  v5 = &a2[*(v7 + 28)];
  *v5 = *v4;
  *(v5 + 4) = *(v4 + 4);
  return result;
}

uint64_t sub_1B0824F18(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  if (*(a1 + 48) > 1uLL)
  {
    v4 = *(a1 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 48) = v4;
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1B0824FC8(void *a1, void *a2)
{
  v19 = 0u;
  MEMORY[0x1E69E5928](a1);
  v13 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  v15 = [v13 stringValue];
  *&v14 = sub_1B0E44AD8();
  *(&v14 + 1) = v2;
  MEMORY[0x1E69E5920](v13);
  v18 = v14;
  MEMORY[0x1E69E5920](v15);
  v17 = [a2 destinationMessage];
  if (v17)
  {
    swift_getObjectType();
    v3 = [v17 persistentID];
    v10 = v3;
    if (v3)
    {
      *&v8 = sub_1B0E44AD8();
      *(&v8 + 1) = v4;
      MEMORY[0x1E69E5920](v10);
      v9 = v8;
    }

    else
    {
      v9 = 0uLL;
    }

    swift_unknownObjectRelease();
    v11 = v9;
  }

  else
  {
    v11 = 0uLL;
  }

  if (*(&v11 + 1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = v11;

    v6 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B06FF6F0(&v18);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](a2);
    MEMORY[0x1E69E5920](a1);
    sub_1B03B1198(&v18);
    return 0;
  }
}

uint64_t sub_1B08252D8(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v19 = a1;
  v20 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!a2)
  {
    goto LABEL_10;
  }

  v16 = a1;
  v17 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039A4F8();
  sub_1B0E46598();
  if (v15)
  {

LABEL_10:

    v4 = 0;
    v5 = 1;
    goto LABEL_11;
  }

  v13 = v14;
  v10 = v14;
  v6 = sub_1B041C1E8();
  v2 = sub_1B03948EC();
  MessageIdentifier.init<A>(exactly:)(&v10, &type metadata for UID, MEMORY[0x1E69E6530], v6, v2, &v11);
  v7 = v11;
  if (v12)
  {

    goto LABEL_10;
  }

  v21 = v11;

  v4 = v7;
  v5 = 0;
LABEL_11:
  LODWORD(v18) = v4;
  BYTE4(v18) = v5 & 1;
  return v18;
}

uint64_t sub_1B0825490@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v4[1] = 0;
  v1 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = v4 - v4[0];
  swift_storeEnumTagMultiPayload();
  v2 = sub_1B0E46A48();
  return sub_1B08274A8(v6, v2, v5);
}

uint64_t _s31PreviouslyDownloadedMessageDataV4MIMEOMa(uint64_t a1)
{
  v2 = qword_1EB6DBC70;
  if (!qword_1EB6DBC70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B08255A8()
{
  v11 = 0;
  v8 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v4[-v7];
  v11 = v0;
  sub_1B07AF5B8(v0, &v4[-v7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 8))(v9);
LABEL_10:
      v5 = 0;
      return v5 & 1;
    case 1:
      v1 = sub_1B0E443C8();
      (*(*(v1 - 8) + 8))(v9);
      break;
    case 2:
    case 3:
      break;
    default:
      goto LABEL_10;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_1B0825730(uint64_t a1)
{
  if (a1 == *MEMORY[0x1E699A728])
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

void *sub_1B082579C(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v17[4] = a1;
  v17[5] = a2;
  if (sub_1B0E44DA8())
  {
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    v11 = v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = v11;
    v12 = v11;
  }

  else
  {
    v17[2] = a1;
    v17[3] = a2;
    v17[0] = sub_1B0E44838();
    v17[1] = v3;
    sub_1B07C7F5C();
    v7 = sub_1B0E45EE8();
    sub_1B03B1198(v17);
    v16 = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    v4 = sub_1B0750598();
    v10 = sub_1B039CA88(sub_1B0827EDC, 0, v8, MEMORY[0x1E69E6530], v9, v4, MEMORY[0x1E69E7288], &v15);
    sub_1B039E440(&v16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    rawValue = SectionSpecifier.Part.init(_:)(v10).array._rawValue;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = rawValue;

    v12 = rawValue;
  }

  sub_1B039E440(&v18);
  return v12;
}

uint64_t sub_1B08259E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v52 = a1;
  v33 = sub_1B0827E7C;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v34 = 0;
  v54 = 0;
  v53 = 0;
  v40 = 0;
  v35 = sub_1B0E443C8();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v15 - v38;
  v41 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(v2);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v15 - v42;
  v44 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v15 - v44;
  v60 = &v15 - v44;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v15 - v46;
  v48 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v15 - v48;
  v50 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v15 - v50;
  v59 = &v15 - v50;
  v58 = v10;
  MEMORY[0x1E69E5928](v10);
  if (!v52)
  {
    swift_storeEnumTagMultiPayload();
    v11 = sub_1B0E46A48();
    sub_1B08274A8(v47, v11, v49);
    sub_1B07B48B8(v49, v51);
LABEL_16:
    sub_1B075E87C(v51, v32);
    MEMORY[0x1E69E5920](v52);
    return sub_1B075ECD0(v51);
  }

  v31 = v52;
  v27 = v52;
  v57 = v52;
  v29 = [v52 hasFullMessageData];
  v26 = [v27 hasPartialMessageData];
  v28 = [v27 headersOnlyData];
  v12 = [v27 partialMessageData];
  v30 = v12;
  if (v29)
  {
    goto LABEL_5;
  }

  if (v30)
  {
    v25 = v30;
    v24 = v30;
    MEMORY[0x1E69E5928](v30);
    v53 = v24;
    MEMORY[0x1E69E5928](v24);
    sub_1B0E44348();
    (*(v36 + 32))(v47, v39, v35);
    swift_storeEnumTagMultiPayload();
    sub_1B0827FE8(v47, v45);
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v30);
  }

  else
  {
    if (!v28)
    {
LABEL_5:
      swift_storeEnumTagMultiPayload();
      sub_1B0827FE8(v47, v45);
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v30);
      goto LABEL_11;
    }

    v23 = v28;
    v22 = v28;
    MEMORY[0x1E69E5928](v28);
    v54 = v22;
    MEMORY[0x1E69E5928](v22);
    sub_1B0E44348();
    (*(v36 + 32))(v47, v39, v35);
    swift_storeEnumTagMultiPayload();
    sub_1B0827FE8(v47, v45);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v30);
  }

LABEL_11:
  sub_1B07AF5B8(v45, v43);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B075EC04(v43);
    v20 = sub_1B0E46A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = v20;
    v21 = v20;
LABEL_15:
    v15 = v21;
    sub_1B07AF5B8(v45, v47);
    sub_1B08274A8(v47, v15, v49);
    sub_1B07B48B8(v49, v51);
    sub_1B039E440(&v56);
    sub_1B075EC04(v45);
    MEMORY[0x1E69E5920](v27);
    goto LABEL_16;
  }

  v13 = v34;
  (*(v36 + 8))(v43, v35);
  v17 = [v27 mimeParts];
  v55 = sub_1B0E451B8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B06E3764();
  result = sub_1B0E44F58();
  v19 = result;
  if (!v13)
  {
    v16 = v19;
    sub_1B039E440(&v55);
    MEMORY[0x1E69E5920](v17);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = v16;
    v21 = v16;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0826230(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B08264BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v25 = a2;
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25E8, &unk_1B0E9DD80);
  v18 = *(v27 - 8);
  v19 = v27 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v23 = v13 - v20;
  v34 = v5;
  *&v32 = v6;
  *(&v32 + 1) = v7;
  *&v33 = v8;
  *(&v33 + 1) = v9;
  v21 = v5[3];
  v22 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v21);
  sub_1B082818C();
  sub_1B0E46D48();
  v10 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = 0;
  sub_1B0E46928();
  v28 = v10;
  v29 = v10;
  if (v10)
  {
    v13[2] = v29;

    return (*(v18 + 8))(v23, v27);
  }

  else
  {

    v11 = v28;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = 1;
    sub_1B0E46928();
    v13[4] = v11;
    v14 = v11;
    if (v11)
    {
      v13[1] = v14;
    }

    return (*(v18 + 8))(v23, v27);
  }
}

uint64_t sub_1B0826750(void *a1)
{
  v25 = a1;
  v38 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E25E0, &qword_1B0E9DD78);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v30 = v8 - v29;
  v38 = v1;
  v32 = v1[3];
  v33 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v32);
  sub_1B082818C();
  v2 = v31;
  sub_1B0E46D18();
  v34 = v2;
  v35 = v2;
  if (v2)
  {
    v10 = v35;
    v11 = 0;
    v9 = 0;
    v8[2] = v35;
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (v9)
    {
      sub_1B03B1198(&v39);
    }

    return v8[0];
  }

  else
  {
    v37 = 0;
    v3 = sub_1B0E46848();
    v21 = 0;
    v22 = v3;
    v23 = v4;
    v24 = 0;
    v39 = v3;
    v40 = v4;
    v36 = 1;
    v5 = sub_1B0E46848();
    v17 = 0;
    v18 = v5;
    v19 = v6;
    v20 = 0;
    v15 = v6;
    v14 = v5;
    v12 = &v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = v14;
    v42 = v15;
    (*(v27 + 8))(v30, v26);
    v16 = v39;
    v13 = v40;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1B06FF6F0(v12);
    return v16;
  }
}

uint64_t sub_1B0826AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B0826230(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B0826B7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0826750(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B0826D14(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1B0826ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0826D14(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1B0826F00@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_1B0826D88(*v1 & 1);
  *a1 = result;
  return result;
}

uint64_t sub_1B0826F94()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0826FCC(uint64_t a1, int a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void sub_1B0827034(uint64_t a1)
{
  sub_1B0828300(a1, v3);
  sub_1B0828370(a1, v1 + 24);
  sub_1B08283D8();
}

void *sub_1B0827070@<X0>(void *__src@<X4>, char a2@<W0>, int a3@<W1>, uint64_t a4@<X2>, int a5@<W3>, void *a6@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  LOBYTE(__srca[0]) = a2 & 1;
  HIDWORD(__srca[0]) = a3;
  __srca[1] = a4;
  LODWORD(__srca[2]) = a5;
  __srca[3] = __dst[0];
  __srca[4] = __dst[1];
  LODWORD(__srca[5]) = __dst[2];
  __srca[6] = __dst[3];
  __srca[7] = __dst[4];
  return memcpy(a6, __srca, 0x40uLL);
}

uint64_t sub_1B082714C(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B075E87C(v2, &v5 - v5);
  v3 = _s18SectionsToDownloadVMa(v6);
  sub_1B075EA98(v7, (v1 + *(v3 + 20)));
  return sub_1B075ECD0(v8);
}

uint64_t *sub_1B082722C(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v5);
  v2 = _s18SectionsToDownloadVMa(0);
  sub_1B075DEC8(a1, (v1 + *(v2 + 24)));
  return sub_1B075E728(a1);
}

uint64_t sub_1B08272A4(unsigned int a1)
{
  v2 = _s18SectionsToDownloadVMa(0);
  result = a1;
  *(v1 + *(v2 + 28)) = a1;
  return result;
}

int *sub_1B08272E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, const void *a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  *a5 = a1;
  v8 = _s18SectionsToDownloadVMa(0);
  sub_1B07B48B8(a2, &a5[v8[5]]);
  memcpy(&a5[v8[6]], a3, 0xB1uLL);
  result = v8;
  a5[v8[7]] = a4;
  return result;
}

uint64_t sub_1B082738C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(_s31PreviouslyDownloadedMessageDataV4MIMEOMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AF5B8(v1, v3 - v3[0]);
  sub_1B0828410(v4, v3[1]);
  return sub_1B075EC04(v5);
}

uint64_t sub_1B0827424()
{
  v2 = *(v0 + *(_s31PreviouslyDownloadedMessageDataVMa(0) + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B082745C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(_s31PreviouslyDownloadedMessageDataVMa(0) + 20)) = a1;
}

uint64_t sub_1B08274A8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1B0827FE8(a1, a3);
  result = _s31PreviouslyDownloadedMessageDataVMa(0);
  *&a3[*(result + 20)] = a2;
  return result;
}

_BYTE *sub_1B08274F0()
{
  v29 = 0;
  v42 = 0;
  v25 = 0;
  v38 = 0;
  v26 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  MEMORY[0x1EEE9AC00](0);
  v27 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = _s31PreviouslyDownloadedMessageDataVMa(v2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v0;
  v30 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = v30;
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  v40 = v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v31 = v33;
  v34 = sub_1B07AFA50();
  v32 = v34;
  sub_1B07F3770();
  v35 = &v40;
  v36 = &v41;
  v37 = sub_1B0E450A8();
  sub_1B039E440(v35);
  sub_1B039E440(v36);
  if (v37)
  {
    v19 = 0;
    v20 = v25;
    return (v19 & 1);
  }

  v6 = _s18SectionsToDownloadVMa(0);
  sub_1B075E87C(&v24[*(v6 + 20)], v28);
  sub_1B07AF5B8(v28, v27);
  sub_1B075ECD0(v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v22 = sub_1B0E443C8();
      (*(*(v22 - 8) + 8))(v27);
LABEL_9:
      v19 = 0;
      v20 = v25;
      return (v19 & 1);
    case 1:
      v21 = sub_1B0E443C8();
      (*(*(v21 - 8) + 8))(v27);
      goto LABEL_9;
    case 2:
      goto LABEL_9;
  }

  v17 = *v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[1] = v17;
  sub_1B07AFBE8();
  v18 = sub_1B0E45748();

  if (v18)
  {
    v19 = 1;
    v20 = v25;
    return (v19 & 1);
  }

  v7 = v25;
  v13 = *v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39[0] = v13;
  v14 = v11;
  MEMORY[0x1EEE9AC00](v11);
  *&v11[-16] = v8;
  v9 = sub_1B0E44F48();
  v15 = v7;
  v16 = v9;
  if (!v7)
  {
    v12 = v16;
    sub_1B039E440(v39);
    v38 = v12 & 1;
    v19 = v12 ^ 1;
    v20 = v15;
    return (v19 & 1);
  }

  result = v14;
  __break(1u);
  return result;
}

uint64_t sub_1B0827908(uint64_t *a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v6 = *a1;
  v10 = *a1;
  v9 = a2;
  v2 = _s18SectionsToDownloadVMa(0);
  memcpy(__dst, (a2 + *(v2 + 24)), 0xB1uLL);
  sub_1B075DC38(__dst, v8);
  memcpy(v16, __dst, 0xB1uLL);
  if (sub_1B075FACC(v16) == 1)
  {
    goto LABEL_5;
  }

  memcpy(v14, v16, sizeof(v14));
  BodyStructure.find(_:)(v6, v11);
  memcpy(v12, v11, 0xB1uLL);
  if (sub_1B075FACC(v12) == 1)
  {
    sub_1B075E648(v16);
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  memcpy(v13, v12, 0xB1uLL);
  v4 = BodyStructure.isAttachment.getter();
  sub_1B075E648(v13);
  sub_1B075E648(v16);
  v5 = v4;
  return v5 & 1;
}

uint64_t sub_1B0827A6C@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v11 = a1;
  v10 = v2;
  v6 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = _s18SectionsToDownloadVMa(0);
  memcpy(__dst, v2 + *(v3 + 24), 0xB1uLL);
  sub_1B075DC38(__dst, v9);
  v8 = sub_1B0827B34(v6, __dst, a1);
  sub_1B075E728(__dst);

  sub_1B0827C70(v8, a2);
}

uint64_t sub_1B0827B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9[4] = a1;
  v9[3] = a2;
  v9[2] = a3;
  v9[1] = a1;
  sub_1B0E46A48();
  SectionSpecifier.Part.init(arrayLiteral:)();
  v9[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  sub_1B07AFA50();
  sub_1B07F3770();
  v8 = sub_1B0E450A8();
  sub_1B039E440(v9);
  if (v8)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B0827D88(a3, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07F22F8();
    return sub_1B0E45378();
  }
}

int *sub_1B0827C70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a2;
  v12 = a1;
  v15 = 0;
  v14 = 0;
  v7 = 0;
  v6 = (*(*(_s31PreviouslyDownloadedMessageDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v10 = &v6 - v6;
  v15 = v3;
  v14 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = _s18SectionsToDownloadVMa(v7);
  sub_1B075E87C((v2 + v8[5]), v10);
  v4 = (v2 + v8[6]);
  v11 = __dst;
  memcpy(__dst, v4, 0xB1uLL);
  sub_1B075DC38(__dst, v13);
  return sub_1B08272E0(v12, v10, v11, *(v2 + v8[7]) & 1, v9);
}

uint64_t sub_1B0827D88(unint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(0, a2);
    return v2;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(a1, a2);
    v5 = v3;

    v8 = v5;
  }

  return v8;
}

void *sub_1B0827E7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B082579C(v3, v4);
  *a2 = result;
  return result;
}

void *sub_1B0827EDC@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039A4F8();
  result = sub_1B0E46598();
  if (v8)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B0829B6C();
    v4 = swift_allocError();
    swift_willThrow();
    result = v4;
    *a2 = v4;
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

void *sub_1B0827FE8(const void *a1, void *a2)
{
  v6 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1B0828110()
{
  v2 = qword_1EB6E25B8;
  if (!qword_1EB6E25B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B082818C()
{
  v2 = qword_1EB6DBBF8;
  if (!qword_1EB6DBBF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0828208()
{
  v2 = qword_1EB6E25C0;
  if (!qword_1EB6E25C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0828284()
{
  v2 = qword_1EB6DBBA0;
  if (!qword_1EB6DBBA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0828300(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B0828370(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);

  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);

  return a2;
}

void *sub_1B0828410(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1B075EC04(a2);
    v4 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(0);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = sub_1B0E443C8();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1B08285B4(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B0828628(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B06BC2F4(v2, &v5 - v6);
  v3 = _s6UploadVMa(0);
  sub_1B06BC6BC(v7, (v1 + *(v3 + 20)));
  return sub_1B06B97A8(v8);
}

uint64_t sub_1B08286D8()
{
  v1 = v0 + *(_s6UploadVMa(0) + 24);
  v3 = *v1;
  sub_1B03B2000(*v1, *(v1 + 8));
  return v3;
}

uint64_t sub_1B0828720(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  v3 = (v2 + *(_s6UploadVMa(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_1B0391D50(v4, v5);
  return sub_1B0391D50(a1, a2);
}

uint64_t sub_1B0828780@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v20 = 0;
  v26 = sub_1B0E43108();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v18 - v19;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v29 = &v18 - v21;
  v35 = _s6UploadVMa(v5);
  v31 = *(v35 - 8);
  v32 = v35 - 8;
  v6 = MEMORY[0x1EEE9AC00](v35);
  v41 = (&v18 - v7);
  v48 = &v18 - v7;
  v47 = v40;
  v45 = v8;
  v46 = v9;
  v44 = v37;
  v11 = *(v10 + 20);
  v28 = *(v23 + 56);
  v27 = v23 + 56;
  v34 = 1;
  v28(&v18 + v11 - v7, 1, v6);
  sub_1B03B2000(v39, v38);
  v12 = v38;
  v13 = (v41 + *(v35 + 24));
  *v13 = v39;
  v13[1] = v12;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v22 = [v40 flags];
  swift_unknownObjectRelease();
  v14 = sub_1B072136C(v22);
  v15 = v41;
  v42 = v14;
  v43 = v16 & 1 & v34;
  v49 = v14;
  v50 = v43;
  *v41 = v14;
  *(v15 + 8) = v50;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v30 = [v40 dateReceived];
  sub_1B0E430D8();
  (*(v23 + 32))(v29, v25, v26);
  swift_unknownObjectRelease();
  v33 = 0;
  (v28)(v29);
  sub_1B06BC6BC(v29, v41 + *(v35 + 20));
  MEMORY[0x1E69E5920](v30);
  sub_1B0828B38(v41, v36);
  (*(v31 + 56))(v36, v33, v34, v35);
  sub_1B074B764(v37);
  sub_1B0391D50(v39, v38);
  swift_unknownObjectRelease();
  return sub_1B0828D04(v41);
}

uint64_t sub_1B0828B38(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v9 = _s6UploadVMa(0);
  v10 = *(v9 + 20);
  v12 = sub_1B0E43108();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1 + v10, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v10), (a1 + v10), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))();
    (*(v13 + 56))(a2 + v10, 0, 1, v12);
  }

  v6 = (a2 + *(v9 + 24));
  v3 = (a1 + *(v9 + 24));
  v5 = *v3;
  v7 = v3[1];
  sub_1B03B2000(*v3, v7);
  result = a2;
  *v6 = v5;
  v6[1] = v7;
  return result;
}

uint64_t sub_1B0828D04(uint64_t a1)
{
  v2 = _s6UploadVMa(0);
  v3 = *(v2 + 20);
  v5 = sub_1B0E43108();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  sub_1B0391D50(*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 8));
  return a1;
}

uint64_t sub_1B0828DF4(int a1)
{
  v6 = a1;
  v5[0] = sub_1B0E46A28();
  v5[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469E8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v5);
  return sub_1B0E44C88();
}

uint64_t sub_1B0828EE8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v16 = sub_1B0829160;
  v17 = "Fatal error";
  v18 = "Unexpectedly found nil while unwrapping an Optional value";
  v19 = "Message/MailboxPersistenceHelper+Types.swift";
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v20 = 0;
  v28 = sub_1B0E44B68();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v21 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v9 - v21;
  v31 = v2;
  v32 = v3;
  sub_1B0E44B48();
  sub_1B0394868();
  v27 = sub_1B0E44AE8();
  v29 = v4;
  (*(v24 + 8))(v26, v28);
  if ((v29 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v14 = v27;
    v15 = v29;
  }

  v5 = v20;
  v30[0] = v14;
  v30[1] = v15;
  v6 = sub_1B082922C();
  result = sub_1B039CA88(v16, 0, MEMORY[0x1E6969080], MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v12);
  v13 = result;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v9 = v13;
    sub_1B075D3E8(v30);
    EncodedString.init(rawValue:)();
    v11 = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = &v33;
    v33 = v11;

    sub_1B039E440(v10);
    return v11;
  }

  return result;
}

unint64_t sub_1B082922C()
{
  v2 = qword_1EB6E3CE0;
  if (!qword_1EB6E3CE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3CE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08292E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0829420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08296C8(uint64_t a1)
{
  v4 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1B043B0C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0829794(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B08298A0()
{
  v2 = qword_1EB6E25C8;
  if (!qword_1EB6E25C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829934()
{
  v2 = qword_1EB6E25D0;
  if (!qword_1EB6E25D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08299C8()
{
  v2 = qword_1EB6DBBE8;
  if (!qword_1EB6DBBE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829A5C()
{
  v2 = qword_1EB6DBBF0;
  if (!qword_1EB6DBBF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBBF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829AF0()
{
  v2 = qword_1EB6E25D8;
  if (!qword_1EB6E25D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0829B6C()
{
  v2 = qword_1EB6E25F0;
  if (!qword_1EB6E25F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E25F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0829BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v29 = a2;
  v31 = a3;
  v4 = v3;
  v24 = v4;
  v28 = 0;
  v27 = sub_1B086F1A8;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v35 = a2;
  v30 = sub_1B0E43308();
  v17 = *(v30 - 8);
  v18 = v30 - 8;
  v22 = *(v17 + 64);
  v19 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v20 = &v10 - v19;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v19);
  v26 = &v10 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v10 - v23;
  v34 = &v10 - v23;
  v33 = a1;
  v32 = v24;
  sub_1B0E432F8();
  sub_1B0E44FD8();
  v8 = v20;
  v11 = *(v24 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v11);
  (*(v17 + 16))(v8, v25, v30);
  v10 = sub_1B0E43258();
  v14 = *(v17 + 8);
  v13 = v17 + 8;
  v14(v20, v30);
  v12 = [v11 serverMessagesForIMAPUIDs:v10 limit:sub_1B0E43288() returnLastEntries:0];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  sub_1B086F238();
  v15 = sub_1B0E451B8();
  MEMORY[0x1E69E5920](v12);
  v14(v25, v30);
  return v15;
}

uint64_t sub_1B0829EAC()
{
  v8 = 0;
  v4 = _s6LoggerVMa_1(0);
  v3 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v3 - v3;
  v8 = v0;
  sub_1B074B69C(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, &v3 - v3);
  v1 = v5 + *(v4 + 20);
  v7 = *(v1 + 8);
  v6 = *(v1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v5);
  return v7;
}

id sub_1B0829F6C(uint64_t a1)
{
  v50 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v10 - v41;
  v43 = sub_1B0E42E68();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v10 - v46;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v46);
  v49 = &v10 - v48;
  v51 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v10 - v51;
  v53 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v10 - v53;
  v55 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v10 - v55;
  v65 = v7;
  v64 = v1;
  v57 = sub_1B0721E7C(v7);
  if (!v57)
  {
    return 0;
  }

  v39 = v57;
  v37 = v57;
  v63 = v57;
  v8 = [v57 transferType];
  v35 = &v62;
  v62 = v8;
  v33 = &v61;
  v61 = 1;
  v34 = type metadata accessor for ECTransferMessageActionType(0);
  v36 = sub_1B071C014();
  v38 = sub_1B0E46AE8();
  MEMORY[0x1E69E5928](v37);
  if (v38)
  {
    v32 = 1;
  }

  else
  {
    v60 = [v37 transferType];
    v59 = 0;
    v32 = sub_1B0E46AE8();
  }

  v31 = v32;
  MEMORY[0x1E69E5920](v37);
  if (v31 & 1) == 0 || (v29 = [v37 itemsToCopy], sub_1B071C094(), v28 = sub_1B0E451B8(), v58 = v28, v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0), sub_1B071C0F8(), v30 = sub_1B0E45748(), , MEMORY[0x1E69E5920](v29), (v30))
  {
LABEL_23:
    MEMORY[0x1E69E5920](v37);
    return 0;
  }

  MEMORY[0x1E69E5928](v37);
  v21 = [v37 mailboxURL];
  sub_1B0E42DE8();
  v22 = v44[4];
  v23 = v44 + 4;
  v22(v56, v49, v43);
  MEMORY[0x1E69E5920](v37);
  v24 = v44[7];
  v25 = v44 + 7;
  v24(v56, 0, 1, v43);
  v26 = [v37 destinationMailboxURL];
  if (v26)
  {
    v20 = v26;
    v19 = v26;
    sub_1B0E42DE8();
    v22(v54, v47, v43);
    v24(v54, 0, 1, v43);
    MEMORY[0x1E69E5920](v19);
  }

  else
  {
    v24(v54, 1, 1, v43);
  }

  v16 = &v42[*(v40 + 48)];
  sub_1B071C180(v56, v42);
  sub_1B071C180(v54, v16);
  v17 = v44[6];
  v18 = v44 + 6;
  if (v17(v42, 1, v43) == 1)
  {
    if (v17(v16, 1, v43) == 1)
    {
      sub_1B06E3800(v42);
      v15 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1B071C180(v42, v52);
    if (v17(v16, 1, v43) != 1)
    {
      v22(v47, v16, v43);
      sub_1B071C3D4();
      v14 = sub_1B0E44A28();
      v13 = v44[1];
      v12 = v44 + 1;
      v13(v47, v43);
      v13(v52, v43);
      sub_1B06E3800(v42);
      v15 = v14;
      goto LABEL_18;
    }

    (v44[1])(v52, v43);
  }

  sub_1B071C2A8(v42);
  v15 = 0;
LABEL_18:
  v11 = v15;
  sub_1B06E3800(v54);
  sub_1B06E3800(v56);
  MEMORY[0x1E69E5920](v21);
  if (v11)
  {
    goto LABEL_23;
  }

  return v37;
}

uint64_t sub_1B082A818(int a1)
{
  v11 = a1;
  v10 = v1;
  sub_1B0E46A48();
  *v2 = a1;
  sub_1B0394964();
  v9 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v4 = sub_1B07F193C();
  sub_1B082A914(&v9, v7, v4);
  sub_1B039E440(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  sub_1B086F29C();
  sub_1B0E45728();

  return v8;
}

uint64_t sub_1B082A914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(v3 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v10);
  sub_1B07CAF78(sub_1B0721718, 0, a2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], v13);
  v8 = sub_1B0E451A8();

  v9 = [v10 messagesWithRemoteIDs_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v10);
  if (v9)
  {
    sub_1B07F1AFC();
    v6 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  sub_1B07F1AFC();
  return sub_1B0E46A48();
}

uint64_t sub_1B082AB08@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL;
  v2 = sub_1B0E42E68();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B082ABB4()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082ABF0()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082AC2C()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B082AC68()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache);

  return v2;
}

uint64_t sub_1B082ACC4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B082AD24(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void *sub_1B082ADC0@<X0>(void *a1@<X8>)
{
  __src = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  swift_beginAccess();
  memcpy(__dst, __src, sizeof(__dst));
  swift_endAccess();
  return memcpy(a1, __dst, 0x2DuLL);
}

uint64_t sub_1B082AE44(const void *a1)
{
  __dst = (v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata);
  swift_beginAccess();
  memcpy(__dst, a1, 0x2DuLL);
  swift_endAccess();
  return sub_1B082AD94();
}

uint64_t (*sub_1B082AEBC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B082AF2C;
}

uint64_t sub_1B082AF2C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1B082AD94();
}

uint64_t sub_1B082AFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a1;
  v105 = a2;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v85 = "Fatal error";
  v86 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v87 = "Message/MailboxPersistenceHelper.swift";
  v88 = *v5;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v122 = 0;
  v97 = 0;
  v89 = (*(*(_s18MailboxPersistenceVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v90 = v37 - v89;
  v91 = (*(*(_s6LoggerVMa(v6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v92 = v37 - v91;
  v8 = _s6LoggerVMa_1(v7);
  v93 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v94 = v37 - v93;
  v95 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37 - v93);
  v96 = v37 - v95;
  v133 = v37 - v95;
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v37 - v98;
  v100 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v101 = v37 - v100;
  v106 = sub_1B0E42E68();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v110 = v37 - v109;
  v111 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v112 = v37 - v111;
  v132 = v37 - v111;
  v131 = v14;
  v113 = *v15;
  v130 = v113;
  v129 = v16;
  v128 = v17;
  v127 = v18;
  v126 = v5;
  v114 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries;
  v19 = sub_1B0A220EC();
  v20 = v115;
  *(v5 + v114) = v19;
  v116 = [v20 URL];
  if (v116)
  {
    v83 = v116;
    v82 = v116;
    sub_1B0E42DE8();
    (*(v107 + 32))(v101, v110, v106);
    (*(v107 + 56))(v101, 0, 1, v106);
    MEMORY[0x1E69E5920](v82);
  }

  else
  {
    (*(v107 + 56))(v101, 1, 1, v106);
  }

  if ((*(v107 + 48))(v101, 1, v106) == 1)
  {
    sub_1B06E3800(v101);
    v81 = v84;
LABEL_42:
    v37[1] = v81;
    sub_1B039E440((v81 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries));
    swift_deallocPartialClassInstance();
    sub_1B039480C(v104);

    sub_1B03F4F08(v102);
    MEMORY[0x1E69E5920](v115);
    return 0;
  }

  v75 = *(v107 + 32);
  v76 = v107 + 32;
  v75(v112, v101, v106);
  v77 = *(v107 + 16);
  v78 = v107 + 16;
  v77(v99, v112, v106);
  (*(v107 + 56))(v99, 0, 1, v106);
  v80 = sub_1B07BF5C8(v99);
  v79 = v21;
  sub_1B06E3800(v99);
  if (!v80)
  {
    (*(v107 + 8))(v112, v106);
    v81 = v84;
    goto LABEL_42;
  }

  v73 = v80;
  v74 = v79;
  v70 = v79;
  v71 = v80;
  v124 = v80;
  v125 = v79;
  v22 = [v115 account];
  v72 = v22;
  if (v22)
  {
    v69 = v72;
    v66 = v72;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v67 = v23;
    if (v23)
    {
      v65 = v67;
    }

    else
    {
      MEMORY[0x1E69E5920](v66);
      v65 = 0;
    }

    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  v64 = v68;
  if (!v68)
  {

    (*(v107 + 8))(v112, v106);
    v81 = v84;
    goto LABEL_42;
  }

  v63 = v64;
  v61 = v64;
  v123 = v64;
  MEMORY[0x1E69E5928](v115);
  v62 = [v61 storeForMailboxUid_];
  MEMORY[0x1E69E5920](v115);
  if (v62)
  {
    v60 = v62;
    v57 = v62;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v58 = v24;
    if (v24)
    {
      v56 = v58;
    }

    else
    {
      MEMORY[0x1E69E5920](v57);
      v56 = 0;
    }

    v59 = v56;
  }

  else
  {
    v59 = 0;
  }

  v55 = v59;
  if (!v59)
  {
    MEMORY[0x1E69E5920](v61);

    (*(v107 + 8))(v112, v106);
    v81 = v84;
    goto LABEL_42;
  }

  v54 = v55;
  v52 = v55;
  v122 = v55;

  v25 = v104;
  v26 = v92;
  *(v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache) = v103;
  sub_1B0394784(v25, v26);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v92, v71, v70, v96);
  sub_1B074B69C(v96, v94);
  v27 = sub_1B074E41C(v94, v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger);
  (v77)(v110, v112, v106, v27);
  v75((v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL), v110, v106);
  v28 = v90;
  v29 = v102;
  *(v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxRowID) = v113;
  sub_1B03F4D78(v29, v28);
  sub_1B04158DC(v90, v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence);
  MEMORY[0x1E69E5928](v115);
  v30 = v52;
  *(v84 + 16) = v115;
  MEMORY[0x1E69E5928](v30);
  v31 = v52;
  *(v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store) = v52;
  v32 = [v31 serverMessagePersistence];
  v53 = v32;
  if (v32)
  {
    v51 = v53;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v33 = v96;
  v34 = v113;
  *(v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence) = v51;
  v120 = v34;
  v50 = v134;
  sub_1B07C1964(&v120, v33, v134);
  memcpy(v119, v50, sizeof(v119));
  if (v119[45])
  {
    v47 = v135;
    sub_1B0A42A60(v135);
    memcpy(v118, v47, sizeof(v118));
    memcpy(v121, v118, sizeof(v121));
  }

  else
  {
    v48 = v117;
    v49 = 45;
    memcpy(v117, v119, 0x2DuLL);
    memcpy(v121, v117, sizeof(v121));
  }

  memcpy((v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxMetadata), v121, 0x2DuLL);
  MEMORY[0x1E69E5928](v52);
  v46 = [v52 library];
  MEMORY[0x1E69E5920](v52);
  if (v46)
  {
    v45 = v46;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v43 = v45;
  v44 = [v45 persistence];
  MEMORY[0x1E69E5920](v43);
  if (v44)
  {
    v42 = v44;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v38 = v42;
  v39 = [v42 messageChangeManager];
  MEMORY[0x1E69E5920](v38);
  v35 = v96;
  *(v84 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager) = v39;
  sub_1B074B764(v35);
  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v61);

  (*(v107 + 8))(v112, v106);
  v40 = v84;
  sub_1B039480C(v104);

  sub_1B03F4F08(v102);
  MEMORY[0x1E69E5920](v115);
  return v40;
}

uint64_t sub_1B082BDC8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v3 = OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL;
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B03F4F08(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxPersistence);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager));

  sub_1B074B764(v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_recentMessageSummaries));
  return v4;
}

uint64_t sub_1B082BF48(uint64_t *a1)
{
  v168 = a1;
  v161 = sub_1B074E050;
  v169 = sub_1B0872F60;
  v172 = sub_1B0394C30;
  v173 = sub_1B0394C24;
  v175 = sub_1B074DFFC;
  v177 = sub_1B039BA88;
  v180 = sub_1B039BB94;
  v181 = sub_1B0394C24;
  v183 = sub_1B039BBA0;
  v185 = sub_1B039BC08;
  v187 = sub_1B06BA324;
  v190 = sub_1B074E0E4;
  v192 = sub_1B039BCF8;
  v194 = sub_1B0872F58;
  v195 = sub_1B039BC08;
  v199 = sub_1B0872FF0;
  v203 = sub_1B039BC08;
  v206 = sub_1B0398F5C;
  v208 = sub_1B0398F5C;
  v210 = sub_1B0399178;
  v212 = sub_1B0398F5C;
  v214 = sub_1B0398F5C;
  v216 = sub_1B039BA94;
  v218 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v222 = sub_1B0399178;
  v224 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v228 = sub_1B03991EC;
  v230 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v234 = sub_1B03993BC;
  v236 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v240 = sub_1B039BCEC;
  v242 = sub_1B0398F5C;
  v244 = sub_1B0398F5C;
  v246 = sub_1B03991EC;
  v248 = sub_1B0398F5C;
  v250 = sub_1B0398F5C;
  v253 = sub_1B03991EC;
  v266 = 0;
  v265 = 0;
  v142 = 0;
  v148 = 0;
  v143 = sub_1B0E42E68();
  v144 = *(v143 - 8);
  v145 = v143 - 8;
  v146 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v147 = &v109 - v146;
  v156 = sub_1B0E439A8();
  v154 = *(v156 - 8);
  v155 = v156 - 8;
  v149 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v148);
  v1 = &v109 - v149;
  v150 = &v109 - v149;
  v159 = _s6LoggerVMa_1(v2);
  v152 = *(*(v159 - 8) + 64);
  v151 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v168);
  v160 = &v109 - v151;
  v153 = (v152 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v157 = &v109 - v153;
  v266 = v4;
  v265 = v5;
  v158 = &unk_1EB737000;
  sub_1B074B69C(v5 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, &v109 - v153);
  (*(v154 + 16))(v1, v157, v156);
  sub_1B074B764(v157);

  sub_1B074B69C(v171 + v158[299], v160);
  v6 = (v160 + *(v159 + 20));
  v164 = *v6;
  v165 = *(v6 + 1);
  v166 = *(v6 + 1);
  v167 = *(v6 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v160);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v163 = 36;
  v201 = 7;
  v7 = swift_allocObject();
  v8 = v165;
  v9 = v166;
  v10 = v167;
  v176 = v7;
  *(v7 + 16) = v164;
  *(v7 + 20) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = swift_allocObject();
  v12 = v165;
  v13 = v166;
  v14 = v167;
  v162 = v11;
  *(v11 + 16) = v164;
  *(v11 + 20) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;

  v200 = 32;
  v15 = swift_allocObject();
  v16 = v162;
  v184 = v15;
  *(v15 + 16) = v161;
  *(v15 + 24) = v16;
  sub_1B0394868();
  sub_1B0394868();

  v17 = swift_allocObject();
  v18 = v165;
  v19 = v166;
  v20 = v167;
  v191 = v17;
  *(v17 + 16) = v164;
  *(v17 + 20) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v20;

  v170 = swift_allocObject();
  memcpy((v170 + 16), v168, 0x21uLL);

  v21 = swift_allocObject();
  v22 = v170;
  v202 = v21;
  *(v21 + 16) = v169;
  *(v21 + 24) = v22;
  sub_1B0394868();
  sub_1B0394868();

  v23 = sub_1B0E43988();
  v24 = v171;
  v257 = v23;
  v258 = sub_1B0E45908();
  v197 = 17;
  v207 = swift_allocObject();
  v179 = 16;
  *(v207 + 16) = 16;
  v209 = swift_allocObject();
  v198 = 4;
  *(v209 + 16) = 4;
  v25 = swift_allocObject();
  v174 = v25;
  *(v25 + 16) = v172;
  *(v25 + 24) = 0;
  v26 = swift_allocObject();
  v27 = v174;
  v211 = v26;
  *(v26 + 16) = v173;
  *(v26 + 24) = v27;
  v213 = swift_allocObject();
  *(v213 + 16) = 0;
  v215 = swift_allocObject();
  *(v215 + 16) = 1;
  v28 = swift_allocObject();
  v29 = v176;
  v178 = v28;
  *(v28 + 16) = v175;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v178;
  v217 = v30;
  *(v30 + 16) = v177;
  *(v30 + 24) = v31;
  v219 = swift_allocObject();
  *(v219 + 16) = v179;
  v221 = swift_allocObject();
  *(v221 + 16) = v198;
  v32 = swift_allocObject();
  v182 = v32;
  *(v32 + 16) = v180;
  *(v32 + 24) = 0;
  v33 = swift_allocObject();
  v34 = v182;
  v223 = v33;
  *(v33 + 16) = v181;
  *(v33 + 24) = v34;
  v225 = swift_allocObject();
  *(v225 + 16) = 0;
  v227 = swift_allocObject();
  *(v227 + 16) = v198;
  v35 = swift_allocObject();
  v36 = v184;
  v186 = v35;
  *(v35 + 16) = v183;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v186;
  v229 = v37;
  *(v37 + 16) = v185;
  *(v37 + 24) = v38;
  v231 = swift_allocObject();
  *(v231 + 16) = 112;
  v233 = swift_allocObject();
  v189 = 8;
  *(v233 + 16) = 8;
  v205 = 24;
  v188 = swift_allocObject();
  *(v188 + 16) = 0x786F626C69616DLL;
  v39 = swift_allocObject();
  v40 = v188;
  v235 = v39;
  *(v39 + 16) = v187;
  *(v39 + 24) = v40;
  v237 = swift_allocObject();
  *(v237 + 16) = 37;
  v239 = swift_allocObject();
  *(v239 + 16) = v189;
  v41 = swift_allocObject();
  v42 = v191;
  v193 = v41;
  *(v41 + 16) = v190;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v193;
  v241 = v43;
  *(v43 + 16) = v192;
  *(v43 + 24) = v44;
  v243 = swift_allocObject();
  *(v243 + 16) = 0;
  v245 = swift_allocObject();
  *(v245 + 16) = v198;
  v45 = swift_allocObject();
  v196 = v45;
  *(v45 + 16) = v194;
  *(v45 + 24) = v24;
  v46 = swift_allocObject();
  v47 = v196;
  v247 = v46;
  *(v46 + 16) = v195;
  *(v46 + 24) = v47;
  v249 = swift_allocObject();
  *(v249 + 16) = 0;
  v251 = swift_allocObject();
  *(v251 + 16) = v198;
  v48 = swift_allocObject();
  v49 = v202;
  v204 = v48;
  *(v48 + 16) = v199;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v204;
  v254 = v50;
  *(v50 + 16) = v203;
  *(v50 + 24) = v51;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v252 = sub_1B0E46A48();
  v255 = v52;

  v53 = v207;
  v54 = v255;
  *v255 = v206;
  v54[1] = v53;

  v55 = v209;
  v56 = v255;
  v255[2] = v208;
  v56[3] = v55;

  v57 = v211;
  v58 = v255;
  v255[4] = v210;
  v58[5] = v57;

  v59 = v213;
  v60 = v255;
  v255[6] = v212;
  v60[7] = v59;

  v61 = v215;
  v62 = v255;
  v255[8] = v214;
  v62[9] = v61;

  v63 = v217;
  v64 = v255;
  v255[10] = v216;
  v64[11] = v63;

  v65 = v219;
  v66 = v255;
  v255[12] = v218;
  v66[13] = v65;

  v67 = v221;
  v68 = v255;
  v255[14] = v220;
  v68[15] = v67;

  v69 = v223;
  v70 = v255;
  v255[16] = v222;
  v70[17] = v69;

  v71 = v225;
  v72 = v255;
  v255[18] = v224;
  v72[19] = v71;

  v73 = v227;
  v74 = v255;
  v255[20] = v226;
  v74[21] = v73;

  v75 = v229;
  v76 = v255;
  v255[22] = v228;
  v76[23] = v75;

  v77 = v231;
  v78 = v255;
  v255[24] = v230;
  v78[25] = v77;

  v79 = v233;
  v80 = v255;
  v255[26] = v232;
  v80[27] = v79;

  v81 = v235;
  v82 = v255;
  v255[28] = v234;
  v82[29] = v81;

  v83 = v237;
  v84 = v255;
  v255[30] = v236;
  v84[31] = v83;

  v85 = v239;
  v86 = v255;
  v255[32] = v238;
  v86[33] = v85;

  v87 = v241;
  v88 = v255;
  v255[34] = v240;
  v88[35] = v87;

  v89 = v243;
  v90 = v255;
  v255[36] = v242;
  v90[37] = v89;

  v91 = v245;
  v92 = v255;
  v255[38] = v244;
  v92[39] = v91;

  v93 = v247;
  v94 = v255;
  v255[40] = v246;
  v94[41] = v93;

  v95 = v249;
  v96 = v255;
  v255[42] = v248;
  v96[43] = v95;

  v97 = v251;
  v98 = v255;
  v255[44] = v250;
  v98[45] = v97;

  v99 = v254;
  v100 = v255;
  v255[46] = v253;
  v100[47] = v99;
  sub_1B0394964();

  if (os_log_type_enabled(v257, v258))
  {
    v101 = v142;
    v135 = sub_1B0E45D78();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v136 = sub_1B03949A8(0, v134, v134);
    v137 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v138 = &v263;
    v263 = v135;
    v139 = &v262;
    v262 = v136;
    v140 = &v261;
    v261 = v137;
    sub_1B0394A48(3, &v263);
    sub_1B0394A48(8, v138);
    v259 = v206;
    v260 = v207;
    sub_1B03949FC(&v259, v138, v139, v140);
    v141 = v101;
    if (v101)
    {

      __break(1u);
    }

    else
    {
      v259 = v208;
      v260 = v209;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v133 = 0;
      v259 = v210;
      v260 = v211;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v132 = 0;
      v259 = v212;
      v260 = v213;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v131 = 0;
      v259 = v214;
      v260 = v215;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v130 = 0;
      v259 = v216;
      v260 = v217;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v129 = 0;
      v259 = v218;
      v260 = v219;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v128 = 0;
      v259 = v220;
      v260 = v221;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v127 = 0;
      v259 = v222;
      v260 = v223;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v126 = 0;
      v259 = v224;
      v260 = v225;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v125 = 0;
      v259 = v226;
      v260 = v227;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v124 = 0;
      v259 = v228;
      v260 = v229;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v123 = 0;
      v259 = v230;
      v260 = v231;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v122 = 0;
      v259 = v232;
      v260 = v233;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v121 = 0;
      v259 = v234;
      v260 = v235;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v120 = 0;
      v259 = v236;
      v260 = v237;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119 = 0;
      v259 = v238;
      v260 = v239;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v118 = 0;
      v259 = v240;
      v260 = v241;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v117 = 0;
      v259 = v242;
      v260 = v243;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v116 = 0;
      v259 = v244;
      v260 = v245;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v115 = 0;
      v259 = v246;
      v260 = v247;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v114 = 0;
      v259 = v248;
      v260 = v249;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v113 = 0;
      v259 = v250;
      v260 = v251;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v112 = 0;
      v259 = v253;
      v260 = v254;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      _os_log_impl(&dword_1B0389000, v257, v258, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Deleting all server messages due to validity change: %u → 0x%x", v135, 0x37u);
      sub_1B03998A8(v136, 0, v134);
      sub_1B03998A8(v137, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v102 = v147;
  MEMORY[0x1E69E5920](v257);
  (*(v154 + 8))(v150, v156);
  v110 = *(v171 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_messageChangeManager);
  MEMORY[0x1E69E5928](v110);
  (*(v144 + 16))(v102, v171 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxURL, v143);
  v109 = sub_1B0E42D58();
  (*(v144 + 8))(v147, v143);
  [v110 reflectAllMessagesDeletedInMailboxURL_];
  MEMORY[0x1E69E5920](v109);
  MEMORY[0x1E69E5920](v110);
  v103 = *(v168 + 4);
  v104 = v168[1];
  v105 = *(v168 + 16);
  v106 = v168[3];
  v107 = *(v168 + 32);
  LODWORD(v264) = *v168;
  BYTE4(v264) = v103 & 1;
  v111 = v267;
  sub_1B0A42B34(v264, v104, v105 & 1, v106, v107 & 1, 0, 1, v267);
  return sub_1B082AE44(v111);
}

uint64_t sub_1B082E174(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_store);
  MEMORY[0x1E69E5928](v2);
  v3 = [v2 uidValidity];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B082E1D8(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return v2;
}

uint64_t sub_1B082E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v28 = a3;
  v29 = a4;
  v26 = sub_1B087314C;
  v27 = sub_1B0873158;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v71 = a2;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v16 - v30;
  v70 = &v16 - v30;
  v69 = __PAIR64__(v6, v36);
  v68 = v7;
  v67 = v8;
  v66 = v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v32 = sub_1B0E46A48();
  v41 = sub_1B041C1E8();
  v39 = &type metadata for UID;
  MessageIdentifierSet.init(arrayLiteral:)(v32, &type metadata for UID, v41, v9);
  v65 = 0;
  v33 = *(v4 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_serverMessagePersistence);
  MEMORY[0x1E69E5928](v33);
  v63 = v36;
  MessageIdentifierRange.lowerBound.getter(v37, &v62);
  v34 = &v61;
  v61 = v62;
  v40 = sub_1B03948EC();
  v38 = MEMORY[0x1E69E6530];
  BinaryInteger.init<A>(_:)(v34, MEMORY[0x1E69E6530], v39, v40, v41);
  v35 = v64;
  v59 = v36;
  MessageIdentifierRange.upperBound.getter(v37, &v58);
  v57 = v58;
  BinaryInteger.init<A>(_:)(&v57, v38, v39, v40, v41);
  v42 = v60;
  v55 = v36;
  MessageIdentifierRange.lowerBound.getter(v37, &v54);
  v53 = v54;
  result = BinaryInteger.init<A>(_:)(&v53, v38, v39, v40, v41);
  v43 = v42 - v56;
  if (__OFSUB__(v42, v56))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v43 + 1;
  if (__OFADD__(v43, 1))
  {
    goto LABEL_12;
  }

  v18 = 32;
  v19 = 7;
  v13 = swift_allocObject();
  v20 = v13;
  *(v13 + 16) = v31;
  *(v13 + 24) = &v65;

  v14 = swift_allocObject();
  v15 = v20;
  v22 = v14;
  *(v14 + 16) = v26;
  *(v14 + 24) = v15;

  v51 = v27;
  v52 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = 0;
  v49 = sub_1B082E8F4;
  v50 = &block_descriptor_6;
  v21 = _Block_copy(&aBlock);

  v44 = v35;
  v45 = v24;
  [v33 enumerateMessageBatchLimitUIDsWithWindow:v35 batchSize:v24 newUIDCount:v28 block:{v29, v21}];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](v33);
    sub_1B03D08AC(v31, v25);
    v17 = v65;
    sub_1B03D09B8(v31);

    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1B082E74C(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = 0;
  v12 = 0;
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v19 = a1;
  v9 = sub_1B041C1E8();
  v4 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v19, &type metadata for UID, MEMORY[0x1E69E7668], v9, v4, &v20);
  if ((v21 & 1) == 0)
  {
    v12 = v20;
    v10 = v20;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.insert(_:)(v11, &v10, v5);
  }

  v17 = a2;
  v18 = 0;
  v16 = a2;
  v14 = *a4;
  v13 = a2;
  result = sub_1B0E46B68();
  *a4 = v15;
  return result;
}

uint64_t sub_1B082E92C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v374 = a1;
  v404 = a2;
  v372 = a3;
  v373 = a4;
  v379 = a5;
  v396 = sub_1B074E050;
  v405 = sub_1B08731F4;
  v407 = sub_1B0394C30;
  v408 = sub_1B0394C24;
  v411 = sub_1B074DFFC;
  v413 = sub_1B039BA88;
  v416 = sub_1B039BB94;
  v417 = sub_1B0394C24;
  v420 = sub_1B039BBA0;
  v422 = sub_1B039BC08;
  v424 = 0x786F626C69616DLL;
  v425 = sub_1B06BA324;
  v427 = sub_1B074E0E4;
  v429 = sub_1B039BCF8;
  v431 = sub_1B08731EC;
  v433 = sub_1B03B0DF8;
  v437 = sub_1B074EF98;
  v441 = sub_1B039BCF8;
  v444 = sub_1B0398F5C;
  v446 = sub_1B0398F5C;
  v448 = sub_1B0399178;
  v450 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v454 = sub_1B039BA94;
  v456 = sub_1B0398F5C;
  v458 = sub_1B0398F5C;
  v460 = sub_1B0399178;
  v462 = sub_1B0398F5C;
  v464 = sub_1B0398F5C;
  v466 = sub_1B03991EC;
  v468 = sub_1B0398F5C;
  v470 = sub_1B0398F5C;
  v472 = sub_1B03993BC;
  v474 = sub_1B0398F5C;
  v476 = sub_1B0398F5C;
  v478 = sub_1B039BCEC;
  v480 = sub_1B0398F5C;
  v482 = sub_1B0398F5C;
  v484 = sub_1B0399260;
  v486 = sub_1B0398F5C;
  v488 = sub_1B0398F5C;
  v491 = sub_1B039BCEC;
  v331 = sub_1B074E050;
  v332 = sub_1B08731FC;
  v333 = sub_1B087321C;
  v334 = sub_1B0394C24;
  v335 = sub_1B074DFFC;
  v336 = sub_1B039BA88;
  v337 = sub_1B0394C24;
  v338 = sub_1B039BBA0;
  v339 = sub_1B039BC08;
  v340 = sub_1B06BA324;
  v341 = sub_1B074E0E4;
  v342 = sub_1B039BCF8;
  v343 = sub_1B0873228;
  v344 = sub_1B039BCF8;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B0399178;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B039BA94;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B0399178;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B03991EC;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B03993BC;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B039BCEC;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B039BCEC;
  v521 = 0;
  v520 = 0;
  v518 = 0;
  v519 = 0;
  v517 = 0;
  v516 = 0;
  memset(&v508[7], 0, 0x38uLL);
  v507 = 0;
  v368 = 0;
  v366 = (*(*(_s19CachedMailboxValuesV15MissingBodyDataVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v367 = v207 - v366;
  v389 = sub_1B0E439A8();
  v387 = *(v389 - 8);
  v388 = v389 - 8;
  v369 = (v387[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v368);
  v370 = v207 - v369;
  v371 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v386 = v207 - v371;
  v394 = _s6LoggerVMa_1(v8);
  v375 = (*(*(v394 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v374);
  v376 = v207 - v375;
  v377 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v395 = v207 - v377;
  v378 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v392 = v207 - v378;
  v521 = v13;
  v520 = v14;
  v518 = v15;
  v410 = 1;
  v519 = v16 & 1;
  v517 = v17;
  v516 = v5;
  sub_1B0831978(v13, v14);
  v380 = v509;
  v381 = v511;
  v382 = v513;
  v383 = v515;
  v508[7] = v509;
  v508[8] = v510;
  v508[9] = v511;
  v508[10] = v512;
  v508[11] = v513;
  v508[12] = v514;
  v508[13] = v515;
  v385 = v508;
  v508[0] = v509;
  v508[1] = v510;
  v508[2] = v511;
  v508[3] = v512;
  v508[4] = v513;
  v508[5] = v514;
  v508[6] = v515;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2650, &unk_1B0E9DDA0);
  v18 = sub_1B0873164();
  sub_1B0813C80(v385, v384, v18);
  v19 = v386;
  v393 = &unk_1EB737000;
  sub_1B074B69C(v403 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v392);
  v390 = v387[2];
  v391 = v387 + 2;
  v390(v19, v392, v389);
  sub_1B074B764(v392);

  sub_1B074B69C(v403 + v393[299], v395);
  v20 = (v395 + *(v394 + 20));
  v399 = *v20;
  v400 = *(v20 + 1);
  v401 = *(v20 + 1);
  v402 = *(v20 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v395);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v398 = 36;
  v439 = 7;
  v21 = swift_allocObject();
  v22 = v400;
  v23 = v401;
  v24 = v402;
  v412 = v21;
  *(v21 + 16) = v399;
  *(v21 + 20) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25 = swift_allocObject();
  v26 = v400;
  v27 = v401;
  v28 = v402;
  v397 = v25;
  *(v25 + 16) = v399;
  *(v25 + 20) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v28;

  v438 = 32;
  v29 = swift_allocObject();
  v30 = v397;
  v421 = v29;
  *(v29 + 16) = v396;
  *(v29 + 24) = v30;
  sub_1B0394868();
  sub_1B0394868();

  v31 = swift_allocObject();
  v32 = v400;
  v33 = v401;
  v34 = v402;
  v428 = v31;
  *(v31 + 16) = v399;
  *(v31 + 20) = v32;
  *(v31 + 24) = v33;
  *(v31 + 32) = v34;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v443 = 24;
  v432 = swift_allocObject();
  *(v432 + 16) = v404;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v406 = swift_allocObject();
  *(v406 + 16) = v404;

  v35 = swift_allocObject();
  v36 = v406;
  v440 = v35;
  *(v35 + 16) = v405;
  *(v35 + 24) = v36;

  v495 = sub_1B0E43988();
  v496 = sub_1B0E45908();
  v435 = 17;
  v445 = swift_allocObject();
  v415 = 16;
  *(v445 + 16) = 16;
  v447 = swift_allocObject();
  v419 = 4;
  *(v447 + 16) = 4;
  v37 = swift_allocObject();
  v409 = v37;
  *(v37 + 16) = v407;
  *(v37 + 24) = 0;
  v38 = swift_allocObject();
  v39 = v409;
  v449 = v38;
  *(v38 + 16) = v408;
  *(v38 + 24) = v39;
  v451 = swift_allocObject();
  *(v451 + 16) = 0;
  v453 = swift_allocObject();
  *(v453 + 16) = v410;
  v40 = swift_allocObject();
  v41 = v412;
  v414 = v40;
  *(v40 + 16) = v411;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v414;
  v455 = v42;
  *(v42 + 16) = v413;
  *(v42 + 24) = v43;
  v457 = swift_allocObject();
  *(v457 + 16) = v415;
  v459 = swift_allocObject();
  *(v459 + 16) = v419;
  v44 = swift_allocObject();
  v418 = v44;
  *(v44 + 16) = v416;
  *(v44 + 24) = 0;
  v45 = swift_allocObject();
  v46 = v418;
  v461 = v45;
  *(v45 + 16) = v417;
  *(v45 + 24) = v46;
  v463 = swift_allocObject();
  *(v463 + 16) = 0;
  v465 = swift_allocObject();
  *(v465 + 16) = v419;
  v47 = swift_allocObject();
  v48 = v421;
  v423 = v47;
  *(v47 + 16) = v420;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v423;
  v467 = v49;
  *(v49 + 16) = v422;
  *(v49 + 24) = v50;
  v469 = swift_allocObject();
  *(v469 + 16) = 112;
  v471 = swift_allocObject();
  v436 = 8;
  *(v471 + 16) = 8;
  v426 = swift_allocObject();
  *(v426 + 16) = v424;
  v51 = swift_allocObject();
  v52 = v426;
  v473 = v51;
  *(v51 + 16) = v425;
  *(v51 + 24) = v52;
  v475 = swift_allocObject();
  *(v475 + 16) = 37;
  v477 = swift_allocObject();
  *(v477 + 16) = v436;
  v53 = swift_allocObject();
  v54 = v428;
  v430 = v53;
  *(v53 + 16) = v427;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v430;
  v479 = v55;
  *(v55 + 16) = v429;
  *(v55 + 24) = v56;
  v481 = swift_allocObject();
  *(v481 + 16) = 0;
  v483 = swift_allocObject();
  *(v483 + 16) = v436;
  v57 = swift_allocObject();
  v58 = v432;
  v434 = v57;
  *(v57 + 16) = v431;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v434;
  v485 = v59;
  *(v59 + 16) = v433;
  *(v59 + 24) = v60;
  v487 = swift_allocObject();
  *(v487 + 16) = 34;
  v489 = swift_allocObject();
  *(v489 + 16) = v436;
  v61 = swift_allocObject();
  v62 = v440;
  v442 = v61;
  *(v61 + 16) = v437;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v442;
  v492 = v63;
  *(v63 + 16) = v441;
  *(v63 + 24) = v64;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v490 = sub_1B0E46A48();
  v493 = v65;

  v66 = v445;
  v67 = v493;
  *v493 = v444;
  v67[1] = v66;

  v68 = v447;
  v69 = v493;
  v493[2] = v446;
  v69[3] = v68;

  v70 = v449;
  v71 = v493;
  v493[4] = v448;
  v71[5] = v70;

  v72 = v451;
  v73 = v493;
  v493[6] = v450;
  v73[7] = v72;

  v74 = v453;
  v75 = v493;
  v493[8] = v452;
  v75[9] = v74;

  v76 = v455;
  v77 = v493;
  v493[10] = v454;
  v77[11] = v76;

  v78 = v457;
  v79 = v493;
  v493[12] = v456;
  v79[13] = v78;

  v80 = v459;
  v81 = v493;
  v493[14] = v458;
  v81[15] = v80;

  v82 = v461;
  v83 = v493;
  v493[16] = v460;
  v83[17] = v82;

  v84 = v463;
  v85 = v493;
  v493[18] = v462;
  v85[19] = v84;

  v86 = v465;
  v87 = v493;
  v493[20] = v464;
  v87[21] = v86;

  v88 = v467;
  v89 = v493;
  v493[22] = v466;
  v89[23] = v88;

  v90 = v469;
  v91 = v493;
  v493[24] = v468;
  v91[25] = v90;

  v92 = v471;
  v93 = v493;
  v493[26] = v470;
  v93[27] = v92;

  v94 = v473;
  v95 = v493;
  v493[28] = v472;
  v95[29] = v94;

  v96 = v475;
  v97 = v493;
  v493[30] = v474;
  v97[31] = v96;

  v98 = v477;
  v99 = v493;
  v493[32] = v476;
  v99[33] = v98;

  v100 = v479;
  v101 = v493;
  v493[34] = v478;
  v101[35] = v100;

  v102 = v481;
  v103 = v493;
  v493[36] = v480;
  v103[37] = v102;

  v104 = v483;
  v105 = v493;
  v493[38] = v482;
  v105[39] = v104;

  v106 = v485;
  v107 = v493;
  v493[40] = v484;
  v107[41] = v106;

  v108 = v487;
  v109 = v493;
  v493[42] = v486;
  v109[43] = v108;

  v110 = v489;
  v111 = v493;
  v493[44] = v488;
  v111[45] = v110;

  v112 = v492;
  v113 = v493;
  v493[46] = v491;
  v113[47] = v112;
  sub_1B0394964();

  if (os_log_type_enabled(v495, v496))
  {
    v323 = sub_1B0E45D78();
    v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v324 = sub_1B03949A8(0, v322, v322);
    v325 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v326 = &v501;
    v501 = v323;
    v327 = &v500;
    v500 = v324;
    v328 = &v499;
    v499 = v325;
    sub_1B0394A48(3, &v501);
    sub_1B0394A48(8, v326);
    v114 = v330;
    v497 = v444;
    v498 = v445;
    sub_1B03949FC(&v497, v326, v327, v328);
    v329 = v114;
    if (v114)
    {

      __break(1u);
    }

    else
    {
      v497 = v446;
      v498 = v447;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v320 = 0;
      v497 = v448;
      v498 = v449;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v319 = 0;
      v497 = v450;
      v498 = v451;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v318 = 0;
      v497 = v452;
      v498 = v453;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v317 = 0;
      v497 = v454;
      v498 = v455;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v316 = 0;
      v497 = v456;
      v498 = v457;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v315 = 0;
      v497 = v458;
      v498 = v459;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v314 = 0;
      v497 = v460;
      v498 = v461;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v313 = 0;
      v497 = v462;
      v498 = v463;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v312 = 0;
      v497 = v464;
      v498 = v465;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v311 = 0;
      v497 = v466;
      v498 = v467;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v310 = 0;
      v497 = v468;
      v498 = v469;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v309 = 0;
      v497 = v470;
      v498 = v471;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v308 = 0;
      v497 = v472;
      v498 = v473;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v307 = 0;
      v497 = v474;
      v498 = v475;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v306 = 0;
      v497 = v476;
      v498 = v477;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v305 = 0;
      v497 = v478;
      v498 = v479;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v304 = 0;
      v497 = v480;
      v498 = v481;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v303 = 0;
      v497 = v482;
      v498 = v483;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v302 = 0;
      v497 = v484;
      v498 = v485;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v301 = 0;
      v497 = v486;
      v498 = v487;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v300 = 0;
      v497 = v488;
      v498 = v489;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v299 = 0;
      v497 = v491;
      v498 = v492;
      sub_1B03949FC(&v497, &v501, &v500, &v499);
      v298 = 0;
      _os_log_impl(&dword_1B0389000, v495, v496, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Created %ld new message(s) with UIDs %{public}s.", v323, 0x3Fu);
      sub_1B03998A8(v324, 0, v322);
      sub_1B03998A8(v325, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v321 = v298;
    }
  }

  else
  {

    v321 = v330;
  }

  v293 = v321;
  MEMORY[0x1E69E5920](v495);
  v294 = v387[1];
  v295 = v387 + 1;
  v294(v386, v389);
  sub_1B07F3F74(v379, v367);
  v297 = sub_1B0829EAC();
  v296 = v115;
  sub_1B074B69C(v403 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v395);
  sub_1B07FFA2C(v297, v296, v395);
  sub_1B074B764(v395);

  sub_1B07F45A0(v367);
  if (v373)
  {
    v291 = v293;
  }

  else
  {
    v292 = v372;
    v116 = v370;
    v245 = v372;
    v507 = v372;
    v238 = &unk_1EB737000;
    sub_1B074B69C(v403 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v376);
    v390(v116, v376, v389);
    sub_1B074B764(v376);

    sub_1B074B69C(v403 + v238[299], v395);
    v117 = (v395 + *(v394 + 20));
    v241 = *v117;
    v242 = *(v117 + 1);
    v243 = *(v117 + 1);
    v244 = *(v117 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v395);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v240 = 36;
    v263 = 7;
    v118 = swift_allocObject();
    v119 = v242;
    v120 = v243;
    v121 = v244;
    v249 = v118;
    *(v118 + 16) = v241;
    *(v118 + 20) = v119;
    *(v118 + 24) = v120;
    *(v118 + 32) = v121;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v122 = swift_allocObject();
    v123 = v242;
    v124 = v243;
    v125 = v244;
    v239 = v122;
    *(v122 + 16) = v241;
    *(v122 + 20) = v123;
    *(v122 + 24) = v124;
    *(v122 + 32) = v125;

    v262 = 32;
    v126 = swift_allocObject();
    v127 = v239;
    v254 = v126;
    *(v126 + 16) = v331;
    *(v126 + 24) = v127;
    sub_1B0394868();
    sub_1B0394868();

    v128 = swift_allocObject();
    v129 = v242;
    v130 = v243;
    v131 = v244;
    v258 = v128;
    *(v128 + 16) = v241;
    *(v128 + 20) = v129;
    *(v128 + 24) = v130;
    *(v128 + 32) = v131;

    v256 = 24;
    v132 = swift_allocObject();
    v133 = HIDWORD(v245);
    v247 = v132;
    *(v132 + 16) = v245;
    *(v132 + 20) = v133;

    v134 = swift_allocObject();
    v135 = v247;
    v246 = v134;
    *(v134 + 16) = v332;
    *(v134 + 24) = v135;

    v136 = swift_allocObject();
    v137 = v246;
    v264 = v136;
    *(v136 + 16) = v333;
    *(v136 + 24) = v137;

    v289 = sub_1B0E43988();
    v290 = sub_1B0E458D8();
    v260 = 17;
    v266 = swift_allocObject();
    v251 = 16;
    *(v266 + 16) = 16;
    v267 = swift_allocObject();
    v253 = 4;
    *(v267 + 16) = 4;
    v138 = swift_allocObject();
    v248 = v138;
    *(v138 + 16) = v407;
    *(v138 + 24) = 0;
    v139 = swift_allocObject();
    v140 = v248;
    v268 = v139;
    *(v139 + 16) = v334;
    *(v139 + 24) = v140;
    v269 = swift_allocObject();
    *(v269 + 16) = 0;
    v270 = swift_allocObject();
    *(v270 + 16) = 1;
    v141 = swift_allocObject();
    v142 = v249;
    v250 = v141;
    *(v141 + 16) = v335;
    *(v141 + 24) = v142;
    v143 = swift_allocObject();
    v144 = v250;
    v271 = v143;
    *(v143 + 16) = v336;
    *(v143 + 24) = v144;
    v272 = swift_allocObject();
    *(v272 + 16) = v251;
    v273 = swift_allocObject();
    *(v273 + 16) = v253;
    v145 = swift_allocObject();
    v252 = v145;
    *(v145 + 16) = v416;
    *(v145 + 24) = 0;
    v146 = swift_allocObject();
    v147 = v252;
    v274 = v146;
    *(v146 + 16) = v337;
    *(v146 + 24) = v147;
    v275 = swift_allocObject();
    *(v275 + 16) = 0;
    v276 = swift_allocObject();
    *(v276 + 16) = v253;
    v148 = swift_allocObject();
    v149 = v254;
    v255 = v148;
    *(v148 + 16) = v338;
    *(v148 + 24) = v149;
    v150 = swift_allocObject();
    v151 = v255;
    v277 = v150;
    *(v150 + 16) = v339;
    *(v150 + 24) = v151;
    v278 = swift_allocObject();
    *(v278 + 16) = 112;
    v279 = swift_allocObject();
    v261 = 8;
    *(v279 + 16) = 8;
    v257 = swift_allocObject();
    *(v257 + 16) = v424;
    v152 = swift_allocObject();
    v153 = v257;
    v280 = v152;
    *(v152 + 16) = v340;
    *(v152 + 24) = v153;
    v281 = swift_allocObject();
    *(v281 + 16) = 37;
    v282 = swift_allocObject();
    *(v282 + 16) = v261;
    v154 = swift_allocObject();
    v155 = v258;
    v259 = v154;
    *(v154 + 16) = v341;
    *(v154 + 24) = v155;
    v156 = swift_allocObject();
    v157 = v259;
    v283 = v156;
    *(v156 + 16) = v342;
    *(v156 + 24) = v157;
    v284 = swift_allocObject();
    *(v284 + 16) = 34;
    v285 = swift_allocObject();
    *(v285 + 16) = v261;
    v158 = swift_allocObject();
    v159 = v264;
    v265 = v158;
    *(v158 + 16) = v343;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v265;
    v287 = v160;
    *(v160 + 16) = v344;
    *(v160 + 24) = v161;
    v286 = sub_1B0E46A48();
    v288 = v162;

    v163 = v266;
    v164 = v288;
    *v288 = v345;
    v164[1] = v163;

    v165 = v267;
    v166 = v288;
    v288[2] = v346;
    v166[3] = v165;

    v167 = v268;
    v168 = v288;
    v288[4] = v347;
    v168[5] = v167;

    v169 = v269;
    v170 = v288;
    v288[6] = v348;
    v170[7] = v169;

    v171 = v270;
    v172 = v288;
    v288[8] = v349;
    v172[9] = v171;

    v173 = v271;
    v174 = v288;
    v288[10] = v350;
    v174[11] = v173;

    v175 = v272;
    v176 = v288;
    v288[12] = v351;
    v176[13] = v175;

    v177 = v273;
    v178 = v288;
    v288[14] = v352;
    v178[15] = v177;

    v179 = v274;
    v180 = v288;
    v288[16] = v353;
    v180[17] = v179;

    v181 = v275;
    v182 = v288;
    v288[18] = v354;
    v182[19] = v181;

    v183 = v276;
    v184 = v288;
    v288[20] = v355;
    v184[21] = v183;

    v185 = v277;
    v186 = v288;
    v288[22] = v356;
    v186[23] = v185;

    v187 = v278;
    v188 = v288;
    v288[24] = v357;
    v188[25] = v187;

    v189 = v279;
    v190 = v288;
    v288[26] = v358;
    v190[27] = v189;

    v191 = v280;
    v192 = v288;
    v288[28] = v359;
    v192[29] = v191;

    v193 = v281;
    v194 = v288;
    v288[30] = v360;
    v194[31] = v193;

    v195 = v282;
    v196 = v288;
    v288[32] = v361;
    v196[33] = v195;

    v197 = v283;
    v198 = v288;
    v288[34] = v362;
    v198[35] = v197;

    v199 = v284;
    v200 = v288;
    v288[36] = v363;
    v200[37] = v199;

    v201 = v285;
    v202 = v288;
    v288[38] = v364;
    v202[39] = v201;

    v203 = v287;
    v204 = v288;
    v288[40] = v365;
    v204[41] = v203;
    sub_1B0394964();

    if (os_log_type_enabled(v289, v290))
    {
      v231 = sub_1B0E45D78();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v232 = sub_1B03949A8(0, v230, v230);
      v233 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v234 = &v506;
      v506 = v231;
      v235 = &v505;
      v505 = v232;
      v236 = &v504;
      v504 = v233;
      sub_1B0394A48(3, &v506);
      sub_1B0394A48(7, v234);
      v205 = v293;
      v502 = v345;
      v503 = v266;
      sub_1B03949FC(&v502, v234, v235, v236);
      v237 = v205;
      if (v205)
      {

        __break(1u);
      }

      else
      {
        v502 = v346;
        v503 = v267;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v228 = 0;
        v502 = v347;
        v503 = v268;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v227 = 0;
        v502 = v348;
        v503 = v269;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v226 = 0;
        v502 = v349;
        v503 = v270;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v225 = 0;
        v502 = v350;
        v503 = v271;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v224 = 0;
        v502 = v351;
        v503 = v272;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v223 = 0;
        v502 = v352;
        v503 = v273;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v222 = 0;
        v502 = v353;
        v503 = v274;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v221 = 0;
        v502 = v354;
        v503 = v275;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v220 = 0;
        v502 = v355;
        v503 = v276;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v219 = 0;
        v502 = v356;
        v503 = v277;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v218 = 0;
        v502 = v357;
        v503 = v278;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v217 = 0;
        v502 = v358;
        v503 = v279;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v216 = 0;
        v502 = v359;
        v503 = v280;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v215 = 0;
        v502 = v360;
        v503 = v281;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v214 = 0;
        v502 = v361;
        v503 = v282;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v213 = 0;
        v502 = v362;
        v503 = v283;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v212 = 0;
        v502 = v363;
        v503 = v284;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v211 = 0;
        v502 = v364;
        v503 = v285;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v210 = 0;
        v502 = v365;
        v503 = v287;
        sub_1B03949FC(&v502, &v506, &v505, &v504);
        v209 = 0;
        _os_log_impl(&dword_1B0389000, v289, v290, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Updating fetched-window to %{public}s.", v231, 0x35u);
        sub_1B03998A8(v232, 0, v230);
        sub_1B03998A8(v233, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v229 = v209;
      }
    }

    else
    {

      v229 = v293;
    }

    v208 = v229;
    MEMORY[0x1E69E5920](v289);
    v294(v370, v389);
    sub_1B0A42BC0(v245 | (HIDWORD(v245) << 32), 0);
    v291 = v208;
  }

  v207[1] = v291;
}

uint64_t sub_1B0831978(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v10 = v2;
  v7 = sub_1B083DDEC();
  v9[2] = v7;
  v9[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2658, &unk_1B0EA2DE0);
  v3 = sub_1B0873234();
  MEMORY[0x1B27270C0](v9, v6, v3);
  v8 = v9[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(swift_allocObject() + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2668, &qword_1B0E9DDB0);
  sub_1B08732C4();
  sub_1B0E46718();

  sub_1B039E440(&v8);
}
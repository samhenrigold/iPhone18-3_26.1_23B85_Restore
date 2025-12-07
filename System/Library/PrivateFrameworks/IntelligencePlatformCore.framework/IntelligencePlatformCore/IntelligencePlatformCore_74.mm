void sub_1C4AFB848(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v33 = a3;
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  MEMORY[0x1EEE9AC00](v32);
  v31 = sub_1C456902C(&qword_1EC0C2D58, &qword_1C4F50AE0);
  sub_1C43FCDF8();
  v28 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - v7;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v29 = v3;
  v14 = *(v3 + 16);
  v15 = sub_1C4EF9CD8();
  v16 = *(*(v15 - 8) + 16);
  v16(v13, a2, v15);
  sub_1C440BAA8(v13, 0, 1, v15);
  v17 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v16(v10, a2 + *(v17 + 36), v15);
  sub_1C440BAA8(v10, 0, 1, v15);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v13, v10, 0, 0, 0);
  v20 = [v14 publisherWithOptions_];

  v21 = v20;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v22 = v34;
  sub_1C4EFFC38();
  if (v22)
  {
  }

  else
  {
    v23 = swift_allocObject();
    v24 = v30;
    *(v23 + 16) = v29;
    *(v23 + 24) = v24;
    type metadata accessor for FeatureProviderChange(0);
    sub_1C4401CBC(&qword_1EDDEFEE8, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v25 = v27;
    sub_1C4F02848();

    (*(v28 + 32))(v33, v25, v31);
  }
}

uint64_t sub_1C4AFBBE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v5 = *a2;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4AFBC10, 0, 0);
}

uint64_t sub_1C4AFBC10()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    [*(v0 + 40) timestamp];
    sub_1C4EF9AC8();
    v5 = sub_1C4AFB304(v2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4AFC2B0(v5, v3);

    sub_1C465CF34();
    v7 = v6;

    v8 = type metadata accessor for FeatureProviderChange(0);
    v9 = 0;
    *(v4 + *(v8 + 20)) = 2;
    *(v4 + *(v8 + 24)) = v7;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Unable to parse eventBody from read event in semantic location featurizer", v13, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v8 = type metadata accessor for FeatureProviderChange(0);
    v9 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v9, 1, v8);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1C4AFBDE0()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C4AFB404(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C4AFBE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9C88();
  sub_1C4AFB404(v10);
  (*(v6 + 8))(v10, v4);
  v11 = a1 == 0x79745F6563616C70 && a2 == 0xEA00000000006570;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {
    v12 = 0x79745F6563616C70;
  }

  else
  {
    v15 = a1 == 0xD000000000000018 && 0x80000001C4F91770 == a2;
    if (!v15 && (sub_1C4F02938() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v12 = 0xD000000000000018;
  }

  v13 = sub_1C44F9274(v12);
LABEL_8:

  return v13;
}

uint64_t sub_1C4AFC0A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AFC1BC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AFC224(&qword_1EC0C3268, &unk_1C4F50A58);
  result = sub_1C4AFC224(&qword_1EC0C3270, &unk_1C4F50A74);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4AFC224(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SemanticLocationSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AFC264(uint64_t a1)
{
  result = sub_1C4AFC224(&qword_1EC0C3270, &unk_1C4F50A74);
  *(a1 + 16) = result;
  return result;
}

_BYTE *sub_1C4AFC2B0(_BYTE *a1, uint64_t a2)
{
  v3 = a1;
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a1[32];
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_bridgeObjectRetain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C441235C();
      v3 = sub_1C45867F0(v18, v19, v20, v21);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1C4501018(0, v6, v22 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C441235C();
  sub_1C4586AB8(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v16;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v3;
}

uint64_t sub_1C4AFC450(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AFBBE8(a1, a2, v7, v6);
}

_BYTE *storeEnumTagSinglePayload for SemLocPlaceTypeFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SemLocUserSpecificPlaceTypeFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AFC6C0()
{
  result = qword_1EC0C3280;
  if (!qword_1EC0C3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3280);
  }

  return result;
}

unint64_t sub_1C4AFC718()
{
  result = qword_1EC0C3288[0];
  if (!qword_1EC0C3288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC0C3288);
  }

  return result;
}

uint64_t Sequence.uniqued<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v56 = a1;
  v57 = a2;
  sub_1C43FCE64();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v16 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v45 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v50 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v24 = sub_1C4F01F48();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v42 - v25;
  sub_1C43FCE64();
  v54 = v27;
  MEMORY[0x1EEE9AC00](v28);
  AssociatedConformanceWitness = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v16;
  v55 = swift_getAssociatedTypeWitness();
  sub_1C43FCE64();
  v46 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v42 - v32;
  v60 = sub_1C4F00E98();
  v42 = v6;
  v44 = a5;
  sub_1C4F01488();
  v49 = sub_1C4F017A8();
  sub_1C4F016C8();
  v59 = sub_1C4F00EB8();
  v34 = v43;
  sub_1C4F01488();
  v58 = a4;
  v48 = sub_1C4F01B38();
  sub_1C4F01AE8();
  (*(v54 + 2))(AssociatedConformanceWitness, v42, v34);
  v54 = v33;
  sub_1C4F01478();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = (v45 + 32);
  v36 = (v47 + 1);
  v47 = (v45 + 16);
  for (i = (v45 + 8); ; (*i)(v23, AssociatedTypeWitness))
  {
    sub_1C4F01FA8();
    if (sub_1C44157D4(v26, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v35)(v23, v26, AssociatedTypeWitness);
    v56(v23);
    v38 = v58;
    v39 = sub_1C4F01B18();
    v40 = *v36;
    (*v36)(v14, v38);
    if ((v39 & 1) == 0)
    {
      (*v47)(v50, v23, AssociatedTypeWitness);
      sub_1C4F01768();
      v56(v23);
      sub_1C4F01AF8();
      v40(v14, v58);
    }
  }

  (*(v46 + 8))(v54, v55);

  return v60;
}

uint64_t AsyncSequence<>.sessionDataAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C43FCDF8();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  return (*(v5 + 32))(a2, v9, a1);
}

uint64_t SessionDataComplying.init(startDate:endDate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v15 = type metadata accessor for SessionDataComplying(0, a4, v13, v14);
  v12(a5 + *(v15 + 28), a2, v10);
  v16 = *(*(a4 - 8) + 32);
  v17 = a5 + *(v15 + 32);

  return v16(v17, a3, a4);
}

void sub_1C4AFCE44()
{
  sub_1C43FE96C();
  sub_1C43FF530(v3, v4, v5, v6);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C442BEB4();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  sub_1C440D778();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440606C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C442E500();
  sub_1C43FCDF8();
  v43 = v17;
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v19 = v18;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  sub_1C4EF9CC8();
  sub_1C4F00188();
  v21 = sub_1C44123F8();
  v22(v21);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v23 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v24 = swift_slowAlloc();
    v25 = sub_1C44052AC(v24);
    sub_1C4404678(&dword_1C43F8000, v26, v27, v25, "FutureSessionData", "");
    sub_1C441CD40();
  }

  v28 = sub_1C4432918();
  v29(v28);
  sub_1C4F00948();
  v30 = swift_allocObject();
  sub_1C4F00938();
  v31 = sub_1C44136BC();
  v32(v31);
  sub_1C4EFD5E8();
  (*(v2 + 8))(v0, v23);
  (*(v10 + 8))(v1, v30);
  v33 = sub_1C43FC7BC();
  v34(v33);
  v35 = sub_1C44036A0();
  v36(v35);
  v37 = sub_1C43FDD8C();
  sub_1C4AFEABC(v37, v38, v39, v40);
  (*(v43 + 8))(v19, v44);
  v41 = sub_1C44300C8();
  v42(v41);
  sub_1C43FBC80();
}

uint64_t AsyncSequence.toAnySessionAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C43FCDF8();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v12);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  result = (*(v8 + 32))(v14 + v13, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1C4AFFA10;
  a3[1] = v14;
  return result;
}

void sub_1C4AFD318()
{
  sub_1C43FE96C();
  sub_1C43FF530(v3, v4, v5, v6);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C442BEB4();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  sub_1C440D778();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440606C();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C442E500();
  sub_1C43FCDF8();
  v43 = v17;
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v19 = v18;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  sub_1C4EF9CC8();
  sub_1C4F00188();
  v21 = sub_1C44123F8();
  v22(v21);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v23 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v24 = swift_slowAlloc();
    v25 = sub_1C44052AC(v24);
    sub_1C4404678(&dword_1C43F8000, v26, v27, v25, "SessionData", "");
    sub_1C441CD40();
  }

  v28 = sub_1C4432918();
  v29(v28);
  sub_1C4F00948();
  v30 = swift_allocObject();
  sub_1C4F00938();
  v31 = sub_1C44136BC();
  v32(v31);
  sub_1C4EFD5E8();
  (*(v2 + 8))(v0, v23);
  (*(v10 + 8))(v1, v30);
  v33 = sub_1C43FC7BC();
  v34(v33);
  v35 = sub_1C44036A0();
  v36(v35);
  v37 = sub_1C43FDD8C();
  sub_1C4AFE1FC(v37, v38, v39, v40);
  (*(v43 + 8))(v19, v44);
  v41 = sub_1C44300C8();
  v42(v41);
  sub_1C43FBC80();
}

uint64_t SessionDataComplying.startDate.getter()
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v0 = sub_1C43FBC98();

  return v1(v0);
}

uint64_t SessionDataComplying.startDate.setter(uint64_t a1)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t SessionDataComplying.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t SessionDataComplying.endDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t SessionDataComplying.init<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t))
{
  a4[2](a3, a4);
  v8 = a4[3];
  type metadata accessor for SessionDataComplying(0, a2, v9, v10);
  v8(a3, a4);
  a4[4](a3, a4);
  v11 = *(*(a3 - 8) + 8);

  return v11(a1, a3);
}

uint64_t sub_1C4AFDA34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1C4AFDB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v40 = v24;
  v41 = v25;
  v27 = v26;
  v29 = v28;
  v30 = *(v26 + 16);
  v31 = *(v27 + 24);
  v39[0] = *(v27 + 32);
  v39[1] = v30;
  type metadata accessor for SessionCodableDataComplying.CodingKeys(255, v30, v31, v39[0]);
  sub_1C4400C88();
  swift_getWitnessTable();
  v32 = sub_1C4F02808();
  sub_1C43FCDF8();
  v34 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v39 - v36;
  sub_1C4409678(v29, v29[3]);
  sub_1C4F02BF8();
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
  v38 = v41;
  sub_1C4F027E8();
  if (!v38)
  {
    sub_1C4F027E8();
    sub_1C4F027E8();
  }

  (*(v34 + 8))(v37, v32);
  sub_1C43FBC80();
}

void sub_1C4AFDD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v78 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v67 = v33;
  v66 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v68 = v34;
  v76 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v71 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v70 = v37 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v72 = &v63 - v40;
  type metadata accessor for SessionCodableDataComplying.CodingKeys(255, v30, v28, v26);
  sub_1C4400C88();
  swift_getWitnessTable();
  v77 = sub_1C4F02708();
  sub_1C43FCDF8();
  v74 = v41;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v63 - v43;
  v73 = v30;
  v69 = v28;
  v45 = type metadata accessor for SessionCodableDataComplying(0, v30, v28, v26);
  sub_1C43FCDF8();
  v65 = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v63 - v48;
  sub_1C4409678(v32, v32[3]);
  v75 = v44;
  v50 = v78;
  sub_1C4F02BC8();
  if (v50)
  {
    sub_1C440962C(v32);
  }

  else
  {
    v63 = v45;
    v64 = v49;
    v51 = v71;
    v78 = v32;
    v52 = v73;
    sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
    v53 = v72;
    sub_1C4F026C8();
    v54 = v53;
    v55 = v76;
    v72 = *(v51 + 32);
    (v72)(v64, v54, v76);
    v56 = v70;
    sub_1C4F026C8();
    v57 = v64;
    (v72)(&v64[*(v63 + 44)], v56, v55);
    v58 = v68;
    sub_1C4F026C8();
    v59 = sub_1C440E700();
    v60(v59, v77);
    v61 = v63;
    (*(v66 + 32))(&v57[*(v63 + 48)], v58, v52);
    v62 = v65;
    (*(v65 + 16))(v67, v57, v61);
    sub_1C440962C(v78);
    (*(v62 + 8))(v57, v61);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4AFE1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v65 = sub_1C4F00908();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C4F008B8();
  v72 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C4F008F8();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C4EF9CD8();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v11;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v60 - v14;
  sub_1C4EF9CC8();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v15 = sub_1C4F01198();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 34;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C4AD7104;
  *(v21 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v24 = v6;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v19;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v20;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v21;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v22;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v23;
  *(inited + 112) = sub_1C4B00DA8;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v26 = sub_1C4EFD5F8();
  v28 = v27;
  sub_1C4EFD608();
  v29 = sub_1C4F008D8();
  sub_1C4F00928();
  v30 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {

    (*(v72 + 1))(v24, v78);
    (*(v69 + 8))(v8, v70);
LABEL_17:
    v78 = sub_1C4F00288();
    v72 = "semanticLocationStream";
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = v71;
    v52 = v76;
    v50(v71, v77, v76);
    v53 = v73;
    v54 = v74;
    v50(v73, v74, v52);
    v55 = *(v49 + 80);
    v56 = (v55 + 16) & ~v55;
    v57 = (v68 + v55 + v56) & ~v55;
    v58 = swift_allocObject();
    v59 = *(v49 + 32);
    v59(v58 + v56, v51, v52);
    v59(v58 + v57, v53, v52);
    sub_1C4F00278();

    return (*(v49 + 8))(v54, v52);
  }

  v64 = v30;
  v32 = v78;
  if ((v28 & 1) == 0)
  {
    v33 = v26;
    v34 = v67;
    v35 = v66;
    v63 = v33;
    if (v33)
    {
      v36 = v65;
LABEL_10:

      sub_1C4F00958();

      v39 = (*(v34 + 11))(v35, v36) == *MEMORY[0x1E69E93E8];
      v62 = v24;
      v61 = v8;
      if (v39)
      {
        v40 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 1))(v35, v36);
        v67 = "type=%{signpost.telemetry:string1,public}s %s";
        v40 = 2;
      }

      v41 = v63;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = 0;
      v79 = v43;
      v80 = 0;
      *v42 = v40;
      v42[1] = v40;
      DynamicType = (v42 + 2);
      v45 = v32;
      while (v44 != 96)
      {
        v46 = *(inited + v44 + 32);

        v46(&DynamicType, &v80, &v79);
        v45 = v32;

        v44 += 16;
      }

      v47 = v62;
      v48 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v29, v64, v48, v41, v67, v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v43, -1, -1);
      MEMORY[0x1C6942830](v42, -1, -1);

      (*(v72 + 1))(v47, v45);
      (*(v69 + 8))(v61, v70);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  v37 = HIDWORD(v26);
  v38 = v26;
  v34 = v67;
  v35 = v66;
  if (v37)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v38 & 0xFFFFF800) != 0xD800)
  {
    v36 = v65;
    if (v38 >> 16 <= 0x10)
    {
      v63 = &v81;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4AFEABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v65 = sub_1C4F00908();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C4F008B8();
  v72 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C4F008F8();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C4EF9CD8();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v60 - v11;
  v68 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v60 - v14;
  sub_1C4EF9CC8();
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v15 = sub_1C4F01198();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 34;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C4B00DB4;
  *(v21 + 24) = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v24 = v6;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549F4;
  *(inited + 40) = v19;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v20;
  *(inited + 64) = sub_1C4454C38;
  *(inited + 72) = v21;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v22;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v23;
  *(inited + 112) = sub_1C4B00DA8;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v26 = sub_1C4EFD5F8();
  v28 = v27;
  sub_1C4EFD608();
  v29 = sub_1C4F008D8();
  sub_1C4F00928();
  v30 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {

    (*(v72 + 1))(v24, v78);
    (*(v69 + 8))(v8, v70);
LABEL_17:
    v78 = sub_1C4F00288();
    v72 = "FutureSessionData";
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = v71;
    v52 = v76;
    v50(v71, v77, v76);
    v53 = v73;
    v54 = v74;
    v50(v73, v74, v52);
    v55 = *(v49 + 80);
    v56 = (v55 + 16) & ~v55;
    v57 = (v68 + v55 + v56) & ~v55;
    v58 = swift_allocObject();
    v59 = *(v49 + 32);
    v59(v58 + v56, v51, v52);
    v59(v58 + v57, v53, v52);
    sub_1C4F00278();

    return (*(v49 + 8))(v54, v52);
  }

  v64 = v30;
  v32 = v78;
  if ((v28 & 1) == 0)
  {
    v33 = v26;
    v34 = v67;
    v35 = v66;
    v63 = v33;
    if (v33)
    {
      v36 = v65;
LABEL_10:

      sub_1C4F00958();

      v39 = (*(v34 + 11))(v35, v36) == *MEMORY[0x1E69E93E8];
      v62 = v24;
      v61 = v8;
      if (v39)
      {
        v40 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v34 + 1))(v35, v36);
        v67 = "type=%{signpost.telemetry:string1,public}s %s";
        v40 = 2;
      }

      v41 = v63;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = 0;
      v79 = v43;
      v80 = 0;
      *v42 = v40;
      v42[1] = v40;
      DynamicType = (v42 + 2);
      v45 = v32;
      while (v44 != 96)
      {
        v46 = *(inited + v44 + 32);

        v46(&DynamicType, &v80, &v79);
        v45 = v32;

        v44 += 16;
      }

      v47 = v62;
      v48 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v29, v64, v48, v41, v67, v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v43, -1, -1);
      MEMORY[0x1C6942830](v42, -1, -1);

      (*(v72 + 1))(v47, v45);
      (*(v69 + 8))(v61, v70);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  v37 = HIDWORD(v26);
  v38 = v26;
  v34 = v67;
  v35 = v66;
  if (v37)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v38 & 0xFFFFF800) != 0xD800)
  {
    v36 = v65;
    if (v38 >> 16 <= 0x10)
    {
      v63 = &v81;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C4AFF38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4AFDA34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4AFF3C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C45885A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4AFF3F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C4AFF448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C4AFF49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C4EF9CD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4AFF584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCDF8();
  v10 = v9;
  sub_1C43FBC68();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(v7, v2, v4, v12);
  sub_1C4F019A8();
  return (*(v10 + 32))(a2, v14, AssociatedTypeWitness);
}

uint64_t sub_1C4AFF71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4AFF584(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1C4AFF77C()
{
  sub_1C43FCF70();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C442E8C4;

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4AFF828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AFF77C();
}

void *sub_1C4AFF8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = swift_allocBox();
  (*(v8 + 16))(v10, a1, a2);
  sub_1C4F019A8();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v11;
  *a4 = &unk_1C4F50F98;
  a4[1] = result;
  return result;
}

uint64_t sub_1C4AFFA88(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4AFFBE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4AFFD1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v17 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *(a1 + v8) = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *(a1 + v8) = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v16 = (v13 >> v9) + 1;
      if (v8)
      {
        v19 = v13 & ~(-1 << v9);
        v20 = sub_1C43FBC98();
        bzero(v20, v21);
        if (v8 == 3)
        {
          *a1 = v19;
          *(a1 + 2) = BYTE2(v19);
        }

        else if (v8 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      v14 = sub_1C43FBC98();
      bzero(v14, v15);
      *a1 = v13;
      v16 = 1;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v8) = v16;
        break;
      case 2:
        *(a1 + v8) = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *(a1 + v8) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4AFFF34(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AFFF70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AFFFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_getAssociatedTypeWitness();
  v5 = sub_1C4F01F48();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_getAssociatedTypeWitness();
  v4[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C4B000D8, 0, 0);
}

uint64_t sub_1C4B000D8()
{
  sub_1C43FCF70();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1C4B001B8;
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C4B001B8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1C4B003A8;
  }

  else
  {
    swift_endAccess();
    v6 = sub_1C4B002C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C4B002C4()
{
  sub_1C43FCF70();
  v1 = v0[11];
  if (sub_1C44157D4(v1, 1, v0[8]) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
  }

  else
  {
    sub_1C456902C(&qword_1EC0BD0A8, &qword_1C4F2C300);
    if (swift_dynamicCast())
    {
      goto LABEL_5;
    }
  }

  v2 = v0[5];
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
LABEL_5:

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4B003A8()
{
  sub_1C43FBCD4();
  swift_endAccess();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4B00410(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6E6F697461727544;
  *(inited + 40) = 0xEF73646E6F636553;
  sub_1C4EF9CB8();
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1C4468200();
  return sub_1C4F00F28();
}

uint64_t sub_1C4B004F0()
{
  v1 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1C4B005A4()
{
  v1 = *(sub_1C4EF9CD8() - 8);
  v2 = *(v1 + 80);
  return sub_1C4B00410(v0 + ((v2 + 16) & ~v2), v0 + ((*(v1 + 64) + v2 + ((v2 + 16) & ~v2)) & ~v2));
}

uint64_t sub_1C4B00624()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C442E8C4;

  return sub_1C4AFFFAC(v3, v6, v4, v5);
}

uint64_t sub_1C4B006D4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4B0075C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  if (a2 <= v12)
  {
LABEL_25:
    if (v8 >= v11)
    {
      v25 = a1;
      v9 = v6;
    }

    else
    {
      v25 = ((((a1 + v17) & ~v14) + v13 + v15) & ~v15);
      v8 = v11;
    }

    return sub_1C44157D4(v25, v8, v9);
  }

  v18 = ((v13 + (v17 & ~v14) + v15) & ~v15) + v16;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v21 < 2)
    {
LABEL_24:
      if (v12)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_24;
  }

LABEL_14:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    switch(v23)
    {
      case 2:
        v24 = *a1;
        break;
      case 3:
        v24 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v24 = *a1;
        break;
      default:
        v24 = *a1;
        break;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1C4B00998(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v9 + 80);
  v17 = *(v12 + 80);
  v18 = ((v15 + ((v15 + v16) & ~v16) + v17) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v25 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v25))
    {
      v20 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v20 = v26;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 >= a2)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 >= v13)
          {
            v30 = a1;
            v31 = a2;
            v11 = v8;
          }

          else
          {
            v30 = (((v15 + v16 + a1) & ~v16) + v15 + v17) & ~v17;
            v31 = a2;
            v10 = v13;
          }

          sub_1C440BAA8(v30, v31, v10, v11);
        }

        break;
    }
  }

  else
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v21 >> v19) + 1;
      if (v18)
      {
        v27 = v21 & ~(-1 << v19);
        v28 = sub_1C43FBC98();
        bzero(v28, v29);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v22 = sub_1C43FBC98();
      bzero(v22, v23);
      *a1 = v21;
      v24 = 1;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C4B00C84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B00DC0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3390, type metadata accessor for FutureLifeEventStructs.CommuteActivity, &unk_1C4F736B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00E18(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3398, type metadata accessor for LifeEventStructs.FacetimeActivity, &unk_1C4F76EC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00E70(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33A0, type metadata accessor for LifeEventStructs.OnThePhoneActivity, &unk_1C4F76BD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00EC8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33A8, type metadata accessor for LifeEventStructs.BicyclingActivity, &unk_1C4F7714C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00F20(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33B0, type metadata accessor for LifeEventStructs.RunningActivity, &unk_1C4F76C3C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00F78(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33B8, type metadata accessor for LifeEventStructs.WalkingActivity, &unk_1C4F76D14);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B00FD0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EDDF59C0, type metadata accessor for LifeEventStructs.LocationVisitActivity, &unk_1C4F76804);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01028(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33C0, type metadata accessor for LifeEventStructs.StationaryActivity, &unk_1C4F76B64);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01080(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33C8, type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity, &unk_1C4F770E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B010D8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33D0, type metadata accessor for LifeEventStructs.DiningActivity, &unk_1C4F76F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01130(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33D8, type metadata accessor for LifeEventStructs.CommuteActivity, &unk_1C4F76D80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01188(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33E0, type metadata accessor for LifeEventStructs.ExercisingActivity, &unk_1C4F76798);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B011E0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33E8, type metadata accessor for LifeEventStructs.GamingActivity, &unk_1C4F76F9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01238(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33F0, type metadata accessor for LifeEventStructs.VacationingActivity, &unk_1C4F7672C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01290(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C33F8, type metadata accessor for LifeEventStructs.ReadingActivity, &unk_1C4F76CA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B012E8(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3400, type metadata accessor for LifeEventStructs.SleepingActivity, &unk_1C4F76E58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01340(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3408, type metadata accessor for LifeEventStructs.ShoppingActivity, &unk_1C4F76AF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01398(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3410, type metadata accessor for LifeEventStructs.MeetingActivity, &unk_1C4F766C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B013F0(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3418, type metadata accessor for LifeEventStructs.WorkingActivity, &unk_1C4F76654);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B01448(uint64_t a1)
{
  result = sub_1C4B014A0(&qword_1EC0C3420, type metadata accessor for LifeEventStructs.TransportationActivity, &unk_1C4F76870);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B014A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B014E8(uint64_t result, unsigned __int8 a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void *a5, uint64_t (*a6)(uint64_t))
{
  v8 = *(result + 16);
  if (v8)
  {
    v13 = result;
    if (sub_1C465B984(a2, &unk_1F43D1000))
    {
      result = sub_1C4B6F59C(v13);
      if (v7)
      {
        return result;
      }

      a3(result);
      v14 = sub_1C4B6F5D0(v13);
      a4(v14);
    }

    v21 = MEMORY[0x1E69E7CC0];
    for (i = v13 + 32; ; i += 40)
    {
      sub_1C480BC20(i, v20);
      v16 = type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
      sub_1C44099C4(v16);
      sub_1C4DE7B74();
      v17 = sub_1C4B6FAAC();
      if (v7)
      {
        break;
      }

      sub_1C4DE03B4(v17);
      v18 = sub_1C46CB91C(v20);
      MEMORY[0x1C6940330](v18);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      if (!--v8)
      {
        *(*v6 + *a5) = v21;

        return a6(v19);
      }
    }

    sub_1C46CB91C(v20);
  }

  return result;
}

uint64_t sub_1C4B01698(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4, void *a5)
{
  v83 = a5;
  v86 = a3;
  v92 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v91 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v82 - v12;
  v88 = sub_1C4F00978();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v93) = *a2;
  sub_1C445FFF0((a2 + 24), v104, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v18 = *(a2 + 7);
  sub_1C4F00158();
  sub_1C445FFF0(v104, &v96, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CC8();
  v21 = os_log_type_enabled(v19, v20);
  v87 = a4;
  v84 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v103[0] = v82;
    *v22 = 136315394;
    LOBYTE(v94) = v93;
    ActivityType.value.getter();
    v25 = sub_1C441D828(v23, v24, v103);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    sub_1C445FFF0(&v96, &v94, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
    v26 = sub_1C4F01198();
    v28 = v27;
    sub_1C4420C3C(&v96, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    v29 = sub_1C441D828(v26, v28, v103);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_1C43F8000, v19, v20, "Setting name for activity event with activityType: %s, metadata: %s", v22, 0x16u);
    v30 = v82;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v30, -1, -1);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  else
  {

    sub_1C4420C3C(&v96, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  (*(v14 + 8))(v17, v88);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C4F0D130;
  LOBYTE(v96) = v93;
  ActivityType.value.getter();
  v96 = v32;
  v97 = v33;
  v94 = 0x295D5A2D415B28;
  v95 = 0xE700000000000000;
  v103[0] = 3220512;
  v103[1] = 0xE300000000000000;
  v101 = v32;
  v102 = v33;
  v99 = v32;
  v100 = v33;
  v34 = sub_1C4EF9E48();
  v35 = v89;
  sub_1C440BAA8(v89, 1, 1, v34);
  sub_1C4415EA8();
  sub_1C4F02028();
  sub_1C4420C3C(v35, &unk_1EC0B7610, &unk_1C4F17610);
  v36 = sub_1C4F02008();
  v38 = v37;

  v96 = v36;
  v97 = v38;
  v39 = v90;
  sub_1C4EF9448();
  v40 = sub_1C4F01FF8();
  v42 = v41;
  (*(v91 + 8))(v39, v92);

  v96 = v40;
  v97 = v42;
  v43 = sub_1C4F01FD8();
  v45 = v44;

  *(v31 + 32) = v43;
  *(v31 + 40) = v45;
  v93 = v31;
  v46 = *(v18 + 16);
  if (v46)
  {
    v47 = 0;
    v96 = 0;
    v97 = 0xE000000000000000;
    v48 = (v18 + 48);
    while (v46 != v47)
    {
      v49 = *(v18 + 16);
      if (v47 >= v49)
      {
        __break(1u);
        goto LABEL_40;
      }

      v39 = *v48;
      v50 = v48[1];
      if ((v97 & 0x2000000000000000) != 0)
      {
        v51 = HIBYTE(v97) & 0xF;
      }

      else
      {
        v51 = v96 & 0xFFFFFFFFFFFFLL;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v51)
      {
        MEMORY[0x1C6940010](8236, 0xE200000000000000);
      }

      if (v50)
      {
        MEMORY[0x1C6940010](v39, v50);
      }

      v48 += 8;
      v47 = (v47 + 1);
    }

    v52 = v96;
    v53 = v97;
    v96 = 0x2068746977;
    v97 = 0xE500000000000000;
    MEMORY[0x1C6940010](v52, v53);

    v54 = v93;
    sub_1C4433710();
    if (v56)
    {
      sub_1C44300DC(v55 > 1);
      v54 = v80;
    }

    v46 = v87;
    sub_1C440D78C();
  }

  else
  {
    v46 = v87;
    v54 = v93;
  }

  v39 = *v85;
  v57 = *&(*v85)[*v86];
  if (v57 && (v58 = *(v57 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress)) != 0 && (v59 = (v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name), (v60 = v59[1]) != 0) && (v61 = *&v39[*v83]) != 0 && (v62 = *(v61 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_hasAddress)) != 0 && (v63 = (v62 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name), (v64 = v63[1]) != 0))
  {
    v65 = *v59;
    v66 = *v63;
    v96 = 0x206D6F7266;
    v97 = 0xE500000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v65, v60);

    MEMORY[0x1C6940010](544175136, 0xE400000000000000);
    MEMORY[0x1C6940010](v66, v64);
  }

  else
  {
    sub_1C4868060(v84, &v96);
    if (!v98)
    {
      sub_1C4420C3C(&v96, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      goto LABEL_32;
    }

    v67 = sub_1C4B6F66C();
    v69 = v68;
    sub_1C46CB91C(&v96);
    v96 = 2126945;
    v97 = 0xE300000000000000;
    MEMORY[0x1C6940010](v67, v69);
  }

  sub_1C4433710();
  if (v56)
  {
LABEL_40:
    sub_1C44300DC(v49 > 1);
    v54 = v79;
  }

  sub_1C440D78C();
LABEL_32:
  sub_1C445FFF0(v104, &v96, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  if (v98)
  {
    if (swift_dynamicCast())
    {
      v96 = 8250;
      v97 = 0xE200000000000000;
      MEMORY[0x1C6940010](v94, v95);

      sub_1C4433710();
      if (v56)
      {
        sub_1C44300DC(v70 > 1);
        v54 = v81;
      }

      sub_1C440D78C();
    }
  }

  else
  {
    sub_1C4420C3C(&v96, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v96 = v54;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v71 = sub_1C4F01048();
  v73 = v72;

  v96 = v71;
  v97 = v73;
  v74 = sub_1C4F01438();
  v76 = v75;
  sub_1C4420C3C(v104, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  v77 = &v39[*v46];
  *v77 = v74;
  v77[1] = v76;
}

void sub_1C4B0200C(uint64_t a1, unsigned __int8 a2)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v53 - v6;
  v7 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  v61 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - v14;
  v66 = sub_1C4EF9D38();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  if (*(a1 + 16))
  {
    v65 = *(a1 + 16);
    if (sub_1C465B984(a2, &unk_1F43D1000))
    {
      v25 = v67;
      sub_1C4B93B08(a1, v24);
      if (v25)
      {
        return;
      }

      sub_1C4DA9C20(v24);
      sub_1C4B93BAC(a1, v21);
      v67 = 0;
      sub_1C4DA9D30(v21);
    }

    v26 = v62;
    v27 = *(v63 + 16);
    v28 = a1 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v58 = (v63 + 8);
    v59 = v27;
    v29 = MEMORY[0x1E69E7CC0];
    v63 += 16;
    v55 = *(v63 + 56);
    v56 = v2;
    v30 = v65;
    v57 = v9;
    if (v65)
    {
      while (1)
      {
        v64 = v28;
        v65 = v30;
        v59(v26);
        v31 = sub_1C4EFEEF8();
        sub_1C440BAA8(v12, 1, 1, v31);
        sub_1C4EFD1F8();
        v32 = v7[6];
        if (qword_1EDDFED40 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Source(0);
        v34 = sub_1C442B738(v33, qword_1EDDFD2A8);
        sub_1C449ED64(v34, &v12[v32]);
        sub_1C4EFE5E8();
        v35 = &v12[v7[8]];
        *v35 = 0;
        *(v35 + 1) = 0;
        v36 = &v12[v7[9]];
        v37 = type metadata accessor for FutureLifeEventStructs.Place(0);
        sub_1C440BAA8(v36, 1, 1, v37);
        v38 = v67;
        sub_1C4B93D68(v18);
        v67 = v38;
        if (v38)
        {
          break;
        }

        sub_1C440BAA8(v18, 0, 1, v37);
        sub_1C4B04A54(v18, v36);
        if (sub_1C44157D4(v36, 1, v37))
        {
          sub_1C4420C3C(v18, &qword_1EC0C3430, &qword_1C4F51390);
          v26 = v62;
          (*v58)(v62, v66);
        }

        else
        {
          v40 = v54;
          sub_1C4EFE418();
          sub_1C4420C3C(v18, &qword_1EC0C3430, &qword_1C4F51390);
          v41 = v62;
          (*v58)(v62, v66);
          sub_1C440BAA8(v40, 0, 1, v31);
          v42 = *(v37 + 20);
          v26 = v41;
          sub_1C449A970(v40, v36 + v42);
        }

        v2 = v56;
        v43 = v60;
        sub_1C4B04AC4(v12, v60, v39);
        v44 = v43;
        v45 = v57;
        sub_1C4B04AC4(v44, v57, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458C814(0, *(v29 + 16) + 1, 1, v29);
          v29 = v50;
        }

        v49 = *(v29 + 16);
        v48 = *(v29 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1C458C814(v48 > 1, v49 + 1, 1, v29);
          v29 = v51;
        }

        *(v29 + 16) = v49 + 1;
        sub_1C4B04AC4(v45, v29 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v49, v47);
        v28 = v64 + v55;
        v30 = v65 - 1;
        if (v65 == 1)
        {
          goto LABEL_17;
        }
      }

      (*v58)(v62, v66);
      sub_1C4B049FC(v12, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
    }

    else
    {
LABEL_17:
      v52 = *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(0) + 64);

      *(v2 + v52) = v29;
      sub_1C4DB3310();
    }
  }
}

uint64_t sub_1C4B02618(char a1)
{
  v57 = sub_1C4EF9488();
  v3 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v58 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
  v59 = v1;
  sub_1C445FFF0(v1 + v58[13], v14, &qword_1EC0C3430, &qword_1C4F51390);
  v15 = type metadata accessor for FutureLifeEventStructs.Place(0);
  if (sub_1C44157D4(v14, 1, v15) || (v16 = &v14[*(v15 + 36)], v17 = type metadata accessor for FutureLifeEventStructs.AddressRelationshipType(0), sub_1C44157D4(v16, 1, v17)))
  {
    v18 = v14;
LABEL_4:
    sub_1C4420C3C(v18, &qword_1EC0C3430, &qword_1C4F51390);
    goto LABEL_5;
  }

  v35 = (v16 + *(v17 + 104));
  v36 = *v35;
  v37 = v35[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4420C3C(v14, &qword_1EC0C3430, &qword_1C4F51390);
  if (!v37)
  {
    goto LABEL_5;
  }

  sub_1C445FFF0(v59 + v58[14], v11, &qword_1EC0C3430, &qword_1C4F51390);
  if (sub_1C44157D4(v11, 1, v15) || (v56 = v36, v38 = &v11[*(v15 + 36)], sub_1C44157D4(v38, 1, v17)))
  {

    v18 = v11;
    goto LABEL_4;
  }

  v39 = (v38 + *(v17 + 104));
  v40 = *v39;
  v41 = v39[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4420C3C(v11, &qword_1EC0C3430, &qword_1C4F51390);
  if (v41)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    v54 = v37;
    sub_1C4F02248();

    LOBYTE(v70) = a1;
    ActivityType.value.getter();
    v70 = v42;
    v71 = v43;
    v68 = 0x295D5A2D415B28;
    v69 = 0xE700000000000000;
    v66 = 3220512;
    v67 = 0xE300000000000000;
    v64 = v42;
    v65 = v43;
    v62 = v42;
    v63 = v43;
    v44 = sub_1C4EF9E48();
    sub_1C440BAA8(v8, 1, 1, v44);
    sub_1C4415EA8();
    sub_1C4F02028();
    v55 = v40;
    sub_1C4420C3C(v8, &unk_1EC0B7610, &unk_1C4F17610);
    v45 = sub_1C4F02008();
    v47 = v46;

    v70 = v45;
    v71 = v47;
    sub_1C4EF9448();
    v48 = sub_1C4F01FF8();
    v50 = v49;
    (*(v3 + 8))(v5, v57);

    v70 = v48;
    v71 = v50;
    v51 = sub_1C4F01FD8();
    v53 = v52;

    v70 = v51;
    v71 = v53;
    MEMORY[0x1C6940010](0x206D6F726620, 0xE600000000000000);
    MEMORY[0x1C6940010](v56, v54);

    MEMORY[0x1C6940010](544175136, 0xE400000000000000);
    MEMORY[0x1C6940010](v55, v41);
    goto LABEL_6;
  }

LABEL_5:
  v70 = 0x20657275747546;
  v71 = 0xE700000000000000;
  LOBYTE(v68) = a1;
  ActivityType.value.getter();
  v68 = v19;
  v69 = v20;
  v66 = 0x295D5A2D415B28;
  v67 = 0xE700000000000000;
  v64 = 3220512;
  v65 = 0xE300000000000000;
  v62 = v19;
  v63 = v20;
  v60 = v19;
  v61 = v20;
  v21 = sub_1C4EF9E48();
  sub_1C440BAA8(v8, 1, 1, v21);
  sub_1C4415EA8();
  sub_1C4F02028();
  sub_1C4420C3C(v8, &unk_1EC0B7610, &unk_1C4F17610);
  v22 = sub_1C4F02008();
  v24 = v23;

  v68 = v22;
  v69 = v24;
  sub_1C4EF9448();
  v25 = sub_1C4F01FF8();
  v27 = v26;
  (*(v3 + 8))(v5, v57);

  v68 = v25;
  v69 = v27;
  v28 = sub_1C4F01FD8();
  v30 = v29;

  MEMORY[0x1C6940010](v28, v30);
LABEL_6:

  v31 = v70;
  v32 = v71;
  v33 = (v59 + v58[9]);

  *v33 = v31;
  v33[1] = v32;
  return result;
}

uint64_t sub_1C4B02CA4()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.TransportationActivity(v4);
  sub_1C44099C4(v5);
  v6 = sub_1C44079C0();
  sub_1C4E181D4(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30);
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v14 = sub_1C441114C();
    sub_1C4B014E8(v14, v15, v16, v17, v18, v19);
    if (!v1)
    {
      v20 = sub_1C441114C();
      sub_1C4B01698(v20, v2, v21, v22, v23);
      v24 = sub_1C44136DC();
      sub_1C4B869B0(v24, v25);
      if (v2[16])
      {

        v27 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v27 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v27, v28, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs22TransportationActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF914();

      sub_1C4B05100();
      sub_1C4DDF93C();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B02E5C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.WorkingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E258F8();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WorkingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF964();

      sub_1C4B05100();
      sub_1C4DDF98C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B02FF4()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.MeetingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E22D00();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15MeetingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDF9B4();

      sub_1C4B05100();
      sub_1C4DDF9DC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B0318C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ShoppingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0DA30();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16ShoppingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFA04();

      sub_1C4B05100();
      sub_1C4DDFA2C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03324()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.SleepingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DFDE34();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16SleepingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFA54();

      sub_1C4B05100();
      sub_1C4DDFA7C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B034BC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ReadingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0572C();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15ReadingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFAA4();

      sub_1C4B05100();
      sub_1C4DDFACC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B03654()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.GamingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF6668();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441114C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441114C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      v16 = sub_1C44136DC();
      sub_1C48189CC(v16);
      if (v2[16])
      {

        v18 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v18 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v18, v19, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14GamingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFAF4();

      sub_1C4B05100();
      sub_1C4DDFB1C();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B0380C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.ExercisingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E1E24C();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18ExercisingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFB44();

      sub_1C4B05100();
      sub_1C4DDFB6C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B039A4()
{
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.CommuteActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E01E28();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441114C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441114C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      sub_1C44136DC();
      sub_1C4684054();
      if (v2[16])
      {

        v17 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v17 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15CommuteActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFB94();

      sub_1C4B05100();
      sub_1C4DDFBBC();
    }
  }

  return sub_1C44176E4();
}

void sub_1C4B03B5C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.DiningActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF9014();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs14DiningActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFBE4();

      sub_1C4B05100();
      sub_1C4DDFC0C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03CF4()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DF1510();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs29AttendingAPerformanceActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFC34();

      sub_1C4B05100();
      sub_1C4DDFC5C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B03E8C()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.StationaryActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0B2F0();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18StationaryActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFC84();

      sub_1C4B05100();
      sub_1C4DDFCAC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04024()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.LocationVisitActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E1BAB4();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs21LocationVisitActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFCD4();

      sub_1C4B05100();
      sub_1C4DDFCFC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B041BC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.WalkingActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E03FAC();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15WalkingActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFD24();

      sub_1C4B05100();
      sub_1C4DDFD4C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04354()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.RunningActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E0725C();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs15RunningActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFD74();

      sub_1C4B05100();
      sub_1C4DDFD9C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B044EC()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.OnThePhoneActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4E089DC();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs18OnThePhoneActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFDC4();

      sub_1C4B05100();
      sub_1C4DDFDEC();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

void sub_1C4B04684()
{
  sub_1C4435344();
  sub_1C442D27C();
  if (qword_1EDDF7950 != -1)
  {
    sub_1C441A448(&qword_1EDDF7950);
  }

  v3 = type metadata accessor for SourceIdPrefix(0);
  sub_1C43FDDA8(v3, qword_1EDE2D6C8);
  v4 = sub_1C4420214();
  v5 = type metadata accessor for LifeEventStructs.FacetimeActivity(v4);
  sub_1C44099C4(v5);
  sub_1C44079C0();
  sub_1C4DFB724();
  sub_1C44036BC();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    sub_1C4400CA0();
    v6 = sub_1C441241C();
    sub_1C4B014E8(v6, v7, v8, v9, v10, v11);
    if (!v1)
    {
      v12 = sub_1C441241C();
      sub_1C4B01698(v12, v2, v13, v14, v15);
      if (v2[16])
      {

        v16 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      }

      else
      {
        sub_1C4408F68();
        v16 = sub_1C4F019E8();
      }

      sub_1C440B1E4(v16, v17, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs16FacetimeActivity_confidence);
      sub_1C440FB28();
      sub_1C4DDFE14();

      sub_1C4B05100();
      sub_1C4DDFE3C();
    }
  }

  sub_1C44176E4();
  sub_1C43FC7D0();
}

uint64_t sub_1C4B049FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B04A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B04AC4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4B04B28(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v82 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v62[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v62[-v20];
  v63 = *a1;
  v65 = (v3 + *(sub_1C456902C(&qword_1EC0B8D48, &qword_1C4F0E190) + 32));
  v21 = v65[2];
  v22 = *(v21 + 16);
  if (v22)
  {
    v25 = *(v8 + 16);
    v23 = v8 + 16;
    v24 = v25;
    v26 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v27 = *(v23 + 56);
    v67 = v14 + 16;
    v89 = (v23 - 8);
    v79 = v14 + 32;
    v71 = v14;
    v66 = v14 + 8;
    v28 = MEMORY[0x1E69E7CC0];
    v73 = v23;
    v74 = v6;
    v72 = a2;
    v70 = v12;
    v69 = v25;
    v68 = v27;
    do
    {
      v24(v12, v26, v6);
      if (*(a2 + 16) && (sub_1C44E3664(), (v30 & 1) != 0))
      {
        v31 = *(a2 + 56);
        v32 = v71;
        v77 = *(v71 + 72);
        v78 = v28;
        v33 = *(v71 + 16);
        v34 = v75;
        v35 = v82;
        v33(v75, v31 + v77 * v29, v82);
        (*v89)(v12, v6);
        v36 = *(v32 + 32);
        v37 = v80;
        v38 = v34;
        v39 = v78;
        v36(v80, v38, v35);
        v33(v81, v37, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C458B324(0, *(v39 + 16) + 1, 1, v39);
          v39 = v47;
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v39;
        v12 = v70;
        v24 = v69;
        if (v42 >= v41 >> 1)
        {
          sub_1C458B324(v41 > 1, v42 + 1, 1, v39);
          v43 = v48;
        }

        v44 = *(v32 + 8);
        v45 = v32;
        v46 = v82;
        v44(v80, v82);
        *(v43 + 16) = v42 + 1;
        v28 = v43;
        v76(v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + v42 * v77, v81, v46);
        v6 = v74;
        a2 = v72;
        v27 = v68;
      }

      else
      {
        (*v89)(v12, v6);
      }

      v26 += v27;
      --v22;
    }

    while (v22);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v49 = type metadata accessor for FutureActivityEventWithLocations(0);
  v50 = v65 + *(v49 + 24);
  v51 = *v65;
  v52 = v65[1];
  if (v50[*(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32)] == 154)
  {
    *(&v84 + 1) = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
    v85 = sub_1C4B05CD8(&qword_1EC0C3390, type metadata accessor for FutureLifeEventStructs.CommuteActivity, &unk_1C4F736B0);
    v53 = sub_1C4422F90(&v83);
    v54 = v64;
    sub_1C4B0481C(v28, v53);
    if (!v54)
    {

      sub_1C441D670(&v83, v86);
      v57 = v87;
      v58 = v88;
      sub_1C4409678(v86, v87);
      v59 = (v65 + *(v49 + 28));
      v60 = v59[1];
      *&v83 = *v59;
      *(&v83 + 1) = v60;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      MEMORY[0x1C6940010](v51, v52);
      v61 = v83;
      LOBYTE(v83) = v63;
      v55 = (*(v58 + 24))(v61, *(&v83 + 1), &v83, v57, v58);

      sub_1C440962C(v86);
      return v55;
    }

    sub_1C47C41F8(&v83);
  }

  else
  {
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_1C4B05C70(&v83);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4B05100()
{
  v0 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v27 = v8;
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  type metadata accessor for LifeEventStructs.DateRelationshipType(0);
  swift_allocObject();
  v12 = sub_1C4DEEB28();
  sub_1C4EF9F58();
  if (qword_1EDDF4920 != -1)
  {
    sub_1C4400CB0(&qword_1EDDF4920);
  }

  sub_1C4EF9EA8();
  v13 = sub_1C44CDAD4();
  v15 = v14;
  v26 = *(v2 + 8);
  v26(v6, v0);
  v28 = *(v27 + 8);
  v28(v11, v29);
  v16 = (v12 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_startTime);
  *v16 = v13;
  v16[1] = v15;

  sub_1C4EF9AD8();
  v17 = sub_1C4F019E8();
  sub_1C440B204(v17, v18, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedStartTime);
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  sub_1C4EF9F58();
  sub_1C4EF9EA8();
  v19 = sub_1C44CDAD4();
  v21 = v20;
  v26(v6, v0);
  v28(v11, v29);
  v22 = (v12 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_endTime);
  *v22 = v19;
  v22[1] = v21;

  sub_1C4EF9AD8();
  v23 = sub_1C4F019E8();
  sub_1C440B204(v23, v24, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs20DateRelationshipType_imputedEndTime);
  return v12;
}

uint64_t sub_1C4B053A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v36 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v35 = a1;
  sub_1C4DA9E40(a1);
  sub_1C4EF9F58();
  if (qword_1EDDF4920 != -1)
  {
    sub_1C4400CB0(&qword_1EDDF4920);
  }

  sub_1C4EF9EA8();
  v15 = sub_1C44CDAD4();
  v17 = v16;
  v34 = *(v4 + 8);
  v34(v8, v2);
  v33 = *(v10 + 8);
  v33(v14, v36);
  v18 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  v19 = (a1 + v18[8]);

  *v19 = v15;
  v19[1] = v17;
  sub_1C4EF9AD8();
  v20 = sub_1C4F019E8();
  v22 = v21;
  v23 = (a1 + v18[10]);

  *v23 = v20;
  v23[1] = v22;
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  sub_1C4EF9F58();
  sub_1C4EF9EA8();
  v24 = sub_1C44CDAD4();
  v26 = v25;
  v34(v8, v2);
  v33(v14, v36);
  v27 = (a1 + v18[12]);

  *v27 = v24;
  v27[1] = v26;
  sub_1C4EF9AD8();
  v28 = sub_1C4F019E8();
  v30 = v29;
  v31 = (v35 + v18[14]);

  *v31 = v28;
  v31[1] = v30;
  return result;
}

double sub_1C4B0565C@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + *(sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0) + 32));
  switch(v4 >> 5)
  {
    case 0u:
      if (v4 - 11 < 2 || v4 == 18)
      {
        sub_1C441A468();
        sub_1C4B04684();
        if (!v2)
        {
          v7 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.FacetimeActivity(v7);
          v8 = &unk_1EC0C3398;
          v9 = type metadata accessor for LifeEventStructs.FacetimeActivity;
          v10 = &unk_1C4F76EC4;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 != 17)
        {
          goto LABEL_24;
        }

        sub_1C441A468();
        sub_1C4B044EC();
        if (!v2)
        {
          v15 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.OnThePhoneActivity(v15);
          v8 = &unk_1EC0C33A0;
          v9 = type metadata accessor for LifeEventStructs.OnThePhoneActivity;
          v10 = &unk_1C4F76BD0;
          goto LABEL_19;
        }
      }

      break;
    case 1u:
      v11 = v4 & 0x1F;
      if (v11)
      {
        if (v11 == 1)
        {
          sub_1C441A468();
          sub_1C4B041BC();
          if (!v2)
          {
            v16 = sub_1C442A8A4();
            *(a1 + 24) = type metadata accessor for LifeEventStructs.WalkingActivity(v16);
            v8 = &unk_1EC0C33B8;
            v9 = type metadata accessor for LifeEventStructs.WalkingActivity;
            v10 = &unk_1C4F76D14;
            goto LABEL_19;
          }
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_24;
          }

          sub_1C441A468();
          sub_1C4B04354();
          if (!v2)
          {
            v12 = sub_1C442A8A4();
            *(a1 + 24) = type metadata accessor for LifeEventStructs.RunningActivity(v12);
            v8 = &unk_1EC0C33B0;
            v9 = type metadata accessor for LifeEventStructs.RunningActivity;
            v10 = &unk_1C4F76C3C;
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_1C441A468();
        sub_1C4B0380C();
        if (!v2)
        {
          v17 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ExercisingActivity(v17);
          v8 = &unk_1EC0C33E0;
          v9 = type metadata accessor for LifeEventStructs.ExercisingActivity;
          v10 = &unk_1C4F76798;
          goto LABEL_19;
        }
      }

      break;
    case 2u:
LABEL_17:
      sub_1C441A468();
      sub_1C4B02CA4();
      if (!v2)
      {
        v14 = sub_1C442A8A4();
        *(a1 + 24) = type metadata accessor for LifeEventStructs.TransportationActivity(v14);
        v8 = &unk_1EC0C3420;
        v9 = type metadata accessor for LifeEventStructs.TransportationActivity;
        v10 = &unk_1C4F76870;
        goto LABEL_19;
      }

      break;
    case 4u:
      switch(v4)
      {
        case 0x81u:
          sub_1C441A468();
          sub_1C4B02E5C();
          if (v2)
          {
            return result;
          }

          v13 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.WorkingActivity(v13);
          v8 = &unk_1EC0C3418;
          v9 = type metadata accessor for LifeEventStructs.WorkingActivity;
          v10 = &unk_1C4F76654;
          break;
        case 0x82u:
          sub_1C441A468();
          sub_1C4B02FF4();
          if (v2)
          {
            return result;
          }

          v19 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.MeetingActivity(v19);
          v8 = &unk_1EC0C3410;
          v9 = type metadata accessor for LifeEventStructs.MeetingActivity;
          v10 = &unk_1C4F766C0;
          break;
        case 0x85u:
          sub_1C441A468();
          sub_1C4B0318C();
          if (v2)
          {
            return result;
          }

          v24 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ShoppingActivity(v24);
          v8 = &unk_1EC0C3408;
          v9 = type metadata accessor for LifeEventStructs.ShoppingActivity;
          v10 = &unk_1C4F76AF8;
          break;
        case 0x87u:
          sub_1C441A468();
          sub_1C4B03324();
          if (v2)
          {
            return result;
          }

          v25 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.SleepingActivity(v25);
          v8 = &unk_1EC0C3400;
          v9 = type metadata accessor for LifeEventStructs.SleepingActivity;
          v10 = &unk_1C4F76E58;
          break;
        case 0x89u:
          sub_1C441A468();
          sub_1C4B034BC();
          if (v2)
          {
            return result;
          }

          v20 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.ReadingActivity(v20);
          v8 = &unk_1EC0C33F8;
          v9 = type metadata accessor for LifeEventStructs.ReadingActivity;
          v10 = &unk_1C4F76CA8;
          break;
        case 0x8Bu:
          sub_1C441A468();
          sub_1C4B03654();
          if (v2)
          {
            return result;
          }

          v22 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.GamingActivity(v22);
          v8 = &unk_1EC0C33E8;
          v9 = type metadata accessor for LifeEventStructs.GamingActivity;
          v10 = &unk_1C4F76F9C;
          break;
        case 0x95u:
          sub_1C441A468();
          sub_1C4B03E8C();
          if (v2)
          {
            return result;
          }

          v23 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.StationaryActivity(v23);
          v8 = &unk_1EC0C33C0;
          v9 = type metadata accessor for LifeEventStructs.StationaryActivity;
          v10 = &unk_1C4F76B64;
          break;
        case 0x98u:
          goto LABEL_17;
        case 0x9Au:
          sub_1C441A468();
          sub_1C4B039A4();
          if (v2)
          {
            return result;
          }

          v27 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.CommuteActivity(v27);
          v8 = &unk_1EC0C33D8;
          v9 = type metadata accessor for LifeEventStructs.CommuteActivity;
          v10 = &unk_1C4F76D80;
          break;
        case 0x9Bu:
          sub_1C441A468();
          sub_1C4B03CF4();
          if (v2)
          {
            return result;
          }

          v26 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity(v26);
          v8 = &unk_1EC0C33C8;
          v9 = type metadata accessor for LifeEventStructs.AttendingAPerformanceActivity;
          v10 = &unk_1C4F770E0;
          break;
        case 0x9Cu:
          sub_1C441A468();
          sub_1C4B03B5C();
          if (v2)
          {
            return result;
          }

          v18 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.DiningActivity(v18);
          v8 = &unk_1EC0C33D0;
          v9 = type metadata accessor for LifeEventStructs.DiningActivity;
          v10 = &unk_1C4F76F30;
          break;
        case 0x9Du:
          sub_1C441A468();
          sub_1C4B04024();
          if (v2)
          {
            return result;
          }

          v21 = sub_1C442A8A4();
          *(a1 + 24) = type metadata accessor for LifeEventStructs.LocationVisitActivity(v21);
          v8 = &unk_1EDDF59C0;
          v9 = type metadata accessor for LifeEventStructs.LocationVisitActivity;
          v10 = &unk_1C4F76804;
          break;
        default:
          goto LABEL_24;
      }

LABEL_19:
      *(a1 + 32) = sub_1C4B05CD8(v8, v9, v10);
      *a1 = 0;
      break;
    default:
LABEL_24:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
  }

  return result;
}

uint64_t sub_1C4B05C70(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3480, &unk_1C4F40B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B05CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B05D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v345 = a2;
  v344 = a1;
  v4 = sub_1C456902C(&qword_1EC0C3438, &qword_1C4F51398);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v327 - v6;
  type metadata accessor for SGContactStructs.LocationRelationshipType(0);
  sub_1C43FCDF8();
  v353 = v9;
  v354 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v361 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v360 = &v327 - v13;
  v14 = sub_1C456902C(&qword_1EC0C3440, &qword_1C4F7AAE0);
  sub_1C43FBD18(v14);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v352 = &v327 - v16;
  v351 = type metadata accessor for SGContactStructs.Place(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v356 = v18;
  v19 = sub_1C456902C(&qword_1EC0C3448, &unk_1C4F7AAC0);
  sub_1C43FBD18(v19);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v327 - v21;
  v23 = sub_1C456902C(&qword_1EC0C3450, &unk_1C4F7AAD0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = sub_1C43FD2C8(&v327 - v25);
  v339 = type metadata accessor for SGContactStructs.SoftwareRelationshipType(v26);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v29 = sub_1C43FD2C8(v28);
  v342 = type metadata accessor for SGContactStructs.Software(v29);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v32 = sub_1C43FD2C8(v31);
  v365 = type metadata accessor for SGContactStructs.IdentifierRelationshipType(v32);
  sub_1C43FCDF8();
  v363 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  v362 = v35;
  v36 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  v37 = sub_1C43FBD18(v36);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBD08();
  v346 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v349 = (&v327 - v41);
  v348 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v347 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v45 = sub_1C43FD2C8(v44);
  v46 = type metadata accessor for SGContactStructs.AddressRelationshipType(v45);
  sub_1C43FCDF8();
  v366 = v47;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBD08();
  v51 = v49 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v327 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v367 = &v327 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v327 - v58;
  v350 = type metadata accessor for SGContactStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD2D8();
  v355 = v61;
  v62 = [v2 postalAddresses];
  sub_1C4461BB8(0, &qword_1EDDDB958, 0x1E6999258);
  sub_1C441C97C();
  v341 = v63;
  v64 = sub_1C4F01678();

  v65 = sub_1C4428DA0(v64);

  if (v65)
  {
    v330 = v22;
    v66 = [v3 name];
    if (!v66)
    {
      sub_1C465B58C();
      swift_allocError();
      *v97 = 0;
      swift_willThrow();
      return v65;
    }

    v67 = v66;
    v368 = v51;
    v334 = v7;
    v336 = sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1C4F0CE60;
    v69 = [v67 fullName];
    v70 = sub_1C4F01138();
    v333 = v67;
    v72 = v71;

    *(v68 + 56) = MEMORY[0x1E69E6158];
    v73 = sub_1C44D5840();
    *(v68 + 64) = v73;
    *(v68 + 32) = v70;
    *(v68 + 40) = v72;
    v332 = v3;
    v74 = [v3 recordId];
    v75 = [v74 numericValue];

    v370 = v75;
    v76 = sub_1C4F02858();
    *(v68 + 96) = MEMORY[0x1E69E6158];
    *(v68 + 104) = v73;
    v335 = v73;
    *(v68 + 72) = v76;
    *(v68 + 80) = v77;
    v78 = sub_1C4F01168();
    v65 = v79;
    v80 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v80 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (!v80)
    {

      sub_1C465B58C();
      swift_allocError();
      *v98 = 0;
      swift_willThrow();
      sub_1C4435358();
      return v65;
    }

    if (qword_1EDDE9228 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v81, qword_1EDE2CEE8);
    String.base64EncodedSHA(withPrefix:)();
    v83 = v82;
    v85 = v84;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = v364;
    sub_1C4E42CD0(v83, v85, v87, v88, v89, v90, v91, v92, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338);
    if (v86)
    {
      sub_1C4435358();

      return v65;
    }

    v331 = v81;
    v328 = v83;
    v329 = v85;
    v364 = 0;
    v99 = v333;
    sub_1C465B638(v333, &selRef_prefix);
    sub_1C440D158();
    sub_1C43FC7E4();
    *v83 = v65;
    *(v83 + 8) = v85;
    sub_1C465B638(v99, &selRef_firstName);
    sub_1C440D158();
    sub_1C43FC7E4();
    *v83 = v65;
    *(v83 + 8) = v85;
    sub_1C465B638(v99, &selRef_middleName);
    sub_1C440D158();
    sub_1C43FC7E4();
    *v83 = v65;
    *(v83 + 8) = v85;
    sub_1C465B638(v99, &selRef_lastName);
    sub_1C440D158();
    sub_1C43FC7E4();
    *v83 = v65;
    *(v83 + 8) = v85;
    sub_1C465B638(v99, &selRef_suffix);
    sub_1C440D158();
    sub_1C43FC7E4();
    *v83 = v65;
    *(v83 + 8) = v85;
    v370 = MEMORY[0x1E69E7CC0];
    v100 = v332;
    v65 = [v332 phones];
    sub_1C4461BB8(0, &qword_1EC0C3458, 0x1E6999250);
    sub_1C441C97C();
    v101 = sub_1C4F01678();

    v102 = sub_1C4428DA0(v101);
    if (v102)
    {
      if (v102 < 1)
      {
        __break(1u);
        goto LABEL_127;
      }

      v103 = 0;
      v104 = MEMORY[0x1E69E7CC0];
      v357 = (v101 & 0xC000000000000001);
      v358 = v102;
      v359 = v101;
      do
      {
        if (v357)
        {
          v105 = MEMORY[0x1C6940F90](v103, v101);
        }

        else
        {
          v105 = *(v101 + 8 * v103 + 32);
        }

        v106 = v105;
        v107 = [v105 phoneNumber];
        sub_1C4F01138();

        v108 = String.normalizedContactHandle()();

        sub_1C4EFEEF8();
        sub_1C43FCF64();
        sub_1C440BAA8(v109, v110, v111, v112);
        sub_1C4EFD1D8();
        v113 = v46[6];
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v114 = type metadata accessor for Source(0);
        sub_1C442B738(v114, qword_1EDDFD070);
        sub_1C44079D8();
        sub_1C448D028(v115, &v59[v113], v116);
        sub_1C4EFE518();
        sub_1C43FC4E8(v46[8]);
        sub_1C4EFE478();
        v117 = &v59[v46[10]];
        sub_1C4EFE5A8();
        sub_1C43FC4E8(v46[12]);
        sub_1C4EFE4B8();
        sub_1C43FC4E8(v46[14]);
        sub_1C4EFEDE8();
        sub_1C43FC4E8(v46[16]);
        sub_1C4EFEA58();
        sub_1C43FC4E8(v46[18]);
        sub_1C4EFE8D8();
        sub_1C43FC4E8(v46[20]);
        sub_1C4EFE378();
        sub_1C43FC4E8(v46[22]);
        sub_1C4EFECD8();
        sub_1C43FC4E8(v46[24]);
        sub_1C4EFE688();
        sub_1C43FC4E8(v46[26]);
        *v117 = v108;
        sub_1C44136F8();
        sub_1C448D028(v59, v367, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458F168(0, *(v104 + 16) + 1, 1, v104);
          v104 = v125;
        }

        v120 = *(v104 + 16);
        v119 = *(v104 + 24);
        if (v120 >= v119 >> 1)
        {
          v126 = sub_1C43FCFE8(v119);
          sub_1C458F168(v126, v120 + 1, 1, v104);
          v104 = v127;
        }

        ++v103;

        *(v104 + 16) = v120 + 1;
        sub_1C43FBF6C();
        sub_1C4412428();
        sub_1C4B07AC0(v121, v122, v123);
        sub_1C4432934();
        sub_1C4B07B20(v59, v124);
        v101 = v359;
      }

      while (v358 != v103);

      v370 = v104;
      v100 = v332;
    }

    else
    {
    }

    v83 = v365;
    v128 = [v100 emailAddresses];
    sub_1C4461BB8(0, &qword_1EC0C3460, 0x1E6999200);
    sub_1C441C97C();
    v129 = sub_1C4F01678();

    v130 = sub_1C4428DA0(v129);
    if (!v130)
    {

      v132 = MEMORY[0x1E69E7CC0];
      goto LABEL_44;
    }

    v65 = v130;
    sub_1C44300F8(MEMORY[0x1E69E7CC0]);
    sub_1C459ED48();
    if ((v65 & 0x8000000000000000) == 0)
    {
      v131 = 0;
      v132 = v369;
      v358 = v129 & 0xC000000000000001;
      v359 = v65;
      v367 = v129;
      do
      {
        if (v358)
        {
          v133 = MEMORY[0x1C6940F90](v131, v129);
        }

        else
        {
          v133 = *(v129 + 8 * v131 + 32);
        }

        v134 = v133;
        sub_1C4EFEEF8();
        sub_1C43FCF64();
        sub_1C440BAA8(v135, v136, v137, v138);
        sub_1C4EFD1D8();
        v139 = v46[6];
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v140 = type metadata accessor for Source(0);
        sub_1C442B738(v140, qword_1EDDFD070);
        sub_1C44079D8();
        sub_1C448D028(v141, &v54[v139], v142);
        sub_1C4EFE518();
        v143 = &v54[v46[8]];
        sub_1C4EFE478();
        sub_1C44036C8(v46[10]);
        sub_1C4EFE5A8();
        sub_1C44036C8(v46[12]);
        sub_1C4EFE4B8();
        sub_1C44036C8(v46[14]);
        sub_1C4EFEDE8();
        sub_1C44036C8(v46[16]);
        sub_1C4EFEA58();
        sub_1C44036C8(v46[18]);
        sub_1C4EFE8D8();
        sub_1C44036C8(v46[20]);
        sub_1C4EFE378();
        sub_1C44036C8(v46[22]);
        sub_1C4EFECD8();
        sub_1C44036C8(v46[24]);
        sub_1C4EFE688();
        sub_1C44036C8(v46[26]);
        v144 = [v134 emailAddress];
        sub_1C4F01138();

        v145 = String.normalizedContactHandle()();

        *v143 = v145;
        v369 = v132;
        v147 = *(v132 + 16);
        v146 = *(v132 + 24);
        if (v147 >= v146 >> 1)
        {
          sub_1C43FCFE8(v146);
          sub_1C459ED48();
          v132 = v369;
        }

        ++v131;
        *(v132 + 16) = v147 + 1;
        sub_1C43FBF6C();
        sub_1C4412428();
        sub_1C4B07AC0(v54, v148, v149);
        v129 = v367;
      }

      while (v359 != v131);

      v83 = v365;
LABEL_44:
      sub_1C49D4BF0(v132);
      v150 = v370;
      v151 = v350[24];
      v100 = v355;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *&v100[v151] = v150;
      sub_1C4E4DF38();
      v152 = [v332 birthday];
      v153 = v348;
      v154 = v347;
      v155 = v346;
      if (v152)
      {
        v156 = v152;
        v100 = [v152 dateComponents];

        if (v100)
        {
          sub_1C4EF9598();

          v157 = 0;
        }

        else
        {
          v157 = 1;
        }

        v158 = v349;
        sub_1C440BAA8(v155, v157, 1, v153);
        sub_1C4B07B78(v155, v158);
        if (sub_1C44157D4(v158, 1, v153) != 1)
        {
          v162 = v340;
          (*(v154 + 32))(v340, v158, v153);
          sub_1C44CDAD4();
          sub_1C440D158();
          v163 = &v355[v350[21]];

          *v163 = v158;
          v163[1] = v162;
          v100 = v162;
          sub_1C4EF95D8();
          if (v164)
          {
            (*(v154 + 8))(v162, v153);
          }

          else
          {
            v165 = sub_1C44CE310();
            v167 = v166;
            (*(v154 + 8))(v100, v153);
            v83 = v365;
            if (!v167)
            {
              goto LABEL_56;
            }

            v168 = &v355[v350[23]];

            *v168 = v165;
            v168[1] = v167;
          }

          v83 = v365;
          goto LABEL_56;
        }
      }

      else
      {
        v158 = v349;
        sub_1C43FCF64();
        sub_1C440BAA8(v159, v160, v161, v153);
      }

      sub_1C4B079E8(v158);
LABEL_56:
      v65 = [v332 socialProfiles];
      sub_1C4461BB8(0, &qword_1EC0C3468, 0x1E6999298);
      sub_1C441C97C();
      v169 = sub_1C4F01678();

      v170 = sub_1C4428DA0(v169);
      if (!v170)
      {

        v173 = MEMORY[0x1E69E7CC0];
        goto LABEL_69;
      }

      v171 = v170;
      v359 = v150;
      sub_1C44300F8(MEMORY[0x1E69E7CC0]);
      sub_1C459ECF0();
      if ((v171 & 0x8000000000000000) == 0)
      {
        v172 = 0;
        v366 = (v169 & 0xC000000000000001);
        v367 = v169;
        v173 = v369;
        do
        {
          if (v366)
          {
            v174 = MEMORY[0x1C6940F90](v172, v169);
          }

          else
          {
            v174 = *(v169 + 8 * v172 + 32);
          }

          v175 = v174;
          sub_1C4EFEEF8();
          v176 = v362;
          sub_1C43FCF64();
          sub_1C440BAA8(v177, v178, v179, v180);
          sub_1C4EFD258();
          v181 = *(v83 + 24);
          if (qword_1EDDFD068 != -1)
          {
            sub_1C4419B48();
            swift_once();
          }

          v182 = type metadata accessor for Source(0);
          sub_1C442B738(v182, qword_1EDDFD070);
          sub_1C44079D8();
          sub_1C448D028(v183, v176 + v181, v184);
          sub_1C4EFE558();
          v185 = (v176 + *(v83 + 32));
          *v185 = 0;
          v185[1] = 0;
          sub_1C4EFE658();
          v186 = (v176 + *(v83 + 40));
          sub_1C4EFEBF8();
          v187 = (v176 + *(v83 + 48));
          sub_1C4EFEE18();
          v188 = (v176 + *(v83 + 56));
          *v186 = sub_1C465B638(v175, &selRef_service);
          v186[1] = v189;
          *v187 = sub_1C465B638(v175, &selRef_displayName);
          v187[1] = v190;
          v191 = sub_1C465B638(v175, &selRef_username);
          v193 = v192;

          *v188 = v191;
          v188[1] = v193;
          v369 = v173;
          v195 = *(v173 + 16);
          v194 = *(v173 + 24);
          if (v195 >= v194 >> 1)
          {
            sub_1C43FCFE8(v194);
            sub_1C459ECF0();
            v173 = v369;
          }

          ++v172;
          *(v173 + 16) = v195 + 1;
          sub_1C43FBF6C();
          sub_1C4B07AC0(v176, v173 + v196 + *(v197 + 72) * v195, type metadata accessor for SGContactStructs.IdentifierRelationshipType);
          v83 = v365;
          v169 = v367;
        }

        while (v171 != v172);

LABEL_69:
        v65 = v350[25];
        v198 = v355;

        *&v198[v65] = v173;
        sub_1C4E4E130();
        v100 = v345;
        v199 = BYTE7(v345) & 0xF;
        v83 = v344;
        if ((v345 & 0x2000000000000000) == 0)
        {
          v199 = v344 & 0xFFFFFFFFFFFFLL;
        }

        if (!v199)
        {
LABEL_78:
          v225 = [v332 postalAddresses];
          v226 = sub_1C4F01678();

          v348 = sub_1C4428DA0(v226);
          if (!v348)
          {
            v227 = MEMORY[0x1E69E7CC0];
LABEL_117:

            v65 = v350[27];
            v320 = v355;

            *(v320 + v65) = v227;
            sub_1C4E4E338();
            LOBYTE(v369) = 1;
            v321 = v364;
            sub_1C4E44C64();
            if (!v321)
            {
              v65 = v322;

              sub_1C4435358();
              sub_1C442D294();
              sub_1C4B07B20(v320, v326);
              return v65;
            }

            sub_1C4435358();
            sub_1C442D294();
            v324 = v320;
            goto LABEL_121;
          }

          v347 = v226 & 0xC000000000000001;
          v346 = "r the contacts UUID query.";
          v227 = MEMORY[0x1E69E7CC0];
          v228 = 4;
          v345 = xmmword_1C4F0F830;
          v344 = v226;
          while (1)
          {
            v229 = v347;
            sub_1C4431590(v228 - 4, v347 == 0, v226);
            v230 = v229 ? MEMORY[0x1C6940F90](v228 - 4, v226) : *(v226 + 8 * v228);
            if (__OFADD__(v228 - 4, 1))
            {
              break;
            }

            v365 = v228 - 3;
            v366 = v230;
            v363 = v228;
            v231 = [v230 components];
            v232 = swift_allocObject();
            *(v232 + 16) = v345;
            sub_1C465B638(v231, &selRef_street);
            v65 = MEMORY[0x1E69E6158];
            v233 = v335;
            *(v232 + 56) = MEMORY[0x1E69E6158];
            *(v232 + 64) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v237 = 0xE000000000000000;
            }

            else
            {
              v237 = v234;
            }

            *(v232 + 32) = v235;
            *(v232 + 40) = v237;
            sub_1C465B638(v231, &selRef_subLocality);
            *(v232 + 96) = v65;
            *(v232 + 104) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v240 = 0xE000000000000000;
            }

            else
            {
              v240 = v238;
            }

            *(v232 + 72) = v239;
            *(v232 + 80) = v240;
            sub_1C465B638(v231, &selRef_city);
            *(v232 + 136) = v65;
            *(v232 + 144) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v243 = 0xE000000000000000;
            }

            else
            {
              v243 = v241;
            }

            *(v232 + 112) = v242;
            *(v232 + 120) = v243;
            sub_1C465B638(v231, &selRef_subAdministrativeArea);
            *(v232 + 176) = v65;
            *(v232 + 184) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v246 = 0xE000000000000000;
            }

            else
            {
              v246 = v244;
            }

            *(v232 + 152) = v245;
            *(v232 + 160) = v246;
            sub_1C465B638(v231, &selRef_state);
            *(v232 + 216) = v65;
            *(v232 + 224) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v249 = 0xE000000000000000;
            }

            else
            {
              v249 = v247;
            }

            *(v232 + 192) = v248;
            *(v232 + 200) = v249;
            sub_1C465B638(v231, &selRef_postalCode);
            *(v232 + 256) = v65;
            *(v232 + 264) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v252 = 0xE000000000000000;
            }

            else
            {
              v252 = v250;
            }

            *(v232 + 232) = v251;
            *(v232 + 240) = v252;
            v367 = v231;
            sub_1C465B638(v231, &selRef_country);
            *(v232 + 296) = v65;
            *(v232 + 304) = v233;
            sub_1C440D79C();
            if (v236)
            {
              v255 = 0xE000000000000000;
            }

            else
            {
              v255 = v253;
            }

            *(v232 + 272) = v254;
            *(v232 + 280) = v255;
            sub_1C4F01168();
            if (qword_1EDDE9300 != -1)
            {
              swift_once();
            }

            sub_1C442B738(v331, qword_1EDE2D050);
            String.base64EncodedSHA(withPrefix:)();

            v256 = v364;
            sub_1C4E441DC();
            if (v256)
            {

              goto LABEL_120;
            }

            v362 = v227;
            v364 = 0;
            sub_1C4EFEEF8();
            v257 = v368;
            sub_1C43FCF64();
            v359 = v258;
            sub_1C440BAA8(v259, v260, v261, v258);
            sub_1C4EFD1D8();
            v262 = v257 + v46[6];
            if (qword_1EDDFD068 != -1)
            {
              sub_1C4419B48();
              swift_once();
            }

            v263 = type metadata accessor for Source(0);
            sub_1C442B738(v263, qword_1EDDFD070);
            sub_1C44079D8();
            v357 = v265;
            v358 = v264;
            sub_1C448D028(v264, v262, v266);
            sub_1C4EFE518();
            v267 = (v257 + v46[8]);
            *v267 = 0;
            v267[1] = 0;
            sub_1C4EFE478();
            v268 = (v257 + v46[10]);
            *v268 = 0;
            v268[1] = 0;
            sub_1C4EFE5A8();
            v269 = (v368 + v46[12]);
            sub_1C43FF56C();
            sub_1C4EFE4B8();
            v270 = (v368 + v46[14]);
            sub_1C43FF56C();
            sub_1C4EFEDE8();
            v271 = (v368 + v46[16]);
            sub_1C43FF56C();
            sub_1C4EFEA58();
            v272 = (v368 + v46[18]);
            sub_1C43FF56C();
            sub_1C4EFE8D8();
            v273 = (v368 + v46[20]);
            sub_1C43FF56C();
            sub_1C4EFE378();
            v274 = (v368 + v46[22]);
            sub_1C43FF56C();
            sub_1C4EFECD8();
            v275 = (v368 + v46[24]);
            sub_1C43FF56C();
            sub_1C4EFE688();
            v276 = v367;
            v349 = (v368 + v46[26]);
            *v269 = sub_1C465B638(v367, &selRef_street);
            v269[1] = v277;
            v278 = v368;
            *v270 = sub_1C465B638(v276, &selRef_subLocality);
            v270[1] = v279;
            *v271 = sub_1C465B638(v276, &selRef_city);
            v271[1] = v280;
            *v272 = sub_1C465B638(v276, &selRef_subAdministrativeArea);
            v272[1] = v281;
            *v273 = sub_1C465B638(v276, &selRef_state);
            v273[1] = v282;
            *v274 = sub_1C465B638(v276, &selRef_postalCode);
            v274[1] = v283;
            *v275 = sub_1C465B638(v276, &selRef_country);
            v275[1] = v284;
            v285 = sub_1C465B638(v276, &selRef_isoCountryCode);
            v286 = v349;
            *v349 = v285;
            v286[1] = v287;
            sub_1C44136F8();
            v288 = v352;
            sub_1C448D028(v278, v352, v289);
            v290 = sub_1C43FC024();
            sub_1C440BAA8(v290, v291, v292, v46);
            v293 = v356;
            sub_1C4E44A48(v288);
            v294 = v360;
            sub_1C43FCF64();
            sub_1C440BAA8(v295, v296, v297, v298);
            v299 = v354;
            sub_1C4EFD1F8();
            sub_1C448D028(v358, v294 + *(v299 + 24), v357);
            sub_1C4EFE5E8();
            v300 = (v294 + *(v299 + 32));
            sub_1C43FCF64();
            v301 = v351;
            sub_1C440BAA8(v302, v303, v304, v351);
            v305 = v366;
            *v300 = sub_1C4B07A50(v305);
            v300[1] = v306;
            v307 = v334;
            sub_1C448D028(v293, v334, type metadata accessor for SGContactStructs.Place);
            v308 = sub_1C43FC024();
            sub_1C440BAA8(v308, v309, v310, v301);
            sub_1C4E44B54(v307);
            sub_1C448D028(v294, v361, type metadata accessor for SGContactStructs.LocationRelationshipType);
            v227 = v362;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458F1E8(0, *(v227 + 16) + 1, 1, v227);
              v227 = v317;
            }

            v311 = v363;
            v313 = *(v227 + 16);
            v312 = *(v227 + 24);
            v226 = v344;
            if (v313 >= v312 >> 1)
            {
              v318 = sub_1C43FCFE8(v312);
              sub_1C458F1E8(v318, v313 + 1, 1, v227);
              v227 = v319;
            }

            sub_1C4B07B20(v293, type metadata accessor for SGContactStructs.Place);
            *(v227 + 16) = v313 + 1;
            sub_1C43FBF6C();
            sub_1C4B07AC0(v361, v227 + v314 + *(v315 + 72) * v313, type metadata accessor for SGContactStructs.LocationRelationshipType);
            sub_1C4B07B20(v360, type metadata accessor for SGContactStructs.LocationRelationshipType);
            sub_1C4432934();
            sub_1C4B07B20(v278, v316);
            v228 = v311 + 1;
            if (v365 == v348)
            {
              goto LABEL_117;
            }
          }

          __break(1u);
          goto LABEL_125;
        }

        if (qword_1EDDE9358 == -1)
        {
LABEL_73:
          sub_1C442B738(v331, qword_1EDE2D098);
          String.base64EncodedSHA(withPrefix:)();
          v200 = v343;
          v201 = v364;
          sub_1C4E436F4();
          v202 = v342;
          if (v201)
          {

LABEL_120:
            sub_1C4435358();
            sub_1C442D294();
            v324 = v355;
LABEL_121:
            sub_1C4B07B20(v324, v323);
            return v65;
          }

          v364 = 0;
          v203 = (v200 + *(v342 + 36));
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          *v203 = v83;
          v203[1] = v100;
          sub_1C4EFEEF8();
          v204 = v338;
          sub_1C43FCF64();
          sub_1C440BAA8(v205, v206, v207, v208);
          v209 = v339;
          sub_1C4EFD228();
          v210 = *(v209 + 24);
          if (qword_1EDDFD068 != -1)
          {
            sub_1C4419B48();
            swift_once();
          }

          v211 = type metadata accessor for Source(0);
          sub_1C442B738(v211, qword_1EDDFD070);
          sub_1C44079D8();
          sub_1C448D028(v212, v204 + v210, v213);
          sub_1C43FCF64();
          sub_1C440BAA8(v214, v215, v216, v202);
          v217 = v337;
          sub_1C448D028(v200, v337, type metadata accessor for SGContactStructs.Software);
          v218 = sub_1C43FC024();
          sub_1C440BAA8(v218, v219, v220, v202);
          sub_1C4E43FC0(v217);
          v221 = v330;
          sub_1C448D028(v204, v330, type metadata accessor for SGContactStructs.SoftwareRelationshipType);
          v222 = sub_1C43FC024();
          sub_1C440BAA8(v222, v223, v224, v209);
          sub_1C4E440D0(v221);
          sub_1C4B07B20(v204, type metadata accessor for SGContactStructs.SoftwareRelationshipType);
          sub_1C4B07B20(v200, type metadata accessor for SGContactStructs.Software);
          goto LABEL_78;
        }

LABEL_129:
        swift_once();
        goto LABEL_73;
      }

LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (qword_1EDDFECB0 != -1)
  {
LABEL_125:
    swift_once();
  }

  v93 = sub_1C4F00978();
  sub_1C442B738(v93, qword_1EDDFECB8);
  v94 = sub_1C4F00968();
  v95 = sub_1C4F01CF8();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_1C43F8000, v94, v95, "SGContact has no associated address", v96, 2u);
    MEMORY[0x1C6942830](v96, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4B079E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B07A50(void *a1)
{
  v2 = [a1 label];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B07AC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4B07B20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4B07B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SGContactSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE1C48;
  if (!qword_1EDDE1C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B07C7C()
{
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  v1 = [objc_opt_self() serviceForContacts];
  *(v0 + 184) = v1;
  *(v0 + 200) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1C4B07DC8;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0C3470, &qword_1C4F51448);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B0833C;
  *(v0 + 104) = &unk_1F43FC4A8;
  *(v0 + 112) = v2;
  [v1 allContactsLimitedTo:10000 withCompletion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C4B07DC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1C4B0803C;
  }

  else
  {
    v2 = sub_1C4B07ED8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4B07ED8()
{
  v0[20] = v0[21];
  v2 = v0[22];
  v1 = v0[23];
  type metadata accessor for SGContactSourceIngestor(0);
  type metadata accessor for PhaseStores(0);
  v3 = swift_task_alloc();
  v3[2] = v0 + 20;
  v3[3] = v2;
  v3[4] = v0 + 18;
  v3[5] = v1;
  v3[6] = v0 + 19;
  v3[7] = v0 + 25;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4B08A18, v3);
  v4 = v0[22];

  sub_1C4EF9AE8();
  sub_1C46460F4();
  swift_unknownObjectRelease();

  sub_1C4B080C0(v4, v0 + 19, v0 + 18);
  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C4B0803C(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_1C4B080C0(v2, v1 + 19, v1 + 18);
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4B080C0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SGContactSourceIngestor(0);
  sub_1C4430B24(a1 + *(v10 + 20), v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(v10 + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4B0833C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C467BF20();
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB838, 0x1E69991F0);
    sub_1C4F01678();

    return sub_1C467BF1C();
  }
}

void sub_1C4B083E4(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X6>, _BYTE *a7@<X7>, _BYTE *a8@<X8>)
{
  v9 = v8;
  v48[1] = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v43 = *a2 & 0xC000000000000001;
  v44 = sub_1C4428DA0(*a2);
  v42 = v13 & 0xFFFFFFFFFFFFFF8;
  v46 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  for (i = a3; ; a3 = i)
  {
    if (v44 == v14)
    {

      v30 = a7;
      v31 = a8;
      goto LABEL_25;
    }

    if (v43)
    {
      v15 = MEMORY[0x1C6940F90](v14, v46);
    }

    else
    {
      if (v14 >= *(v42 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v46 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_1C4ACEC54();
    if (v9)
    {
      break;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_28;
    }

    ++*a4;
    v17 = objc_autoreleasePoolPush();
    v18 = a3 + *(type metadata accessor for SGContactSourceIngestor(0) + 20);
    v19 = *(v18 + *(type metadata accessor for Configuration(0) + 20));
    if (qword_1EDDFA648 != -1)
    {
      v37 = v19;
      swift_once();
      v19 = v37;
    }

    v20 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFA650, v19), xmmword_1EDDFA650));
    if (v20.i32[0] & v20.i32[1])
    {
      v21 = [v16 recordId];
      v48[0] = 0;
      v22 = [a5 originFromRecordId:v21 error:v48];

      if (v22)
      {
        v23 = v48[0];
        v24 = sub_1C4B08A3C(v22);
        if (v25)
        {
          sub_1C4B05D20(v24, v25);

          goto LABEL_18;
        }
      }

      else
      {
        v26 = v48[0];
        v27 = sub_1C4EF97A8();

        swift_willThrow();
      }
    }

    sub_1C4B05D20(0, 0xE000000000000000);
LABEL_18:
    sub_1C4812140();
    v29 = v28;

    a1(v29);
    v9 = 0;

    if (__OFADD__(*a6, 1))
    {
      goto LABEL_29;
    }

    ++*a6;
    objc_autoreleasePoolPop(v17);

    ++v14;
  }

  v31 = a8;
  v48[0] = v9;
  v32 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    sub_1C465B58C();
    v33 = swift_allocError();
    *v34 = v47[1];
    v35 = *(type metadata accessor for SGContactSourceIngestor(0) + 20);
    v47[0] = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v33, 0x6361746E6F434753, 0xE900000000000074, a3 + v35, v47);

    v30 = a7;
  }

  else
  {

    v36 = *(type metadata accessor for SGContactSourceIngestor(0) + 20);
    LOBYTE(v48[0]) = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v9, 0x6361746E6F434753, 0xE900000000000074, a3 + v36, v48);

    v30 = a7;
    *a7 = 1;
  }

LABEL_25:
  *v31 = *v30;
}

uint64_t sub_1C4B08878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C4B07C5C();
}

uint64_t sub_1C4B08908(uint64_t a1)
{
  result = sub_1C4B089D4(qword_1EDDE1C70, &unk_1C4F513B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B0894C(uint64_t a1)
{
  result = sub_1C4B089D4(&qword_1EDDE1C58, &unk_1C4F513E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B08990(uint64_t a1)
{
  result = sub_1C4B089D4(&qword_1EDDE1C60, &unk_1C4F513FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B089D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SGContactSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B08A3C(void *a1)
{
  v1 = [a1 bundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B08AA0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C467BF20();
  }

  else
  {
    swift_unknownObjectRetain();

    return sub_1C467BF1C();
  }
}

uint64_t sub_1C4B08B2C()
{
  v1 = sub_1C45B1F9C(v0, &selRef_title);
  v3 = sub_1C441C460(v1, v2);
  if (v5)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1C6940010](v3, v6);

  v7 = sub_1C45B1F9C(v0, &selRef_notes);
  v9 = sub_1C441C460(v7, v8);
  if (v5)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v10;
  }

  MEMORY[0x1C6940010](v9, v11);

  v12 = sub_1C45B1F9C(v0, &selRef_uniqueKey);
  v14 = sub_1C441C460(v12, v13);
  if (v5)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = v15;
  }

  MEMORY[0x1C6940010](v14, v16);

  sub_1C465B58C();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t sub_1C4B08CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4B08CC8()
{
  sub_1C4404D98();
  v1 = sub_1C4B0E7B0(*(v0 + 208));
  if (!v1 || (v2 = sub_1C4428DA0(v1), , !v2))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C4402B64(v6))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v7, v8, "SGEvent has no associated address");
      sub_1C43FBE2C();
    }

    sub_1C43FBCF0();
    sub_1C4402234();

    __asm { BRAA            X2, X16 }
  }

  sub_1C4B09728();
  *(v0 + 216) = sub_1C4B08B2C();
  *(v0 + 224) = v3;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x80000001C4FB1830;
  *(swift_task_alloc() + 16) = v0 + 136;
  v11 = sub_1C44CE068();

  if (v11)
  {
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v12[1] = sub_1C4B08F98;
    sub_1C4402234();

    return sub_1C4B0999C();
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    v15[1] = sub_1C4B092F4;
    sub_1C4402234();

    return sub_1C4B0BBF4();
  }
}

uint64_t sub_1C4B08F98()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 240) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 248) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4B090A8()
{
  sub_1C4404D98();
  v1 = *(v0 + 248);
  v2 = type metadata accessor for SGEventStructs.TransportationActivity(0);
  v3 = sub_1C4B0E94C(&unk_1EC0C3490, type metadata accessor for SGEventStructs.TransportationActivity, &unk_1C4F7B854);
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 168);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v4 = *(v0 + 240);
  sub_1C44306F8();
  if (*(v0 + 120))
  {
    sub_1C441D670((v0 + 96), v0 + 56);
    sub_1C4409678((v0 + 56), *(v0 + 80));
    v5 = sub_1C440D7A8();
    v7 = v6(v5);
    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);

    sub_1C440962C((v0 + 56));
    if (v4)
    {
      sub_1C43FC560();

      return v8();
    }
  }

  else
  {

    sub_1C4423A0C(v0 + 96, &qword_1EC0C3480, &unk_1C4F40B58);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DE10);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (sub_1C4402B64(v12))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v13, v14, "No event could be extracfted from SGEvent");
      sub_1C43FBE2C();
    }

    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v15(v7);
}

uint64_t sub_1C4B092F4()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 272) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4B09404()
{
  sub_1C4404D98();
  v1 = *(v0 + 272);
  v2 = type metadata accessor for SGEventStructs.CalendarEvent(0);
  v3 = sub_1C4B0E94C(&qword_1EC0C3488, type metadata accessor for SGEventStructs.CalendarEvent, &unk_1C4F7B7E8);
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 152);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  v4 = *(v0 + 264);
  sub_1C44306F8();
  if (*(v0 + 120))
  {
    sub_1C441D670((v0 + 96), v0 + 56);
    sub_1C4409678((v0 + 56), *(v0 + 80));
    v5 = sub_1C440D7A8();
    v7 = v6(v5);
    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);

    sub_1C440962C((v0 + 56));
    if (v4)
    {
      sub_1C43FC560();

      return v8();
    }
  }

  else
  {

    sub_1C4423A0C(v0 + 96, &qword_1EC0C3480, &unk_1C4F40B58);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DE10);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (sub_1C4402B64(v12))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v13, v14, "No event could be extracfted from SGEvent");
      sub_1C43FBE2C();
    }

    sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v15(v7);
}

uint64_t sub_1C4B09650()
{
  sub_1C43FBCD4();
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4B096BC()
{
  sub_1C43FBCD4();
  sub_1C4423A0C(v0 + 16, &qword_1EC0C3480, &unk_1C4F40B58);
  sub_1C43FBDA0();

  return v1();
}

void sub_1C4B09728()
{
  v1 = sub_1C4B0E744(v0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v4 == v3)
      {

        return;
      }

      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 8 * v3 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02198();
      if (!*(v5 + 16))
      {
        break;
      }

      v6 = sub_1C457AA70(v24);
      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_1C442B870(*(v5 + 56) + 32 * v6, v25);
      sub_1C457E804(v24);
      if (swift_dynamicCast())
      {
        v24[0] = 0x6570797440;
        v24[1] = 0xE500000000000000;
        sub_1C4415EA8();
        v8 = sub_1C4F02058();

        v9 = *(v8 + 16);
        if (!v9)
        {

          goto LABEL_11;
        }

        v10 = (v8 + 32 * v9);
        v20 = v10[1];
        v21 = *v10;
        v11 = v10[3];
        v19 = v10[2];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v12 = MEMORY[0x1C693FEF0](v21, v20, v19, v11);
        v22 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443D664();
          v23 = v17;
        }

        v15 = *(v23 + 16);
        v14 = *(v23 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C43FCFE8(v14);
          sub_1C443D664();
          v23 = v18;
        }

        ++v3;
        *(v23 + 16) = v15 + 1;
        v16 = v23 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v22;
      }

      else
      {

LABEL_11:
        ++v3;
      }
    }

    sub_1C457E804(v24);
    goto LABEL_11;
  }
}

uint64_t sub_1C4B0999C()
{
  sub_1C43FBCD4();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v1[47] = v5;
  sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  v1[52] = sub_1C43FBE7C();
  v6 = sub_1C4EF9648();
  v1[53] = v6;
  sub_1C43FCF7C(v6);
  v1[54] = v7;
  v1[55] = sub_1C43FBE7C();
  v8 = sub_1C4EF9F88();
  v1[56] = v8;
  sub_1C43FCF7C(v8);
  v1[57] = v9;
  v1[58] = sub_1C43FBE7C();
  v10 = sub_1C4EF9CD8();
  v1[59] = v10;
  sub_1C43FCF7C(v10);
  v1[60] = v11;
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v12 = sub_1C4EF98F8();
  v1[63] = v12;
  sub_1C43FCF7C(v12);
  v1[64] = v13;
  v1[65] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C4B0A270()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 552) = v0;

  if (v0)
  {
  }

  else
  {
    *(v4 + 560) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4B0A3B4()
{
  v2 = v0[66];
  v3 = v0[51];
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasLocationRelationship) = v0[70];

  sub_1C4E61AF0(v4, v5);
  v6 = v3;
  sub_1C4B09728();
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_sgeventType) = v7;

  v8 = sub_1C4B0E8F4(v3);
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  *&v244 = *(v8 + 16);
  if (!v244)
  {
LABEL_20:

LABEL_21:

    sub_1C43FBCF0();
    v29 = v0[66];

    return v28(v29);
  }

  v10 = 0;
  v242 = v8 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v240 = v8;
  v241 = v0;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_113;
    }

    v12 = *(v242 + 16 * v10 + 8);
    v0[26] = *(v242 + 16 * v10);
    v0[27] = v12;
    sub_1C4415EA8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = sub_1C4F02058();
    v13 = *(v1 + 16);
    if (v13)
    {
      v247 = v10;
      sub_1C44CD9C0(0, v13, 0);
      v14 = 0;
      v6 = v11;
      v15 = (v1 + 56);
      while (v14 < *(v1 + 16))
      {
        v16 = *(v15 - 3);
        v17 = *(v15 - 2);
        v19 = *(v15 - 1);
        v18 = *v15;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v20 = MEMORY[0x1C693FEF0](v16, v17, v19, v18);
        v22 = v21;

        v24 = v6[2];
        v23 = v6[3];
        if (v24 >= v23 >> 1)
        {
          v26 = sub_1C43FCFE8(v23);
          sub_1C44CD9C0(v26, v24 + 1, 1);
        }

        ++v14;
        v6[2] = v24 + 1;
        v25 = &v6[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v15 += 4;
        if (v13 == v14)
        {

          v9 = v240;
          v0 = v241;
          v11 = MEMORY[0x1E69E7CC0];
          v10 = v247;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v6 = v11;
LABEL_13:
    if (v6[2] == 2)
    {
      v27 = v6[4] == 20307 && v6[5] == 0xE200000000000000;
      if (v27 || (sub_1C4F02938() & 1) != 0)
      {
        break;
      }
    }

    ++v10;

    if (v10 == v244)
    {
      goto LABEL_20;
    }
  }

  sub_1C45A323C();
  v15 = v6[6];
  v14 = v6[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v31 = sub_1C4F00978();
  sub_1C442B738(v31, qword_1EDE2DE10);
  sub_1C44042C4();
  v32 = swift_allocObject();
  *(v32 + 16) = v15;
  *(v32 + 24) = v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CC8();
  v35 = sub_1C440F54C(&unk_1F43FC508);
  *(v35 + 16) = 32;
  v36 = sub_1C440F54C(&unk_1F43FC530);
  *(v36 + 16) = 8;
  sub_1C44042C4();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C4AD7104;
  *(v37 + 24) = v32;
  sub_1C44042C4();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C4AD71F0;
  *(v38 + 24) = v37;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  v244 = xmmword_1C4F0C890;
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v35;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v36;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v38;
  swift_setDeallocating();
  sub_1C49E1614();
  if (os_log_type_enabled(v33, v34))
  {
    v40 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    *v40 = 136315138;
    v41 = sub_1C43FE5F8();
    *(v40 + 4) = sub_1C441D828(v41, v42, v43);
    _os_log_impl(&dword_1C43F8000, v33, v34, "SGEventExtenstion: schema.org tag value (%s)", v40, 0xCu);
    sub_1C440962C(v249);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v44 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  sub_1C43FE5F8();
  sub_1C4B3C50C();
  v46 = v45;
  v48 = v47;
  v49 = sub_1C4EF9A38();
  sub_1C4434000(v46, v48);
  v241[45] = 0;
  v50 = [v44 JSONObjectWithData:v49 options:0 error:v241 + 45];

  v51 = v241[45];
  if (!v50)
  {
    v69 = v51;

    sub_1C4EF97A8();

    swift_willThrow();

    goto LABEL_37;
  }

  v52 = v51;
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0C34A0, &qword_1C4F3EFE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    sub_1C44042C4();
    v71 = swift_allocObject();
    *(v71 + 16) = v15;
    *(v71 + 24) = v14;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CD8();
    v74 = sub_1C440F54C(&unk_1F43FC5D0);
    *(v74 + 16) = 32;
    v75 = sub_1C440F54C(&unk_1F43FC5F8);
    *(v75 + 16) = 8;
    sub_1C44042C4();
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1C4B00DB4;
    *(v76 + 24) = v71;
    sub_1C44042C4();
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1C4B0E9F8;
    *(v77 + 24) = v76;
    v78 = swift_initStackObject();
    *(v78 + 16) = v244;
    *(v78 + 32) = sub_1C44549F4;
    *(v78 + 40) = v74;
    *(v78 + 48) = sub_1C44549F4;
    *(v78 + 56) = v75;
    *(v78 + 64) = sub_1C4454C38;
    *(v78 + 72) = v77;
    swift_setDeallocating();
    sub_1C49E1614();
    if (os_log_type_enabled(v72, v73))
    {
      v79 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      *v79 = 136315138;
      v80 = sub_1C43FE5F8();
      v83 = sub_1C441D828(v80, v81, v82);

      *(v79 + 4) = v83;
      _os_log_impl(&dword_1C43F8000, v72, v73, "SGEventExtenstion: schema.org tag value cannot be deserialized: (%s)", v79, 0xCu);
      sub_1C440962C(v250);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v0 = v241;
    goto LABEL_21;
  }

  sub_1C443294C();
  swift_bridgeObjectRelease_n();
  v53 = v241[46];
  sub_1C45A323C();
  v247 = v53;
  v54 = *(v53 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v55 = sub_1C4B0E36C(0x72656469766F7270, 0xE800000000000000, v54);
  if (v55)
  {
    v56 = v55;
    v57 = sub_1C440F190();
    v59 = sub_1C4B0E424(v57, v58, v56);
    v61 = v60;

    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
    *v62 = v59;
    v62[1] = v61;
  }

  v63 = sub_1C4B0E36C(0x7461767265736572, 0xEE00726F466E6F69, v54);

  if (!v63)
  {
    v84 = v241[69];
LABEL_80:
    v169 = MEMORY[0x1E69E7CC0];
    goto LABEL_81;
  }

  v64 = sub_1C4B0E36C(0x72656469766F7270, 0xE800000000000000, v63);
  if (v64)
  {
    v65 = v64;
    v66 = (v241[66] + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
    v67 = v66[1];
    if (v67)
    {
      v68 = *v66;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v85 = sub_1C440F190();
      v68 = sub_1C4B0E424(v85, v86, v65);
      v67 = v87;
    }

    *v66 = v68;
    v66[1] = v67;
  }

  v88 = v241[66];
  v89 = *(v88 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode + 8);
  if (v89)
  {
    v90 = *(v88 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_iataCode);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v91 = sub_1C4B0E424(0x754E746867696C66, 0xEC0000007265626DLL, v63);
    v93 = v91;
    if (v92)
    {
      v94 = v241;
      v241[38] = v91;
      v241[39] = v92;
      v241[40] = v90;
      v241[41] = v89;
      v241[42] = 0;
      v241[43] = 0xE000000000000000;
      v93 = v241 + 38;
      sub_1C4F02008();
      sub_1C4404274();
    }

    else
    {

      v90 = 0;
      v94 = v241;
    }

    v95 = (v94[66] + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber);
    *v95 = v93;
    v95[1] = v90;

    v88 = v94[66];
  }

  v96 = (v88 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber);
  v97 = *(v88 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_flightNumber + 8);
  if (v97)
  {
    v98 = v241[52];
    v99 = *v96;
    v241[28] = *v96;
    v241[29] = v97;
    v241[30] = 0x5D392D305E5BLL;
    v241[31] = 0xE600000000000000;
    v241[32] = 0;
    v241[33] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v241[34] = v99;
    v241[35] = v97;
    v241[36] = v99;
    v241[37] = v97;
    v100 = sub_1C4EF9E48();
    sub_1C440BAA8(v98, 1, 1, v100);
    sub_1C43FEAF8();
    sub_1C4F02028();
    sub_1C4423A0C(v98, &unk_1EC0B7610, &unk_1C4F17610);
    sub_1C443294C();
    sub_1C4F02008();
    sub_1C4469224();
    *v96 = (v241 + 28);
    v96[1] = v241;
  }

  v101 = sub_1C4B0E36C(0x416C617669727261, 0xEE0074726F707269, v63);
  if (v101)
  {
    v102 = v101;
    v245 = v63;
    v103 = sub_1C4413710();
    v105 = sub_1C4B0E424(v103, v104, v102);
    v107 = v106;
    v108 = sub_1C440F190();
    v110 = sub_1C4B0E424(v108, v109, v102);
    v112 = v111;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v113 = sub_1C43FD024();
    MEMORY[0x1C6940010](v113);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v114 = sub_1C43FD024();
    MEMORY[0x1C6940010](v114);

    if (qword_1EDDE9368 != -1)
    {
      sub_1C441A47C();
      swift_once();
    }

    v115 = v241[69];
    v116 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v116, &qword_1EDE2D0C8);
    String.base64EncodedSHA(withPrefix:)();
    sub_1C440A034();
    type metadata accessor for SGEventStructs.Place(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C43FD024();
    sub_1C4E59528();
    if (v115)
    {

      goto LABEL_37;
    }

    v118 = v117;
    v119 = (v117 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_name);
    *v119 = v105;
    v119[1] = v107;

    v243 = v118;
    v120 = (v118 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode);
    *v120 = v110;
    v120[1] = v112;

    type metadata accessor for SGEventStructs.LocationRelationshipType(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4E58DE0();
    v121 = sub_1C4415BDC();
    v122 = v121;
    if (v121)
    {
      v123 = [v121 stringValue];

      sub_1C4F01138();
      sub_1C4404274();
    }

    sub_1C443294C();
    v63 = v245;
    sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_latitude);
    *v124 = v122;
    v124[1] = 0;

    v125 = sub_1C4410540();
    v126 = v125;
    if (v125)
    {
      v127 = [v125 stringValue];

      sub_1C4F01138();
      sub_1C4404274();
    }

    sub_1C443F32C();
    sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_longitude);
    *v128 = v126;
    v128[1] = 0;

    sub_1C4E526B0(v129);
    sub_1C441B024();
    v133 = sub_1C4B0E36C(v130, v131, v132);
    if (v133)
    {
      v134 = v133;
      type metadata accessor for SGEventStructs.AddressRelationshipType(0);
      sub_1C43FD23C();
      v135 = swift_allocObject();
      v136 = sub_1C4E560A4();
      v137 = sub_1C44052CC();
      sub_1C44079F0(v137, v138);

      v139 = sub_1C43FD574();
      v141 = sub_1C4B0E36C(v139, v140, v134);
      if (v141)
      {
        v135 = v141;
        v142 = sub_1C4413710();
        sub_1C4B0E424(v142, v143, v135);
        sub_1C440A034();
        v144 = (v136 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_country);
        *v144 = v243;
        v144[1] = 0;
      }

      v145 = sub_1C43FD574();
      v147 = sub_1C4B0E694(v145, v146, v134);
      if (v148)
      {
        sub_1C44079F0(v147, v148);
      }

      sub_1C4426D9C();
      sub_1C4469224();
      v149 = (v136 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_postalCode);
      *v149 = v135;
      v149[1] = v243;

      sub_1C4E526D8(v150);

      sub_1C443294C();
      v63 = v245;
      sub_1C443F32C();
    }

    sub_1C441B024();
    sub_1C4B0E694(v151, v152, v153);
    sub_1C4404274();

    sub_1C4E52700(v154);

    v84 = 0;
  }

  else
  {
    v84 = v241[69];
  }

  v155 = sub_1C4B0E36C(0xD000000000000010, 0x80000001C4FB1850, v63);

  if (!v155)
  {
    goto LABEL_80;
  }

  v156 = sub_1C4413710();
  v158 = sub_1C4B0E424(v156, v157, v155);
  v1 = v159;
  v160 = sub_1C440F190();
  v162 = sub_1C4B0E424(v160, v161, v155);
  v164 = v163;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v165 = sub_1C43FD024();
  MEMORY[0x1C6940010](v165);

  if (v164)
  {
    v0 = v162;
  }

  else
  {
    v0 = 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v166 = sub_1C43FD024();
  MEMORY[0x1C6940010](v166);

  if (qword_1EDDE9368 != -1)
  {
    sub_1C441A47C();
    swift_once();
  }

  v167 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v167, &qword_1EDE2D0C8);
  String.base64EncodedSHA(withPrefix:)();
  sub_1C440A034();
  type metadata accessor for SGEventStructs.Place(0);
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C43FD024();
  sub_1C4E59528();
  if (v84)
  {

    goto LABEL_37;
  }

  v211 = (v168 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_iataCode);
  *v211 = v162;
  v211[1] = v164;

  sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs5Place_name);
  *v212 = v158;
  v212[1] = v1;

  type metadata accessor for SGEventStructs.LocationRelationshipType(0);
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4E58DE0();
  v213 = sub_1C4415BDC();
  v6 = v213;
  if (v213)
  {
    v0 = [v213 stringValue];

    sub_1C4F01138();
    sub_1C4404274();
  }

LABEL_113:
  v169 = MEMORY[0x1E69E7CC0];
  sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_latitude);
  *v214 = v6;
  v214[1] = 0;

  v215 = sub_1C4410540();
  v216 = v215;
  if (v215)
  {
    v0 = [v215 stringValue];

    sub_1C4F01138();
    sub_1C4404274();
  }

  sub_1C44507B8();
  sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs24LocationRelationshipType_longitude);
  *v217 = v216;
  v217[1] = 0;

  sub_1C4E526B0(v218);
  sub_1C441B024();
  v222 = sub_1C4B0E36C(v219, v220, v221);
  if (v222)
  {
    v223 = v222;
    sub_1C443F32C();
    v224 = v1 & 0xFFFFFFFFFFFFLL | 0x4373000000000000;
    type metadata accessor for SGEventStructs.AddressRelationshipType(0);
    sub_1C43FD23C();
    v225 = swift_allocObject();
    sub_1C4E560A4();
    v226 = sub_1C44052CC();
    sub_1C44079F0(v226, v227);

    v228 = sub_1C4B0E36C(v224, 0xEE007972746E756FLL, v223);
    if (v228)
    {
      v225 = v228;
      v229 = sub_1C4413710();
      sub_1C4B0E424(v229, v230, v225);
      sub_1C440A034();
      sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_country);
      *v231 = v0;
      v231[1] = 0;
    }

    v232 = sub_1C4B0E694(v224, 0xEE007972746E756FLL, v223);
    if (v233)
    {
      sub_1C44079F0(v232, v233);
    }

    sub_1C4426D9C();
    sub_1C4469224();
    sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_postalCode);
    *v234 = v225;
    v234[1] = v0;

    sub_1C4E526D8(v235);

    sub_1C44507B8();
  }

  sub_1C441B024();
  sub_1C4B0E694(v236, v237, v238);
  sub_1C4404274();

  sub_1C4E52728(v239);

  v84 = 0;
LABEL_81:
  v248 = v169;
  v246 = *(v247 + 16);
  if (!v246)
  {
LABEL_108:
    v0 = v241;
    v210 = v241[66];

    *(v210 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs22TransportationActivity_hasAttendee) = v169;

    sub_1C4E61B68();
    goto LABEL_21;
  }

  v170 = 0;
  while (1)
  {
    sub_1C45A323C();
    v171 = *(v247 + 8 * v170 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v172 = sub_1C4B0E36C(0x6465767265736572, 0xEE0074656B636954, v171);
    if (v172)
    {
      v173 = v172;
      v174 = sub_1C442E520();
      v176 = sub_1C4B0E36C(v174, v175, v173);
      if (v176)
      {
        v177 = v176;
        v178 = sub_1C4413710();
        v180 = sub_1C4B0E694(v178, v179, v177);
        v182 = v181;
      }

      else
      {
        v180 = 0;
        v182 = 0;
      }

      v183 = sub_1C442E520();
      v185 = sub_1C4B0E694(v183, v184, v173);
      v187 = v186;

      if (v187)
      {

        v180 = v185;
        v182 = v187;
      }
    }

    else
    {
      v180 = 0;
      v182 = 0;
    }

    v188 = sub_1C442E520();
    v190 = sub_1C4B0E36C(v188, v189, v171);
    if (v190)
    {
      v191 = v190;
      if (!v182)
      {
        v192 = sub_1C4413710();
        v180 = sub_1C4B0E694(v192, v193, v191);
        v182 = v194;
      }
    }

    v195 = sub_1C442E520();
    v197 = sub_1C4B0E694(v195, v196, v171);
    v199 = v198;

    if (v199)
    {

      v180 = v197;
      v182 = v199;
    }

    v200 = v241[47];
    v201 = v241[48];
    if (v182)
    {
      v202 = v180;
    }

    else
    {
      v202 = 0;
    }

    if (v182)
    {
      v203 = v182;
    }

    else
    {
      v203 = 0xE000000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v202, v203);

    MEMORY[0x1C6940010](v200, v201);
    if (qword_1EDDE9228 != -1)
    {
      swift_once();
    }

    v204 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v204, qword_1EDE2CEE8);
    String.base64EncodedSHA(withPrefix:)();
    sub_1C440A034();
    type metadata accessor for SGEventStructs.Person(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C43FD024();
    sub_1C4E5E3CC();
    if (v84)
    {
      break;
    }

    v206 = (v205 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_name);
    *v206 = v180;
    v206[1] = v182;

    type metadata accessor for SGEventStructs.ParticipationRelationshipType(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4E6159C();

    v208 = sub_1C4E52750(v207);
    MEMORY[0x1C6940330](v208);
    v209 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v248 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v209 >> 1)
    {
      sub_1C43FCFE8(v209);
      sub_1C4F016D8();
    }

    ++v170;
    sub_1C4F01748();
    v169 = v248;

    v84 = 0;
    if (v246 == v170)
    {
      goto LABEL_108;
    }
  }

LABEL_37:

  sub_1C43FBDA0();

  return v70();
}

void sub_1C4B0BB1C()
{
  sub_1C4404D98();

  sub_1C43FBDA0();
  sub_1C4402234();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4B0BBF4()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = sub_1C4EF9648();
  v1[9] = v7;
  sub_1C43FCF7C(v7);
  v1[10] = v8;
  v1[11] = sub_1C43FBE7C();
  v9 = sub_1C4EF9F88();
  v1[12] = v9;
  sub_1C43FCF7C(v9);
  v1[13] = v10;
  v1[14] = sub_1C43FBE7C();
  v11 = sub_1C4EF9CD8();
  v1[15] = v11;
  sub_1C43FCF7C(v11);
  v1[16] = v12;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = sub_1C4EF98F8();
  v1[21] = v13;
  sub_1C43FCF7C(v13);
  v1[22] = v14;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C4B0BDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1C440C6BC();
  type metadata accessor for SGEventStructs.CalendarEvent(0);
  sub_1C43FD23C();
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FBC98();
  sub_1C4E68EA4();
  *(v16 + 200) = v17;
  v18 = v17;
  v19 = *(v16 + 64);
  v20 = [v19 isAllDay];
  v21 = 48;
  if (v20)
  {
    v21 = 49;
  }

  sub_1C441B4D8(v21);
  v22 = sub_1C45B1F9C(v19, &selRef_title);
  if (v23)
  {
    sub_1C44079F0(v22, v23);
  }

  v24 = sub_1C45B1F9C(*(v16 + 64), &selRef_notes);
  if (v25)
  {
    sub_1C44079F0(v24, v25);
  }

  v26 = [*(v16 + 64) URL];
  if (v26)
  {
    v27 = v26;
    v28 = *(v16 + 192);
    v29 = *(v16 + 168);
    v30 = *(v16 + 176);
    sub_1C4EF98C8();

    v31 = sub_1C44024CC();
    v32(v31);
    v33 = sub_1C4EF9818();
    v35 = v34;
    (*(v30 + 8))(v28, v29);
    sub_1C4435370(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_url);
    *v36 = v33;
    v36[1] = v35;
  }

  v37 = *(v16 + 64);
  sub_1C4B0C78C();
  sub_1C4E525C0();
  sub_1C4B09728();
  *(v18 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_sgeventType) = v38;

  v39 = [v37 origin];
  v40 = [v39 type];

  v41 = sub_1C4B0CB20(v40);
  sub_1C44079F0(v41, v42);

  v43 = [v37 creationDate];
  v99 = v18;
  if (v43)
  {
    v44 = v43;
    sub_1C4EF9C78();

    v45 = sub_1C44024CC();
    v46(v45);
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      sub_1C4400CB0(&qword_1EDDF4920);
    }

    v47 = *(v16 + 160);
    v49 = *(v16 + 104);
    v48 = *(v16 + 112);
    v50 = *(v16 + 88);
    v95 = *(v16 + 96);
    v97 = *(v16 + 120);
    v52 = *(v16 + 72);
    v51 = *(v16 + 80);
    sub_1C43FC7FC();
    v53 = sub_1C44CDAD4();
    v55 = v54;
    (*(v51 + 8))(v50, v52);
    (*(v49 + 8))(v48, v95);
    v18 = v99;
    sub_1C4435370(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_creationDate);
    *v56 = v53;
    v56[1] = v55;

    sub_1C4EF9AD8();
    sub_1C4F019E8();
    v57 = sub_1C43FDDD4();
    v58(v57, v97);
    sub_1C4435370(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_imputedCreationDate);
    *v59 = v47;
    v59[1] = v48;
  }

  v60 = [*(v16 + 64) lastModifiedDate];
  if (v60)
  {
    v61 = v60;
    sub_1C4EF9C78();

    v62 = sub_1C44024CC();
    v63(v62);
    sub_1C4EF9F58();
    if (qword_1EDDF4920 != -1)
    {
      sub_1C4400CB0(&qword_1EDDF4920);
    }

    v64 = *(v16 + 144);
    v65 = *(v16 + 104);
    v66 = *(v16 + 112);
    v67 = *(v16 + 88);
    v96 = *(v16 + 96);
    v98 = *(v16 + 120);
    sub_1C43FC7FC();
    sub_1C44CDAD4();
    v68 = sub_1C440E710();
    v69(v68);
    (*(v65 + 8))(v66, v96);
    v18 = v99;
    sub_1C4435370(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_lastUpdated);
    *v70 = v67;
    v70[1] = 0x1EDE2D000;

    sub_1C4EF9AD8();
    sub_1C4F019E8();
    v71 = sub_1C43FDDD4();
    v72(v71, v98);
    sub_1C4435370(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_imputedLastUpdated);
    *v73 = v64;
    v73[1] = v66;
  }

  v74 = *(v16 + 64);
  v75 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C45B1F9C(v74, &selRef_naturalLanguageEventTypeIdentifier);
  if (v76)
  {
    sub_1C4414E8C();
    sub_1C43FD23C();
    swift_allocObject();
    v77 = sub_1C4E5395C();
    sub_1C4412448(v77);
    sub_1C44411C4();
    *v79 = 0xD00000000000001ELL;
    v79[1] = v78;

    MEMORY[0x1C6940330](v80);
    sub_1C440FB40();
    if (v82)
    {
      sub_1C44176F0(v81);
      sub_1C4F016D8();
    }

    sub_1C44057DC();
    sub_1C4F01748();
    v75 = *(v16 + 16);
  }

  sub_1C45B1F9C(*(v16 + 64), &selRef_uniqueKey);
  if (v83)
  {
    sub_1C4414E8C();
    sub_1C43FD23C();
    swift_allocObject();
    v84 = sub_1C4E5395C();
    sub_1C4412448(v84);
    sub_1C440BF18(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs26IdentifierRelationshipType_identifierType);
    *v85 = xmmword_1C4F51450;

    MEMORY[0x1C6940330](v86);
    sub_1C440FB40();
    if (v82)
    {
      sub_1C44176F0(v87);
      sub_1C4F016D8();
    }

    sub_1C44057DC();
    sub_1C4F01748();
    v75 = *(v16 + 16);
  }

  *(v18 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_identifier) = v75;

  sub_1C4E678D8(v88, v89);
  v90 = swift_task_alloc();
  *(v16 + 208) = v90;
  *v90 = v16;
  v90[1] = sub_1C4B0C438;
  sub_1C440405C();

  return sub_1C4B0CC04(v91, v92);
}

uint64_t sub_1C4B0C438()
{
  sub_1C43FCF70();
  sub_1C441246C();
  v4 = v3;
  sub_1C43FBE64();
  *v5 = v4;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v4 + 216) = v0;

  if (!v0)
  {
    *(v4 + 224) = v1;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4B0C540()
{
  v1 = v0[27];
  v2 = v0[5];
  *(v0[25] + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs13CalendarEvent_hasLocationRelationship) = v0[28];

  sub_1C4E67914(v3, v4);
  v5 = sub_1C4B0DF70(v2);
  if (v1)
  {

    sub_1C44346D0(v0[24]);

    sub_1C43FC560();

    return v6();
  }

  else
  {
    sub_1C4E525E8(v5);

    sub_1C43FBCF0();
    v9 = v0[25];

    return v8(v9);
  }
}

uint64_t sub_1C4B0C6D4()
{
  sub_1C4404D98();

  sub_1C44346D0(*(v0 + 192));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4B0C78C()
{
  v1 = v0;
  sub_1C4EF9F88();
  sub_1C43FCDF8();
  v45[1] = v2;
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v45[0] = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  type metadata accessor for SGEventStructs.DateRelationshipType(0);
  sub_1C43FD23C();
  swift_allocObject();
  v18 = sub_1C4E5D5CC();
  v19 = [v0 start];
  if (v19)
  {
    v20 = v19;
    sub_1C4EF9C78();

    (*(v6 + 32))(v17, v14, v4);
    LOBYTE(v20) = [v1 isAllDay];
    sub_1C4EF9F58();
    v21 = Date.dateComponentsJSONString(isAllDay:calendar:)(v20);
    v23 = v22;
    v24 = sub_1C44057DC();
    v25(v24);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_startTime);
    *v26 = v21;
    v26[1] = v23;

    sub_1C4EF9AD8();
    v27 = sub_1C4F019E8();
    v29 = v28;
    (*(v6 + 8))(v17, v4);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_imputedStartTime);
    *v30 = v27;
    v30[1] = v29;
  }

  v31 = [v1 end];
  if (v31)
  {
    v32 = v31;
    v33 = v45[0];
    sub_1C4EF9C78();

    (*(v6 + 32))(v11, v33, v4);
    LOBYTE(v32) = [v1 isAllDay];
    sub_1C4EF9F58();
    v34 = Date.dateComponentsJSONString(isAllDay:calendar:)(v32);
    v36 = v35;
    v37 = sub_1C44057DC();
    v38(v37);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_endTime);
    *v39 = v34;
    v39[1] = v36;

    sub_1C4EF9AD8();
    v40 = sub_1C4F019E8();
    v42 = v41;
    (*(v6 + 8))(v11, v4);
    sub_1C4433DA8(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs20DateRelationshipType_imputedEndTime);
    *v43 = v40;
    v43[1] = v42;
  }

  return v18;
}

uint64_t sub_1C4B0CB20(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7261646E656C6143;
  switch(v1)
  {
    case 0:
      result = 1818845517;
      break;
    case 1:
      result = 0x746361746E6F43;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1936942413;
      goto LABEL_9;
    case 4:
      result = 0x7463617265746E49;
      break;
    case 5:
      result = 0x724F616D65686353;
      break;
    case 6:
      v3 = 1348625751;
LABEL_9:
      result = v3 | 0x65676100000000;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t sub_1C4B0CC04(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4B0CC1C()
{
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  v1 = v0 + 144;
  v2 = sub_1C4B0E7B0(*(v0 + 176));
  *(v0 + 184) = v2;
  if (!v2)
  {
LABEL_39:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

  v3 = sub_1C4428DA0(v2);
  *(v0 + 192) = v3;
  if (!v3)
  {
LABEL_32:

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    __asm { BRAA            X2, X16 }
  }

  v4 = 0;
  for (i = &selRef_address; ; i = v41)
  {
    v6 = *(v0 + 184);
    v7 = v6 & 0xC000000000000001;
    sub_1C4431590(v4, (v6 & 0xC000000000000001) == 0, v6);
    v8 = *(v0 + 184);
    if (v7)
    {
      v2 = MEMORY[0x1C6940F90](v4, v8);
    }

    else
    {
      v2 = *(v8 + 8 * v4 + 32);
    }

    v9 = v2;
    *(v0 + 200) = v2;
    *(v0 + 208) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    v10 = sub_1C45B1F9C(v2, i);
    v12 = sub_1C441C460(v10, v11);
    if (v14)
    {
      v15 = 0xE000000000000000;
    }

    else
    {
      v15 = v13;
    }

    MEMORY[0x1C6940010](v12, v15);

    [v9 latitude];
    sub_1C4F01A28();
    [v9 longitude];
    sub_1C4F01A28();
    if (qword_1EDDE9368 != -1)
    {
      sub_1C441A47C();
      swift_once();
    }

    v16 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v16, &qword_1EDE2D0C8);
    String.base64EncodedSHA(withPrefix:)();

    type metadata accessor for SGEventStructs.Place(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4E59528();
    *(v0 + 216) = v17;
    *(v0 + 224) = 0;
    v18 = sub_1C45B1F9C(v9, i);
    if (v19)
    {
      sub_1C44079F0(v18, v19);
    }

    v20 = *(v0 + 168);
    if (v20)
    {
      break;
    }

LABEL_22:
    v30 = *(v0 + 200);
    type metadata accessor for SGEventStructs.LocationRelationshipType(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4E58DE0();
    [v30 latitude];
    sub_1C444FF54();
    if (v31 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v0 + 200) latitude];
      v32 = sub_1C4F019E8();
      sub_1C44079F0(v32, v33);
    }

    [*(v0 + 200) longitude];
    sub_1C444FF54();
    if (v34 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v0 + 200) longitude];
      v35 = sub_1C4F019E8();
      sub_1C44079F0(v35, v36);
    }

    v37 = *(v0 + 200);

    sub_1C4E526B0(v38);
    swift_allocObject();
    sub_1C4E58DE0();
    v39 = sub_1C45B1F9C(v37, &selRef_label);
    if (v40)
    {
      sub_1C44079F0(v39, v40);
    }

    v41 = i;

    v43 = sub_1C4E527A0(v42);
    MEMORY[0x1C6940330](v43);
    sub_1C44237E4();
    if (v26)
    {
      sub_1C43FCFE8(v44);
      sub_1C4F016D8();
    }

    v45 = *(v0 + 208);
    v46 = v1;
    v47 = *(v0 + 192);
    v48 = *(v0 + 200);
    sub_1C43FD574();
    v49 = v46;
    sub_1C4F01748();

    if (v45 == v47)
    {
      goto LABEL_32;
    }

    v4 = *(v0 + 208);
    v1 = v49;
  }

  v21 = v20;
  v22 = sub_1C4B0E820(v9);
  v24 = sub_1C444B290(v22, v23);
  if (v26)
  {
    v27 = *(v0 + 168);
LABEL_21:

    goto LABEL_22;
  }

  if (sub_1C488C520(v24, v25))
  {
    v27 = *(v0 + 168);
    v28 = sub_1C43FD574();
    sub_1C441DFEC(v28, v29);
    goto LABEL_21;
  }

  v52 = *(v0 + 168);
  sub_1C43FD574();
  v53 = sub_1C4EF9A38();
  sub_1C445E998(v53);
  *(v0 + 16) = v54;
  *(v0 + 56) = v0 + 152;
  sub_1C4425F48();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
  sub_1C4433720();
  *(v0 + 88) = 1107296256;
  sub_1C4411158(&unk_1F43FC660);
  [v52 resolveMapItemFromHandle:v1 completionHandler:?];
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1C4B0D13C()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0D240()
{
  v92 = v0;
  v1 = *(v0 + 152);
  v2 = v0 + 80;
  v3 = v0 + 144;
  v4 = *(v0 + 248);
  if (v1)
  {

    if ([v1 _hasMUID])
    {
      if (qword_1EDDFECB0 != -1)
      {
LABEL_49:
        swift_once();
      }

      v5 = *(v0 + 200);
      v6 = sub_1C4F00978();
      sub_1C442B738(v6, qword_1EDDFECB8);
      v7 = v5;
      swift_unknownObjectRetain();
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CC8();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 200);
        v11 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v11 = 136380931;
        *(v0 + 80) = sub_1C45B1F9C(v10, &selRef_address);
        *(v0 + 88) = v12;
        sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
        v13 = sub_1C4F01198();
        v15 = v3;
        v16 = sub_1C441D828(v13, v14, v91);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2081;
        v17 = [v1 description];
        v18 = sub_1C4F01138();
        v20 = v19;

        v21 = v18;
        v3 = v15;
        v22 = sub_1C441D828(v21, v20, v91);

        *(v11 + 14) = v22;
        _os_log_impl(&dword_1C43F8000, v8, v9, "GeoMapItem for %{private}s is %{private}s", v11, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v4 = *(v0 + 168);
      type metadata accessor for SGEventStructs.IdentifierRelationshipType(0);
      sub_1C43FD23C();
      swift_allocObject();
      sub_1C4E5395C();
      *(v0 + 80) = [v1 _muid];
      v25 = sub_1C4F02858();
      sub_1C44079F0(v25, v26);

      sub_1C442F390(OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs26IdentifierRelationshipType_identifierType);
      *v27 = xmmword_1C4F1F440;

      sub_1C4E52778(v28);

      swift_unknownObjectRelease();
      v29 = v24;
      v30 = v23;
      goto LABEL_10;
    }

    v33 = *(v0 + 232);
    v31 = *(v0 + 240);
    v4 = *(v0 + 168);
    swift_unknownObjectRelease();
    v29 = v33;
  }

  else
  {
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);

    v29 = v32;
  }

  v30 = v31;
LABEL_10:
  sub_1C441DFEC(v29, v30);

  v34 = *(v0 + 224);
  v35 = &selRef_localizedName;
  type metadata accessor for SGEventStructs.LocationRelationshipType(0);
  v89 = v2;
  while (1)
  {
    do
    {
      v90 = v34;
      v36 = *(v0 + 200);
      swift_allocObject();
      sub_1C4E58DE0();
      [v36 v35[99]];
      sub_1C444FF54();
      if (v37 <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [*(v0 + 200) v35[99]];
        v38 = sub_1C4F019E8();
        sub_1C44079F0(v38, v39);
      }

      [*(v0 + 200) longitude];
      sub_1C444FF54();
      if (v40 <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [*(v0 + 200) longitude];
        v41 = sub_1C4F019E8();
        sub_1C44079F0(v41, v42);
      }

      v43 = *(v0 + 200);

      sub_1C4E526B0(v44);
      swift_allocObject();
      sub_1C4E58DE0();
      v45 = sub_1C45B1F9C(v43, &selRef_label);
      if (v46)
      {
        sub_1C44079F0(v45, v46);
      }

      v1 = v35;

      v48 = sub_1C4E527A0(v47);
      MEMORY[0x1C6940330](v48);
      v49 = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v49 >> 1)
      {
        sub_1C43FCFE8(v49);
        sub_1C4F016D8();
      }

      v50 = v3;
      v51 = *(v0 + 208);
      v3 = *(v0 + 216);
      v53 = *(v0 + 192);
      v52 = *(v0 + 200);
      v54 = v50;
      sub_1C4F01748();

      if (v51 == v53)
      {

        sub_1C43FBCF0();
        sub_1C4409BA4();

        __asm { BRAA            X2, X16 }
      }

      sub_1C4460398();
      v55 = *(v0 + 184);
      if (v52)
      {
        v56 = MEMORY[0x1C6940F90](v50, v55);
      }

      else
      {
        v56 = *(v55 + 8 * v50 + 32);
      }

      v57 = v56;
      v35 = v1;
      *(v0 + 200) = v56;
      *(v0 + 208) = v50 + 1;
      v2 = v89;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      v58 = sub_1C45B1F9C(v56, &selRef_address);
      v60 = sub_1C441C460(v58, v59);
      if (v62)
      {
        v63 = 0xE000000000000000;
      }

      else
      {
        v63 = v61;
      }

      MEMORY[0x1C6940010](v60, v63);

      [v57 v1 + 504];
      sub_1C4F01A28();
      [v57 longitude];
      sub_1C43FBC98();
      sub_1C4F01A28();
      if (qword_1EDDE9368 != -1)
      {
        sub_1C441A47C();
        swift_once();
      }

      v64 = type metadata accessor for SourceIdPrefix(0);
      sub_1C442B738(v64, &qword_1EDE2D0C8);
      String.base64EncodedSHA(withPrefix:)();

      type metadata accessor for SGEventStructs.Place(0);
      sub_1C43FD23C();
      swift_allocObject();
      sub_1C4E59528();
      *(v0 + 216) = v65;
      *(v0 + 224) = v90;
      if (v90)
      {

        sub_1C43FC560();
        sub_1C4409BA4();

        __asm { BRAA            X1, X16 }
      }

      v66 = sub_1C45B1F9C(v57, &selRef_address);
      if (v67)
      {
        sub_1C44079F0(v66, v67);
      }

      v34 = 0;
      v68 = *(v0 + 168);
      v3 = v54;
    }

    while (!v68);
    v69 = v68;
    v70 = sub_1C4B0E820(v57);
    v72 = sub_1C444B290(v70, v71);
    if (v74)
    {
      v75 = *(v0 + 168);
      goto LABEL_38;
    }

    v76 = v72;
    v77 = v73;
    if (!sub_1C488C520(v72, v73))
    {
      break;
    }

    v75 = *(v0 + 168);
    sub_1C441DFEC(v76, v77);
LABEL_38:

    v34 = 0;
  }

  v82 = *(v0 + 168);
  v83 = sub_1C4EF9A38();
  sub_1C445E998(v83);
  *(v0 + 16) = v84;
  *(v0 + 56) = v0 + 152;
  v85 = sub_1C4425F48();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B08AA0;
  *(v0 + 104) = &unk_1F43FC660;
  *(v0 + 112) = v85;
  [v82 resolveMapItemFromHandle:v35 completionHandler:v89];
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DEC8](v86);
}

uint64_t sub_1C4B0DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C440C6BC();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v89 = v24 + 152;
  v28 = *(v24 + 248);
  v27 = *(v24 + 256);
  v29 = *(v24 + 160);
  v30 = *(v24 + 168);
  swift_willThrow();

  v31 = sub_1C43FE5F8();
  sub_1C441DFEC(v31, v32);

  HIBYTE(a12) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v27, 0xD00000000000001BLL, 0x80000001C4FB18B0, v29, &a12 + 7);

  v33 = &selRef_localizedName;
  v90 = type metadata accessor for SGEventStructs.LocationRelationshipType(0);
  while (1)
  {
    v34 = *(v24 + 200);
    swift_allocObject();
    sub_1C4E58DE0();
    [v34 v33[99]];
    sub_1C444FF54();
    if (v35 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v24 + 200) v33[99]];
      v36 = sub_1C4F019E8();
      sub_1C44079F0(v36, v37);
    }

    [*(v24 + 200) longitude];
    sub_1C444FF54();
    if (v38 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      [*(v24 + 200) longitude];
      v39 = sub_1C4F019E8();
      sub_1C44079F0(v39, v40);
    }

    v41 = *(v24 + 200);

    sub_1C4E526B0(v42);
    swift_allocObject();
    sub_1C4E58DE0();
    v43 = sub_1C45B1F9C(v41, &selRef_label);
    if (v44)
    {
      sub_1C44079F0(v43, v44);
    }

    v45 = v33;

    v47 = sub_1C4E527A0(v46);
    MEMORY[0x1C6940330](v47);
    sub_1C44237E4();
    if (v49)
    {
      sub_1C43FCFE8(v48);
      sub_1C4F016D8();
    }

    v50 = *(v24 + 208);
    v51 = *(v24 + 192);
    v52 = *(v24 + 200);
    v53 = v24 + 144;
    sub_1C4F01748();

    if (v50 == v51)
    {
      break;
    }

    sub_1C4460398();
    v54 = *(v24 + 184);
    if (v51)
    {
      v55 = MEMORY[0x1C6940F90](v24 + 144, v54);
    }

    else
    {
      v55 = *(v54 + 8 * v53 + 32);
    }

    v56 = v55;
    v33 = v45;
    *(v24 + 200) = v55;
    *(v24 + 208) = v24 + 145;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v55);
    }

    *(v24 + 80) = 0;
    *(v24 + 88) = 0xE000000000000000;
    v57 = sub_1C45B1F9C(v55, &selRef_address);
    v59 = sub_1C441C460(v57, v58);
    if (v61)
    {
      v62 = 0xE000000000000000;
    }

    else
    {
      v62 = v60;
    }

    MEMORY[0x1C6940010](v59, v62);

    [v56 v45 + 504];
    sub_1C4F01A28();
    [v56 longitude];
    sub_1C4F01A28();
    if (qword_1EDDE9368 != -1)
    {
      sub_1C441A47C();
      swift_once();
    }

    v63 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v63, &qword_1EDE2D0C8);
    String.base64EncodedSHA(withPrefix:)();

    type metadata accessor for SGEventStructs.Place(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4E59528();
    *(v24 + 216) = v64;
    *(v24 + 224) = 0;
    v65 = sub_1C45B1F9C(v56, &selRef_address);
    if (v66)
    {
      sub_1C44079F0(v65, v66);
    }

    v67 = *(v24 + 168);
    if (v67)
    {
      v68 = v67;
      v69 = sub_1C4B0E820(v56);
      v71 = sub_1C444B290(v69, v70);
      if (v49)
      {
        v73 = *(v24 + 168);
      }

      else
      {
        v74 = v71;
        v75 = v72;
        if (!sub_1C488C520(v71, v72))
        {
          v85 = *(v24 + 168);
          v86 = sub_1C4EF9A38();
          sub_1C445E998(v86);
          *(v24 + 16) = v87;
          *(v24 + 56) = v89;
          *(v24 + 24) = sub_1C4B0D13C;
          swift_continuation_init();
          *(v24 + 136) = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
          sub_1C4433720();
          *(v24 + 88) = 1107296256;
          sub_1C4411158(&unk_1F43FC660);
          [v85 resolveMapItemFromHandle:v90 completionHandler:?];
          sub_1C440405C();

          return MEMORY[0x1EEE6DEC8](v55);
        }

        v73 = *(v24 + 168);
        sub_1C441DFEC(v74, v75);
      }
    }
  }

  sub_1C43FBCF0();
  sub_1C440405C();

  return v78(v76, v77, v78, v79, v80, v81, v82, v83, v89, v90, v24 + 80, a12, a13, a14, a15, a16);
}

uint64_t sub_1C4B0DF70(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  sub_1C45B1F9C(v2, &selRef_displayName);
  v3 = 0xE000000000000000;
  v4 = [v2 handleIdentifier];
  v5 = sub_1C4F01138();
  v7 = v6;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v5, v7);

  v8 = [v2 handles];
  v9 = sub_1C4F01678();

  if (v9[2])
  {
    v10 = v9[4];
    v3 = v9[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v10 = 0;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v10, v3);

  if (qword_1EDDE9230 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v12, &qword_1EDE2CF00);
  String.base64EncodedSHA(withPrefix:)();
  v11 = v13;

  type metadata accessor for SGEventStructs.Person(0);
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C4E5E3CC();
  if (v1)
  {
  }

  else
  {
    v11 = v14;
    v15 = sub_1C45B1F9C(v2, &selRef_displayName);
    sub_1C44079F0(v15, v16);

    v17 = [v2 handleIdentifier];
    v18 = sub_1C4F01138();
    v20 = v19;

    v21 = (v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_handleIdentifier);
    *v21 = v18;
    v21[1] = v20;

    v22 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    v23 = [v2 handles];
    v24 = sub_1C4F01678();

    v25 = *(v24 + 16);
    if (v25)
    {
      v38 = v11;
      v39 = v2;
      type metadata accessor for SGEventStructs.AddressRelationshipType(0);
      v26 = (v24 + 40);
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        swift_allocObject();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v29 = sub_1C4E560A4();
        v30 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
        v31 = sub_1C4F01108();
        v32 = [v30 typeOfHandleString_];

        v33 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_emailAddress;
        if (v32 != 1)
        {
          v33 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs23AddressRelationshipType_phoneNumber;
        }

        v34 = (v29 + *v33);
        *v34 = v27;
        v34[1] = v28;

        MEMORY[0x1C6940330](v35);
        v36 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
        {
          sub_1C43FCFE8(v36);
          sub_1C4F016D8();
        }

        sub_1C4F01748();

        v26 += 2;
        --v25;
      }

      while (v25);
      v2 = v39;
      v22 = v40;
      v11 = v38;
    }

    *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore14SGEventStructs6Person_hasContactInformation) = v22;

    sub_1C4E5DD80();
  }

  return v11;
}

uint64_t sub_1C4B0E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, *(&v14 + 1), v15);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v14 = v16;
  v15 = v17;
  if (*(&v17 + 1))
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(&v14, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4B0E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1C445FAA8(a1, a2), (v5 & 1) != 0))
  {
    sub_1C442B870(*(a3 + 56) + 32 * v4, &v27);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v21 = v27;
  v22 = v28;
  if (!*(&v28 + 1))
  {
    sub_1C4423A0C(&v21, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }

  sub_1C44482AC(&v21, v26);
  v6 = sub_1C442B870(v26, &v21);
  if (sub_1C4414698(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25))
  {

    goto LABEL_11;
  }

  sub_1C442B870(v26, &v25);
  sub_1C456902C(&qword_1EC0C34A8, &unk_1C4F51480);
  if (!swift_dynamicCast())
  {
    sub_1C440962C(v26);
    return 0;
  }

  sub_1C440962C(&v21);
LABEL_11:
  v13 = sub_1C44482AC(v26, &v21);
  if (sub_1C4414698(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25))
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

void *sub_1C4B0E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17[0], v17[1], v17[2]);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_1C4B0E994(v18, v17, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  if (!v17[3])
  {
    sub_1C4423A0C(v17, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_10;
  }

  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_1C4423A0C(v18, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }

  v11 = v16;
  v12 = sub_1C4F01EB8();
  v13 = sub_1C4F01EE8();
  sub_1C4423A0C(v18, &qword_1EC0BCD10, &qword_1C4F0C8C0);

  if (v13)
  {

    return 0;
  }

  return v11;
}

uint64_t sub_1C4B0E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1C445FAA8(a1, a2), (v4 & 1) != 0))
  {
    sub_1C446C02C(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, *(&v14 + 1), v15);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v14 = v16;
  v15 = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C4423A0C(&v14, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    return 0;
  }
}

uint64_t sub_1C4B0E744(void *a1)
{
  v1 = [a1 schemaOrg];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E7B0(void *a1)
{
  v1 = [a1 locations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EDDDBB18, 0x1E6999228);
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E820(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

uint64_t sub_1C4B0E884(void *a1)
{
  v2 = [a1 externalKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4B0E8F4(void *a1)
{
  v1 = [a1 tags];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4B0E94C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B0E994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for SGEventSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE33B8;
  if (!qword_1EDDE33B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B0EA70()
{
  sub_1C43FBCD4();
  v1[39] = v0;
  v1[40] = type metadata accessor for SGEventSourceIngestor(0);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B0EB08()
{
  sub_1C43FCF70();
  v0[34] = 0;
  v0[35] = 0;
  v1 = objc_opt_self();
  v0[43] = [v1 serviceForContacts];
  v2 = [v1 serviceForEvents];
  v0[44] = v2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1C4B0EC6C;
  v3 = swift_continuation_init();
  v0[25] = sub_1C456902C(&qword_1EC0C34B8, &qword_1C4F51538);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C4B10040;
  v0[21] = &unk_1F43FC6E8;
  v0[22] = v3;
  [v2 allEventsLimitedTo:10000 withCompletion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C4B0EC6C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v18 = v15[36];
  v15[46] = v18;
  swift_unknownObjectRelease();
  v19 = sub_1C4428DA0(v18);
  v15[47] = v19;
  v15[48] = 0;
  v20 = v15[46];
  if (!v19)
  {

    sub_1C442BED4();
    sub_1C441CD60(v38);
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v18, v39, v40);

    sub_1C43FBDA0();
LABEL_15:
    sub_1C43FD0C0();

    return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1C6940F90](0);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v21 = *(v20 + 32);
  }

  v14 = v21;
  v15[49] = v21;
  v15[50] = 1;
  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_7:
      v22 = sub_1C443537C();
      sub_1C442B738(v22, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v23, v24, v25);
      v26 = sub_1C4F00968();
      v27 = sub_1C4F01CF8();
      v28 = sub_1C4430110(v27);
      v29 = v15[42];
      if (v28)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v16 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v30, v31, v32);
        sub_1C4420224();
        sub_1C4B10414(v29, v33);
        sub_1C4640C7C();
        v34 = sub_1C440FB50();
        sub_1C4404698(v34, v35);
        sub_1C43FEB14();
        *(v16 + 4) = v17;
        sub_1C4408F80(&dword_1C43F8000, v36, v37, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      v48 = sub_1C4B103CC(v46, v47, MEMORY[0x1E69E8558]);
      sub_1C440E690(v48);
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_15;
    }

LABEL_20:
    sub_1C43FE9B4(&qword_1EDDFD028);
    goto LABEL_7;
  }

  v15[34] = 1;
  sub_1C4411170([v14 recordId]);
  v15[10] = v41;
  v15[15] = v15 + 37;
  v15[11] = sub_1C4B0F074;
  swift_continuation_init();
  v42 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v42);
  v15[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v43, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v44);
}

uint64_t sub_1C4B0F074()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 112);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4B0F174()
{
  sub_1C43FCF70();
  v1 = v0[51];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v0[53] = v4;

  v5 = [v4 fromPerson];
  v0[54] = v5;
  v6 = *(v3 + *(v2 + 28));
  v7 = swift_task_alloc();
  v0[55] = v7;
  *v7 = v0;
  v7[1] = sub_1C4B0F250;
  v8 = v0[39];

  return sub_1C4B08CB0(v5, v6, v8);
}

uint64_t sub_1C4B0F250()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBE64();
  *v8 = v7;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4B0F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v16 = v14[57];
  v18 = v14[53];
  v17 = v14[54];
  v20 = v14[48];
  v19 = v14[49];
  v21 = v14[39];
  v22 = *(v21 + *(type metadata accessor for PhaseStores(0) + 24));
  sub_1C4B46D4C();

  v23 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_21:
    v29 = MEMORY[0x1C6940F90](v22);
    goto LABEL_7;
  }

  v14[35] = v23;
  v22 = v14[50];
  v14[48] = v23;
  if (v22 == v14[47])
  {

    sub_1C442BED4();
    sub_1C441CD60(v24);
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v22, v25, v26);

    sub_1C43FBDA0();
LABEL_17:
    sub_1C43FD0C0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  if ((v14[46] & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  sub_1C43FC1D8();
  if (v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = *(v27 + 8 * v22 + 32);
LABEL_7:
  v16 = v29;
  v19 = (v22 + 1);
  v14[49] = v29;
  v14[50] = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_10:
      v30 = sub_1C443537C();
      sub_1C442B738(v30, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v31, v32, v33);
      v34 = sub_1C4F00968();
      v35 = sub_1C4F01CF8();
      v36 = sub_1C4430110(v35);
      v37 = v14[42];
      if (v36)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v19 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v38, v39, v40);
        sub_1C4420224();
        sub_1C4B10414(v37, v41);
        sub_1C4640C7C();
        v42 = sub_1C440FB50();
        sub_1C4404698(v42, v43);
        sub_1C43FEB14();
        *(v19 + 1) = v15;
        sub_1C4408F80(&dword_1C43F8000, v44, v45, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      v53 = sub_1C4B103CC(v51, v52, MEMORY[0x1E69E8558]);
      sub_1C440E690(v53);
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_17;
    }

LABEL_24:
    sub_1C43FE9B4(&qword_1EDDFD028);
    goto LABEL_10;
  }

  sub_1C4432960();
  sub_1C4411170([v16 recordId]);
  v14[10] = v46;
  sub_1C4413720();
  v47 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v47);
  v14[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v48, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v49);
}

uint64_t sub_1C4B0F670()
{
  sub_1C43FCF70();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1C43FF578();
  sub_1C4B0FDB8(v0, v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4B0F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  sub_1C44142CC();
  v17 = v14[51];
  v18 = v14[52];
  v19 = v14[49];
  swift_willThrow();

  v20 = v14[50];
  if (v20 == v14[47])
  {

    sub_1C442BED4();
    sub_1C441CD60(v21);
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v20, v22, v23);

    sub_1C43FBDA0();
LABEL_16:
    sub_1C43FD0C0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  if ((v14[46] & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1C6940F90](v14[50]);
  }

  else
  {
    sub_1C43FC1D8();
    if (v25)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v26 = *(v24 + 8 * v20 + 32);
  }

  v17 = v26;
  v15 = v20 + 1;
  v14[49] = v26;
  v14[50] = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_9:
      v27 = sub_1C443537C();
      sub_1C442B738(v27, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v28, v29, v30);
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();
      v33 = sub_1C4430110(v32);
      v34 = v14[42];
      if (v33)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v15 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v35, v36, v37);
        sub_1C4420224();
        sub_1C4B10414(v34, v38);
        sub_1C4640C7C();
        v39 = sub_1C440FB50();
        sub_1C4404698(v39, v40);
        sub_1C43FEB14();
        *(v15 + 4) = v16;
        sub_1C4408F80(&dword_1C43F8000, v41, v42, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      v50 = sub_1C4B103CC(v48, v49, MEMORY[0x1E69E8558]);
      sub_1C440E690(v50);
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_16;
    }

LABEL_22:
    sub_1C43FE9B4(&qword_1EDDFD028);
    goto LABEL_9;
  }

  sub_1C4432960();
  sub_1C4411170([v17 recordId]);
  v14[10] = v43;
  sub_1C4413720();
  v44 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v44);
  v14[27] = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v45, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v46);
}

uint64_t sub_1C4B0F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v24;
  a22 = v25;
  sub_1C44142CC();
  a20 = v22;
  v26 = 0x746E6576454753;
  v27 = *(v22 + 448);

  *(v22 + 304) = v27;
  v28 = v27;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v29 = swift_dynamicCast();
  v30 = *(v22 + 448);
  v31 = *(v22 + 424);
  v32 = *(v22 + 392);
  if ((v29 & 1) == 0)
  {
    v37 = *(v22 + 312);

    LOBYTE(a10) = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v30, 0x746E6576454753, 0xE700000000000000, v37, &a10);

    goto LABEL_5;
  }

  v33 = *(v22 + 312);

  v34 = *(v22 + 464);
  sub_1C465B58C();
  v35 = swift_allocError();
  *v36 = v34;
  LOBYTE(a10) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v35, 0x746E6576454753, 0xE700000000000000, v33, &a10);

  v26 = *(v22 + 400);
  if (v26 == *(v22 + 376))
  {

LABEL_5:
    sub_1C442BED4();
    sub_1C441CD60(v38);
    swift_unknownObjectRelease();
    sub_1C43FF578();
    sub_1C4B0FDB8(v26, v39, v40);

    sub_1C43FBDA0();
LABEL_6:
    sub_1C43FD0C0();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
  }

  if ((*(v22 + 368) & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x1C6940F90](*(v22 + 400));
  }

  else
  {
    sub_1C43FC1D8();
    if (v51)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v52 = *(v50 + 8 * v26 + 32);
  }

  v35 = v52;
  v32 = (v26 + 1);
  *(v22 + 392) = v52;
  *(v22 + 400) = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 == -1)
    {
LABEL_15:
      v53 = sub_1C443537C();
      sub_1C442B738(v53, qword_1EDE2DE10);
      sub_1C441A490();
      sub_1C4415C08(v54, v55, v56);
      v57 = sub_1C4F00968();
      v58 = sub_1C4F01CF8();
      v59 = sub_1C4430110(v58);
      v60 = *(v22 + 336);
      if (v59)
      {
        sub_1C4425F78();
        sub_1C4402BBC();
        sub_1C44057F8();
        *v32 = 136315138;
        sub_1C441A490();
        sub_1C444FF60(v61, v62, v63);
        sub_1C4420224();
        sub_1C4B10414(v60, v64);
        sub_1C4640C7C();
        v65 = sub_1C440FB50();
        sub_1C4404698(v65, v66);
        sub_1C43FEB14();
        *(v32 + 1) = v23;
        sub_1C4408F80(&dword_1C43F8000, v67, v68, "%s going to defer");
        sub_1C4406614();
        sub_1C43FFD4C();
      }

      else
      {
        sub_1C440B224();
      }

      sub_1C442E530();
      sub_1C4400CD0();
      v76 = sub_1C4B103CC(v74, v75, MEMORY[0x1E69E8558]);
      sub_1C440E690(v76);
      sub_1C441056C();
      swift_willThrow();

      swift_unknownObjectRelease();
      sub_1C4417700();

      sub_1C43FBDA0();
      goto LABEL_6;
    }

LABEL_25:
    sub_1C43FE9B4(&qword_1EDDFD028);
    goto LABEL_15;
  }

  sub_1C4432960();
  sub_1C4411170([v35 recordId]);
  *(v22 + 80) = v69;
  sub_1C4413720();
  v70 = sub_1C456902C(&qword_1EC0C34C0, &unk_1C4F51540);
  sub_1C442D2AC(v70);
  *(v22 + 216) = 1107296256;
  sub_1C4407A00(&unk_1F43FC710);
  sub_1C43FC81C(v71, sel_originFromRecordId_withCompletion_);
  sub_1C43FD0C0();

  return MEMORY[0x1EEE6DEC8](v72);
}

uint64_t sub_1C4B0FDB8(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4B10474(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(type metadata accessor for SGEventSourceIngestor(0) + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4B10414(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4B10040(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1C467BF20();
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDDB858, 0x1E6999210);
    sub_1C4F01678();

    return sub_1C467BF1C();
  }
}

uint64_t sub_1C4B100E8()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4B10170;

  return sub_1C4B0EA70();
}

uint64_t sub_1C4B10170()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBE64();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4B102C4(uint64_t a1)
{
  result = sub_1C4B103CC(qword_1EDDE33E0, type metadata accessor for SGEventSourceIngestor, &unk_1C4F514A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B1031C(uint64_t a1)
{
  result = sub_1C4B103CC(&qword_1EDDE33C8, type metadata accessor for SGEventSourceIngestor, &unk_1C4F514D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B10374(uint64_t a1)
{
  result = sub_1C4B103CC(&qword_1EDDE33D0, type metadata accessor for SGEventSourceIngestor, &unk_1C4F514EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B103CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B10414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4B10474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ShipmentFullFillmentMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShipmentFullFillmentMatcher(0);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v3, a1);
}

uint64_t type metadata accessor for ShipmentFullFillmentMatcher(uint64_t a1)
{
  result = qword_1EC0C34D8;
  if (!qword_1EC0C34D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShipmentFullFillmentMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShipmentFullFillmentMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ShipmentFullFillmentMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShipmentFullFillmentMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ShipmentFullFillmentMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for ShipmentFullFillmentMatcher(0);
  *(a4 + *(v8 + 28)) = 1056964608;
  sub_1C4EFD218();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v9);
  *(a4 + *(v8 + 24)) = v7;
  return result;
}

float sub_1C4B106D0(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v21 = 0;
  v22 = *(a1 + 16);
  v71 = a1;
  v72 = v22;
  v23 = (v4 + 8);
  v70 = MEMORY[0x1E69E7CC0];
  v76 = v6;
  while (v72 != v21)
  {
    v24 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v25 = *(v77 + 72);
    sub_1C44718CC(v71 + v24 + v25 * v21, v20);
    sub_1C4EFE558();
    sub_1C4B13544(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v81 == v79 && v82 == v80)
    {
      (*v23)(v9, v3);

LABEL_10:
      sub_1C448566C(v20, v68);
      v28 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DCC0();
        v28 = v83;
      }

      v30 = v28;
      v31 = *(v28 + 16);
      if (v31 >= *(v30 + 24) >> 1)
      {
        sub_1C459DCC0();
        v30 = v83;
      }

      ++v21;
      *(v30 + 16) = v31 + 1;
      v70 = v30;
      sub_1C448566C(v68, v30 + v24 + v31 * v25);
      v6 = v76;
    }

    else
    {
      v27 = sub_1C4F02938();
      (*v23)(v9, v3);

      if (v27)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v20, type metadata accessor for EntityTriple);
      ++v21;
      v6 = v76;
    }
  }

  v32 = v70;
  v33 = *(v70 + 16);
  if (v33)
  {
    v81 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v33, 0);
    v34 = v81;
    v35 = v32 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v36 = *(v77 + 72);
    do
    {
      v37 = v74;
      sub_1C44718CC(v35, v74);
      v38 = (v37 + *(v78 + 32));
      v39 = *v38;
      v40 = v38[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v37, type metadata accessor for EntityTriple);
      v81 = v34;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C44CD9C0(v41 > 1, v42 + 1, 1);
        v34 = v81;
      }

      *(v34 + 16) = v42 + 1;
      v43 = v34 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v35 += v36;
      --v33;
    }

    while (v33);

    v6 = v76;
  }

  else
  {
  }

  v71 = sub_1C4499940();
  v44 = 0;
  v45 = *(v73 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  while (v45 != v44)
  {
    v46 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v47 = *(v77 + 72);
    sub_1C44718CC(v73 + v46 + v47 * v44, v75);
    sub_1C4EFE558();
    sub_1C4B13544(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v81 == v79 && v82 == v80)
    {
      (*v23)(v6, v3);
    }

    else
    {
      v49 = sub_1C4F02938();
      (*v23)(v6, v3);

      if ((v49 & 1) == 0)
      {
        sub_1C44DBD5C(v75, type metadata accessor for EntityTriple);
        ++v44;
        v6 = v76;
        continue;
      }
    }

    sub_1C448566C(v75, v69);
    v50 = v72;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v50;
    if ((v51 & 1) == 0)
    {
      sub_1C459DCC0();
      v50 = v83;
    }

    v52 = *(v50 + 16);
    if (v52 >= *(v50 + 24) >> 1)
    {
      sub_1C459DCC0();
      v50 = v83;
    }

    ++v44;
    *(v50 + 16) = v52 + 1;
    v72 = v50;
    sub_1C448566C(v69, v50 + v46 + v52 * v47);
    v6 = v76;
  }

  v53 = v72;
  v54 = *(v72 + 16);
  if (v54)
  {
    v81 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v54, 0);
    v55 = v81;
    v56 = v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v57 = *(v77 + 72);
    do
    {
      v58 = v74;
      sub_1C44718CC(v56, v74);
      v59 = (v58 + *(v78 + 32));
      v60 = *v59;
      v61 = v59[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v58, type metadata accessor for EntityTriple);
      v81 = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C44CD9C0(v62 > 1, v63 + 1, 1);
        v55 = v81;
      }

      *(v55 + 16) = v63 + 1;
      v64 = v55 + 16 * v63;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      v56 += v57;
      --v54;
    }

    while (v54);
  }

  v65 = sub_1C4499940();
  if (*(v71 + 16))
  {
    v66 = sub_1C4A32590(v65, v71);

    result = 1.0;
    if (v66)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}
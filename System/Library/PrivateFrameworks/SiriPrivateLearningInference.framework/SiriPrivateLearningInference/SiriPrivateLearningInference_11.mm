uint64_t sub_222C12DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C12E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C12EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_222C12F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CommonContactFeature.RecipientContactReferences.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonContactFeature.RecipientContactReferences.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonContactFeature.RecipientContactReferences.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C1307C(uint64_t *a1)
{
  type metadata accessor for CommonContactFeature.RecipientContactReferences(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C130C8(uint64_t *a1)
{
  type metadata accessor for CommonContactFeature.RecipientContactReferences(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonContactReference.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommonContactReference.contactIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CommonContactReference.handleLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s28SiriPrivateLearningInference22CommonContactReferenceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_222C951FC() & 1) == 0)
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
    if (v8 && (v3 == v9 && v5 == v8 || (sub_222C951FC() & 1) != 0))
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

uint64_t type metadata accessor for CommonContactFeature.RecipientContactReferences(uint64_t a1)
{
  result = qword_27D026DA8;
  if (!qword_27D026DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C13354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DC8, &qword_222CA0AD8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222C96900;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DD0, &qword_222CA0AE0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0x3FB999999999999ALL;
  v16 = v2;
  v4 = sub_222B61940(&qword_27D026DD8, &qword_27D026DD0, &qword_222CA0AE0, &unk_222C9A5E8);
  v17 = v4;
  *&v15 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3FD999999999999ALL;
  v13 = v2;
  v14 = v4;
  *&v12 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DE0, &qword_222CA0AE8);
  v7 = swift_allocObject();
  sub_222B405A0(&v15, v7 + 16);
  sub_222B405A0(&v12, v7 + 56);
  *(v7 + 96) = sub_222C13600;
  *(v7 + 104) = 0;
  *(v1 + 56) = v6;
  *(v1 + 64) = sub_222B61940(&qword_27D026DE8, &qword_27D026DE0, &qword_222CA0AE8, &unk_222CA51D0);
  *(v1 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DF0, &qword_222CA0AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_283607AC8;
  *(v1 + 96) = v8;
  *(v1 + 104) = sub_222B61940(&qword_27D026DF8, &qword_27D026DF0, &qword_222CA0AF0, &unk_222C988B0);
  *(v1 + 72) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E00, &qword_222CA0AF8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C96900;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E08, &unk_222CA0B00);
  *(v10 + 64) = sub_222B61940(&qword_27D026E10, &qword_27D026E08, &unk_222CA0B00, &unk_222C9E848);
  *(v10 + 32) = 0x3FC999999999999ALL;
  *(v10 + 96) = &type metadata for OneMediaNominationGlobalFilter;
  *(v10 + 104) = sub_222C13674();
  *(v0 + 16) = v1;
  *(v0 + 24) = v10;
  return v0;
}

uint64_t type metadata accessor for MediaSuggestionCandidateNominator(uint64_t a1)
{
  result = qword_27D026DB8;
  if (!qword_27D026DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222C13674()
{
  result = qword_27D026E18;
  if (!qword_27D026E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E18);
  }

  return result;
}

uint64_t SessionGroundTruths.init(sessionId:groundTruth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_222C9367C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SessionGroundTruths(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for SessionGroundTruths(uint64_t a1)
{
  result = qword_280FDF2B8;
  if (!qword_280FDF2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionGroundTruths.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionGroundTruths.groundTruth.getter()
{
  type metadata accessor for SessionGroundTruths(0);
}

void sub_222C13854(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C138D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222C138D8(uint64_t a1)
{
  if (!qword_280FDB7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024E28, &unk_222C995F0);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB7C0);
    }
  }
}

uint64_t isMediaPlayIntentEvent(_:)(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

BOOL isSiriPlayMedia(_:)(uint64_t a1)
{
  v2 = sub_222B72040(&unk_283607140);
  swift_arrayDestroy();
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = sub_222B41648(*(a1 + *(v3 + 24)));
  if (v4)
  {
    v5 = v4;
    v11[0] = 0xD000000000000024;
    v11[1] = 0x8000000222CA8650;
    MEMORY[0x28223BE20](v4);
    v10[2] = v11;
    if (sub_222B42F4C(sub_222B77BA0, v10, v5))
    {
      v6 = sub_222B72040(v5);

      v7 = sub_222B860E8(v6, v2);

      v8 = v7[2];

      return v8 == 1;
    }
  }

  return 0;
}

uint64_t sub_222C13AC0(uint64_t a1)
{
  result = type metadata accessor for FeaturisedTurn(0);
  v3 = 0;
  v4 = *(a1 + *(result + 28));
  v27 = v4;
  v5 = v4 + 64;
  v6 = -*(v4 + 16);
  v25 = v4 + 64;
  v26 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = v3 + 1;
  v8 = (v5 + 40 * v3);
  while (v6 + v7 != 1)
  {
    v3 = v7;
    if ((v7 - 1) >= *(v27 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = *(v8 - 4);
    v10 = *(v8 - 3);
    v12 = *(v8 - 2);
    v11 = *(v8 - 1);
    v13 = *v8;
    if (v11 != 0xD000000000000011 || 0x8000000222CA87C0 != v13)
    {
      ++v7;
      v8 += 5;
      result = sub_222C951FC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v15 = v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    if ((result & 1) == 0)
    {
      result = sub_222B4C374(0, *(v26 + 16) + 1, 1);
      v15 = v28;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = sub_222B4C374((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
      v15 = v28;
    }

    *(v15 + 16) = v18;
    v26 = v15;
    v19 = (v15 + 40 * v17);
    v19[4] = v9;
    v19[5] = v10;
    v19[6] = v12;
    v19[7] = v11;
    v19[8] = v13;
    v5 = v25;
    goto LABEL_2;
  }

  v20 = *(v26 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v26 + 64;
    while (v21 < *(v26 + 16))
    {
      v23 = *(v22 - 16);
      swift_bridgeObjectRetain_n();

      sub_222B419B8(v23, &v28);

      swift_bridgeObjectRelease_n();

      if ((v29 & 0xFF00) != 0x300 && HIBYTE(v29) != 2 && (v29 & 0x100) != 0)
      {
        v24 = 1;
        goto LABEL_24;
      }

      ++v21;
      v22 += 40;
      if (v20 == v21)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_26;
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

uint64_t isMediaNowPlayingEvent(_:)(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87E0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

uint64_t sub_222C13D6C()
{
  type metadata accessor for QuickHangupClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E20, &unk_222CA0BD0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDED70 = 91;
  *algn_280FDED78 = 0xE100000000000000;
  return result;
}

uint64_t sub_222C13DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C935EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = a2[1];
  v27 = *a2;
  v15 = a2[2];
  v16 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  sub_222B41F58(v16);
  v18 = v17;
  sub_222B41494(v16);
  if (v18 & 1) != 0 && (v19)
  {
    sub_222C9415C();
  }

  else
  {
    sub_222B41F70(v15);
    if ((v20 & 1) == 0)
    {
      sub_222C935AC();
      sub_222C935AC();
      sub_222C9354C();
      v23 = *(v8 + 8);
      v23(v10, v7);
      v23(v13, v7);
      v24 = v26;
      swift_storeEnumTagMultiPayload();
      return sub_222B99D5C(v24, a3);
    }

    type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
  }

  *a3 = sub_222C93ECC();
  a3[1] = v21;
  a3[2] = v27;
  a3[3] = v14;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_222C14074(uint64_t a1, uint64_t *a2)
{
  v43 = a1;
  v3 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v39 = a2[4];
  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_222C98AE0;
  v41 = v17;
  v18 = (v17 + v16);
  v19 = (v18 + *(v14 + 48));
  *v18 = 0xD000000000000011;
  v18[1] = 0x8000000222CAC680;
  v45 = v13;
  if (sub_222B41CFC(v13) == 2)
  {
    type metadata accessor for CommonFeature.DonatedBySiri(0);
    *v19 = sub_222C93ECC();
    v19[1] = v20;
    v21 = v11;
    v19[2] = v11;
    v19[3] = v10;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = v11;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v9, v19);
  }

  v22 = (v18 + v15);
  v23 = (v18 + v15 + *(v14 + 48));
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000011, 0x8000000222CAC6A0);
  sub_222C948DC();
  v24 = v47;
  *v22 = v46;
  v22[1] = v24;
  sub_222B41F40(v45);
  v42 = v3;
  if (v25)
  {
    type metadata accessor for PhoneCallEventFeature.CallDuration(0);
    *v23 = sub_222C93ECC();
    v23[1] = v26;
    v23[2] = v21;
    v23[3] = v10;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v27 = v38;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v27, v23);
  }

  v28 = (v18 + 2 * v15);
  v29 = *(v14 + 48);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CAC6C0);
  sub_222C948DC();
  v30 = v47;
  *v28 = v46;
  v28[1] = v30;
  v46 = v21;
  v47 = v10;
  v48 = v45;
  v49 = v40;
  v50 = v39;
  v31 = v43;
  sub_222C13DF8(v43, &v46, (v28 + v29));
  v32 = (v18 + 3 * v15);
  *v32 = 0xD000000000000011;
  v32[1] = 0x8000000222CAC6E0;
  v33 = type metadata accessor for FeaturisedTurn(0);
  v34 = sub_222B41B30(*(v31 + *(v33 + 24)));
  if (v34)
  {
    if (v34 >> 62)
    {
      sub_222C94C6C();
    }
  }

  v35 = v44;
  swift_storeEnumTagMultiPayload();
  sub_222B99D5C(v35, v32 + *(v14 + 48));
  return v41;
}

unint64_t sub_222C144F4(unint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v74 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v69[-v8];
  if (qword_280FDFE78 != -1)
  {
LABEL_39:
    swift_once();
  }

  v10 = sub_222C9431C();
  v11 = __swift_project_value_buffer(v10, qword_280FE2340);

  *&v77 = v11;
  v12 = sub_222C942FC();
  v13 = sub_222C94A3C();
  if (!os_log_type_enabled(v12, v13))
  {

    v16 = *(a1 + 16);
    if (v16)
    {
      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v80[0] = v15;
  *v14 = 136315394;
  if (qword_280FDED68 != -1)
  {
    swift_once();
  }

  *(v14 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v80);
  *(v14 + 12) = 2048;
  *(v14 + 14) = *(a1 + 16);

  _os_log_impl(&dword_222B39000, v12, v13, "%s Identifying quick hangups in %ld turn(s)", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  MEMORY[0x223DCA8C0](v15, -1, -1);
  MEMORY[0x223DCA8C0](v14, -1, -1);

  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v72 = v3;
  v73 = v2;
  sub_222B78534(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v16 - 1), v9);
  v17 = *(v78 + 28);
  v76 = v9;
  v9 = *&v9[v17];
  v3 = *(v9 + 2);
  if (!v3)
  {
LABEL_18:
    v25 = sub_222C942FC();
    v26 = sub_222C94A3C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80[0] = v28;
      *v27 = 136315138;
      v29 = v76;
      if (qword_280FDED68 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v80);
      _os_log_impl(&dword_222B39000, v25, v26, "%s No attached phone call events - skipping quick hangup detection", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);

LABEL_37:
      v24 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_44:
    v29 = v76;
LABEL_45:
    sub_222B73DD0(v29);
    return v24;
  }

  v18 = 0;
  v19 = (v9 + 64);
  while (1)
  {
    if (v18 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_39;
    }

    a1 = *(v19 - 3);
    v79 = *(v19 - 4);
    v5 = *(v19 - 2);
    v20 = *(v19 - 1);
    v21 = *v19;

    v22 = sub_222B41F28(v5);
    if ((v23 & 1) == 0)
    {
      if (v2 = v22, v20 == 0xD000000000000011) && 0x8000000222CA8780 == v21 || (sub_222C951FC())
      {
        if (v2 == 1)
        {
          break;
        }
      }
    }

    ++v18;

    v19 += 5;
    if (v3 == v18)
    {
      goto LABEL_18;
    }
  }

  v80[0] = v79;
  v80[1] = a1;
  v80[2] = v5;
  v80[3] = v20;
  v80[4] = v21;
  v29 = v76;
  v30 = sub_222C14074(v76, v80);
  v31 = v75;
  sub_222B78534(v29, v75);

  v32 = sub_222C942FC();
  v33 = sub_222C94A3C();

  if (os_log_type_enabled(v32, v33))
  {
    v70 = v33;
    v71 = v32;
    *&v77 = v30;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v80[0] = v35;
    *v34 = 136315650;
    if (qword_280FDED68 != -1)
    {
      swift_once();
    }

    *(v34 + 4) = sub_222B437C0(qword_280FDED70, *algn_280FDED78, v80);
    *(v34 + 12) = 2080;
    v36 = v75;
    v37 = FeaturisedTurn.friendlyName.getter();
    v39 = v38;
    sub_222B73DD0(v36);
    v40 = sub_222B437C0(v37, v39, v80);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2080;

    v41 = sub_222B437C0(v79, a1, v80);

    *(v34 + 24) = v41;
    v42 = v71;
    _os_log_impl(&dword_222B39000, v71, v70, "%s Rule matrix for [Turn ID: %s, Event ID: %s]:", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v35, -1, -1);
    MEMORY[0x223DCA8C0](v34, -1, -1);

    v30 = v77;
  }

  else
  {

    sub_222B73DD0(v31);
  }

  v44 = v72;
  v43 = v73;
  sub_222C8A24C(8224, 0xE200000000000000, v30);
  v45 = sub_222C1EC00(v30);

  if (!v45)
  {

    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v24 = swift_allocObject();
  v77 = xmmword_222C97C40;
  *(v24 + 16) = xmmword_222C97C40;
  v46 = *(v44 + 16);
  (v46)(v74, v29, v43);
  v47 = *(v29 + *(v78 + 24));

  result = sub_222B41B30(v47);
  v75 = (v44 + 16);
  v71 = v46;
  if (!result)
  {
    goto LABEL_42;
  }

  v49 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  v51 = result;
  v52 = sub_222C94C6C();
  result = v51;
  if (!v52)
  {
LABEL_41:

LABEL_42:
    v78 = 0;
    goto LABEL_43;
  }

LABEL_32:
  if ((result & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x223DC9B30](0);
    goto LABEL_35;
  }

  if (*(v49 + 16))
  {
    v50 = *(result + 32);

LABEL_35:
    v78 = v50;

LABEL_43:

    v54 = sub_222B41F70(v53);
    v56 = v55;

    v57 = type metadata accessor for QuickHangupClassification(0);
    *(v24 + 56) = v57;
    *(v24 + 64) = &protocol witness table for QuickHangupClassification;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
    v59 = v74;
    (v71)(boxed_opaque_existential_1, v74, v73);
    v60 = (boxed_opaque_existential_1 + v57[5]);
    *v60 = v79;
    v60[1] = a1;
    v61 = boxed_opaque_existential_1 + v57[7];
    *v61 = v54;
    v61[8] = v56 & 1;
    *(boxed_opaque_existential_1 + v57[6]) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v62 = v72;
    v63 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v77;
    v65 = v59;
    v66 = v73;
    (v71)(v64 + v63, v65, v73);
    *(boxed_opaque_existential_1 + v57[8]) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v67 = swift_allocObject();
    *(v67 + 16) = v77;
    *(v67 + 32) = v79;
    *(v67 + 40) = a1;
    v68 = *(v62 + 8);

    v68(v74, v66);

    *(boxed_opaque_existential_1 + v57[9]) = v67;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

double sub_222C14F14(double a1, double a2)
{
  if (*v2 >= a2)
  {
    return a2;
  }

  else
  {
    return *v2;
  }
}

uint64_t PlayMediaSELFFeatures.MediaItemResults.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaSELFFeatures.MediaItemResults.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222C15020(uint64_t *a1)
{
  type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C1506C(uint64_t *a1)
{
  type metadata accessor for PlayMediaSELFFeatures.MediaItemResults(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();

  v1 = sub_222C93EDC();

  if (v1)
  {
  }

  return v1;
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{

  v1 = sub_222C93EDC();

  if (v1)
  {
  }

  return v1;
}

uint64_t PlayMediaSELFFeatures.RequestedMediaItem.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222C15234(uint64_t *a1)
{
  type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222C15280(uint64_t *a1)
{
  type metadata accessor for PlayMediaSELFFeatures.RequestedMediaItem(0);
  swift_allocObject();

  v1 = sub_222C93EDC();

  if (v1)
  {
  }

  return v1;
}

uint64_t FlowMediaItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FlowMediaItem.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FlowMediaItem.mediaType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FlowMediaItem.entityId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall FlowMediaItem.init(title:artist:mediaType:entityId:isAlternative:)(SiriPrivateLearningInference::FlowMediaItem *__return_ptr retstr, Swift::String_optional title, Swift::String_optional artist, Swift::String_optional mediaType, Swift::String_optional entityId, Swift::Bool isAlternative)
{
  retstr->title = title;
  retstr->artist = artist;
  retstr->mediaType = mediaType;
  retstr->entityId = entityId;
  retstr->isAlternative = isAlternative;
}

uint64_t _s28SiriPrivateLearningInference13FlowMediaItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v11)
    {
      v39 = *(a2 + 48);
      v40 = *(a1 + 40);
      v37 = *(a1 + 56);
      v38 = *(a2 + 56);
      v19 = *(a1 + 48);
      v20 = *(a2 + 64);
      v21 = *(a1 + 64);
      v22 = *(a1 + 32);
      v23 = *(a2 + 40);
      v24 = *(a2 + 32);
      v25 = *(a1 + 16);
      v26 = sub_222C951FC();
      v4 = v25;
      v13 = v24;
      v15 = v23;
      v5 = v22;
      v10 = v21;
      v18 = v20;
      v7 = v19;
      v9 = v37;
      v17 = v38;
      v16 = v39;
      v8 = v40;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v4 != v12 || v6 != v14)
    {
      v27 = v10;
      v28 = v5;
      v29 = v15;
      v30 = v13;
      v31 = sub_222C951FC();
      v13 = v30;
      v15 = v29;
      v5 = v28;
      v10 = v27;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v13 || v8 != v15)
    {
      v32 = v10;
      v33 = sub_222C951FC();
      v10 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v17)
    {
      if (v7 == v16 && v9 == v17)
      {
        return v10 ^ v18 ^ 1u;
      }

      v34 = v10;
      v35 = sub_222C951FC();
      v10 = v34;
      if (v35)
      {
        return v10 ^ v18 ^ 1u;
      }
    }
  }

  else if (!v17)
  {
    return v10 ^ v18 ^ 1u;
  }

  return 0;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C15660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_222C156BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL sub_222C15748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return v2 <= v1;
  }

  if (v2 <= v1)
  {
    return v1 < 1.0;
  }

  return 0;
}

uint64_t sub_222C15784()
{
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x223DCA0E0](*&v1);
  v2 = *(v0 + 24);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x223DCA0E0](*&v2);
}

BOOL sub_222C15804()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  if (*(*v0 + 32) == 1)
  {
    return v2 <= v1;
  }

  if (v2 <= v1)
  {
    return v1 < 1.0;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference25ThresholdedTurnComparisonC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return (*(a1 + 32) ^ *(a2 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_222C15890(uint64_t a1, uint64_t a2)
{
  result = sub_222C158B8(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C158B8(uint64_t a1, uint64_t a2)
{
  result = qword_27D026E48;
  if (!qword_27D026E48)
  {
    type metadata accessor for ThresholdedTurnComparison();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E48);
  }

  return result;
}

uint64_t type metadata accessor for MediaEvaluationSummary(uint64_t a1)
{
  result = qword_280FDEA18;
  if (!qword_280FDEA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222C15A04(uint64_t a1)
{
  sub_222B56160(319);
  if (v1 <= 0x3F)
  {
    sub_222C15B3C(319, &qword_280FDB820, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_222C15B3C(319, qword_280FDE3B8, &type metadata for MediaSuggestionEvaluation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_222C15B3C(319, &qword_280FDB7B0, &type metadata for MediaGroundTruthSummary, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222C15B3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t FullEntityUtteranceComparator.__allocating_init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:useTrimmedUtterance:)(uint64_t a1, char a2, char a3, double a4)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 25) = a3;
  return result;
}

uint64_t FullEntityUtteranceComparator.init(taskNamesOfInterest:restatementThreshold:allowsIdenticalUtterances:useTrimmedUtterance:)(uint64_t a1, char a2, char a3, double a4)
{
  *(v4 + 32) = a1;
  *(v4 + 16) = a4;
  *(v4 + 24) = a2;
  *(v4 + 25) = a3;
  return v4;
}

uint64_t sub_222C15C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 25);
  v11 = type metadata accessor for FeaturisedTurn(0);
  *&result = COERCE_DOUBLE(sub_222B41648(*(a1 + *(v11 + 24))));
  if (*&result == 0.0)
  {
    goto LABEL_10;
  }

  v13 = result;
  v14 = sub_222B41648(*(a2 + *(v11 + 24)));
  if (!v14)
  {
    *&result = COERCE_DOUBLE();
LABEL_10:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v15 = v14;
  v16 = sub_222B72040(v13);

  v17 = sub_222B860E8(v16, v7);

  v18 = sub_222B72040(v15);

  v19 = sub_222B860E8(v18, v17);

  v20 = v19[2];
  *&result = COERCE_DOUBLE();
  if (v20 != 1)
  {
    goto LABEL_10;
  }

  *&result = COERCE_DOUBLE(sub_222C16144(a1, a2, v10));
  if (v21)
  {
    goto LABEL_10;
  }

  v22 = result;
  if (*&result >= 0.3)
  {
    if (*&result >= 0.5)
    {
      if (*&result >= 0.7)
      {
        if (*&result >= 0.85)
        {
          if (*&result >= 1.0)
          {
            if (*&result == 1.0)
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v29 = &type metadata for PIMSConstraintMismatch;
              v30 = sub_222B77B4C();
              v26 = 0xD000000000000016;
              v27 = 0x8000000222CA9C80;
              v23 = 9;
            }

            else
            {
              if (qword_280FDF1F0 != -1)
              {
                swift_once();
              }

              v29 = &type metadata for PIMSConstraintMismatch;
              v30 = sub_222B77B4C();
              v26 = 0xD000000000000016;
              v27 = 0x8000000222CA9C80;
              v23 = 10;
            }
          }

          else
          {
            if (qword_280FDF1F0 != -1)
            {
              swift_once();
            }

            v29 = &type metadata for PIMSConstraintMismatch;
            v30 = sub_222B77B4C();
            v26 = 0xD000000000000016;
            v27 = 0x8000000222CA9C80;
            v23 = 8;
          }
        }

        else
        {
          if (qword_280FDF1F0 != -1)
          {
            swift_once();
          }

          v29 = &type metadata for PIMSConstraintMismatch;
          v30 = sub_222B77B4C();
          v26 = 0xD000000000000016;
          v27 = 0x8000000222CA9C80;
          v23 = 7;
        }
      }

      else
      {
        if (qword_280FDF1F0 != -1)
        {
          swift_once();
        }

        v29 = &type metadata for PIMSConstraintMismatch;
        v30 = sub_222B77B4C();
        v26 = 0xD000000000000016;
        v27 = 0x8000000222CA9C80;
        v23 = 6;
      }
    }

    else
    {
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v29 = &type metadata for PIMSConstraintMismatch;
      v30 = sub_222B77B4C();
      v26 = 0xD000000000000016;
      v27 = 0x8000000222CA9C80;
      v23 = 5;
    }
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v29 = &type metadata for PIMSConstraintMismatch;
    v30 = sub_222B77B4C();
    v26 = 0xD000000000000016;
    v27 = 0x8000000222CA9C80;
    v23 = 4;
  }

  v28 = v23;
  sub_222C93B5C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  v24 = type metadata accessor for EntityUtteranceComparison();
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v8;
  *(v25 + 32) = v9;
  *(a3 + 24) = v24;
  *&result = COERCE_DOUBLE(sub_222BB23C8());
  *(a3 + 32) = *&result;
  *a3 = v25;
  return result;
}

uint64_t FullEntityUtteranceComparator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C16144(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  sub_222B78534(a1, &v50 - v10);
  v12 = *&v11[*(v6 + 24)];
  v13 = sub_222B417F4(v12);
  if (!v13)
  {
    v36 = v11;
LABEL_19:
    sub_222B73DD0(v36);
    return 0;
  }

  v14 = v13;
  v15 = sub_222B4180C(v12);
  sub_222B73DD0(v11);
  sub_222B78534(a2, v8);
  v16 = *&v8[*(v6 + 24)];
  v17 = sub_222B417F4(v16);
  if (!v17)
  {

    v36 = v8;
    goto LABEL_19;
  }

  v18 = v17;
  v19 = sub_222B4180C(v16);
  sub_222B73DD0(v8);
  if (a3)
  {
    if (!v15)
    {
      goto LABEL_23;
    }

    v51 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
    sub_222B72340();
    v20 = sub_222C9445C();
    v22 = v21;

    if (!v19)
    {
      goto LABEL_23;
    }

    v51 = v19;
    v23 = sub_222C9445C();
    v25 = v24;

    v26 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v26 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {

        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v28 = sub_222C9431C();
        __swift_project_value_buffer(v28, qword_280FE2340);

        v29 = sub_222C942FC();
        v30 = sub_222C94A3C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v51 = v32;
          *v31 = 136315394;
          *(v31 + 4) = sub_222B437C0(v20, v22, &v51);
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_222B437C0(v23, v25, &v51);
          _os_log_impl(&dword_222B39000, v29, v30, "Calculating restatement score between %s and %s. Using trimmed utterance? true", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v32, -1, -1);
          MEMORY[0x223DCA8C0](v31, -1, -1);
        }

        v33._countAndFlagsBits = v23;
        v33._object = v25;
        v52 = String.scoreRatcliffObershelp(between:)(v33);
        v34 = *&v52.is_nil;

        return v34;
      }
    }
  }

LABEL_23:

  v51 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
  sub_222B72340();
  v37 = sub_222C9445C();
  v39 = v38;

  v51 = v18;
  v40 = sub_222C9445C();
  v42 = v41;

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v43 = sub_222C9431C();
  __swift_project_value_buffer(v43, qword_280FE2340);

  v44 = sub_222C942FC();
  v45 = sub_222C94A3C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_222B437C0(v37, v39, &v51);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_222B437C0(v40, v42, &v51);
    _os_log_impl(&dword_222B39000, v44, v45, "Calculating restatement score between %s and %s. Using trimmed utterance? false", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v47, -1, -1);
    MEMORY[0x223DCA8C0](v46, -1, -1);
  }

  v48._countAndFlagsBits = v40;
  v48._object = v42;
  v53 = String.scoreRatcliffObershelp(between:)(v48);
  v49 = *&v53.is_nil;

  return v49;
}

uint64_t PlusContactSuggestion.tags.getter()
{
  type metadata accessor for PlusContactSuggestion(0);
}

uint64_t type metadata accessor for PlusContactSuggestion(uint64_t a1)
{
  result = qword_280FDEE18;
  if (!qword_280FDEE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlusContactSuggestion.init(id:leftHandKey:rightHandValue:fromGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v48 = a5;
  v49 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ThinContactGroundTruth(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_222C9367C();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v44 = &v42 - v20;
  v21 = a3[1];
  v54 = *a3;
  v22 = a3[3];
  v23 = *(a4 + 16);
  v50 = a1;
  if (v23)
  {
    v43 = a6;
    v24 = a3[2];
    v42 = a4;
    v25 = a4 + 32;
    v51 = v16;
    v26 = (v16 + 48);
    v27 = MEMORY[0x277D84F90];
    v52 = v15;
    do
    {
      sub_222B43E3C(v25, v57);
      sub_222B43E3C(v57, v56);
      v55[0] = v54;
      v55[1] = v21;
      v55[2] = v24;
      v55[3] = v22;

      ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)(v56, v55, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      if ((*v26)(v14, 1, v15) == 1)
      {
        sub_222B4FCD4(v14, &qword_27D025AA8, &qword_222C9A1E0);
      }

      else
      {
        sub_222C1BF74(v14, v53, type metadata accessor for ThinContactGroundTruth);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_222B4A984(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = sub_222B4A984((v28 > 1), v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        sub_222C1BF74(v53, v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v29, type metadata accessor for ThinContactGroundTruth);
        v15 = v52;
      }

      v25 += 40;
      --v23;
    }

    while (v23);

    a6 = v43;
    v30 = v50;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v30 = a1;
  }

  v31 = v46;
  v32 = *(v46 + 16);
  v33 = v44;
  v34 = v47;
  v32(v44, v30, v47);
  v35 = v45;
  v32(v45, v33, v34);
  v32(a6, v35, v34);
  v36 = type metadata accessor for PlusContactSuggestion(0);
  *&a6[v36[5]] = v49;

  v37 = &a6[v36[6]];
  *v37 = v54;
  *(v37 + 1) = v21;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  sub_222C17488(50, v27);
  *&a6[v36[7]] = v38;
  *&a6[v36[8]] = a7;
  *&a6[v36[9]] = v48;
  *&a6[v36[10]] = 0;
  v39 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);

  v40 = *(v31 + 8);
  v40(v50, v34);
  v40(v35, v34);
  result = (v40)(v33, v34);
  *&a6[v36[11]] = v39;
  return result;
}

void sub_222C16CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v21 = MEMORY[0x277D84F90];
  sub_222B4C3D4(0, v8, 0);
  v9 = v21;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = a2;
    v13 = a2 + v12;
    v14 = *(v5 + 72);
    do
    {
      sub_222C1BFDC(v13, v7, type metadata accessor for FeaturisedTurn);
      v16 = *(v9 + 16);
      if (v16 < a1)
      {
        v21 = v9;
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_222B4C3D4((v15 > 1), v16 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v16 + 1;
        sub_222C1BF74(v7, v9 + v12 + v16 * v14, type metadata accessor for FeaturisedTurn);
      }

      else
      {
        if (v11 >= v16)
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_222C1C044(v7, v9 + v12 + v14 * v11, type metadata accessor for FeaturisedTurn);
        if ((v11 + 1) < a1)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }
      }

      v13 += v14;
      --v10;
    }

    while (v10);

    if (!v11)
    {
      return;
    }

    v17 = *(v9 + 16);
    v20[2] = MEMORY[0x277D84F90];
    sub_222B4C3D4(0, v17, 0);
    if (v17 >= v11)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v9 + 16);
      if (v18 >= v11 && v18 >= v17)
      {

        sub_222C1A100(v19, v9 + v12, v11, (2 * v17) | 1);
        sub_222C1A100(v9, v9 + v12, 0, (2 * v11) | 1);
        return;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }
}

void sub_222C16F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v21 = MEMORY[0x277D84F90];
  sub_222B4C6A4(0, v8, 0);
  v9 = v21;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = a2;
    v13 = a2 + v12;
    v14 = *(v5 + 72);
    do
    {
      sub_222C1BFDC(v13, v7, type metadata accessor for ThinMediaGroundTruth);
      v16 = *(v9 + 16);
      if (v16 < a1)
      {
        v21 = v9;
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_222B4C6A4((v15 > 1), v16 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v16 + 1;
        sub_222C1BF74(v7, v9 + v12 + v16 * v14, type metadata accessor for ThinMediaGroundTruth);
      }

      else
      {
        if (v11 >= v16)
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_222C1C044(v7, v9 + v12 + v14 * v11, type metadata accessor for ThinMediaGroundTruth);
        if ((v11 + 1) < a1)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }
      }

      v13 += v14;
      --v10;
    }

    while (v10);

    if (!v11)
    {
      return;
    }

    v17 = *(v9 + 16);
    v20[2] = MEMORY[0x277D84F90];
    sub_222B4C6A4(0, v17, 0);
    if (v17 >= v11)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v9 + 16);
      if (v18 >= v11 && v18 >= v17)
      {

        sub_222C1A688(v19, v9 + v12, v11, (2 * v17) | 1);
        sub_222C1A688(v9, v9 + v12, 0, (2 * v11) | 1);
        return;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }
}

unint64_t sub_222C17258(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_222B4C674(0, v4, 0);
  v5 = v22;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = (a2 + 57);
  do
  {
    v11 = *(v8 - 25);
    v12 = *(v8 - 17);
    v13 = *(v8 - 9);
    v14 = *(v8 - 1);
    v15 = *v8;
    v16 = *(v22 + 16);
    if (v16 < v3)
    {
      v9 = *(v22 + 24);
      if (v16 >= v9 >> 1)
      {
        result = sub_222B4C674((v9 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v10 = v22 + 32 * v16;
      *(v10 + 32) = v11;
      *(v10 + 40) = v12;
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;
      *(v10 + 57) = v15;
    }

    else
    {
      if (v7 >= v16)
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v22 + 32 * v7;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      *(v17 + 57) = v15;
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 32;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v18 = *(v22 + 16);
  v21 = MEMORY[0x277D84F90];
  result = sub_222B4C674(0, v18, 0);
  if (v18 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v22 + 16);
    if (v19 >= v7 && v19 >= v18)
    {

      sub_222C1AC10(v20, v22 + 32, v7, (2 * v18) | 1, sub_222B4C674);
      sub_222C1AC10(v22, v22 + 32, 0, (2 * v7) | 1, sub_222B4C674);
      return v21;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_222C17488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return;
  }

  if (*(a2 + 16) >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v21 = MEMORY[0x277D84F90];
  sub_222B4C75C(0, v8, 0);
  v9 = v21;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = a2;
    v13 = a2 + v12;
    v14 = *(v5 + 72);
    do
    {
      sub_222C1BFDC(v13, v7, type metadata accessor for ThinContactGroundTruth);
      v16 = *(v9 + 16);
      if (v16 < a1)
      {
        v21 = v9;
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_222B4C75C((v15 > 1), v16 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v16 + 1;
        sub_222C1BF74(v7, v9 + v12 + v16 * v14, type metadata accessor for ThinContactGroundTruth);
      }

      else
      {
        if (v11 >= v16)
        {
          __break(1u);
          goto LABEL_27;
        }

        sub_222C1C044(v7, v9 + v12 + v14 * v11, type metadata accessor for ThinContactGroundTruth);
        if ((v11 + 1) < a1)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }
      }

      v13 += v14;
      --v10;
    }

    while (v10);

    if (!v11)
    {
      return;
    }

    v17 = *(v9 + 16);
    v20[2] = MEMORY[0x277D84F90];
    sub_222B4C75C(0, v17, 0);
    if (v17 >= v11)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v18 = *(v9 + 16);
      if (v18 >= v11 && v18 >= v17)
      {

        sub_222C1AD38(v19, v9 + v12, v11, (2 * v17) | 1);
        sub_222C1AD38(v9, v9 + v12, 0, (2 * v11) | 1);
        return;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }
}

unint64_t sub_222C17748(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_222B4C72C(0, v4, 0);
  v5 = v22;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = (a2 + 57);
  do
  {
    v11 = *(v8 - 25);
    v12 = *(v8 - 17);
    v13 = *(v8 - 9);
    v14 = *(v8 - 1);
    v15 = *v8 | (*(v8 + 2) << 16);
    v16 = *(v22 + 16);
    if (v16 < v3)
    {
      v9 = *(v22 + 24);
      if (v16 >= v9 >> 1)
      {
        result = sub_222B4C72C((v9 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v10 = v22 + 32 * v16;
      *(v10 + 32) = v11;
      *(v10 + 40) = v12;
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;
      *(v10 + 59) = BYTE2(v15);
      *(v10 + 57) = v15;
    }

    else
    {
      if (v7 >= v16)
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v22 + 32 * v7;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13;
      *(v17 + 56) = v14;
      *(v17 + 59) = BYTE2(v15);
      *(v17 + 57) = v15;
      if ((v7 + 1) < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 += 16;
    --v6;
  }

  while (v6);

  if (!v7)
  {
    return v5;
  }

  v18 = *(v22 + 16);
  v21 = MEMORY[0x277D84F90];
  result = sub_222B4C72C(0, v18, 0);
  if (v18 >= v7)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v19 = *(v22 + 16);
    if (v19 >= v7 && v19 >= v18)
    {

      sub_222C1AC10(v20, v22 + 32, v7, (2 * v18) | 1, sub_222B4C72C);
      sub_222C1AC10(v22, v22 + 32, 0, (2 * v7) | 1, sub_222B4C72C);
      return v21;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C17990(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v28 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v29 = v9;
  v30 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_222C952FC();
    sub_222C9452C();

    v16 = sub_222C9534C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v31 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        if (*(*(a2 + 48) + v18))
        {
          v21 = 0x68506E69616D6F64;
        }

        else
        {
          v21 = 0x654D6E69616D6F64;
        }

        if (*(*(a2 + 48) + v18))
        {
          v22 = 0xEF6C6C6143656E6FLL;
        }

        else
        {
          v22 = 0xEE00736567617373;
        }

        if (v15 > 1)
        {
LABEL_24:
          v23 = 0x6974636572726F63;
          if (v15 == 3)
          {
            v23 = 0x6574616E696D6F6ELL;
          }

          v24 = 0xEA00000000006E6FLL;
          if (v15 == 3)
          {
            v24 = 0xE900000000000064;
          }

          if (v15 == 2)
          {
            v25 = 0x656D7269666E6F63;
          }

          else
          {
            v25 = v23;
          }

          if (v15 == 2)
          {
            v26 = 0xE900000000000064;
          }

          else
          {
            v26 = v24;
          }

          goto LABEL_43;
        }
      }

      else if (v20 == 2)
      {
        v21 = 0x656D7269666E6F63;
        v22 = 0xE900000000000064;
        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v21 = 0x6974636572726F63;
        }

        if (v20 == 3)
        {
          v22 = 0xE900000000000064;
        }

        else
        {
          v22 = 0xEA00000000006E6FLL;
        }

        if (v15 > 1)
        {
          goto LABEL_24;
        }
      }

      v25 = 0x654D6E69616D6F64;
      v26 = 0xEE00736567617373;
      if (v15)
      {
        v25 = 0x68506E69616D6F64;
        v26 = 0xEF6C6C6143656E6FLL;
      }

LABEL_43:
      if (v21 == v25 && v22 == v26)
      {
        break;
      }

      v27 = sub_222C951FC();

      if (v27)
      {
        goto LABEL_51;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_51:
    v9 = v29;
    v3 = v30;
    v8 = v31;
  }

  while (v31);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v28 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C17D8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v36 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v37 = v8;
  v38 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v39 = (v7 - 1) & v7;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 48);
    v15 = *(v14 + v13);
    v16 = sub_222BBF5A4(*(a2 + 40), *(v14 + v13));
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 3)
      {
        break;
      }

      if (*(*(a2 + 48) + v18) > 5u)
      {
        if (v20 == 6)
        {
          v25 = 0xD000000000000013;
          v26 = 0x8000000222CA93E0;
          if (v15 > 3)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v25 = 0xD000000000000012;
          v26 = 0x8000000222CA9400;
          if (v15 > 3)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v20 == 4)
        {
          v25 = 0x7972617262696CLL;
        }

        else
        {
          v25 = 0xD000000000000011;
        }

        if (v20 == 4)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = 0x8000000222CA93C0;
        }

        if (v15 > 3)
        {
          goto LABEL_44;
        }
      }

LABEL_31:
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v34 = 0x6574616E696D6F6ELL;
        }

        else
        {
          v34 = 0x6974636572726F63;
        }

        if (v15 == 2)
        {
          v28 = 0xE900000000000064;
        }

        else
        {
          v28 = 0xEA00000000006E6FLL;
        }

        if (v25 == v34)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v27 = 0x754D6E69616D6F64;
        v28 = 0xEB00000000636973;
        if (v15)
        {
          v27 = 0x656D7269666E6F63;
          v28 = 0xE900000000000064;
        }

        if (v25 == v27)
        {
          goto LABEL_67;
        }
      }

LABEL_68:
      v35 = sub_222C951FC();

      if (v35)
      {
        goto LABEL_77;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = 0x6974636572726F63;
    if (v20 == 2)
    {
      v21 = 0x6574616E696D6F6ELL;
    }

    v22 = 0xEA00000000006E6FLL;
    if (v20 == 2)
    {
      v22 = 0xE900000000000064;
    }

    v23 = 0x754D6E69616D6F64;
    if (*(*(a2 + 48) + v18))
    {
      v23 = 0x656D7269666E6F63;
    }

    v24 = 0xEB00000000636973;
    if (*(*(a2 + 48) + v18))
    {
      v24 = 0xE900000000000064;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v25 = v23;
    }

    else
    {
      v25 = v21;
    }

    if (*(*(a2 + 48) + v18) <= 1u)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v15 <= 3)
    {
      goto LABEL_31;
    }

LABEL_44:
    v29 = 0xD000000000000013;
    if (v15 != 6)
    {
      v29 = 0xD000000000000012;
    }

    v30 = 0x8000000222CA9400;
    if (v15 == 6)
    {
      v30 = 0x8000000222CA93E0;
    }

    v31 = 0x7972617262696CLL;
    if (v15 != 4)
    {
      v31 = 0xD000000000000011;
    }

    v32 = 0x8000000222CA93C0;
    if (v15 == 4)
    {
      v32 = 0xE700000000000000;
    }

    if (v15 <= 5)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (v15 <= 5)
    {
      v28 = v32;
    }

    else
    {
      v28 = v30;
    }

    if (v25 != v33)
    {
      goto LABEL_68;
    }

LABEL_67:
    if (v26 != v28)
    {
      goto LABEL_68;
    }

LABEL_77:
    v8 = v37;
    v3 = v38;
    v7 = v39;
  }

  while (v39);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v36 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t PlusContactSuggestion.isNominated.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion(0) + 36));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v1 + 48) + v4);
      if (v6 > 2 && v6 != 4)
      {
        break;
      }

      v7 = sub_222C951FC();

      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v7 & 1;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t PlusContactSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_222C18398@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PlusContactSuggestion(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t PlusContactSuggestion.contributingGroundTruth.getter()
{
  type metadata accessor for PlusContactSuggestion(0);
}

uint64_t PlusContactSuggestion.scoreHistory.getter()
{
  type metadata accessor for PlusContactSuggestion(0);
}

uint64_t PlusContactSuggestion.init(id:leftHandKey:rightHandValue:fromThinGroundTruth:timestamp:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  v27 = a4;
  v28 = a5;
  v26 = a1;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[1];
  v25 = *a3;
  v18 = *(v13 + 16);
  v18(v16, a1, v12, v14);
  (v18)(a6, v16, v12);
  v19 = type metadata accessor for PlusContactSuggestion(0);
  *&a6[v19[5]] = a2;

  v20 = &a6[v19[6]];
  *v20 = v25;
  *(v20 + 1) = v17;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  sub_222C17488(50, v27);
  *&a6[v19[7]] = v21;
  *&a6[v19[8]] = a7;
  *&a6[v19[9]] = v28;
  *&a6[v19[10]] = 0;
  v22 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);

  v23 = *(v13 + 8);
  v23(v26, v12);
  result = (v23)(v16, v12);
  *&a6[v19[11]] = v22;
  return result;
}

uint64_t PlusContactSuggestion.hasSameContent(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion(0);
  if (!_s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0())
  {
    return 0;
  }

  v4 = *(v3 + 24);
  v5 = *(v1 + v4);
  v6 = *(v1 + v4 + 8);
  v8 = *(v1 + v4 + 16);
  v7 = *(v1 + v4 + 24);
  v9 = (a1 + v4);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v5 == *v9 && v6 == v9[1];
  if (!v12 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v10)
    {
      v13 = v8 == v11 && v7 == v10;
      if (v13 || (sub_222C951FC() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_14:
  v14 = *(v3 + 28);
  v15 = *(v1 + v14);
  v16 = *(a1 + v14);

  return sub_222BBCCA4(v15, v16);
}

uint64_t PlusContactSuggestion.hasSameMapping(as:)(uint64_t a1)
{
  v3 = type metadata accessor for PlusContactSuggestion(0);
  if (_s12SiriOntology23UsoEntity_common_PersonC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0())
  {
    v4 = *(v3 + 24);
    v5 = v1 + v4;
    v6 = *(v1 + v4);
    v7 = *(v1 + v4 + 8);
    v9 = *(v1 + v4 + 16);
    v8 = *(v5 + 24);
    v10 = (a1 + v4);
    v12 = v10[2];
    v11 = v10[3];
    v13 = v6 == *v10 && v7 == v10[1];
    if (v13 || (sub_222C951FC() & 1) != 0)
    {
      if (v8)
      {
        if (v11)
        {
          v14 = v9 == v12 && v8 == v11;
          if (v14 || (sub_222C951FC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t PlusContactSuggestion.updateWith(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_222C9367C();
  v31 = *(v6 - 8);
  v7 = v31;
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = *(v7 + 16);
  v13(&v29 - v11, v3, v6, v10);
  v14 = type metadata accessor for PlusContactSuggestion(0);
  v15 = *(a1 + v14[5]);
  v16 = (a1 + v14[6]);
  v17 = *(a1 + v14[7]);
  v18 = *v16;
  v19 = v16[1];
  v20 = *(v29 + v14[8]);
  v29 = *(a1 + v14[9]);
  v30 = v17;
  v21 = v32;
  (v13)(v32, v12, v6);
  (v13)(a2, v21, v6);
  *&a2[v14[5]] = v15;
  v22 = &a2[v14[6]];
  *v22 = v18;
  *(v22 + 1) = v19;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v30;

  v24 = v29;

  sub_222C17488(50, v23);
  *&a2[v14[7]] = v25;
  *&a2[v14[8]] = v20;
  *&a2[v14[9]] = v24;
  *&a2[v14[10]] = 0;
  v26 = sub_222C17748(0x32uLL, MEMORY[0x277D84F90]);
  v27 = *(v31 + 8);
  v27(v32, v6);
  result = (v27)(v12, v6);
  *&a2[v14[11]] = v26;
  return result;
}

uint64_t sub_222C18A6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65726F6373;
  if (v1 != 6)
  {
    v3 = 0x73694865726F6373;
  }

  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 1936154996;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E61487468676972;
  if (v1 != 2)
  {
    v5 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0x646E61487466656CLL;
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

uint64_t sub_222C18B74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C1BCCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C18B9C(uint64_t a1)
{
  v2 = sub_222C1B4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C18BD8(uint64_t a1)
{
  v2 = sub_222C1B4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlusContactSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E50, &qword_222CA0EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1B4E4();
  sub_222C9536C();
  LOBYTE(v16) = 0;
  sub_222C9367C();
  sub_222C1B950(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for PlusContactSuggestion(0);
    v16 = *(v3 + v9[5]);
    v20 = 1;
    sub_222C9378C();
    sub_222C1B950(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v16 = *v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = 2;
    sub_222BFD70C();

    sub_222C9512C();

    v16 = *(v3 + v9[7]);
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E60, &unk_222CA0F00);
    sub_222C1B68C(&qword_27D026E68, &qword_27D026E70, &protocol conformance descriptor for ThinContactGroundTruth, MEMORY[0x277D83948]);
    sub_222C9512C();
    LOBYTE(v16) = 4;
    sub_222C9510C();
    v16 = *(v3 + v9[9]);
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F90, &qword_222C96D48);
    sub_222C1B538(&qword_27D026E78, sub_222C1B5B0, MEMORY[0x277D83B50]);
    sub_222C9512C();
    LOBYTE(v16) = 6;
    sub_222C9510C();
    v16 = *(v3 + v9[11]);
    v20 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C1B604(&qword_27D026E88, &qword_27D026E90, &protocol conformance descriptor for ScoreStep<A>, MEMORY[0x277D83948]);
    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlusContactSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_222C9367C();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E98, &unk_222CA0F20);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PlusContactSuggestion(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1B4E4();
  v23 = v7;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v20;
  LOBYTE(v24) = 0;
  sub_222C1B950(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v12 = v21;
  sub_222C9507C();
  (*(v19 + 32))(v10, v12, v4);
  sub_222C9378C();
  v27 = 1;
  sub_222C1B950(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
  sub_222C9507C();
  *&v10[v8[5]] = v24;
  v27 = 2;
  sub_222BFD7B4();
  sub_222C9507C();
  v13 = v25;
  v14 = &v10[v8[6]];
  *v14 = v24;
  *(v14 + 1) = v13;
  *(v14 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026E60, &unk_222CA0F00);
  v27 = 3;
  sub_222C1B68C(&qword_27D026EA0, &qword_27D026EA8, &protocol conformance descriptor for ThinContactGroundTruth, MEMORY[0x277D83978]);
  sub_222C9507C();
  *&v10[v8[7]] = v24;
  LOBYTE(v24) = 4;
  sub_222C9505C();
  *&v10[v8[8]] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F90, &qword_222C96D48);
  v27 = 5;
  sub_222C1B538(&qword_27D026EB0, sub_222C1B728, MEMORY[0x277D83B70]);
  sub_222C9507C();
  *&v10[v8[9]] = v24;
  LOBYTE(v24) = 6;
  sub_222C9505C();
  *&v10[v8[10]] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B98, &unk_222CA0F10);
  v27 = 7;
  sub_222C1B604(&qword_27D026BA0, &qword_27D026BA8, &protocol conformance descriptor for ScoreStep<A>, MEMORY[0x277D83978]);
  sub_222C9507C();
  (*(v11 + 8))(v23, v22);
  *&v10[v8[11]] = v24;
  sub_222C1BFDC(v10, v18, type metadata accessor for PlusContactSuggestion);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222C1C0AC(v10, type metadata accessor for PlusContactSuggestion);
}

uint64_t ContactReference.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t _s28SiriPrivateLearningInference21PlusContactSuggestionV11leftHandKey0A8Ontology23UsoEntity_common_PersonCvg_0()
{
  type metadata accessor for PlusContactSuggestion(0);
}

uint64_t PlusContactSuggestion.init(query:entity:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v31 = a1;
  v5 = sub_222C935EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = *a2;
  v29 = a2[1];
  v30 = v16;
  sub_222C9366C();
  sub_222C935DC();
  sub_222C935BC();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = *(v10 + 16);
  v19(v12, v15, v9);
  v19(a3, v12, v9);
  v20 = type metadata accessor for PlusContactSuggestion(0);
  *&a3[v20[5]] = v31;

  v21 = &a3[v20[6]];
  v22 = v29;
  *v21 = v30;
  *(v21 + 1) = v22;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v23 = MEMORY[0x277D84F90];
  sub_222C17488(50, MEMORY[0x277D84F90]);
  *&a3[v20[7]] = v24;
  *&a3[v20[8]] = v18;
  *&a3[v20[9]] = MEMORY[0x277D84FA0];
  *&a3[v20[10]] = 0;
  v25 = sub_222C17748(0x32uLL, v23);

  v26 = *(v10 + 8);
  v26(v12, v9);
  result = (v26)(v15, v9);
  *&a3[v20[11]] = v25;
  return result;
}

uint64_t PlusContactSuggestion.updateScore(with:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = *(a1 + 24);
  v17 = *(a1 + 25);
  LOBYTE(a1) = *(a1 + 27);
  v18 = type metadata accessor for PlusContactSuggestion(0);
  v19 = v18[11];
  v45 = v2;
  v20 = *(v2 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E58, &qword_222CA0F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = v14;
  *(inited + 40) = v13;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 59) = a1;
  *(inited + 57) = v17;
  v49 = v20;

  sub_222B494EC(inited);
  v44 = v49;
  (*(v5 + 56))(v12, 1, 1, v4);
  v46 = v12;
  sub_222B4FC6C(v12, v9, &unk_27D026290, &qword_222C96B40);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) == 1)
  {
    v42 = v5;
    v23 = *(v5 + 16);
    v24 = v45;
    v23(v48, v45, v4);
    v25 = v4;
    v26 = v22(v9, 1, v4);
    v27 = v24;
    if (v26 != 1)
    {
      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
    }

    v28 = v25;
    v5 = v42;
  }

  else
  {
    (*(v5 + 32))(v48, v9, v4);
    v23 = *(v5 + 16);
    v28 = v4;
    v27 = v45;
  }

  v29 = *(v27 + v18[5]);
  v30 = (v27 + v18[6]);
  v31 = *(v27 + v18[7]);
  v32 = *v30;
  v33 = v30[1];
  v34 = *(v27 + v18[8]);
  v35 = *(v27 + v18[9]);
  v36 = v47;
  v43 = v28;
  v23(v47, v48, v28);
  *&v36[v18[5]] = v29;
  v37 = &v36[v18[6]];
  *v37 = v32;
  *(v37 + 1) = v33;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  swift_retain_n();

  sub_222C17488(50, v31);
  *&v36[v18[7]] = v38;
  *&v36[v18[8]] = v34;
  *&v36[v18[9]] = v35;
  *&v36[v18[10]] = v13;
  v39 = sub_222C17748(0x32uLL, v44);

  (*(v5 + 8))(v48, v43);
  result = sub_222B4FCD4(v46, &unk_27D026290, &qword_222C96B40);
  *&v36[v18[11]] = v39;
  return result;
}

uint64_t PlusContactSuggestion.isCorrection.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlusContactSuggestion(0) + 36));
  if (*(v1 + 16) && (sub_222C952FC(), sub_222C9452C(), v2 = sub_222C9534C(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v1 + 48) + v4);
      if (v6 >= 4)
      {
        break;
      }

      v7 = sub_222C951FC();

      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v7 & 1;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_222C1A09C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

void sub_222C1A100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a2;
  v62 = type metadata accessor for FeaturisedTurn(0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = a4 >> 1;
  v54 = a3;
  v19 = v18 - a3;
  if (__OFSUB__(v18, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v51 = v15;
  v20 = *v4;
  v21 = *(*v4 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = *(v20 + 24) >> 1;
    if (v24 >= v22)
    {
      goto LABEL_12;
    }

    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }
  }

  else if (v21 <= v22)
  {
    v25 = v21 + v19;
  }

  else
  {
    v25 = v21;
  }

  sub_222B4C3D4(isUniquelyReferenced_nonNull_native, v25, 1);
  v20 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v58 = v9;
  v26 = v20;
  v27 = v24 - *(v20 + 16);
  if (v18 == v54)
  {
    if (v19 <= 0)
    {
      v28 = v54;
      if (v27)
      {
LABEL_15:
        swift_unknownObjectRelease();
LABEL_23:
        *v4 = v26;
        return;
      }

LABEL_21:
      v49 = a1;
      v32 = *(v20 + 16);
      v33 = v59;
      v34 = *(v59 + 56);
      v35 = v62;
      v56 = v59 + 56;
      v57 = v18;
      v55 = v34;
      v34(v17, 1, 1, v62);
      v36 = v51;
      sub_222B4FC6C(v17, v51, &qword_27D0253C8, &unk_222C98400);
      v60 = *(v33 + 48);
      v61 = v33 + 48;
      if (v60(v36, 1, v35) != 1)
      {
        v50 = v4;
        do
        {
          sub_222B4FCD4(v36, &qword_27D0253C8, &unk_222C98400);
          v39 = *(v26 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_222B4C3D4((v39 > 1), v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v59 + 80);
          sub_222B4FC6C(v17, v12, &qword_27D0253C8, &unk_222C98400);
          v43 = v60(v12, 1, v62);
          v52 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              v47 = v58;
              sub_222C1BF74(v12, v58, type metadata accessor for FeaturisedTurn);
              if (v37 == v32)
              {
                sub_222C1C0AC(v47, type metadata accessor for FeaturisedTurn);
                v32 = v37;
                goto LABEL_26;
              }

              sub_222B4FCD4(v17, &qword_27D0253C8, &unk_222C98400);
              v48 = *(v59 + 72);
              sub_222C1BF74(v47, v44 + v48 * v32, type metadata accessor for FeaturisedTurn);
              if (v28 == v57)
              {
                v45 = 1;
                v28 = v57;
              }

              else
              {
                if (v28 < v54 || v28 >= v57)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v53 + v48 * v28, v17, type metadata accessor for FeaturisedTurn);
                v45 = 0;
                ++v28;
              }

              v46 = v62;
              v55(v17, v45, 1, v62);
              sub_222B4FC6C(v17, v12, &qword_27D0253C8, &unk_222C98400);
              ++v32;
            }

            while (v60(v12, 1, v46) != 1);
          }

          sub_222B4FCD4(v12, &qword_27D0253C8, &unk_222C98400);
          v37 = v32;
LABEL_26:
          v36 = v51;
          v26 = v52;
          *(v52 + 16) = v37;
          sub_222B4FC6C(v17, v36, &qword_27D0253C8, &unk_222C98400);
          v38 = v60(v36, 1, v62);
          v4 = v50;
        }

        while (v38 != 1);
      }

      sub_222B4FCD4(v17, &qword_27D0253C8, &unk_222C98400);
      swift_unknownObjectRelease();
      sub_222B4FCD4(v36, &qword_27D0253C8, &unk_222C98400);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v27 < v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  swift_arrayInitWithCopy();
  if (v19 <= 0)
  {
LABEL_20:
    v28 = v18;
    if (v19 != v27)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v29 = *(v20 + 16);
  v30 = __OFADD__(v29, v19);
  v31 = v29 + v19;
  if (!v30)
  {
    *(v20 + 16) = v31;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
}

void sub_222C1A688(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a2;
  v62 = type metadata accessor for ThinMediaGroundTruth(0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = a4 >> 1;
  v54 = a3;
  v19 = v18 - a3;
  if (__OFSUB__(v18, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v51 = v15;
  v20 = *v4;
  v21 = *(*v4 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = *(v20 + 24) >> 1;
    if (v24 >= v22)
    {
      goto LABEL_12;
    }

    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }
  }

  else if (v21 <= v22)
  {
    v25 = v21 + v19;
  }

  else
  {
    v25 = v21;
  }

  sub_222B4C6A4(isUniquelyReferenced_nonNull_native, v25, 1);
  v20 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v58 = v9;
  v26 = v20;
  v27 = v24 - *(v20 + 16);
  if (v18 == v54)
  {
    if (v19 <= 0)
    {
      v28 = v54;
      if (v27)
      {
LABEL_15:
        swift_unknownObjectRelease();
LABEL_23:
        *v4 = v26;
        return;
      }

LABEL_21:
      v49 = a1;
      v32 = *(v20 + 16);
      v33 = v59;
      v34 = *(v59 + 56);
      v35 = v62;
      v56 = v59 + 56;
      v57 = v18;
      v55 = v34;
      v34(v17, 1, 1, v62);
      v36 = v51;
      sub_222B4FC6C(v17, v51, &qword_27D025890, &unk_222C9C7B0);
      v60 = *(v33 + 48);
      v61 = v33 + 48;
      if (v60(v36, 1, v35) != 1)
      {
        v50 = v4;
        do
        {
          sub_222B4FCD4(v36, &qword_27D025890, &unk_222C9C7B0);
          v39 = *(v26 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_222B4C6A4((v39 > 1), v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v59 + 80);
          sub_222B4FC6C(v17, v12, &qword_27D025890, &unk_222C9C7B0);
          v43 = v60(v12, 1, v62);
          v52 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              v47 = v58;
              sub_222C1BF74(v12, v58, type metadata accessor for ThinMediaGroundTruth);
              if (v37 == v32)
              {
                sub_222C1C0AC(v47, type metadata accessor for ThinMediaGroundTruth);
                v32 = v37;
                goto LABEL_26;
              }

              sub_222B4FCD4(v17, &qword_27D025890, &unk_222C9C7B0);
              v48 = *(v59 + 72);
              sub_222C1BF74(v47, v44 + v48 * v32, type metadata accessor for ThinMediaGroundTruth);
              if (v28 == v57)
              {
                v45 = 1;
                v28 = v57;
              }

              else
              {
                if (v28 < v54 || v28 >= v57)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v53 + v48 * v28, v17, type metadata accessor for ThinMediaGroundTruth);
                v45 = 0;
                ++v28;
              }

              v46 = v62;
              v55(v17, v45, 1, v62);
              sub_222B4FC6C(v17, v12, &qword_27D025890, &unk_222C9C7B0);
              ++v32;
            }

            while (v60(v12, 1, v46) != 1);
          }

          sub_222B4FCD4(v12, &qword_27D025890, &unk_222C9C7B0);
          v37 = v32;
LABEL_26:
          v36 = v51;
          v26 = v52;
          *(v52 + 16) = v37;
          sub_222B4FC6C(v17, v36, &qword_27D025890, &unk_222C9C7B0);
          v38 = v60(v36, 1, v62);
          v4 = v50;
        }

        while (v38 != 1);
      }

      sub_222B4FCD4(v17, &qword_27D025890, &unk_222C9C7B0);
      swift_unknownObjectRelease();
      sub_222B4FCD4(v36, &qword_27D025890, &unk_222C9C7B0);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v27 < v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  swift_arrayInitWithCopy();
  if (v19 <= 0)
  {
LABEL_20:
    v28 = v18;
    if (v19 != v27)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v29 = *(v20 + 16);
  v30 = __OFADD__(v29, v19);
  v31 = v29 + v19;
  if (!v30)
  {
    *(v20 + 16) = v31;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
}

void *sub_222C1AC10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = *(*v5 + 16);
  if (__OFADD__(v12, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_8;
  }

  v8 = a5;
  v6 = a3;
  v7 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v14 = *(v11 + 24) >> 1;
  if (v14 < v12 + v10)
  {
    goto LABEL_8;
  }

  if (v9 == v6)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      result = v8();
      v11 = *v5;
      v14 = *(*v5 + 24) >> 1;
      if (v9 != v6)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  v15 = *(v11 + 16);
  if (v14 - v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 32 * v15 + 32), (v7 + 32 * v6), 32 * v10);
    if (v10 <= 0)
    {
LABEL_13:
      result = swift_unknownObjectRelease();
      *v5 = v11;
      return result;
    }

    v16 = *(v11 + 16);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v11 + 16) = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_222C1AD38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = a2;
  v62 = type metadata accessor for ThinContactGroundTruth(0);
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = a4 >> 1;
  v54 = a3;
  v19 = v18 - a3;
  if (__OFSUB__(v18, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v51 = v15;
  v20 = *v4;
  v21 = *(*v4 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v20;
  if (isUniquelyReferenced_nonNull_native)
  {
    v24 = *(v20 + 24) >> 1;
    if (v24 >= v22)
    {
      goto LABEL_12;
    }

    if (v21 <= v22)
    {
      v25 = v21 + v19;
    }

    else
    {
      v25 = v21;
    }
  }

  else if (v21 <= v22)
  {
    v25 = v21 + v19;
  }

  else
  {
    v25 = v21;
  }

  sub_222B4C75C(isUniquelyReferenced_nonNull_native, v25, 1);
  v20 = *v4;
  v24 = *(*v4 + 24) >> 1;
LABEL_12:
  v58 = v9;
  v26 = v20;
  v27 = v24 - *(v20 + 16);
  if (v18 == v54)
  {
    if (v19 <= 0)
    {
      v28 = v54;
      if (v27)
      {
LABEL_15:
        swift_unknownObjectRelease();
LABEL_23:
        *v4 = v26;
        return;
      }

LABEL_21:
      v49 = a1;
      v32 = *(v20 + 16);
      v33 = v59;
      v34 = *(v59 + 56);
      v35 = v62;
      v56 = v59 + 56;
      v57 = v18;
      v55 = v34;
      v34(v17, 1, 1, v62);
      v36 = v51;
      sub_222B4FC6C(v17, v51, &qword_27D025AA8, &qword_222C9A1E0);
      v60 = *(v33 + 48);
      v61 = v33 + 48;
      if (v60(v36, 1, v35) != 1)
      {
        v50 = v4;
        do
        {
          sub_222B4FCD4(v36, &qword_27D025AA8, &qword_222C9A1E0);
          v39 = *(v26 + 24);
          if (v32 + 1 > (v39 >> 1))
          {
            sub_222B4C75C((v39 > 1), v32 + 1, 1);
          }

          v40 = *v4;
          v41 = *(*v4 + 24);
          v42 = *(v59 + 80);
          sub_222B4FC6C(v17, v12, &qword_27D025AA8, &qword_222C9A1E0);
          v43 = v60(v12, 1, v62);
          v52 = v40;
          if (v43 != 1)
          {
            v44 = v40 + ((v42 + 32) & ~v42);
            if (v32 <= (v41 >> 1))
            {
              v37 = v41 >> 1;
            }

            else
            {
              v37 = v32;
            }

            do
            {
              v47 = v58;
              sub_222C1BF74(v12, v58, type metadata accessor for ThinContactGroundTruth);
              if (v37 == v32)
              {
                sub_222C1C0AC(v47, type metadata accessor for ThinContactGroundTruth);
                v32 = v37;
                goto LABEL_26;
              }

              sub_222B4FCD4(v17, &qword_27D025AA8, &qword_222C9A1E0);
              v48 = *(v59 + 72);
              sub_222C1BF74(v47, v44 + v48 * v32, type metadata accessor for ThinContactGroundTruth);
              if (v28 == v57)
              {
                v45 = 1;
                v28 = v57;
              }

              else
              {
                if (v28 < v54 || v28 >= v57)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_222C1BFDC(v53 + v48 * v28, v17, type metadata accessor for ThinContactGroundTruth);
                v45 = 0;
                ++v28;
              }

              v46 = v62;
              v55(v17, v45, 1, v62);
              sub_222B4FC6C(v17, v12, &qword_27D025AA8, &qword_222C9A1E0);
              ++v32;
            }

            while (v60(v12, 1, v46) != 1);
          }

          sub_222B4FCD4(v12, &qword_27D025AA8, &qword_222C9A1E0);
          v37 = v32;
LABEL_26:
          v36 = v51;
          v26 = v52;
          *(v52 + 16) = v37;
          sub_222B4FC6C(v17, v36, &qword_27D025AA8, &qword_222C9A1E0);
          v38 = v60(v36, 1, v62);
          v4 = v50;
        }

        while (v38 != 1);
      }

      sub_222B4FCD4(v17, &qword_27D025AA8, &qword_222C9A1E0);
      swift_unknownObjectRelease();
      sub_222B4FCD4(v36, &qword_27D025AA8, &qword_222C9A1E0);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v27 < v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  swift_arrayInitWithCopy();
  if (v19 <= 0)
  {
LABEL_20:
    v28 = v18;
    if (v19 != v27)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v29 = *(v20 + 16);
  v30 = __OFADD__(v29, v19);
  v31 = v29 + v19;
  if (!v30)
  {
    *(v20 + 16) = v31;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
}

uint64_t _s28SiriPrivateLearningInference21PlusContactSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PlusContactSuggestion(0);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v5 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v5 != sub_222C9534C())
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);
  v9 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v13 = v11[2];
  v12 = v11[3];
  if ((v7 != *v11 || v8 != v11[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12 || (v10 != v13 || v9 != v12) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if ((sub_222BBCCA4(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || (sub_222C17990(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v14 = v4[11];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_222BBD2D4(v15, v16);
}

unint64_t sub_222C1B4E4()
{
  result = qword_27D026E58;
  if (!qword_27D026E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E58);
  }

  return result;
}

uint64_t sub_222C1B538(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F90, &qword_222C96D48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B5B0()
{
  result = qword_27D026E80;
  if (!qword_27D026E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026E80);
  }

  return result;
}

uint64_t sub_222C1B604(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222C1B77C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222C1B68C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026E60, &unk_222CA0F00);
    sub_222C1B950(a2, type metadata accessor for ThinContactGroundTruth, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B728()
{
  result = qword_27D026EB8;
  if (!qword_27D026EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EB8);
  }

  return result;
}

uint64_t sub_222C1B77C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222C1B7CC(uint64_t a1)
{
  result = sub_222B72D24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222C1B7F8()
{
  result = qword_27D026EC0;
  if (!qword_27D026EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EC0);
  }

  return result;
}

unint64_t sub_222C1B850()
{
  result = qword_27D026EC8;
  if (!qword_27D026EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EC8);
  }

  return result;
}

uint64_t sub_222C1B8F8(uint64_t a1)
{
  result = sub_222C1B950(&qword_27D026ED0, type metadata accessor for PlusContactSuggestion, &protocol conformance descriptor for PlusContactSuggestion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222C1B950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222C1B9C0(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9378C();
    if (v2 <= 0x3F)
    {
      sub_222C1BA9C(319);
      if (v3 <= 0x3F)
      {
        sub_222C1BAF4(319);
        if (v4 <= 0x3F)
        {
          sub_222C1BB50(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222C1BA9C(uint64_t a1)
{
  if (!qword_280FDB7B8)
  {
    type metadata accessor for ThinContactGroundTruth(255);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB7B8);
    }
  }
}

void sub_222C1BAF4(uint64_t a1)
{
  if (!qword_280FDB790)
  {
    sub_222B65518();
    v1 = sub_222C9497C();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB790);
    }
  }
}

void sub_222C1BB50(uint64_t a1)
{
  if (!qword_280FDB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026BB0, &unk_222CA62E0);
    v1 = sub_222C947FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280FDB7A0);
    }
  }
}

unint64_t sub_222C1BBC8()
{
  result = qword_27D026ED8;
  if (!qword_27D026ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026ED8);
  }

  return result;
}

unint64_t sub_222C1BC20()
{
  result = qword_27D026EE0;
  if (!qword_27D026EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EE0);
  }

  return result;
}

unint64_t sub_222C1BC78()
{
  result = qword_27D026EE8;
  if (!qword_27D026EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026EE8);
  }

  return result;
}

uint64_t sub_222C1BCCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E61487466656CLL && a2 == 0xEB0000000079654BLL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61487468676972 && a2 == 0xEE0065756C615664 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CAAED0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73694865726F6373 && a2 == 0xEC00000079726F74)
  {

    return 7;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_222C1BF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1BFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1C044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C1C0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*sub_222C1C114(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v10 = *(v7 - 1);
      v9 = *v7;
      v11 = *(v7 - 2);
      v12[0] = *(v7 - 3);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;

      v5(v12);

      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 4;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_222C1C1BC()
{
  v1 = sub_222C1C270();
  v2 = sub_222B62E40(MEMORY[0x277D84F90]);
  v3 = type metadata accessor for PhoneCallGroundTruth(0);
  v4 = (v0 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + *(v3 + 20));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_222BAA538(v1 | (v7 << 8), v5, v6, 0, 0, isUniquelyReferenced_nonNull_native);

  return v2;
}

uint64_t sub_222C1C270()
{
  v1 = type metadata accessor for PhoneCallGroundTruth(0);
  v2 = (v0 + v1[7]);
  v3 = v2[1];
  if (v3)
  {
    v4 = (v0 + v1[8]);
    if (*v4 == *v2 && v3 == v4[1])
    {
      return 4;
    }

    v6 = v1;
    v7 = sub_222C951FC();
    v1 = v6;
    if (v7)
    {
      return 4;
    }
  }

  if (*(v0 + v1[5]) > 2u)
  {

    return 4;
  }

  v8 = sub_222C951FC();

  if (v8)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_222C1C394()
{
  v1 = type metadata accessor for PhoneCallGroundTruth(0);
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + v1[7]);
  v6 = v5[1];
  if (!v6 || (v4 == *v5 ? (v7 = v6 == v3) : (v7 = 0), !v7 && (v8 = v1, v9 = sub_222C951FC(), v1 = v8, (v9 & 1) == 0)))
  {
    if (*(v0 + v1[5]) > 2u)
    {
    }

    else
    {
      v10 = sub_222C951FC();

      if ((v10 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C97C40;
        *(inited + 32) = v4;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        *(inited + 40) = v3;

        *(inited + 64) = sub_222BAF9C8(&unk_283607448);
        v12 = sub_222B62F90(inited);
        swift_setDeallocating();
        sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
        return v12;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];

  return sub_222B62F90(v14);
}

uint64_t sub_222C1C56C(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026EF0, type metadata accessor for PhoneCallGroundTruth, &unk_222CA11DC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222C1C5D4()
{
  v1 = type metadata accessor for MessagesGroundTruth(0);
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + v1[7]);
  v6 = v5[1];
  if (v6)
  {
    v7 = v4 == *v5 && v6 == v3;
    if (v7 || (sub_222C951FC() & 1) != 0)
    {
      goto LABEL_14;
    }
  }

  v8 = *(v0 + v1[5]);
  if (v8 == 2)
  {
    v9 = "successfulOneShot";
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_13;
    }

    v9 = "partialRepetition";
  }

  if (((v9 - 32) | 0x8000000000000000) == 0x8000000222CA9460)
  {

    goto LABEL_14;
  }

LABEL_13:
  v10 = sub_222C951FC();

  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    *(inited + 32) = v4;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 40) = v3;

    *(inited + 64) = sub_222BAF9C8(&unk_283607420);
    v14 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v14;
  }

LABEL_14:
  v11 = MEMORY[0x277D84F90];

  return sub_222B62F90(v11);
}

unint64_t sub_222C1C7A0()
{
  v1 = sub_222C1C858();
  v2 = sub_222B62E40(MEMORY[0x277D84F90]);
  v3 = type metadata accessor for MessagesGroundTruth(0);
  v4 = (v0 + *(v3 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + *(v3 + 20));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_222BAA538(v1 | (v7 << 8) | 0x1000000u, v5, v6, 0, 0, isUniquelyReferenced_nonNull_native);

  return v2;
}

uint64_t sub_222C1C858()
{
  v1 = type metadata accessor for MessagesGroundTruth(0);
  v2 = v1;
  v3 = (v0 + *(v1 + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = (v0 + *(v1 + 32));
    v6 = *v5 == *v3 && v4 == v5[1];
    if (v6 || (sub_222C951FC() & 1) != 0)
    {
      return 4;
    }
  }

  v8 = *(v0 + *(v2 + 20));
  if (v8 == 2)
  {
    v9 = "successfulOneShot";
  }

  else
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    v9 = "partialRepetition";
  }

  if (((v9 - 32) | 0x8000000000000000) == 0x8000000222CA9460)
  {

    return 4;
  }

LABEL_14:
  v10 = sub_222C951FC();

  if (v10)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_222C1C978(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026EF8, type metadata accessor for MessagesGroundTruth, &unk_222CA1224);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1C9E0()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = 0x8000000222CA85F0;
  }

  v4 = v2 == 0xD000000000000023 && 0x8000000222CA85F0 == v3;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {
    v5 = &unk_283607868;
LABEL_10:

    goto LABEL_11;
  }

  if (v2 == 0xD000000000000029 && 0x8000000222CA8620 == v3)
  {
    v5 = &unk_283607890;
    goto LABEL_10;
  }

  v8 = sub_222C951FC();

  if ((v8 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = &unk_283607890;
LABEL_11:

  return sub_222BAF9C8(v5);
}

unint64_t sub_222C1CB28()
{
  v1 = (v0 + *(type metadata accessor for ContactPromptGroundTruth(0) + 32));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    *(inited + 32) = v3;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 40) = v2;

    *(inited + 64) = sub_222BAF9C8(&unk_283607470);
    v5 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_222B62F90(v7);
  }
}

uint64_t sub_222C1CC20()
{
  v15 = sub_222B62E40(MEMORY[0x277D84F90]);
  if (sub_222C1CD40())
  {
    v1 = 6;
  }

  else
  {
    v1 = 5;
  }

  v2 = type metadata accessor for ContactPromptGroundTruth(0);
  v3 = *(v0 + *(v2 + 28));
  v10[2] = v0;
  v10[3] = &v15;
  v11 = v1;
  sub_222C1C114(sub_222C1D2C4, v10, v3);
  v4 = v0 + *(v2 + 32);
  v5 = *(v4 + 8);
  if (!v5)
  {
    return v15;
  }

  v12[0] = *v4;
  v6 = v12[0];
  v12[1] = v5;
  v13 = *(v4 + 16);
  sub_222C2C904(v12, &v14);
  v7 = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = v15;
  sub_222BAA538((v7 << 8) | 0x2000004u, v6, v5, 0, 0, isUniquelyReferenced_nonNull_native);

  return v12[0];
}

BOOL sub_222C1CD40()
{
  v1 = type metadata accessor for ContactPromptGroundTruth(0);
  v2 = *(v0 + *(v1 + 36));
  if (v2 == 2)
  {
    return *(v0 + *(v1 + 32) + 8) != 0;
  }

  if (v2)
  {
    v4 = v1;
    v5 = sub_222C951FC();

    v1 = v4;
    if ((v5 & 1) == 0)
    {
      return *(v0 + *(v1 + 32) + 8) != 0;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return 1;
}

uint64_t sub_222C1CE28(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 a4)
{
  v7 = *(a1 + 8);
  v11[0] = *a1;
  v6 = v11[0];
  v11[1] = v7;
  v12 = *(a1 + 16);
  sub_222C2C904(v11, &v13);
  v8 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = *a3;
  *a3 = 0x8000000000000000;
  sub_222BAA538(a4 | (v8 << 8) | 0x2000000u, v6, v7, 0, 0, isUniquelyReferenced_nonNull_native);

  *a3 = v11[0];
}

uint64_t sub_222C1CEFC(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026F00, type metadata accessor for ContactPromptGroundTruth, &unk_222CA126C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_222C1CF5C()
{
  v1 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  v2 = *(v0 + *(v1 + 32));
  if ((v2 - 2) >= 6u)
  {
    v3 = 0x6050603u >> ((v2 >> 5) & 0xF8);
  }

  else
  {
    v3 = 0x60505030505uLL >> (8 * ((v2 - 2) & 0x1F));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F20, &qword_222CA1338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  v5 = (v0 + *(v1 + 28));
  v6 = v5[1];
  *(inited + 32) = *v5;
  *(inited + 40) = v6;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 67) = 3;
  *(inited + 65) = v2;
  *(inited + 64) = v3;

  v7 = sub_222B62E40(inited);
  swift_setDeallocating();
  sub_222B4FCD4(inited + 32, &qword_27D026F28, &unk_222CA1340);
  return v7;
}

unint64_t sub_222C1D068()
{
  v1 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  v2 = *(v0 + *(v1 + 32));
  if (v2 > 7)
  {
LABEL_7:
    if (*(v0 + *(v1 + 32)) > 0xFFu)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F10, &qword_222CA1328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v7 = (v0 + *(v5 + 28));
    v8 = v7[1];
    *(inited + 32) = *v7;
    *(inited + 40) = v8;
    *(inited + 48) = 0;
    *(inited + 56) = 0;

    *(inited + 64) = sub_222BAF9C8(&unk_283607498);
    v9 = sub_222B62F90(inited);
    swift_setDeallocating();
    sub_222B4FCD4(inited + 32, &qword_27D026F18, &qword_222CA1330);
    return v9;
  }

  if (((1 << v2) & 0xEC) == 0)
  {
    if (v2 == 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_3:
  v3 = MEMORY[0x277D84F90];

  return sub_222B62F90(v3);
}

uint64_t sub_222C1D198(uint64_t a1)
{
  result = sub_222C1D1F0(&qword_27D026F08, type metadata accessor for ContactSuggestionOutcomeGroundTruth, &unk_222CA12B4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1D1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C1D23C(uint64_t a1)
{
  if (!*(v1 + *(a1 + 36)))
  {
    return sub_222BAF9C8(&unk_2836078B8);
  }

  if (*(v1 + *(a1 + 36)) == 1)
  {
    return sub_222BAF9C8(&unk_2836078E0);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t PhoneCallGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

SiriPrivateLearningInference::PhoneCallGroundTruthSource_optional __swiftcall PhoneCallGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PhoneCallGroundTruthSource.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000019;
  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_222C1D434()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C1D4F0(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222C1D598(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C1D65C(unint64_t *a1@<X8>)
{
  v2 = "dismissalAndInAppFollowup";
  v3 = 0xD000000000000021;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000011;
    v2 = "partialRepetition";
  }

  v4 = 0xD000000000000019;
  if (*v1)
  {
    v5 = "quickHangupAndInAppFollowup";
  }

  else
  {
    v4 = 0xD00000000000001BLL;
    v5 = "successfulOneShot";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t PhoneCallGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PhoneCallGroundTruth(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PhoneCallGroundTruth(uint64_t a1)
{
  result = qword_280FDF0F0;
  if (!qword_280FDF0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallGroundTruth.contactUSOPerson.getter()
{
  type metadata accessor for PhoneCallGroundTruth(0);
}

void PhoneCallGroundTruth.originalContactReference.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PhoneCallGroundTruth(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_222B98D00(v4, v5, v6, v7);
}

uint64_t PhoneCallGroundTruth.correctedContactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PhoneCallGroundTruth(0) + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t sub_222C1D904(uint64_t a1)
{
  v2 = sub_222C1E710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C1D940(uint64_t a1)
{
  v2 = sub_222C1E710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhoneCallGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F30, &qword_222CA1350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1E710();
  sub_222C9536C();
  LOBYTE(v20) = 0;
  sub_222C9367C();
  sub_222C1E968(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for PhoneCallGroundTruth(0);
    LOBYTE(v20) = *(v3 + v9[5]);
    v24 = 1;
    sub_222BBBB80();
    sub_222C9512C();
    v20 = *(v3 + v9[6]);
    v24 = 2;
    sub_222C9378C();
    sub_222C1E968(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v20 = *v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v24 = 3;
    sub_222B98D00(v20, v11, v12, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v20, v21, v22, v23);
    v14 = (v3 + v9[8]);
    v15 = v14[1];
    v17 = v14[2];
    v16 = v14[3];
    v20 = *v14;
    v21 = v15;
    v22 = v17;
    v23 = v16;
    v24 = 4;

    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

void PhoneCallGroundTruth.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_222C9367C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F40, &qword_222CA1358);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PhoneCallGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C1E710();
  v28 = v9;
  sub_222C9535C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v22 = a1;
    v13 = v12;
    v14 = v24;
    LOBYTE(v29) = 0;
    sub_222C1E968(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v25;
    v16 = v26;
    sub_222C9507C();
    (*(v14 + 32))(v13, v15, v4);
    v31 = 1;
    sub_222BBBCD0();
    sub_222C9507C();
    *(v13 + v10[5]) = v29;
    sub_222C9378C();
    v31 = 2;
    sub_222C1E968(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
    sub_222C9507C();
    *(v13 + v10[6]) = v29;
    v31 = 3;
    sub_222BFD7B4();
    sub_222C9502C();
    v17 = (v13 + v10[7]);
    v18 = v30;
    *v17 = v29;
    v17[1] = v18;
    v31 = 4;
    sub_222C9507C();
    (*(v27 + 8))(v28, v16);
    v19 = *(&v29 + 1);
    v20 = v13 + v10[8];
    *v20 = v29;
    *(v20 + 8) = v19;
    *(v20 + 16) = v30;
    sub_222C1E764(v13, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    sub_222C1E7C8(v13);
  }
}

uint64_t _s28SiriPrivateLearningInference20PhoneCallGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PhoneCallGroundTruth(0);
  if ((sub_222BBDEAC(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v5 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v5 != sub_222C9534C())
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  if (!v8)
  {
    v50 = v7;
    v26 = v7;
    v27 = v9;
    sub_222B98D00(v26, 0, v9, v10);
    if (!v13)
    {
      sub_222B98D00(v12, 0, v14, v15);
      v8 = 0;
      goto LABEL_37;
    }

    v28 = v12;
    sub_222B98D00(v12, v13, v14, v15);
    v29 = v50;
    goto LABEL_23;
  }

  if (!v13)
  {
    v30 = v7;
    v28 = *v11;
    v29 = v7;
    v27 = v9;
    sub_222B98D00(v30, v8, v9, v10);
    sub_222B98D00(v28, 0, v14, v15);
    sub_222B98D00(v29, v8, v27, v10);

LABEL_23:
    sub_222B450E8(v29, v8, v27, v10);
    v31 = v28;
    v32 = v13;
    v33 = v14;
    v34 = v15;
LABEL_29:
    sub_222B450E8(v31, v32, v33, v34);
    return 0;
  }

  v52 = v9;
  if (v7 != v12 || v8 != v13)
  {
    v49 = v11[3];
    v16 = v10;
    v17 = *v11;
    v18 = v7;
    v19 = v9;
    v20 = sub_222C951FC();
    v9 = v19;
    v7 = v18;
    v12 = v17;
    v10 = v16;
    v15 = v49;
    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v10)
  {
    sub_222B98D00(v7, v8, v9, 0);
    v35 = 0;
    if (!v15)
    {
      sub_222B98D00(v12, v13, v14, 0);
      sub_222B98D00(v7, v8, v52, 0);
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v25 = 0;
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  if (!v15)
  {
LABEL_24:
    sub_222B98D00(v7, v8, v9, v10);
    v35 = v10;
LABEL_27:
    v36 = v35;
    sub_222B98D00(v12, v13, v14, v15);
    sub_222B98D00(v7, v8, v52, v36);
    sub_222B450E8(v12, v13, v14, v15);
LABEL_28:

    v31 = v7;
    v32 = v8;
    v33 = v52;
    v34 = v10;
    goto LABEL_29;
  }

  if (v9 != v14 || v10 != v15)
  {
    v48 = v14;
    v38 = v9;
    v51 = sub_222C951FC();
    sub_222B98D00(v7, v8, v38, v10);
    sub_222B98D00(v12, v13, v48, v15);
    sub_222B98D00(v7, v8, v38, v10);
    sub_222B450E8(v12, v13, v48, v15);
    if (v51)
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v21 = v9;
  sub_222B98D00(v7, v8, v9, v10);
  sub_222B98D00(v12, v13, v21, v10);
  sub_222B98D00(v7, v8, v21, v10);
  v22 = v12;
  v23 = v13;
  v24 = v21;
  v25 = v10;
LABEL_35:
  sub_222B450E8(v22, v23, v24, v25);
LABEL_36:
  v50 = v7;
  v27 = v52;

LABEL_37:
  sub_222B450E8(v50, v8, v27, v10);
  v39 = v4[8];
  v40 = a1 + v39;
  v41 = *(a1 + v39);
  v42 = *(a1 + v39 + 8);
  v44 = *(a1 + v39 + 16);
  v43 = *(v40 + 24);
  v45 = (a2 + v39);
  v47 = v45[2];
  v46 = v45[3];
  if (v41 == *v45 && v42 == v45[1] || (sub_222C951FC() & 1) != 0)
  {
    if (v43)
    {
      if (v46 && (v44 == v47 && v43 == v46 || (sub_222C951FC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v46)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_222C1E710()
{
  result = qword_27D026F38;
  if (!qword_27D026F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F38);
  }

  return result;
}

uint64_t sub_222C1E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C1E7C8(uint64_t a1)
{
  v2 = type metadata accessor for PhoneCallGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C1E828()
{
  result = qword_27D026F48;
  if (!qword_27D026F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F48);
  }

  return result;
}

unint64_t sub_222C1E880()
{
  result = qword_27D026F50;
  if (!qword_27D026F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026F58, &qword_222CA1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F50);
  }

  return result;
}

uint64_t sub_222C1E8E4(uint64_t a1)
{
  *(a1 + 8) = sub_222C1E968(&qword_280FDF108, type metadata accessor for PhoneCallGroundTruth, &protocol conformance descriptor for PhoneCallGroundTruth);
  result = sub_222C1E968(qword_280FDF110, type metadata accessor for PhoneCallGroundTruth, &protocol conformance descriptor for PhoneCallGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C1E968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_222C1E9E8(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9378C();
    if (v2 <= 0x3F)
    {
      sub_222C027D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_222C1EAA8()
{
  result = qword_27D026F60;
  if (!qword_27D026F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F60);
  }

  return result;
}

unint64_t sub_222C1EB00()
{
  result = qword_27D026F68;
  if (!qword_27D026F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F68);
  }

  return result;
}

unint64_t sub_222C1EB58()
{
  result = qword_27D026F70;
  if (!qword_27D026F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F70);
  }

  return result;
}

unint64_t sub_222C1EBAC()
{
  result = qword_27D026F78;
  if (!qword_27D026F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F78);
  }

  return result;
}

BOOL sub_222C1EC00(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    sub_222C1F2E0(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9++, v8);
    v12 = *(v5 + 48);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v12) = sub_222C1F350(&v8[v12], v4);
    sub_222C1F910(v4, type metadata accessor for RuleResult);
    sub_222B4FCD4(v8, &qword_27D024CC8, &unk_222C96AA0);
  }

  while ((v12 & 1) != 0);
  return v10 == v11;
}

uint64_t sub_222C1EE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  a5[3] = a3(0, a1, a2);
  a5[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return (*(v11 + 32))(boxed_opaque_existential_1, v14, a1);
}

uint64_t sub_222C1EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F80, &qword_222CA48B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for FeaturisedSession(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  FeaturisedSession.init(_:)(v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_222B4FCD4(v7, &qword_27D026F80, &qword_222CA48B0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "Error classifying empty session", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_222C1F230(v7, v11);
    v18 = (*(*(a3 + 24) + 8))(v11, a2, *(a3 + 16));
    sub_222C1F910(v11, type metadata accessor for FeaturisedSession);
    return v18;
  }
}

uint64_t sub_222C1F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RuleResult(uint64_t a1)
{
  result = qword_280FDFF18;
  if (!qword_280FDFF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C1F2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C1F350(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v55 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F88, &qword_222CA17B8);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v55 + *(v21 + 56) - v20);
  v23 = a1;
  v24 = &v55 - v20;
  sub_222C1F970(v23, &v55 - v20);
  sub_222C1F970(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = v24;
      sub_222C1F970(v24, v18);
      v28 = *v18;
      v27 = v18[1];
      v30 = v18[2];
      v29 = v18[3];
      if (swift_getEnumCaseMultiPayload())
      {

        v24 = v26;
        goto LABEL_26;
      }

      v47 = v22[2];
      v46 = v22[3];
      if (v28 == *v22 && v27 == v22[1])
      {
      }

      else
      {
        v49 = sub_222C951FC();

        if ((v49 & 1) == 0)
        {

          goto LABEL_47;
        }
      }

      if (v30 == v47 && v29 == v46)
      {
      }

      else
      {
        v54 = sub_222C951FC();

        if ((v54 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v50 = v26;
      goto LABEL_37;
    }

    sub_222C1F970(v24, v15);
    v35 = *v15;
    v36 = *(v15 + 1);
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F90, &qword_222CA17C0) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v58 + 8))(&v15[v37], v4);
      goto LABEL_26;
    }

    v56 = v35;
    v57 = v24;
    v38 = v22[1];
    v55 = *v22;
    v39 = *(v58 + 32);
    v39(v9, &v15[v37], v4);
    v40 = v22 + v37;
    v41 = v6;
    v39(v6, v40, v4);
    if (v56 == v55 && v36 == v38)
    {

      v26 = v57;
    }

    else
    {
      v43 = sub_222C951FC();

      v26 = v57;
      if ((v43 & 1) == 0)
      {
        v44 = *(v58 + 8);
        v44(v41, v4);
        v44(v9, v4);
LABEL_47:
        sub_222C1F910(v26, type metadata accessor for RuleResult);
        goto LABEL_28;
      }
    }

    v45 = sub_222C9362C();
    v52 = *(v58 + 8);
    v52(v41, v4);
    v52(v9, v4);
    sub_222C1F910(v26, type metadata accessor for RuleResult);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  sub_222C1F970(v24, v12);
  v31 = *v12;
  v32 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_26:

LABEL_27:
    sub_222B4FCD4(v24, &qword_27D026F88, &qword_222CA17B8);
    goto LABEL_28;
  }

  if (v31 == *v22 && v32 == v22[1])
  {

    goto LABEL_36;
  }

  v34 = sub_222C951FC();

  if (v34)
  {
LABEL_36:
    v50 = v24;
LABEL_37:
    sub_222C1F910(v50, type metadata accessor for RuleResult);
    v45 = 1;
    return v45 & 1;
  }

  sub_222C1F910(v24, type metadata accessor for RuleResult);
LABEL_28:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_222C1F910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C1F970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuleResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_222C1FA24(uint64_t a1)
{
  sub_222C1FAA0();
  if (v1 <= 0x3F)
  {
    sub_222C1FB00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_222C1FAA0()
{
  if (!qword_280FDB810)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FDB810);
    }
  }
}

void sub_222C1FB00(uint64_t a1)
{
  if (!qword_280FDB818)
  {
    sub_222C9367C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FDB818);
    }
  }
}

uint64_t PhoneCallEventCoalescer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PhoneCallEventCoalescer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222C1FBB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = v7 == 0xD000000000000011 && 0x8000000222CA8780 == v8;
  if (v9 || (sub_222C951FC() & 1) != 0)
  {
    result = sub_222B41CFC(v6);
    if (result != 2)
    {
      v11 = *(v2 + 16);
      if (result)
      {
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 16) = v13;
          *a2 = 0u;
          *(a2 + 16) = 0u;
          *(a2 + 32) = 0;
        }

        return result;
      }

      if (v11 == 2)
      {
        *(v2 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_222C97C40;
        v15 = type metadata accessor for CommonFeature.DonatedBySiri(0);
        swift_allocObject();
        LOBYTE(v19) = 1;
        v16 = sub_222C93EEC();
        *(inited + 56) = v15;
        *(inited + 64) = sub_222C1FDBC();
        *(inited + 32) = v16;
        CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, &v19);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        result = swift_arrayDestroy();
        v17 = v21;
        v18 = v22;
        *a2 = v19;
        *(a2 + 8) = v20;
        *(a2 + 24) = v17;
        *(a2 + 32) = v18;
        return result;
      }
    }
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

unint64_t sub_222C1FDBC()
{
  result = qword_27D026F98;
  if (!qword_27D026F98)
  {
    type metadata accessor for CommonFeature.DonatedBySiri(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026F98);
  }

  return result;
}

uint64_t sub_222C1FE68(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_222C94B5C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v27 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  v36 = sub_222C9477C();
  v35 = sub_222C9477C();
  (*(v14 + 16))(v17, v34, a3);
  sub_222C9464C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v20;
  v34 = v18;
  v29 = AssociatedConformanceWitness;
  sub_222C94B9C();
  v22 = v6;
  v23 = *(v6 + 48);
  if (v23(v13, 1, AssociatedTypeWitness) != 1)
  {
    v25 = *(v22 + 32);
    v24 = v22 + 32;
    v28 = v25;
    do
    {
      v28(v10, v13, AssociatedTypeWitness);
      v31(v10);
      (*(v24 - 16))(v30, v10, AssociatedTypeWitness);
      sub_222C947FC();
      sub_222C947CC();
      (*(v24 - 24))(v10, AssociatedTypeWitness);
      sub_222C94B9C();
    }

    while (v23(v13, 1, AssociatedTypeWitness) != 1);
  }

  (*(v27 + 8))(v33, v34);
  return v36;
}

double sub_222C20264(double a1, double a2)
{
  result = *v2;
  if (*v2 >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t ThinContactGroundTruth.init(id:groundTruthType:groundTruthSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(a4 + 2);
  v11 = sub_222C9367C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for ThinContactGroundTruth(0);
  v13 = (a5 + *(result + 20));
  *v13 = a2;
  v13[1] = a3;
  v14 = a5 + *(result + 24);
  *v14 = v9;
  *(v14 + 2) = v10;
  return result;
}

uint64_t type metadata accessor for ThinContactGroundTruth(uint64_t a1)
{
  result = qword_280FDE940;
  if (!qword_280FDE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ThinContactGroundTruth.init(completeGroundTruth:rightHandContext:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v58 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  MEMORY[0x28223BE20](v58);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v7;
  v61 = type metadata accessor for ContactPromptGroundTruth(0);
  MEMORY[0x28223BE20](v61);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v53 - v10;
  v63 = type metadata accessor for MessagesGroundTruth(0);
  MEMORY[0x28223BE20](v63);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v53 - v13;
  v14 = type metadata accessor for PhoneCallGroundTruth(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for ThinContactGroundTruth(0);
  v66 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[1];
  v55 = *a2;
  v24 = a2[3];
  v54 = a2[2];
  v64 = v24;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 24))(v25, v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 40);
  v30 = v28;
  v31 = v20;
  v32 = v29(v27, v30);
  v33 = *(v20 + 20);
  v65 = v22;
  v34 = &v22[v33];
  v35 = a1;
  *v34 = v32;
  v34[1] = v36;
  sub_222B43E3C(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
  if (swift_dynamicCast())
  {

    sub_222C209D8(v19, v16, type metadata accessor for PhoneCallGroundTruth);
    v37 = v16[*(v14 + 20)];
    sub_222C20A40(v16, type metadata accessor for PhoneCallGroundTruth);
    v38 = 0;
  }

  else
  {
    v39 = v63;
    v40 = v64;
    v41 = v62;
    if (swift_dynamicCast())
    {

      v42 = v59;
      sub_222C209D8(v41, v59, type metadata accessor for MessagesGroundTruth);
      v37 = *(v42 + *(v39 + 20));
      sub_222C20A40(v42, type metadata accessor for MessagesGroundTruth);
      v38 = 1;
    }

    else
    {
      v43 = v60;
      if (swift_dynamicCast())
      {
        v44 = v56;
        sub_222C209D8(v43, v56, type metadata accessor for ContactPromptGroundTruth);
        v68[0] = v55;
        v68[1] = v23;
        v68[2] = v54;
        v68[3] = v40;
        sub_222C2C904(v68, &v69);
        sub_222C20A40(v44, type metadata accessor for ContactPromptGroundTruth);

        v37 = v69;
        v38 = 2;
      }

      else
      {

        v46 = v57;
        v45 = v58;
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          v52 = sub_222C9367C();
          (*(*(v52 - 8) + 8))(v65, v52);

          return (*(v66 + 56))(v67, 1, 1, v31);
        }

        v47 = v53;
        sub_222C209D8(v46, v53, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        v37 = *(v47 + *(v45 + 32));
        sub_222C20A40(v47, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
        v38 = 3;
      }
    }
  }

  v48 = v65;
  v49 = &v65[*(v31 + 24)];
  *v49 = v37;
  v49[2] = v38;
  __swift_destroy_boxed_opaque_existential_0Tm(v70);
  v50 = v67;
  sub_222BFC730(v48, v67);
  (*(v66 + 56))(v50, 0, 1, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return sub_222C20A40(v48, type metadata accessor for ThinContactGroundTruth);
}

uint64_t sub_222C209D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C20A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ThinContactGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThinContactGroundTruth.groundTruthType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThinContactGroundTruth(0) + 20));

  return v1;
}

uint64_t ThinContactGroundTruth.groundTruthSource.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ThinContactGroundTruth(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

unint64_t sub_222C20B8C()
{
  v1 = 0x7254646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_222C20BEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222C21E74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222C20C14(uint64_t a1)
{
  v2 = sub_222C21BCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C20C50(uint64_t a1)
{
  v2 = sub_222C21BCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThinContactGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FA0, &qword_222CA18D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C21BCC();
  sub_222C9536C();
  v17 = 0;
  sub_222C9367C();
  sub_222C21C68(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for ThinContactGroundTruth(0);
    v16 = 1;
    sub_222C950EC();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 2);
    v14 = v11;
    v15 = v10;
    v13[9] = 2;
    sub_222BFC6DC();
    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ThinContactGroundTruth.hash(into:)(uint64_t a1)
{
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  type metadata accessor for ThinContactGroundTruth(0);
  sub_222C9452C();
  return GroundTruthSource.hash(into:)(a1);
}

uint64_t ThinContactGroundTruth.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  type metadata accessor for ThinContactGroundTruth(0);
  sub_222C9452C();
  GroundTruthSource.hash(into:)(v1);
  return sub_222C9534C();
}

uint64_t ThinContactGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_222C9367C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FB0, &qword_222CA18E0);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ThinContactGroundTruth(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C21BCC();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v25;
  v11 = v26;
  v23 = v8;
  v33 = 0;
  sub_222C21C68(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_222C9507C();
  v13 = *(v11 + 32);
  v22 = v10;
  v13(v10, v27, v4);
  v32 = 1;
  v14 = sub_222C9503C();
  v15 = &v22[*(v23 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v31 = 2;
  sub_222BFC688();
  sub_222C9507C();
  (*(v12 + 8))(v7, v28);
  v17 = v30;
  v18 = v22;
  v19 = &v22[*(v23 + 24)];
  *v19 = v29;
  v19[2] = v17;
  sub_222BFC730(v18, v24);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_222C20A40(v18, type metadata accessor for ThinContactGroundTruth);
}

uint64_t sub_222C2143C(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  sub_222C9452C();
  GroundTruthSource.hash(into:)(v2);
  return sub_222C9534C();
}

uint64_t sub_222C21508(uint64_t a1, uint64_t a2)
{
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  sub_222C9452C();
  return GroundTruthSource.hash(into:)(a1);
}

uint64_t sub_222C215C4(uint64_t a1, uint64_t a2)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222C21C68(&qword_280FE02A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_222C9441C();
  sub_222C9452C();
  GroundTruthSource.hash(into:)(v3);
  return sub_222C9534C();
}

uint64_t sub_222C2168C(uint64_t a1)
{
  v2 = type metadata accessor for ThinContactGroundTruth(0);
  MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = &v6[*(v3 + 24)];
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_222BFC730(v9, v6);
      LOWORD(v12) = *v8;
      if (v8[2] > 1u)
      {
        break;
      }

      if (!v8[2])
      {
        v12 = v12;
        v13 = dword_222CA1B30;
LABEL_9:
        v14 = v13[v12];
        goto LABEL_11;
      }

      v14 = 12 - v12;
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v11;
      v16 = sub_222B8CF60(v14);
      v18 = *(v11 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_44;
      }

      v22 = v17;
      if (*(v11 + 24) < v21)
      {
        sub_222B91240(v21, isUniquelyReferenced_nonNull_native);
        type metadata accessor for PLUSSchemaPLUSContactGroundTruthSource(0);
        v16 = sub_222B8CF60(v14);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_47;
        }

LABEL_16:
        v11 = v52;
        if ((v22 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v30 = v16;
      sub_222B94498();
      v16 = v30;
      v11 = v52;
      if ((v22 & 1) == 0)
      {
LABEL_17:
        *(v11 + 8 * (v16 >> 6) + 64) |= 1 << v16;
        *(*(v11 + 48) + 4 * v16) = v14;
        *(*(v11 + 56) + 8 * v16) = 0;
        v24 = *(v11 + 16);
        v20 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v20)
        {
          goto LABEL_46;
        }

        *(v11 + 16) = v25;
      }

LABEL_19:
      v26 = *(v11 + 56);
      v27 = *(v26 + 8 * v16);
      v28 = __CFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_45;
      }

      *(v26 + 8 * v16) = v29;
LABEL_3:
      sub_222C20A40(v6, type metadata accessor for ThinContactGroundTruth);
      v9 += v10;
      if (!--v7)
      {
        goto LABEL_24;
      }
    }

    if (v8[2] != 2)
    {
      goto LABEL_3;
    }

    v12 = v12;
    v13 = &unk_222CA1B10;
    goto LABEL_9;
  }

  v11 = MEMORY[0x277D84F98];
LABEL_24:
  v31 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v32 = 1 << *(v11 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v11 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  for (i = 0x277D59000uLL; v34; i = 0x277D59000)
  {
LABEL_33:
    while (1)
    {
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v36 << 6);
      v41 = *(*(v11 + 48) + 4 * v40);
      v42 = *(*(v11 + 56) + 8 * v40);
      v43 = [objc_allocWithZone(*(i + 3184)) init];
      if (v43)
      {
        break;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);
      v45 = sub_222C942FC();
      v46 = sub_222C94A4C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_222B39000, v45, v46, "Failed to create ground truth summary", v47, 2u);
        v48 = v47;
        i = 0x277D59000;
        MEMORY[0x223DCA8C0](v48, -1, -1);
      }

      if (!v34)
      {
        goto LABEL_29;
      }
    }

    v49 = v43;
    [v43 setSource_];
    MEMORY[0x223DC94A0]([v49 setCount_]);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222C9475C();
    }

    sub_222C947AC();
    v31 = v52;
  }

LABEL_29:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      return v31;
    }

    v34 = *(v11 + 64 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

uint64_t _s28SiriPrivateLearningInference22ThinContactGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_222C9362C() & 1) != 0 && ((v4 = type metadata accessor for ThinContactGroundTruth(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_222C951FC()))
  {
    v10 = *(v4 + 24);
    v11 = *(a1 + v10 + 2);
    v18 = *(a1 + v10);
    v19 = v11;
    v12 = a2 + v10;
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 2);
    v16 = v13;
    v17 = v12;
    v14 = _s28SiriPrivateLearningInference17GroundTruthSourceO2eeoiySbAC_ACtFZ_0(&v18, &v16);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_222C21BCC()
{
  result = qword_27D026FA8;
  if (!qword_27D026FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FA8);
  }

  return result;
}

uint64_t sub_222C21C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222C21CD8(uint64_t a1)
{
  result = sub_222C9367C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_222C21D70()
{
  result = qword_27D026FC0;
  if (!qword_27D026FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FC0);
  }

  return result;
}

unint64_t sub_222C21DC8()
{
  result = qword_27D026FC8;
  if (!qword_27D026FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FC8);
  }

  return result;
}

unint64_t sub_222C21E20()
{
  result = qword_27D026FD0;
  if (!qword_27D026FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FD0);
  }

  return result;
}

uint64_t sub_222C21E74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7254646E756F7267 && a2 == 0xEF65707954687475 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9E80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222C21FA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222C21FC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

double sub_222C22008(double a1, double a2)
{
  result = *v2;
  v4 = *(v2 + 16);
  if (*v2 >= a2)
  {
    result = a2;
  }

  if (*(v2 + 8))
  {
    result = a2;
  }

  if (result > v4)
  {
    v4 = result;
  }

  if (!*(v2 + 24))
  {
    return v4;
  }

  return result;
}

void *sub_222C22080(uint64_t a1)
{
  v24 = type metadata accessor for PhoneCallAbandonmentClassifier();
  v25 = &protocol witness table for PhoneCallAbandonmentClassifier;
  v23[0] = swift_allocObject();
  v2 = type metadata accessor for QuickHangupClassifier();
  v3 = 32;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222CA1BB0;
  v27 = v2;
  v28 = &protocol witness table for QuickHangupClassifier;
  v26 = v4;
  v30 = type metadata accessor for PhoneCallInAppFollowupClassifier();
  v31 = &protocol witness table for PhoneCallInAppFollowupClassifier;
  v29 = swift_allocObject();
  v5 = type metadata accessor for SuccessfulPhoneCallClassifier();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x4014000000000000;
  v34 = &protocol witness table for SuccessfulPhoneCallClassifier;
  v7 = MEMORY[0x277D84F90];
  v33 = v5;
  v32 = v6;
  while (1)
  {
    sub_222B43E3C(&v22[v3], v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v10 + 8))(a1, v7, v9, v10);
    v11 = result[2];
    v12 = v7[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    v14 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= v7[3] >> 1)
    {
      if (v14[2])
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      result = sub_222B4A314(result, v15, 1, v7);
      v7 = result;
      if (v14[2])
      {
LABEL_13:
        if ((v7[3] >> 1) - v7[2] < v11)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v16 = v7[2];
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_21;
          }

          v7[2] = v18;
        }

        goto LABEL_3;
      }
    }

    if (v11)
    {
      goto LABEL_19;
    }

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v3 += 40;
    if (v3 == 192)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D00, &unk_222C9ABC0);
      swift_arrayDestroy();
      return v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_222C2236C()
{
  v2 = *(v1 + 16);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = objc_opt_self();
  v4 = [v3 bagSubProfile];
  if (v4)
  {
    v0 = v4;
    v5 = [v3 bagSubProfileVersion];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() bagForProfile:v0 profileVersion:v5];

      v8 = *(v1 + 16);
      *(v1 + 16) = v7;
      v7;

      v2 = 0;
LABEL_5:
      v9 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_222C2244C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_222C22470, 0, 0);
}

uint64_t sub_222C22470()
{
  v1 = v0[3];
  sub_222C2236C();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CEE570]);
  v5 = sub_222C9448C();
  v6 = sub_222C9448C();
  v7 = [v4 initWithType:v1 clientIdentifier:v5 clientVersion:v6 bag:v3];
  v0[5] = v7;

  v8 = sub_222C9470C();
  [v7 setItemIdentifiers_];

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_222C225C0;

  return sub_222C227B4();
}

uint64_t sub_222C225C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_222C22750;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_222C226E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222C226E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_222C22750()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222C227D4()
{
  v1 = [*(v0 + 24) perform];
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_222C23A88();
  *v3 = v0;
  v3[1] = sub_222C228E0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x2928746C75736572, 0xE800000000000000, sub_222C23A80, v2, v4);
}

uint64_t sub_222C228E0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_222C22A68;
  }

  else
  {

    v2 = sub_222C229FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222C229FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_222C22A68()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222C22AD0()
{

  return swift_deallocClassInstance();
}

void sub_222C22B08()
{
  v1 = [v0 responseDataItems];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE0, &qword_222CA1CB0);
    v3 = sub_222C9471C();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (v5 < *(v3 + 16))
      {
        v23[0] = *(v3 + 32 + 8 * v5);
        sub_222C22D08(v23, &v19);
        if (*(&v19 + 1))
        {
          v15 = v19;
          v16 = v20;
          v17 = v21;
          v18 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_222B4B568(0, *(v6 + 2) + 1, 1, v6);
          }

          v8 = *(v6 + 2);
          v7 = *(v6 + 3);
          if (v8 >= v7 >> 1)
          {
            v6 = sub_222B4B568((v7 > 1), v8 + 1, 1, v6);
          }

          v13 = v17;
          v14 = v18;
          v9 = v15;
          v12 = v16;
          *(v6 + 2) = v8 + 1;
          v10 = &v6[64 * v8];
          *(v10 + 4) = v13;
          *(v10 + 5) = v14;
          *(v10 + 2) = v9;
          *(v10 + 3) = v12;
        }

        else
        {
          v15 = v19;
          v16 = v20;
          v17 = v21;
          v18 = v22;
          sub_222C23618(&v15);
        }

        if (v4 == ++v5)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
    sub_222C235C4();
    swift_allocError();
    *v11 = 0xD000000000000027;
    v11[1] = 0x8000000222CAC9B0;
    swift_willThrow();
  }
}

uint64_t sub_222C22D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_222C94CBC();
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v4 = sub_222B8D080(v23);
  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_222B4420C(*(v3 + 56) + 32 * v4, &v24);
  sub_222B958A0(v23);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_222C94CBC();
  if (!*(v3 + 16) || (v7 = sub_222B8D080(v23), (v8 & 1) == 0))
  {

LABEL_15:
    result = sub_222B958A0(v23);
    goto LABEL_16;
  }

  sub_222B4420C(*(v3 + 56) + 32 * v7, &v24);
  sub_222B958A0(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE0, &qword_222CA1CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v24 = 1701667182;
  v25 = 0xE400000000000000;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v9 = sub_222B8D080(v23), (v10 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v9, &v24);
    sub_222B958A0(v23);
    v11 = swift_dynamicCast();
    v12 = 0x7475626972747461;
    if (!v11)
    {
      v12 = 0;
    }

    v26 = v12;
    if (v11)
    {
      v13 = 0xEA00000000007365;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_222B958A0(v23);
    v26 = 0;
    v13 = 0;
  }

  v24 = 0x614E747369747261;
  v25 = 0xEA0000000000656DLL;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v14 = sub_222B8D080(v23), (v15 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v14, &v24);
    sub_222B958A0(v23);
    v16 = swift_dynamicCast();
    if (v16)
    {
      v17 = 0x7475626972747461;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = 0xEA00000000007365;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    sub_222B958A0(v23);
    v17 = 0;
    v18 = 0;
  }

  v24 = 0x6D614E6D75626C61;
  v25 = 0xE900000000000065;
  sub_222C94CBC();
  if (MEMORY[0x7475626972747471] && (v19 = sub_222B8D080(v23), (v20 & 1) != 0))
  {
    sub_222B4420C(MEMORY[0x7475626972747499] + 32 * v19, &v24);
    sub_222B958A0(v23);

    result = swift_dynamicCast();
    v21 = 0x7475626972747461;
    v22 = 0xEA00000000007365;
    if (!result)
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {

    result = sub_222B958A0(v23);
    v21 = 0;
    v22 = 0;
  }

  *a2 = 25705;
  *(a2 + 8) = 0xE200000000000000;
  *(a2 + 16) = v26;
  *(a2 + 24) = v13;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  return result;
}

uint64_t AMSSongMetadataClient.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for AMSClient();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t AMSSongMetadataClient.init()()
{
  type metadata accessor for AMSClient();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_222C23144(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_222C23164, 0, 0);
}

uint64_t sub_222C23164()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_222C23204;
  v2 = *(v0 + 16);

  return sub_222C2244C(v2, 203);
}

uint64_t sub_222C23204(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_222C23354, 0, 0);
  }
}

uint64_t sub_222C23354()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_222C22B08();
  v4 = v3;

  v6 = v0[1];
  if (!v2)
  {
    v5 = v4;
  }

  return v6(v5);
}

uint64_t AMSSongMetadataClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222C23430(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222C23164, 0, 0);
}

uint64_t dispatch thunk of AMSSongMetadataClient.searchSongs(identifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222C00D84;

  return v6(a1);
}

unint64_t sub_222C235C4()
{
  result = qword_27D026FD8;
  if (!qword_27D026FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026FD8);
  }

  return result;
}

uint64_t sub_222C23618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FE8, &qword_222CA1CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_222C2368C(uint64_t a1, void *a2)
{
  v16 = a1;
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *(v4 + 16);
  v8(&v14 - v6, a1, v3, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v15 = *(v4 + 32);
  v15(v10 + v9, v7, v3);
  v22 = sub_222C23AD4;
  v23 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222C23968;
  v21 = &block_descriptor_1;
  v11 = _Block_copy(&aBlock);

  [v17 addSuccessBlock_];
  _Block_release(v11);
  (v8)(v7, v16, v3);
  v12 = swift_allocObject();
  v15(v12 + v9, v7, v3);
  v22 = sub_222C23B98;
  v23 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222C23A18;
  v21 = &block_descriptor_24;
  v13 = _Block_copy(&aBlock);

  [v17 addErrorBlock_];
  _Block_release(v13);
}

uint64_t sub_222C23918(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  return sub_222C9482C();
}

uint64_t sub_222C23968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_222C239C8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  return sub_222C9481C();
}

void sub_222C23A18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_222C23A88()
{
  result = qword_27D026FF0;
  if (!qword_27D026FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D026FF0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222C23BB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026FF8, &qword_222CA1CC8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_222C23C58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027050, &unk_222CA1E20);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027000 = 91;
  *algn_27D027008 = 0xE100000000000000;
  return result;
}

SiriPrivateLearningInference::MediaInAppFollowupGroundTruthGenerator __swiftcall MediaInAppFollowupGroundTruthGenerator.init(timeToFollowup:)(Swift::Double timeToFollowup)
{
  *v1 = 0x3FE3333333333333;
  *(v1 + 8) = timeToFollowup;
  result.componentSimilarityThreshold = timeToFollowup;
  return result;
}

uint64_t MediaInAppFollowupGroundTruthGenerator.generate(session:classifications:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v134 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for MediaGroundTruth(0);
  v8 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeaturisedTurn(0);
  v12 = *(v11 - 8);
  v127 = v11;
  v128 = v12;
  MEMORY[0x28223BE20](v11);
  v124 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v14 - 8);
  v126 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v125 = &v119 - v17;
  v18 = type metadata accessor for MediaPlayClassification(0);
  v132 = *(v18 - 8);
  v133 = v18;
  MEMORY[0x28223BE20](v18);
  v129 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v20 - 8);
  v131 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027010, &qword_222CA1D40);
  MEMORY[0x28223BE20](v22 - 8);
  v138 = &v119 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027018, &unk_222CA1D48);
  MEMORY[0x28223BE20](v136);
  v135 = (&v119 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v25 - 8);
  v137 = &v119 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027020, &unk_222CA1D58);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v119 - v28;
  v30 = type metadata accessor for MediaInAppFollowupClassification(0);
  v141 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v139 = &v119 - v32;
  MEMORY[0x28223BE20](v33);
  v142 = &v119 - v35;
  v140 = a1;
  v36 = *(a1 + 16);
  if (v36 != 1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v47 = sub_222C9431C();
    __swift_project_value_buffer(v47, qword_280FE2340);

    v48 = sub_222C942FC();
    v49 = sub_222C94A3C();
    if (!os_log_type_enabled(v48, v49))
    {

      return MEMORY[0x277D84F90];
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v154 = v51;
    *v50 = 136315394;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v50 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v154);
    *(v50 + 12) = 2048;
    *(v50 + 14) = v36;

    v52 = "%s Session has %ld turns. Only single turn sessions are currently supported due to malformed SELF. Skipping GT generation.";
    v53 = v49;
    v54 = v48;
    v55 = v50;
    v56 = 22;
    goto LABEL_43;
  }

  v122 = v10;
  v123 = v34;
  v119 = v6;
  v120 = v5;
  v121 = v8;
  v37 = *v2;
  v38 = v2[1];
  v39 = *(a2 + 16);
  if (v39)
  {
    v40 = a2 + 32;
    v41 = (v141 + 56);
    v42 = (v141 + 48);
    v43 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v40, &v154);
      sub_222B405A0(&v154, &v150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v44 = swift_dynamicCast();
      (*v41)(v29, v44 ^ 1u, 1, v30);
      if ((*v42)(v29, 1, v30) == 1)
      {
        sub_222B4FCD4(v29, &qword_27D027020, &unk_222CA1D58);
      }

      else
      {
        sub_222C26A98(v29, v142, type metadata accessor for MediaInAppFollowupClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_222B4B8A8(0, v43[2] + 1, 1, v43);
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_222B4B8A8((v45 > 1), v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        sub_222C26A98(v142, v43 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v46, type metadata accessor for MediaInAppFollowupClassification);
      }

      v40 += 40;
      --v39;
    }

    while (v39);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v57 = v43[2];
  if (v57 > 1)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v58 = sub_222C9431C();
    __swift_project_value_buffer(v58, qword_280FE2340);
    v48 = sub_222C942FC();
    LOBYTE(v59) = sub_222C94A3C();
    if (!os_log_type_enabled(v48, v59))
    {
      goto LABEL_44;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v154 = v51;
    *v50 = 136315138;
    if (qword_27D024730 != -1)
    {
LABEL_81:
      swift_once();
    }

    *(v50 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v154);
    v52 = "%s Multiple In App Follows detected where only one should be present. Skipping Ground Truth Generation";
    goto LABEL_42;
  }

  if (!v57)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v74 = sub_222C9431C();
    __swift_project_value_buffer(v74, qword_280FE2340);
    v48 = sub_222C942FC();
    LOBYTE(v59) = sub_222C94A3C();
    if (!os_log_type_enabled(v48, v59))
    {
      goto LABEL_44;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v154 = v51;
    *v50 = 136315138;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v50 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v154);
    v52 = "%s No in app followup classification found. Skipping.";
LABEL_42:
    v53 = v59;
    v54 = v48;
    v55 = v50;
    v56 = 12;
LABEL_43:
    _os_log_impl(&dword_222B39000, v54, v53, v52, v55, v56);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x223DCA8C0](v51, -1, -1);
    MEMORY[0x223DCA8C0](v50, -1, -1);
LABEL_44:

    return MEMORY[0x277D84F90];
  }

  v60 = v123;
  sub_222C26A30(v43 + ((*(v141 + 80) + 32) & ~*(v141 + 80)), v123, type metadata accessor for MediaInAppFollowupClassification);

  v61 = v139;
  sub_222C26A98(v60, v139, type metadata accessor for MediaInAppFollowupClassification);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v62 = sub_222C9431C();
  __swift_project_value_buffer(v62, qword_280FE2340);
  v63 = sub_222C942FC();
  v64 = sub_222C94A3C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v140;
  v67 = v138;
  if (v65)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v154 = v69;
    *v68 = 136315138;
    if (qword_27D024730 != -1)
    {
      swift_once();
    }

    *(v68 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v154);
    _os_log_impl(&dword_222B39000, v63, v64, "%s Found 1 Media In App Followup Classification. Reviewing for ground truth generation", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x223DCA8C0](v69, -1, -1);
    MEMORY[0x223DCA8C0](v68, -1, -1);
  }

  *&v154 = v37;
  *(&v154 + 1) = v38;
  if ((sub_222C24FFC(v61) & 1) == 0)
  {
LABEL_49:
    sub_222C26B00(v61, type metadata accessor for MediaInAppFollowupClassification);
    return MEMORY[0x277D84F90];
  }

  *&v154 = v37;
  *(&v154 + 1) = v38;
  sub_222C253A0(v66, v61, v67);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
  if ((*(*(v70 - 8) + 48))(v67, 1, v70) == 1)
  {
    v71 = &qword_27D027010;
    v72 = &qword_222CA1D40;
    v73 = v67;
LABEL_48:
    sub_222B4FCD4(v73, v71, v72);
    goto LABEL_49;
  }

  v76 = v67[*(v70 + 80)];
  v77 = *(v70 + 64);
  v78 = v135;
  v79 = v136;
  v80 = *(v136 + 64);
  v81 = *(v136 + 80);
  *v135 = *v67;
  *(v78 + 1) = *(v67 + 8);
  *(v78 + 3) = *(v67 + 24);
  *(v78 + 5) = *(v67 + 40);
  *(v78 + 49) = *(v67 + 49);
  sub_222B723A4(&v67[v77], v78 + v80, &unk_27D026290, &qword_222C96B40);
  *(v78 + v81) = v76;
  v82 = *v78;
  v83 = *(v78 + 3);
  v154 = *(v78 + 1);
  v155 = v83;
  v156[0] = *(v78 + 5);
  *(v156 + 9) = *(v78 + 49);
  v84 = *(v79 + 64);
  LODWORD(v141) = *(v78 + *(v79 + 80));
  v85 = v137;
  sub_222B723A4(v78 + v84, v137, &unk_27D026290, &qword_222C96B40);
  v143 = v37;
  v144 = v38;
  v150 = v154;
  v151 = v155;
  *v152 = v156[0];
  *&v152[9] = *(v156 + 9);
  sub_222C25FDC(&v150, &v153);
  if (v153 == 5)
  {
    sub_222B9801C(&v154);

    v71 = &unk_27D026290;
    v72 = &qword_222C96B40;
    v73 = v85;
    goto LABEL_48;
  }

  LODWORD(v136) = v153;
  v138 = v82;
  v86 = v131;
  sub_222B4FC6C(v61, v131, &qword_27D0257D8, &unk_222C990C0);
  if (v132[6](v86, 1, v133) == 1)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v94 = v86;
    v95 = v129;
    sub_222C26A98(v94, v129, type metadata accessor for MediaPlayClassification);
    v59 = *(v95 + 24);
    v142 = *(v95 + 16);
    v132 = (v128 + 48);
    v133 = (v128 + 56);

    LODWORD(v135) = 1;
    while (1)
    {
      if (v135)
      {
        v103 = v125;
        sub_222C26A30(v140 + ((*(v128 + 80) + 32) & ~*(v128 + 80)), v125, type metadata accessor for FeaturisedTurn);
        v104 = 0;
        v106 = v126;
        v105 = v127;
      }

      else
      {
        v104 = 1;
        v106 = v126;
        v105 = v127;
        v103 = v125;
      }

      (*v133)(v103, v104, 1, v105);
      sub_222B723A4(v103, v106, &qword_27D0253C8, &unk_222C98400);
      if ((*v132)(v106, 1, v105) == 1)
      {
        break;
      }

      v107 = v124;
      sub_222C26A98(v106, v124, type metadata accessor for FeaturisedTurn);
      v50 = *(v107 + *(v105 + 28));

      sub_222C26B00(v107, type metadata accessor for FeaturisedTurn);

      LODWORD(v135) = 0;
      if (v50)
      {
        v51 = v50;
        v96 = (v50 + 64);
        v48 = -1;
        while (1)
        {
          ++v48;
          v97 = v51[2];
          if (v48 == v97)
          {
            break;
          }

          if (v48 >= v97)
          {
            __break(1u);
            goto LABEL_81;
          }

          v50 = *(v96 - 4);
          v98 = *(v96 - 3);
          v100 = *(v96 - 2);
          v99 = *(v96 - 1);
          v101 = *v96;
          if (v50 == v142 && v98 == v59)
          {
            v50 = v142;
LABEL_69:

            v143 = v50;
            v144 = v98;
            v145 = v100;
            v146 = v99;
            v147 = v101;
            extractMediaReference(event:)(&v143, &v150);

            v92 = *(&v150 + 1);
            v93 = v150;
            v90 = *(&v151 + 1);
            v91 = v151;
            v88 = *&v152[8];
            v89 = *v152;
            v87 = *&v152[16];
            goto LABEL_70;
          }

          v96 += 5;
          if (sub_222C951FC())
          {
            goto LABEL_69;
          }
        }
      }
    }

    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v151 = 0u;
    memset(v152, 0, 18);
    v150 = 0u;
LABEL_70:
    sub_222C26B00(v129, type metadata accessor for MediaPlayClassification);
  }

  sub_222C9366C();
  v148[0] = v93;
  v148[1] = v92;
  v148[2] = v91;
  v148[3] = v90;
  v148[4] = v89;
  v148[5] = v88;
  v149 = v87;
  if (v92)
  {
    *&v150 = v93;
    *(&v150 + 1) = v92;
    *&v151 = v91;
    *(&v151 + 1) = v90;
    *v152 = v89;
    *&v152[8] = v88;
    LODWORD(v142) = v87;
    *&v152[16] = v87;
    sub_222B554C0(&v150, &v143);
    v108 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_222B4A9F8(0, *(v108 + 2) + 1, 1, v108);
    }

    v110 = *(v108 + 2);
    v109 = *(v108 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_222B4A9F8((v109 > 1), v110 + 1, 1, v108);
    }

    *(v108 + 2) = v110 + 1;
    v111 = &v108[56 * v110];
    *(v111 + 4) = v93;
    *(v111 + 5) = v92;
    *(v111 + 6) = v91;
    *(v111 + 7) = v90;
    *(v111 + 8) = v89;
    *(v111 + 9) = v88;
    *(v111 + 40) = v142;
  }

  else
  {
    v108 = MEMORY[0x277D84F90];
  }

  sub_222B4FCD4(v148, &qword_27D027030, &unk_222CA1D70);
  v112 = v154;

  sub_222B9801C(&v154);
  v113 = v130;
  v114 = v122;
  v115 = v137;
  sub_222B4FC6C(v137, &v122[*(v130 + 36)], &unk_27D026290, &qword_222C96B40);
  (*(v119 + 32))(v114, v134, v120);
  *(v114 + v113[5]) = v136;
  *(v114 + v113[6]) = v138;
  *(v114 + v113[7]) = v108;
  v116 = v114 + v113[8];
  *v116 = v112;
  *(v116 + 16) = xmmword_222C9A0B0;
  *(v116 + 32) = 0;
  *(v116 + 40) = 0;
  *(v116 + 48) = 2;
  *(v116 + 49) = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C48, &qword_222C96A20);
  v117 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_222C97C40;
  sub_222C26A98(v114, v118 + v117, type metadata accessor for MediaGroundTruth);
  sub_222B4FCD4(v115, &unk_27D026290, &qword_222C96B40);
  sub_222C26B00(v139, type metadata accessor for MediaInAppFollowupClassification);
  return v118;
}

uint64_t sub_222C24FFC(uint64_t a1)
{
  v3 = type metadata accessor for MediaInAppFollowupClassification(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  if ((sub_222BCB8C4() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v20);
      _os_log_impl(&dword_222B39000, v14, v15, "%s Followup play was not considered successful. Skipping.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    return 0;
  }

  if (*(a1 + *(v3 + 24)) > v6)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v7 = sub_222C9431C();
    __swift_project_value_buffer(v7, qword_280FE2340);
    sub_222C26A30(a1, v5, type metadata accessor for MediaInAppFollowupClassification);
    v8 = sub_222C942FC();
    v9 = sub_222C94A3C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315650;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v20);
      *(v10 + 12) = 2048;
      v12 = *&v5[*(v3 + 24)];
      sub_222C26B00(v5, type metadata accessor for MediaInAppFollowupClassification);
      *(v10 + 14) = v12;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v6;
      _os_log_impl(&dword_222B39000, v8, v9, "%s Follow-up took of %f longer than the maximum time of %f. Not generating ground truth.", v10, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    else
    {

      sub_222C26B00(v5, type metadata accessor for MediaInAppFollowupClassification);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_222C253A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MediaInAppFollowupClassification(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for FeaturisedTurn(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v82 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v77 - v20;
  v87 = a2;
  sub_222B41144(sub_222C26F34, a1, v15);
  v22 = v17;
  v24 = *(v17 + 48);
  v23 = (v17 + 48);
  v83 = v24;
  if (v24(v15, 1, v16) == 1)
  {
    v23 = a3;
    sub_222B4FCD4(v15, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
LABEL_52:
      swift_once();
    }

    v25 = sub_222C9431C();
    __swift_project_value_buffer(v25, qword_280FE2340);
    sub_222C26A30(a2, v8, type metadata accessor for MediaInAppFollowupClassification);
    v26 = sub_222C942FC();
    LOBYTE(a2) = sub_222C94A4C();
    if (os_log_type_enabled(v26, a2))
    {
      v27 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v91[0] = v16;
      *v27 = 136315394;
      if (qword_27D024730 != -1)
      {
LABEL_54:
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v91);
      *(v27 + 12) = 2080;
      v28 = sub_222C9360C();
      v30 = v29;
      sub_222C26B00(v8, type metadata accessor for MediaInAppFollowupClassification);
      v31 = sub_222B437C0(v28, v30, v91);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_222B39000, v26, a2, "%s Connected turn to the followup was not found. Turn ID=%s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    else
    {

      sub_222C26B00(v8, type metadata accessor for MediaInAppFollowupClassification);
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
    v60 = *(*(v59 - 8) + 56);
    v61 = v23;
  }

  else
  {
    v79 = a3;
    v78 = v21;
    sub_222C26A98(v15, v21, type metadata accessor for FeaturisedTurn);
    v32 = a2 + *(v6 + 20);
    a2 = *(v32 + 16);
    v33 = *(v32 + 24);
    v77 = v22;
    v80 = (v22 + 56);
    v81 = a1;

    v27 = 0;
    v86 = 0;
    while (1)
    {
      v26 = v81;
      v38 = *(v81 + 16);
      if (v86 == v38)
      {
        v39 = 1;
        v40 = v85;
        v41 = v84;
      }

      else
      {
        v40 = v85;
        v41 = v84;
        if (v86 >= v38)
        {
          __break(1u);
          goto LABEL_54;
        }

        v42 = v86;
        sub_222C26A30(v81 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v86, v84, type metadata accessor for FeaturisedTurn);
        v39 = 0;
        v8 = v42 + 1;
        v86 = v8;
      }

      (*v80)(v41, v39, 1, v16);
      sub_222B723A4(v41, v40, &qword_27D0253C8, &unk_222C98400);
      if (v83(v40, 1, v16) == 1)
      {
        break;
      }

      v43 = v82;
      sub_222C26A98(v40, v82, type metadata accessor for FeaturisedTurn);
      v44 = *(v43 + *(v16 + 28));

      sub_222C26B00(v43, type metadata accessor for FeaturisedTurn);

      v27 = v44;
      if (v44)
      {
        v34 = v44 + 64;
        v35 = -1;
        while (1)
        {
          ++v35;
          v36 = *(v44 + 16);
          if (v35 == v36)
          {
            break;
          }

          if (v35 >= v36)
          {
            __break(1u);
            goto LABEL_52;
          }

          v8 = *(v34 - 24);
          if (*(v34 - 32) != a2 || v8 != v33)
          {
            v34 += 40;
            if ((sub_222C951FC() & 1) == 0)
            {
              continue;
            }
          }

          sub_222B4183C(v45, &v88);

          swift_bridgeObjectRelease_n();

          v91[0] = v88;
          v91[1] = v89;
          v92[0] = v90[0];
          *(v92 + 9) = *(v90 + 9);
          v46 = v88;
          v93 = v89;
          *v94 = v90[0];
          *&v94[9] = *(v90 + 9);
          if (*(&v88 + 1))
          {
            v47 = v78;
            v48 = sub_222C13AC0(v78);
            v49 = *(v47 + *(v16 + 24));
            v50 = sub_222B41B48(v49);
            if (v50)
            {
              v51 = v50;
              v52 = v48 & 1;
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
              v54 = *(v53 + 64);
              v55 = *(v53 + 80);
              v56 = v79;
              *v79 = v51;
              *(v56 + 1) = v46;
              v57 = *v94;
              *(v56 + 3) = v93;
              *(v56 + 5) = v57;
              *(v56 + 49) = *&v94[9];

              sub_222B421FC(v49, (v56 + v54));

              sub_222C26B00(v47, type metadata accessor for FeaturisedTurn);
              *(v56 + v55) = v52;
              return (*(*(v53 - 8) + 56))(v56, 0, 1, v53);
            }

            sub_222B4FCD4(v91, &qword_27D025370, &qword_222C98310);
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v70 = sub_222C9431C();
            __swift_project_value_buffer(v70, qword_280FE2340);
            v71 = sub_222C942FC();
            v72 = sub_222C94A3C();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *&v88 = v74;
              *v73 = 136315138;
              if (qword_27D024730 != -1)
              {
                swift_once();
              }

              *(v73 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v88);
              _os_log_impl(&dword_222B39000, v71, v72, "%s USO Media Query was not found in turn related to followup. Session not valid for ground truth.", v73, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v74);
              MEMORY[0x223DCA8C0](v74, -1, -1);
              MEMORY[0x223DCA8C0](v73, -1, -1);
            }

            v69 = v47;
            goto LABEL_43;
          }

          v62 = v78;
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v63 = sub_222C9431C();
          __swift_project_value_buffer(v63, qword_280FE2340);
          v64 = sub_222C942FC();
          v65 = sub_222C94A3C();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v88 = v67;
            *v66 = 136315138;
            if (qword_27D024730 != -1)
            {
              swift_once();
            }

            *(v66 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v88);
            v68 = "%s Followup event was missing a played media item. Skipping.";
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v75 = sub_222C9431C();
    __swift_project_value_buffer(v75, qword_280FE2340);
    v64 = sub_222C942FC();
    v65 = sub_222C94A4C();
    v76 = os_log_type_enabled(v64, v65);
    v62 = v78;
    if (v76)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v91[0] = v67;
      *v66 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v66 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v91);
      v68 = "%s Invalid event id in classification. Could not find followup event.";
LABEL_34:
      _os_log_impl(&dword_222B39000, v64, v65, v68, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x223DCA8C0](v67, -1, -1);
      MEMORY[0x223DCA8C0](v66, -1, -1);
    }

LABEL_35:

    v69 = v62;
LABEL_43:
    sub_222C26B00(v69, type metadata accessor for FeaturisedTurn);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027028, &qword_222CA1D68);
    v60 = *(*(v59 - 8) + 56);
    v61 = v79;
  }

  return v60(v61, 1, 1, v59);
}

void sub_222C25FDC(void *a1@<X1>, char *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[6];
  if (v4 == 1)
  {
    v52 = *v2;
    v7 = a1[5];
    v8 = a1[3];
    v9 = sub_222C386C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027040, &unk_222CA34E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C9CD00;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = v5;
    *(inited + 56) = 2;
    *(inited + 64) = v7;
    *(inited + 72) = v6;
    *(inited + 80) = 1;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    v11 = sub_222B63C18(inited);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027048, &unk_222CA1E10);
    swift_arrayDestroy();

    v13 = sub_222B66CBC(v12);

    v15 = sub_222C6E9C4(v14, v13);

    v16 = sub_222C26C14(v15, v9, v11, sub_222C267B0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (qword_280FDFE78 != -1)
    {
LABEL_35:
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    v18 = sub_222C942FC();
    v19 = sub_222C94A3C();
    v53 = a2;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v59 = v21;
      *v20 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v59);
      _os_log_impl(&dword_222B39000, v18, v19, "%s User query to played media item comparison for in App Followup:", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223DCA8C0](v21, -1, -1);
      MEMORY[0x223DCA8C0](v20, -1, -1);
    }

    v54 = *(v16 + 16);
    v55 = v16;
    if (v54)
    {
      v16 = *(v16 + 16);
      v22 = (v55 + 80);
      do
      {
        v23 = *(v22 - 48);
        v24 = *(v22 - 5);
        v25 = *(v22 - 4);
        v27 = *(v22 - 3);
        v26 = *(v22 - 2);
        v58 = *(v22 - 1);
        v57 = *v22;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v28 = sub_222C942FC();
        a2 = sub_222C94A3C();

        if (os_log_type_enabled(v28, a2))
        {
          v56 = v27;
          v29 = v24;
          v30 = v23;
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v65[0] = v32;
          *v31 = 136315394;
          if (qword_27D024730 != -1)
          {
            swift_once();
          }

          *(v31 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, v65);
          *(v31 + 12) = 2080;
          LOBYTE(v59) = v30;
          *(&v59 + 1) = v29;
          v60 = v25;
          v61 = v56;
          v62 = v26;
          v63 = v58;
          v64 = v57;
          v33 = sub_222C944EC();
          v35 = sub_222B437C0(v33, v34, v65);

          *(v31 + 14) = v35;
          _os_log_impl(&dword_222B39000, v28, a2, "%s    %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v32, -1, -1);
          MEMORY[0x223DCA8C0](v31, -1, -1);
        }

        else
        {
        }

        v22 += 56;
        --v16;
      }

      while (v16);
    }

    v44 = (v55 + 48);
    v45 = -1;
    while (1)
    {
      v46 = v44;
      if (v45 - v54 == -1)
      {
        break;
      }

      if (++v45 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v44 += 7;
      if (!*(v46 - 16) && *v46)
      {
        v59 = v52;
        sub_222C26874(v55, v65);

        v47 = v65[0];
        goto LABEL_33;
      }
    }

    v48 = sub_222C942FC();
    v49 = sub_222C94A3C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v59 = v51;
      *v50 = 136315138;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v50 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v59);
      _os_log_impl(&dword_222B39000, v48, v49, "%s User did not specify a song name in the query. Skipping.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x223DCA8C0](v51, -1, -1);
      MEMORY[0x223DCA8C0](v50, -1, -1);
    }

    v47 = 5;
LABEL_33:
    *v53 = v47;
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v36 = sub_222C9431C();
    __swift_project_value_buffer(v36, qword_280FE2340);

    v37 = sub_222C942FC();
    v38 = sub_222C94A3C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v59 = v40;
      *v39 = 136315394;
      if (qword_27D024730 != -1)
      {
        swift_once();
      }

      *(v39 + 4) = sub_222B437C0(qword_27D027000, *algn_27D027008, &v59);
      *(v39 + 12) = 2080;
      v65[0] = v4;
      type metadata accessor for INMediaItemType(0);
      v41 = sub_222C944EC();
      v43 = sub_222B437C0(v41, v42, &v59);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_222B39000, v37, v38, "%s Followup was to a non song media type %s. Only songs are currently supported for followups.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v40, -1, -1);
      MEMORY[0x223DCA8C0](v39, -1, -1);
    }

    *a2 = 5;
  }
}

uint64_t sub_222C267B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a3)
  {
    if (a5)
    {
      sub_222B78598();
      sub_222C94BBC();
      v6._countAndFlagsBits = sub_222C94BBC();
      v8 = String.scoreRatcliffObershelp(between:)(v6);
      v7 = *&v8.is_nil;

      return v7;
    }
  }

  return result;
}

uint64_t sub_222C26874@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v4 = 0;
  v5 = *v2;
  v6 = result + 16;
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = (v6 + 56 * v4);
  while (v7 != v4)
  {
    if (v4 >= v7)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_22;
    }

    v11 = v9[4];
    ++v4;
    v9 += 7;
    if (v11)
    {
      v23 = *(v9 - 40);
      v22 = *(v9 - 4);
      v13 = *(v9 - 2);
      v12 = *(v9 - 1);
      v14 = *v9;
      v15 = *(v9 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v15;
      if ((result & 1) == 0)
      {
        result = sub_222B4CC98(0, *(v8 + 16) + 1, 1);
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_222B4CC98((v16 > 1), v17 + 1, 1);
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 56 * v17;
      *(v18 + 32) = v23;
      *(v18 + 40) = v22;
      *(v18 + 48) = v11;
      *(v18 + 56) = v13;
      *(v18 + 64) = v12;
      *(v18 + 72) = v14;
      *(v18 + 80) = v24;
      v4 = v10;
      goto LABEL_2;
    }
  }

  v19 = *(v8 + 16);
  if (v19)
  {
    v20 = (v8 + 80);
    do
    {
      if (*v20)
      {
        if (v5 > 0.0)
        {
LABEL_18:
          v21 = 3;
          goto LABEL_20;
        }
      }

      else if (v5 > *(v20 - 1))
      {
        goto LABEL_18;
      }

      v20 += 7;
      --v19;
    }

    while (v19);
  }

  v21 = 4;
LABEL_20:

  *a2 = v21;
  return result;
}

uint64_t sub_222C26A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C26A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C26B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222C26B64()
{
  result = qword_27D027038;
  if (!qword_27D027038)
  {
    type metadata accessor for MediaGroundTruth(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaInAppFollowupGroundTruthGenerator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaInAppFollowupGroundTruthGenerator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_222C26C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v49 = MEMORY[0x277D84F90];
    sub_222B4CC98(0, v5, 0);
    v47 = v49;
    v9 = v4 + 56;
    result = sub_222C94C2C();
    v10 = result;
    v11 = 0;
    v37 = v4 + 64;
    v38 = v5;
    v39 = a2;
    v40 = a3;
    v41 = v4 + 56;
    v42 = v4;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v4 + 32))
    {
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_31;
      }

      v45 = *(v4 + 36);
      v14 = *(*(v4 + 48) + v10);
      if (*(a2 + 16) && (v15 = sub_222B95ADC(), (v16 & 1) != 0))
      {
        v17 = (*(a2 + 56) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
      }

      else
      {
        v19 = 0;
        v18 = 0;
      }

      v46 = v10 >> 6;
      if (*(a3 + 16))
      {
        v20 = sub_222B95ADC();
        if (v21)
        {
          v22 = (*(a3 + 56) + 16 * v20);
          v24 = *v22;
          v23 = v22[1];
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }
      }

      else
      {
        v24 = 0;
        v23 = 0;
      }

      result = a4(v14, v19, v18, v24, v23);
      v26 = v47;
      v50 = v47;
      v28 = *(v47 + 16);
      v27 = *(v47 + 24);
      if (v28 >= v27 >> 1)
      {
        v48 = result;
        v44 = v25;
        sub_222B4CC98((v27 > 1), v28 + 1, 1);
        v25 = v44;
        result = v48;
        v26 = v50;
      }

      *(v26 + 16) = v28 + 1;
      v47 = v26;
      v29 = v26 + 56 * v28;
      *(v29 + 32) = v14;
      *(v29 + 40) = v19;
      *(v29 + 48) = v18;
      *(v29 + 56) = v24;
      *(v29 + 64) = v23;
      *(v29 + 72) = result;
      *(v29 + 80) = v25 & 1;
      v4 = v42;
      v12 = 1 << *(v42 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v9 = v41;
      v30 = *(v41 + 8 * v46);
      if ((v30 & (1 << v10)) == 0)
      {
        goto LABEL_33;
      }

      if (v45 != *(v42 + 36))
      {
        goto LABEL_34;
      }

      v31 = v30 & (-2 << (v10 & 0x3F));
      if (v31)
      {
        v12 = __clz(__rbit64(v31)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v38;
      }

      else
      {
        v32 = v46 << 6;
        v33 = v46 + 1;
        v13 = v38;
        v34 = (v37 + 8 * v46);
        while (v33 < (v12 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_222B7D9C4(v10, v45, 0);
            v12 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_222B7D9C4(v10, v45, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      a2 = v39;
      a3 = v40;
      if (v11 == v13)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

void sub_222C26F84(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v24 - v14);
  v17 = *v5;
  v16 = v5[1];
  v18 = *(*v5 + 16);
  if (v16 == v18)
  {
    v19 = *(v12 + 56);

    v19(a5, 1, 1, v11, v13);
  }

  else
  {
    if (v16 >= v18)
    {
      __break(1u);
    }

    else
    {
      v25 = v12;
      v20 = *((a3)(0, v13) - 8);
      v21 = v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16;
      v5[1] = v16 + 1;
      v22 = *(v11 + 48);
      v23 = v5[2];
      *v15 = v23;
      sub_222C29A80(v21, v15 + v22, a4);
      if (!__OFADD__(v23, 1))
      {
        v5[2] = v23 + 1;
        sub_222B723A4(v15, a5, a1, a2);
        (*(v25 + 56))(a5, 0, 1, v11);
        return;
      }
    }

    __break(1u);
  }
}

id DiagnosticLoggingHelper.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_222C9429C();
  v4 = v3;
  v5 = type metadata accessor for PIMSStoreCoreData();
  v6 = swift_allocObject();
  v7 = sub_222C769D4(v2, v4, 0);

  if (v7)
  {
    *(v6 + 16) = v7;
    *(v6 + 24) = [v7 newBackgroundContext];
    v8 = &protocol witness table for PIMSStoreCoreData;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v6 = 0;
    v5 = 0;
    v8 = 0;
  }

  v9 = sub_222C9428C();
  v11 = v10;
  v12 = type metadata accessor for PICSStoreCoreData();
  v13 = swift_allocObject();
  v14 = sub_222BE3CC0(v9, v11, 0);

  if (v14)
  {
    *(v13 + 16) = v14;
    result = [v14 newBackgroundContext];
    *(v13 + 24) = result;
    v16 = &protocol witness table for PICSStoreCoreData;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v16 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v5;
  a1[4] = v8;
  a1[5] = v13;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = v12;
  a1[9] = v16;
  return result;
}

__n128 DiagnosticLoggingHelper.init(pimsStore:picsStore:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t DiagnosticLoggingHelper.generateMediaSuggestionStoreDebugString(verbose:withMediaTitles:)(char a1, char a2)
{
  *(v3 + 224) = v2;
  *(v3 + 345) = a2;
  *(v3 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027058, &qword_222CA1E38);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v4 = type metadata accessor for PlusMediaSuggestion(0);
  *(v3 + 248) = v4;
  *(v3 + 256) = *(v4 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C27438, 0, 0);
}

uint64_t sub_222C27438()
{
  v76 = v0;
  *(v0 + 152) = 0;
  v1 = *(v0 + 224);
  *(v0 + 160) = 0xE000000000000000;
  sub_222B4FC6C(v1, v0 + 112, &qword_27D027060, &qword_222CA1E40);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 344);
    sub_222B405A0((v0 + 112), v0 + 72);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v3);
    result = (*(v4 + 40))(v3, v4);
    v6 = result;
    if ((v2 & 1) == 0)
    {
      v70 = *(result + 16);
      if (v70)
      {
        v7 = 0;
        v67 = *(v0 + 248);
        v68 = *(v0 + 256);
        v66 = MEMORY[0x277D84F90];
        v69 = result;
        while (v7 < *(v6 + 16))
        {
          v8 = *(v0 + 288);
          v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v71 = *(v68 + 72);
          sub_222C29A80(v6 + v72 + v71 * v7, v8, type metadata accessor for PlusMediaSuggestion);
          v9 = *(v8 + *(v67 + 44));
          if (*(v9 + 16) && (sub_222C952FC(), sub_222C9452C(), v10 = sub_222C9534C(), v11 = -1 << *(v9 + 32), v12 = v10 & ~v11, ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
          {
            v13 = ~v11;
            while (1)
            {
              v14 = *(*(v9 + 48) + v12);
              if (v14 <= 3 && *(*(v9 + 48) + v12) > 1u && v14 != 3)
              {
                break;
              }

              v15 = sub_222C951FC();

              if (v15)
              {
                goto LABEL_18;
              }

              v12 = (v12 + 1) & v13;
              if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

LABEL_18:
            sub_222C29B48(*(v0 + 288), *(v0 + 280), type metadata accessor for PlusMediaSuggestion);
            v16 = v66;
            v75[0] = v66;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_222B4C630(0, *(v66 + 16) + 1, 1);
              v16 = v75[0];
            }

            v6 = v69;
            v18 = *(v16 + 16);
            v17 = *(v16 + 24);
            if (v18 >= v17 >> 1)
            {
              sub_222B4C630((v17 > 1), v18 + 1, 1);
              v16 = v75[0];
            }

            v19 = *(v0 + 280);
            *(v16 + 16) = v18 + 1;
            v66 = v16;
            result = sub_222C29B48(v19, v16 + v72 + v18 * v71, type metadata accessor for PlusMediaSuggestion);
          }

          else
          {
LABEL_5:
            result = sub_222C29AE8(*(v0 + 288), type metadata accessor for PlusMediaSuggestion);
            v6 = v69;
          }

          if (++v7 == v70)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_51;
      }

      v66 = MEMORY[0x277D84F90];
LABEL_25:

      v6 = v66;
    }

    *(v0 + 296) = v6;
    if (*(v0 + 345) != 1)
    {
      v39 = *(v0 + 248);
      sub_222C94D1C();

      v73 = *(v6 + 16);
      *(v0 + 200) = v73;
      v40 = sub_222C9517C();
      MEMORY[0x223DC9330](v40);

      MEMORY[0x223DC9330](0x7364726F63657220, 0xE90000000000000ALL);
      MEMORY[0x223DC9330](0xD000000000000018, 0x8000000222CACA70);

      while (1)
      {
        v53 = *(v0 + 232);
        v52 = *(v0 + 240);
        sub_222C26F84(&qword_27D027068, &qword_222CA1E48, type metadata accessor for PlusMediaSuggestion, type metadata accessor for PlusMediaSuggestion, v53);
        sub_222B723A4(v53, v52, &qword_27D027058, &qword_222CA1E38);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027068, &qword_222CA1E48);
        if ((*(*(v54 - 8) + 48))(v52, 1, v54) == 1)
        {

          v21 = *(v0 + 152);
          v20 = *(v0 + 160);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
          goto LABEL_44;
        }

        v55 = *(v0 + 240);
        v56 = *v55;
        sub_222C29B48(v55 + *(v54 + 48), *(v0 + 264), type metadata accessor for PlusMediaSuggestion);
        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_222C94D1C();

        v75[0] = 0xD000000000000018;
        v75[1] = 0x8000000222CACA90;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        v57 = *(v0 + 264);
        *(v0 + 208) = v56 + 1;
        v58 = sub_222C9517C();
        MEMORY[0x223DC9330](v58);

        MEMORY[0x223DC9330](543584032, 0xE400000000000000);
        *(v0 + 216) = v73;
        v59 = sub_222C9517C();
        MEMORY[0x223DC9330](v59);

        MEMORY[0x223DC9330](0xD000000000000012, 0x8000000222CACAB0);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        v75[0] = 0x909093A4449;
        v75[1] = 0xE600000000000000;
        sub_222C9367C();
        sub_222B9E5D0();
        v60 = sub_222C9517C();
        MEMORY[0x223DC9330](v60);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        strcpy(v75, "Media ID:\t\t");
        HIDWORD(v75[1]) = -352321536;
        v61 = (v57 + v39[6]);
        MEMORY[0x223DC9330](*v61, v61[1]);
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        v62 = 0xE000000000000000;
        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_222C94D1C();

        v63 = 0;
        strcpy(v75, "Storefront:\t\t");
        HIWORD(v75[1]) = -4864;
        if (v61[3] != 1 && v61[5])
        {
          v63 = v61[4];
        }

        v41 = *(v0 + 264);
        MEMORY[0x223DC9330](v63, v62);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        *(v0 + 168) = 0;
        *(v0 + 176) = 0xE000000000000000;
        MEMORY[0x223DC9330](0x6D617473656D6954, 0xEC00000009093A70);
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](*(v0 + 168), *(v0 + 176));

        v43 = UsoEntity_common_MediaItem.convertUSOMediaItemToString()();
        countAndFlagsBits = v43.value._countAndFlagsBits;
        if (v43.value._object)
        {
          object = v43.value._object;
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        strcpy(v75, "USO key:\t\t");
        BYTE3(v75[1]) = 0;
        HIDWORD(v75[1]) = -369098752;
        MEMORY[0x223DC9330](countAndFlagsBits, object);

        MEMORY[0x223DC9330](v75[0], v75[1]);

        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_222C94D1C();

        v75[0] = 0xD000000000000011;
        v75[1] = 0x8000000222CACAD0;
        v45 = *(v41 + v39[7]);
        v46 = type metadata accessor for ThinMediaGroundTruth(0);
        v47 = MEMORY[0x223DC94D0](v45, v46);
        MEMORY[0x223DC9330](v47);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        strcpy(v75, "Tags:\t\t\t");
        BYTE1(v75[1]) = 0;
        WORD1(v75[1]) = 0;
        HIDWORD(v75[1]) = -402653184;
        sub_222B654C0();
        v48 = sub_222C948FC();
        MEMORY[0x223DC9330](v48);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        *(v0 + 184) = 0;
        *(v0 + 192) = 0xE000000000000000;
        MEMORY[0x223DC9330](0x9093A65726F6353, 0xE900000000000009);
        sub_222C948DC();
        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](*(v0 + 184), *(v0 + 192));

        v75[0] = 0;
        v75[1] = 0xE000000000000000;
        sub_222C94D1C();

        v75[0] = 0x73694865726F6353;
        v75[1] = 0xEF09093A79726F74;
        v49 = *(v41 + v39[9]);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0261D8, &qword_222CA1E50);
        v51 = MEMORY[0x223DC94D0](v49, v50);
        MEMORY[0x223DC9330](v51);

        MEMORY[0x223DC9330](10, 0xE100000000000000);
        MEMORY[0x223DC9330](v75[0], v75[1]);

        MEMORY[0x223DC9330](0xD000000000000048, 0x8000000222CACAF0);
        sub_222C29AE8(v41, type metadata accessor for PlusMediaSuggestion);
      }

      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v22 = type metadata accessor for AMSSongMetadataClient();
    v23 = swift_allocObject();
    type metadata accessor for AMSClient();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    type metadata accessor for AMPMetadataHelper();
    inited = swift_initStackObject();
    *(v0 + 304) = inited;
    inited[5] = v22;
    inited[6] = &protocol witness table for AMSSongMetadataClient;
    inited[2] = v23;
    v26 = *(v6 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v74 = MEMORY[0x277D84F90];
      v29 = *(v0 + 248);
      v28 = *(v0 + 256);
      sub_222B4C418(0, v26, 0);
      v27 = v74;
      v30 = v6 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v31 = *(v28 + 72);
      do
      {
        v32 = *(v0 + 272);
        sub_222C29A80(v30, v32, type metadata accessor for PlusMediaSuggestion);
        v33 = (v32 + *(v29 + 24));
        v34 = *v33;
        v35 = v33[1];

        sub_222C29AE8(v32, type metadata accessor for PlusMediaSuggestion);
        v37 = *(v74 + 16);
        v36 = *(v74 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_222B4C418((v36 > 1), v37 + 1, 1);
        }

        *(v74 + 16) = v37 + 1;
        v38 = v74 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        v30 += v31;
        --v26;
      }

      while (v26);
    }

    *(v0 + 312) = v27;
    v65 = swift_task_alloc();
    *(v0 + 320) = v65;
    *v65 = v0;
    v65[1] = sub_222C28214;

    return sub_222BFF544(v27);
  }

  else
  {
    sub_222B4FCD4(v0 + 112, &qword_27D027060, &qword_222CA1E40);
    MEMORY[0x223DC9330](0xD000000000000036, 0x8000000222CACA30);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
LABEL_44:

    v64 = *(v0 + 8);

    return v64(v21, v20);
  }
}
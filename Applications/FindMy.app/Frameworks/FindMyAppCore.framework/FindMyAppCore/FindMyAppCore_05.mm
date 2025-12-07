unint64_t sub_92BB0()
{
  result = qword_F27C8;
  if (!qword_F27C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F27D0, &qword_C3E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27C8);
  }

  return result;
}

unint64_t sub_92C40()
{
  result = qword_F2820;
  if (!qword_F2820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2808, &qword_C3E50);
    sub_92CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2820);
  }

  return result;
}

unint64_t sub_92CCC()
{
  result = qword_F2828;
  if (!qword_F2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2800, &qword_C3E48);
    sub_A8CC(&qword_F2830, &qword_F27F8, &qword_C3E40, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2828);
  }

  return result;
}

uint64_t sub_92DB0(uint64_t a1)
{
  v2 = sub_B7560();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6CB0();
}

unint64_t sub_92E7C()
{
  result = qword_F28F8;
  if (!qword_F28F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F28F0, &qword_C3F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F28F8);
  }

  return result;
}

unint64_t sub_92F00()
{
  result = qword_F2908;
  if (!qword_F2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2908);
  }

  return result;
}

unint64_t sub_92F60()
{
  result = qword_F2918;
  if (!qword_F2918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2768, &qword_C3DC8);
    sub_93018();
    sub_A8CC(&qword_F2940, &qword_F2948, &unk_C3FA0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2918);
  }

  return result;
}

unint64_t sub_93018()
{
  result = qword_F2920;
  if (!qword_F2920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2760, &qword_C3DC0);
    sub_93100(&qword_F2928, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_A8CC(&qword_F2930, &qword_F2938, &qword_C3F98, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2920);
  }

  return result;
}

uint64_t sub_93100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_93150@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_A310(v2, &v14 - v9, &qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6A40();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_B7B50();
    v13 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double DetailsSectionTemplate.body.getter@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_B6EB0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2950, &qword_C3FD0);
  return sub_933A4(v2, a2 + *(v4 + 44));
}

double sub_933A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A18, &qword_C4080);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v17 - v8);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_B7760();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A20, &qword_C4088);
  sub_935A4(a1, v9 + *(v11 + 44));
  v12 = (a1 + *(type metadata accessor for DetailsSectionTemplate(0) + 36));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
  }

  else
  {
    v14 = 0;
  }

  sub_A310(v9, v7, &qword_F2A18, &qword_C4080);
  sub_A310(v7, a2, &qword_F2A18, &qword_C4080);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A28, &qword_C4090) + 48));
  *v15 = v14;
  v15[1] = v13;
  swift_bridgeObjectRetain_n();
  sub_A194(v9, &qword_F2A18, &qword_C4080);

  sub_A194(v7, &qword_F2A18, &qword_C4080);

  return result;
}

void sub_935A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_B6FE0();
  v80 = *(v3 - 8);
  v81 = v3;
  __chkstk_darwin(v3);
  v75 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A30, &qword_C4098);
  __chkstk_darwin(v76);
  v73 = (&v57 - v5);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A38, &qword_C40A0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A40, &qword_C40A8);
  v8 = __chkstk_darwin(v7 - 8);
  v82 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v57 - v10;
  v69 = sub_B6A40();
  v11 = *(v69 - 8);
  v12 = __chkstk_darwin(v69);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA8, &qword_C40B0);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A48, &qword_C40B8);
  __chkstk_darwin(v65);
  v68 = &v57 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A50, &qword_C40C0);
  v21 = __chkstk_darwin(v67);
  v72 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v66 = &v57 - v24;
  __chkstk_darwin(v23);
  v70 = &v57 - v25;
  sub_B7A60();
  v71 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = (a1 + *(type metadata accessor for DetailsSectionTemplate(0) + 32));
  v26 = *v59;
  v64 = sub_B6C60();
  v27 = *(v64 + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v61 = sub_B6E70();
  v29 = *(v61 - 8);
  v60 = *(v29 + 104);
  v63 = v29 + 104;
  v60(&v19[v27], v28, v61);
  *v19 = v26;
  *(v19 + 1) = v26;
  *&v19[*(v17 + 52)] = sub_B74F0();
  *&v19[*(v17 + 56)] = 256;
  sub_B74D0();
  sub_93150(v16);
  v30 = enum case for ColorScheme.dark(_:);
  v57 = a1;
  v58 = *(v11 + 104);
  v31 = v69;
  v58(v14, enum case for ColorScheme.dark(_:), v69);
  sub_B6A30();
  v32 = *(v11 + 8);
  v32(v14, v31);
  v32(v16, v31);
  v33 = sub_B7510();

  v34 = v19;
  v35 = v68;
  sub_AB00(v34, v68, &qword_F1FA8, &qword_C40B0);
  v36 = v35 + *(v65 + 36);
  *v36 = v33;
  *(v36 + 8) = xmmword_C3FB0;
  *(v36 + 24) = 0x4000000000000000;
  v37 = v57;
  sub_93150(v16);
  v58(v14, v30, v31);
  LOBYTE(v33) = sub_B6A30();
  v32(v14, v31);
  v32(v16, v31);
  if (v33)
  {
    v38 = 0.05;
  }

  else
  {
    v38 = 0.34;
  }

  v39 = v66;
  sub_AB00(v35, v66, &qword_F2A48, &qword_C40B8);
  *(v39 + *(v67 + 36)) = v38;
  v40 = v70;
  sub_AB00(v39, v70, &qword_F2A50, &qword_C40C0);
  v41 = v59[1];
  v42 = sub_B6EA0();
  v43 = v73;
  *v73 = v42;
  *(v43 + 8) = v41;
  *(v43 + 16) = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A58, &unk_C40C8);
  v45 = sub_93EEC(v37, v43 + *(v44 + 44));
  v46 = v76;
  v47 = (v43 + *(v76 + 36));
  (v60)(v47 + *(v64 + 20), v62, v61, v45);
  *v47 = v26;
  v47[1] = v26;
  *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)) = 256;
  v48 = v75;
  sub_B6FD0();
  v49 = sub_94A18();
  v50 = v74;
  sub_B7330();
  (*(v80 + 8))(v48, v81);
  sub_A194(v43, &qword_F2A30, &qword_C4098);
  v84 = v46;
  v85 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v78;
  v51 = v79;
  sub_B7360();
  (*(v77 + 8))(v50, v51);
  v53 = v72;
  sub_A310(v40, v72, &qword_F2A50, &qword_C40C0);
  v54 = v82;
  sub_A310(v52, v82, &qword_F2A40, &qword_C40A8);
  v55 = v83;
  sub_A310(v53, v83, &qword_F2A50, &qword_C40C0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A78, &qword_C40E0);
  sub_A310(v54, v55 + *(v56 + 48), &qword_F2A40, &qword_C40A8);
  sub_A194(v52, &qword_F2A40, &qword_C40A8);
  sub_A194(v40, &qword_F2A50, &qword_C40C0);
  sub_A194(v54, &qword_F2A40, &qword_C40A8);
  sub_A194(v53, &qword_F2A50, &qword_C40C0);
}

double sub_93EEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for DetailsSectionTemplate(0);
  v37 = *(v3 - 1);
  __chkstk_darwin(v3);
  v38 = v4;
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A80, &unk_C40E8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v36 - v9;
  v10 = type metadata accessor for DetailsSectionHeaderView(0);
  v11 = __chkstk_darwin(v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  sub_B7A60();
  v40 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = v3[6];
  v16 = (a1 + v3[5]);
  v18 = *v16;
  v17 = v16[1];
  v19 = *(v10 + 20);
  v20 = sub_B63C0();
  (*(*(v20 - 8) + 16))(&v14[v19], a1 + v15, v20);
  *v14 = v18;
  *(v14 + 1) = v17;
  v21 = *(v10 + 24);
  v22 = qword_EEAD8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  v24 = __swift_project_value_buffer(v23, qword_FAE38);
  sub_94DA8(v24, &v14[v21], type metadata accessor for DetailsSectionHeaderView.Style);
  v45 = *(a1 + v3[7]);
  v25 = v39;
  sub_94DA8(a1, v39, type metadata accessor for DetailsSectionTemplate);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = swift_allocObject();
  sub_30658(v25, v27 + v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A88, &qword_C40F8);
  sub_A8CC(&qword_F2A90, &qword_F2A88, &qword_C40F8, &protocol conformance descriptor for [A]);
  sub_94D00();
  sub_94D54();
  v28 = v42;
  sub_B76F0();
  v29 = v41;
  sub_94DA8(v14, v41, type metadata accessor for DetailsSectionHeaderView);
  v30 = *(v6 + 16);
  v31 = v43;
  v30(v43, v28, v5);
  v32 = v44;
  sub_94DA8(v29, v44, type metadata accessor for DetailsSectionHeaderView);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AA8, &unk_C4100);
  v30((v32 + *(v33 + 48)), v31, v5);
  v34 = *(v6 + 8);
  v34(v28, v5);
  sub_94E10(v14);
  v34(v31, v5);
  sub_94E10(v29);

  return result;
}

double sub_943D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_94E6C(a1, v15);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + *(type metadata accessor for DetailsSectionTemplate(0) + 28));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 272 * v9;
    v12 = *(v10 - 240);
    v11 = *(v10 - 232);

    if (v7 != v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    if (v7)
    {
LABEL_9:
      v13 = sub_B7DD0();
      goto LABEL_10;
    }
  }

  if (v6 != v11)
  {
    goto LABEL_9;
  }

  v13 = 1;
LABEL_10:

  sub_8DB30(v15, v13 & 1, a3);

  return result;
}

double sub_94514()
{
  result = _UISheetCornerRadius;
  xmmword_FAE50 = _UISheetCornerRadius;
  return result;
}

uint64_t sub_94548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_B63C0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_94690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_B63C0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for DetailsSectionTemplate(uint64_t a1)
{
  result = qword_F29B0;
  if (!qword_F29B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_94810(uint64_t a1)
{
  sub_9491C(319);
  if (v1 <= 0x3F)
  {
    sub_B63C0();
    if (v2 <= 0x3F)
    {
      sub_94974(319, &qword_F29C0, &type metadata for DetailsSectionRowView.State, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_94974(319, &unk_F29C8, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_9491C(uint64_t a1)
{
  if (!qword_F2260)
  {
    sub_B6A40();
    v1 = sub_B6A50();
    if (!v2)
    {
      atomic_store(v1, &qword_F2260);
    }
  }
}

void sub_94974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_94A18()
{
  result = qword_F2A60;
  if (!qword_F2A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2A30, &qword_C4098);
    sub_A8CC(&qword_F2A68, &qword_F2A70, &qword_C40D8, &protocol conformance descriptor for VStack<A>);
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2A60);
  }

  return result;
}

uint64_t sub_94AFC()
{
  v1 = type metadata accessor for DetailsSectionTemplate(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_B6A40();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_B63C0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_94C80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailsSectionTemplate(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_943D0(a1, v6, a2);
}

unint64_t sub_94D00()
{
  result = qword_F2A98;
  if (!qword_F2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2A98);
  }

  return result;
}

unint64_t sub_94D54()
{
  result = qword_F2AA0;
  if (!qword_F2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2AA0);
  }

  return result;
}

uint64_t sub_94DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_94E10(uint64_t a1)
{
  v2 = type metadata accessor for DetailsSectionHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DelegatedSharesReportingState.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedURLShare(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9586C(v1, v15);
  v16 = (*(v7 + 48))(v15, 2, v6);
  if (v16)
  {
    sub_B7EC0(v16 != 1);
  }

  else
  {
    sub_958D0(v15, v12);
    sub_B7EC0(2uLL);
    sub_95940(v12, v10);
    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      sub_B7ED0(0);
      sub_A194(v12, &qword_F0A10, &qword_C01B0);
    }

    else
    {
      sub_46760(v10, v5);
      sub_B7ED0(1u);
      sub_B64C0();
      sub_959B0(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      sub_B7880();
      sub_B6550();
      sub_959B0(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_B7880();
      sub_B65A0();
      sub_959B0(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_B7880();
      sub_B7980();
      sub_B7EC0(v5[*(v2 + 32)]);
      sub_B7EC0(*&v5[*(v2 + 36)]);
      sub_A194(v12, &qword_F0A10, &qword_C01B0);
      sub_95E34(v5, type metadata accessor for DelegatedURLShare);
    }
  }
}

Swift::Int DelegatedSharesReportingState.hashValue.getter()
{
  sub_B7EB0();
  DelegatedSharesReportingState.hash(into:)(v1);
  return sub_B7EE0();
}

Swift::Int sub_952F0()
{
  sub_B7EB0();
  DelegatedSharesReportingState.hash(into:)(v1);
  return sub_B7EE0();
}

uint64_t DelegatedSharesReportingStatusProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v32 = a2;
  v3 = type metadata accessor for DelegatedURLShare(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C00, &qword_C41D8);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C08, &qword_C41E0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_9586C(a1, &v29 - v18);
  sub_9586C(v32, &v19[v20]);
  v21 = *(v7 + 48);
  v22 = v21(v19, 2, v6);
  if (!v22)
  {
    v32 = v9;
    v23 = v31;
    sub_9586C(v19, v15);
    if (v21(&v19[v20], 2, v6))
    {
      sub_A194(v15, &qword_F0A10, &qword_C01B0);
      goto LABEL_9;
    }

    v25 = *(v10 + 48);
    sub_958D0(v15, v12);
    sub_958D0(&v19[v20], &v12[v25]);
    v26 = *(v30 + 48);
    if (v26(v12, 1, v23) == 1)
    {
      if (v26(&v12[v25], 1, v23) == 1)
      {
        sub_A194(v12, &qword_F0A10, &qword_C01B0);
        goto LABEL_8;
      }
    }

    else
    {
      v27 = v32;
      sub_95940(v12, v32);
      if (v26(&v12[v25], 1, v23) != 1)
      {
        sub_46760(&v12[v25], v5);
        MyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0(v27, v5);
        sub_95E34(v5, type metadata accessor for DelegatedURLShare);
        sub_95E34(v27, type metadata accessor for DelegatedURLShare);
        sub_A194(v12, &qword_F0A10, &qword_C01B0);
        if (MyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_95E34(v19, type metadata accessor for DelegatedSharesReportingState);
        return 0;
      }

      sub_95E34(v27, type metadata accessor for DelegatedURLShare);
    }

    sub_A194(v12, &qword_F2C00, &qword_C41D8);
    goto LABEL_17;
  }

  if (v22 == 1)
  {
    if (v21(&v19[v20], 2, v6) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_95E34(v19, type metadata accessor for DelegatedSharesReportingState);
    return 1;
  }

  if (v21(&v19[v20], 2, v6) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_A194(v19, &qword_F2C08, &qword_C41E0);
  return 0;
}

uint64_t sub_9586C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_958D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_95940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_959B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_95A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_95AE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_95B70(uint64_t a1)
{
  sub_95DD0(319, &unk_F2B40, type metadata accessor for DelegatedURLShare, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_95C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_95C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_95D34(uint64_t a1)
{
  sub_95DD0(319, &qword_F2BD0, type metadata accessor for DelegatedSharesReportingState, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_95DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_95E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *LostModeManagementSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for LostModeManagementSectionViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t LostModeManagementSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_B63C0();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v5 - 8);
  v7 = v42 - v6;
  v8 = type metadata accessor for DetailsSectionTemplate(0);
  v9 = __chkstk_darwin(v8);
  v11 = (v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v45 = v42 - v12;
  v13 = v1[1];
  v46 = *v1;
  v58 = v46;
  v59 = v13;
  v14 = v13;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v15 = v51;
  swift_getKeyPath();
  v58 = v15;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v16 = v15 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  LODWORD(v16) = *(v16 + *(type metadata accessor for LostAccessory(0) + 24));

  if (v16 == 1)
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v17 = sub_B62F0();
    v18 = __swift_project_value_buffer(v17, qword_FADB0);
    v19 = *(v17 - 8);
    (*(v19 + 16))(v7, v18, v17);
    (*(v19 + 56))(v7, 0, 1, v17);
  }

  else
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v20 = sub_B62F0();
    v21 = __swift_project_value_buffer(v20, qword_FADB0);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v7, v21, v20);
    (*(v22 + 56))(v7, 0, 1, v20);
  }

  v23 = sub_B78D0();
  v25 = v24;
  sub_A194(v7, &unk_F17B0, &qword_BE7D0);
  sub_B6380();
  v58 = v46;
  v59 = v14;
  v26 = sub_96688();
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v61 = &type metadata for SolariumFeatureFlag;
  v62 = sub_28360();
  v27 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v58);
  if (v27)
  {
    v28 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v28 = xmmword_FAE50;
  }

  *(v11 + v8[8]) = v28;
  v29 = (v11 + v8[5]);
  *v29 = v23;
  v29[1] = v25;
  (*(v2 + 32))(v11 + v8[6], v4, v43);
  *(v11 + v8[7]) = v26;
  v30 = (v11 + v8[9]);
  *v30 = 0;
  v30[1] = 0;
  sub_9AA14(v11, v45, type metadata accessor for DetailsSectionTemplate);
  v51 = v46;
  v52 = v14;
  sub_B75E0();
  v31 = v58;
  v32 = v59;
  v33 = v60;
  swift_getKeyPath();
  v55 = v31;
  v56 = v32;
  v57 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C20, &qword_C4278);
  sub_B76B0();

  v34 = v58;
  v35 = v59;
  v36 = v60;
  v37 = v61;

  swift_getKeyPath();
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v54 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C28, &qword_C42A8);
  sub_B76B0();

  sub_9A318(v36, v37);
  v47 = v49;
  v48 = v50;
  v38 = swift_allocObject();
  *(v38 + 16) = v46;
  *(v38 + 24) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C30, &qword_C42B0);
  sub_9A7BC(&qword_EF678, type metadata accessor for DetailsSectionTemplate, &protocol conformance descriptor for DetailsSectionTemplate);
  sub_9A338();
  sub_9A38C();
  v39 = v45;
  sub_B7430();

  v40 = v48;

  sub_9A688(v40);
  return sub_9AA7C(v39, type metadata accessor for DetailsSectionTemplate);
}

char *sub_96688()
{
  v1 = type metadata accessor for DelegatedSharesReportingState(0);
  v2 = __chkstk_darwin(v1 - 8);
  v152 = &v127[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __chkstk_darwin(v2);
  v151 = &v127[-v5];
  v6 = __chkstk_darwin(v4);
  v150 = &v127[-v7];
  v8 = __chkstk_darwin(v6);
  v149 = &v127[-v9];
  v10 = __chkstk_darwin(v8);
  v148 = &v127[-v11];
  __chkstk_darwin(v10);
  v147 = &v127[-v12];
  v13 = sub_B65A0();
  v155 = *(v13 - 8);
  v156 = v13;
  __chkstk_darwin(v13);
  v154 = &v127[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for LostModeReportingState(0);
  v16 = __chkstk_darwin(v15 - 8);
  v146 = &v127[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v145 = &v127[-v19];
  v20 = __chkstk_darwin(v18);
  v144 = &v127[-v21];
  v22 = __chkstk_darwin(v20);
  v143 = &v127[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v127[-v25];
  __chkstk_darwin(v24);
  v28 = &v127[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v29 - 8);
  v158 = &v127[-v30];
  v31 = type metadata accessor for LostAccessory(0);
  v32 = v31 - 8;
  __chkstk_darwin(v31);
  v34 = &v127[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = *v0;
  v35 = v0[1];
  *&v168[0] = *v0;
  *(&v168[0] + 1) = v35;
  v157 = v35;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v37 = v161;
  swift_getKeyPath();
  *&v168[0] = v37;
  v153 = sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v38 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  sub_9A8B0(v37 + v38, v34, type metadata accessor for LostAccessory);

  v39 = *&v34[*(v32 + 28)];
  sub_9AA7C(v34, type metadata accessor for LostAccessory);
  if ((v39 & 1) == 0)
  {
    v40 = &_swiftEmptyArrayStorage;
    v41 = v157;
    if ((v39 & 2) == 0)
    {
      return v40;
    }

    goto LABEL_13;
  }

  v142 = v39;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v42 = sub_B62F0();
  v43 = __swift_project_value_buffer(v42, qword_FADB0);
  v44 = *(v42 - 8);
  v45 = *(v44 + 16);
  v46 = v158;
  v134 = v44 + 16;
  v135 = v43;
  v133 = v45;
  v45(v158);
  v47 = *(v44 + 56);
  v139 = v42;
  v136 = v44 + 56;
  v132 = v47;
  v47(v46, 0, 1, v42);
  v48 = sub_B78D0();
  v140 = v49;
  v141 = v48;
  sub_A194(v46, &unk_F17B0, &qword_BE7D0);
  v50 = v157;
  *&v168[0] = v36;
  *(&v168[0] + 1) = v157;
  v51 = sub_98F18();
  v137 = v52;
  v138 = v51;
  *&v168[0] = v36;
  *(&v168[0] + 1) = v50;
  sub_B75C0();
  v53 = v161;
  swift_getKeyPath();
  *&v168[0] = v53;
  sub_B65C0();

  v54 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v53 + v54, v28, type metadata accessor for LostModeReportingState);

  sub_9AA14(v28, v26, type metadata accessor for LostModeReportingState);
  v55 = type metadata accessor for LostModeInfo(0);
  v56 = *(v55 - 8);
  v57 = v55;
  v129 = *(v56 + 48);
  v130 = v56 + 48;
  v58 = (v129)(v26, 2);
  v59 = 0;
  if (!v58)
  {
    sub_9AA7C(v26, type metadata accessor for LostModeReportingState);
    v59 = 2;
  }

  v131 = v59;
  *&v168[0] = v36;
  *(&v168[0] + 1) = v50;
  sub_B75C0();
  v60 = v161;
  swift_getKeyPath();
  *&v168[0] = v60;
  sub_B65C0();

  v61 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  v62 = v143;
  sub_9A8B0(v60 + v61, v143, type metadata accessor for LostModeReportingState);

  v63 = v144;
  (*(v56 + 56))(v144, 1, 2, v57);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v62, v63);
  sub_9AA7C(v63, type metadata accessor for LostModeReportingState);
  sub_9AA7C(v62, type metadata accessor for LostModeReportingState);
  v64 = swift_allocObject();
  *(v64 + 16) = v36;
  *(v64 + 24) = v50;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  *&v168[0] = v36;
  *(&v168[0] + 1) = v50;

  v144 = v36;

  sub_B75C0();
  v65 = v167;
  swift_getKeyPath();
  *&v168[0] = v65;
  sub_B65C0();

  v66 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  v67 = v65 + v66;
  v68 = v145;
  sub_9A8B0(v67, v145, type metadata accessor for LostModeReportingState);

  v69 = v68;
  v70 = v146;
  sub_9AA14(v69, v146, type metadata accessor for LostModeReportingState);
  if (!v129(v70, 2, v57))
  {
    sub_9AA7C(v70, type metadata accessor for LostModeReportingState);
  }

  v71 = v158;
  v72 = v139;
  v133(v158, v135, v139);
  v132(v71, 0, 1, v72);
  v73 = sub_B78D0();
  v75 = v74;

  sub_A194(v71, &unk_F17B0, &qword_BE7D0);
  v76 = v154;
  sub_B6590();
  v77 = sub_B6560();
  v79 = v78;
  (*(v155 + 8))(v76, v156);
  memset(&v168[11], 0, 96);
  *&v168[0] = v77;
  *(&v168[0] + 1) = v79;
  *&v168[1] = v141;
  *(&v168[1] + 1) = v140;
  LOBYTE(v168[2]) = 0;
  *(&v168[2] + 1) = v138;
  *&v168[3] = v137;
  BYTE8(v168[3]) = v131;
  v168[4] = 0uLL;
  LOBYTE(v168[5]) = (MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 & 1) == 0;
  *(&v168[5] + 1) = sub_9A918;
  *&v168[6] = v64;
  *(&v168[6] + 1) = v73;
  *&v168[7] = v75;
  *(&v168[10] + 1) = 0;
  *(&v168[9] + 8) = 0u;
  *(&v168[8] + 8) = 0u;
  *(&v168[7] + 8) = 0u;
  sub_2C360(&v161, &v168[11]);
  v40 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v81 = *(v40 + 2);
  v80 = *(v40 + 3);
  v41 = v157;
  if (v81 >= v80 >> 1)
  {
    v40 = sub_5358C((v80 > 1), v81 + 1, 1, v40);
  }

  v36 = v144;
  *(v40 + 2) = v81 + 1;
  memcpy(&v40[272 * v81 + 32], v168, 0x110uLL);
  if ((v142 & 2) != 0)
  {
LABEL_13:
    v146 = v40;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v82 = sub_B62F0();
    v83 = __swift_project_value_buffer(v82, qword_FAD48);
    v84 = *(v82 - 1);
    v85 = v158;
    v138 = *(v84 + 16);
    v139 = v84 + 16;
    v138(v158, v83, v82);
    v86 = *(v84 + 56);
    v143 = v82;
    v140 = v84 + 56;
    v137 = v86;
    v86(v85, 0, 1, v82);
    v87 = sub_B78D0();
    v144 = v88;
    v145 = v87;
    sub_A194(v85, &unk_F17B0, &qword_BE7D0);
    *&v168[0] = v36;
    *(&v168[0] + 1) = v41;
    v89 = sub_994BC();
    v141 = v90;
    v142 = v89;
    *&v168[0] = v36;
    *(&v168[0] + 1) = v41;
    sub_B75C0();
    v91 = v161;
    swift_getKeyPath();
    *&v168[0] = v91;
    sub_B65C0();

    v92 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v93 = v91 + v92;
    v94 = v147;
    sub_9A8B0(v93, v147, type metadata accessor for DelegatedSharesReportingState);

    v95 = v94;
    v96 = v148;
    sub_9AA14(v95, v148, type metadata accessor for DelegatedSharesReportingState);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
    v98 = *(v97 - 8);
    v99 = *(v98 + 48);
    v157 = v97;
    v147 = v99;
    v100 = (v99)(v96, 2);
    v101 = 0;
    if (!v100)
    {
      sub_9AA7C(v96, type metadata accessor for DelegatedSharesReportingState);
      v101 = 2;
    }

    LODWORD(v148) = v101;
    *&v168[0] = v36;
    *(&v168[0] + 1) = v41;
    sub_B75C0();
    v102 = v161;
    swift_getKeyPath();
    *&v168[0] = v102;
    sub_B65C0();

    v103 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v104 = v149;
    sub_9A8B0(v102 + v103, v149, type metadata accessor for DelegatedSharesReportingState);

    v105 = v150;
    (*(v98 + 56))(v150, 1, 2, v157);
    LODWORD(v136) = _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(v104, v105);
    sub_9AA7C(v105, type metadata accessor for DelegatedSharesReportingState);
    sub_9AA7C(v104, type metadata accessor for DelegatedSharesReportingState);
    v106 = swift_allocObject();
    *(v106 + 16) = v36;
    *(v106 + 24) = v41;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    *&v168[0] = v36;
    *(&v168[0] + 1) = v41;

    sub_B75C0();
    v107 = v160;
    swift_getKeyPath();
    *&v168[0] = v107;
    sub_B65C0();

    v108 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v109 = v107 + v108;
    v110 = v151;
    sub_9A8B0(v109, v151, type metadata accessor for DelegatedSharesReportingState);

    v111 = v110;
    v112 = v152;
    sub_9AA14(v111, v152, type metadata accessor for DelegatedSharesReportingState);
    if (!(v147)(v112, 2, v157))
    {
      sub_9AA7C(v112, type metadata accessor for DelegatedSharesReportingState);
    }

    v113 = v136 ^ 1;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v114 = v143;
    v115 = __swift_project_value_buffer(v143, qword_FADB0);
    v116 = v158;
    v138(v158, v115, v114);
    v137(v116, 0, 1, v114);
    v117 = sub_B78D0();
    v119 = v118;

    sub_A194(v116, &unk_F17B0, &qword_BE7D0);
    v120 = v154;
    sub_B6590();
    v121 = sub_B6560();
    v123 = v122;
    (*(v155 + 8))(v120, v156);
    memset(&v168[11], 0, 96);
    *&v168[0] = v121;
    *(&v168[0] + 1) = v123;
    *&v168[1] = v145;
    *(&v168[1] + 1) = v144;
    LOBYTE(v168[2]) = 0;
    *(&v168[2] + 1) = v142;
    *&v168[3] = v141;
    BYTE8(v168[3]) = v148;
    v168[4] = 0uLL;
    LOBYTE(v168[5]) = v113 & 1;
    *(&v168[5] + 1) = sub_9A8A0;
    *&v168[6] = v106;
    *(&v168[6] + 1) = v117;
    *&v168[7] = v119;
    *(&v168[10] + 1) = 0;
    *(&v168[9] + 8) = 0u;
    *(&v168[8] + 8) = 0u;
    *(&v168[7] + 8) = 0u;
    sub_2C360(&v161, &v168[11]);
    v40 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_5358C(0, *(v40 + 2) + 1, 1, v40);
    }

    v125 = *(v40 + 2);
    v124 = *(v40 + 3);
    if (v125 >= v124 >> 1)
    {
      v40 = sub_5358C((v124 > 1), v125 + 1, 1, v40);
    }

    *(v40 + 2) = v125 + 1;
    memcpy(&v40[272 * v125 + 32], v168, 0x110uLL);
  }

  return v40;
}

uint64_t sub_97840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_9A884(v5, v6);
}

double sub_97900(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  sub_9A884(v4, v2);
  return sub_9ABD0(&v4);
}

void sub_97948(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v4 = *a1;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v6 = *(a2 + 8);
    if (v6 == 255)
    {
      return;
    }

    v7 = *a2;

    sub_83A4C(v7, v6);
    *a2 = v4;
    v5 = 1;
  }

  else
  {
    sub_9A318(*a2, *(a2 + 8));
    *a2 = 0;
    v5 = -1;
  }

  *(a2 + 8) = v5;
}

double sub_979C8@<D0>(char **a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v64 = a3;
  v76 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CC0, &qword_C42F0);
  v55 = *(v75 - 8);
  __chkstk_darwin(v75);
  v54 = &v50 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CB0, &qword_C42E8);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CC8, &qword_C43A0);
  __chkstk_darwin(v58);
  v8 = &v50 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C90, &qword_C42D8);
  __chkstk_darwin(v68);
  v60 = &v50 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CA0, &qword_C42E0);
  v53 = *(v61 - 8);
  __chkstk_darwin(v61);
  v52 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C80, &qword_C42D0);
  v51 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v50 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CD0, &qword_C43A8);
  __chkstk_darwin(v70);
  v74 = &v50 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CD8, &qword_C43B0);
  __chkstk_darwin(v66);
  v65 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CE0, &qword_C43B8);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C60, &qword_C42C0);
  __chkstk_darwin(v67);
  v18 = &v50 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C50, &qword_C42B8);
  __chkstk_darwin(v71);
  v69 = &v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C70, &qword_C42C8);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C30, &qword_C42B0);
  __chkstk_darwin(v24 - 8);
  v73 = &v50 - v25;
  v26 = *a1;
  sub_B7A60();
  v72 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v28 = v26 >> 61;
  if ((v26 >> 61) <= 1)
  {
    if (v28)
    {
      type metadata accessor for DelegatedSharesManagementView(0);
      sub_9A7BC(&qword_F2CF8, type metadata accessor for DelegatedSharesManagementView, &protocol conformance descriptor for DelegatedSharesManagementView);
      v45 = v50;
      sub_B6C00();
      v46 = v51;
      v47 = v59;
      (*(v51 + 16))(v16, v45, v59);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
      sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
      sub_B6F00();
      sub_A310(v18, v65, &qword_F2C60, &qword_C42C0);
      swift_storeEnumTagMultiPayload();
      sub_9A4BC();
      sub_9A578();
      v48 = v69;
      sub_B6F00();
      sub_A194(v18, &qword_F2C60, &qword_C42C0);
      sub_A310(v48, v74, &qword_F2C50, &qword_C42B8);
      swift_storeEnumTagMultiPayload();
      sub_9A430();
      sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
      v38 = v73;
      sub_B6F00();
      sub_A194(v48, &qword_F2C50, &qword_C42B8);
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      __chkstk_darwin(isCurrentExecutor);
      v36 = v63;
      v35 = v64;
      *(&v50 - 4) = v26;
      *(&v50 - 3) = v36;
      *(&v50 - 2) = v35;
      sub_9A810();
      sub_B6C00();
      (*(v21 + 16))(v16, v23, v20);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
      sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
      sub_B6F00();
      sub_A310(v18, v65, &qword_F2C60, &qword_C42C0);
      swift_storeEnumTagMultiPayload();
      sub_9A4BC();
      sub_9A578();
      v37 = v69;
      sub_B6F00();
      sub_A194(v18, &qword_F2C60, &qword_C42C0);
      sub_A310(v37, v74, &qword_F2C50, &qword_C42B8);
      swift_storeEnumTagMultiPayload();
      sub_9A430();
      sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
      v38 = v73;
      sub_B6F00();
      sub_A194(v37, &qword_F2C50, &qword_C42B8);
      (*(v21 + 8))(v23, v20);
    }
  }

  else
  {
    if (v28 == 2)
    {
      type metadata accessor for DelegatedSharesShareeItemDescriptionView(0);
      sub_9A7BC(&qword_F2CF0, type metadata accessor for DelegatedSharesShareeItemDescriptionView, &protocol conformance descriptor for DelegatedSharesShareeItemDescriptionView);
      v31 = v52;
      sub_B6C00();
      v32 = v53;
      v33 = v61;
      (*(v53 + 16))(v8, v31, v61);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
      sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
      v34 = v60;
    }

    else
    {
      if (v28 != 3)
      {
        __chkstk_darwin(isCurrentExecutor);
        *(&v50 - 4) = v40;
        v41 = v64;
        *(&v50 - 3) = v63;
        *(&v50 - 2) = v41;
        type metadata accessor for ItemContactInfoSetupConfirmationView(0);
        sub_9A7BC(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView, &protocol conformance descriptor for ItemContactInfoSetupConfirmationView);
        v42 = v54;
        sub_B6C00();
        v43 = v55;
        v44 = v75;
        (*(v55 + 16))(v74, v42, v75);
        swift_storeEnumTagMultiPayload();
        sub_9A430();
        sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
        v38 = v73;
        sub_B6F00();
        (*(v43 + 8))(v42, v44);
        goto LABEL_13;
      }

      __chkstk_darwin(isCurrentExecutor);
      *(&v50 - 4) = v29;
      v30 = v64;
      *(&v50 - 3) = v63;
      *(&v50 - 2) = v30;
      type metadata accessor for ItemContactInfoSetupIntroductionView(0);
      sub_9A7BC(&qword_F2CE8, type metadata accessor for ItemContactInfoSetupIntroductionView, &protocol conformance descriptor for ItemContactInfoSetupIntroductionView);
      v31 = v56;
      sub_B6C00();
      v32 = v57;
      v33 = v62;
      (*(v57 + 16))(v8, v31, v62);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
      sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
      v34 = v60;
    }

    sub_B6F00();
    sub_A310(v34, v65, &qword_F2C90, &qword_C42D8);
    swift_storeEnumTagMultiPayload();
    sub_9A4BC();
    sub_9A578();
    v39 = v69;
    sub_B6F00();
    sub_A194(v34, &qword_F2C90, &qword_C42D8);
    sub_A310(v39, v74, &qword_F2C50, &qword_C42B8);
    swift_storeEnumTagMultiPayload();
    sub_9A430();
    sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
    v38 = v73;
    sub_B6F00();
    sub_A194(v39, &qword_F2C50, &qword_C42B8);
    (*(v32 + 8))(v31, v33);
  }

LABEL_13:
  sub_AB00(v38, v76, &qword_F2C30, &qword_C42B0);

  return result;
}

void sub_988C4(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_28360();

  v8 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v8)
  {
    v9 = 0xD000000000000023;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (v8)
  {
    v10 = "airtag-briefcase-cover-photo";
  }

  else
  {
    v10 = "_MANAGEMENT_SHARE_WEBPAGE_TITLE";
  }

  v11 = v10 | 0x8000000000000000;
  type metadata accessor for DelegatedSharesSetupIntroductionViewModel(0);

  sub_B75B0();

  v12 = v13[1];
  *a4 = v13[0];
  a4[1] = v12;
  a4[2] = sub_9AB0C;
  a4[3] = v7;
  a4[4] = v9;
  a4[5] = v11;
}

void sub_98A40(uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for DelegatedSharesManagementView(0);
  v4 = a2 + *(v3 + 24);
  *v4 = xmmword_BFB50;
  *(v4 + 1) = xmmword_BFB60;
  *(v4 + 4) = 0x4000000000000000;
  v5 = (a2 + *(v3 + 20));

  sub_B75B0();

  *v5 = v6;
  v5[1] = v7;
}

double sub_98B90@<D0>(uint64_t *a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DelegatedSharesShareeItemDescriptionView.init(viewModel:)(v2, a1);

  return result;
}

void sub_98C40(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a4 = xmmword_C3130;
  v8 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) + 28);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ItemContactInfoSetupIntroductionViewModel(0);

  sub_B75B0();

  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = sub_9AB0C;
  *(a4 + 40) = v7;
}

double sub_98DA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)(a1, sub_9A868, v8, a4);

  return result;
}

double sub_98EB0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v3 = 0;
  LOBYTE(v4) = -1;
  sub_9ABD0(&v3);

  return result;
}

uint64_t sub_98F18()
{
  v1 = type metadata accessor for LostModeInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[1];
  v19[0] = *v0;
  v19[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v12 = v19[3];
  swift_getKeyPath();
  v19[0] = v12;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v13 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v12 + v13, v10, type metadata accessor for LostModeReportingState);

  if ((*(v2 + 48))(v10, 2, v1))
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v14 = sub_B62F0();
    v15 = __swift_project_value_buffer(v14, qword_FADB0);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v7, v15, v14);
    (*(v16 + 56))(v7, 0, 1, v14);
    MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = sub_B78D0();
    sub_A194(v7, &unk_F17B0, &qword_BE7D0);
  }

  else
  {
    sub_9AA14(v10, v4, type metadata accessor for LostModeInfo);
    MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
    sub_9AA7C(v4, type metadata accessor for LostModeInfo);
  }

  return MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
}

void sub_992A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v8 = v13;
  swift_getKeyPath();
  v15 = v8;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v8 + v9, v7, type metadata accessor for LostModeReportingState);

  v10 = type metadata accessor for LostModeInfo(0);
  v11 = (*(*(v10 - 8) + 48))(v7, 2, v10);
  if (v11)
  {
    if (v11 != 1)
    {
      v13 = a2;
      v14 = a3;
      sub_B75C0();
      LostModeManagementSectionViewModel.shareContactInfoButtonTapped()();
    }
  }

  else
  {
    v13 = a2;
    v14 = a3;
    sub_B75C0();
    LostModeManagementSectionViewModel.viewContactInfoButtonTapped()();

    sub_9AA7C(v7, type metadata accessor for LostModeReportingState);
  }
}

uint64_t sub_994BC()
{
  v43 = sub_B64E0();
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v48 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_B6500();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DelegatedURLShare(0);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0[1];
  v51 = *v0;
  v52 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v20 = v53;
  swift_getKeyPath();
  v51 = v20;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_9A8B0(v20 + v21, v18, type metadata accessor for DelegatedSharesReportingState);

  if ((*(v7 + 48))(v18, 2, v6))
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v22 = sub_B62F0();
    v23 = __swift_project_value_buffer(v22, qword_FAD48);
    v24 = *(v22 - 8);
    (*(v24 + 16))(v15, v23, v22);
    (*(v24 + 56))(v15, 0, 1, v22);
    v25 = sub_B78D0();
    v26 = &unk_F17B0;
    v27 = &qword_BE7D0;
    v28 = v15;
  }

  else
  {
    v29 = v46;
    v31 = v48;
    v30 = v49;
    sub_AB00(v18, v12, &qword_F0A10, &qword_C01B0);
    sub_A310(v12, v10, &qword_F0A10, &qword_C01B0);
    if ((*(v47 + 48))(v10, 1, v50) == 1)
    {
      sub_A194(v10, &qword_F0A10, &qword_C01B0);
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v32 = sub_B62F0();
      v33 = __swift_project_value_buffer(v32, qword_FAD48);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v15, v33, v32);
      (*(v34 + 56))(v15, 0, 1, v32);
      v25 = sub_B78D0();
      sub_A194(v15, &unk_F17B0, &qword_BE7D0);
    }

    else
    {
      sub_9AA14(v10, v5, type metadata accessor for DelegatedURLShare);
      sub_B64F0();
      sub_B64D0();
      v35 = sub_B6530();
      v37 = v36;
      (*(v30 + 8))(v31, v43);
      (*(v44 + 8))(v29, v45);
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v38 = sub_B62F0();
      v39 = __swift_project_value_buffer(v38, qword_FAD48);
      v40 = *(v38 - 8);
      (*(v40 + 16))(v15, v39, v38);
      (*(v40 + 56))(v15, 0, 1, v38);
      sub_B78D0();
      sub_A194(v15, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_BDA30;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_305FC();
      *(v41 + 32) = v35;
      *(v41 + 40) = v37;
      v25 = sub_B78F0();

      sub_9AA7C(v5, type metadata accessor for DelegatedURLShare);
    }

    v26 = &qword_F0A10;
    v27 = &qword_C01B0;
    v28 = v12;
  }

  sub_A194(v28, v26, v27);
  return v25;
}

void sub_99D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v11 = v20;
  swift_getKeyPath();
  v22 = v11;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v12 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_9A8B0(v11 + v12, v10, type metadata accessor for DelegatedSharesReportingState);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v14 = (*(*(v13 - 8) + 48))(v10, 2, v13);
  if (v14)
  {
    if (v14 != 1)
    {
      v20 = a2;
      v21 = a3;
      sub_B75C0();
      LostModeManagementSectionViewModel.startDelegatedURLSharesReportingButtonTapped()();
    }
  }

  else
  {
    v20 = a2;
    v21 = a3;
    sub_B75C0();
    v15 = v19;
    v16 = sub_B7A80();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_B7A60();

    v17 = sub_B7A50();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    sub_30A3C(0, 0, v7, &unk_C4450, v18);

    sub_9AA7C(v10, type metadata accessor for DelegatedSharesReportingState);
  }
}

uint64_t sub_9A048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  return sub_9A8B0(v3 + v4, a2, type metadata accessor for LostAccessory);
}

uint64_t sub_9A128(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_9A8B0(a1, v6, type metadata accessor for LostAccessory);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65B0();

  return sub_9AA7C(v6, type metadata accessor for LostAccessory);
}

double sub_9A288(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  sub_9A884(v4, v2);
  return sub_9ABD0(&v4);
}

uint64_t sub_9A2D0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a2 = v3;
  return result;
}

double sub_9A318(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83A4C(a1, a2);
  }

  return result;
}

unint64_t sub_9A338()
{
  result = qword_F2C38;
  if (!qword_F2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C38);
  }

  return result;
}

unint64_t sub_9A38C()
{
  result = qword_F2C40;
  if (!qword_F2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C30, &qword_C42B0);
    sub_9A430();
    sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C40);
  }

  return result;
}

unint64_t sub_9A430()
{
  result = qword_F2C48;
  if (!qword_F2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C50, &qword_C42B8);
    sub_9A4BC();
    sub_9A578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C48);
  }

  return result;
}

unint64_t sub_9A4BC()
{
  result = qword_F2C58;
  if (!qword_F2C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C60, &qword_C42C0);
    sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
    sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C58);
  }

  return result;
}

unint64_t sub_9A578()
{
  result = qword_F2C88;
  if (!qword_F2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C90, &qword_C42D8);
    sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
    sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C88);
  }

  return result;
}

uint64_t sub_9A634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

double sub_9A688(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_9A6CC()
{
  type metadata accessor for DetailsSectionTemplate(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C30, &qword_C42B0);
  sub_9A7BC(&qword_EF678, type metadata accessor for DetailsSectionTemplate, &protocol conformance descriptor for DetailsSectionTemplate);
  sub_9A338();
  sub_9A38C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_9A7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_9A810()
{
  result = qword_F2D00;
  if (!qword_F2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2D00);
  }

  return result;
}

uint64_t sub_9A884(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83A34(a1, a2);
  }

  return a1;
}

uint64_t sub_9A8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9A920()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9A960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_9E81C(a1, v4, v5, v6);
}

uint64_t sub_9AA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9AA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9AB10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_9A884(v4, v5);
}

double sub_9ABD0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination + 8);
  sub_9A884(v5, *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination + 8));
  v7 = sub_A2C2C(v5, v6, v2, v3);
  sub_9A318(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();
    sub_9A318(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_9A318(v10, v11);
  }

  return result;
}

uint64_t sub_9ADB8@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v10 = v4;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v8 = *a2;
  swift_beginAccess();
  return sub_A2B7C(v10 + v8, a4, a3);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.shareContactInfoButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies(0);
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LostModeReportingState(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v63 = v0;
  v15 = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v16 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v16, v13, type metadata accessor for LostModeReportingState);
  v17 = type metadata accessor for LostModeInfo(0);
  (*(*(v17 - 8) + 56))(v11, 1, 2, v17);
  LOBYTE(v16) = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v13, v11);
  sub_A2A58(v11, type metadata accessor for LostModeReportingState);
  sub_A2A58(v13, type metadata accessor for LostModeReportingState);
  if ((v16 & 1) == 0)
  {
    swift_getKeyPath();
    v62 = v1;
    sub_B65C0();

    v18 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
    swift_beginAccess();
    v52 = v7;
    sub_A2B7C(v1 + v18, v7, type metadata accessor for LostAccessory);
    v51 = v15;
    v19 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
    v20 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
    v21 = v20[11];
    v22 = (v19 + v20[12]);
    v48 = *v22;
    v23 = v2;
    v49 = v22[3];
    v24 = v20[14];
    v25 = (v19 + v20[13]);
    v50 = v14;
    v47 = *v25;
    v26 = v25[3];
    v27 = (v19 + v24);
    v28 = *v27;
    v29 = v27[3];
    v30 = (v19 + v20[15]);
    v31 = *v30;
    v32 = v30[5];
    v33 = (v19 + v20[16]);
    v34 = *v33;
    v35 = v33[3];
    v36 = *(v23 + 36);
    v53 = *(v22 + 1);
    v37 = *(v27 + 1);
    v54 = *(v25 + 1);
    v55 = v37;
    v38 = *(v30 + 3);
    v56 = *(v30 + 1);
    v57 = v38;
    v58 = *(v33 + 1);
    sub_A2B7C(v19 + v21, &v4[v36], type metadata accessor for ItemProximityProvider);
    *v4 = v48;
    *(v4 + 8) = v53;
    v39 = v47;
    *(v4 + 3) = v49;
    *(v4 + 4) = v39;
    v40 = v55;
    *(v4 + 40) = v54;
    *(v4 + 7) = v26;
    *(v4 + 8) = v28;
    *(v4 + 72) = v40;
    *(v4 + 11) = v29;
    *(v4 + 12) = v31;
    v41 = v57;
    *(v4 + 104) = v56;
    *(v4 + 120) = v41;
    *(v4 + 17) = v32;
    *(v4 + 18) = v34;
    *(v4 + 152) = v58;
    *(v4 + 21) = v35;
    swift_getKeyPath();
    v61 = v1;

    sub_B65C0();

    v42 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
    swift_beginAccess();
    if (*(v1 + v42) && *(v1 + v42) == 1)
    {
      v43 = 1;
      v44 = v52;
    }

    else
    {
      v44 = v52;
      v43 = sub_B7DD0();
    }

    type metadata accessor for ItemContactInfoSetupIntroductionViewModel(0);
    v45 = swift_allocObject();
    *(v45 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
    sub_B69B0();
    v46 = v45 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
    *v46 = 0;
    *(v46 + 8) = -1;
    sub_B65F0();
    sub_881E8(*v46, *(v46 + 8));
    *v46 = 0;
    *(v46 + 8) = -1;
    sub_A2AB8(v44, v45 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
    sub_A2AB8(v4, v45 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
    *(v45 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v43 & 1;
    v59 = v45 | 0x6000000000000000;
    v60 = 1;
    sub_9ABD0(&v59);
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.viewContactInfoButtonTapped()()
{
  v1 = v0;
  v2 = sub_B6320();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v4 - 8);
  v70 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LostModeInfo(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v58 - v10;
  v11 = type metadata accessor for LostModeReportingState(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *&v76[0] = v0;
  v71 = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  v72 = v20;
  sub_B65C0();

  v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v0 + v21, v19, type metadata accessor for LostModeReportingState);
  (*(v7 + 56))(v17, 1, 2, v6);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v19, v17);
  sub_A2A58(v17, type metadata accessor for LostModeReportingState);
  sub_A2A58(v19, type metadata accessor for LostModeReportingState);
  if ((MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    swift_getKeyPath();
    *&v76[0] = v1;
    sub_B65C0();

    sub_A2B7C(v1 + v21, v14, type metadata accessor for LostModeReportingState);
    if (!(*(v7 + 48))(v14, 2, v6))
    {
      v23 = v69;
      sub_A2AB8(v14, v69, type metadata accessor for LostModeInfo);
      v64 = type metadata accessor for LostModeInfo;
      v24 = v68;
      sub_A2B7C(v23, v68, type metadata accessor for LostModeInfo);
      v25 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
      v26 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
      v27 = v25 + v26[12];
      v28 = *(v27 + 24);
      v29 = (v25 + v26[13]);
      v30 = *v29;
      v31 = v29[3];
      v32 = (v25 + v26[15]);
      v33 = *v32;
      v34 = v32[5];
      v35 = (v25 + v26[14]);
      v36 = *v35;
      v37 = v35[3];
      v38 = (v25 + v26[16]);
      v39 = *v38;
      v40 = v38[3];
      *&v76[0] = *v27;
      v58 = *(v27 + 8);
      *(v76 + 8) = v58;
      *(&v76[1] + 1) = v28;
      *&v77[0] = v30;
      v59 = *(v29 + 1);
      *(v77 + 8) = v59;
      *(&v77[1] + 1) = v31;
      *&v78[0] = v33;
      v60 = *(v32 + 1);
      *(v78 + 8) = v60;
      v61 = *(v32 + 3);
      *(&v78[1] + 8) = v61;
      *(&v78[2] + 1) = v34;
      *&v79[0] = v36;
      v62 = *(v35 + 1);
      *(v79 + 8) = v62;
      *(&v79[1] + 1) = v37;
      *&v80[0] = v39;
      v63 = *(v38 + 1);
      *(v80 + 8) = v63;
      *(&v80[1] + 1) = v40;
      swift_getKeyPath();
      v74 = v1;

      sub_B65C0();

      v41 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
      swift_beginAccess();
      v72 = type metadata accessor for LostAccessory;
      sub_A2B7C(v1 + v41, v70, type metadata accessor for LostAccessory);
      type metadata accessor for ItemContactInfoSetupConfirmationViewModel(0);
      v42 = swift_allocObject();
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
      v43 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
      sub_B65F0();
      *(v42 + v43) = -256;
      v44 = v64;
      sub_A2B7C(v24, v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, v64);
      sub_A2B7C(v24, v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, v44);
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = 1;
      v45 = (v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
      v46 = v80[0];
      v45[8] = v79[1];
      v45[9] = v46;
      v45[10] = v80[1];
      v47 = v78[1];
      v45[4] = v78[0];
      v45[5] = v47;
      v48 = v79[0];
      v45[6] = v78[2];
      v45[7] = v48;
      v49 = v76[1];
      *v45 = v76[0];
      v45[1] = v49;
      v50 = v77[1];
      v45[2] = v77[0];
      v45[3] = v50;
      sub_777DC(v76, &v74);
      v51 = v65;
      sub_B6330();
      (*(v66 + 32))(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v51, v67);
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
      MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
      v53 = (v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
      *v53 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
      v53[1] = v54;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
      v55 = *&v80[0];
      v56 = *&v80[1];
      v73 = 1;

      v55(&v74, &v73);

      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v74;
      v73 = 1;

      v56(&v74, &v73);
      sub_77838(v76);

      *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v74;
      v57 = v70;
      sub_A2B7C(v70, v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, v72);
      sub_769C4();
      sub_A2A58(v57, type metadata accessor for LostAccessory);
      sub_A2A58(v24, type metadata accessor for LostModeInfo);
      v74 = v42 | 0x8000000000000000;
      v75 = 1;
      sub_9ABD0(&v74);
      sub_A2A58(v69, type metadata accessor for LostModeInfo);
    }
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.startDelegatedURLSharesReportingButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24[2] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v29 = v0;
  v24[1] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  v25 = v8;
  sub_A2B7C(v1 + v9, v8, type metadata accessor for LostAccessory);
  v10 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v11 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
  v12 = (v10 + v11[6]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = (v10 + v11[7]);
  v18 = *v17;
  v19 = v17[1];
  sub_A2B7C(v10 + v11[11], v5 + *(v3 + 32), type metadata accessor for ItemProximityProvider);
  *v5 = v14;
  v5[1] = v13;
  v5[2] = v15;
  v5[3] = v16;
  v5[4] = v18;
  v5[5] = v19;
  swift_getKeyPath();
  v28 = v1;

  v20 = v16;

  sub_B65C0();

  v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  swift_beginAccess();
  if (*(v1 + v21) && *(v1 + v21) == 1)
  {
    v22 = 1;
    v23 = v25;
  }

  else
  {
    v23 = v25;
    v22 = sub_B7DD0();
  }

  MyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0 = _s13FindMyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0(v23, v5, v22 & 1);
  v27 = 1;
  sub_9ABD0(&MyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.viewExistingDelegatedURLSharesButtonTapped()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_B7A80();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_B7A60();

  v6 = sub_B7A50();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_30A3C(0, 0, v4, &unk_C4450, v7);
}

void sub_9C1EC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }
}

uint64_t sub_9C32C(uint64_t a1)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();
}

uint64_t sub_9C3D0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
}

double sub_9C488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (!*(v4 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v7 = sub_B7AD0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v4 + v6) = a1;

  return result;
}

uint64_t type metadata accessor for LostModeManagementSectionViewModel(uint64_t a1)
{
  result = qword_F2DA8;
  if (!qword_F2DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostModeManagementSectionViewModel.currentLostModeReportingState.setter(uint64_t a1)
{
  v3 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v6, v5, type metadata accessor for LostModeReportingState);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_A2A58(v5, type metadata accessor for LostModeReportingState);
  if (MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0)
  {
    swift_beginAccess();
    sub_A2D98(a1, v1 + v6, type metadata accessor for LostModeReportingState);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return sub_A2A58(a1, type metadata accessor for LostModeReportingState);
}

uint64_t sub_9C8DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_A2D98(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t (*LostModeManagementSectionViewModel.currentLostModeReportingState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9CA9C;
}

uint64_t sub_9CAD0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v9 = *a3;
  swift_beginAccess();
  return sub_A2B7C(v8 + v9, a5, a4);
}

uint64_t sub_9CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_A2B7C(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t LostModeManagementSectionViewModel.currentDelegatedSharesReportingState.setter(char *a1)
{
  v3 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v6, v5, type metadata accessor for DelegatedSharesReportingState);
  MyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_A2A58(v5, type metadata accessor for DelegatedSharesReportingState);
  if (MyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0)
  {
    swift_beginAccess();
    sub_A2D98(a1, v1 + v6, type metadata accessor for DelegatedSharesReportingState);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return sub_A2A58(a1, type metadata accessor for DelegatedSharesReportingState);
}

uint64_t (*LostModeManagementSectionViewModel.currentDelegatedSharesReportingState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9CFD4;
}

uint64_t LostModeManagementSectionViewModel.currentProximityState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_9D0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

double LostModeManagementSectionViewModel.currentProximityState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  swift_beginAccess();
  v4 = 0xE300000000000000;
  v5 = 7496038;
  if (*(v1 + v3) != 1)
  {
    v5 = 0x54426E6968746977;
    v4 = 0xED000065676E6152;
  }

  if (*(v1 + v3))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*(v1 + v3))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xE300000000000000;
  v9 = 7496038;
  if (v2 != 1)
  {
    v9 = 0x54426E6968746977;
    v8 = 0xED000065676E6152;
  }

  if (v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

LABEL_21:
    *(v1 + v3) = v2;
    return result;
  }

  v13 = sub_B7DD0();

  if (v13)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65B0();

  return result;
}

uint64_t (*LostModeManagementSectionViewModel.currentProximityState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9D4F8;
}

uint64_t LostModeManagementSectionViewModel.__allocating_init(initialDestination:lostAccessory:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)(a1, a2, a3);
  return v6;
}

uint64_t LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  *v8 = 0;
  *(v8 + 8) = -1;
  sub_B69B0();
  v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask) = 0;
  v10 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask) = 0;
  v11 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask) = 0;
  sub_B65F0();
  sub_9A318(*v8, *(v8 + 8));
  *v8 = v6;
  *(v8 + 8) = v7;
  sub_A2AB8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory, type metadata accessor for LostAccessory);
  v12 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
  v13 = (a3 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider);
  *v16 = v14;
  v16[1] = v15;
  sub_A2B7C(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, type metadata accessor for DelegatedSharesReportingStatusProvider);
  sub_A2B7C(a3 + *(v12 + 44), v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, type metadata accessor for ItemProximityProvider);
  v17 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 2, v18);
  v19 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  v20 = type metadata accessor for LostModeInfo(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 2, v20);
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState) = 0;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) = 0;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = 0;
  v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_availabilityProviderStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);

  *(v3 + v9) = 0;
  v23 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProviderStream;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
  (*(*(v24 - 8) + 56))(v3 + v23, 1, 1, v24);

  *(v3 + v10) = 0;
  v25 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProviderStream;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  (*(*(v26 - 8) + 56))(v3 + v25, 1, 1, v26);

  *(v3 + v11) = 0;
  sub_A2AB8(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies, type metadata accessor for LostModeManagementSectionViewModel.Dependencies);
  return v3;
}

void sub_9D90C(char a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = a1 & 1;
    swift_getKeyPath();
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65C0();

    if (v3 != *(v1 + v2))
    {
      sub_9DB6C();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }
}

uint64_t sub_9DACC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  return *(v2 + *a2);
}

double sub_9DB6C()
{
  v1 = v0;
  v2 = type metadata accessor for ItemProximityProvider(0);
  __chkstk_darwin(v2 - 8);
  v76 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v79 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v77 = v6;
  v78 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  v10 = __chkstk_darwin(v8);
  v75 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v12 - 8);
  v87 = v71 - v13;
  v14 = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  __chkstk_darwin(v14 - 8);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  v19 = __chkstk_darwin(v17);
  v74 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v80 = v71 - v20;
  swift_getKeyPath();
  v88 = v0;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  if ((*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) & 1) == 0)
  {
    swift_getKeyPath();
    v88 = v0;
    sub_B65C0();

    v22 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
    if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) == 1)
    {
      v23 = sub_B69A0();
      v24 = sub_B7B60();
      v25 = os_log_type_enabled(v23, v24);
      v73 = v4;
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v23, v24, "Registering observers", v26, 2u);
      }

      swift_getKeyPath();
      v88 = v1;
      sub_B65C0();

      if (*(v1 + v22) == 1)
      {
        sub_A2B7C(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, v16, type metadata accessor for DelegatedSharesReportingStatusProvider);
        v27 = v80;
        v28 = v81;
        v29 = *(v81 + 32);
        v30 = v16;
        v31 = v82;
        v29(v80, v30, v82);
        v71[0] = sub_B7A80();
        v32 = *(v71[0] - 8);
        v72 = *(v32 + 56);
        v71[1] = v32 + 56;
        v72(v87, 1, 1, v71[0]);
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = v74;
        (*(v28 + 16))(v74, v27, v31);
        v71[2] = sub_B7A60();

        v35 = sub_B7A50();
        v36 = (*(v28 + 80) + 40) & ~*(v28 + 80);
        v37 = swift_allocObject();
        *(v37 + 2) = v35;
        *(v37 + 3) = &protocol witness table for MainActor;
        *(v37 + 4) = v33;
        v29(&v37[v36], v34, v31);

        v38 = v87;
        v39 = sub_30A3C(0, 0, v87, &unk_C46D0, v37);
        sub_9C488(v39, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask, &unk_C46A0, sub_A2E78);
        v40 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider);

        v42 = v83;
        v40(v41);

        v43 = v71[0];
        v72(v38, 1, 1, v71[0]);
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = v85;
        v46 = v84;
        v47 = v75;
        (*(v84 + 16))(v75, v42, v85);

        v48 = sub_B7A50();
        v49 = (*(v46 + 80) + 40) & ~*(v46 + 80);
        v50 = swift_allocObject();
        *(v50 + 2) = v48;
        *(v50 + 3) = &protocol witness table for MainActor;
        *(v50 + 4) = v44;
        (*(v46 + 32))(&v50[v49], v47, v45);

        v51 = v87;
        v52 = sub_30A3C(0, 0, v87, &unk_C46E0, v50);
        sub_9C488(v52, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask, &unk_C4678, sub_A2E60);
        v53 = v76;
        sub_A2B7C(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, v76, type metadata accessor for ItemProximityProvider);
        v54 = v79;
        v55 = *(v79 + 32);
        v56 = v86;
        v57 = v53;
        v58 = v73;
        v55(v86, v57, v73);
        v72(v51, 1, 1, v43);
        v59 = swift_allocObject();
        swift_weakInit();
        v60 = v78;
        v61 = v56;
        v62 = v58;
        (*(v54 + 16))(v78, v61, v58);

        v63 = sub_B7A50();
        v64 = (*(v54 + 80) + 40) & ~*(v54 + 80);
        v65 = swift_allocObject();
        *(v65 + 2) = v63;
        *(v65 + 3) = &protocol witness table for MainActor;
        *(v65 + 4) = v59;
        v55(&v65[v64], v60, v62);

        v66 = sub_30A3C(0, 0, v87, &unk_C46F0, v65);
        v67 = sub_9C488(v66, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask, &unk_C4650, sub_A2E48);
        (*(v54 + 8))(v86, v62, v67);
        (*(v84 + 8))(v83, v85);
        (*(v81 + 8))(v80, v82);
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v71[-2] = v1;
          v71[-1] = 0;
          v88 = v1;
          sub_B65B0();
        }

        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask))
        {
          v69 = swift_getKeyPath();
          __chkstk_darwin(v69);
          v71[-2] = v1;
          v71[-1] = 0;
          v88 = v1;
          sub_B65B0();
        }

        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask))
        {
          v70 = swift_getKeyPath();
          __chkstk_darwin(v70);
          v71[-2] = v1;
          v71[-1] = 0;
          v88 = v1;
          sub_B65B0();
        }
      }
    }
  }

  return result;
}

void sub_9E698(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
}

double sub_9E74C(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
  v4 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive);
  *(a1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = a2;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  if (v4 != *(a1 + v3))
  {
    return sub_9DB6C();
  }

  return result;
}

uint64_t sub_9E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[12] = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies(0);
  v4[13] = swift_task_alloc();
  type metadata accessor for DelegatedURLShare(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  type metadata accessor for LostAccessory(0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = sub_B65A0();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_B7A60();
  v4[22] = sub_B7A50();
  v7 = sub_B7A00();
  v4[23] = v7;
  v4[24] = v6;

  return _swift_task_switch(sub_9E9BC, v7, v6);
}

uint64_t sub_9E9BC()
{
  v34 = v0;
  v0[25] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_logger;

  v1 = sub_B69A0();
  v2 = sub_B7B60();

  v3 = &qword_F2000;
  if (os_log_type_enabled(v1, v2))
  {
    v31 = v2;
    v5 = v0[19];
    v4 = v0[20];
    v28 = v0[18];
    v29 = v0[21];
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v7 = 136315138;
    swift_getKeyPath();
    v0[10] = v6;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65C0();

    v8 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
    swift_beginAccess();
    v9 = v6 + v8;
    v3 = &qword_F2000;
    sub_A2B7C(v9, v28, type metadata accessor for LostAccessory);
    (*(v4 + 32))(v29, v28, v5);
    sub_A2BE4(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = sub_B7DA0();
    v12 = v11;
    (*(v4 + 8))(v29, v5);
    v13 = sub_17834(v10, v12, &v33);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v1, v31, "Fetching delegated share for accessory id: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v14 = v0[17];
  v15 = v0[11];
  v16 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v0[26] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v17 = v15 + v16;
  v18 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
  v0[27] = v18;
  v19 = (v17 + *(v18 + 24));
  v20 = *v19;
  v0[28] = v19[1];
  v21 = v19[3];
  v0[29] = v21;
  swift_getKeyPath();
  v0[30] = v3[417];
  v0[8] = v15;
  v0[31] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);

  v22 = v21;
  sub_B65C0();

  v23 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  v0[32] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  sub_A2B7C(v15 + v23, v14, type metadata accessor for LostAccessory);
  v32 = (v20 + *v20);
  v24 = swift_task_alloc();
  v0[33] = v24;
  *v24 = v0;
  v24[1] = sub_9EE14;
  v25 = v0[16];
  v26 = v0[17];

  return v32(v25, v26);
}

uint64_t sub_9EE14()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_9F460;
  }

  else
  {
    v2 = sub_9EF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9EF28()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];

  v5 = *(v3 + 8);
  v0[35] = v5;
  v0[36] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v4, v2);
  v6 = v0[23];
  v7 = v0[24];

  return _swift_task_switch(sub_9EFC4, v6, v7);
}

uint64_t sub_9EFC4()
{
  v37 = v0;
  v1 = v0[15];
  v2 = v0[16];

  sub_A2B7C(v2, v1, type metadata accessor for DelegatedURLShare);

  v3 = sub_B69A0();
  v4 = sub_B7B60();

  if (os_log_type_enabled(v3, v4))
  {
    v29 = v0[35];
    v28 = v0[32];
    v33 = v4;
    v5 = v0[20];
    v6 = v0[21];
    v8 = v0[18];
    v7 = v0[19];
    v30 = v0[15];
    log = v3;
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getKeyPath();
    v0[9] = v9;
    sub_B65C0();

    sub_A2B7C(v9 + v28, v8, type metadata accessor for LostAccessory);
    (*(v5 + 32))(v6, v8, v7);
    sub_A2BE4(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = sub_B7DA0();
    v13 = v12;
    v29(v6, v7);
    v14 = sub_17834(v11, v13, &v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_B64C0();
    sub_A2BE4(&qword_F2F00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = sub_B7DA0();
    v17 = v16;
    sub_A2A58(v30, type metadata accessor for DelegatedURLShare);
    v18 = sub_17834(v15, v17, &v35);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_0, log, v33, "Fetched delegated URL share for accessory id: %s with url: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[15];

    sub_A2A58(v19, type metadata accessor for DelegatedURLShare);
  }

  v20 = v0[27];
  v21 = v0[16];
  v23 = v0[13];
  v22 = v0[14];
  v24 = v0[12];
  v25 = v0[11] + v0[26];
  LOWORD(v35) = -256;
  sub_A2B7C(v21, v22, type metadata accessor for DelegatedURLShare);
  *loga = *(v25 + v20[7]);
  v34 = *(v25 + v20[9]);
  sub_A2B7C(v25 + v20[10], v23 + *(v24 + 24), type metadata accessor for DelegatedSharesUpdater);
  *v23 = *loga;
  v23[1] = v34;
  type metadata accessor for DelegatedSharesManagementViewModel(0);
  swift_allocObject();

  v35 = DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(&v35, v22, v23) | 0x2000000000000000;
  v36 = 1;
  sub_9ABD0(&v35);
  sub_A2A58(v21, type metadata accessor for DelegatedURLShare);

  v26 = v0[1];

  return v26();
}

uint64_t sub_9F460()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];

  (*(v3 + 8))(v4, v2);
  v5 = v0[23];
  v6 = v0[24];

  return _swift_task_switch(sub_9F4F0, v5, v6);
}

uint64_t sub_9F4F0()
{

  swift_errorRetain();
  v1 = sub_B69A0();
  v2 = sub_B7B40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error with fetching existing delegated share %@", v3, 0xCu);
    sub_A194(v4, &qword_EF4F8, &qword_C16D0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

double LostModeManagementSectionViewModel.presentShareeLandingPageAsPendingAction(reportingState:)(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2B7C(a1, v4, type metadata accessor for DelegatedSharesReportingState);
  type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel(0);
  v5 = swift_allocObject();
  sub_A2AB8(v4, v5 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, type metadata accessor for DelegatedSharesReportingState);
  v7 = v5 | 0x4000000000000000;
  v8 = 1;
  return sub_9ABD0(&v7);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.learnMoreAsShareeButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v5 = v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  if ((*(v5 + *(type metadata accessor for LostAccessory(0) + 20)) & 4) != 0)
  {
    swift_getKeyPath();
    v13 = v1;
    sub_B65C0();

    v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    sub_A2B7C(v1 + v9, v4, type metadata accessor for DelegatedSharesReportingState);
    type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel(0);
    v10 = swift_allocObject();
    sub_A2AB8(v4, v10 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, type metadata accessor for DelegatedSharesReportingState);
    v11 = v10 | 0x4000000000000000;
    v12 = 1;
    sub_9ABD0(&v11);
  }

  else
  {
    v6 = sub_B69A0();
    v7 = sub_B7B40();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, ".canInteractWithDelegatedSharesEnabled needs to be enabled for this action to be supported", v8, 2u);
    }
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.updateLostAccessoryCapabilities(capabilities:)(FindMyAppCore::LostAccessory::Capabilities capabilities)
{
  v2 = *capabilities.rawValue;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  *(v3 + *(type metadata accessor for LostAccessory(0) + 20)) = v2;
  swift_getKeyPath();
  sub_B65D0();
}

uint64_t sub_9FB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for DelegatedURLShare(0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C00, &qword_C41D8);
  v5[21] = swift_task_alloc();
  v5[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C08, &qword_C41E0);
  v5[23] = swift_task_alloc();
  v8 = type metadata accessor for DelegatedSharesReportingState(0);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EF0, &qword_C4718);
  v5[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EF8, &unk_C4720);
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = sub_B7A60();
  v5[34] = sub_B7A50();
  v11 = sub_B7A00();
  v5[35] = v11;
  v5[36] = v10;

  return _swift_task_switch(sub_9FE28, v11, v10);
}

uint64_t sub_9FE28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
    sub_B7A90();
    v2 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[38] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    v0[39] = v2;
    swift_beginAccess();
    v0[40] = 0;
    v3 = sub_B7A50();
    v0[41] = v3;
    v4 = swift_task_alloc();
    v0[42] = v4;
    *v4 = v0;
    v4[1] = sub_A0018;
    v5 = v0[29];
    v6 = v0[30];

    return AsyncStream.Iterator.next(isolation:)(v5, v3, &protocol witness table for MainActor, v6);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_A0018()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_A015C, v3, v2);
}

uint64_t sub_A015C()
{
  v1 = v0[29];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[17];
  v11 = v0[18];
  sub_A2AB8(v1, v6, type metadata accessor for DelegatedSharesReportingState);
  sub_A2B7C(v5 + v4, v7, type metadata accessor for DelegatedSharesReportingState);
  v12 = *(v9 + 48);
  sub_A2B7C(v7, v8, type metadata accessor for DelegatedSharesReportingState);
  sub_A2B7C(v6, v8 + v12, type metadata accessor for DelegatedSharesReportingState);
  v13 = *(v11 + 48);
  v14 = v13(v8, 2, v10);
  if (!v14)
  {
    v16 = v0[17];
    sub_A2B7C(v0[23], v0[26], type metadata accessor for DelegatedSharesReportingState);
    if (v13(v8 + v12, 2, v16))
    {
      v17 = v0[26];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      sub_A194(v17, &qword_F0A10, &qword_C01B0);
      goto LABEL_13;
    }

    v30 = v0[21];
    v31 = v0[14];
    v32 = v0[15];
    v33 = *(v0[20] + 48);
    sub_958D0(v0[26], v30);
    sub_958D0(v8 + v12, v30 + v33);
    v34 = *(v32 + 48);
    if (v34(v30, 1, v31) == 1)
    {
      v35 = v0[14];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      if (v34(v30 + v33, 1, v35) == 1)
      {
        sub_A194(v0[21], &qword_F0A10, &qword_C01B0);
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    v36 = v0[14];
    sub_95940(v0[21], v0[19]);
    if (v34(v30 + v33, 1, v36) == 1)
    {
      v37 = v0[19];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      sub_A2A58(v37, type metadata accessor for DelegatedURLShare);
LABEL_23:
      v38 = v0[21];
      v39 = &qword_F2C00;
      v40 = &qword_C41D8;
LABEL_32:
      sub_A194(v38, v39, v40);
      goto LABEL_33;
    }

    sub_A2AB8(v30 + v33, v0[16], type metadata accessor for DelegatedURLShare);
    if (sub_B6490() & 1) != 0 && (sub_B6510() & 1) != 0 && (sub_B6570())
    {
      v41 = *(v0[14] + 28);
      v42 = (v0[19] + v41);
      v43 = *v42;
      v44 = v42[1];
      v45 = (v0[16] + v41);
      v46 = v0[27];
      if (v43 == *v45 && v44 == v45[1])
      {
        sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
        goto LABEL_35;
      }

      v49 = sub_B7DD0();
      sub_A2A58(v46, type metadata accessor for DelegatedSharesReportingState);
      if (v49)
      {
LABEL_35:
        v50 = v0[19];
        v51 = v0[16];
        v52 = v0[14];
        if (*(v50 + *(v52 + 32)) == *(v51 + *(v52 + 32)))
        {
          v53 = v0[21];
          v54 = *(v52 + 36);
          v55 = *(v50 + v54);
          v56 = *(v51 + v54);
          sub_A2A58(v51, type metadata accessor for DelegatedURLShare);
          sub_A2A58(v50, type metadata accessor for DelegatedURLShare);
          sub_A194(v53, &qword_F0A10, &qword_C01B0);
          if (v55 == v56)
          {
            goto LABEL_12;
          }

LABEL_33:
          sub_A2A58(v0[23], type metadata accessor for DelegatedSharesReportingState);
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
    }

    v47 = v0[21];
    v48 = v0[19];
    sub_A2A58(v0[16], type metadata accessor for DelegatedURLShare);
    sub_A2A58(v48, type metadata accessor for DelegatedURLShare);
    v39 = &qword_F0A10;
    v40 = &qword_C01B0;
    v38 = v47;
    goto LABEL_32;
  }

  if (v14 != 1)
  {
    v18 = v0[17];
    sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
    if (v13(v8 + v12, 2, v18) == 2)
    {
      goto LABEL_12;
    }

LABEL_13:
    sub_A194(v0[23], &qword_F2C08, &qword_C41E0);
LABEL_14:
    v22 = v0[40];
    v23 = v0[37];
    v24 = v0[28];
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v0[11] = v23;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
    sub_B65B0();

    goto LABEL_15;
  }

  v15 = v0[17];
  sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
  if (v13(v8 + v12, 2, v15) != 1)
  {
    goto LABEL_13;
  }

LABEL_12:
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[28];
  sub_A2A58(v0[23], type metadata accessor for DelegatedSharesReportingState);
  swift_beginAccess();
  sub_A2D98(v21, v20 + v19, type metadata accessor for DelegatedSharesReportingState);
  swift_endAccess();
  v22 = v0[40];
LABEL_15:
  sub_A2A58(v0[28], type metadata accessor for DelegatedSharesReportingState);
  v0[40] = v22;
  v26 = sub_B7A50();
  v0[41] = v26;
  v27 = swift_task_alloc();
  v0[42] = v27;
  *v27 = v0;
  v27[1] = sub_A0018;
  v28 = v0[29];
  v29 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v28, v26, &protocol witness table for MainActor, v29);
}

uint64_t sub_A0938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for LostModeInfo(0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for LostModeReportingState(0);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EE0, &qword_C4708);
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EE8, &qword_C4710);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = sub_B7A60();
  v5[29] = sub_B7A50();
  v10 = sub_B7A00();
  v5[30] = v10;
  v5[31] = v9;

  return _swift_task_switch(sub_A0B80, v10, v9);
}

uint64_t sub_A0B80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
    sub_B7A90();
    v2 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[33] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
    v0[34] = v2;
    swift_beginAccess();
    v0[35] = 0;
    v3 = sub_B7A50();
    v0[36] = v3;
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_A0D4C;
    v5 = v0[24];
    v6 = v0[25];

    return AsyncStream.Iterator.next(isolation:)(v5, v3, &protocol witness table for MainActor, v6);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_A0D4C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_A0E90, v3, v2);
}

uint64_t sub_A0E90()
{
  v1 = v0[24];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v2 = v0[1];

    return v2();
  }

  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  sub_A2AB8(v1, v6, type metadata accessor for LostModeReportingState);
  sub_A2B7C(v5 + v4, v7, type metadata accessor for LostModeReportingState);
  v12 = *(v9 + 48);
  sub_A2B7C(v7, v8, type metadata accessor for LostModeReportingState);
  sub_A2B7C(v6, v8 + v12, type metadata accessor for LostModeReportingState);
  v13 = *(v11 + 48);
  v14 = v13(v8, 2, v10);
  if (!v14)
  {
    v16 = v0[14];
    sub_A2B7C(v0[18], v0[21], type metadata accessor for LostModeReportingState);
    if (v13(v8 + v12, 2, v16))
    {
      v17 = v0[21];
      sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
      sub_A2A58(v17, type metadata accessor for LostModeInfo);
      goto LABEL_12;
    }

    sub_A2AB8(v8 + v12, v0[16], type metadata accessor for LostModeInfo);
    if (sub_B6310())
    {
      v23 = *(v0[14] + 20);
      v24 = v0[22];
      v25 = (v0[21] + v23);
      v26 = (v0[16] + v23);
      if (*v25 == *v26 && v25[1] == v26[1])
      {
        sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
LABEL_24:
        v31 = v0[21];
        sub_A2A58(v0[16], type metadata accessor for LostModeInfo);
        sub_A2A58(v31, type metadata accessor for LostModeInfo);
        goto LABEL_25;
      }

      v28 = sub_B7DD0();
      sub_A2A58(v24, type metadata accessor for LostModeReportingState);
      if (v28)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
    }

    v29 = v0[21];
    v30 = v0[18];
    sub_A2A58(v0[16], type metadata accessor for LostModeInfo);
    sub_A2A58(v29, type metadata accessor for LostModeInfo);
    sub_A2A58(v30, type metadata accessor for LostModeReportingState);
    goto LABEL_13;
  }

  if (v14 == 1)
  {
    v15 = v0[14];
    sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
    if (v13(v8 + v12, 2, v15) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v18 = v0[14];
  sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
  if (v13(v8 + v12, 2, v18) == 2)
  {
LABEL_25:
    v33 = v0[32];
    v32 = v0[33];
    v34 = v0[23];
    sub_A2A58(v0[18], type metadata accessor for LostModeReportingState);
    swift_beginAccess();
    sub_A2D98(v34, v33 + v32, type metadata accessor for LostModeReportingState);
    swift_endAccess();
    v19 = v0[35];
    goto LABEL_26;
  }

LABEL_12:
  sub_A194(v0[18], &qword_F2ED8, &qword_C4700);
LABEL_13:
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[23];
  swift_getKeyPath();
  v22 = swift_task_alloc();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v0[11] = v20;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  sub_B65B0();

LABEL_26:
  sub_A2A58(v0[23], type metadata accessor for LostModeReportingState);
  v0[35] = v19;
  v35 = sub_B7A50();
  v0[36] = v35;
  v36 = swift_task_alloc();
  v0[37] = v36;
  *v36 = v0;
  v36[1] = sub_A0D4C;
  v37 = v0[24];
  v38 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v37, v35, &protocol witness table for MainActor, v38);
}

uint64_t sub_A1484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_B7A60();
  v5[15] = sub_B7A50();
  v8 = sub_B7A00();
  v5[16] = v8;
  v5[17] = v7;

  return _swift_task_switch(sub_A1588, v8, v7);
}

uint64_t sub_A1588()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
    sub_B7A90();
    v2 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[19] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
    v0[20] = v2;
    swift_beginAccess();
    v0[21] = 0;
    v3 = sub_B7A50();
    v0[22] = v3;
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_A170C;
    v5 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v0 + 24, v3, &protocol witness table for MainActor, v5);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_A170C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_A1850, v3, v2);
}

uint64_t sub_A1850()
{
  v1 = *(v0 + 192);
  if (v1 == 3)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = 0xE300000000000000;
  v5 = 7496038;
  if (*(*(v0 + 144) + *(v0 + 152)) != 1)
  {
    v5 = 0x54426E6968746977;
    v4 = 0xED000065676E6152;
  }

  if (*(*(v0 + 144) + *(v0 + 152)))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*(*(v0 + 144) + *(v0 + 152)))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xE300000000000000;
  v9 = 7496038;
  if (v1 != 1)
  {
    v9 = 0x54426E6968746977;
    v8 = 0xED000065676E6152;
  }

  if (*(v0 + 192))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (*(v0 + 192))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_B7DD0();

    if ((v12 & 1) == 0)
    {
      v13 = *(v0 + 168);
      v14 = *(v0 + 144);
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v14;
      *(v15 + 24) = v1;
      *(v0 + 64) = v14;
      sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel, &protocol conformance descriptor for LostModeManagementSectionViewModel);
      sub_B65B0();

      goto LABEL_27;
    }
  }

  *(*(v0 + 144) + *(v0 + 152)) = v1;
  v13 = *(v0 + 168);
LABEL_27:
  *(v0 + 168) = v13;
  v16 = sub_B7A50();
  *(v0 + 176) = v16;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_A170C;
  v18 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 192, v16, &protocol witness table for MainActor, v18);
}

uint64_t LostModeManagementSectionViewModel.deinit()
{
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory, type metadata accessor for LostAccessory);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies, type metadata accessor for LostModeManagementSectionViewModel.Dependencies);
  sub_9A318(*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination + 8));
  v1 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, type metadata accessor for DelegatedSharesReportingStatusProvider);
  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_availabilityProviderStream, &qword_F2D68, &qword_C4558);

  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProviderStream, &qword_F2D70, &qword_C4560);

  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, type metadata accessor for ItemProximityProvider);
  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProviderStream, &qword_F2D78, &qword_C4568);

  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState, type metadata accessor for LostModeReportingState);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState, type metadata accessor for DelegatedSharesReportingState);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LostModeManagementSectionViewModel.__deallocating_deinit()
{
  LostModeManagementSectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_A1E44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_A1F14(uint64_t a1)
{
  type metadata accessor for LostAccessory(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LostModeManagementSectionViewModel.Dependencies(319);
    if (v2 <= 0x3F)
    {
      sub_B69C0();
      if (v3 <= 0x3F)
      {
        sub_A22AC(319);
        if (v4 <= 0x3F)
        {
          sub_A2304(319, &qword_F2DB8, &qword_F2AB0, &qword_C4540);
          if (v5 <= 0x3F)
          {
            sub_A2304(319, &qword_F2DC0, &qword_F2D60, &unk_C4548);
            if (v6 <= 0x3F)
            {
              sub_38B1C();
              if (v7 <= 0x3F)
              {
                sub_A2304(319, &unk_F2DC8, &qword_F03D8, &qword_BF970);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for LostModeReportingState(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for DelegatedSharesReportingState(319);
                    if (v10 <= 0x3F)
                    {
                      sub_B6600();
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
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
}

void sub_A22AC(uint64_t a1)
{
  if (!qword_F2BD0)
  {
    type metadata accessor for DelegatedSharesReportingState(255);
    v1 = sub_B7AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_F2BD0);
    }
  }
}

void sub_A2304(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_B7BE0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_A25B4(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_A2600(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F248;

  return sub_9FB3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_A2718(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2184C;

  return sub_A0938(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_A28F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2184C;

  return sub_A1484(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_A29FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_A2A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A2AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_A2B38(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_A2B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A2BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A2C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0xFF)
  {
    if (a4 == 0xFF)
    {
      sub_9A884(a1, 255);
      sub_9A884(a3, 255);
      sub_9A318(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == 0xFF)
  {
LABEL_5:
    v11 = a2;
    sub_9A884(a1, a2);
    sub_9A884(a3, a4);
    sub_9A318(a1, v11);
    sub_9A318(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_9A884(a1, a2);
  sub_9A884(a3, a4);
  v8 = sub_80D80(a1, a2, a3, a4);
  sub_9A318(a3, a4);
  sub_9A318(a1, a2);
  v9 = v8 ^ 1;
  return v9 & 1;
}

double sub_A2D38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_9A884(v1, v4);
  return sub_9A318(v3, v5);
}

uint64_t sub_A2D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

__n128 LostModeManagementSectionViewModel.Dependencies.init(delegatedSharesStatusProvider:lostModeStatusProvider:linkGenerator:pasteboardHandler:punchoutHandler:delegatedSharesInvalidator:delegatedSharesUpdater:itemProximityProvider:contactInfoProvider:contactInfoFormatter:contactInfoValidator:contactInfoUpdater:contactInfoEditItemsProvider:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, _OWORD *a11, _OWORD *a12, _OWORD *a13, uint64_t a14)
{
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  sub_A3078(a1, a9, type metadata accessor for DelegatedSharesReportingStatusProvider);
  v21 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies(0);
  *(a9 + v21[5]) = *a2;
  v22 = a9 + v21[6];
  *v22 = *a3;
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  *(a9 + v21[7]) = *a4;
  v23 = (a9 + v21[8]);
  v24 = a5[1];
  *v23 = *a5;
  v23[1] = v24;
  *(a9 + v21[9]) = *a6;
  sub_A3078(a7, a9 + v21[10], type metadata accessor for DelegatedSharesUpdater);
  sub_A3078(a8, a9 + v21[11], type metadata accessor for ItemProximityProvider);
  v25 = (a9 + v21[12]);
  v26 = a10[1];
  *v25 = *a10;
  v25[1] = v26;
  v27 = (a9 + v21[13]);
  v28 = a11[1];
  *v27 = *a11;
  v27[1] = v28;
  v29 = (a9 + v21[14]);
  v30 = a12[1];
  *v29 = *a12;
  v29[1] = v30;
  v31 = (a9 + v21[15]);
  v32 = a13[1];
  *v31 = *a13;
  v31[1] = v32;
  v31[2] = a13[2];
  v33 = (a9 + v21[16]);
  result = *a14;
  v35 = *(a14 + 16);
  *v33 = *a14;
  v33[1] = v35;
  return result;
}

uint64_t type metadata accessor for LostModeManagementSectionViewModel.Dependencies(uint64_t a1)
{
  result = qword_F2F60;
  if (!qword_F2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A3078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A30F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DelegatedSharesUpdater(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for ItemProximityProvider(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_A327C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for DelegatedSharesUpdater(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for ItemProximityProvider(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_A33F0(uint64_t a1)
{
  result = type metadata accessor for DelegatedSharesReportingStatusProvider(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DelegatedSharesUpdater(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ItemProximityProvider(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void LostModeManagementSectionViewModel.Sheet.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  v3 = 2;
  v4 = 3;
  if (v2 != 3)
  {
    v4 = 4;
  }

  if (v2 == 2)
  {
    v5 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v4;
    v5 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v6 = 1;
  if (v2)
  {
    v1 &= 0x1FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v6 = v2;
  }

  if (v2 <= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v1;
  }

  else
  {
    v8 = v5;
  }

  sub_B7EC0(v7);
  sub_B7EC0(v8);
}

Swift::Int LostModeManagementSectionViewModel.Sheet.hashValue.getter()
{
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_A35C4()
{
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_A360C@<X0>(uint64_t *a1@<X8>)
{
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

BOOL _s13FindMyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      return v3 >> 61 == 1 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    else if (v3 >> 61)
    {
      return 0;
    }

    else
    {

      return v2 == v3;
    }
  }

  else if (v4 == 2)
  {
    return v3 >> 61 == 2 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  else if (v4 == 3)
  {
    return v3 >> 61 == 3 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    return v3 >> 61 == 4 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }
}

unint64_t sub_A373C(uint64_t a1)
{
  *(a1 + 8) = sub_A376C();
  result = sub_9A338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_A376C()
{
  result = qword_F2FC8;
  if (!qword_F2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2FC8);
  }

  return result;
}

unint64_t sub_A37C4()
{
  result = qword_F2FD0;
  if (!qword_F2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2FD0);
  }

  return result;
}

uint64_t sub_A3818(uint64_t a1)
{
  result = sub_A3890(&qword_F2FD8, &protocol conformance descriptor for LostModeManagementSectionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A3890(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LostModeManagementSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A38E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A393C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void LostModeReportingState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LostModeInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A430C(v2, v9);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    sub_B7EC0(v10 != 1);
  }

  else
  {
    sub_A4370(v9, v6);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    sub_B7880();
    sub_B7980();
    sub_A464C(v6, type metadata accessor for LostModeInfo);
  }
}

Swift::Int LostModeReportingState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LostModeInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_A430C(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    sub_B7EC0(v9 != 1);
  }

  else
  {
    sub_A4370(v8, v5);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    sub_B7880();
    sub_B7980();
    sub_A464C(v5, type metadata accessor for LostModeInfo);
  }

  return sub_B7EE0();
}

Swift::Int sub_A3DC0()
{
  v1 = v0;
  v2 = type metadata accessor for LostModeInfo(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_A430C(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    sub_B7EC0(v9 != 1);
  }

  else
  {
    sub_A4370(v8, v6);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
    sub_B7880();
    sub_B7980();
    sub_A464C(v6, type metadata accessor for LostModeInfo);
  }

  return sub_B7EE0();
}

uint64_t _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LostModeReportingState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = *(v12 + 56);
  sub_A430C(a1, &v24 - v13);
  sub_A430C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v14[v15], 2, v4) == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    if (v16(&v14[v15], 2, v4) != 2)
    {
LABEL_8:
      sub_A45E4(v14);
      return 0;
    }
  }

  else
  {
    sub_A430C(v14, v10);
    if (v16(&v14[v15], 2, v4))
    {
      sub_A464C(v10, type metadata accessor for LostModeInfo);
      goto LABEL_8;
    }

    sub_A4370(&v14[v15], v7);
    if ((sub_B6310() & 1) == 0 || ((v19 = *(v4 + 20), v20 = *&v10[v19], v21 = *&v10[v19 + 8], v22 = &v7[v19], v20 == *v22) ? (v23 = v21 == *(v22 + 1)) : (v23 = 0), !v23 && (sub_B7DD0() & 1) == 0))
    {
      sub_A464C(v7, type metadata accessor for LostModeInfo);
      sub_A464C(v10, type metadata accessor for LostModeInfo);
      sub_A464C(v14, type metadata accessor for LostModeReportingState);
      return 0;
    }

    sub_A464C(v7, type metadata accessor for LostModeInfo);
    sub_A464C(v10, type metadata accessor for LostModeInfo);
  }

LABEL_17:
  sub_A464C(v14, type metadata accessor for LostModeReportingState);
  return 1;
}

uint64_t type metadata accessor for LostModeReportingState(uint64_t a1)
{
  result = qword_F3060;
  if (!qword_F3060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeReportingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A4370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A441C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A4478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A44F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for LostModeInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_A457C(uint64_t a1)
{
  v1 = type metadata accessor for LostModeInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_A45E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A464C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LostModeFlowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_B6E60();
  result = sub_B71F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_A477C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F3128);
  __swift_project_value_buffer(v0, qword_F3128);
  type metadata accessor for ItemsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.items.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F3128);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_A48BC(uint64_t a1)
{
  v35 = sub_B6370();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = &_swiftEmptyArrayStorage;
    sub_1E4F0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = sub_B7C30();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_B6360();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1E4F0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      *(v19 + 4) = v37;
      *(v19 + 5) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_21318(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_21318(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void ShareItemContactPickerView.init(dependencies:isCapabilityEnabled:isAirTag:maxCircleMembersSharingLimits:performAction:showOfferSuccess:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v36 = a5;
  v38 = a2;
  v41 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = *a1;
  v39 = a1[1];
  v40 = v18;
  v37 = *(a1 + 4);
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v19 = a4 & 1;
  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_F3128);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  v23 = sub_B78D0();
  v25 = v24;

  sub_2B630(v17);
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  v27 = v36;
  *(v26 + 32) = v35;
  *(v26 + 40) = a10;
  *(v26 + 48) = v19;
  *(v26 + 56) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3140, &qword_C4AF8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_C2800;
  *(v28 + 32) = &unk_BE000;
  *(v28 + 40) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 1;
  *(v29 + 24) = sub_A613C;
  *(v29 + 32) = 0;
  *(v28 + 48) = &unk_C4B00;
  *(v28 + 56) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v19;
  v31 = swift_allocObject();
  *(v31 + 16) = v19;
  v32 = swift_allocObject();
  v32[2] = v38;
  v32[3] = a3;
  v32[4] = sub_A665C;
  v32[5] = v30;
  v32[6] = sub_A6880;
  v32[7] = v31;
  *(v28 + 64) = &unk_BDA78;
  *(v28 + 72) = v32;
  v44 = v23;
  v45 = v25;
  v46 = 0;
  v47 = sub_A521C;
  v48 = v26;
  v49 = v28;
  v42[0] = v40;
  v42[1] = v39;
  v43 = v37;
  type metadata accessor for ContactPickerViewModel(0);
  swift_allocObject();

  *&v42[0] = ContactPickerViewModel.init(configuration:dependencies:)(&v44, v42);
  sub_B75B0();

  v33 = v45;
  v34 = v41;
  *v41 = v44;
  v34[1] = v33;
}

uint64_t sub_A4F80@<X0>(uint64_t (*a1)(void *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a8;
  v31 = a2;
  HIDWORD(v29) = a7;
  v32 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3160, &qword_C4CD0) + 48);
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v18 = (a9 + v17);
  v19 = sub_B62F0();
  v20 = __swift_project_value_buffer(v19, qword_F3128);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  sub_B78D0();
  sub_2B630(v16);
  sub_B66F0();
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *(v22 + 48) = BYTE4(v29) & 1;
  *(v22 + 56) = v30;

  v23 = v32(&unk_C4CE0, v22);
  v25 = v24;

  *v18 = v23;
  v18[1] = v25;
  v26 = enum case for GenericControl.Info.button(_:);
  v27 = sub_B6700();
  return (*(*(v27 - 8) + 104))(a9, v26, v27);
}

uint64_t sub_A5230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 145) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  *(v8 + 80) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_A5350, 0, 0);
}

uint64_t sub_A5350()
{
  v1 = v0[5];
  v2 = sub_A48BC(v0[4]);
  v0[15] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_A5458;

  return v5(v2);
}

uint64_t sub_A5458()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_A565C;
  }

  else
  {
    v2 = sub_A5574;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A5574()
{
  v1 = *(v0 + 24);
  (*(v0 + 56))(*(v0 + 120));

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_A565C()
{
  *(v0 + 16) = *(v0 + 136);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    if (v1 > 1)
    {
      if (v1 != 2)
      {
        if (v1 == 3)
        {

          if (qword_EEAE8 != -1)
          {
            swift_once();
          }

          v38 = *(v0 + 96);
          v40 = *(v0 + 88);
          v2 = *(v0 + 80);
          v34 = *(v0 + 112);
          v36 = *(v0 + 24);
          v3 = sub_B62F0();
          v4 = __swift_project_value_buffer(v3, qword_F3128);
          v5 = *(v3 - 8);
          v6 = *(v5 + 16);
          v6(v2, v4, v3);
          v7 = *(v5 + 56);
          v7(v2, 0, 1, v3);
          sub_B78D0();
          sub_2B630(v2);
          v6(v2, v4, v3);
          v7(v2, 0, 1, v3);
LABEL_15:
          sub_B78D0();

          sub_2B630(v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0);
          *(swift_allocObject() + 16) = xmmword_BDA30;
          sub_B6900();
          v20 = v34;
LABEL_19:
          sub_B6910();
          (*(v38 + 32))(v36, v20, v40);
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
          (*(*(v29 - 8) + 56))(v36, 0, 1, v29);

          goto LABEL_20;
        }

        v21 = *(v0 + 72);

        if (v21)
        {
          v32 = v21 - 1;
          if (qword_EEAE8 == -1)
          {
LABEL_18:
            v22 = *(v0 + 80);
            v38 = *(v0 + 96);
            v40 = *(v0 + 88);
            v35 = *(v0 + 104);
            v36 = *(v0 + 24);
            v23 = sub_B62F0();
            v24 = __swift_project_value_buffer(v23, qword_F3128);
            v25 = *(v23 - 8);
            v26 = *(v25 + 16);
            v26(v22, v24, v23);
            v27 = *(v25 + 56);
            v27(v22, 0, 1, v23);
            sub_B78D0();
            sub_2B630(v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_BDA30;
            *(v28 + 56) = &type metadata for UInt;
            *(v28 + 64) = &protocol witness table for UInt;
            *(v28 + 32) = v32;
            v26(v22, v24, v23);
            v27(v22, 0, 1, v23);
            sub_B78D0();

            sub_2B630(v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0);
            *(swift_allocObject() + 16) = xmmword_BDA30;
            sub_B6900();
            v20 = v35;
            goto LABEL_19;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_18;
      }

LABEL_12:

      if (qword_EEAE8 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 96);
      v40 = *(v0 + 88);
      v2 = *(v0 + 80);
      v34 = *(v0 + 112);
      v36 = *(v0 + 24);
      v15 = sub_B62F0();
      v16 = __swift_project_value_buffer(v15, qword_F3128);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v18(v2, v16, v15);
      v19 = *(v17 + 56);
      v19(v2, 0, 1, v15);
      sub_B78D0();
      sub_2B630(v2);
      v18(v2, v16, v15);
      v19(v2, 0, 1, v15);
      goto LABEL_15;
    }

    if (*(v0 + 144))
    {
      goto LABEL_12;
    }
  }

  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 112);
  v39 = *(v0 + 96);
  v41 = *(v0 + 88);
  v8 = *(v0 + 80);
  v37 = *(v0 + 24);
  v9 = sub_B62F0();
  v10 = __swift_project_value_buffer(v9, qword_F3128);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v12(v8, v10, v9);
  v13 = *(v11 + 56);
  v13(v8, 0, 1, v9);
  sub_B78D0();
  sub_2B630(v8);
  v12(v8, v10, v9);
  v13(v8, 0, 1, v9);
  sub_B78D0();
  sub_2B630(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6900();
  sub_B6910();

  (*(v39 + 32))(v37, v33, v41);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v14 - 8) + 56))(v37, 0, 1, v14);
LABEL_20:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_A613C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_F3128);
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v4, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = sub_B78D0();
  sub_2B630(v2);
  v6(v2, v4, v3);
  v7(v2, 0, 1, v3);
  sub_B78D0();
  sub_2B630(v2);
  return v8;
}

uint64_t sub_A632C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A6364(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2184C;

  return sub_15298(a1, a2, v6, v8, v7);
}

uint64_t sub_A6428(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v6 = 0xD000000000000037;
  if ((a2 & 1) == 0)
  {
    v6 = 0xD000000000000035;
  }

  v14[1] = v6;
  v7 = sub_B62F0();
  v8 = __swift_project_value_buffer(v7, qword_F3128);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v10(v5, v8, v7);
  v11 = *(v9 + 56);
  v11(v5, 0, 1, v7);
  sub_B78D0();
  sub_2B630(v5);
  v10(v5, v8, v7);
  v11(v5, 0, 1, v7);
  v12 = sub_B78D0();

  sub_2B630(v5);
  return v12;
}

uint64_t sub_A6664(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000037;
  if ((a1 & 1) == 0)
  {
    v5 = 0xD000000000000035;
  }

  v13[1] = v5;
  v6 = sub_B62F0();
  v7 = __swift_project_value_buffer(v6, qword_F3128);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v9(v4, v7, v6);
  v10 = *(v8 + 56);
  v10(v4, 0, 1, v6);
  sub_B78D0();
  sub_2B630(v4);
  v9(v4, v7, v6);
  v10(v4, 0, 1, v6);
  v11 = sub_B78D0();

  sub_2B630(v4);
  return v11;
}

uint64_t sub_A6888()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t ShareItemContactPickerView.body.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3148, &qword_C4B10);
  sub_B75C0();
  v2 = *(type metadata accessor for ContactPickerView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  return result;
}

unint64_t sub_A6978()
{
  result = qword_F3150;
  if (!qword_F3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3150);
  }

  return result;
}

unint64_t sub_A6A0C()
{
  result = qword_F3158;
  if (!qword_F3158)
  {
    type metadata accessor for ContactPickerView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3158);
  }

  return result;
}

uint64_t sub_A6A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_F3128);
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v4, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = sub_B78D0();
  sub_2B630(v2);
  v6(v2, v4, v3);
  v7(v2, 0, 1, v3);
  sub_B78D0();
  sub_2B630(v2);
  return v8;
}

uint64_t objectdestroyTm_10()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_A6C94(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2184C;

  return sub_A5230(a1, a2, v6, v7, v8, v9, v10, v11);
}

void *sub_A6D7C(uint64_t a1)
{
  v35 = sub_B6370();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = &_swiftEmptyArrayStorage;
    sub_1E4F0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = sub_B7C30();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_B6360();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1E4F0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      *(v19 + 4) = v37;
      *(v19 + 5) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_21318(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_21318(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void OfferLocationContactPickerView.init(dependencies:fromEmail:performAction:showOfferSuccess:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v34 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = *a1;
  v32 = a1[1];
  v33 = v18;
  v31 = *(a1 + 4);
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v19 = sub_B62F0();
  v20 = __swift_project_value_buffer(v19, qword_F3868);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = sub_B78D0();
  v24 = v23;
  sub_A194(v17, &unk_F17B0, &qword_BE7D0);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = a5;
  v25[6] = a6;
  v25[7] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3140, &qword_C4AF8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_BD800;
  *(v26 + 32) = &unk_BDFD0;
  *(v26 + 40) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = sub_A8C10;
  *(v27 + 32) = 0;
  *(v26 + 48) = &unk_C4B00;
  *(v26 + 56) = v27;
  v37 = v22;
  v38 = v24;
  v39 = 1;
  v40 = sub_A8ED8;
  v41 = v25;
  v42 = v26;
  v35[0] = v33;
  v35[1] = v32;
  v36 = v31;
  type metadata accessor for ContactPickerViewModel(0);
  swift_allocObject();

  *&v35[0] = ContactPickerViewModel.init(configuration:dependencies:)(&v37, v35);
  sub_B75B0();

  v28 = v38;
  v29 = v34;
  *v34 = v37;
  v29[1] = v28;
}

double sub_A737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a8;

  sub_B66E0();

  return result;
}

uint64_t sub_A7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_B6810();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = *(v9 + 64);
  v7[12] = swift_task_alloc();
  sub_B7A60();
  v7[13] = sub_B7A50();
  v11 = sub_B7A00();
  v7[14] = v11;
  v7[15] = v10;

  return _swift_task_switch(sub_A7568, v11, v10);
}

uint64_t sub_A7568()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v17 = v0[7];
  v18 = v0[3];
  (*(v4 + 16))(v1, v0[2], v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v17;
  v11[1] = v5;

  v12 = v18(&unk_C4E78, v10);
  v14 = v13;

  v0[16] = v14;
  v19 = (v12 + *v12);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_A7750;

  return v19();
}

uint64_t sub_A7750()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_A7894, v3, v2);
}

uint64_t sub_A7894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A78FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_B6320();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3178, &qword_C4E80);
  v7[15] = swift_task_alloc();
  v9 = sub_B6370();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3180, &qword_C4E88);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_A7B5C, 0, 0);
}

uint64_t sub_A7B5C()
{
  v13 = sub_A6D7C(*(v0 + 40));
  *(v0 + 216) = v13;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v12 = *(v0 + 48);
  v2 = sub_B62F0();
  *(v0 + 224) = v2;
  v3 = __swift_project_value_buffer(v2, qword_F3868);
  *(v0 + 232) = v3;
  v4 = *(v2 - 8);
  v5 = *(v4 + 16);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v2);
  v6 = *(v4 + 56);
  *(v0 + 256) = v6;
  *(v0 + 264) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v2);
  sub_B78D0();
  sub_A194(v1, &unk_F17B0, &qword_BE7D0);
  v5(v1, v3, v2);
  v6(v1, 0, 1, v2);
  sub_B78D0();
  sub_A194(v1, &unk_F17B0, &qword_BE7D0);
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0) - 8);
  *(v0 + 280) = *(v7 + 72);
  *(v0 + 304) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6900();
  sub_B6910();
  v11 = (v12 + *v12);
  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_A7EF8;
  v9 = *(v0 + 64);

  return (v11)(v9, v13);
}

uint64_t sub_A7EF8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_A8168;
  }

  else
  {
    v2 = sub_A8014;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A8014()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 32);
  (*(v0 + 72))(*(v0 + 216));

  (*(v3 + 8))(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_A8168()
{
  v0[2] = v0[37];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  if (swift_dynamicCast())
  {

    v1 = v0[3];
    v2 = *(v1 + 16);
    if (v2 != 1)
    {
      if (v2)
      {
        v65 = v0[32];
        v3 = v0[30];
        v5 = v0[28];
        v4 = v0[29];
        v76 = v0[26];
        v73 = v0[25];
        v66 = v0[24];
        v75 = v0[23];
        v6 = v0[22];
        v77 = v0[4];

        v7 = objc_opt_self();
        v8 = [objc_allocWithZone(NSNumber) initWithInteger:v2];
        v9 = [v7 localizedStringFromNumber:v8 numberStyle:0];

        v10 = sub_B7900();
        v12 = v11;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_BDA30;
        *(v13 + 56) = &type metadata for String;
        *(v13 + 64) = sub_305FC();
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        v3(v6, v4, v5);
        v65(v6, 0, 1, v5);
        sub_B78D0();

        sub_A194(v6, &unk_F17B0, &qword_BE7D0);
        v3(v6, v4, v5);
        v65(v6, 0, 1, v5);
        sub_B78D0();
        sub_A194(v6, &unk_F17B0, &qword_BE7D0);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        sub_B6900();
        sub_B6910();
        (*(v66 + 8))(v76, v75);
        v14 = v77;
        (*(v66 + 32))(v77, v73, v75);
LABEL_16:
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
        (*(*(v60 - 8) + 56))(v14, 0, 1, v60);
        goto LABEL_17;
      }

LABEL_12:
      v41 = v0[26];
      v42 = v0[23];
      v43 = v0[24];
      v44 = v0[4];

      (*(v43 + 32))(v44, v41, v42);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
LABEL_17:

      goto LABEL_18;
    }

    v20 = v0[20];
    v21 = v0[21];
    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[15];
    v25 = v0[16];
    v78 = v0[14];
    v26 = v0[11];
    v27 = v0[12];
    v71 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v72 = *(v23 + 16);
    v72(v22, v1 + v71, v25);
    sub_B6330();
    v74 = *(v23 + 8);
    v74(v22, v25);
    v28 = *(v27 + 56);
    v28(v21, 0, 1, v26);
    (*(v27 + 104))(v20, enum case for PersonModel.Handle.Kind.phoneNumber(_:), v26);
    v28(v20, 0, 1, v26);
    v29 = *(v78 + 48);
    sub_A9504(v21, v24);
    sub_A9504(v20, v24 + v29);
    v30 = *(v27 + 48);
    if (v30(v24, 1, v26) == 1)
    {
      v31 = v0[21];
      v32 = v0[11];
      sub_A194(v0[20], &qword_F3180, &qword_C4E88);
      sub_A194(v31, &qword_F3180, &qword_C4E88);
      if (v30(v24 + v29, 1, v32) == 1)
      {
        result = sub_A194(v0[15], &qword_F3180, &qword_C4E88);
        goto LABEL_14;
      }
    }

    else
    {
      v34 = v0[11];
      sub_A9504(v0[15], v0[19]);
      v35 = v30(v24 + v29, 1, v34);
      v36 = v0[20];
      v37 = v0[21];
      v38 = v0[19];
      if (v35 != 1)
      {
        v79 = v0[15];
        v69 = v0[21];
        v46 = v0[12];
        v47 = v0[13];
        v48 = v0[11];
        (*(v46 + 32))(v47, v24 + v29, v48);
        sub_A9574(&qword_F1B58, &type metadata accessor for PersonModel.Handle.Kind, &protocol conformance descriptor for PersonModel.Handle.Kind);
        v49 = sub_B78C0();
        v50 = *(v46 + 8);
        v50(v47, v48);
        sub_A194(v36, &qword_F3180, &qword_C4E88);
        sub_A194(v69, &qword_F3180, &qword_C4E88);
        v50(v38, v48);
        result = sub_A194(v79, &qword_F3180, &qword_C4E88);
        if ((v49 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_14:
        if (!*(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v62 = v0[30];
        v63 = v0[32];
        v51 = v0[28];
        v52 = v0[29];
        v80 = v0[26];
        v70 = v0[23];
        v53 = v0[22];
        v54 = v0[18];
        v55 = v0[16];
        v64 = v0[24];
        v67 = v0[25];
        v68 = v0[4];
        v72(v54, v1 + v71, v55);

        MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
        v58 = v57;
        v74(v54, v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_BDA30;
        *(v59 + 56) = &type metadata for String;
        *(v59 + 64) = sub_305FC();
        *(v59 + 32) = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
        *(v59 + 40) = v58;
        v62(v53, v52, v51);
        v63(v53, 0, 1, v51);
        sub_B78D0();

        sub_A194(v53, &unk_F17B0, &qword_BE7D0);
        v62(v53, v52, v51);
        v63(v53, 0, 1, v51);
        sub_B78D0();
        sub_A194(v53, &unk_F17B0, &qword_BE7D0);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        sub_B6900();
        sub_B6910();
        (*(v64 + 8))(v80, v70);
        v14 = v68;
        (*(v64 + 32))(v68, v67, v70);
        goto LABEL_16;
      }

      v39 = v0[11];
      v40 = v0[12];
      sub_A194(v0[20], &qword_F3180, &qword_C4E88);
      sub_A194(v37, &qword_F3180, &qword_C4E88);
      (*(v40 + 8))(v38, v39);
    }

    sub_A194(v0[15], &qword_F3178, &qword_C4E80);
    goto LABEL_12;
  }

  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[4];

  (*(v17 + 32))(v18, v15, v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
LABEL_18:

  v61 = v0[1];

  return v61();
}

uint64_t sub_A8C10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_F3868);
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v4, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  v6(v2, v4, v3);
  v7(v2, 0, 1, v3);
  sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t OfferLocationContactPickerView.body.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3148, &qword_C4B10);
  sub_B75C0();
  v2 = *(type metadata accessor for ContactPickerView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  return result;
}

uint64_t sub_A8EE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A8FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_F3868);
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v4, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  v6(v2, v4, v3);
  v7(v2, 0, 1, v3);
  sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_A9220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2184C;

  return sub_A7460(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_A92F0()
{
  v1 = sub_B6810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_A93CC(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_B6810() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2184C;

  return sub_A78FC(a1, a2, v8, v9, v2 + v7, v11, v12);
}

uint64_t sub_A9504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3180, &qword_C4E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PeopleListPersonRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_B7170();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PeopleListPersonRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  sub_AD198(v1, &v32 - v15, type metadata accessor for PeopleListPersonRow);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = swift_allocObject();
  sub_A9A64(v16, v32 + v17, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v14, type metadata accessor for PeopleListPersonRow);
  v18 = swift_allocObject();
  sub_A9A64(v14, v18 + v17, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v11, type metadata accessor for PeopleListPersonRow);
  v19 = swift_allocObject();
  sub_A9A64(v11, v19 + v17, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v8, type metadata accessor for PeopleListPersonRow);
  v20 = swift_allocObject();
  sub_A9A64(v8, v20 + v17, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v8, type metadata accessor for PeopleListPersonRow);
  v21 = swift_allocObject();
  sub_A9A64(v8, v21 + v17, type metadata accessor for PeopleListPersonRow);
  v37 = 0x4043000000000000;
  (*(v34 + 104))(v33, enum case for Font.TextStyle.headline(_:), v35);
  sub_275B4();
  v22 = v36;
  sub_B6AA0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3188, &qword_C4EB0);
  v24 = v23[21];
  *(v22 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  result = swift_storeEnumTagMultiPayload();
  v26 = (v22 + v23[22]);
  v27 = v32;
  *v26 = sub_A9ACC;
  v26[1] = v27;
  v28 = (v22 + v23[23]);
  *v28 = sub_AA3A0;
  v28[1] = v18;
  v29 = (v22 + v23[24]);
  *v29 = sub_AA410;
  v29[1] = v19;
  v30 = (v22 + v23[25]);
  *v30 = sub_AAF1C;
  v30[1] = v20;
  v31 = (v22 + v23[26]);
  *v31 = sub_AB3BC;
  v31[1] = v21;
  return result;
}

uint64_t sub_A9A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A9AE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3478, &qword_C5378);
  __chkstk_darwin(v3 - 8);
  v36 = &v27 - v4;
  v5 = sub_B63A0();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3480, &qword_C5380);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v29 = sub_B6680();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_B6690();
  v34 = *(v13 - 8);
  v35 = v13;
  __chkstk_darwin(v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_B6770();
  __chkstk_darwin(v16 - 8);
  v17 = sub_B6740();
  __chkstk_darwin(v17 - 8);
  v28 = sub_B6780();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + *(type metadata accessor for PeopleListPersonRow.State(0) + 40));
  sub_B6730();

  sub_B6760();
  sub_B6750();
  v21 = enum case for BadgeStyle.Placement.Alignment.topTrailing(_:);
  v22 = sub_B6670();
  (*(*(v22 - 8) + 104))(v12, v21, v22);
  (*(v10 + 104))(v12, enum case for BadgeStyle.Placement.anchored(_:), v29);
  (*(v32 + 104))(v31, enum case for Symbol.Color.gray(_:), v33);
  v23 = sub_B6660();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  sub_B6640();
  v24 = sub_B6650();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_B6630();
  sub_AE014(&qword_F3488, &type metadata accessor for PlatterWithIcon, &protocol conformance descriptor for PlatterWithIcon);
  v25 = v28;
  sub_B7210();
  (*(v34 + 8))(v15, v35);
  return (*(v30 + 8))(v19, v25);
}

uint64_t sub_AA04C@<X0>(uint64_t a2@<X8>)
{
  sub_97E8();

  result = sub_B7200();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(v1 + 64);
  v4 = v0 + v3;

  v5 = type metadata accessor for PeopleListPersonRow.State(0);
  v6 = v0 + v3 + v5[7];
  v7 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v8 = sub_B62D0();
      (*(*(v8 - 8) + 8))(v6, v8);
    }
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_B63C0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v5[11];
  v13 = sub_B6700();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v16 = v5[12];
  if (!v15(v4 + v16, 1, v13))
  {
    (*(v14 + 8))(v4 + v16, v13);
  }

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_AA3A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PeopleListPersonRow(0);

  return sub_AA04C(a1);
}

uint64_t sub_AA49C@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3450, &qword_C5360);
  __chkstk_darwin(v92);
  v93 = (v74 - v2);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3458, &qword_C5368);
  __chkstk_darwin(v89);
  v90 = (v74 - v3);
  v4 = type metadata accessor for PeopleListPersonRow(0);
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v4 - 8);
  v85 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B6460();
  __chkstk_darwin(v6 - 8);
  v83 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_B6620();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_B67A0();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_B62D0();
  v80 = *(v84 - 8);
  v10 = __chkstk_darwin(v84);
  v75 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3460, &qword_C5370);
  __chkstk_darwin(v13);
  v87 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  __chkstk_darwin(v15 - 8);
  v17 = v74 - v16;
  v18 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = v74 - v23;
  v25 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(v1 + *(v25 + 28), v17, &qword_F3190, &unk_C4EF0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_A194(v17, &qword_F3190, &unk_C4EF0);
    v26 = *(v1 + 40);
    v94 = *(v1 + 32);
    v95 = v26;
    sub_97E8();

    v27 = sub_B7200();
    v28 = v93;
    *v93 = v27;
    v28[1] = v29;
    *(v28 + 16) = v30 & 1;
    v28[3] = v31;
    swift_storeEnumTagMultiPayload();
    sub_AEBB0();
    return sub_B6F00();
  }

  else
  {
    v74[1] = v13;
    sub_A9A64(v17, v24, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    sub_AD198(v24, v22, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v74[0] = v24;
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *v22;
      v85 = v22[1];
      v86 = v34;
      v35 = *(v1 + 32);
      v36 = *(v1 + 40);
      v94 = v35;
      v95 = v36;
      v84 = sub_97E8();

      v37 = sub_B7200();
      v39 = v38;
      LOBYTE(v36) = v40;
      sub_B6E60();
      v41 = sub_B71F0();
      v43 = v42;
      v45 = v44;
      v46 = sub_B71D0();
      v82 = v47;
      v83 = v46;
      LODWORD(v81) = v48;
      sub_9C84(v41, v43, v45 & 1);

      sub_9C84(v37, v39, v36 & 1);

      v94 = v86;
      v95 = v85;
      v49 = sub_B7200();
      v51 = v50;
      LOBYTE(v43) = v52;
      v54 = v82;
      v53 = v83;
      v55 = sub_B71D0();
      v57 = v56;
      LOBYTE(v37) = v58;
      v86 = v59;
      sub_9C84(v49, v51, v43 & 1);

      sub_9C84(v53, v54, v81 & 1);

      v60 = v90;
      *v90 = v55;
      v60[1] = v57;
      v61 = v74[0];
      *(v60 + 16) = v37 & 1;
      v60[3] = v86;
      swift_storeEnumTagMultiPayload();
      sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText, &protocol conformance descriptor for RelativeDateText);
      v62 = v87;
      sub_B6F00();
    }

    else
    {
      v64 = v79;
      v63 = v80;
      v65 = v22;
      v66 = v84;
      (*(v80 + 32))(v79, v65, v84);
      (*(v63 + 16))(v75, v64, v66);
      (*(v76 + 104))(v78, enum case for FindMyRelativeDateFormatStyle.DisplayStyle.concise(_:), v77);
      sub_B6450();
      v67 = v85;
      sub_AD198(v1, v85, type metadata accessor for PeopleListPersonRow);
      v68 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v69 = swift_allocObject();
      sub_A9A64(v67, v69 + v68, type metadata accessor for PeopleListPersonRow);
      v70 = v82;
      sub_B6790();
      v71 = v86;
      v72 = v88;
      (*(v86 + 16))(v90, v70, v88);
      swift_storeEnumTagMultiPayload();
      sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText, &protocol conformance descriptor for RelativeDateText);
      v62 = v87;
      sub_B6F00();
      (*(v71 + 8))(v70, v72);
      v73 = v64;
      v61 = v74[0];
      (*(v63 + 8))(v73, v66);
    }

    sub_A310(v62, v93, &qword_F3460, &qword_C5370);
    swift_storeEnumTagMultiPayload();
    sub_AEBB0();
    sub_B6F00();
    sub_A194(v62, &qword_F3460, &qword_C5370);
    return sub_ADFB8(v61);
  }
}

uint64_t sub_AAF1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 32) + v4);
  v6 = *v5;
  v7 = v5[1];
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v5;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_ACD70(v6, v7);
}

void *sub_AAFB0(uint64_t a1)
{
  v2 = sub_B6700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v5 = *(v31 - 8);
  v6 = __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3448, &qword_C5358);
  v10 = *(v5 + 72);
  v11 = &qword_F3198;
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v30 = swift_allocObject();
  v13 = v30 + v12;
  v14 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(a1 + *(v14 + 44), v13, &qword_F3198, &qword_C4F00);
  v15 = a1 + *(v14 + 48);
  v36 = v10;
  v38 = v13;
  sub_A310(v15, v13 + v10, &qword_F3198, &qword_C4F00);
  v16 = sub_B7A60();
  v17 = &qword_C4F00;
  v18 = 0;
  v19 = 0;
  v34 = (v3 + 48);
  v35 = v16;
  v32 = v3;
  v33 = (v3 + 32);
  v20 = &_swiftEmptyArrayStorage;
  do
  {
    v21 = v2;
    v22 = v18;
    v23 = v11;
    v24 = v17;
    sub_A310(v38 + v19 * v36, v39, v11, v17);
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_AB00(v39, v8, v11, v24);

    if ((*v34)(v8, 1, v2) == 1)
    {
      sub_A194(v8, v11, v24);
      v17 = v24;
    }

    else
    {
      v25 = *v33;
      (*v33)(v37, v8, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_536AC(0, v20[2] + 1, 1, v20);
      }

      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        v20 = sub_536AC((v26 > 1), v27 + 1, 1, v20);
      }

      v20[2] = v27 + 1;
      v28 = v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27;
      v2 = v21;
      v25(v28, v37, v21);
      v11 = v23;
      v17 = v24;
    }

    v18 = 1;
    v19 = 1;
  }

  while ((v22 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v20;
}

void *sub_AB3BC()
{
  v1 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_AAFB0(v2);
}

void *PeopleListPersonRow.State.contact.getter()
{
  v1 = *(v0 + *(type metadata accessor for PeopleListPersonRow.State(0) + 40));
  v2 = v1;
  return v1;
}

uint64_t sub_AB450(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_97E8();

  v5 = sub_B7200();
  v7 = v6;
  v21 = v8;
  sub_B6E60();
  v9 = sub_B71F0();
  v11 = v10;
  v13 = v12;
  v14 = sub_B71D0();
  v16 = v15;
  v18 = v17;
  sub_9C84(v9, v11, v13 & 1);

  sub_9C84(v5, v7, v21 & 1);

  v19 = sub_B71D0();
  sub_9C84(v14, v16, v18 & 1);

  return v19;
}

uint64_t sub_AB5F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3408, &qword_C5330);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = v0[1];
  if (v8)
  {
    v13[0] = *v0;
    v13[1] = v8;
    sub_97E8();

    *v7 = sub_B7200();
    *(v7 + 1) = v9;
    v7[16] = v10 & 1;
    *(v7 + 3) = v11;
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210, &protocol conformance descriptor for ProgressView<A, B>);
    return sub_B6F00();
  }

  else
  {
    sub_B6A90();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210, &protocol conformance descriptor for ProgressView<A, B>);
    sub_B6F00();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t PeopleListPersonRow.State.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PeopleListPersonRow.State.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PeopleListPersonRow.State.detailOrProgress.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_ACD70(v4, v5);
}

id PeopleListPersonRow.State.sendableContact.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PeopleListPersonRow.State(0) + 40));
  *a1 = v3;

  return v3;
}

uint64_t PeopleListPersonRow.State.init(id:title:subtitle:subtitleExtra:detailOrProgress:symbol:contact:primaryControl:secondaryControl:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[1];
  v16 = *a7;
  v17 = a7[1];
  *a9 = *a1;
  a9[1] = v15;
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  v18 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_AB00(a6, a9 + v18[7], &qword_F3190, &unk_C4EF0);
  v19 = (a9 + v18[8]);
  *v19 = v16;
  v19[1] = v17;
  sub_AB00(a8, a9 + v18[9], &qword_F2698, &qword_C38E8);
  *(a9 + v18[10]) = a10;
  sub_AB00(a11, a9 + v18[11], &qword_F3198, &qword_C4F00);
  return sub_AB00(a12, a9 + v18[12], &qword_F3198, &qword_C4F00);
}

Swift::Int PeopleListPersonRow.State.SendableContact.hashValue.getter()
{
  sub_B7EB0();
  sub_B7BC0();
  return sub_B7EE0();
}

Swift::Int sub_ABC14()
{
  sub_B7EB0();
  sub_B7BC0();
  return sub_B7EE0();
}

void PeopleListPersonRow.State.DetailOrProgress.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_B7EC0(0);

    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }
}

Swift::Int PeopleListPersonRow.State.DetailOrProgress.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_B7EB0();
  if (v1)
  {
    sub_B7EC0(0);
    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }

  return sub_B7EE0();
}

Swift::Int sub_ABD40()
{
  v1 = *(v0 + 8);
  sub_B7EB0();
  if (v1)
  {
    sub_B7EC0(0);
    sub_B7980();
  }

  else
  {
    sub_B7EC0(1uLL);
  }

  return sub_B7EE0();
}

uint64_t PeopleListPersonRow.State.RelativeDateOrString.hash(into:)(uint64_t a1)
{
  v2 = sub_B62D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AD198(v1, v8, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate, &protocol conformance descriptor for FindMyRelativeDate);
    sub_B7880();
    return (*(v3 + 8))(v5, v2);
  }
}

Swift::Int PeopleListPersonRow.State.RelativeDateOrString.hashValue.getter()
{
  v1 = v0;
  v2 = sub_B62D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_AD198(v1, v8, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate, &protocol conformance descriptor for FindMyRelativeDate);
    sub_B7880();
    (*(v3 + 8))(v5, v2);
  }

  return sub_B7EE0();
}

Swift::Int sub_AC19C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_B62D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_AD198(v3, v10, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_B7EC0(1uLL);
    sub_B7980();
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    sub_B7EC0(0);
    sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate, &protocol conformance descriptor for FindMyRelativeDate);
    sub_B7880();
    (*(v5 + 8))(v8, v4);
  }

  return sub_B7EE0();
}

uint64_t static PeopleListPersonRow.State.ID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_B7DD0();
  }
}

Swift::Int PeopleListPersonRow.State.ID.hashValue.getter()
{
  sub_B7EB0();
  sub_B7980();
  return sub_B7EE0();
}

Swift::Int sub_AC420()
{
  sub_B7EB0();
  sub_B7980();
  return sub_B7EE0();
}

void PeopleListPersonRow.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_B6700();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v6 = __chkstk_darwin(v5 - 8);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v41 - v8;
  v9 = sub_B63C0();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  __chkstk_darwin(v11 - 8);
  v45 = &v41 - v12;
  v13 = sub_B62D0();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin(v13);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  __chkstk_darwin(v22 - 8);
  v24 = &v41 - v23;
  sub_B7980();
  sub_B7980();
  sub_B7980();
  v25 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(v2 + v25[7], v24, &qword_F3190, &unk_C4EF0);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    sub_B7ED0(0);
    v26 = v52;
  }

  else
  {
    sub_A9A64(v24, v21, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    sub_B7ED0(1u);
    sub_AD198(v21, v19, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_B7EC0(1uLL);
      sub_B7980();
    }

    else
    {
      v28 = v41;
      v27 = v42;
      v29 = v43;
      (*(v42 + 32))(v41, v19, v43);
      sub_B7EC0(0);
      sub_AE014(&qword_F31A8, &type metadata accessor for FindMyRelativeDate, &protocol conformance descriptor for FindMyRelativeDate);
      sub_B7880();
      (*(v27 + 8))(v28, v29);
    }

    v26 = v52;
    sub_ADFB8(v21);
  }

  v30 = v46;
  v31 = *(v2 + v25[8] + 8);
  v32 = v51;
  if (v31 == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    sub_B7ED0(1u);
    if (v31)
    {
      sub_B7EC0(0);
      sub_B7980();
    }

    else
    {
      sub_B7EC0(1uLL);
    }
  }

  v33 = v45;
  sub_A310(v2 + v25[9], v45, &qword_F2698, &qword_C38E8);
  v34 = v47;
  if ((*(v30 + 48))(v33, 1, v47) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v35 = v44;
    (*(v30 + 32))(v44, v33, v34);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B0, &type metadata accessor for Symbol, &protocol conformance descriptor for Symbol);
    sub_B7880();
    (*(v30 + 8))(v35, v34);
  }

  if (*(v2 + v25[10]))
  {
    sub_B7ED0(1u);
    sub_B7BC0();
  }

  else
  {
    sub_B7ED0(0);
  }

  v36 = v48;
  sub_A310(v2 + v25[11], v48, &qword_F3198, &qword_C4F00);
  v37 = *(v32 + 48);
  if (v37(v36, 1, v26) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v38 = v50;
    (*(v32 + 32))(v50, v36, v26);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B8, &type metadata accessor for GenericControl.Info, &protocol conformance descriptor for GenericControl.Info);
    sub_B7880();
    (*(v32 + 8))(v38, v26);
  }

  v39 = v49;
  sub_A310(v2 + v25[12], v49, &qword_F3198, &qword_C4F00);
  if (v37(v39, 1, v26) == 1)
  {
    sub_B7ED0(0);
  }

  else
  {
    v40 = v50;
    (*(v32 + 32))(v50, v39, v26);
    sub_B7ED0(1u);
    sub_AE014(&qword_F31B8, &type metadata accessor for GenericControl.Info, &protocol conformance descriptor for GenericControl.Info);
    sub_B7880();
    (*(v32 + 8))(v40, v26);
  }
}

Swift::Int PeopleListPersonRow.State.hashValue.getter()
{
  sub_B7EB0();
  PeopleListPersonRow.State.hash(into:)(v1);
  return sub_B7EE0();
}

Swift::Int sub_ACD28()
{
  sub_B7EB0();
  PeopleListPersonRow.State.hash(into:)(v1);
  return sub_B7EE0();
}

uint64_t sub_ACD70(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_ACD84()
{
  result = qword_F31A0;
  if (!qword_F31A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F31A0);
  }

  return result;
}

uint64_t _s13FindMyAppCore19PeopleListPersonRowV5StateV16DetailOrProgressO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_B7DD0();
}

uint64_t _s13FindMyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = sub_B62D0();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3440, &qword_C5350);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = (&v26 + *(v14 + 56) - v15);
  sub_AD198(a1, &v26 - v15, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  sub_AD198(a2, v17, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_AD198(v16, v12, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v6, v17, v27);
      v22 = sub_B62C0();
      v24 = *(v4 + 8);
      v24(v6, v23);
      v24(v12, v23);
      sub_ADFB8(v16);
      return v22 & 1;
    }

    (*(v4 + 8))(v12, v27);
    goto LABEL_12;
  }

  sub_AD198(v16, v10, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  v19 = *v10;
  v18 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_A194(v16, &qword_F3440, &qword_C5350);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_B7DD0();

  if (v21)
  {
LABEL_16:
    sub_ADFB8(v16);
    v22 = 1;
    return v22 & 1;
  }

  sub_ADFB8(v16);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_AD198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s13FindMyAppCore19PeopleListPersonRowV5StateV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_B6700();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v8 = __chkstk_darwin(v7 - 8);
  v93 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = &v90 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3418, &qword_C5338);
  v11 = __chkstk_darwin(v97);
  v94 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v90 - v13;
  v14 = sub_B63C0();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  __chkstk_darwin(v16 - 8);
  v101 = &v90 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3420, &qword_C5340);
  __chkstk_darwin(v100);
  v102 = &v90 - v18;
  v19 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  __chkstk_darwin(v23 - 8);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3428, &qword_C5348);
  __chkstk_darwin(v26);
  v28 = &v90 - v27;
  v29 = *a1;
  v30 = a1[1];
  v31 = *a2;
  v32 = a2[1];
  v105 = a2;
  if ((v29 != v31 || v30 != v32) && (sub_B7DD0() & 1) == 0 || (a1[2] != v105[2] || a1[3] != v105[3]) && (sub_B7DD0() & 1) == 0 || (a1[4] != v105[4] || a1[5] != v105[5]) && (sub_B7DD0() & 1) == 0)
  {
    return 0;
  }

  v90 = v6;
  v91 = v4;
  v92 = type metadata accessor for PeopleListPersonRow.State(0);
  v33 = *(v92 + 28);
  v34 = *(v26 + 48);
  sub_A310(a1 + v33, v28, &qword_F3190, &unk_C4EF0);
  sub_A310(v105 + v33, &v28[v34], &qword_F3190, &unk_C4EF0);
  v35 = *(v20 + 48);
  if (v35(v28, 1, v19) == 1)
  {
    if (v35(&v28[v34], 1, v19) == 1)
    {
      sub_A194(v28, &qword_F3190, &unk_C4EF0);
      goto LABEL_19;
    }

LABEL_15:
    v36 = &qword_F3428;
    v37 = &qword_C5348;
LABEL_16:
    v38 = v28;
LABEL_17:
    sub_A194(v38, v36, v37);
    return 0;
  }

  sub_A310(v28, v25, &qword_F3190, &unk_C4EF0);
  if (v35(&v28[v34], 1, v19) == 1)
  {
    sub_ADFB8(v25);
    goto LABEL_15;
  }

  sub_A9A64(&v28[v34], v22, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  MyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0 = _s13FindMyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0(v25, v22);
  sub_ADFB8(v22);
  sub_ADFB8(v25);
  sub_A194(v28, &qword_F3190, &unk_C4EF0);
  if ((MyAppCore19PeopleListPersonRowV5StateV20RelativeDateOrStringO2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v40 = v92;
  v41 = *(v92 + 32);
  v42 = *(a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (v105 + v41);
  v45 = *v44;
  v46 = v44[1];
  if (v43 == 1)
  {
    if (v46 == 1)
    {
      v43 = 1;
      sub_ACD70(v42, 1);
      sub_ACD70(v45, 1);
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  if (v46 == 1)
  {
LABEL_26:
    sub_ACD70(v42, v43);
    sub_ACD70(v45, v46);
    sub_20AD4(v42, v43);
    v55 = v45;
    v56 = v46;
LABEL_44:
    sub_20AD4(v55, v56);
    return 0;
  }

  if (!v43)
  {
    if (!v46)
    {
      sub_ACD70(v42, 0);
      sub_ACD70(v45, 0);
      swift_bridgeObjectRelease_n();
      v43 = 0;
      goto LABEL_22;
    }

LABEL_42:
    sub_ACD70(v42, v43);
    sub_ACD70(v45, v46);
    sub_ACD70(v42, v43);

    goto LABEL_43;
  }

  if (!v46)
  {
    goto LABEL_42;
  }

  if (v42 == v45 && v43 == v46)
  {
    sub_ACD70(v42, v43);
    sub_ACD70(v42, v43);
    sub_ACD70(v42, v43);

    goto LABEL_22;
  }

  v70 = sub_B7DD0();
  sub_ACD70(v42, v43);
  sub_ACD70(v45, v46);
  sub_ACD70(v42, v43);

  if ((v70 & 1) == 0)
  {
LABEL_43:
    v55 = v42;
    v56 = v43;
    goto LABEL_44;
  }

LABEL_22:
  sub_20AD4(v42, v43);
  v47 = v40[9];
  v48 = *(v100 + 48);
  v49 = v102;
  sub_A310(a1 + v47, v102, &qword_F2698, &qword_C38E8);
  sub_A310(v105 + v47, v49 + v48, &qword_F2698, &qword_C38E8);
  v51 = v103;
  v50 = v104;
  v52 = *(v103 + 48);
  v53 = v52(v49, 1, v104);
  v54 = v101;
  if (v53 == 1)
  {
    if (v52(v49 + v48, 1, v50) == 1)
    {
      sub_A194(v49, &qword_F2698, &qword_C38E8);
      goto LABEL_38;
    }

LABEL_34:
    v36 = &qword_F3420;
    v37 = &qword_C5340;
    v38 = v49;
    goto LABEL_17;
  }

  sub_A310(v49, v101, &qword_F2698, &qword_C38E8);
  if (v52(v49 + v48, 1, v50) == 1)
  {
    (*(v51 + 8))(v54, v50);
    goto LABEL_34;
  }

  v57 = v49 + v48;
  v58 = v99;
  (*(v51 + 32))(v99, v57, v50);
  sub_AE014(&qword_F3438, &type metadata accessor for Symbol, &protocol conformance descriptor for Symbol);
  v59 = sub_B78C0();
  v60 = *(v51 + 8);
  v60(v58, v50);
  v60(v54, v50);
  sub_A194(v49, &qword_F2698, &qword_C38E8);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v61 = v40[10];
  v62 = *(a1 + v61);
  v63 = *(v105 + v61);
  if (!v62)
  {
    if (!v63)
    {
      goto LABEL_50;
    }

    v69 = 0;
    v62 = *(v105 + v61);
LABEL_55:
    v75 = v62;

    return 0;
  }

  if (!v63)
  {
    v69 = *(a1 + v61);
    goto LABEL_55;
  }

  sub_ACD84();
  v64 = v62;
  v65 = v63;
  v66 = v64;
  v67 = sub_B7BB0();

  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v71 = v40[11];
  v28 = v96;
  v72 = *(v97 + 48);
  sub_A310(a1 + v71, v96, &qword_F3198, &qword_C4F00);
  sub_A310(v105 + v71, &v28[v72], &qword_F3198, &qword_C4F00);
  v73 = *(v98 + 48);
  v74 = v91;
  if (v73(v28, 1, v91) == 1)
  {
    if (v73(&v28[v72], 1, v74) == 1)
    {
      sub_A194(v28, &qword_F3198, &qword_C4F00);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v76 = v95;
  sub_A310(v28, v95, &qword_F3198, &qword_C4F00);
  if (v73(&v28[v72], 1, v74) == 1)
  {
    (*(v98 + 8))(v76, v74);
LABEL_58:
    v36 = &qword_F3418;
    v37 = &qword_C5338;
    goto LABEL_16;
  }

  v77 = v98;
  (*(v98 + 32))(v90, &v28[v72], v74);
  sub_AE014(&qword_F3430, &type metadata accessor for GenericControl.Info, &protocol conformance descriptor for GenericControl.Info);
  v78 = sub_B78C0();
  v79 = v77;
  v40 = v92;
  v80 = *(v79 + 8);
  v80(v90, v74);
  v80(v76, v74);
  sub_A194(v28, &qword_F3198, &qword_C4F00);
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v81 = v40[12];
  v82 = *(v97 + 48);
  v83 = a1 + v81;
  v84 = v94;
  sub_A310(v83, v94, &qword_F3198, &qword_C4F00);
  sub_A310(v105 + v81, v84 + v82, &qword_F3198, &qword_C4F00);
  if (v73(v84, 1, v74) != 1)
  {
    v85 = v93;
    sub_A310(v84, v93, &qword_F3198, &qword_C4F00);
    if (v73((v84 + v82), 1, v74) != 1)
    {
      v86 = v98;
      v87 = v90;
      (*(v98 + 32))(v90, v84 + v82, v74);
      sub_AE014(&qword_F3430, &type metadata accessor for GenericControl.Info, &protocol conformance descriptor for GenericControl.Info);
      v88 = sub_B78C0();
      v89 = *(v86 + 8);
      v89(v87, v74);
      v89(v85, v74);
      sub_A194(v84, &qword_F3198, &qword_C4F00);
      return (v88 & 1) != 0;
    }

    (*(v98 + 8))(v85, v74);
    goto LABEL_65;
  }

  if (v73((v84 + v82), 1, v74) != 1)
  {
LABEL_65:
    v36 = &qword_F3418;
    v37 = &qword_C5338;
    v38 = v84;
    goto LABEL_17;
  }

  sub_A194(v84, &qword_F3198, &qword_C4F00);
  return 1;
}

uint64_t sub_ADFB8(uint64_t a1)
{
  v2 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AE014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_AE060()
{
  result = qword_F31C0;
  if (!qword_F31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31C0);
  }

  return result;
}

unint64_t sub_AE0B8()
{
  result = qword_F31C8;
  if (!qword_F31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31C8);
  }

  return result;
}

unint64_t sub_AE158()
{
  result = qword_F31D8;
  if (!qword_F31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31D8);
  }

  return result;
}

unint64_t sub_AE1F8()
{
  result = qword_F31E8;
  if (!qword_F31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F31E8);
  }

  return result;
}

uint64_t sub_AE27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleListPersonRow.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_AE2FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleListPersonRow.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_AE36C(uint64_t a1)
{
  result = type metadata accessor for PeopleListPersonRow.State(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AE3EC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_AE590(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3198, &qword_C4F00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_AE720(uint64_t a1)
{
  sub_AE880(319, &qword_F32E8, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
  if (v1 <= 0x3F)
  {
    sub_AE8D4(319, &qword_F32F0, &type metadata for PeopleListPersonRow.State.DetailOrProgress);
    if (v2 <= 0x3F)
    {
      sub_AE880(319, &qword_F32F8, &type metadata accessor for Symbol);
      if (v3 <= 0x3F)
      {
        sub_AE8D4(319, &qword_F3300, &type metadata for PeopleListPersonRow.State.SendableContact);
        if (v4 <= 0x3F)
        {
          sub_AE880(319, &unk_F3308, &type metadata accessor for GenericControl.Info);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_AE880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_B7BE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_AE8D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_B7BE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_AE930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_AE980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_AE9D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_AE9EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_AEA1C(uint64_t a1)
{
  result = sub_B62D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AEAD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_AEB34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_AEBB0()
{
  result = qword_F3468;
  if (!qword_F3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3460, &qword_C5370);
    sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText, &protocol conformance descriptor for RelativeDateText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3468);
  }

  return result;
}

uint64_t sub_AEC6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_AB450(a1, a2, a3 & 1, a4, v10);
}

unint64_t sub_AED10()
{
  result = qword_F3490;
  if (!qword_F3490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3498, &qword_C5388);
    sub_A8CC(&qword_F3410, &qword_F0870, &unk_C2210, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3490);
  }

  return result;
}

unint64_t sub_AEE78()
{
  result = qword_F34A0;
  if (!qword_F34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34A0);
  }

  return result;
}

unint64_t sub_AEED0()
{
  result = qword_F34A8;
  if (!qword_F34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34A8);
  }

  return result;
}

unint64_t sub_AEF28()
{
  result = qword_F34B0;
  if (!qword_F34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34B0);
  }

  return result;
}

unint64_t sub_AEF80()
{
  result = qword_F34B8;
  if (!qword_F34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F34B8);
  }

  return result;
}

uint64_t LostModeInfo.init(handle:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_B6370();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for LostModeInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for LostModeInfo(uint64_t a1)
{
  result = qword_F3520;
  if (!qword_F3520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostModeInfo.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for LostModeInfo(0) + 20));

  return v1;
}

uint64_t static LostModeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_B6310() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for LostModeInfo(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_B7DD0();
}

uint64_t LostModeInfo.hash(into:)(uint64_t a1)
{
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  sub_B7880();
  type metadata accessor for LostModeInfo(0);

  return sub_B7980();
}

Swift::Int LostModeInfo.hashValue.getter()
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  sub_B7880();
  type metadata accessor for LostModeInfo(0);
  sub_B7980();
  return sub_B7EE0();
}

uint64_t sub_AF2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_B6310() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_B7DD0();
}

Swift::Int sub_AF358(uint64_t a1)
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  sub_B7880();
  sub_B7980();
  return sub_B7EE0();
}

uint64_t sub_AF400(uint64_t a1, uint64_t a2)
{
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  sub_B7880();

  return sub_B7980();
}

Swift::Int sub_AF49C(uint64_t a1, uint64_t a2)
{
  sub_B7EB0();
  sub_B6370();
  sub_AF7D8(&qword_EF4D0, &type metadata accessor for PersonModel.Handle, &protocol conformance descriptor for PersonModel.Handle);
  sub_B7880();
  sub_B7980();
  return sub_B7EE0();
}

uint64_t LostModeInfo.email.getter()
{
  v0 = sub_B6320();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B6330();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return 0;
  }

  if (v4 != enum case for PersonModel.Handle.Kind.email(_:))
  {
    if (v4 != enum case for PersonModel.Handle.Kind.unknown(_:))
    {
      (*(v1 + 8))(v3, v0);
    }

    return 0;
  }

  return _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
}

uint64_t LostModeInfo.phoneNumber.getter()
{
  v0 = sub_B6320();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B6330();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  }

  if (v4 != enum case for PersonModel.Handle.Kind.email(_:) && v4 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

uint64_t sub_AF7D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AF834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B6370();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_AF908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B6370();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_AF9C4(uint64_t a1)
{
  result = sub_B6370();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_AFA5C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F35F0);
  __swift_project_value_buffer(v0, qword_F35F0);
  type metadata accessor for PeopleManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.peopleManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F35F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *PeopleManagementSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for PeopleManagementSectionViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

char *PeopleManagementSectionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v8 = sub_B62F0();
  v9 = __swift_project_value_buffer(v8, qword_F35F0);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v5, v9, v8);
  (*(v10 + 56))(v5, 0, 1, v8);
  v11 = sub_B78D0();
  v13 = v12;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v15[0] = v6;
  v15[1] = v7;
  result = sub_AFD90();
  *a1 = v11;
  a1[1] = v13;
  a1[2] = result;
  return result;
}

char *sub_AFD90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v1 - 8);
  v195 = &v188 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3608, &qword_C5728);
  __chkstk_darwin(v3 - 8);
  v194 = &v188 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v5 - 8);
  v196 = &v188 - v6;
  v7 = *v0;
  v8 = v0[1];
  *&v211[0] = *v0;
  *(&v211[0] + 1) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  v10 = v205;
  swift_getKeyPath();
  *&v211[0] = v10;
  v11 = sub_B362C();
  sub_B65C0();

  v12 = *(v10 + 32);

  v199 = v8;
  v200 = v11;
  v201 = v9;
  if (v12)
  {
    *&v211[0] = v7;
    *(&v211[0] + 1) = v8;
    sub_B75C0();
    v13 = v205;
    swift_getKeyPath();
    *&v211[0] = v13;
    sub_B65C0();

    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v14 = sub_B62F0();
    v15 = __swift_project_value_buffer(v14, qword_F35F0);
    v16 = *(v14 - 8);
    v17 = v196;
    (*(v16 + 16))(v196, v15, v14);
    (*(v16 + 56))(v17, 0, 1, v14);
    v18 = sub_B78D0();
    v20 = v19;

    sub_A194(v17, &unk_F17B0, &qword_BE7D0);
    v21 = swift_allocObject();
    *(v21 + 16) = v7;
    *(v21 + 24) = v8;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    strcpy(v211, "removeFavorite");
    HIBYTE(v211[0]) = -18;
    *&v211[1] = v18;
    *(&v211[1] + 1) = v20;
    LOBYTE(v211[2]) = 1;
    *(&v211[2] + 1) = 0;
    *&v211[3] = 0;
    BYTE8(v211[3]) = 0;
    v211[4] = 0uLL;
    LOBYTE(v211[5]) = 1;
    *(&v211[5] + 1) = sub_B38FC;
    v211[6] = v21;
    memset(&v211[7], 0, 160);

    sub_2C360(&v205, &v211[11]);
    v22 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_5358C((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v198 = v22;
    memcpy(&v22[272 * v24 + 32], v211, 0x110uLL);
    v8 = v199;
  }

  else
  {
    v198 = &_swiftEmptyArrayStorage;
  }

  *&v211[0] = v7;
  *(&v211[0] + 1) = v8;
  v25 = v8;
  sub_B75C0();
  v26 = v205;
  swift_getKeyPath();
  *&v211[0] = v26;
  sub_B65C0();

  v27 = *(v26 + 32);

  v197 = v7;
  if ((v27 & 4) != 0)
  {
    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v28 = sub_B62F0();
    v29 = __swift_project_value_buffer(v28, qword_F35F0);
    v30 = *(v28 - 8);
    v31 = v196;
    (*(v30 + 16))(v196, v29, v28);
    (*(v30 + 56))(v31, 0, 1, v28);
    v32 = sub_B78D0();
    v34 = v33;
    sub_A194(v31, &unk_F17B0, &qword_BE7D0);
    v35 = swift_allocObject();
    v36 = v199;
    *(v35 + 16) = v197;
    *(v35 + 24) = v36;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    strcpy(v211, "editLocation");
    BYTE13(v211[0]) = 0;
    HIWORD(v211[0]) = -5120;
    *&v211[1] = v32;
    *(&v211[1] + 1) = v34;
    LOBYTE(v211[2]) = 1;
    *(&v211[2] + 1) = 0;
    *&v211[3] = 0;
    BYTE8(v211[3]) = 0;
    v211[4] = 0uLL;
    LOBYTE(v211[5]) = 1;
    *(&v211[5] + 1) = sub_B38D0;
    v211[6] = v35;
    memset(&v211[7], 0, 160);

    sub_2C360(&v205, &v211[11]);
    v37 = v198;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_5358C(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    v198 = v37;
    v7 = v197;
    v25 = v199;
    if (v39 >= v38 >> 1)
    {
      v198 = sub_5358C((v38 > 1), v39 + 1, 1, v198);
    }

    v40 = v198;
    *(v198 + 2) = v39 + 1;
    memcpy(&v40[272 * v39 + 32], v211, 0x110uLL);
  }

  *&v211[0] = v7;
  *(&v211[0] + 1) = v25;
  sub_B75C0();
  v41 = v205;
  swift_getKeyPath();
  *&v211[0] = v41;
  sub_B65C0();

  v42 = *(v41 + 32);

  if ((v42 & 0x80) != 0)
  {
    return v198;
  }

  v43 = v7;
  *&v211[0] = v7;
  *(&v211[0] + 1) = v25;
  sub_B75C0();
  v44 = v205;
  swift_getKeyPath();
  *&v211[0] = v44;
  sub_B65C0();

  v45 = *(v44 + 32);

  if ((v45 & 8) != 0)
  {
    p_base_props = &PeopleModule.base_props;
    v49 = v198;
    if (qword_EEAF0 != -1)
    {
      swift_once();
    }

    v50 = sub_B62F0();
    v51 = __swift_project_value_buffer(v50, qword_F35F0);
    v52 = *(v50 - 8);
    v53 = v196;
    (*(v52 + 16))(v196, v51, v50);
    (*(v52 + 56))(v53, 0, 1, v50);
    v54 = sub_B78D0();
    v56 = v55;
    sub_A194(v53, &unk_F17B0, &qword_BE7D0);
    v57 = swift_allocObject();
    v58 = v197;
    v59 = v199;
    *(v57 + 16) = v197;
    *(v57 + 24) = v59;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    *&v211[0] = 0xD000000000000016;
    *(&v211[0] + 1) = 0x80000000000BC940;
    *&v211[1] = v54;
    *(&v211[1] + 1) = v56;
    LOBYTE(v211[2]) = 1;
    *(&v211[2] + 1) = 0;
    *&v211[3] = 0;
    BYTE8(v211[3]) = 0;
    v211[4] = 0uLL;
    LOBYTE(v211[5]) = 1;
    v48 = v58;
    *(&v211[5] + 1) = sub_B38A4;
    v211[6] = v57;
    memset(&v211[7], 0, 160);

    sub_2C360(&v205, &v211[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
    }

    v61 = *(v49 + 2);
    v60 = *(v49 + 3);
    v46 = v199;
    if (v61 >= v60 >> 1)
    {
      v49 = sub_5358C((v60 > 1), v61 + 1, 1, v49);
    }

    *(v49 + 2) = v61 + 1;
    memcpy(&v49[272 * v61 + 32], v211, 0x110uLL);
  }

  else
  {
    v46 = v25;
    p_base_props = (&PeopleModule + 64);
    v48 = v43;
    v49 = v198;
  }

  v62 = v48;
  *&v211[0] = v48;
  *(&v211[0] + 1) = v46;
  sub_B75C0();
  v63 = v205;
  swift_getKeyPath();
  *&v211[0] = v63;
  sub_B65C0();

  v64 = *(v63 + 32);

  if ((v64 & 0x20) != 0)
  {
    *(&v211[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v211[2] = sub_28360();
    v65 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v211);
    if (v65)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v66 = sub_B62F0();
      v67 = __swift_project_value_buffer(v66, qword_F35F0);
      v68 = *(v66 - 8);
      v69 = v196;
      v70 = v67;
      v191 = *(v68 + 16);
      v191(v196);
      v71 = *(v68 + 56);
      v71(v69, 0, 1, v66);
      v192 = "startSharingLocation";
      v198 = sub_B78D0();
      v193 = v72;
      sub_A194(v69, &unk_F17B0, &qword_BE7D0);
      *&v211[0] = v48;
      *(&v211[0] + 1) = v199;
      v73 = v194;
      sub_B1FA0(v194);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
      if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
      {
        sub_A194(v73, &qword_F3608, &qword_C5728);
        v202 = 0u;
        v203 = 0u;
        v204 = 0;
      }

      else
      {
        *(&v203 + 1) = v74;
        v204 = sub_A8CC(&qword_F3638, &qword_F3630, &qword_C5770, &protocol conformance descriptor for TupleView<A>);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v202);
        sub_B3834(v73, boxed_opaque_existential_0);
      }

      v88 = v196;
      (v191)(v196, v70, v66);
      v71(v88, 0, 1, v66);
      v89 = sub_B78D0();
      v91 = v90;
      sub_A194(v88, &unk_F17B0, &qword_BE7D0);
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      memset(&v211[11], 0, 96);
      *(&v211[6] + 8) = 0u;
      *(&v211[5] + 8) = 0u;
      *(&v211[8] + 8) = v203;
      *&v211[0] = 0xD000000000000014;
      *(&v211[0] + 1) = 0x80000000000BC8F0;
      *&v211[1] = v198;
      *(&v211[1] + 1) = v193;
      LOBYTE(v211[2]) = 1;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
      LOBYTE(v211[5]) = 1;
      *(&v211[7] + 8) = v202;
      *(&v211[9] + 1) = v204;
      *&v211[10] = v89;
      *(&v211[10] + 1) = v91;
      sub_2C360(&v205, &v211[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
      }

      v46 = v199;
      p_base_props = &PeopleModule.base_props;
      v85 = *(v49 + 2);
      v84 = *(v49 + 3);
      v86 = v85 + 1;
      v62 = v197;
      if (v85 < v84 >> 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v75 = sub_B62F0();
      v76 = __swift_project_value_buffer(v75, qword_F35F0);
      v77 = *(v75 - 8);
      v78 = v196;
      (*(v77 + 16))(v196, v76, v75);
      (*(v77 + 56))(v78, 0, 1, v75);
      v79 = sub_B78D0();
      v81 = v80;
      sub_A194(v78, &unk_F17B0, &qword_BE7D0);
      v82 = swift_allocObject();
      v62 = v197;
      v83 = v199;
      *(v82 + 16) = v197;
      *(v82 + 24) = v83;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      *&v211[0] = 0xD000000000000014;
      *(&v211[0] + 1) = 0x80000000000BC8F0;
      *&v211[1] = v79;
      *(&v211[1] + 1) = v81;
      LOBYTE(v211[2]) = 1;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
      LOBYTE(v211[5]) = 1;
      *(&v211[5] + 1) = sub_B3808;
      v211[6] = v82;
      memset(&v211[7], 0, 160);

      sub_2C360(&v205, &v211[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
      }

      v85 = *(v49 + 2);
      v84 = *(v49 + 3);
      v86 = v85 + 1;
      v46 = v199;
      if (v85 < v84 >> 1)
      {
        goto LABEL_43;
      }
    }

    v49 = sub_5358C((v84 > 1), v86, 1, v49);
LABEL_43:
    *(v49 + 2) = v86;
    memcpy(&v49[272 * v85 + 32], v211, 0x110uLL);
  }

  *&v211[0] = v62;
  *(&v211[0] + 1) = v46;
  sub_B75C0();
  v92 = v205;
  swift_getKeyPath();
  *&v211[0] = v92;
  sub_B65C0();

  v93 = *(v92 + 32);

  if ((v93 & 0x40) != 0)
  {
    *(&v211[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v211[2] = sub_28360();
    v94 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v211);
    v198 = 0x80000000000BC870;
    if (v94)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v95 = sub_B62F0();
      v96 = __swift_project_value_buffer(v95, qword_F35F0);
      v97 = *(v95 - 8);
      v98 = *(v97 + 16);
      v99 = v196;
      v98(v196, v96, v95);
      v100 = *(v97 + 56);
      v100(v99, 0, 1, v95);
      v101 = sub_B78D0();
      v193 = v102;
      v194 = v101;
      sub_A194(v99, &unk_F17B0, &qword_BE7D0);
      *(&v211[7] + 8) = 0u;
      *(&v211[8] + 8) = 0u;
      *(&v211[9] + 1) = 0;
      v98(v99, v96, v95);
      v100(v99, 0, 1, v95);
      v103 = sub_B78D0();
      v105 = v104;
      sub_A194(v99, &unk_F17B0, &qword_BE7D0);
      *&v205 = v103;
      *(&v205 + 1) = v105;
      sub_97E8();
      v106 = sub_B7200();
      v108 = v107;
      LOBYTE(v105) = v109;
      v111 = v110;
      *(&v207 + 1) = &type metadata for Text;
      *&v208 = &protocol witness table for Text;
      v112 = swift_allocObject();
      *&v206 = v112;
      *(v112 + 16) = v106;
      *(v112 + 24) = v108;
      *(v112 + 32) = v105 & 1;
      *(v112 + 40) = v111;
      *&v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v210 + 1) = sub_B36C8();
      v113 = __swift_allocate_boxed_opaque_existential_0(&v208 + 1);
      v114 = v195;
      sub_B69E0();
      v115 = sub_B6A00();
      (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
      v116 = swift_allocObject();
      v117 = v197;
      v46 = v199;
      *(v116 + 16) = v197;
      *(v116 + 24) = v46;

      sub_B7600();
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v118 - 8) + 56))(v113, 0, 1, v118);
      *&v205 = 0;
      *(&v205 + 1) = 0xE000000000000000;
      *&v211[0] = 0xD000000000000013;
      *(&v211[0] + 1) = v198;
      *&v211[1] = v194;
      *(&v211[1] + 1) = v193;
      LOBYTE(v211[2]) = 1;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
      LOBYTE(v211[5]) = 1;
      *(&v211[6] + 8) = 0u;
      *(&v211[5] + 8) = 0u;
      memset(&v211[10], 0, 112);
      sub_2C360(&v205, &v211[11]);
      v62 = v117;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
      }

      v120 = *(v49 + 2);
      v119 = *(v49 + 3);
      v121 = v120 + 1;
      v122 = v120 >= v119 >> 1;
      p_base_props = (&PeopleModule + 64);
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v123 = sub_B62F0();
      v124 = __swift_project_value_buffer(v123, qword_F35F0);
      v125 = *(v123 - 8);
      v126 = v196;
      (*(v125 + 16))(v196, v124, v123);
      (*(v125 + 56))(v126, 0, 1, v123);
      v127 = sub_B78D0();
      v129 = v128;
      sub_A194(v126, &unk_F17B0, &qword_BE7D0);
      v130 = swift_allocObject();
      v62 = v197;
      *(v130 + 16) = v197;
      *(v130 + 24) = v46;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      *&v211[0] = 0xD000000000000013;
      *(&v211[0] + 1) = v198;
      *&v211[1] = v127;
      *(&v211[1] + 1) = v129;
      LOBYTE(v211[2]) = 3;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
      LOBYTE(v211[5]) = 1;
      *(&v211[5] + 1) = sub_B37AC;
      v211[6] = v130;
      memset(&v211[7], 0, 160);

      sub_2C360(&v205, &v211[11]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
      }

      v120 = *(v49 + 2);
      v119 = *(v49 + 3);
      v121 = v120 + 1;
      v122 = v120 >= v119 >> 1;
    }

    if (v122)
    {
      v49 = sub_5358C((v119 > 1), v121, 1, v49);
    }

    *(v49 + 2) = v121;
    memcpy(&v49[272 * v120 + 32], v211, 0x110uLL);
  }

  *&v211[0] = v62;
  *(&v211[0] + 1) = v46;
  sub_B75C0();
  v131 = v205;
  swift_getKeyPath();
  *&v211[0] = v131;
  sub_B65C0();

  v132 = *(v131 + 32);

  if ((v132 & 0x10) != 0)
  {
    *(&v211[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v211[2] = sub_28360();
    v133 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v211);
    v198 = 0x80000000000BC810;
    if (v133)
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v134 = sub_B62F0();
      v135 = __swift_project_value_buffer(v134, qword_F35F0);
      v136 = *(v134 - 8);
      v191 = *(v136 + 16);
      v192 = v135;
      v137 = v196;
      (v191)(v196, v135, v134);
      v190 = *(v136 + 56);
      v190(v137, 0, 1, v134);
      v138 = sub_B78D0();
      v193 = v139;
      v194 = v138;
      sub_A194(v137, &unk_F17B0, &qword_BE7D0);
      *(&v211[7] + 8) = 0u;
      *(&v211[8] + 8) = 0u;
      *(&v211[9] + 1) = 0;
      v189 = "PEOPLE_MANAGEMENT_REMOVE_FRIEND";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_BDA30;
      *&v205 = v197;
      *(&v205 + 1) = v199;
      sub_B75C0();
      v141 = v202;
      swift_getKeyPath();
      *&v205 = v141;
      sub_B65C0();

      v143 = *(v141 + 16);
      v142 = *(v141 + 24);

      *(v140 + 56) = &type metadata for String;
      *(v140 + 64) = sub_305FC();
      *(v140 + 32) = v143;
      *(v140 + 40) = v142;
      (v191)(v137, v192, v134);
      v190(v137, 0, 1, v134);
      v144 = sub_B78D0();
      v146 = v145;

      sub_A194(v137, &unk_F17B0, &qword_BE7D0);
      *&v205 = v144;
      *(&v205 + 1) = v146;
      sub_97E8();
      v147 = sub_B7200();
      v149 = v148;
      LOBYTE(v143) = v150;
      v152 = v151;
      *(&v207 + 1) = &type metadata for Text;
      *&v208 = &protocol witness table for Text;
      v153 = swift_allocObject();
      *&v206 = v153;
      *(v153 + 16) = v147;
      *(v153 + 24) = v149;
      *(v153 + 32) = v143 & 1;
      *(v153 + 40) = v152;
      *&v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v210 + 1) = sub_B36C8();
      v154 = __swift_allocate_boxed_opaque_existential_0(&v208 + 1);
      v155 = v195;
      sub_B69E0();
      v156 = sub_B6A00();
      (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
      v157 = swift_allocObject();
      *(v157 + 16) = v197;
      *(v157 + 24) = v199;

      sub_B7600();
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v158 - 8) + 56))(v154, 0, 1, v158);
      *&v205 = 0;
      *(&v205 + 1) = 0xE000000000000000;
      v159 = 0uLL;
      memset(&v211[11], 0, 96);
      *&v211[0] = 0xD000000000000015;
      *(&v211[0] + 1) = v198;
      *&v211[1] = v194;
      *(&v211[1] + 1) = v193;
      LOBYTE(v211[2]) = 1;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
    }

    else
    {
      if (p_base_props[350] != -1)
      {
        swift_once();
      }

      v160 = sub_B62F0();
      v161 = __swift_project_value_buffer(v160, qword_F35F0);
      v162 = *(v160 - 8);
      v191 = *(v162 + 16);
      v192 = v161;
      v163 = v196;
      (v191)(v196, v161, v160);
      v190 = *(v162 + 56);
      v190(v163, 0, 1, v160);
      v164 = sub_B78D0();
      v193 = v165;
      v194 = v164;
      sub_A194(v163, &unk_F17B0, &qword_BE7D0);
      *(&v211[7] + 8) = 0u;
      *(&v211[8] + 8) = 0u;
      *(&v211[9] + 1) = 0;
      v189 = "PEOPLE_MANAGEMENT_REMOVE_FRIEND";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_BDA30;
      *&v205 = v197;
      *(&v205 + 1) = v199;
      sub_B75C0();
      v167 = v202;
      swift_getKeyPath();
      *&v205 = v167;
      sub_B65C0();

      v169 = *(v167 + 16);
      v168 = *(v167 + 24);

      *(v166 + 56) = &type metadata for String;
      *(v166 + 64) = sub_305FC();
      *(v166 + 32) = v169;
      *(v166 + 40) = v168;
      (v191)(v163, v192, v160);
      v190(v163, 0, 1, v160);
      v170 = sub_B78D0();
      v172 = v171;

      sub_A194(v163, &unk_F17B0, &qword_BE7D0);
      *&v205 = v170;
      *(&v205 + 1) = v172;
      sub_97E8();
      v173 = sub_B7200();
      v175 = v174;
      LOBYTE(v169) = v176;
      v178 = v177;
      *(&v207 + 1) = &type metadata for Text;
      *&v208 = &protocol witness table for Text;
      v179 = swift_allocObject();
      *&v206 = v179;
      *(v179 + 16) = v173;
      *(v179 + 24) = v175;
      *(v179 + 32) = v169 & 1;
      *(v179 + 40) = v178;
      *&v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3620, &qword_C5768);
      *(&v210 + 1) = sub_B36C8();
      v180 = __swift_allocate_boxed_opaque_existential_0(&v208 + 1);
      v181 = v195;
      sub_B69E0();
      v182 = sub_B6A00();
      (*(*(v182 - 8) + 56))(v181, 0, 1, v182);
      v183 = swift_allocObject();
      *(v183 + 16) = v197;
      *(v183 + 24) = v199;

      sub_B7600();
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
      (*(*(v184 - 8) + 56))(v180, 0, 1, v184);
      *&v205 = 0;
      *(&v205 + 1) = 0xE000000000000000;
      v159 = 0uLL;
      memset(&v211[11], 0, 96);
      *&v211[0] = 0xD000000000000015;
      *(&v211[0] + 1) = v198;
      *&v211[1] = v194;
      *(&v211[1] + 1) = v193;
      LOBYTE(v211[2]) = 3;
      *(&v211[2] + 1) = 0;
      *&v211[3] = 0;
      BYTE8(v211[3]) = 0;
      v211[4] = 0uLL;
    }

    LOBYTE(v211[5]) = 1;
    *(&v211[6] + 8) = v159;
    *(&v211[5] + 8) = v159;
    v211[10] = 0uLL;
    sub_2C360(&v205, &v211[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_5358C(0, *(v49 + 2) + 1, 1, v49);
    }

    v186 = *(v49 + 2);
    v185 = *(v49 + 3);
    if (v186 >= v185 >> 1)
    {
      v49 = sub_5358C((v185 > 1), v186 + 1, 1, v49);
    }

    *(v49 + 2) = v186 + 1;
    memcpy(&v49[272 * v186 + 32], v211, 0x110uLL);
  }

  return v49;
}

double sub_B1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v3 = (v7 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onSetAsFavorite);
  swift_beginAccess();
  v4 = *v3;

  sub_B75C0();
  swift_getKeyPath();
  sub_B65C0();

  LOBYTE(v3) = *(v6 + 40);

  v4((v3 & 1) == 0);

  return result;
}

uint64_t sub_B1FA0@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3640, &qword_C57F0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v35 = &v33 - v7;
  v8 = __chkstk_darwin(v6);
  v38 = &v33 - v9;
  v10 = __chkstk_darwin(v8);
  v34 = &v33 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v18 = *v1;
  v17 = v1[1];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3648, &qword_C57F8);
  sub_A8CC(&qword_F3650, &qword_F3648, &qword_C57F8, &protocol conformance descriptor for Label<A, B>);
  v20 = v16;
  v33 = v16;
  sub_B7610();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v17;

  sub_B7610();
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v17;

  v23 = v34;
  sub_B7610();
  v24 = *(v3 + 16);
  v25 = v38;
  v24(v38, v20, v2);
  v26 = v35;
  v24(v35, v14, v2);
  v27 = v36;
  v24(v36, v23, v2);
  v28 = v37;
  v24(v37, v25, v2);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3658, &qword_C5800);
  v24(&v28[*(v29 + 48)], v26, v2);
  v24(&v28[*(v29 + 64)], v27, v2);
  v30 = *(v3 + 8);
  v30(v23, v2);
  v30(v14, v2);
  v30(v33, v2);
  v30(v27, v2);
  v30(v26, v2);
  v30(v38, v2);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
  return (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
}

double sub_B244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v6 = (v10 + *a5);
  swift_beginAccess();
  v7 = *v6;

  v7(v8);

  return result;
}

void sub_B2520(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_F35F0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  v10 = v9;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v17[0] = v8;
  v17[1] = v10;
  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v16;
}

double sub_B2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v6 = (v10 + *a5);
  swift_beginAccess();
  v7 = *v6;

  v7(v8);

  return result;
}

void sub_B2888(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_F35F0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  v10 = v9;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v17[0] = v8;
  v17[1] = v10;
  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v16;
}

void sub_B2ACC(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_F35F0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  v10 = v9;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v17[0] = v8;
  v17[1] = v10;
  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v16;
}

void sub_B2D3C(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_F35F0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  v10 = v9;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v17[0] = v8;
  v17[1] = v10;
  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v16;
}

double sub_B2F88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_B6810();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15[0] = a1;
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3610, &qword_C5730);
  sub_B75C0();
  v11 = v15[3];
  swift_getKeyPath();
  v15[0] = v11;
  sub_B362C();
  sub_B65C0();

  v12 = (v11 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocationFor);
  swift_beginAccess();
  v13 = *v12;

  (*(v8 + 104))(v10, *a4, v7);
  v13(v10);

  (*(v8 + 8))(v10, v7);

  return result;
}

double sub_B31CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3660, &qword_C5808);
  sub_B3994();
  sub_B7590();

  return result;
}

void sub_B32C8(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_F35F0);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  v8 = sub_B78D0();
  v10 = v9;
  sub_A194(v4, &unk_F17B0, &qword_BE7D0);
  v17[0] = v8;
  v17[1] = v10;
  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  LOBYTE(v10) = v14;
  v16 = v15;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v16;
}

void sub_B350C(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v9 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v9)
  {
    v10 = a4(a2, a3);
  }

  else
  {

    v10 = 0;
  }

  *a5 = v10;
}

unint64_t sub_B362C()
{
  result = qword_F3618;
  if (!qword_F3618)
  {
    type metadata accessor for PeopleManagementSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3618);
  }

  return result;
}

uint64_t sub_B3684()
{
  sub_9C84(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_B36C8()
{
  result = qword_F3628;
  if (!qword_F3628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3620, &qword_C5768);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3628);
  }

  return result;
}

uint64_t sub_B3834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3630, &qword_C5770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_B3994()
{
  result = qword_F3668;
  if (!qword_F3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F3660, &qword_C5808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3668);
  }

  return result;
}

uint64_t sub_B3AB4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t PeopleManagementSectionViewModel.isFavorite.getter()
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  return *(v0 + 40);
}

uint64_t sub_B3C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

double sub_B3CE0(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65B0();

  return result;
}

uint64_t type metadata accessor for PeopleManagementSectionViewModel(uint64_t a1)
{
  result = qword_F36F0;
  if (!qword_F36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B3DE8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  *a2 = *(v3 + 40);
}

double PeopleManagementSectionViewModel.isFavorite.setter(char a1)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  *(v1 + 40) = a1;
  swift_getKeyPath();
  sub_B65D0();

  return result;
}

void (*PeopleManagementSectionViewModel.isFavorite.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_B362C();
  sub_B65C0();

  *(v4 + 32) = *(v1 + 40);
  return sub_B400C;
}

void sub_B400C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  v3 = v1[1];
  *v1 = v3;
  sub_B65C0();

  *v1 = v3;
  swift_getKeyPath();
  sub_B65E0();

  *(v3 + 40) = v2;
  *v1 = v3;
  swift_getKeyPath();
  sub_B65D0();

  free(v1);
}

uint64_t PeopleManagementSectionViewModel.__allocating_init(managedPerson:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PeopleManagementSectionViewModel.init(managedPerson:)(a1);
  return v2;
}

uint64_t PeopleManagementSectionViewModel.init(managedPerson:)(__int128 *a1)
{
  v14 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  sub_B69B0();
  v4 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onSetAsFavorite);
  *v4 = ItemContactInfoSetupIntroductionViewModel.bind();
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onEditLocationName);
  *v5 = ItemContactInfoSetupIntroductionViewModel.bind();
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartFollowing);
  *v6 = ItemContactInfoSetupIntroductionViewModel.bind();
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocation);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopSharingMyLocation);
  *v8 = ItemContactInfoSetupIntroductionViewModel.bind();
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onWantToStopFollowingLocation);
  *v9 = ItemContactInfoSetupIntroductionViewModel.bind();
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopSharingMyLocation);
  *v10 = ItemContactInfoSetupIntroductionViewModel.bind();
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onShouldStopFollowingLocation);
  *v11 = ItemContactInfoSetupIntroductionViewModel.bind();
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel__onStartSharingMyLocationFor);
  *v12 = ItemContactInfoSetupIntroductionViewModel.bind();
  v12[1] = 0;
  sub_B65F0();
  *(v1 + 16) = v14;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return v1;
}

double sub_B441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65B0();

  return result;
}

uint64_t (*PeopleManagementSectionViewModel.onSetAsFavorite.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4648;
}

uint64_t (*PeopleManagementSectionViewModel.onEditLocationName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B47E0;
}

uint64_t (*PeopleManagementSectionViewModel.onStartFollowing.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4978;
}

uint64_t (*PeopleManagementSectionViewModel.onStartSharingMyLocation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4B10;
}

uint64_t (*PeopleManagementSectionViewModel.onWantToStopSharingMyLocation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4CA8;
}

uint64_t sub_B4CC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t (*PeopleManagementSectionViewModel.onWantToStopFollowingLocation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B4EE4;
}

uint64_t (*PeopleManagementSectionViewModel.onShouldStopSharingMyLocation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B507C;
}

uint64_t (*PeopleManagementSectionViewModel.onShouldStopFollowingLocation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B5214;
}

uint64_t sub_B5250@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_B362C();
  sub_B65C0();

  v10 = (v9 + *a3);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *a6 = a5;
  a6[1] = v13;
}

double sub_B5358(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_B362C();

  sub_B65B0();

  return result;
}

uint64_t (*PeopleManagementSectionViewModel.onStartSharingMyLocationFor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_B362C();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_B56BC;
}

Swift::Void __swiftcall PeopleManagementSectionViewModel.updateProperties(with:)(FindMyAppCore::ManagedPerson with)
{
  v1 = sub_B69A0();
  v2 = sub_B7B60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Updating General section for person", v3, 2u);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_B362C();
  sub_B65B0();
}

uint64_t PeopleManagementSectionViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13FindMyAppCore32PeopleManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PeopleManagementSectionViewModel.__deallocating_deinit()
{
  PeopleManagementSectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_B5A1C(uint64_t a1)
{
  result = sub_B69C0();
  if (v2 <= 0x3F)
  {
    result = sub_B6600();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_B5B3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B5B74(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_B5BD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
}

uint64_t sub_B5D84()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F3868);
  __swift_project_value_buffer(v0, qword_F3868);
  type metadata accessor for PeopleModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.people.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F3868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t isSolariumEnabled.getter()
{
  v2[3] = &type metadata for SolariumFeatureFlag;
  v2[4] = sub_28360();
  v0 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_B5F40()
{
  result = qword_F3880;
  if (!qword_F3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3880);
  }

  return result;
}

id sub_B5FC8()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_F3888 = result;
  return result;
}

uint64_t sub_B6020()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEA0);
  __swift_project_value_buffer(v0, qword_FAEA0);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B60C8()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEB8);
  __swift_project_value_buffer(v0, qword_FAEB8);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B6170()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAED0);
  __swift_project_value_buffer(v0, qword_FAED0);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}

uint64_t sub_B6218()
{
  v0 = sub_B6980();
  __swift_allocate_value_buffer(v0, qword_FAEE8);
  __swift_project_value_buffer(v0, qword_FAEE8);
  if (qword_EEB00 != -1)
  {
    swift_once();
  }

  v1 = qword_F3888;
  return sub_B6970();
}
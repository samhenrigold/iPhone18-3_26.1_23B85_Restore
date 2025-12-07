uint64_t DateDomain.ViewSpanAlignment.debugDescription.getter()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x676E696C69617274;
  if (*v0 != 2)
  {
    v2 = 0x6C61727574616ELL;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t DateDomain.ViewDateSpan.debugDescription.getter()
{
  v1 = type metadata accessor for HealthChartsData.Aggregation();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of DateDomain.ViewDateSpan(v0, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v2 + 32))(v4, v7, v1);
        v18 = 0x6C61767265746E69;
        v19 = 0xE900000000000028;
        v10 = HealthChartsData.Aggregation.debugDescription.getter();
        MEMORY[0x2530761B0](v10);

        MEMORY[0x2530761B0](41, 0xE100000000000000);
        v11 = v18;
        (*(v2 + 8))(v4, v1);
        return v11;
      }

      v14 = *v7;
      v18 = 0x2872756F68;
      v19 = 0xE500000000000000;
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = 0x676E696C69617274;
        }

        else
        {
          v15 = 0x6C61727574616ELL;
        }
      }

      else if (v14)
      {
        v15 = 0x7265746E6563;
      }

      else
      {
        v15 = 0x676E696461656CLL;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v9 = 679043428;
      v13 = 0xE400000000000000;
    }

    else
    {
      v9 = 0x286B656577;
      v13 = 0xE500000000000000;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v9 = 0x72616559666C6168;
LABEL_20:
      v13 = 0xE800000000000000;
      goto LABEL_21;
    }

    v9 = 0x2868746E6F6DLL;
    v13 = 0xE600000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        return 0x6974616D6F747561;
      }

      v9 = 0x73726165596E6574;
      goto LABEL_20;
    }

    v9 = 1918985593;
    v13 = 0xE400000000000000;
  }

LABEL_21:
  v18 = v9;
  v19 = v13;
  DateDomain.ViewDateSpan.alignment.getter(&v17);
  type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for DateDomain.ViewSpanAlignment?, &type metadata for DateDomain.ViewSpanAlignment, MEMORY[0x277D83D88]);
  v15 = Optional.debugDescription.getter();
LABEL_22:
  MEMORY[0x2530761B0](v15);

  MEMORY[0x2530761B0](41, 0xE100000000000000);
  return v18;
}

uint64_t outlined init with copy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateDomain.ViewDateSpan(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DateDomain.ViewDateSpan.alignment.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (!result)
    {
      result = outlined destroy of DateDomain.ViewDateSpan(v6, type metadata accessor for DateDomain.ViewDateSpan);
      v8 = 4;
      goto LABEL_7;
    }

LABEL_6:
    v8 = *v6;
    goto LABEL_7;
  }

  if (result < 8)
  {
    goto LABEL_6;
  }

  v8 = 4;
LABEL_7:
  *a1 = v8;
  return result;
}

uint64_t DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v80 = a3;
  v82 = a1;
  v83 = a2;
  v84 = a4;
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v70 - v7;
  v9 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v75 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8], v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v70 - v12;
  v78 = type metadata accessor for DateInterval();
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for HealthChartsData.Aggregation();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v70 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v70 - v21;
  v23 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v23);
  v25 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v70 - v27;
  outlined init with copy of DateDomain.ViewDateSpan(v4, v70 - v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 7)
  {
    DateDomain.ViewDateSpan.fixedInterval(calendar:interval:)(v82, v83, v8);
    v30 = v81;
    v31 = v9;
    if ((*(v81 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of DateDomain.IntervalAggregation?(v8, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
      type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_25145AB10;
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x2530761B0](0xD00000000000003DLL, 0x8000000251460BA0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x2530761B0](0xD00000000000001BLL, 0x8000000251460BE0);
      lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2530761B0](v33);

      v34 = v86;
      v35 = v87;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      print(_:separator:terminator:)();
    }

    else
    {
      v39 = v75;
      outlined init with take of DateDomain.IntervalAggregation(v8, v75, type metadata accessor for DateDomain.IntervalAggregation);
      v41 = v76;
      v40 = v77;
      v42 = v79;
      (*(v77 + 104))(v76, *MEMORY[0x277D10200], v79);
      lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation, MEMORY[0x277D10228], MEMORY[0x277D10238]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      (*(v40 + 8))(v41, v42);
      if (v86 == v85 || (dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v86 == v85))
      {
        v43 = v84;
        outlined init with take of DateDomain.IntervalAggregation(v39, v84, type metadata accessor for DateDomain.IntervalAggregation);
        v36 = *(v30 + 56);
        v37 = v43;
        v38 = 0;
        return v36(v37, v38, 1, v31);
      }

      type metadata accessor for DateDomain.ViewSpanAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_25145AB10;
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x2530761B0](0xD000000000000033, 0x8000000251460C00);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x2530761B0](8236, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      v62 = v86;
      v63 = v87;
      *(v61 + 56) = MEMORY[0x277D837D0];
      *(v61 + 32) = v62;
      *(v61 + 40) = v63;
      print(_:separator:terminator:)();

      outlined destroy of DateDomain.ViewDateSpan(v39, type metadata accessor for DateDomain.IntervalAggregation);
    }

    v36 = *(v30 + 56);
    v37 = v84;
    v38 = 1;
    return v36(v37, v38, 1, v31);
  }

  v71 = v15;
  v72 = v19;
  v45 = v82;
  v73 = v4;
  v75 = v9;
  if (EnumCaseMultiPayload)
  {
    v58 = v82;
    v59 = v83;
    v60 = v80;
    DateDomain.ViewDateSpan.smallestEnclosingViewDateSpan(calendar:interval:dataAggregation:)(v82, v83, v80, v25);
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v58, v59, v60, v84);
    return outlined destroy of DateDomain.ViewDateSpan(v25, type metadata accessor for DateDomain.ViewDateSpan);
  }

  else
  {
    v46 = v22;
    v47 = v13;
    v48 = v77;
    v49 = v46;
    v50 = v79;
    v70[0] = *(v77 + 32);
    v70[1] = v77 + 32;
    (v70[0])(v46, v28, v79);
    v51 = v76;
    (*(v48 + 104))(v76, *MEMORY[0x277D10200], v50);
    lazy protocol witness table accessor for type DateInterval and conformance DateInterval(&lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation, MEMORY[0x277D10228], MEMORY[0x277D10230]);
    v52 = v80;
    v53 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v48 + 8);
    v54(v51, v50);
    if (v53)
    {
      v55 = v72;
      v56 = v72;
      v57 = v49;
    }

    else
    {
      v55 = v72;
      v56 = v72;
      v57 = v52;
    }

    (*(v48 + 16))(v56, v57, v50);
    v64 = v71;
    DateDomain.ViewDateSpan.expandInterval(calendar:interval:to:)(v45, v83, v55, v47);
    v54(v49, v50);
    v65 = v74;
    v66 = v78;
    if ((*(v74 + 48))(v47, 1, v78) == 1)
    {
      v54(v55, v50);
      outlined destroy of DateDomain.IntervalAggregation?(v47, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x277CC88A8]);
      return (*(v81 + 56))(v84, 1, 1, v75);
    }

    else
    {
      v67 = *(v65 + 32);
      v67(v64, v47, v66);
      v68 = v84;
      v67(v84, v64, v66);
      v69 = v75;
      (v70[0])(&v68[*(v75 + 20)], v55, v50);
      return (*(v81 + 56))(v68, 0, 1, v69);
    }
  }
}

uint64_t DateDomain.ViewDateSpan.expandInterval(calendar:interval:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v64 = a4;
  v6 = type metadata accessor for DateInterval();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoundedDateDirection();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v53 = &v49 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v25);
  v65 = &v49 - v26;
  v59 = a2;
  DateInterval.start.getter();
  v27 = *MEMORY[0x277D102F8];
  v55 = *(v9 + 104);
  v55(v11, v27, v8);
  v60 = a1;
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  v28 = *(v9 + 8);
  v57 = v9 + 8;
  v58 = v8;
  v28(v11, v8);
  v29 = *(v18 + 8);
  v29(v24, v17);
  v61 = v18;
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    v31 = v16;
LABEL_5:
    v34 = v64;
    outlined destroy of DateDomain.IntervalAggregation?(v31, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    v35 = 1;
    v37 = v62;
    v36 = v63;
    return (*(v37 + 56))(v34, v35, 1, v36);
  }

  v50 = v28;
  v49 = *(v61 + 32);
  v49(v65, v16, v17);
  v52 = v29;
  DateInterval.end.getter();
  v32 = v58;
  v55(v11, *MEMORY[0x277D102F0], v58);
  v31 = v56;
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  v33 = v52;
  v50(v11, v32);
  v33(v24, v17);
  if (v30(v31, 1, v17) == 1)
  {
    v33(v65, v17);
    goto LABEL_5;
  }

  v38 = v53;
  v49(v53, v31, v17);
  v39 = *(v61 + 16);
  v39(v24, v65, v17);
  v39(v51, v38, v17);
  v40 = v54;
  DateInterval.init(start:end:)();
  DateInterval.duration.getter();
  if (v41 == 0.0)
  {
    v42 = v65;
    v39(v24, v65, v17);
    v34 = v64;
    DateInterval.init(start:duration:)();
    v37 = v62;
    v43 = v40;
    v44 = v63;
    (*(v62 + 8))(v43, v63);
    v45 = v52;
    v52(v38, v17);
    v45(v42, v17);
    v36 = v44;
  }

  else
  {
    v46 = v52;
    v52(v38, v17);
    v46(v65, v17);
    v37 = v62;
    v47 = v63;
    v34 = v64;
    (*(v62 + 32))(v64, v40, v63);
    v36 = v47;
  }

  v35 = 0;
  return (*(v37 + 56))(v34, v35, 1, v36);
}

uint64_t DateDomain.ViewDateSpan.smallestEnclosingViewDateSpan(calendar:interval:dataAggregation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v55 = a3;
  v51 = a1;
  v52 = a2;
  v40 = a4;
  v50 = type metadata accessor for Date();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateInterval();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v37 - v8;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for DateDomain.ViewDateSpan(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DateDomain.ViewDateSpan>, type metadata accessor for DateDomain.ViewDateSpan, MEMORY[0x277D84560]);
  v19 = *(v16 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v38 = swift_allocObject();
  v21 = v38 + v20;
  *(v38 + v20) = 3;
  swift_storeEnumTagMultiPayload();
  *(v21 + v19) = 3;
  swift_storeEnumTagMultiPayload();
  *(v21 + 2 * v19) = 3;
  swift_storeEnumTagMultiPayload();
  *(v21 + 3 * v19) = 3;
  swift_storeEnumTagMultiPayload();
  *(v21 + 4 * v19) = 3;
  swift_storeEnumTagMultiPayload();
  *(v21 + 5 * v19) = 3;
  swift_storeEnumTagMultiPayload();
  v53 = v19;
  v22 = v18;
  *(v21 + 6 * v19) = 3;
  v24 = v51;
  v23 = v52;
  v25 = v5;
  v26 = 7;
  v39 = v15;
  v27 = v11;
  swift_storeEnumTagMultiPayload();
  v44 = (v42 + 4);
  v45 = (v42 + 2);
  ++v42;
  ++v43;
  v37 = v21;
  v41 = v11;
  v46 = v22;
  v54 = v14;
  do
  {
    outlined init with copy of DateDomain.ViewDateSpan(v21, v22);
    DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v24, v23, v55, v14);
    outlined init with copy of Date?(v14, v27, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    v28 = type metadata accessor for DateDomain.IntervalAggregation(0);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      outlined destroy of DateDomain.IntervalAggregation?(v14, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
      outlined destroy of DateDomain.ViewDateSpan(v22, type metadata accessor for DateDomain.ViewDateSpan);
      outlined destroy of DateDomain.IntervalAggregation?(v27, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    }

    else
    {
      v29 = v50;
      v30 = v48;
      (*v45)(v48, v27, v25);
      outlined destroy of DateDomain.ViewDateSpan(v27, type metadata accessor for DateDomain.IntervalAggregation);
      v31 = v47;
      (*v44)(v47, v30, v25);
      v32 = v25;
      v33 = v49;
      DateInterval.start.getter();
      LOBYTE(v30) = DateInterval.contains(_:)();
      v34 = *v43;
      (*v43)(v33, v29);
      if (v30)
      {
        DateInterval.end.getter();
        v35 = DateInterval.contains(_:)();
        v34(v33, v29);
        (*v42)(v31, v32);
        outlined destroy of DateDomain.IntervalAggregation?(v54, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
        v25 = v32;
        if (v35)
        {
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return outlined init with take of DateDomain.IntervalAggregation(v46, v40, type metadata accessor for DateDomain.ViewDateSpan);
        }
      }

      else
      {
        (*v42)(v31, v32);
        outlined destroy of DateDomain.IntervalAggregation?(v54, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
        v25 = v32;
      }

      v22 = v46;
      outlined destroy of DateDomain.ViewDateSpan(v46, type metadata accessor for DateDomain.ViewDateSpan);
      v24 = v51;
      v23 = v52;
      v14 = v54;
      v27 = v41;
    }

    v21 += v53;
    --v26;
  }

  while (v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v40 = 3;
  return swift_storeEnumTagMultiPayload();
}

uint64_t DateDomain.ViewDateSpan.fixedInterval(calendar:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a2;
  v188 = a1;
  v190 = a3;
  v173 = type metadata accessor for DateInterval();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for RoundedDateDirection();
  v182 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v181 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v179 = (&v147 - v10);
  MEMORY[0x28223BE20](v11);
  v163 = &v147 - v12;
  MEMORY[0x28223BE20](v13);
  v178 = &v147 - v14;
  MEMORY[0x28223BE20](v15);
  v164 = &v147 - v16;
  MEMORY[0x28223BE20](v17);
  v169 = &v147 - v18;
  MEMORY[0x28223BE20](v19);
  v177 = (&v147 - v20);
  MEMORY[0x28223BE20](v21);
  v176 = &v147 - v22;
  v183 = type metadata accessor for Date();
  v187 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v170 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v167 = &v147 - v25;
  MEMORY[0x28223BE20](v26);
  v162 = &v147 - v27;
  MEMORY[0x28223BE20](v28);
  v175 = &v147 - v29;
  MEMORY[0x28223BE20](v30);
  v168 = &v147 - v31;
  MEMORY[0x28223BE20](v32);
  v174 = &v147 - v33;
  MEMORY[0x28223BE20](v34);
  v189 = &v147 - v35;
  MEMORY[0x28223BE20](v36);
  v180 = &v147 - v37;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?, type metadata accessor for (DateComponents, HealthChartsData.Aggregation), v6);
  MEMORY[0x28223BE20](v38 - 8);
  v166 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v147 - v41;
  v43 = type metadata accessor for HealthChartsData.Aggregation();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DateComponents();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v161 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v147 - v51;
  v53 = v3;
  DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(1, v42);
  type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
  v55 = v54;
  v56 = *(v54 - 8);
  v57 = *(v56 + 48);
  v165 = (v56 + 48);
  if (v57(v42, 1, v54) == 1)
  {
    v58 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
    v59 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
LABEL_3:
    v60 = v59;
    v61 = v42;
LABEL_4:
    outlined destroy of DateDomain.IntervalAggregation?(v61, v58, v60);
LABEL_7:
    v65 = type metadata accessor for DateDomain.IntervalAggregation(0);
    v66 = *(*(v65 - 8) + 56);
    v67 = v190;
    return v66(v67, 1, 1, v65);
  }

  v156 = v57;
  v62 = *(v55 + 48);
  v63 = *(v48 + 32);
  v153 = v48 + 32;
  v152 = v63;
  v63(v52, v42, v47);
  v64 = *(v44 + 32);
  v158 = v44 + 32;
  v157 = v64;
  v64(v46, &v42[v62], v43);
  DateDomain.ViewDateSpan.alignment.getter(&v191);
  if (v191 == 4)
  {
    (*(v44 + 8))(v46, v43);
    (*(v48 + 8))(v52, v47);
    goto LABEL_7;
  }

  v149 = v53;
  v150 = v44;
  v160 = v46;
  v154 = v52;
  v155 = v43;
  v151 = v48;
  v159 = v47;
  v69 = (v182 + 13);
  v70 = (v182 + 1);
  v71 = v187;
  v72 = (v187 + 8);
  v182 = (v187 + 48);
  if (v191 > 1u)
  {
    if (v191 == 2)
    {
      v87 = v189;
      DateInterval.end.getter();
      v88 = v185;
      v89 = v70;
      v90 = v186;
      (*v69)(v185, *MEMORY[0x277D102F0], v186);
      v91 = v178;
      v92 = v160;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v93 = v90;
      v94 = v91;
      (*v89)(v88, v93);
      v95 = v183;
      v179 = *v72;
      v179(v87, v183);
      v177 = *v182;
      if (v177(v94, 1, v95) == 1)
      {
        (*(v150 + 8))(v92, v155);
        (*(v151 + 8))(v154, v159);
        v58 = &lazy cache variable for type metadata for Date?;
        v96 = MEMORY[0x277CC9578];
      }

      else
      {
        v117 = *(v71 + 32);
        v118 = v167;
        v117(v167, v94, v95);
        v94 = v166;
        DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(0, v166);
        if (v156(v94, 1, v55) != 1)
        {
          v178 = v117;
          v130 = *(v55 + 48);
          v131 = v161;
          v132 = v159;
          v152(v161, v94, v159);
          v185 = *(v150 + 8);
          v186 = v150 + 8;
          (v185)(v94 + v130, v155);
          v133 = v163;
          Calendar.date(byAdding:to:wrappingComponents:)();
          v134 = v72;
          v86 = v151;
          v135 = v132;
          v136 = *(v151 + 8);
          v136(v131, v135);
          v148 = v134;
          v179(v118, v95);
          v137 = v133;
          if (v177(v133, 1, v95) == 1)
          {
            (v185)(v160, v155);
            v136(v154, v159);
            v58 = &lazy cache variable for type metadata for Date?;
            v60 = MEMORY[0x277CC9578];
            v61 = v133;
            goto LABEL_4;
          }

          v81 = v95;
          v146 = v137;
          v115 = v180;
          (v178)(v180, v146, v95);
          v105 = v190;
          v116 = v154;
          v80 = v179;
          goto LABEL_27;
        }

        v179(v118, v95);
        (*(v150 + 8))(v160, v155);
        (*(v151 + 8))(v154, v159);
        v58 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
        v96 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
      }

      v60 = v96;
      v61 = v94;
      goto LABEL_4;
    }

    v108 = v189;
    DateInterval.start.getter();
    v110 = v185;
    v109 = v186;
    (*v69)(v185, *MEMORY[0x277D102F8], v186);
    v111 = v179;
    DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)(v188, v108, v110, v179);
    v112 = v111;
    (*v70)(v110, v109);
    v80 = *v72;
    v81 = v183;
    (*v72)(v108, v183);
    v177 = *v182;
    if (v177(v112, 1, v81) == 1)
    {
      (*(v150 + 8))(v160, v155);
      (*(v151 + 8))(v154, v159);
      v58 = &lazy cache variable for type metadata for Date?;
      v60 = MEMORY[0x277CC9578];
      v61 = v112;
      goto LABEL_4;
    }

    v148 = v72;
    v115 = v180;
    v178 = *(v71 + 32);
    (v178)(v180, v112, v81);
    v105 = v190;
    v86 = v151;
    v116 = v154;
  }

  else
  {
    v148 = (v187 + 8);
    if (v191)
    {
      v97 = v189;
      DateInterval.start.getter();
      v98 = *v69;
      v99 = v185;
      LODWORD(v166) = *MEMORY[0x277D102F8];
      v100 = v186;
      v167 = v98;
      (v98)(v185);
      v101 = v177;
      DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)(v188, v97, v99, v177);
      v102 = *v70;
      v176 = v70;
      v165 = v102;
      v102(v99, v100);
      v81 = v183;
      v179 = *(v71 + 8);
      v179(v97, v183);
      v103 = *v182;
      v104 = (*v182)(v101, 1, v81);
      v105 = v190;
      v86 = v151;
      if (v104 == 1)
      {
        (*(v150 + 8))(v160, v155);
        (*(v86 + 8))(v154, v159);
        v106 = MEMORY[0x277CC9578];
        v107 = v101;
LABEL_29:
        outlined destroy of DateDomain.IntervalAggregation?(v107, &lazy cache variable for type metadata for Date?, v106);
        v65 = type metadata accessor for DateDomain.IntervalAggregation(0);
        v66 = *(*(v65 - 8) + 56);
        v67 = v105;
        return v66(v67, 1, 1, v65);
      }

      v119 = *(v71 + 32);
      v120 = v174;
      v163 = (v71 + 32);
      v178 = v119;
      (v119)(v174, v101, v81);
      v121 = v169;
      v122 = v154;
      v177 = v103;
      Calendar.date(byAdding:to:wrappingComponents:)();
      if (v177(v121, 1, v81) == 1)
      {
        v179(v120, v81);
        (*(v150 + 8))(v160, v155);
        (*(v86 + 8))(v122, v159);
        v58 = &lazy cache variable for type metadata for Date?;
        v60 = MEMORY[0x277CC9578];
        v61 = v121;
        goto LABEL_4;
      }

      v138 = v178;
      (v178)(v168, v121, v81);
      Date.timeIntervalSinceReferenceDate.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v139 = v189;
      DateInterval.start.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v140 = v179;
      v179(v139, v81);
      v141 = v175;
      DateInterval.end.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v140(v141, v81);
      v142 = v162;
      Date.init(timeIntervalSinceReferenceDate:)();
      v144 = v185;
      v143 = v186;
      (v167)(v185, v166, v186);
      v42 = v164;
      v145 = v160;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v165(v144, v143);
      v140(v142, v81);
      v140(v168, v81);
      v140(v174, v81);
      if (v177(v42, 1, v81) == 1)
      {
        (*(v150 + 8))(v145, v155);
        (*(v86 + 8))(v154, v159);
        v58 = &lazy cache variable for type metadata for Date?;
        v59 = MEMORY[0x277CC9578];
        goto LABEL_3;
      }

      v115 = v180;
      v138(v180, v42, v81);
      v116 = v154;
      v105 = v190;
      v80 = v179;
    }

    else
    {
      v73 = v189;
      DateInterval.start.getter();
      v75 = v185;
      v74 = v186;
      (*v69)(v185, *MEMORY[0x277D102F8], v186);
      v76 = v176;
      v77 = v160;
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      v78 = v74;
      v79 = v76;
      (*v70)(v75, v78);
      v80 = *v72;
      v81 = v183;
      (*v72)(v73, v183);
      v82 = *v182;
      v83 = (*v182)(v79, 1, v81);
      v84 = v190;
      v85 = v159;
      v86 = v151;
      if (v83 == 1)
      {
        (*(v150 + 8))(v77, v155);
        (*(v86 + 8))(v154, v85);
        outlined destroy of DateDomain.IntervalAggregation?(v79, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
        v65 = type metadata accessor for DateDomain.IntervalAggregation(0);
        v66 = *(*(v65 - 8) + 56);
        v67 = v84;
        return v66(v67, 1, 1, v65);
      }

      v113 = *(v71 + 32);
      v114 = v79;
      v115 = v180;
      v177 = v82;
      v178 = v113;
      (v113)(v180, v114, v81);
      v116 = v154;
      v105 = v84;
    }
  }

LABEL_27:
  v123 = v181;
  Calendar.date(byAdding:to:wrappingComponents:)();
  if (v177(v123, 1, v81) == 1)
  {
    v80(v115, v81);
    (*(v150 + 8))(v160, v155);
    (*(v86 + 8))(v116, v159);
    v106 = MEMORY[0x277CC9578];
    v107 = v123;
    goto LABEL_29;
  }

  v124 = v187;
  v125 = v170;
  (v178)(v170, v123, v81);
  v126 = *(v124 + 16);
  v126(v189, v115, v81);
  v126(v175, v125, v81);
  v127 = v171;
  DateInterval.init(start:end:)();
  v80(v125, v81);
  v80(v115, v81);
  (*(v86 + 8))(v116, v159);
  v128 = type metadata accessor for DateDomain.IntervalAggregation(0);
  v129 = v190;
  v157(v190 + *(v128 + 20), v160, v155);
  (*(v172 + 32))(v129, v127, v173);
  return (*(*(v128 - 8) + 56))(v129, 0, 1, v128);
}

uint64_t lazy protocol witness table accessor for type DateInterval and conformance DateInterval(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of DateDomain.ViewDateSpan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of DateDomain.IntervalAggregation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for DateDomain.IntervalAggregation?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DateDomain.ViewDateSpan.defaultIntervalAndAggregation(calendar:onDate:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v31 = a1;
  v32 = a3;
  v30 = type metadata accessor for HealthChartsData.Aggregation();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DateInterval();
  v16 = *(v29 - 8);
  v17 = MEMORY[0x28223BE20](v29);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v28, v12, v17);
  DateInterval.init(start:duration:)();
  *v11 = 2;
  swift_storeEnumTagMultiPayload();
  v20 = *MEMORY[0x277D10200];
  v21 = v30;
  v28 = *(v3 + 104);
  v28(v5, v20, v30);
  DateDomain.ViewDateSpan.dateIntervalAndAggregation(calendar:interval:dataAggregation:)(v31, v19, v5, v8);
  v22 = v5;
  v23 = v21;
  (*(v3 + 8))(v22, v21);
  v24 = type metadata accessor for DateDomain.IntervalAggregation(0);
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
  {
    outlined destroy of DateDomain.IntervalAggregation?(v8, &lazy cache variable for type metadata for DateDomain.IntervalAggregation?, type metadata accessor for DateDomain.IntervalAggregation);
    Date.init()();
    v25 = v32;
    DateInterval.init(start:duration:)();
    outlined destroy of DateDomain.ViewDateSpan(v11, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v16 + 8))(v19, v29);
    return (v28)(v25 + *(v24 + 20), *MEMORY[0x277D101F0], v23);
  }

  else
  {
    outlined destroy of DateDomain.ViewDateSpan(v11, type metadata accessor for DateDomain.ViewDateSpan);
    (*(v16 + 8))(v19, v29);
    return outlined init with take of DateDomain.IntervalAggregation(v8, v32, type metadata accessor for DateDomain.IntervalAggregation);
  }
}

void type metadata accessor for DateDomain.ViewSpanAlignment?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v92 = a1;
  v2 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v85 - v6;
  MEMORY[0x28223BE20](v7);
  v89 = &v85 - v8;
  MEMORY[0x28223BE20](v9);
  v88 = &v85 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], v2);
  MEMORY[0x28223BE20](v20 - 8);
  v87 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v86 = &v85 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v85 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v85 - v37;
  v39 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v39);
  v41 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateDomain.ViewDateSpan(v93, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v52 = type metadata accessor for Calendar();
        (*(*(v52 - 8) + 56))(v35, 1, 1, v52);
        v53 = type metadata accessor for TimeZone();
        (*(*(v53 - 8) + 56))(v16, 1, 1, v53);
        type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
        v46 = v54;
        v47 = *(v54 + 48);
        v48 = v94;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v49 = MEMORY[0x277D101F8];
      }

      else
      {
        v72 = type metadata accessor for Calendar();
        (*(*(v72 - 8) + 56))(v32, 1, 1, v72);
        v73 = type metadata accessor for TimeZone();
        (*(*(v73 - 8) + 56))(v13, 1, 1, v73);
        type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
        v46 = v74;
        v47 = *(v74 + 48);
        v48 = v94;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v49 = MEMORY[0x277D101F0];
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      v69 = type metadata accessor for Calendar();
      (*(*(v69 - 8) + 56))(v38, 1, 1, v69);
      v70 = type metadata accessor for TimeZone();
      (*(*(v70 - 8) + 56))(v19, 1, 1, v70);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
      v46 = v71;
      v47 = *(v71 + 48);
      v48 = v94;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v49 = MEMORY[0x277D10220];
      goto LABEL_17;
    }

    outlined destroy of DateDomain.ViewDateSpan(v41, type metadata accessor for DateDomain.ViewDateSpan);
LABEL_9:
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
    return (*(*(v50 - 8) + 56))(v94, 1, 1, v50);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v61 = type metadata accessor for Calendar();
      (*(*(v61 - 8) + 56))(v86, 1, 1, v61);
      v62 = type metadata accessor for TimeZone();
      (*(*(v62 - 8) + 56))(v90, 1, 1, v62);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
      v64 = v63;
      v65 = *(v63 + 48);
      v66 = v94;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v67 = *MEMORY[0x277D10218];
      v68 = type metadata accessor for HealthChartsData.Aggregation();
      (*(*(v68 - 8) + 104))(v66 + v65, v67, v68);
      return (*(*(v64 - 8) + 56))(v66, 0, 1, v64);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v43 = type metadata accessor for Calendar();
      (*(*(v43 - 8) + 56))(v87, 1, 1, v43);
      v44 = type metadata accessor for TimeZone();
      (*(*(v44 - 8) + 56))(v91, 1, 1, v44);
      type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
      v46 = v45;
      v47 = *(v45 + 48);
      v48 = v94;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v49 = MEMORY[0x277D10210];
LABEL_17:
      v75 = *v49;
      v76 = type metadata accessor for HealthChartsData.Aggregation();
      (*(*(v76 - 8) + 104))(v48 + v47, v75, v76);
      return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v55 = type metadata accessor for Calendar();
    (*(*(v55 - 8) + 56))(v29, 1, 1, v55);
    v56 = type metadata accessor for TimeZone();
    (*(*(v56 - 8) + 56))(v88, 1, 1, v56);
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
    v46 = v57;
    v58 = *(v57 + 48);
    v48 = v94;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v59 = *MEMORY[0x277D101F0];
    v60 = type metadata accessor for HealthChartsData.Aggregation();
    (*(*(v60 - 8) + 104))(v48 + v58, v59, v60);
    return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
  }

  v77 = type metadata accessor for Calendar();
  (*(*(v77 - 8) + 56))(v26, 1, 1, v77);
  v78 = type metadata accessor for TimeZone();
  (*(*(v78 - 8) + 56))(v89, 1, 1, v78);
  type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
  v80 = v79;
  v81 = *(v79 + 48);
  v82 = v94;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v83 = *MEMORY[0x277D10208];
  v84 = type metadata accessor for HealthChartsData.Aggregation();
  (*(*(v84 - 8) + 104))(v82 + v81, v83, v84);
  return (*(*(v80 - 8) + 56))(v82, 0, 1, v80);
}

uint64_t DateDomain.ViewDateSpan.naturalDate(calendar:date:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v124 = a3;
  v129 = a2;
  v131 = a1;
  v134 = a4;
  v6 = MEMORY[0x277D83D88];
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?, type metadata accessor for (DateComponents, HealthChartsData.Aggregation), MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v114 - v8;
  v135 = type metadata accessor for Date();
  v9 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v115 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v128 = &v114 - v12;
  MEMORY[0x28223BE20](v13);
  v117 = (&v114 - v14);
  MEMORY[0x28223BE20](v15);
  v116 = &v114 - v16;
  v17 = type metadata accessor for DateComponents();
  v122 = *(v17 - 8);
  v123 = v17;
  MEMORY[0x28223BE20](v17);
  v119 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v114 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v114 - v23;
  v25 = type metadata accessor for RoundedDateDirection();
  v132 = *(v25 - 8);
  v133 = v25;
  MEMORY[0x28223BE20](v25);
  v125 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - v28;
  v30 = type metadata accessor for HealthChartsData.Aggregation();
  v126 = *(v30 - 8);
  v127 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DateDomain.ViewDateSpan(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], v6);
  MEMORY[0x28223BE20](v36 - 8);
  v118 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v130 = &v114 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v114 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v114 - v44;
  MEMORY[0x28223BE20](v46);
  v136 = &v114 - v47;
  v120 = v5;
  outlined init with copy of DateDomain.ViewDateSpan(v5, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v60 = v135;
      v49 = v136;
      if (EnumCaseMultiPayload == 2)
      {
        v61 = MEMORY[0x277D101F0];
      }

      else
      {
        v61 = MEMORY[0x277D10208];
      }

      v75 = v126;
      v74 = v127;
      (*(v126 + 104))(v32, *v61, v127);
      v77 = v132;
      v76 = v133;
      (*(v132 + 104))(v29, *MEMORY[0x277D102F8], v133);
      HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
      (*(v77 + 8))(v29, v76);
      (*(v75 + 8))(v32, v74);
      goto LABEL_20;
    }

    v49 = v136;
    if (!EnumCaseMultiPayload)
    {
      outlined destroy of DateDomain.ViewDateSpan(v35, type metadata accessor for DateDomain.ViewDateSpan);
      return v9[7](v134, 1, 1, v135);
    }

    v71 = v126;
    v70 = v127;
    (*(v126 + 104))(v32, *MEMORY[0x277D101F8], v127);
    v73 = v132;
    v72 = v133;
    (*(v132 + 104))(v29, *MEMORY[0x277D102F8], v133);
    HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
    (*(v73 + 8))(v29, v72);
    (*(v71 + 8))(v32, v70);
LABEL_17:
    v60 = v135;
LABEL_20:
    v50 = v130;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v49 = v136;
    if (EnumCaseMultiPayload != 4)
    {
      v117 = v9;
      type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v98 = type metadata accessor for Calendar.Component();
      v99 = *(v98 - 8);
      v100 = *(v99 + 72);
      v101 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_25145AB30;
      v103 = v102 + v101;
      v104 = *(v99 + 104);
      v104(v103, *MEMORY[0x277CC9978], v98);
      v104(v103 + v100, *MEMORY[0x277CC9960], v98);
      v104(v103 + 2 * v100, *MEMORY[0x277CC9940], v98);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v102);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      DateComponents.weekOfYear.getter();
      if (v105)
      {
        (*(v122 + 8))(v24, v123);
        return v117[7](v134, 1, 1, v135);
      }

      DateComponents.weekOfYear.setter();
      Calendar.date(from:)();
      (*(v122 + 8))(v24, v123);
      v9 = v117;
      v60 = v135;
      v106 = (v117[6])(v45, 1, v135);
      v50 = v130;
      if (v106 == 1)
      {
        goto LABEL_39;
      }

      v107 = v9[4];
      v108 = v116;
      (v107)(v116, v45, v60);
      (v107)(v49, v108, v60);
      v9[7](v49, 0, 1, v60);
      goto LABEL_21;
    }

    v63 = v126;
    v62 = v127;
    (*(v126 + 104))(v32, *MEMORY[0x277D10218], v127);
    v65 = v132;
    v64 = v133;
    (*(v132 + 104))(v29, *MEMORY[0x277D102F8], v133);
    HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
    (*(v65 + 8))(v29, v64);
    (*(v63 + 8))(v32, v62);
    goto LABEL_17;
  }

  v49 = v136;
  v50 = v130;
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      type metadata accessor for DateDomain.IntervalAggregation?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v51 = type metadata accessor for Calendar.Component();
      v52 = *(v51 - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_25145AB20;
      v56 = v55 + v54;
      v57 = *(v52 + 104);
      v57(v56, *MEMORY[0x277CC9978], v51);
      v57(v56 + v53, *MEMORY[0x277CC9988], v51);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v55);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      DateComponents.year.getter();
      if (v58)
      {
        (*(v122 + 8))(v21, v123);
        return v9[7](v134, 1, 1, v135);
      }

      DateComponents.year.setter();
      Calendar.date(from:)();
      (*(v122 + 8))(v21, v123);
      v60 = v135;
      if ((v9[6])(v42, 1, v135) == 1)
      {
        v83 = &lazy cache variable for type metadata for Date?;
        v84 = MEMORY[0x277CC9578];
        v82 = v42;
        goto LABEL_23;
      }

      v112 = v9[4];
      v113 = v117;
      (v112)(v117, v42, v60);
      (v112)(v49, v113, v60);
      v9[7](v49, 0, 1, v60);
      goto LABEL_20;
    }

    return v9[7](v134, 1, 1, v135);
  }

  v67 = v126;
  v66 = v127;
  (*(v126 + 104))(v32, *MEMORY[0x277D10210], v127);
  v69 = v132;
  v68 = v133;
  (*(v132 + 104))(v29, *MEMORY[0x277D102F8], v133);
  HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)();
  (*(v69 + 8))(v29, v68);
  (*(v67 + 8))(v32, v66);
  v60 = v135;
LABEL_21:
  outlined init with copy of Date?(v49, v50, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v78 = v9[6];
  v79 = (v78)(v50, 1, v60);
  v80 = v128;
  if (v79 == 1)
  {
    v81 = MEMORY[0x277CC9578];
    outlined destroy of DateDomain.IntervalAggregation?(v49, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    v82 = v50;
    v83 = &lazy cache variable for type metadata for Date?;
    v84 = v81;
LABEL_23:
    outlined destroy of DateDomain.IntervalAggregation?(v82, v83, v84);
    v85 = v9[7];
    v86 = v134;
    v87 = 1;
    return v85(v86, v87, 1, v60);
  }

  v88 = v9[4];
  (v88)(v128, v50, v60);
  v90 = v132;
  v89 = v133;
  v91 = v125;
  (*(v132 + 16))(v125, v124, v133);
  v92 = (*(v90 + 88))(v91, v89);
  if (v92 == *MEMORY[0x277D102F8])
  {
    outlined destroy of DateDomain.IntervalAggregation?(v136, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
LABEL_26:
    v93 = v134;
    (v88)(v134, v80, v60);
    v85 = v9[7];
    v86 = v93;
    v87 = 0;
    return v85(v86, v87, 1, v60);
  }

  v94 = v136;
  if (v92 == *MEMORY[0x277D102F0])
  {
    v95 = v121;
    DateDomain.ViewDateSpan.dateComponentsAndAggregation(forward:)(1, v121);
    type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(0);
    v97 = v96;
    if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
    {
      (v9[1])(v128, v60);
      outlined destroy of DateDomain.IntervalAggregation?(v94, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      v83 = &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation)?;
      v84 = type metadata accessor for (DateComponents, HealthChartsData.Aggregation);
      v82 = v95;
      goto LABEL_23;
    }

    v109 = *(v97 + 48);
    v110 = v122;
    (*(v122 + 32))(v119, v95, v123);
    (*(v126 + 8))(v95 + v109, v127);
    v45 = v118;
    v111 = v128;
    Calendar.date(byAdding:to:wrappingComponents:)();
    (*(v110 + 8))(v119, v123);
    (v9[1])(v111, v60);
    outlined destroy of DateDomain.IntervalAggregation?(v136, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if ((v78)(v45, 1, v60) != 1)
    {
      v80 = v115;
      (v88)(v115, v45, v60);
      goto LABEL_26;
    }

LABEL_39:
    v83 = &lazy cache variable for type metadata for Date?;
    v84 = MEMORY[0x277CC9578];
    v82 = v45;
    goto LABEL_23;
  }

  (v9[1])(v80, v60);
  outlined destroy of DateDomain.IntervalAggregation?(v94, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  v9[7](v134, 1, 1, v60);
  return (*(v132 + 8))(v125, v133);
}

BOOL _sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *_sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_sSo30_HKQuantityDistributionOptionsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _sSo30_HKQuantityDistributionOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayG0x0fG7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *_sSo30_HKQuantityDistributionOptionsVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for DateDomain.IntervalAggregation?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of DateDomain.IntervalAggregation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (DateComponents, HealthChartsData.Aggregation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation))
  {
    type metadata accessor for DateComponents();
    type metadata accessor for HealthChartsData.Aggregation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateComponents, HealthChartsData.Aggregation));
    }
  }
}

void type metadata accessor for DateDomain.IntervalAggregation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id one-time initialization function for bundle()
{
  type metadata accessor for HealthChartsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static HealthChartsBundle.bundle = result;
  return result;
}

uint64_t HKBodyMassIndexStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462280);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyMassIndexStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4000000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

_OWORD *_s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v34 = a2[1];
  v10 = *(a2 + 16);
  v35 = a2[3];
  v11 = *(a2 + 32);
  v12 = type metadata accessor for AutomaticQuantity(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsUnit();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsUnit?);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsUnit?);
    v22 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    *(&v39 + 1) = v23;
    *&v40 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v22, MEMORY[0x277D10350]);
    *&v38 = a4;
    *(&v38 + 1) = a5;
    *(&v40 + 1) = v9;
    *v41 = v34;
    *&v41[8] = v10 & 1;
    *&v41[16] = v35;
    v41[24] = v11 & 1;
    v41[25] = 0;
    a3[4] = 0x6974616D6F747561;
    a3[5] = 0xE900000000000063;
    outlined init with copy of AutomaticNumeric(&v38, v36);
    v24 = swift_allocObject();
    v25 = v37[0];
    v24[3] = v36[2];
    v24[4] = v25;
    *(v24 + 74) = *(v37 + 10);
    v26 = v36[1];
    v24[1] = v36[0];
    v24[2] = v26;
    *a3 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    a3[1] = v24;
    result = swift_allocObject();
    v28 = *v41;
    result[3] = v40;
    result[4] = v28;
    *(result + 74) = *&v41[10];
    v29 = v39;
    result[1] = v38;
    result[2] = v29;
    a3[2] = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    a3[3] = result;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    (*(v19 + 16))(&v14[*(v12 + 20)], v21, v18);
    v30 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    *(v14 + 3) = v31;
    *(v14 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v30, MEMORY[0x277D10350]);
    *v14 = a4;
    *(v14 + 1) = a5;
    v32 = &v14[*(v12 + 24)];
    *v32 = v9;
    *(v32 + 1) = v34;
    *(v32 + 2) = v10 & 1;
    *(v32 + 3) = v35;
    v32[32] = v11 & 1;
    v32[33] = 0;
    _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v14, a3);
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

_OWORD *_s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v34 = a2[1];
  v10 = *(a2 + 16);
  v35 = a2[3];
  v11 = *(a2 + 32);
  v12 = type metadata accessor for AutomaticQuantity(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HealthChartsUnit();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsUnit?);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsUnit?);
    v22 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(&v39 + 1) = v23;
    *&v40 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v22, MEMORY[0x277D10368]);
    *&v38 = a4;
    *(&v38 + 1) = a5;
    *(&v40 + 1) = v9;
    *v41 = v34;
    *&v41[8] = v10 & 1;
    *&v41[16] = v35;
    v41[24] = v11 & 1;
    v41[25] = 0;
    a3[4] = 0x6974616D6F747561;
    a3[5] = 0xE900000000000063;
    outlined init with copy of AutomaticNumeric(&v38, v36);
    v24 = swift_allocObject();
    v25 = v37[0];
    v24[3] = v36[2];
    v24[4] = v25;
    *(v24 + 74) = *(v37 + 10);
    v26 = v36[1];
    v24[1] = v36[0];
    v24[2] = v26;
    *a3 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    a3[1] = v24;
    result = swift_allocObject();
    v28 = *v41;
    result[3] = v40;
    result[4] = v28;
    *(result + 74) = *&v41[10];
    v29 = v39;
    result[1] = v38;
    result[2] = v29;
    a3[2] = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    a3[3] = result;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    (*(v19 + 16))(&v14[*(v12 + 20)], v21, v18);
    v30 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(v14 + 3) = v31;
    *(v14 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v30, MEMORY[0x277D10368]);
    *v14 = a4;
    *(v14 + 1) = a5;
    v32 = &v14[*(v12 + 24)];
    *v32 = v9;
    *(v32 + 1) = v34;
    *(v32 + 2) = v10 & 1;
    *(v32 + 3) = v35;
    v32[32] = v11 & 1;
    v32[33] = 0;
    _s12HealthCharts12ScalarDomainVyACxcAA04AxisD0RzSd1TRtzlufCAA17AutomaticQuantityV_Tt1g5(v14, a3);
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

uint64_t HKBodyFatPercentageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x80000002514622E0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](37, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyFatPercentageStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](37, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4010000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKHeightStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251461590);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](29798, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKHeightStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4014000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKBodyMassStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514622B0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBodyMassStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4034000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 0.0, 150.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKLeanBodyMassStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461500);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKLeanBodyMassStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](25196, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4020000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKHeartRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v27 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461630);
  v10 = MEMORY[0x2530763A0](v9);
  v11 = objc_opt_self();
  v12 = [v11 _countPerMinuteUnit];
  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:2.0];

  v15 = [v11 _countPerMinuteUnit];
  v16 = [v13 quantityWithUnit:v15 doubleValue:0.0];

  *&v30 = v10;
  *(&v30 + 1) = v14;
  v31 = 0;
  v32 = v16;
  v33 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v26, v8, type metadata accessor for HealthChartsContext);
  v17 = type metadata accessor for HealthChartsContext(0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v30, v8, v5, v29);
  (*(v3 + 8))(v5, v27);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v29[0])
  {
    v18 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v19 = swift_allocObject();
    v20 = v29[3];
    v19[3] = v29[2];
    v19[4] = v20;
    v21 = v29[5];
    v19[5] = v29[4];
    v19[6] = v21;
    v22 = v29[1];
    v19[1] = v29[0];
    v19[2] = v22;
    result = outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v30);
    v24 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v25 = v28;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v30);
    result = outlined destroy of HealthChartsQuantityDistributionDataProvider?(v29);
    v19 = 0;
    v24 = 0;
    v18 = 0;
    v25 = v28;
    v28[1] = 0;
    v25[2] = 0;
  }

  *v25 = v19;
  v25[3] = v24;
  v25[4] = v18;
  return result;
}

uint64_t _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of HealthChartsUnit?(a2, v10, type metadata accessor for HealthChartsContext?);
  v11 = type metadata accessor for HealthChartsContext(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v13 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v12 = *v10;
  v13 = *v10;
  outlined destroy of HealthChartsUnit?(v10, type metadata accessor for HealthChartsContext);
  if (!v12)
  {
    goto LABEL_4;
  }

LABEL_5:
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v15 = v14;
  *(a4 + 80) = v14;
  *(a4 + 88) = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance <> HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 56));
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a3, v15);
  *a4 = v13;
  v17 = a1[1];
  *(a4 + 8) = *a1;
  *(a4 + 24) = v17;
  *(a4 + 40) = a1[2];
  return outlined init with copy of HealthChartsQuantityDistributionQueryConfiguration(a1, v19);
}

unint64_t HKHeartRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4034000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt3B5(v7, v34, v31, 0.0, 80.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKStepsStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000021, 0x80000002514610C0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for FixedQuantity(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HealthChartsUnit();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of HealthChartsUnit?(a1, v16, type metadata accessor for HealthChartsUnit?);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of HealthChartsUnit?(v16, type metadata accessor for HealthChartsUnit?);
    v21 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(&v42 + 1) = v22;
    v43 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v21, MEMORY[0x277D10368]);
    *&v41 = a3;
    *(&v41 + 1) = a4;
    a2[4] = FixedNumeric.debugDescription.getter();
    a2[5] = v23;
    outlined init with copy of FixedNumeric(&v41, v39);
    v24 = swift_allocObject();
    v25 = v39[1];
    *(v24 + 16) = v39[0];
    *(v24 + 32) = v25;
    *(v24 + 48) = v40;
    result = swift_allocObject();
    v27 = result;
    v28 = v42;
    *(result + 16) = v41;
    *(result + 32) = v28;
    *(result + 48) = v43;
    v29 = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
    v30 = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(&v13[*(v8 + 20)], v20, v17);
    v31 = MEMORY[0x277D83D00];
    type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    *(v13 + 3) = v32;
    *(v13 + 4) = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v31, MEMORY[0x277D10368]);
    *v13 = a3;
    *(v13 + 1) = a4;
    v33 = FixedQuantity.debugDescription.getter();
    v35 = v34;
    (*(v18 + 8))(v20, v17);
    a2[4] = v33;
    a2[5] = v35;
    outlined init with copy of HealthChartsUnit?(v13, v10, type metadata accessor for FixedQuantity);
    v36 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v24 = swift_allocObject();
    outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v24 + v36, type metadata accessor for FixedQuantity);
    outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v13, v10, type metadata accessor for FixedQuantity);
    v27 = swift_allocObject();
    result = outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v10, v27 + v36, type metadata accessor for FixedQuantity);
    v29 = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
    v30 = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  }

  *a2 = v30;
  a2[1] = v24;
  a2[2] = v29;
  a2[3] = v27;
  return result;
}

uint64_t HKDistanceWalkingRunningStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461840);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKBasalEnergyBurnedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462370);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKActiveEnergyStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462570);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKFlightsClimbedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514616F0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKNikeFuelStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000020, 0x80000002514614D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

void HKOxygenSaturationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:0.25];

  v15 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461430);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 1;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKOxygenSaturationStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](37, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 0;
  v34[0] = 0x4024000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0x4059000000000000;
  v37 = 0;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

void HKBloodGlucoseStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v30 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v28 = MEMORY[0x2530763A0](v9);
  v10 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v11 = MEMORY[0x2530763A0](v10);
  v12 = [v11 canonicalUnit];

  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:4.0];

  v15 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251462310);
  v16 = MEMORY[0x2530763A0](v15);
  v17 = [v16 canonicalUnit];

  if (!v17)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = [v13 quantityWithUnit:v17 doubleValue:0.0];

  *&v33 = v28;
  *(&v33 + 1) = v14;
  v34 = 0;
  v35 = v18;
  v36 = xmmword_25145AF30;
  outlined init with copy of HealthChartsUnit?(v29, v8, type metadata accessor for HealthChartsContext);
  v19 = type metadata accessor for HealthChartsContext(0);
  (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v33, v8, v5, v32);
  (*(v3 + 8))(v5, v30);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v32[0])
  {
    v20 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v21 = swift_allocObject();
    v22 = v32[3];
    v21[3] = v32[2];
    v21[4] = v22;
    v23 = v32[5];
    v21[5] = v32[4];
    v21[6] = v23;
    v24 = v32[1];
    v21[1] = v32[0];
    v21[2] = v24;
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    v25 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v26 = v31;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v33);
    outlined destroy of HealthChartsQuantityDistributionDataProvider?(v32);
    v21 = 0;
    v25 = 0;
    v20 = 0;
    v26 = v31;
    v31[1] = 0;
    v26[2] = 0;
  }

  *v26 = v21;
  v26[3] = v25;
  v26[4] = v20;
}

unint64_t HKBloodGlucoseStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x4C642F676DLL, 0xE500000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v7, v31, 0.0, 200.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKBloodAlcoholContentStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330], MEMORY[0x277D10328]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251462340);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v19 = MEMORY[0x253076160](37, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 12;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKPeripheralPerfusionIndexStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000030, 0x8000000251461390);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](37, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKPeripheralPerfusionIndexStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](37, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3FC999999999999ALL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKDietaryFatTotalStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461EC0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatPolyunsaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F20);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatMonounsaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000031, 0x8000000251461F60);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFatSaturatedStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461EF0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCholesterolStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251462030);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySodiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461BF0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCarbohydratesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251462090);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFiberStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461E90);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySugarStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461BC0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryEnergyStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002DLL, 0x8000000251461FA0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](1818321771, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryProteinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461C80);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](103, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminAStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461B60);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminB6StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461B00);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminB12StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461B30);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminCStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AD0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminDStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461AA0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminEStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A70);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryVitaminKStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461A40);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCalciumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x80000002514620C0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryIronStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000023, 0x8000000251461E00);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryThiaminStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000026, 0x8000000251461B90);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryRiboflavinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461C50);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryNiacinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461D40);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryFolateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E60);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryBiotinStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251462120);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPantothenicAcidStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ELL, 0x8000000251461D10);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPhosphorusStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461CE0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryIodineStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461E30);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryMagnesiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DD0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryZincStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000023, 0x80000002514619E0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietarySeleniumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461C20);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCopperStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251461FD0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryManganeseStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461DA0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryChromiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462000);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryMolybdenumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251461D70);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](6775661, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryChlorideStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462060);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryPotassiumStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461CB0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKNumberOfTimesFallenStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461460);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKElectrodermalActivityStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002DLL, 0x80000002514617E0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](5464941, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKElectrodermalActivityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](5464941, 0xE300000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3FC999999999999ALL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPurpleColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKInhalerUsageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461560);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKInhalerUsageStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4008000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKRespiratoryRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v27 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v9 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461300);
  v10 = MEMORY[0x2530763A0](v9);
  v11 = objc_opt_self();
  v12 = [v11 _countPerMinuteUnit];
  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v12 doubleValue:0.5];

  v15 = [v11 _countPerMinuteUnit];
  v16 = [v13 quantityWithUnit:v15 doubleValue:0.0];

  *&v30 = v10;
  *(&v30 + 1) = v14;
  v31 = 0;
  v32 = v16;
  v33 = xmmword_25145AF40;
  outlined init with copy of HealthChartsUnit?(v26, v8, type metadata accessor for HealthChartsContext);
  v17 = type metadata accessor for HealthChartsContext(0);
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  static HealthChartsDataShape.dateRange<>()();
  _s12HealthCharts0aB32QuantityDistributionDataProviderV8provider13configuration7context09preferredE5ShapeACSgAA0abcD18QueryConfigurationV_AA0aB7ContextVSg0aB4Core0abeK0VyxGtAN0d13RepresentableK0RzAN04PloteK0RzlFZAN017DiscreteDateRangeE0V_Tt3B5(&v30, v8, v5, v29);
  (*(v3 + 8))(v5, v27);
  outlined destroy of HealthChartsUnit?(v8, type metadata accessor for HealthChartsContext?);
  if (*&v29[0])
  {
    v18 = lazy protocol witness table accessor for type HealthChartsQuantityDistributionDataProvider and conformance HealthChartsQuantityDistributionDataProvider();
    v19 = swift_allocObject();
    v20 = v29[3];
    v19[3] = v29[2];
    v19[4] = v20;
    v21 = v29[5];
    v19[5] = v29[4];
    v19[6] = v21;
    v22 = v29[1];
    v19[1] = v29[0];
    v19[2] = v22;
    result = outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v30);
    v24 = &type metadata for HealthChartsQuantityDistributionDataProvider;
    v25 = v28;
  }

  else
  {
    outlined destroy of HealthChartsQuantityDistributionQueryConfiguration(&v30);
    result = outlined destroy of HealthChartsQuantityDistributionDataProvider?(v29);
    v19 = 0;
    v24 = 0;
    v18 = 0;
    v25 = v28;
    v28[1] = 0;
    v25[2] = 0;
  }

  *v25 = v19;
  v25[3] = v24;
  v25[4] = v18;
  return result;
}

unint64_t HKRespiratoryRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v7, v31, 0.0, 20.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKBodyTemperatureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251462250);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

double HKSleepAnalysisStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.23817171e223;
  *v25 = xmmword_25145AF60;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKBiologicalSexStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 7.66991258e170;
  *v25 = xmmword_25145AF70;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double _s12HealthCharts29HKSleepAnalysisStaticChartKeyVAA0aefG0A2aDP12dataProvider3for0aB4Core0ab4DataI0_pSgAA0aB7ContextV_tFTW_0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double HKDateOfBirthStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.33111024e-152;
  *v25 = xmmword_25145AF80;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKBloodTypeStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.78730822e276;
  *v25 = xmmword_25145AF90;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKAppleStandHourStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v32 + 1) = v13;
  v14 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v31 = xmmword_25145AF50;
  *&v33 = v14;
  *(&v33 + 1) = 0x40EFA40000000000;
  memset(v34, 0, 24);
  *&v34[24] = 1;
  outlined init with copy of AutomaticNumeric(&v31, v29);
  v15 = swift_allocObject();
  v16 = v30[0];
  v15[3] = v29[2];
  v15[4] = v16;
  *(v15 + 74) = *(v30 + 10);
  v17 = v29[1];
  v15[1] = v29[0];
  v15[2] = v17;
  v18 = swift_allocObject();
  v19 = *v34;
  v18[3] = v33;
  v18[4] = v19;
  *(v18 + 74) = *&v34[10];
  v20 = v32;
  v18[1] = v31;
  v18[2] = v20;
  *a1 = 0x4072C00000000000;
  v21 = a1 + *(v7 + 40);
  *v21 = 1;
  *(v21 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 2) = v15;
  *(v21 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v21 + 4) = v18;
  *(v21 + 5) = 0x6974616D6F747561;
  *(v21 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0;
  v5[32] = 1;
  *(v5 + 5) = 1;
  v5[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = (a1 + *(v24 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v26[3] = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v26[4] = result;
  *v26 = 0xD000000000000010;
  v26[1] = 0x8000000251463EB0;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKForcedVitalCapacityStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461690);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](76, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKForcedVitalCapacityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](76, 0xE100000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x3FC999999999999ALL;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKForcedExpiratoryVolume1StaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002FLL, 0x80000002514616C0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](76, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKPeakExpiratoryFlowRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ELL, 0x80000002514613D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x6E696D2F4CLL, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKPeakExpiratoryFlowRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x6E696D2F4CLL, 0xE500000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4024000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemCyanColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKAppleExerciseTimeStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000029, 0x8000000251462540);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](7235949, 0xE300000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryCaffeineStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x80000002514620F0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26477, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

double HKWorkoutStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v32 + 1) = v12;
  v33 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v31 = xmmword_25145AFA0;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v31, v29);
  v16 = swift_allocObject();
  v17 = v29[1];
  *(v16 + 16) = v29[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v30;
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v31;
  *(v18 + 32) = v19;
  *(v18 + 48) = v33;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = partial apply for specialized implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:);
  *(v20 + 2) = v16;
  *(v20 + 3) = partial apply for specialized closure #1 in ScalarDomain.init<A>(_:);
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.82088753e-306;
  *v25 = xmmword_25145AFB0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKBloodPressureStaticChartKey.dataProvider(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for HealthChartsContext(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  outlined init with copy of HealthChartsUnit?(v7, v4, type metadata accessor for HealthChartsContext?);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    outlined destroy of HealthChartsUnit?(v4, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v11 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v10 = *v4;
  v11 = *v4;
  outlined destroy of HealthChartsUnit?(v4, type metadata accessor for HealthChartsContext);
  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsContext?);
  a1[3] = &type metadata for HealthChartsBloodPressureDataProvider;
  result = lazy protocol witness table accessor for type HealthChartsBloodPressureDataProvider and conformance HealthChartsBloodPressureDataProvider();
  a1[4] = result;
  *a1 = v11;
  return result;
}

unint64_t HKBloodPressureStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v49 = v2;
  v46 = *(v2 - 8);
  *&v47 = v46;
  MEMORY[0x28223BE20](v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for MinMaxSeriesAttributes(0) - 8;
  MEMORY[0x28223BE20](v48);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v11 = v10;
  v12 = a1 + *(v10 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v14 = &v12[*(v13 + 52)];
  v14[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  *v12 = 1;
  v16 = MEMORY[0x253076160](1732799853, 0xE400000000000000);
  v17 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v9, v50, 60.0, 160.0);
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsUnit?);
  v18 = v51;
  v19 = v52;
  v20 = v50[0];
  v21 = v50[1];
  v45 = a1;
  *a1 = 0x4072C00000000000;
  v22 = a1 + *(v11 + 40);
  *v22 = 1;
  *(v22 + 8) = v20;
  *(v22 + 24) = v21;
  *(v22 + 5) = v18;
  *(v22 + 6) = v19;
  v23 = objc_opt_self();
  v24 = [v23 labelColor];
  Color.init(uiColor:)();
  v25 = Color.opacity(_:)();

  v26 = [v23 labelColor];
  v27 = Color.init(uiColor:)();
  v28 = &v6[*(v48 + 28)];
  v44[1] = type metadata accessor for DotSeriesAttributes(0);
  static ChartSymbolShape<>.circle.getter();
  v44[0] = type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v28 = v27;
  *(v28 + 1) = 0;
  v28[16] = 1;
  *v6 = v25;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = 0x4020000000000000;
  v6[32] = 0;
  *(v6 + 5) = 0;
  v6[48] = 1;
  outlined init with copy of HealthChartsUnit?(v6, v4, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v29 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v30 = swift_allocObject();
  v47 = xmmword_25145AB10;
  *(v30 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v30 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for MinMaxSeriesAttributes);
  v31 = [v23 systemPinkColor];
  Color.init(uiColor:)();
  v32 = Color.opacity(_:)();

  v33 = [v23 systemPinkColor];
  v34 = Color.init(uiColor:)();
  v35 = &v4[*(v48 + 28)];
  static ChartSymbolShape<>.diamond.getter();
  swift_storeEnumTagMultiPayload();
  *v35 = v34;
  *(v35 + 1) = 0;
  v35[16] = 1;
  *v4 = v32;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4020000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  v36 = swift_allocObject();
  *(v36 + 16) = v47;
  outlined init with copy of HealthChartsUnit?(v4, v36 + v29, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  *&v50[0] = v30;
  specialized Array.append<A>(contentsOf:)(v36);
  outlined destroy of HealthChartsUnit?(v4, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  v37 = *&v50[0];
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v39 = v38;
  v40 = v45;
  v41 = v45 + *(v38 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<BloodPressureMessage>, lazy protocol witness table accessor for type BloodPressureMessage and conformance BloodPressureMessage, &type metadata for BloodPressureMessage);
  *(v41 + 3) = v42;
  result = lazy protocol witness table accessor for type DescriptionMessage<BloodPressureMessage> and conformance DescriptionMessage<A>();
  *(v41 + 4) = result;
  *(v40 + *(v39 + 40)) = v37;
  return result;
}

uint64_t HKCyclingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000027, 0x8000000251461970);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDietaryWaterStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000024, 0x8000000251461A10);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](19565, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKFitzpatrickSkinTypeStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000015;
  v25[1] = 0x8000000251462BF0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKUVExposureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateMinMaxData>, MEMORY[0x277D10330], MEMORY[0x277D10328]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000022, 0x8000000251461030);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateMinMax<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateMinMaxData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 12;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKBloodAlcoholContentStaticChartKey.attributes(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v44 = a1;
  v45 = a2;
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  v48 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MinMaxSeriesAttributes(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v18 = v17;
  v19 = a3 + *(v17 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v21 = &v19[*(v20 + 52)];
  v21[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  *v19 = 1;
  v23 = MEMORY[0x253076160](v44, v45);
  v24 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  _s12HealthCharts12ScalarDomainV13fixedQuantity_4unitACx_0aB4Core0aB4UnitVSgtAF18IntervalChartValueRzSd5BoundRtzlFZSnySdG_Tt2g5(v16, v49, 0.0, a4);
  outlined destroy of HealthChartsUnit?(v16, type metadata accessor for HealthChartsUnit?);
  v25 = v50;
  v26 = v51;
  v27 = v49[0];
  v28 = v49[1];
  *a3 = 0x4072C00000000000;
  v29 = a3 + *(v18 + 40);
  *v29 = 1;
  *(v29 + 8) = v27;
  *(v29 + 24) = v28;
  *(v29 + 5) = v25;
  *(v29 + 6) = v26;
  v30 = objc_opt_self();
  v31 = [v30 systemBlueColor];
  Color.init(uiColor:)();
  v32 = Color.opacity(_:)();

  v33 = [v30 systemBlueColor];
  v34 = Color.init(uiColor:)();
  v35 = &v13[*(v11 + 28)];
  *&v35[*(type metadata accessor for DotSeriesAttributes(0) + 20)] = xmmword_25145AFC0;
  type metadata accessor for DotSeriesAttributes.Symbol(0);
  swift_storeEnumTagMultiPayload();
  *v35 = v34;
  *(v35 + 1) = 0;
  v35[16] = 1;
  *v13 = v32;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v13 + 3) = 0x4020000000000000;
  v13[32] = 0;
  *(v13 + 5) = 0;
  v13[48] = 1;
  outlined init with copy of HealthChartsUnit?(v13, v9, type metadata accessor for MinMaxSeriesAttributes);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v36 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v9, v37 + v36, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  outlined destroy of HealthChartsUnit?(v13, type metadata accessor for MinMaxSeriesAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v39 = v38;
  v40 = a3 + *(v38 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<RangeQuantity>, lazy protocol witness table accessor for type RangeQuantity and conformance RangeQuantity, &type metadata for RangeQuantity);
  *(v40 + 3) = v41;
  result = lazy protocol witness table accessor for type DescriptionMessage<RangeQuantity> and conformance DescriptionMessage<A>();
  *(v40 + 4) = result;
  *(a3 + *(v39 + 40)) = v37;
  return result;
}

uint64_t HKBasalBodyTemperatureStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002CLL, 0x80000002514623A0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](1130849636, 0xE400000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

void HKCervicalMucusQualityStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002CLL, 0x8000000251463CD0);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145AB10;
  *(v12 + 48) = xmmword_25145AFE0;
  *(v12 + 64) = 5;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKCervicalMucusQualityStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  v25 = xmmword_25145AB10;
  *(v11 + 16) = xmmword_25145AFD0;
  *(v11 + 32) = xmmword_25145AB10;
  *(v11 + 48) = xmmword_25145AFE0;
  *(v11 + 64) = 5;
  v12 = specialized static HKCategoryValueCervicalMucusQuality.valueLabelDictionary.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *a1 = 0x4072C00000000000;
  v15 = a1 + *(v6 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v13;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v14;
  *(v15 + 5) = 0xD000000000000015;
  *(v15 + 6) = 0x8000000251462D90;

  v16 = specialized static HKCategoryValueCervicalMucusQuality.valueLabelDictionary.getter();
  v17 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v19 + v18, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v21 = v20;
  v22 = (a1 + *(v20 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v22[3] = v23;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v22[4] = result;
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v22[2] = v16;
  *(a1 + *(v21 + 40)) = v19;
  return result;
}

void HKOvulationTestResultStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251463480);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  v12[1] = xmmword_25145AFF0;
  v12[2] = xmmword_25145B000;
  v12[3] = xmmword_25145B010;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

unint64_t HKOvulationTestResultStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  v11[1] = xmmword_25145AFF0;
  v11[2] = xmmword_25145B000;
  v11[3] = xmmword_25145B010;
  v12 = specialized static HKCategoryValueOvulationTestResult.valueLabelDictionary.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *a1 = 0x4072C00000000000;
  v15 = a1 + *(v6 + 40);
  *v15 = 1;
  *(v15 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 2) = v13;
  *(v15 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v15 + 4) = v14;
  *(v15 + 5) = 0xD000000000000015;
  *(v15 + 6) = 0x8000000251462D90;

  v16 = specialized static HKCategoryValueOvulationTestResult.valueLabelDictionary.getter();
  v17 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v18 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v19 + v18, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v21 = v20;
  v22 = (a1 + *(v20 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<CategoryLevel>, lazy protocol witness table accessor for type CategoryLevel and conformance CategoryLevel, &type metadata for CategoryLevel);
  v22[3] = v23;
  result = lazy protocol witness table accessor for type DescriptionMessage<CategoryLevel> and conformance DescriptionMessage<A>();
  v22[4] = result;
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v22[2] = v16;
  *(a1 + *(v21 + 40)) = v19;
  return result;
}

void HKMenstruationStaticChartKey.dataProvider(for:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKCategoryType, 0x277CCD0C0);
  v10 = MEMORY[0x253076160](0xD000000000000025, 0x8000000251463580);
  v11 = MEMORY[0x253076390](v10);
  type metadata accessor for HealthChartsQuantityDistributionDataProvider?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25145AFD0;
  *(v12 + 32) = xmmword_25145B020;
  *(v12 + 48) = xmmword_25145B030;
  *(v12 + 64) = 4;
  outlined init with copy of HealthChartsUnit?(a1, v9, type metadata accessor for HealthChartsContext);
  v13 = type metadata accessor for HealthChartsContext(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 0, 1, v13);
  a2[3] = &type metadata for HealthChartsCategoryLevelDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsCategoryLevelDataProvider and conformance HealthChartsCategoryLevelDataProvider();
  v15 = swift_allocObject();
  *a2 = v15;
  outlined init with copy of HealthChartsUnit?(v9, v6, type metadata accessor for HealthChartsContext?);
  v16 = (*(v14 + 48))(v6, 1, v13);
  v17 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v18 = v11;

    outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v20 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v19 = *v6;
  v20 = *v6;
  v21 = v11;

  outlined destroy of HealthChartsUnit?(v6, type metadata accessor for HealthChartsContext);
  if (!v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  outlined destroy of HealthChartsUnit?(v9, type metadata accessor for HealthChartsContext?);

  v15[2] = v20;
  v15[3] = v12;
  v15[4] = v11;
  v15[5] = 0;
  v15[6] = v17;
}

double HKSexualActivityStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B040;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemIndigoColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v26 + 3) = v27;
  *(v26 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 538160.729;
  *v26 = xmmword_25145B050;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

double HKMindfulSessionStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B060;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemMintColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v26 + 3) = v27;
  *(v26 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.6980311e-152;
  *v26 = xmmword_25145B070;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKPushCountStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000021, 0x8000000251461330);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

double HKLocationSeriesStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000017, 0x8000000251460D10);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 9.08367203e223;
  *v25 = xmmword_25145B080;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKWheelchairUseStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 1.71439354e161;
  *v25 = xmmword_25145B090;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKCDADocumentStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemGrayColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.91811673e257;
  *v25 = xmmword_25145B0A0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKSwimmingDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x8000000251461870);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](109, 0xE100000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKSwimmingStrokesStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002BLL, 0x8000000251461090);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](0x746E756F63, 0xE500000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKWheelchairDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251461810);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKWaistCircumferenceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002ALL, 0x8000000251460FB0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](28003, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKRestingHeartRateStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000028, 0x80000002514612D0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKRestingHeartRateStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4034000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKHeartbeatSeriesStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000010;
  v25[1] = 0x80000002514626A0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

uint64_t HKVO2MaxStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000001ELL, 0x8000000251460FE0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x6D2A676B282F6C6DLL, 0xEB00000000296E69);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKVO2MaxStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](0x6D2A676B282F6C6DLL, 0xEB00000000296E69);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4030000000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

uint64_t HKWalkingHeartRateAverageStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD00000000000002FLL, 0x8000000251460F00);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](0x696D2F746E756F63, 0xE90000000000006ELL);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKDownhillSnowSportsDistanceStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDateRangeData>, MEMORY[0x277D10320], MEMORY[0x277D10310]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000032, 0x8000000251461930);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.dateRange<>()();
  v19 = MEMORY[0x253076160](26989, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDateRangeData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 16;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

uint64_t HKHeartRateVariabilitySDNNStaticChartKey.dataProvider(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HealthChartsContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for HealthChartsDataShape<DiscreteDateRangeData>(0, &lazy cache variable for type metadata for HealthChartsDataShape<DiscreteDatePointData>, MEMORY[0x277D10308], MEMORY[0x277D10300]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  type metadata accessor for HealthChartsContext?(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for HKQuantityType(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v18 = MEMORY[0x253076160](0xD000000000000030, 0x80000002514615B0);
  v28 = MEMORY[0x2530763A0](v18);
  outlined init with copy of HealthChartsUnit?(a1, v17, type metadata accessor for HealthChartsContext);
  (*(v5 + 56))(v17, 0, 1, v4);
  static HealthChartsDataShape.datePoint<>()();
  v19 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v20 = [objc_opt_self() unitFromString_];

  a2[3] = &type metadata for HealthChartsQuantityDataProvider;
  a2[4] = lazy protocol witness table accessor for type HealthChartsQuantityDataProvider and conformance HealthChartsQuantityDataProvider();
  v21 = swift_allocObject();
  *a2 = v21;
  outlined init with copy of HealthChartsUnit?(v17, v14, type metadata accessor for HealthChartsContext?);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    outlined destroy of HealthChartsUnit?(v14, type metadata accessor for HealthChartsContext?);
LABEL_4:
    v24 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    goto LABEL_5;
  }

  v22 = v27;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v14, v27, type metadata accessor for HealthChartsContext);
  v23 = *v22;
  v24 = *v22;
  outlined destroy of HealthChartsUnit?(v22, type metadata accessor for HealthChartsContext);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21[6] = v8;
  v21[7] = lazy protocol witness table accessor for type HealthChartsDataShape<DiscreteDatePointData> and conformance HealthChartsDataShape<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 3);
  (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
  v21[2] = v24;
  v21[8] = v28;
  v21[9] = 2;
  v21[10] = v20;
  (*(v9 + 8))(v11, v8);
  return outlined destroy of HealthChartsUnit?(v17, type metadata accessor for HealthChartsContext?);
}

unint64_t HKHeartRateVariabilitySDNNStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsUnit?(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v9 = v8;
  v10 = a1 + *(v8 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v12 = &v10[*(v11 + 52)];
  v12[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  *v10 = 1;
  v14 = MEMORY[0x253076160](29549, 0xE200000000000000);
  v15 = [objc_opt_self() unitFromString_];

  HKUnit.healthChartsUnit()();
  LOBYTE(v31[0]) = 0;
  v30 = 1;
  v34[0] = 0x4062C00000000000;
  v34[1] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  _s12HealthCharts12ScalarDomainV17automaticQuantity7default4unit12boundaryRuleACx_0aB4Core0aB4UnitVSgAA012AxisBoundaryJ0VtAH18IntervalChartValueRzSd5BoundRtzlFZSNySdG_Tt3B5(v7, v34, v31, 0.0, 1.0);
  outlined destroy of HealthChartsUnit?(v7, type metadata accessor for HealthChartsUnit?);
  v16 = v32;
  v17 = v33;
  v18 = v31[0];
  v19 = v31[1];
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v9 + 40);
  *v20 = 1;
  *(v20 + 8) = v18;
  *(v20 + 24) = v19;
  *(v20 + 5) = v16;
  *(v20 + 6) = v17;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = a1 + *(v24 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<AverageQuantity>, lazy protocol witness table accessor for type AverageQuantity and conformance AverageQuantity, &type metadata for AverageQuantity);
  *(v26 + 3) = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<AverageQuantity> and conformance DescriptionMessage<A>();
  *(v26 + 4) = result;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKTachycardiaEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83D00];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
  *(&v33 + 1) = v12;
  v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, &lazy cache variable for type metadata for Range<Double>, v11, MEMORY[0x277D10368]);
  v32 = xmmword_25145B0B0;
  v13 = FixedNumeric.debugDescription.getter();
  v15 = v14;
  outlined init with copy of FixedNumeric(&v32, v30);
  v16 = swift_allocObject();
  v17 = v30[1];
  *(v16 + 16) = v30[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v31;
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v32;
  *(v18 + 32) = v19;
  *(v18 + 48) = v34;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v6 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v16;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v18;
  *(v20 + 5) = v13;
  *(v20 + 6) = v15;
  v21 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = 1;
  v4[48] = 1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v23 + v22, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v25 = v24;
  v26 = (a1 + *(v24 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v26[3] = v27;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v26[4] = result;
  *v26 = 0xD000000000000011;
  v26[1] = 0x8000000251463850;
  *(a1 + *(v25 + 40)) = v23;
  return result;
}

unint64_t HKElectrocardiogramStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000011;
  v25[1] = 0x80000002514626F0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKAudiogramStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemBlueColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 2.58744395e161;
  *v25 = xmmword_25145B0C0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKBradycardiaEventStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v6 = v5;
  v7 = a1 + *(v5 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v9 = &v7[*(v8 + 52)];
  v9[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  *v7 = 1;
  v11 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v33 + 1) = v12;
  *v34 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v11, MEMORY[0x277D10350]);
  v32 = xmmword_25145AF50;
  memset(&v34[8], 0, 32);
  *&v34[40] = 256;
  outlined init with copy of AutomaticNumeric(&v32, v30);
  v13 = swift_allocObject();
  v14 = v31[0];
  v13[3] = v30[2];
  v13[4] = v14;
  *(v13 + 74) = *(v31 + 10);
  v15 = v30[1];
  v13[1] = v30[0];
  v13[2] = v15;
  v16 = swift_allocObject();
  v17 = *&v34[16];
  v16[3] = *v34;
  v16[4] = v17;
  *(v16 + 74) = *&v34[26];
  v18 = v33;
  v16[1] = v32;
  v16[2] = v18;
  *a1 = 0x4072C00000000000;
  v19 = a1 + *(v6 + 40);
  *v19 = 1;
  *(v19 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 2) = v13;
  *(v19 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v19 + 4) = v16;
  *(v19 + 5) = 0x6974616D6F747561;
  *(v19 + 6) = 0xE900000000000063;
  v20 = [objc_opt_self() systemPinkColor];
  *v4 = Color.init(uiColor:)();
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(v4 + 3) = 0x4000000000000000;
  v4[32] = 0;
  *(v4 + 5) = 0;
  v4[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v4, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000011;
  v25[1] = 0x8000000251463610;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

double HKAllergyRecordStaticChartKey.attributes(for:)@<D0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD00000000000001CLL, 0x8000000251462B70);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = a1 + *(v23 + 36);
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  *(v25 + 3) = v26;
  *(v25 + 4) = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  result = 3.03155766e-152;
  *v25 = xmmword_25145B0D0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKConditionRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD00000000000001DLL, 0x8000000251462AA0);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000010;
  v25[1] = 0x8000000251462A80;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}

unint64_t HKImmunizationRecordStaticChartKey.attributes(for:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for ChartAttributes<DateDomain>, type metadata accessor for ChartAttributes);
  v7 = v6;
  v8 = a1 + *(v6 + 36);
  type metadata accessor for ChartAttributes<DateDomain>.AxisAttributes<DateDomain>(0);
  v10 = &v8[*(v9 + 52)];
  v10[*(type metadata accessor for DateDomain(0) + 20)] = 2;
  type metadata accessor for DateDomain.ViewDateSpan(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DateDomain.IntervalAggregation(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  *v8 = 1;
  v12 = MEMORY[0x277D83638];
  type metadata accessor for ClosedRange<Double>(0, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
  *(&v31 + 1) = v13;
  *v32 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v12, MEMORY[0x277D10350]);
  v30 = xmmword_25145AF50;
  memset(&v32[8], 0, 32);
  *&v32[40] = 256;
  outlined init with copy of AutomaticNumeric(&v30, v28);
  v14 = swift_allocObject();
  v15 = v29[0];
  v14[3] = v28[2];
  v14[4] = v15;
  *(v14 + 74) = *(v29 + 10);
  v16 = v28[1];
  v14[1] = v28[0];
  v14[2] = v16;
  v17 = swift_allocObject();
  v18 = *&v32[16];
  v17[3] = *v32;
  v17[4] = v18;
  *(v17 + 74) = *&v32[26];
  v19 = v31;
  v17[1] = v30;
  v17[2] = v19;
  *a1 = 0x4072C00000000000;
  v20 = a1 + *(v7 + 40);
  *v20 = 1;
  *(v20 + 1) = implicit closure #2 in implicit closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 2) = v14;
  *(v20 + 3) = closure #1 in ScalarDomain.init<A>(_:)specialized partial apply;
  *(v20 + 4) = v17;
  *(v20 + 5) = 0x6974616D6F747561;
  *(v20 + 6) = 0xE900000000000063;
  specialized static HealthChartsColor.hk_namedColor(_:)(0xD000000000000020, 0x80000002514629D0);
  *v5 = Color.init(uiColor:)();
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(v5 + 3) = 0x4000000000000000;
  v5[32] = 0;
  *(v5 + 5) = 0;
  v5[48] = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsAttributes<DateDomain>.SeriesTypeAttributes>, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes, MEMORY[0x277D84560]);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25145AB10;
  outlined init with take of HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(v5, v22 + v21, type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes);
  type metadata accessor for HealthChartsAttributes<DateDomain>.SeriesTypeAttributes(0, &lazy cache variable for type metadata for HealthChartsAttributes<DateDomain>, type metadata accessor for HealthChartsAttributes);
  v24 = v23;
  v25 = (a1 + *(v23 + 36));
  type metadata accessor for DescriptionMessage<NoDescription>(0, &lazy cache variable for type metadata for DescriptionMessage<NoDescription>, lazy protocol witness table accessor for type NoDescription and conformance NoDescription, &type metadata for NoDescription);
  v25[3] = v26;
  result = lazy protocol witness table accessor for type DescriptionMessage<NoDescription> and conformance DescriptionMessage<A>();
  v25[4] = result;
  *v25 = 0xD000000000000013;
  v25[1] = 0x80000002514629B0;
  *(a1 + *(v24 + 40)) = v22;
  return result;
}
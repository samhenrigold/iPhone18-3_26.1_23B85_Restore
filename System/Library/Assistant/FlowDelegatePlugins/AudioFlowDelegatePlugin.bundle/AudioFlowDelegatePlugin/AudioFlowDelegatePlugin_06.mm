unint64_t sub_B1818()
{
  result = qword_34E758;
  if (!qword_34E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E758);
  }

  return result;
}

void *Determine.UnsupportedValueStrategy.deinit()
{

  sub_306C((v0 + 24));
  sub_306C((v0 + 64));
  return v0;
}

unint64_t sub_B18E4(uint64_t a1, uint64_t a2)
{
  result = sub_B190C(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B190C(uint64_t a1, uint64_t a2)
{
  result = qword_34E760;
  if (!qword_34E760)
  {
    type metadata accessor for AddMedia.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E760);
  }

  return result;
}

uint64_t sub_B19C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v35 = a6;
  v36 = a3;
  v32 = a4;
  v37 = a10;
  v38 = a5;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput", v20, 2u);
  }

  (*(v14 + 8))(v16, v13);
  v21 = v34;
  v22 = *(v34 + 16);
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a7;
  v24 = v32;
  v26 = v35;
  v25 = v36;
  v23[6] = v33;
  v23[7] = v25;
  v23[8] = v24;
  v23[9] = v26;
  v31 = *(*v22 + 200);

  v27 = a2;

  v28 = v26;
  v31(a1, v25, v24, v28, v27, v38, 0, v37, v23);
}

uint64_t sub_B1C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for AddMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_B1CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for AddMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_B1D8C(char *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  v94 = a8;
  v92 = a7;
  v109 = a5;
  v110 = a6;
  v111 = a4;
  v108 = a3;
  v104 = a2;
  v96 = a1;
  v93 = sub_2CCB20();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  v98 = v89 - v12;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v107 = v89 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v106 = v89 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v105 = v89 - v18;
  v103 = sub_2CCB30();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2CCAC0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v21 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v22 = __chkstk_darwin(v97);
  v95 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v89 - v24;
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v89 - v31;
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v33);
  v35 = (v89 - v34);
  sub_F3F4(v96, v89 - v34, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = sub_3ED0(v26, static Logger.default);
    swift_beginAccess();
    (*(v27 + 16))(v32, v37, v26);
    swift_errorRetain();
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_0, v38, v39, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v40, 0xCu);
      sub_30B8(v41, &unk_34FC00, &unk_2D0150);
    }

    (*(v27 + 8))(v32, v26);
    v43 = v100;
    v44 = v101;
    (*(v100 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v101);
    v45 = v102;
    v46 = v99;
    v47 = v103;
    (v102[13])(v99, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v103);
    swift_getErrorValue();
    sub_2CEEF0();
    v98 = sub_2CCAE0();

    (v45[1])(v46, v47);
    (*(v43 + 8))(v21, v44);
    v104 = sub_35E0(v104 + 3, v104[6]);
    v48 = enum case for ActivityType.failed(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v105;
    (*(v50 + 104))(v105, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = sub_2CA130();
    v53 = v106;
    (*(*(v52 - 8) + 56))(v106, 1, 1, v52);
    v54 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v55 = sub_2C98F0();
    v56 = *(v55 - 8);
    v57 = v107;
    (*(v56 + 104))(v107, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    sub_2CB4E0();

    sub_30B8(v57, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    v112[0] = v36;
    v113 = 1;
    swift_errorRetain();
    v109(v112);

    return sub_30B8(v112, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v89[1] = a9;
    sub_24BE0(v35, v25);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v96 = v25;
    v59 = sub_3ED0(v26, static Logger.default);
    swift_beginAccess();
    (*(v27 + 16))(v30, v59, v26);
    v60 = sub_2CDFE0();
    v61 = sub_2CE690();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v62, 2u);
    }

    (*(v27 + 8))(v30, v26);
    a10(v111);
    v63 = v100;
    v64 = v101;
    (*(v100 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v101);
    v65 = v102;
    v66 = v99;
    v67 = v103;
    (v102[13])(v99, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v103);
    v68 = v91;
    v69 = v90;
    v70 = v93;
    (*(v91 + 104))(v90, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v93);
    v94 = sub_2CCB00();
    v92 = v71;
    (*(v68 + 8))(v69, v70);
    (v65[1])(v66, v67);
    (*(v63 + 8))(v21, v64);
    v72 = v104;
    v73 = v104[6];
    v101 = v104[7];
    v102 = sub_35E0(v104 + 3, v73);
    v74 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v75 = sub_2C9C20();
    v76 = *(v75 - 8);
    v77 = v105;
    (*(v76 + 104))(v105, v74, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    v78 = v95;
    sub_F3F4(v96, v95, &qword_34C6E8, &unk_2D0FF0);

    v79 = sub_2CA130();
    v103 = v79;
    v80 = *(v79 - 8);
    v81 = v106;
    (*(v80 + 32))(v106, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
    v82 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v83 = sub_2C98F0();
    v84 = *(v83 - 8);
    v85 = v107;
    (*(v84 + 104))(v107, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    sub_2CB4E0();

    sub_30B8(v85, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v81, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v77, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v72 + 8, v72[11]);
    v86 = v96;
    sub_F3F4(v96, v78, &qword_34C6E8, &unk_2D0FF0);
    v87 = *(v78 + *(v97 + 48));
    v88 = v98;
    sub_1C077C(v78, v87, v98, _swiftEmptyArrayStorage, v109, v110);

    sub_30B8(v88, &unk_353020, &unk_2D0970);
    sub_30B8(v86, &qword_34C6E8, &unk_2D0FF0);
    return (*(v80 + 8))(v78, v103);
  }
}

uint64_t sub_B2CD8()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_B2D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v92 = a4;
  v93 = a5;
  v89 = a3;
  v75 = a6;
  v8 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v8 - 8);
  v88 = &v68 - v9;
  v10 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  v94 = sub_2CE050();
  isa = v94[-1].isa;
  v13 = __chkstk_darwin(v94);
  v87 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v79 = &v68 - v15;
  v77 = sub_2CE000();
  v73 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2CA000();
  v72 = *(v74 - 8);
  v17 = __chkstk_darwin(v74);
  v69 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v71 = &v68 - v20;
  __chkstk_darwin(v19);
  v78 = &v68 - v21;
  v86 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  __chkstk_darwin(v86);
  v23 = &v68 - v22;
  v24 = sub_2C8E80();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = 0;
  v95 = _swiftEmptyArrayStorage;
  v28 = *(a2 + 16);
  v90 = v28;
  if (v28)
  {
    v85 = v24;
    v91 = v12;
    v29 = *(sub_2CE0A0() - 8);
    v30 = a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = *(v29 + 72);
    do
    {
      sub_B6518(v30, &v97, a2, a1, v92, v93, &v96);
      sub_80C08(v96);
      v30 += v31;
      --v28;
    }

    while (v28);
    v70 = v95;
    v28 = v90;
    v12 = v91;
    v24 = v85;
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  sub_2C8E70();
  v85 = sub_2C8E50();
  v91 = v32;
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v33 = 0;
    v84 = sub_2CE0A0();
    v34 = *(v84 - 8);
    v35 = *(v34 + 16);
    v34 += 16;
    v83 = v35;
    v36 = (isa + 48);
    v37 = (isa + 32);
    v38 = _swiftEmptyArrayStorage;
    v39 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v81 = *(v34 + 56);
    v82 = v34;
    do
    {
      v40 = *(v86 + 48);
      *v23 = v33;
      v83(&v23[v40], v39, v84);

      v41 = v88;
      sub_2CE020();
      v42 = sub_2CE030();
      (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      sub_2CE070();
      sub_30B8(v41, &qword_34E938, &qword_2D28E0);
      sub_30B8(v23, &qword_34CCA0, &unk_2D0DD0);
      v43 = v94;
      if ((*v36)(v12, 1, v94) == 1)
      {
        sub_30B8(v12, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v44 = v12;
        v45 = *v37;
        v46 = v79;
        v47 = v44;
        (*v37)(v79);
        (v45)(v87, v46, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_B94C4(0, v38[2] + 1, 1, v38, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v49 = v38[2];
        v48 = v38[3];
        if (v49 >= v48 >> 1)
        {
          v38 = sub_B94C4((v48 > 1), v49 + 1, 1, v38, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v38[2] = v49 + 1;
        (v45)(v38 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v49, v87, v94);
        v12 = v47;
      }

      ++v33;
      v39 += v81;
    }

    while (v90 != v33);
  }

  v50 = v78;
  sub_B6238(v78);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v51 = v77;
  v52 = sub_3ED0(v77, static Logger.default);
  swift_beginAccess();
  v53 = v73;
  v54 = v76;
  (*(v73 + 16))(v76, v52, v51);
  v55 = v72;
  v56 = *(v72 + 16);
  v57 = v71;
  v58 = v74;
  v56(v71, v50, v74);
  v59 = sub_2CDFE0();
  v60 = sub_2CE670();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *v61 = 136315138;
    v56(v69, v57, v58);
    v62 = sub_2CE2A0();
    v64 = v63;
    (*(v55 + 8))(v57, v58);
    v65 = sub_3F08(v62, v64, &v96);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_0, v59, v60, "CommonNLContextProvider#makeDisambiguationContextForMediaDestination for update: %s", v61, 0xCu);
    sub_306C(v94);

    (*(v53 + 8))(v76, v77);
  }

  else
  {

    (*(v55 + 8))(v57, v58);
    (*(v53 + 8))(v54, v51);
  }

  v66 = v75;
  (*(v55 + 32))(v75, v78, v58);
  return (*(v55 + 56))(v66, 0, 1, v58);
}

uint64_t sub_B37D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v87 = a4;
  v88 = a5;
  v86 = a3;
  v71 = a6;
  v73 = sub_2CE000();
  v69 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2CA000();
  v68 = *(v70 - 8);
  v8 = __chkstk_darwin(v70);
  v65 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - v11;
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v15 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v18 - 8);
  v79 = &v65 - v19;
  v20 = sub_2CE050();
  v78 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v85 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v77 = &v65 - v23;
  v24 = sub_2C8E80();
  v84 = *(v24 - 8);
  __chkstk_darwin(v24);
  v83 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_736BC();
  v26 = sub_2CE5C0();
  v27 = v26;
  v92 = 0;
  v89 = _swiftEmptyArrayStorage;
  v82 = v26 >> 62;
  if (v26 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2CEDA0())
  {
    v74 = v14;
    v67 = v12;
    if (i)
    {
      v80 = v24;
      v81 = v20;
      v12 = 0;
      v14 = 0;
      v20 = v27 & 0xC000000000000001;
      v24 = v27 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20)
        {
          v29 = sub_2CECD0();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_37;
          }

          v29 = *(v27 + 8 * v12 + 32);
        }

        v30 = v29;
        v31 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v91 = v29;
        sub_B4DE8(&v91, &v92, v27, a1, v87, v88, &v90);

        sub_80C08(v90);
        ++v12;
        if (v31 == i)
        {
          v66 = v89;
          v24 = v80;
          v20 = v81;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v66 = _swiftEmptyArrayStorage;
LABEL_13:
    v32 = v83;
    sub_2C8E70();
    v33 = sub_2C8E50();
    a1 = v34;
    (*(v84 + 8))(v32, v24);
    v14 = v79;
    if (!v82)
    {
      v35 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      if (!v35)
      {
        break;
      }

      goto LABEL_15;
    }

    v35 = sub_2CEDA0();
    if (!v35)
    {
      break;
    }

LABEL_15:
    v36 = 0;
    v83 = (v27 & 0xFFFFFFFFFFFFFF8);
    v84 = v27 & 0xC000000000000001;
    v80 = (v78 + 32);
    v81 = (v78 + 48);
    v12 = _swiftEmptyArrayStorage;
    v82 = v35;
    v75 = a1;
    v76 = v33;
    while (1)
    {
      if (v84)
      {
        v37 = sub_2CECD0();
      }

      else
      {
        if (v36 >= *(v83 + 2))
        {
          goto LABEL_39;
        }

        v37 = *(v27 + 8 * v36 + 32);
      }

      v38 = v37;
      v24 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      sub_2CE020();
      v39 = sub_2CE030();
      (*(*(v39 - 8) + 56))(v17, 0, 1, v39);
      sub_2CE5A0();
      sub_30B8(v17, &qword_34E938, &qword_2D28E0);

      if ((*v81)(v14, 1, v20) == 1)
      {
        sub_30B8(v14, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v40 = v17;
        v41 = v27;
        v42 = v20;
        v43 = *v80;
        v44 = v77;
        (*v80)(v77, v14, v42);
        v43(v85, v44, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_B94C4(0, *(v12 + 16) + 1, 1, v12, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v46 = *(v12 + 16);
        v45 = *(v12 + 24);
        if (v46 >= v45 >> 1)
        {
          v12 = sub_B94C4((v45 > 1), v46 + 1, 1, v12, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        *(v12 + 16) = v46 + 1;
        v43((v12 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v46), v85, v42);
        v20 = v42;
        v14 = v79;
        v27 = v41;
        v17 = v40;
        a1 = v75;
      }

      ++v36;
      if (v24 == v82)
      {
        goto LABEL_30;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_30:

  v47 = v74;
  sub_B6238(v74);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v48 = v73;
  v49 = sub_3ED0(v73, static Logger.default);
  swift_beginAccess();
  v50 = v69;
  v51 = v72;
  (*(v69 + 16))(v72, v49, v48);
  v52 = v68;
  v53 = *(v68 + 16);
  v54 = v67;
  v55 = v70;
  v53(v67, v47, v70);
  v56 = sub_2CDFE0();
  v57 = sub_2CE670();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v88;
    *v58 = 136315138;
    v53(v65, v54, v55);
    v59 = sub_2CE2A0();
    v61 = v60;
    (*(v52 + 8))(v54, v55);
    v62 = sub_3F08(v59, v61, &v91);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_0, v56, v57, "CommonNLContextProvider#makeDisambiguationContextForMediaItems for update: %s", v58, 0xCu);
    sub_306C(v88);

    (*(v50 + 8))(v72, v73);
  }

  else
  {

    (*(v52 + 8))(v54, v55);
    (*(v50 + 8))(v51, v48);
  }

  v63 = v71;
  (*(v52 + 32))(v71, v74, v55);
  return (*(v52 + 56))(v63, 0, 1, v55);
}

uint64_t sub_B422C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2C8E80();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34E9A0, &qword_2D2950);
  __chkstk_darwin(v4 - 8);
  v38 = &v34 - v5;
  v40 = sub_2CA940();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2CAA40();
  v41 = *(v48 - 8);
  __chkstk_darwin(v48);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2CA9C0();
  v36 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_2CA990();
  __chkstk_darwin(v12 - 8);
  v13 = sub_2CAA00();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  sub_B4888(a1);
  sub_2C9F50();
  sub_2CA520();
  swift_allocObject();
  sub_2CA510();
  sub_2CCF90();
  sub_2CA4E0();

  sub_2CA500();

  v20 = v37;
  v21 = v34;
  v45 = a1;
  sub_2C9FE0();
  sub_2CA9F0();
  sub_2CA980();
  sub_2CA9E0();
  sub_2CA9B0();
  v39 = v14;
  v22 = *(v14 + 16);
  v42 = v13;
  v22(v17, v19, v13);
  v23 = v36;
  sub_2CA9A0();
  sub_2CAA30();
  (*(v23 + 16))(v35, v11, v49);
  v24 = v38;
  sub_2CAA20();
  v25 = v43;
  sub_2C8E70();
  sub_2CAA70();
  (*(v46 + 8))(v25, v47);
  v26 = *(v20 + 48);
  v27 = v40;
  if ((v26)(v24, 1) == 1)
  {
    sub_2CA930();
    if (v26(v24, 1, v27) != 1)
    {
      sub_30B8(v24, &qword_34E9A0, &qword_2D2950);
    }
  }

  else
  {
    (*(v20 + 32))(v44, v24, v27);
  }

  sub_2CAA10();
  sub_20410(&qword_34E9A8, &qword_2D2958);
  v28 = v41;
  v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2D0090;
  v31 = v30 + v29;
  v32 = v48;
  (*(v28 + 16))(v31, v21, v48);
  sub_2C9F30();
  (*(v28 + 8))(v21, v32);
  (*(v23 + 8))(v11, v49);
  return (*(v39 + 8))(v19, v42);
}

uint64_t sub_B4888@<X0>(uint64_t a1@<X8>)
{
  v35[0] = a1;
  v1 = sub_2CDAA0();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v37 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v3 - 8);
  v36 = v35 - v4;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v35[1] = sub_20410(&unk_356F40, &unk_2D0740);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2D1010;
  v44 = sub_2CE2C0();
  v45 = v6;
  v42 = 32;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_B96A0();
  sub_2CEBD0();

  v44 = sub_C3828(1);
  v45 = v7;
  v46._countAndFlagsBits = 0x2E65756C61562ELL;
  v46._object = 0xE700000000000000;
  sub_2CE350(v46);
  v8 = sub_2CE2C0();
  v10 = v9;

  v47._countAndFlagsBits = v8;
  v47._object = v10;
  sub_2CE350(v47);

  v11 = v45;
  *(v5 + 32) = v44;
  *(v5 + 40) = v11;
  v44 = sub_2CE2C0();
  v45 = v12;
  v42 = 32;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_2CEBD0();

  v44 = sub_C3828(1);
  v45 = v13;
  v48._countAndFlagsBits = 0x2E65756C61562ELL;
  v48._object = 0xE700000000000000;
  sub_2CE350(v48);
  v14 = sub_2CE2C0();
  v16 = v15;

  v49._countAndFlagsBits = v14;
  v49._object = v16;
  sub_2CE350(v49);

  v17 = v45;
  *(v5 + 48) = v44;
  *(v5 + 56) = v17;
  v44 = sub_2CE2C0();
  v45 = v18;
  v42 = 32;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_2CEBD0();

  v44 = sub_C3828(1);
  v45 = v19;
  v50._countAndFlagsBits = 0x2E65756C61562ELL;
  v50._object = 0xE700000000000000;
  sub_2CE350(v50);
  v20 = sub_2CE2C0();
  v22 = v21;

  v51._countAndFlagsBits = v20;
  v51._object = v22;
  sub_2CE350(v51);

  v23 = v45;
  *(v5 + 64) = v44;
  *(v5 + 72) = v23;
  v44 = sub_2CE2C0();
  v45 = v24;
  v42 = 32;
  v43 = 0xE100000000000000;
  v40 = 95;
  v41 = 0xE100000000000000;
  sub_2CEBD0();

  v44 = sub_C3828(1);
  v45 = v25;
  v52._countAndFlagsBits = 0x2E65756C61562ELL;
  v52._object = 0xE700000000000000;
  sub_2CE350(v52);
  v26 = sub_2CE2C0();
  v28 = v27;

  v53._countAndFlagsBits = v26;
  v53._object = v28;
  sub_2CE350(v53);

  v29 = v45;
  *(v5 + 80) = v44;
  *(v5 + 88) = v29;
  sub_2C9F90();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2D0090;
  *(v30 + 32) = sub_C3828(1);
  *(v30 + 40) = v31;
  sub_2C9FA0();
  sub_2C9F50();
  (*(v38 + 104))(v37, enum case for PommesContext.Source.pluginDefined(_:), v39);
  v32 = v36;
  sub_2CDAB0();
  v33 = sub_2CDAC0();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  return sub_2C9F20();
}

uint64_t sub_B4DE8@<X0>(void (***a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v86 = a6;
  v85 = a5;
  v94 = a2;
  v89 = a7;
  v93 = sub_2CE000();
  v88 = *(v93 - 1);
  __chkstk_darwin(v93);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E960, &qword_2D28F8);
  __chkstk_darwin(v11 - 8);
  v96 = &v81 - v12;
  v97 = sub_2C9BA0();
  v98 = *(v97 - 8);
  v13 = __chkstk_darwin(v97);
  v81 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v83 = &v81 - v16;
  v17 = __chkstk_darwin(v15);
  v92 = &v81 - v18;
  __chkstk_darwin(v17);
  v90 = &v81 - v19;
  v20 = sub_2C9CC0();
  v99 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v84 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v82 = &v81 - v24;
  v25 = __chkstk_darwin(v23);
  v91 = &v81 - v26;
  v27 = __chkstk_darwin(v25);
  v95 = &v81 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v81 - v30;
  __chkstk_darwin(v29);
  v33 = &v81 - v32;
  v34 = *a1;
  v102 = _swiftEmptyArrayStorage;
  sub_2C9CB0();
  sub_2C9C70();
  v35 = [v34 identifier];
  if (v35)
  {
    v36 = v35;
    sub_2CE270();
  }

  sub_2C9C90();
  sub_C3828(4);
  sub_2C9CA0();
  v37 = *v94;
  v38 = v99;
  if (a3 >> 62)
  {
    v80 = *v94;
    v39 = sub_2CEDA0();
    v37 = v80;
  }

  else
  {
    v39 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v40 = sub_B5CB0(v37, v39, v33, v85, v86);
  sub_80C08(v40);
  v41 = [v34 title];
  if (!v41)
  {
    goto LABEL_10;
  }

  v86 = a4;
  v42 = v41;
  sub_2CE270();

  sub_2C9CB0();
  sub_2C9C70();
  v43 = v99;
  sub_2C9C90();
  sub_C3828(2);
  sub_2C9CA0();
  v44 = v43[2];
  v45 = v96;
  v46 = v33;
  (v44)(v96, v33, v20);
  (v43[7])(v45, 0, 1, v20);
  v47 = v20;
  (v44)(v95, v31, v20);
  sub_2C9B90();
  v48 = v102;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    v33 = v46;
    if (v50 >= v49 >> 1)
    {
      v48 = sub_B94C4((v49 > 1), v50 + 1, 1, v48, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v20 = v47;
    v38 = v99;
    v99[1](v31, v20);
    *(v48 + 16) = v50 + 1;
    (*(v98 + 32))(v48 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v50, v90, v97);
    v102 = v48;
LABEL_10:
    v51 = [v34 artist];
    v34 = v93;
    if (v51)
    {
      v52 = v51;
      sub_2CE270();

      v53 = v91;
      sub_2C9CB0();
      sub_2C9C70();
      sub_2C9C90();
      sub_C3828(3);
      sub_2C9CA0();
      v54 = v38[2];
      v55 = v96;
      (v54)(v96, v33, v20);
      (v38[7])(v55, 0, 1, v20);
      (v54)(v95, v53, v20);
      sub_2C9B90();
      v56 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_B94C4(0, v56[2] + 1, 1, v56, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v58 = v56[2];
      v57 = v56[3];
      if (v58 >= v57 >> 1)
      {
        v56 = sub_B94C4((v57 > 1), v58 + 1, 1, v56, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v34 = v93;
      v38[1](v91, v20);
      v56[2] = v58 + 1;
      (*(v98 + 32))(v56 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58, v92, v97);
      v102 = v56;
    }

    v59 = sub_2CBD10();
    v60 = v88;
    v46 = v87;
    if (v61)
    {
      v62 = v59;
      sub_2CCFB0();

      v92 = v62;
      v63 = sub_2CCF80();
      type metadata accessor for AppInfoBuilder();
      swift_initStackObject();
      if (qword_34BFB8 != -1)
      {
        swift_once();
      }

      sub_285EC(&static StringsBackedAppNameResolver.shared, v100);
      sub_B96F4(v63, v100, _swiftEmptyArrayStorage, v101);
      if (v101[1])
      {
        v64 = v82;
        sub_2C9CB0();
        sub_2C9C70();

        sub_2C9C90();
        sub_C3828(6);
        sub_2C9CA0();
        v65 = v38[2];
        v66 = v96;
        (v65)(v96, v33, v20);
        v91 = v38[7];
        (v91)(v66, 0, 1, v20);
        v93 = v65;
        (v65)(v95, v64, v20);
        sub_2C9B90();
        v67 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_B94C4(0, v67[2] + 1, 1, v67, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v69 = v67[2];
        v68 = v67[3];
        if (v69 >= v68 >> 1)
        {
          v67 = sub_B94C4((v68 > 1), v69 + 1, 1, v67, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v31 = v99[1];
        ++v99;
        (v31)(v82, v20);
        v67[2] = v69 + 1;
        v70 = *(v98 + 32);
        v88 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v87 = *(v98 + 72);
        v98 += 32;
        v90 = v70;
        (v70)(v67 + v88 + v87 * v69, v83, v97);
        v71 = v84;
        sub_2C9CB0();
        sub_2C9C70();
        sub_2C9C90();
        sub_C3828(5);
        sub_2C9CA0();
        v72 = v96;
        v92 = v33;
        v46 = v93;
        (v93)(v96, v33, v20);
        (v91)(v72, 0, 1, v20);
        (v46)(v95, v71, v20);
        v47 = v81;
        sub_2C9B90();
        v48 = v67[2];
        v73 = v67[3];
        if (v48 >= v73 >> 1)
        {
          v67 = sub_B94C4((v73 > 1), v48 + 1, 1, v67, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        sub_30B8(v101, &qword_34E968, &unk_2D2900);
        v34 = v99;
        (v31)(v84, v20);
        (v31)(v92, v20);
        v67[2] = v48 + 1;
        result = (v90)(v67 + v88 + v48 * v87, v47, v97);
        v102 = v67;
        goto LABEL_33;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v75 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v60 + 16))(v46, v75, v34);
    v76 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v76, v48))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v76, v48, "CommonNLContextProvider#makeDisambiguationContextForMediaItems unexpected missing bundle identifier from launchId", v77, 2u);
    }

    v78 = *(v60 + 8);
    v31 = (v60 + 8);
    v78(v46, v34);
    v79 = v38[1];
    v47 = (v38 + 1);
    result = (v79)(v33, v20);
LABEL_33:
    *v89 = v102;
    if (!__OFADD__(*v94, 1))
    {
      break;
    }

    __break(1u);
LABEL_37:
    v48 = sub_B94C4(0, *(v48 + 16) + 1, 1, v48, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  ++*v94;
  return result;
}

void *sub_B5CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v9 = sub_2C9BA0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - v18;
  __chkstk_darwin(v17);
  v20 = &v33;
  v22 = &v33 - v21;
  if (a1 > 24)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  if (a1 < 0)
  {
    goto LABEL_27;
  }

  v33 = v13;
  v23 = &off_32F330 + 2 * a1;
  v24 = v23[4];
  v25 = v23[5];

  sub_B8AB4(v34, v24, v25);

  v6 = sub_B94C4(0, 1, 1, _swiftEmptyArrayStorage, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  v13 = v6[2];
  v20 = v6[3];
  v5 = v13 + 1;
  if (v13 >= v20 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6[2] = v5;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v22, v9);
    v13 = v33;
LABEL_6:
    v20 = a2 - 3;
    if (!__OFSUB__(a2, 3))
    {
      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v6 = sub_B94C4((v20 > 1), v5, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  if (v20 == a1)
  {
    sub_B8AB4(v34, 0x4C6F546472696874, 0xEB00000000747361);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v27 = v6[2];
    v26 = v6[3];
    if (v27 >= v26 >> 1)
    {
      v6 = sub_B94C4((v26 > 1), v27 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v27 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, v19, v9);
  }

  if (a2 - 2 == a1)
  {
    sub_B8AB4(v34, 0x6F54646E6F636573, 0xEC0000007473614CLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v29 = v6[2];
    v28 = v6[3];
    if (v29 >= v28 >> 1)
    {
      v6 = sub_B94C4((v28 > 1), v29 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v29 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v16, v9);
  }

  if (a2 - 1 == a1)
  {
    sub_B8AB4(v34, 1953718636, 0xE400000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v31 = v6[2];
    v30 = v6[3];
    if (v31 >= v30 >> 1)
    {
      v6 = sub_B94C4((v30 > 1), v31 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v31 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v13, v9);
  }

  return v6;
}

uint64_t sub_B6238@<X0>(uint64_t a3@<X8>)
{
  sub_B4888(a3);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v17 = sub_C3828(1);
  v19 = v4;
  v21._countAndFlagsBits = 0x2E65756C61562ELL;
  v21._object = 0xE700000000000000;
  sub_2CE350(v21);
  v5 = sub_2CE2C0();
  v7 = v6;

  v22._countAndFlagsBits = v5;
  v22._object = v7;
  sub_2CE350(v22);

  *(v3 + 32) = v17;
  *(v3 + 40) = v19;
  sub_2C9F60();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2D0E40;
  *(v8 + 32) = sub_C3828(7);
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_C3828(1);
  *(v8 + 56) = v10;
  sub_2C9FA0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_2CEBD0();

  v18 = sub_C3828(1);
  v20 = v12;
  v23._countAndFlagsBits = 0x2E65756C61562ELL;
  v23._object = 0xE700000000000000;
  sub_2CE350(v23);
  v13 = sub_2CE2C0();
  v15 = v14;

  v24._countAndFlagsBits = v13;
  v24._object = v15;
  sub_2CE350(v24);

  *(v11 + 32) = v18;
  *(v11 + 40) = v20;
  sub_2C9F90();

  sub_2C9F10();

  return sub_2C9F00();
}

uint64_t sub_B6518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, char *, uint64_t)@<X5>, NSObject **a7@<X8>)
{
  v71 = a6;
  v72 = a4;
  v82 = a1;
  v76 = a7;
  v75 = sub_2CE000();
  v74 = *(v75 - 1);
  __chkstk_darwin(v75);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E960, &qword_2D28F8);
  __chkstk_darwin(v11 - 8);
  v78 = &v66 - v12;
  v79 = sub_2C9BA0();
  v81 = *(v79 - 8);
  v13 = __chkstk_darwin(v79);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v66 - v16;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  v19 = sub_2C9CC0();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v70 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v68 = &v66 - v24;
  v25 = __chkstk_darwin(v23);
  v77 = &v66 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v66 - v28;
  __chkstk_darwin(v27);
  v31 = &v66 - v30;
  v85 = _swiftEmptyArrayStorage;
  sub_2C9CB0();
  sub_2C9C70();
  sub_2C9C90();
  sub_C3828(4);
  sub_2C9CA0();
  v80 = a2;
  v32 = sub_B5CB0(*a2, *(a3 + 16), v31, a5, v71);
  sub_80C08(v32);
  sub_2CE060();
  v82 = v20;
  if (!v33)
  {
    goto LABEL_6;
  }

  sub_2C9CB0();
  sub_2C9C70();
  sub_2C9C90();
  sub_C3828(8);
  sub_2C9CA0();
  v34 = *(v20 + 16);
  v35 = v78;
  v34(v78, v31, v19);
  (*(v20 + 56))(v35, 0, 1, v19);
  v34(v77, v29, v19);
  sub_2C9B90();
  v36 = v85;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    isa = v36[2].isa;
    v37 = v36[3].isa;
    if (isa >= v37 >> 1)
    {
      v36 = sub_B94C4((v37 > 1), isa + 1, 1, v36, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    (*(v82 + 8))(v29, v19);
    v36[2].isa = (isa + 1);
    (*(v81 + 32))(v36 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * isa, v18, v79);
    v85 = v36;
LABEL_6:
    v39 = sub_2CBD10();
    v40 = v75;
    v41 = v74;
    v29 = v73;
    v42 = v80;
    if (v43)
    {
      v44 = v39;
      sub_2CCFB0();

      v72 = v44;
      v45 = sub_2CCF80();
      type metadata accessor for AppInfoBuilder();
      swift_initStackObject();
      if (qword_34BFB8 != -1)
      {
        swift_once();
      }

      sub_285EC(&static StringsBackedAppNameResolver.shared, v83);
      sub_B96F4(v45, v83, _swiftEmptyArrayStorage, v84);
      if (v84[1])
      {
        v46 = v68;
        sub_2C9CB0();
        sub_2C9C70();

        sub_2C9C90();
        sub_C3828(6);
        sub_2C9CA0();
        v47 = v82;
        v48 = *(v82 + 16);
        v49 = v78;
        v48(v78, v31, v19);
        v74 = *(v47 + 56);
        (v74)(v49, 0, 1, v19);
        v75 = v48;
        v48(v77, v46, v19);
        sub_2C9B90();
        v36 = v85;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_B94C4(0, v36[2].isa + 1, 1, v36, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v51 = v36[2].isa;
        v50 = v36[3].isa;
        if (v51 >= v50 >> 1)
        {
          v36 = sub_B94C4((v50 > 1), v51 + 1, 1, v36, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v52 = *(v82 + 8);
        v82 += 8;
        v73 = v52;
        (v52)(v68, v19);
        v36[2].isa = (v51 + 1);
        v53 = *(v81 + 32);
        v68 = ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v66 = *(v81 + 72);
        v81 += 32;
        v71 = v53;
        v53(&v68[v36 + v66 * v51], v69, v79);
        v54 = v70;
        sub_2C9CB0();
        sub_2C9C70();
        sub_2C9C90();
        sub_C3828(5);
        sub_2C9CA0();
        v55 = v78;
        v56 = v75;
        v75(v78, v31, v19);
        (v74)(v55, 0, 1, v19);
        v56(v77, v54, v19);
        v57 = v67;
        sub_2C9B90();
        v18 = v36[2].isa;
        v58 = v36[3].isa;
        if (v18 >= v58 >> 1)
        {
          v36 = sub_B94C4((v58 > 1), v18 + 1, 1, v36, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v42 = v80;
        sub_30B8(v84, &qword_34E968, &unk_2D2900);
        v29 = v73;
        (v73)(v70, v19);
        (v29)(v31, v19);
        v36[2].isa = (v18 + 1);
        result = v71(&v68[v36 + v18 * v66], v57, v79);
        v85 = v36;
        goto LABEL_24;
      }
    }

    v60 = v82;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v61 = sub_3ED0(v40, static Logger.default);
    swift_beginAccess();
    v41[2](v29, v61, v40);
    v36 = sub_2CDFE0();
    v62 = sub_2CE680();
    if (os_log_type_enabled(v36, v62))
    {
      v63 = v29;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v36, v62, "CommonNLContextProvider#makeDisambiguationContextForMediaDestination unexpected missing bundle identifier from launchId", v29, 2u);

      v64 = v63;
      v42 = v80;
      (v41[1])(v64, v40);
    }

    else
    {

      (v41[1])(v29, v40);
    }

    v65 = *(v60 + 8);
    v18 = v60 + 8;
    result = v65(v31, v19);
LABEL_24:
    *v76 = v85;
    if (!__OFADD__(*v42, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    v36 = sub_B94C4(0, v36[2].isa + 1, 1, v36, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  ++*v42;
  return result;
}

uint64_t sub_B70E0@<X0>(uint64_t a1@<X8>)
{
  sub_B4888(a1);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v9 = sub_C3828(1);
  v10 = v3;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_2CE350(v11);
  v4 = sub_2CE2C0();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_2CE350(v12);

  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_2C9F60();
  sub_2C9F40();
  v7 = sub_2CA000();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_B7294@<X0>(uint64_t a1@<X8>)
{
  sub_B4888(a1);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v9 = sub_C3828(1);
  v10 = v3;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_2CE350(v11);
  v4 = sub_2CE2C0();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_2CE350(v12);

  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_2C9F60();
  v7 = sub_2CA000();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_B7440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v94 = a2;
  v81 = a1;
  v90 = a4;
  v4 = sub_2CA000();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = __chkstk_darwin(v4);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v76 - v8;
  __chkstk_darwin(v7);
  v10 = &v76 - v9;
  v11 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v11 - 8);
  v102 = &v76 - v12;
  v13 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v13 - 8);
  v98 = &v76 - v14;
  v104 = sub_2CE050();
  v97 = *(v104 - 1);
  v15 = __chkstk_darwin(v104);
  v101 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v76 - v17;
  v99 = sub_2C8E80();
  v18 = *(v99 - 8);
  __chkstk_darwin(v99);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2CE000();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v91 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v76 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v21, static Logger.default);
  swift_beginAccess();
  v28 = *(v22 + 16);
  v83 = v22 + 16;
  v84 = v27;
  v82 = v28;
  v28(v26, v27, v21);
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "CommonNLContextProvider#makeAppNeedsDisambiguation", v31, 2u);
  }

  v95 = v10;

  v32 = *(v22 + 8);
  v92 = v21;
  v85 = v32;
  v86 = v22 + 8;
  v32(v26, v21);
  sub_2CA520();
  swift_allocObject();
  sub_2CA510();
  v79 = sub_2CA500();
  v80 = v33;

  v34 = type metadata accessor for AppInfoBuilder();
  inited = swift_initStackObject();
  *&v112 = v34;
  *(&v112 + 1) = &off_333AB0;
  v110 = inited;
  v36 = v81;
  v78 = sub_BB2CC(v81);
  sub_306C(&v110);
  sub_2C8E70();
  v100 = sub_2C8E50();
  v103 = v37;
  (*(v18 + 8))(v20, v99);
  v99 = *(v36 + 16);
  if (v99)
  {
    v38 = 0;
    v39 = v36 + 32;
    v40 = v98;
    v41 = (v97 + 48);
    v42 = (v97 + 32);
    v43 = _swiftEmptyArrayStorage;
    do
    {
      v44 = *(v39 + 48);
      v107 = *(v39 + 32);
      v108 = v44;
      v109 = *(v39 + 64);
      v110 = v38;
      v45 = *(v39 + 16);
      v106[0] = *v39;
      v106[1] = v45;
      v112 = v45;
      v113 = v107;
      v114 = v44;
      v115 = v109;
      v111 = v106[0];
      v120 = v109;
      v118 = v107;
      v119 = v44;
      v116 = v106[0];
      v117 = v45;
      sub_333FC(v106, &v105);

      v46 = v102;
      sub_2CE020();
      v47 = sub_2CE030();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_DF23C(v46, v40);
      sub_30B8(v46, &qword_34E938, &qword_2D28E0);
      sub_30B8(&v110, &qword_34E988, &qword_2D2928);
      v48 = v104;
      if ((*v41)(v40, 1, v104) == 1)
      {
        sub_30B8(v40, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v49 = v40;
        v50 = *v42;
        v51 = v96;
        (*v42)(v96, v49, v48);
        v50(v101, v51, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_B94C4(0, *(v43 + 2) + 1, 1, v43, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v53 = *(v43 + 2);
        v52 = *(v43 + 3);
        if (v53 >= v52 >> 1)
        {
          v43 = sub_B94C4((v52 > 1), v53 + 1, 1, v43, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        *(v43 + 2) = v53 + 1;
        v50(&v43[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v53], v101, v104);
        v40 = v98;
      }

      ++v38;
      v39 += 72;
    }

    while (v99 != v38);
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  sub_20410(&unk_356F40, &unk_2D0740);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2D0E40;
  *(v54 + 32) = sub_C3828(5);
  *(v54 + 40) = v55;
  *(v54 + 48) = sub_C3828(1);
  *(v54 + 56) = v56;
  v57 = v95;
  sub_B7E6C(v54, v79, v80, v78, 1, 1, v43);

  v59 = v91;
  v58 = v92;
  v82(v91, v84, v92);
  v60 = v87;
  v61 = v88;
  v62 = *(v88 + 16);
  v63 = v57;
  v64 = v89;
  v62(v87, v63, v89);
  v65 = sub_2CDFE0();
  v66 = sub_2CE670();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v110 = v104;
    *v67 = 136315138;
    v62(v77, v60, v64);
    v68 = sub_2CE2A0();
    v70 = v69;
    (*(v61 + 8))(v60, v64);
    v71 = sub_3F08(v68, v70, &v110);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_0, v65, v66, "CommonNLContextProvider#makeAppNeedsDisambiguation for update: %s", v67, 0xCu);
    sub_306C(v104);

    v72 = v91;
    v73 = v92;
  }

  else
  {

    (*(v61 + 8))(v60, v64);
    v72 = v59;
    v73 = v58;
  }

  v85(v72, v73);
  v74 = v90;
  (*(v61 + 32))(v90, v95, v64);
  return (*(v61 + 56))(v74, 0, 1, v64);
}

uint64_t sub_B7E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v26[1] = a5;
  v32 = a4;
  v29 = a3;
  v30 = a2;
  v27 = a1;
  v35 = sub_2CDAA0();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v8 - 8);
  v28 = v26 - v9;
  sub_2C9FF0();
  sub_2C9F40();
  sub_2C9F50();
  sub_C3828(0);
  sub_2C9FC0();
  sub_20410(&unk_356F40, &unk_2D0740);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2D0E40;
  v40 = sub_2CE2C0();
  v41 = v11;
  v38 = 32;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  sub_B96A0();
  sub_2CEBD0();

  v40 = sub_C3828(1);
  v41 = v12;
  v42._countAndFlagsBits = 0x2E65756C61562ELL;
  v42._object = 0xE700000000000000;
  sub_2CE350(v42);
  v13 = sub_2CE2C0();
  v15 = v14;

  v43._countAndFlagsBits = v13;
  v43._object = v15;
  sub_2CE350(v43);

  v16 = v41;
  *(v10 + 32) = v40;
  *(v10 + 40) = v16;
  v40 = sub_2CE2C0();
  v41 = v17;
  v38 = 32;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  sub_2CEBD0();

  v40 = sub_C3828(1);
  v41 = v18;
  v44._countAndFlagsBits = 0x2E65756C61562ELL;
  v44._object = 0xE700000000000000;
  sub_2CE350(v44);
  v19 = sub_2CE2C0();
  v21 = v20;

  v45._countAndFlagsBits = v19;
  v45._object = v21;
  sub_2CE350(v45);

  v22 = v41;
  *(v10 + 48) = v40;
  *(v10 + 56) = v22;
  sub_2C9FB0();

  sub_2C9FD0();

  sub_2C9FE0();

  sub_2C9F10();

  sub_2C9F00();
  (*(v33 + 104))(v31, enum case for PommesContext.Source.pluginDefined(_:), v35);
  v23 = v28;
  sub_2CDAB0();
  v24 = sub_2CDAC0();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  return sub_2C9F20();
}

uint64_t sub_B8280(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v60 = a3;
  v62 = a2;
  v3 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v3 - 8);
  v61 = &v55 - v4;
  v5 = sub_2CE000();
  v63 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v55 - v10;
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = sub_2CA000();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = sub_2CCF90();
  if (!v21)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = v5;
    v39 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    v40 = v63;
    (*(v63 + 16))(v8, v39, v38);
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "CommonNLContextProvider#makeAppNeedsConfirmation failed to build context update for app confirmation due to nil appIdentifier", v43, 2u);
    }

    (*(v40 + 8))(v8, v38);
    goto LABEL_20;
  }

  v22 = v20;
  v23 = v21;
  v24 = sub_2CA0A0();
  if (!v24)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = v5;
    v45 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    v46 = v63;
    (*(v63 + 16))(v11, v45, v44);

    v47 = sub_2CDFE0();
    v48 = sub_2CE680();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v49 = 136446210;
      v51 = sub_3F08(v22, v23, v64);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_0, v47, v48, "CommonNLContextProvider#makeAppNeedsConfirmation failed to build appInfo for app: %{public}s", v49, 0xCu);
      sub_306C(v50);
    }

    else
    {
    }

    (*(v46 + 8))(v11, v44);
LABEL_20:
    v54 = v61;
    (*(v58 + 56))(v61, 1, 1, v59);
    v62(v54);
    return sub_30B8(v54, &unk_353020, &unk_2D0970);
  }

  v25 = v24;

  sub_B4888(v19);
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0770;
  *(v26 + 32) = v25;
  v57 = v25;
  sub_2C9F80();
  sub_2C9F50();
  sub_2CA520();
  swift_allocObject();
  sub_2CA510();
  sub_2CCF90();
  sub_2CA4E0();

  sub_2CA500();

  sub_2C9FE0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = v5;
  v28 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v29 = v63;
  (*(v63 + 16))(v13, v28, v5);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64[0] = v56;
    *v32 = 136315138;
    swift_beginAccess();
    v33 = v58;
    v34 = v59;
    (*(v58 + 16))(v17, v19, v59);
    v35 = sub_2CE2A0();
    v37 = sub_3F08(v35, v36, v64);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_0, v30, v31, "CommonNLContextProvider#makeAppNeedsConfirmation for update: %s", v32, 0xCu);
    sub_306C(v56);

    (*(v63 + 8))(v13, v27);
  }

  else
  {

    (*(v29 + 8))(v13, v5);
    v33 = v58;
    v34 = v59;
  }

  swift_beginAccess();
  v52 = v61;
  (*(v33 + 16))(v61, v19, v34);
  (*(v33 + 56))(v52, 0, 1, v34);
  v62(v52);

  sub_30B8(v52, &unk_353020, &unk_2D0970);
  return (*(v33 + 8))(v19, v34);
}

uint64_t sub_B8AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20410(&qword_34E960, &qword_2D28F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_2C9CC0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_2C9CB0();
  sub_2C9C70();

  sub_2C9C90();
  sub_C3828(7);
  sub_2C9CA0();
  v14 = *(v8 + 16);
  v14(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14(v11, v13, v7);
  sub_2C9B90();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_B8CF4()
{
  v1 = v0;
  v25 = sub_2C8EA0();
  v26 = v2;
  v24 = sub_B96A0();
  v3 = sub_2CEBD0();
  v5 = v4;

  v6 = [v0 displayAppName];
  if (v6)
  {
    goto LABEL_14;
  }

  v7 = [v0 displayAppNameMap];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2CE200();

    if (*(v9 + 16))
    {
      v10 = sub_4F538(v3, v5);
      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = [v1 appName];
  if (v6)
  {
LABEL_14:
    v16 = v6;
    v15 = sub_2CE270();

    return v15;
  }

  v12 = [v1 appNameMap];
  if (!v12)
  {
LABEL_13:
    v6 = [v1 spotlightName];
    if (!v6)
    {
      v18 = [v1 spotlightNameMap];
      if (v18)
      {
        v19 = v18;
        v20 = sub_2CE200();

        if (*(v20 + 16))
        {
          v21 = sub_4F538(v3, v5);
          v23 = v22;

          if (v23)
          {
            v15 = *(*(v20 + 56) + 16 * v21);

            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      return 0;
    }

    goto LABEL_14;
  }

  v13 = v12;
  v9 = sub_2CE200();

  if (!*(v9 + 16) || (v10 = sub_4F538(v3, v5), (v14 & 1) == 0))
  {

    goto LABEL_13;
  }

LABEL_10:
  v15 = *(*(v9 + 56) + 16 * v10);

LABEL_11:

  return v15;
}

char *sub_B8FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CD08, &qword_2D0E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_B90C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_356F40, &unk_2D0740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_B9248(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_3530F0, &unk_2D2930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_B934C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CCE0, &unk_2D0E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_B94C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_20410(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_B96A0()
{
  result = qword_34E948;
  if (!qword_34E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E948);
  }

  return result;
}

uint64_t sub_B96F4@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v230 = a4;
  v226 = a5;
  v7 = sub_2CE130();
  v213 = *(v7 - 8);
  v214 = v7;
  __chkstk_darwin(v7);
  v210 = (&v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2CE1A0();
  v211 = *(v9 - 8);
  v212 = v9;
  v10 = __chkstk_darwin(v9);
  v208 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v209 = &v193 - v12;
  v218 = sub_2CDFD0();
  v207 = *(v218 - 8);
  v13 = __chkstk_darwin(v218);
  v204 = v14;
  v205 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v206 = &v193 - v15;
  v222 = sub_2CB7D0();
  v225 = *(v222 - 8);
  v16 = __chkstk_darwin(v222);
  v18 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v202 = &v193 - v19;
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v228 = v20;
  v229 = v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v201 = &v193 - v26;
  v27 = __chkstk_darwin(v25);
  v216 = &v193 - v28;
  v29 = __chkstk_darwin(v27);
  v215 = &v193 - v30;
  v31 = __chkstk_darwin(v29);
  v221 = (&v193 - v32);
  v33 = __chkstk_darwin(v31);
  v217 = &v193 - v34;
  v35 = __chkstk_darwin(v33);
  v219 = &v193 - v36;
  v37 = __chkstk_darwin(v35);
  v203 = &v193 - v38;
  __chkstk_darwin(v37);
  v40 = &v193 - v39;
  v41 = sub_2C8EC0();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);

  v45 = sub_2CCF90();
  v231 = v46;
  if (!v46)
  {
    sub_28648(a3);
LABEL_7:

    v56 = v228;
    v55 = v229;
    if (qword_34BF58 != -1)
    {
LABEL_73:
      swift_once();
    }

    v57 = sub_3ED0(v56, static Logger.default);
    swift_beginAccess();
    (*(v55 + 16))(v24, v57, v56);

    v58 = sub_2CDFE0();
    v59 = sub_2CE680();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v223 = a1;
      v61 = v60;
      v62 = swift_slowAlloc();
      v232[0] = v62;
      *v61 = 136446210;
      v233 = sub_2CCF90();
      v234 = v63;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v64 = sub_2CE2A0();
      v66 = sub_3F08(v64, v65, v232);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_0, v58, v59, "DisplayApp#init could not build display app for bundle: %{public}s", v61, 0xCu);
      sub_306C(v62);
    }

    else
    {
    }

    result = (*(v55 + 8))(v24, v56);
    goto LABEL_12;
  }

  v220 = a3;
  v227 = v45;
  v47 = sub_2CA0A0();
  if (!v47)
  {
    sub_28648(v220);

    goto LABEL_7;
  }

  v48 = v47;

  v199 = v48;
  v49 = v48;

  sub_2CB570();
  v224 = sub_B8CF4();
  v24 = v50;
  v200 = v49;

  v51 = *(v42 + 8);
  v51(v44, v41);
  v223 = a1;
  if (v24)
  {

    v52 = v230;
    v53 = v228;
    v54 = v222;
    goto LABEL_20;
  }

  v198 = v51;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v76 = v228;
  v77 = sub_3ED0(v228, static Logger.default);
  swift_beginAccess();
  v78 = *(v229 + 16);
  v197 = v77;
  v194 = v78;
  v195 = v229 + 16;
  v78(v40, v77, v76);
  v79 = v231;

  v80 = sub_2CDFE0();
  v81 = sub_2CE680();

  LODWORD(v224) = v81;
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = v80;
    v84 = swift_slowAlloc();
    *&v242 = v84;
    *v82 = 136315138;
    *(v82 + 4) = sub_3F08(v227, v79, &v242);
    _os_log_impl(&dword_0, v83, v224, "DisplayApp#init couldn't find localized name for app info: %s, trying app name...", v82, 0xCu);
    sub_306C(v84);
  }

  else
  {
  }

  v85 = v40;
  v86 = v228;
  v196 = *(v229 + 8);
  v196(v85, v228);
  sub_2CA420();
  swift_allocObject();
  sub_2CA410();
  sub_2CB570();
  v224 = sub_2CA400();
  v24 = v87;

  v198(v44, v41);
  v54 = v222;
  if (v24)
  {
    v52 = v230;
    v53 = v86;
LABEL_20:
    v88 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v88 = v224 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v229;
    v90 = v219;
    if (v88)
    {
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v91 = sub_3ED0(v53, static Logger.default);
      swift_beginAccess();
      v92 = *(v89 + 16);
      v203 = v91;
      v197 = v92;
      v198 = (v89 + 16);
      v92(v90, v91, v53);

      v93 = sub_2CDFE0();
      v94 = sub_2CE680();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        *&v242 = v196;
        *v95 = 136315138;
        v96 = sub_2CE420();
        v98 = sub_3F08(v96, v97, &v242);

        *(v95 + 4) = v98;
        _os_log_impl(&dword_0, v93, v94, "DisplayApp#init Empty bundleIDs, looking in installed apps: %s", v95, 0xCu);
        sub_306C(v196);

        v99 = v219;
        v219 = *(v229 + 8);
        (v219)(v99, v228);
      }

      else
      {

        v219 = *(v89 + 8);
        (v219)(v90, v53);
      }

      v100 = *(v52 + 16);
      v101 = v52;
      if (v100)
      {
        v55 = 0;
        v56 = &v225[2];
        a1 = &v225[1];
        while (1)
        {
          if (v55 >= *(v101 + 16))
          {
            __break(1u);
            goto LABEL_73;
          }

          (v225[2].isa)(v18, v101 + ((LOBYTE(v225[10].isa) + 32) & ~LOBYTE(v225[10].isa)) + v225[9].isa * v55, v54);
          if (sub_2CB7B0() == v227 && v231 == v102)
          {
            break;
          }

          v103 = sub_2CEEA0();

          if (v103)
          {
            goto LABEL_42;
          }

          ++v55;
          (*a1)(v18, v54);
          v101 = v230;
          if (v100 == v55)
          {
            goto LABEL_36;
          }
        }

LABEL_42:

        v111 = v202;
        (v225[4].isa)(v202, v18, v54);
        v112 = sub_2CB7C0();
        v53 = v228;
        v89 = v229;
        if (!v113)
        {
          (*a1)(v111, v54);
          goto LABEL_47;
        }

        v114 = v113;
        v225 = v112;

        v115 = v201;
        v197(v201, v203, v53);
        v69 = v231;

        v116 = sub_2CDFE0();
        v117 = v53;
        v118 = sub_2CE690();

        if (os_log_type_enabled(v116, v118))
        {
          v119 = swift_slowAlloc();
          *&v242 = swift_slowAlloc();
          *v119 = 136315394;
          *(v119 + 4) = sub_3F08(v225, v114, &v242);
          *(v119 + 12) = 2080;
          *(v119 + 14) = sub_3F08(v227, v231, &v242);
          _os_log_impl(&dword_0, v116, v118, "DisplayApp#init overriding empty displayName with:%s for identifier:%s", v119, 0x16u);
          swift_arrayDestroy();
          v89 = v229;

          v69 = v231;
        }

        (v219)(v115, v117);
        (*a1)(v111, v222);
        v224 = v225;
        v24 = v114;
        v53 = v117;
LABEL_48:
        v120 = v217;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v121 = sub_3ED0(v53, static Logger.default);
        swift_beginAccess();
        v122 = *(v89 + 16);
        v225 = v121;
        v222 = v89 + 16;
        v219 = v122;
        (v122)(v120, v121, v53);

        v123 = sub_2CDFE0();
        v124 = sub_2CE690();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *&v242 = swift_slowAlloc();
          *v125 = 136315394;

          v126 = sub_3F08(v224, v24, &v242);

          *(v125 + 4) = v126;
          v69 = v231;
          *(v125 + 12) = 2080;
          *(v125 + 14) = sub_3F08(v227, v69, &v242);
          _os_log_impl(&dword_0, v123, v124, "DisplayApp#init found default displayName:%s for identifier:%s", v125, 0x16u);
          swift_arrayDestroy();

          v127 = *(v89 + 8);
          v128 = v228;
          v127(v120);
        }

        else
        {

          v127 = *(v89 + 8);
          v128 = v53;
          (v127)(v120, v53);
        }

        v129 = v220;
        v130 = v221;
        if (sub_2CBDB0())
        {
          v131 = v128;
          (v219)(v130, v225, v128);

          v132 = sub_2CDFE0();
          v133 = sub_2CE670();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            *&v242 = v135;
            *v134 = 136315138;
            v136 = v227;
            *(v134 + 4) = sub_3F08(v227, v69, &v242);
            _os_log_impl(&dword_0, v132, v133, "DisplayApp#init checking for override name for identifier:%s...", v134, 0xCu);
            sub_306C(v135);

            (v127)(v221, v131);
          }

          else
          {

            (v127)(v130, v131);
            v136 = v227;
          }

          v203 = v127;
          v137 = dispatch_semaphore_create(0);
          v138 = swift_allocObject();
          *(v138 + 16) = 0;
          v201 = (v138 + 16);
          *(v138 + 24) = 0;
          v244 = 0;
          v242 = 0u;
          v243 = 0u;
          v139 = swift_allocObject();
          v140 = v224;
          v139[2] = v137;
          v139[3] = v140;
          v139[4] = v24;
          v139[5] = v136;
          v139[6] = v69;
          v139[7] = v138;
          v141 = swift_allocObject();
          *(v141 + 16) = sub_BB204;
          *(v141 + 24) = v139;
          v198 = v141;
          v142 = qword_34BF98;

          v202 = v24;

          v221 = v137;
          v217 = v138;

          if (v142 != -1)
          {
            swift_once();
          }

          v143 = qword_35F760;
          v144 = v206;
          sub_2CDFB0();
          v145 = v207;
          v146 = v205;
          v147 = v218;
          (*(v207 + 16))(v205, v144, v218);
          v148 = (*(v145 + 80) + 33) & ~*(v145 + 80);
          v149 = (v204 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
          v150 = swift_allocObject();
          *(v150 + 16) = "stringsBackedAppNameLocalizedAppName";
          *(v150 + 24) = 36;
          *(v150 + 32) = 2;
          (*(v145 + 32))(v150 + v148, v146, v147);
          v151 = (v150 + v149);
          v152 = v198;
          *v151 = sub_BB214;
          v151[1] = v152;

          v153 = sub_2CE9E0();
          sub_2CDF90(v153, &dword_0, v143, "stringsBackedAppNameLocalizedAppName", 36, 2, v144, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
          v154 = swift_allocObject();
          *(v154 + 16) = sub_BB21C;
          *(v154 + 24) = v150;

          v155 = v231;
          v156 = v220;
          sub_18D47C(sub_BB2C4, v154, v227, v231, v220, &v242);

          (*(v145 + 8))(v144, v218);

          sub_28648(v156);
          sub_30B8(&v242, &qword_34E970, &qword_2D2910);
          v157 = v208;
          sub_2CE190();
          v158 = v210;
          *v210 = 1;
          v160 = v213;
          v159 = v214;
          (*(v213 + 104))(v158, enum case for DispatchTimeInterval.seconds(_:), v214);
          v161 = v209;
          sub_2CE1B0();
          (*(v160 + 8))(v158, v159);
          v162 = v212;
          v163 = *(v211 + 8);
          v163(v157, v212);
          sub_2CEA20();
          v163(v161, v162);
          v164 = v215;
          v165 = v228;
          (v219)(v215, v225, v228);

          v166 = v217;

          v167 = sub_2CDFE0();
          v168 = sub_2CE670();

          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            v233 = v220;
            *v169 = 136315394;
            swift_beginAccess();
            v170 = *(v166 + 3);
            *&v242 = *(v166 + 2);
            *(&v242 + 1) = v170;

            sub_20410(&qword_34CCC0, &unk_2D0DE0);
            v171 = v166;
            v172 = sub_2CE2A0();
            v173 = v155;
            v175 = v174;

            v176 = sub_3F08(v172, v175, &v233);
            v177 = v228;

            *(v169 + 4) = v176;
            v166 = v171;
            *(v169 + 12) = 2080;
            *(v169 + 14) = sub_3F08(v227, v173, &v233);
            _os_log_impl(&dword_0, v167, v168, "DisplayApp#init override name:%s for identifier:%s...", v169, 0x16u);
            swift_arrayDestroy();

            v178 = v203;
            (v203)(v164, v177);
            v179 = v216;
          }

          else
          {

            v178 = v203;
            (v203)(v164, v165);
            v179 = v216;
            v177 = v165;
          }

          swift_beginAccess();
          v180 = *(v166 + 3);
          v24 = v202;
          if (v180)
          {
            v70 = *(v166 + 2);
            (v219)(v179, v225, v177);
            swift_bridgeObjectRetain_n();
            v181 = v231;

            v182 = sub_2CDFE0();
            v183 = sub_2CE670();

            v225 = v182;
            v184 = os_log_type_enabled(v182, v183);
            v72 = v24;
            if (v184)
            {
              v185 = swift_slowAlloc();
              v222 = swift_slowAlloc();
              *&v242 = v222;
              *v185 = 136315650;
              v186 = sub_3F08(v70, v180, &v242);

              *(v185 + 4) = v186;
              *(v185 + 12) = 2080;
              v187 = sub_3F08(v224, v24, &v242);

              *(v185 + 14) = v187;
              *(v185 + 22) = 2080;
              v188 = sub_3F08(v227, v181, &v242);

              *(v185 + 24) = v188;
              v189 = v183;
              v190 = v225;
              _os_log_impl(&dword_0, v225, v189, "DisplayApp#init found using primary:%s, alternate:%s for app:%s", v185, 0x20u);
              swift_arrayDestroy();

              (v203)(v216, v228);
            }

            else
            {

              v178(v179, v177);
            }

            v24 = v180;
            v75 = v230;
            v69 = v181;
            v71 = v224;
            goto LABEL_70;
          }

          v69 = v231;
        }

        else
        {

          sub_28648(v129);
        }

        v72 = 0;
        v70 = v224;
        v71 = 0;
        v75 = v230;
LABEL_70:
        v191 = v227;
        v233 = v227;
        v234 = v69;
        v235 = v70;
        v236 = v24;
        v237 = v71;
        v238 = v72;
        v73 = v223;
        v239 = v223;
        v240 = v200;
        v241 = v75;
        *&v242 = v227;
        *(&v242 + 1) = v69;
        *&v243 = v70;
        *(&v243 + 1) = v24;
        v244 = v71;
        v245 = v72;
        v246 = v223;
        v247 = v200;
        v248 = v75;
        sub_333FC(&v233, v232);
        result = sub_9AA00(&v242);
        v68 = v191;
        v74 = v199;
        goto LABEL_71;
      }

LABEL_36:

      v53 = v228;
      v89 = v229;
    }

LABEL_47:
    v69 = v231;
    goto LABEL_48;
  }

  sub_28648(v220);
  v104 = v203;
  v194(v203, v197, v86);
  v105 = v231;

  v106 = sub_2CDFE0();
  v107 = sub_2CE680();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *&v242 = v109;
    *v108 = 136315138;
    v110 = sub_3F08(v227, v105, &v242);

    *(v108 + 4) = v110;
    _os_log_impl(&dword_0, v106, v107, "DisplayApp#init couldn't find localized name for app: %s", v108, 0xCu);
    sub_306C(v109);
  }

  else
  {
  }

  v196(v104, v86);

LABEL_12:
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v24 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
LABEL_71:
  v192 = v226;
  *v226 = v68;
  v192[1] = v69;
  v192[2] = v70;
  v192[3] = v24;
  v192[4] = v71;
  v192[5] = v72;
  v192[6] = v73;
  v192[7] = v74;
  v192[8] = v75;
  return result;
}

uint64_t sub_BB21C(__int128 *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_18E47C(a1, v5, v6, v8, v1 + v4, v7);
}

char *sub_BB2CC(uint64_t a1)
{
  v83 = sub_2CE000();
  v2 = *(v83 - 8);
  v3 = __chkstk_darwin(v83);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v70 - v5;
  v6 = sub_20410(&qword_34E960, &qword_2D28F8);
  __chkstk_darwin(v6 - 8);
  v88 = &v70 - v7;
  v89 = sub_2C9BA0();
  v8 = *(v89 - 8);
  v9 = __chkstk_darwin(v89);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v70 - v11;
  v100 = sub_2C9CC0();
  v12 = __chkstk_darwin(v100);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v96 = &v70 - v15;
  __chkstk_darwin(v14);
  v99 = &v70 - v18;
  v19 = *(a1 + 16);
  v71 = v2;
  if (v19)
  {
    v86 = (v16 + 16);
    v85 = (v16 + 56);
    v77 = v8;
    v84 = v8 + 32;
    v75 = (v2 + 16);
    v74 = (v2 + 8);
    v76 = (v16 + 8);
    v20 = (a1 + 48);
    v21 = _swiftEmptyArrayStorage;
    *&v17 = 136315138;
    v72 = v17;
    do
    {
      v95 = v19;
      v24 = *(v20 - 1);
      v25 = v20[1];
      v26 = v20[3];
      v98 = v20[2];
      v28 = v20[4];
      v27 = v20[5];
      v29 = v20[6];

      v92 = v28;

      v90 = v27;
      v91 = v29;

      swift_bridgeObjectRetain_n();

      v30 = v99;
      v94 = v24;
      sub_2C9C80();

      v31 = v96;
      v93 = v25;
      sub_2C9C80();
      v32 = *v86;
      v33 = v88;
      v34 = v100;
      (*v86)(v88, v30, v100);
      v35 = *v85;
      (*v85)(v33, 0, 1, v34);
      v32(v87, v31, v34);
      sub_2C9B90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_B94C4(0, *(v21 + 2) + 1, 1, v21, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      v38 = v98;
      if (v37 >= v36 >> 1)
      {
        v21 = sub_B94C4((v36 > 1), v37 + 1, 1, v21, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      *(v21 + 2) = v37 + 1;
      v39 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v40 = *(v77 + 72);
      v41 = *(v77 + 32);
      v41(&v21[v39 + v40 * v37], v97, v89);
      if (v26)
      {
        v78 = v40;
        v79 = v39;
        v80 = v41;
        v42 = qword_34BF58;

        if (v42 != -1)
        {
          swift_once();
        }

        v43 = v83;
        v44 = sub_3ED0(v83, static Logger.default);
        swift_beginAccess();
        (*v75)(v81, v44, v43);

        v45 = sub_2CDFE0();
        v46 = sub_2CE670();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v73 = v35;
          v48 = v47;
          v49 = swift_slowAlloc();
          v102 = v49;
          *v48 = v72;

          v50 = sub_3F08(v38, v26, &v102);

          *(v48 + 4) = v50;
          v51 = v81;
          _os_log_impl(&dword_0, v45, v46, "AudioNLContextUpdatedProvider#makeDisplayHints adding alternate displayHint: %s", v48, 0xCu);
          sub_306C(v49);

          v35 = v73;

          (*v74)(v51, v83);
        }

        else
        {

          (*v74)(v81, v83);
        }

        v52 = v88;
        v53 = v100;
        v32(v88, v99, v100);
        v35(v52, 0, 1, v53);
        sub_2C9C80();
        sub_2C9B90();
        v55 = *(v21 + 2);
        v54 = *(v21 + 3);
        if (v55 >= v54 >> 1)
        {
          v21 = sub_B94C4((v54 > 1), v55 + 1, 1, v21, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v56 = *v76;
        v57 = v100;
        (*v76)(v96, v100);
        v56(v99, v57);
        *(v21 + 2) = v55 + 1;
        v80(&v21[v79 + v55 * v78], v82, v89);
      }

      else
      {

        v22 = *v76;
        v23 = v100;
        (*v76)(v96, v100);
        v22(v99, v23);
      }

      v20 += 9;
      v19 = v95 - 1;
    }

    while (v95 != 1);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v58 = v83;
  v59 = sub_3ED0(v83, static Logger.default);
  swift_beginAccess();
  v60 = v71;
  v61 = v70;
  (*(v71 + 16))(v70, v59, v58);

  v62 = sub_2CDFE0();
  v63 = sub_2CE670();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v101 = v65;
    *v64 = 136315138;
    v66 = sub_2CE420();
    v68 = sub_3F08(v66, v67, &v101);

    *(v64 + 4) = v68;

    _os_log_impl(&dword_0, v62, v63, "CommonNLContextProvider#makeDisplayHints built display hints for app disambiguation: %s", v64, 0xCu);
    sub_306C(v65);

    (*(v60 + 8))(v61, v83);
  }

  else
  {

    (*(v60 + 8))(v61, v83);
  }

  return v21;
}

uint64_t sub_BBDC8@<X0>(uint64_t *a1@<X8>)
{
  v12 = sub_2CC2B0();
  v13 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v11);
  sub_2CC2A0();
  v9 = sub_2CC7A0();
  v10 = &protocol witness table for MediaRemoteAPIProvider;
  *&v8 = sub_2CC790();
  v6 = sub_2CDDF0();
  v7 = &protocol witness table for EncryptionProvider;
  sub_F390(&v5);
  sub_2CDDE0();
  v2 = type metadata accessor for SiriAudioUIAssertionProvider();
  v3 = swift_allocObject();
  sub_F338(&v11, v3 + 16);
  sub_F338(&v8, v3 + 56);
  result = sub_F338(&v5, v3 + 96);
  a1[3] = v2;
  a1[4] = &off_339240;
  *a1 = v3;
  return result;
}

uint64_t sub_BBEB0()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v4 = CATDefaultMode;
  v5 = sub_2CBC00();
  v6 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v7 = swift_allocObject();
  v28[3] = &type metadata for StringsBackedAppNameResolver;
  v28[4] = sub_2869C();
  v28[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v28[0] + 16);
  v27[3] = v5;
  v27[4] = &protocol witness table for MorphunProvider;
  v27[0] = v6;
  v26[3] = v0;
  v26[4] = &protocol witness table for FeatureFlagProvider;
  v8 = sub_F390(v26);
  (*(v1 + 16))(v8, v3, v0);
  *(v7 + 296) = v4;
  sub_EEAC(v26, v7 + 256);
  sub_EEAC(v28, v25);
  sub_EEAC(v27, v24);
  sub_EEAC(v29, v23);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = sub_2CCA30();

  v10 = sub_2CCA20();
  v20[3] = v9;
  v20[4] = &protocol witness table for MultiUserConnectionProvider;
  v20[0] = v10;
  v19[3] = sub_2CB9E0();
  v19[4] = &protocol witness table for DeviceProvider;
  sub_F390(v19);
  sub_2CB9C0();
  sub_EEAC(v25, v7 + 16);
  sub_EEAC(v24, v7 + 216);
  sub_EEAC(v23, v7 + 56);
  sub_EEAC(v20, v7 + 96);
  sub_EEAC(v19, v7 + 176);
  sub_286F0(v21, &v14);
  if (v15)
  {

    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    sub_F338(&v14, &v16);
  }

  else
  {
    sub_EEAC(v23, &v16);
    v11 = sub_2C9E60();
    swift_allocObject();
    v12 = sub_2C9E50();
    v17 = v11;
    v18 = &protocol witness table for ContactsManager;

    *&v16 = v12;
    sub_28760(v21);
    sub_306C(v23);
    sub_306C(v24);
    sub_306C(v25);
    (*(v1 + 8))(v3, v0);
    sub_306C(v29);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    sub_306C(v19);
    sub_306C(v20);
    if (v15)
    {
      sub_28760(&v14);
    }
  }

  sub_F338(&v16, v7 + 136);
  return v7;
}

void *sub_BC2BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v24 = v8;
  v25 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v23 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v22[3] = v9;
  v22[4] = &off_337EB0;
  v22[0] = a4;
  type metadata accessor for Determine.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v22, v9);
  __chkstk_darwin(v11);
  v13 = (&v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v15;
  type metadata accessor for DetermineCatDialogService();
  v16 = swift_allocObject();
  v16[6] = 0xEF746E65746E4965;
  v16[2] = 0xD000000000000011;
  v16[3] = 0x80000000002DA8D0;
  v16[4] = a1;
  v16[5] = 0x6E696D7265746544;
  v21[3] = sub_2CC360();
  v21[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v21);

  sub_2CC350();
  type metadata accessor for DetermineDialogProvider(0);
  v17 = swift_allocObject();
  v17[15] = v16;
  sub_EEAC(v21, (v17 + 3));
  v18 = sub_2CB490();
  v17[11] = v8;
  v17[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[8] = v18;
  sub_306C(a2);
  sub_306C(v21);
  v17[13] = 0xD000000000000011;
  v17[14] = 0x80000000002DA8D0;
  v17[2] = a1;
  v10[2] = v17;
  sub_F338(&v23, (v10 + 3));
  sub_306C(v22);
  return v10;
}

uint64_t sub_BC4F4()
{
  v0 = sub_2CC2B0();
  v84 = *(v0 - 8);
  __chkstk_darwin(v0);
  v83 = v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2CC360();
  v76 = *(v71 - 8);
  __chkstk_darwin(v71);
  v73 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20410(&qword_34EA48, &unk_2D2978);
  v81 = *(v72 - 8);
  v3 = __chkstk_darwin(v72);
  v80 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v69[0] = v69 - v5;
  v75 = type metadata accessor for DetermineIntent();
  v74 = type metadata accessor for DetermineIntentResponse();
  sub_2C9780();
  v70 = sub_BBEB0();
  sub_2CC350();
  sub_2C9A00();
  v6 = sub_2CB4A0();
  v82 = v6;
  v7 = sub_2CB490();
  v118 = v6;
  v119 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v117 = v7;
  v115 = v0;
  v116 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v114);
  sub_2CC2A0();
  v8 = type metadata accessor for SiriAudioOutputProvider();
  v9 = swift_allocObject();
  sub_F338(&v114, v9 + 16);
  v78 = v0;
  v115 = v0;
  v116 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v114);
  sub_2CC2A0();
  v10 = sub_2CBC40();
  swift_allocObject();
  v11 = sub_2CBC30();
  v112 = v10;
  v113 = &protocol witness table for AppIntentInvoker;
  *&v111 = v11;
  v12 = sub_2CC2D0();
  v13 = sub_2CC2C0();
  v109 = v12;
  v110 = &protocol witness table for MediaRemoteProvider;
  *&v108 = v13;
  v14 = type metadata accessor for DetermineSnippetProvider();
  v15 = swift_allocObject();
  sub_F338(&v111, v15 + 16);
  sub_F338(&v108, v15 + 56);
  sub_BBDC8(&v111);
  v16 = sub_F9A0(&v111, v112);
  __chkstk_darwin(v16);
  v18 = (v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v109 = v8;
  v110 = &off_337EB0;
  *&v108 = v9;
  v106 = v14;
  v107 = &off_336920;
  v105[0] = v15;
  v21 = type metadata accessor for SiriAudioUIAssertionProvider();
  v103 = v21;
  v104 = &off_339240;
  v102[0] = v20;
  v69[1] = type metadata accessor for Determine.HandleIntentStrategy();
  v22 = swift_allocObject();
  v23 = sub_F9A0(&v108, v8);
  __chkstk_darwin(v23);
  v25 = (v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_F9A0(v105, v106);
  __chkstk_darwin(v27);
  v29 = (v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = sub_F9A0(v102, v103);
  __chkstk_darwin(v31);
  v33 = (v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v25;
  v36 = *v29;
  v37 = *v33;
  v38 = v69[0];
  *(&v100 + 1) = v8;
  v101 = &off_337EB0;
  v79 = v8;
  *&v99 = v35;
  v97 = v14;
  v98 = &off_336920;
  v95 = &off_339240;
  *&v96 = v36;
  v94 = v21;
  *&v93 = v37;
  type metadata accessor for DetermineCatDialogService();
  v39 = swift_allocObject();
  v39[5] = 0x6E696D7265746544;
  v39[6] = 0xEF746E65746E4965;
  v39[2] = 0xD000000000000011;
  v39[3] = 0x80000000002DA8D0;
  v41 = v70;
  v40 = v71;
  v39[4] = v70;
  v22[2] = v39;
  v91 = v40;
  v92 = &protocol witness table for StringsFileResolver;
  sub_F390(&v90);
  swift_retain_n();

  sub_2CC350();
  v77 = type metadata accessor for DetermineDialogProvider(0);
  v42 = swift_allocObject();
  v42[15] = v39;
  sub_EEAC(&v90, &v88);
  v43 = v82;
  v44 = sub_2CB490();
  v86 = v43;
  v87 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v85 = v44;
  sub_306C(&v90);
  v42[13] = 0xD000000000000011;
  v42[14] = 0x80000000002DA8D0;
  v45 = v72;
  v46 = v40;
  v42[2] = v41;
  sub_F338(&v88, (v42 + 3));
  sub_F338(&v85, (v42 + 8));
  v22[9] = v42;
  type metadata accessor for DetermineViewProvider(0);
  v47 = swift_allocObject();

  sub_10FEB0();

  sub_306C(v120);
  (*(v76 + 8))(v73, v40);
  *(v47 + 16) = v42;
  sub_F338(&v90, v47 + 24);
  v22[8] = v47;
  sub_F338(&v117, (v22 + 3));
  sub_F338(&v99, (v22 + 10));
  sub_F338(&v114, (v22 + 15));
  sub_F338(&v96, (v22 + 20));
  sub_F338(&v93, (v22 + 25));
  sub_306C(v102);
  sub_306C(v105);
  sub_306C(&v108);
  sub_306C(&v111);
  v120[0] = v22;
  sub_BD318(&qword_34EA50, type metadata accessor for Determine.HandleIntentStrategy, &protocol conformance descriptor for Determine.HandleIntentStrategy);
  sub_2C9640();

  sub_2C9700();
  sub_2CCFB0();
  swift_allocObject();
  v76 = sub_2CCF70();
  sub_2C9650();
  sub_2C9710();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v48 = CATDefaultMode;
  v49 = sub_2CBC00();
  v50 = sub_2CBBF0();
  sub_2C9A00();
  v51 = v83;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v52 = swift_allocObject();
  v118 = &type metadata for StringsBackedAppNameResolver;
  v119 = sub_2869C();
  *&v117 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v117 + 16);
  v115 = v49;
  v116 = &protocol witness table for MorphunProvider;
  *&v114 = v50;
  v53 = v78;
  v112 = v78;
  v113 = &protocol witness table for FeatureFlagProvider;
  v54 = sub_F390(&v111);
  (*(v84 + 16))(v54, v51, v53);
  *(v52 + 296) = v48;
  sub_EEAC(&v111, v52 + 256);
  sub_EEAC(&v117, &v108);
  sub_EEAC(&v114, v105);
  sub_EEAC(v120, v102);
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v55 = sub_2CCA30();

  v56 = sub_2CCA20();
  v97 = v55;
  v98 = &protocol witness table for MultiUserConnectionProvider;
  *&v96 = v56;
  v94 = sub_2CB9E0();
  v95 = &protocol witness table for DeviceProvider;
  sub_F390(&v93);
  sub_2CB9C0();
  sub_EEAC(&v108, v52 + 16);
  sub_EEAC(v105, v52 + 216);
  sub_EEAC(v102, v52 + 56);
  sub_EEAC(&v96, v52 + 96);
  sub_EEAC(&v93, v52 + 176);
  sub_286F0(&v99, &v88);
  if (v89)
  {

    sub_28760(&v99);
    sub_306C(v102);
    sub_306C(v105);
    sub_306C(&v108);
    (*(v84 + 8))(v83, v53);
    sub_306C(v120);
    sub_306C(&v111);
    sub_306C(&v114);
    sub_306C(&v117);
    sub_306C(&v93);
    sub_306C(&v96);
    sub_F338(&v88, &v90);
  }

  else
  {
    sub_EEAC(v102, &v90);
    v57 = sub_2C9E60();
    swift_allocObject();
    v58 = sub_2C9E50();
    v91 = v57;
    v92 = &protocol witness table for ContactsManager;

    *&v90 = v58;
    sub_28760(&v99);
    sub_306C(v102);
    sub_306C(v105);
    sub_306C(&v108);
    (*(v84 + 8))(v83, v53);
    sub_306C(v120);
    sub_306C(&v111);
    sub_306C(&v114);
    sub_306C(&v117);
    sub_306C(&v93);
    sub_306C(&v96);
    if (v89)
    {
      sub_28760(&v88);
    }
  }

  sub_F338(&v90, v52 + 136);
  sub_2C9A00();
  v115 = v46;
  v116 = &protocol witness table for StringsFileResolver;
  sub_F390(&v114);
  sub_2CC350();
  v59 = swift_allocObject();
  sub_EEAC(&v114, (v59 + 3));
  v60 = v82;
  v61 = sub_2CB490();
  v59[11] = v60;
  v59[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v59[8] = v61;

  sub_306C(&v117);
  sub_306C(&v114);
  v62 = sub_BBEB0();
  sub_2C9A00();
  v63 = sub_2CB490();
  v109 = v53;
  v110 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v108);

  sub_2CC2A0();
  v64 = swift_allocObject();
  sub_F338(&v108, v64 + 16);
  v65 = sub_BC2BC(v62, &v111, v63, v64);

  *&v111 = v65;
  type metadata accessor for Determine.UnsupportedValueStrategy();
  sub_BD318(&qword_34EA58, type metadata accessor for Determine.UnsupportedValueStrategy, &protocol conformance descriptor for Determine.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  v66 = v81;
  (*(v81 + 16))(v80, v38, v45);
  sub_20410(&qword_34EA60, qword_2D2988);
  swift_allocObject();
  v67 = sub_2C96E0();
  swift_setDeallocating();
  sub_306C(v59 + 3);
  sub_306C(v59 + 8);

  swift_deallocClassInstance();

  (*(v66 + 8))(v38, v45);
  return v67;
}

uint64_t sub_BD318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_BD378()
{
  result = qword_34EA68;
  if (!qword_34EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA68);
  }

  return result;
}

Swift::Int sub_BD3D8()
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_BD488(uint64_t a1)
{
  sub_2CE310();
}

Swift::Int sub_BD524(uint64_t a1)
{
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

unint64_t sub_BD5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BD808(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_BD600(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x666E692065726F6DLL;
    v4 = 0xE90000000000006FLL;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_BD67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD854();
  v5 = sub_BD8A8();
  v6 = sub_BD8FC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_BD6F4()
{
  result = qword_34EA70;
  if (!qword_34EA70)
  {
    sub_2DB30(&qword_34EA78, &qword_2D29F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA70);
  }

  return result;
}

unint64_t sub_BD75C()
{
  result = qword_34EA80;
  if (!qword_34EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA80);
  }

  return result;
}

unint64_t sub_BD7B4()
{
  result = qword_34EA88;
  if (!qword_34EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA88);
  }

  return result;
}

unint64_t sub_BD808(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FBF0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_BD854()
{
  result = qword_34EA90;
  if (!qword_34EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA90);
  }

  return result;
}

unint64_t sub_BD8A8()
{
  result = qword_34EA98;
  if (!qword_34EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA98);
  }

  return result;
}

unint64_t sub_BD8FC()
{
  result = qword_34EAA0;
  if (!qword_34EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EAA0);
  }

  return result;
}

uint64_t type metadata accessor for UpdateMediaAffinityViewProvider(uint64_t a1)
{
  result = qword_34EAD0;
  if (!qword_34EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BD99C(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_2CC2B0();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  sub_F3F4(a1, &v41 - v7, &qword_34E480, &qword_2D2280);
  v72[3] = v3;
  v72[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v72);
  sub_2CC2A0();
  v9 = sub_2CC7A0();
  v10 = sub_2CC790();
  v71[3] = v9;
  v71[4] = &protocol witness table for MediaRemoteAPIProvider;
  v71[0] = v10;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v69[3] = &type metadata for StringsBackedAppNameResolver;
  v11 = sub_2869C();
  v69[4] = v11;
  v12 = swift_allocObject();
  v69[0] = v12;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v12 + 16);
  v42 = sub_2CB9E0();
  v68[3] = v42;
  v68[4] = &protocol witness table for DeviceProvider;
  sub_F390(v68);
  sub_2CB9C0();
  v67[3] = sub_2CDDF0();
  v67[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v67);
  sub_2CDDE0();
  v13 = sub_2CC710();
  v14 = sub_2CC700();
  v66[4] = &protocol witness table for SharedContextProvider;
  v66[3] = v13;
  v66[0] = v14;
  v15 = sub_2CB4A0();
  v16 = sub_2CB490();
  v65 = &protocol witness table for SiriKitTaskLoggingProvider;
  v64 = v15;
  *&v63 = v16;
  v45 = type metadata accessor for ConfirmInterruptionFlow(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v19 = sub_2CA7B0();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent) = 0;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_originalPlayMediaRCHFlowWrapper) = 0;
  v21 = v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_state;
  *v21 = 0;
  *(v21 + 8) = 1;
  swift_beginAccess();
  v46 = v8;
  sub_BED04(v8, v17 + v18);
  swift_endAccess();
  v22 = *(v17 + v20);
  v23 = v43;
  *(v17 + v20) = v43;

  sub_EEAC(v72, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider);
  sub_EEAC(v71, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider);
  sub_EEAC(v68, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider);
  sub_EEAC(v70, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker);
  sub_EEAC(v70, v62);
  LODWORD(v20) = CATDefaultMode;
  v24 = sub_2CBC00();
  v25 = v23;
  v26 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v27 = swift_allocObject();
  v61[3] = &type metadata for StringsBackedAppNameResolver;
  v61[4] = v11;
  v61[0] = swift_allocObject();
  sub_285EC(v12 + 16, v61[0] + 16);
  v60[3] = v24;
  v60[4] = &protocol witness table for MorphunProvider;
  v60[0] = v26;
  v59[3] = v3;
  v59[4] = &protocol witness table for FeatureFlagProvider;
  v28 = sub_F390(v59);
  v29 = v44;
  (*(v44 + 16))(v28, v5, v3);
  *(v27 + 296) = v20;
  sub_EEAC(v59, v27 + 256);
  sub_EEAC(v61, v58);
  sub_EEAC(v60, v57);
  sub_EEAC(v62, v56);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v30 = sub_2CCA30();
  v31 = sub_2CCA20();
  v53[3] = v30;
  v53[4] = &protocol witness table for MultiUserConnectionProvider;
  v53[0] = v31;
  v52[3] = v42;
  v52[4] = &protocol witness table for DeviceProvider;
  sub_F390(v52);
  sub_2CB9C0();
  sub_EEAC(v58, v27 + 16);
  sub_EEAC(v57, v27 + 216);
  sub_EEAC(v56, v27 + 56);
  sub_EEAC(v53, v27 + 96);
  sub_EEAC(v52, v27 + 176);
  sub_F3F4(v54, &v47, qword_34C708, &qword_2D1620);
  v32 = v29;
  if (v48)
  {

    sub_30B8(v54, qword_34C708, &qword_2D1620);
    sub_306C(v56);
    sub_306C(v57);
    sub_306C(v58);
    (*(v29 + 8))(v5, v3);
    sub_306C(v62);
    sub_306C(v59);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v52);
    sub_306C(v53);
    sub_F338(&v47, &v49);
  }

  else
  {
    sub_EEAC(v56, &v49);
    v33 = sub_2C9E60();
    swift_allocObject();
    v34 = sub_2C9E50();
    v50 = v33;
    v51 = &protocol witness table for ContactsManager;

    *&v49 = v34;
    sub_30B8(v54, qword_34C708, &qword_2D1620);
    sub_306C(v56);
    sub_306C(v57);
    sub_306C(v58);
    (*(v32 + 8))(v5, v3);
    sub_306C(v62);
    sub_306C(v59);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v52);
    sub_306C(v53);
    if (v48)
    {
      sub_30B8(&v47, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v49, v27 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v35 = swift_allocObject();
  v35[5] = 0x6964654D79616C50;
  v35[6] = 0xEF746E65746E4961;
  v35[2] = 0xD000000000000011;
  v35[3] = 0x80000000002DA8D0;
  v35[4] = v27;
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_playMediaCatDialogService) = v35;
  sub_2C9C10();
  swift_allocObject();
  *(v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_viewFactory) = sub_2C9BF0();
  sub_EEAC(v69, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver);
  sub_EEAC(v67, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider);
  sub_EEAC(v66, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider);
  sub_EEAC(v72, v62);
  sub_EEAC(v70, v61);
  v36 = sub_2CBCD0();
  swift_allocObject();
  v37 = sub_2CBCB0();
  v38 = (v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider);
  v38[3] = v36;
  v38[4] = &protocol witness table for SEDeviceProvider;
  *v38 = v37;
  sub_306C(v70);
  sub_30B8(v46, &qword_34E480, &qword_2D2280);
  sub_306C(v66);
  sub_306C(v67);
  sub_306C(v68);
  sub_306C(v69);
  sub_306C(v71);
  sub_306C(v72);
  sub_F338(&v63, v17 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider);
  v72[0] = v17;
  sub_BED74();
  v39 = sub_2C97B0();

  return v39;
}

uint64_t sub_BE22C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "SiriForAirPlayFlow#on Handling input", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = sub_2CA7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a1, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  swift_beginAccess();
  sub_A4888(v6, v2 + v17);
  swift_endAccess();
  return 1;
}

uint64_t sub_BE4DC(void (*a1)(char *))
{
  v2 = sub_2C9EC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2CDFE0();
  v12 = sub_2CE690();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = v3;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "SiriForAirPlayFlow#execute started", v13, 2u);
    v3 = v18;
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent);
  v15 = v14;
  sub_BE784(v14);

  a1(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_BE784(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "SiriForAirPlayFlow#getLocalExecuteResponse", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  v16 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  swift_beginAccess();
  sub_F3F4(v2 + v16, v6, &qword_34E480, &qword_2D2280);

  v15(v6, a1);

  sub_30B8(v6, &qword_34E480, &qword_2D2280);
  sub_2C9EA0();
}

uint64_t sub_BEA28()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider));
  return v0;
}

uint64_t sub_BEB04()
{
  sub_BEA28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriForAirPlayFlow(uint64_t a1)
{
  result = qword_34EC10;
  if (!qword_34EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BEBB0(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BECC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriForAirPlayFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_BED04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_BED74()
{
  result = qword_34ED60;
  if (!qword_34ED60)
  {
    type metadata accessor for ConfirmInterruptionFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34ED60);
  }

  return result;
}

uint64_t sub_BEE40(void (*a1)(void), uint64_t a2, const char *a3, ...)
{
  v5 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2CDFE0();
  v14 = sub_2CE660();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = a1;
    v29 = v17;
    v18 = v17;
    *v16 = 136446210;
    v19 = sub_2CCCA0();
    v26 = v8;
    v27 = v7;
    v21 = v9;
    v22 = sub_3F08(v19, v20, &v29);
    v7 = v27;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, v25, v16, 0xCu);
    sub_306C(v18);
    a1 = v28;

    (*(v21 + 8))(v11, v26);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = type metadata accessor for SnippetModelResponse(0);
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_BF19C(v7);
}

uint64_t type metadata accessor for SnippetModelResponse(uint64_t a1)
{
  result = qword_34EE60;
  if (!qword_34EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BF19C(uint64_t a1)
{
  v2 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_BF22C(uint64_t a1)
{
  sub_BF2C8(319);
  if (v1 <= 0x3F)
  {
    sub_BF320();
    if (v2 <= 0x3F)
    {
      sub_BF370(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BF2C8(uint64_t a1)
{
  if (!qword_34EE70)
  {
    sub_2CD230();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34EE70);
    }
  }
}

void sub_BF320()
{
  if (!qword_34EE78)
  {
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34EE78);
    }
  }
}

void sub_BF370(uint64_t a1)
{
  if (!qword_34EE80)
  {
    sub_2DB30(&unk_34EE88, qword_2D2CB8);
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34EE80);
    }
  }
}

uint64_t sub_BF40C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

void sub_BF464(Swift::String a1)
{
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    a1._countAndFlagsBits = 32;
    object = a1._object;
    a1._object = 0xE100000000000000;
    sub_2CE350(a1);
    a1._countAndFlagsBits = countAndFlagsBits;
    a1._object = object;
  }

  sub_2CE350(a1);
}

uint64_t sub_BF4CC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_BF508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB730;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000015;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_BFB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC150;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000017;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C1C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC070;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000013;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000013, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000013;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13D84;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

unint64_t sub_C3654(char a1)
{
  result = 0x616C50616964656DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x747241636973756DLL;
      break;
    case 4:
      result = 0x6449616964656DLL;
      break;
    case 5:
      result = 0x746163696C707061;
      break;
    case 6:
      result = 0x656D614E707061;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x7473696C79616C70;
      break;
    case 9:
      result = 0x746954636973756DLL;
      break;
    case 10:
      result = 0x626C41636973756DLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_C3828(char a1)
{
  sub_2CECB0(20);

  v2 = sub_C3654(a1);
  v4 = v3;
  sub_C394C(1, v2, v3);
  v5 = sub_2CEBA0();
  v7 = v6;

  sub_208000(1uLL, v2, v4);

  sub_C39E8();
  sub_2CE340();

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_2CE350(v9);

  return 0xD000000000000012;
}

uint64_t sub_C394C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2CE330();

    return sub_2CE3D0();
  }

  return result;
}

unint64_t sub_C39E8()
{
  result = qword_34F0A0;
  if (!qword_34F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F0A0);
  }

  return result;
}

uint64_t sub_C3A3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE690();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "AmbiguousShuffleFlow#on Handling input", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = sub_2CA7B0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a1, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  swift_beginAccess();
  sub_A4888(v6, v2 + v17);
  swift_endAccess();
  return 1;
}

uint64_t sub_C3CEC(void (*a1)(void *), uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = sub_2C9EC0();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2CE000();
  v42 = *(v37 - 8);
  __chkstk_darwin(v37);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CA870();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_2CA7B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  swift_beginAccess();
  sub_F3F4(v2 + v18, v10, &qword_34E480, &qword_2D2280);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v19 = v46;
    sub_30B8(v10, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = v37;
    v21 = sub_3ED0(v37, static Logger.default);
    swift_beginAccess();
    v22 = v41;
    v23 = v42;
    (*(v42 + 16))(v41, v21, v20);
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "AmbiguousShuffleFlow#execute Input is nil", v26, 2u);
    }

    (*(v23 + 8))(v22, v20);
    v27 = v43;
    sub_2C9EB0();
    v19(v27);
    return (*(v44 + 8))(v27, v45);
  }

  else
  {
    v29 = v2;
    v30 = v47;
    v42 = *(v12 + 32);
    (v42)(v17, v10, v11);
    v31 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider + 32);
    v44 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider + 24);
    v45 = v31;
    v43 = sub_35E0((v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider), v44);
    v32 = v38;
    sub_2CA790();
    (*(v12 + 16))(v15, v17, v11);
    v33 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v34 = swift_allocObject();
    v35 = v46;
    v34[2] = v29;
    v34[3] = v35;
    v34[4] = v30;
    (v42)(v34 + v33, v15, v11);

    sub_2CDC60();

    (*(v39 + 8))(v32, v40);
    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_C4270(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void *a6)
{
  v49 = a6;
  v51 = a4;
  v52 = a5;
  v8 = sub_2C9EC0();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  if (a2)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_2CECB0(66);
    v57._countAndFlagsBits = 0xD00000000000003FLL;
    v57._object = 0x80000000002DC350;
    sub_2CE350(v57);
    swift_getErrorValue();
    v58._countAndFlagsBits = sub_2CEEF0();
    sub_2CE350(v58);

    v59._countAndFlagsBits = 46;
    v59._object = 0xE100000000000000;
    sub_2CE350(v59);
    v18 = v55;
    v19 = 0;
    v20 = v56;
    v21 = v51;
    v22 = v52;
LABEL_3:
    sub_C48C0(v19, v18, v20, v21, v22);
  }

  if (a1)
  {
    v24 = qword_34BF58;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v17, v25, v11);
    v26 = sub_2CDFE0();
    v27 = v11;
    v28 = sub_2CE690();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v47 = v29;
      v49 = swift_slowAlloc();
      v53 = v49;
      *v29 = 136446210;
      v30 = sub_2CCCC0();
      v32 = sub_3F08(v30, v31, &v53);
      v48 = v27;
      v33 = v26;
      v34 = v32;

      v35 = v47;
      *(v47 + 4) = v34;
      _os_log_impl(&dword_0, v33, v28, "AmbiguousShuffleFlow#execute %{public}s executing shuffle flow from controls", v35, 0xCu);
      sub_306C(v49);

      (*(v12 + 8))(v17, v48);
    }

    else
    {

      (*(v12 + 8))(v17, v27);
    }

    sub_2C9EA0();
    v51(v10);
    sub_C7340(a1, 0);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v15, v36, v11);

    v37 = sub_2CDFE0();
    v38 = sub_2CE690();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v48 = v11;
      v40 = v39;
      v47 = swift_slowAlloc();
      v53 = v47;
      *v40 = 136315138;
      v41 = sub_2C95B0();
      v43 = v38;
      v44 = v10;
      v45 = sub_3F08(v41, v42, &v53);

      *(v40 + 4) = v45;
      v10 = v44;
      _os_log_impl(&dword_0, v37, v43, "AmbiguousShuffleFlow#execute No flow returned from controls, pushing fallback flow: %s", v40, 0xCu);
      sub_306C(v47);

      (*(v12 + 8))(v15, v48);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    if ((sub_2C95C0() & 1) == 0)
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_2CECB0(85);
      v60._countAndFlagsBits = 0xD00000000000003BLL;
      v60._object = 0x80000000002DC2F0;
      sub_2CE350(v60);
      sub_2CA7B0();
      sub_C72E8();
      v61._countAndFlagsBits = sub_2CEE70();
      sub_2CE350(v61);

      v62._object = 0x80000000002DC330;
      v62._countAndFlagsBits = 0xD000000000000018;
      sub_2CE350(v62);
      v18 = v53;
      v19 = 1;
      v20 = v54;
      v21 = v51;
      v22 = v52;
      goto LABEL_3;
    }

    sub_2C9EA0();
    v51(v10);
  }

  return (*(v50 + 8))(v10, v8);
}

uint64_t sub_C48C0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  LODWORD(v8) = a1;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2CDFE0();
  v15 = sub_2CE680();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v8;
    v8 = v16;
    v17 = swift_slowAlloc();
    v24 = a4;
    v18 = v17;
    v26 = v17;
    *v8 = 136315138;
    *(v8 + 4) = sub_3F08(v25, a3, &v26);
    _os_log_impl(&dword_0, v14, v15, "%s", v8, 0xCu);
    sub_306C(v18);
    a4 = v24;

    LOBYTE(v8) = v23;
  }

  (*(v10 + 8))(v12, v9);
  if (v8)
  {
    v19 = 0x6B6361426C6C6166;
  }

  else
  {
    v19 = 0xD000000000000023;
  }

  if (v8)
  {
    v20 = 0xEF66664F776F6C46;
  }

  else
  {
    v20 = 0x80000000002DC2C0;
  }

  sub_C4B64(v19, v20, a4, a5);
}

uint64_t sub_C4B64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_3F08(a1, a2, &v31);
    _os_log_impl(&dword_0, v14, v15, "AmbiguousShuffleFlow#genericErrorDialog... %s", v18, 0xCu);
    sub_306C(v19);

    a4 = v17;
    v5 = v29;
  }

  (*(v10 + 8))(v12, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v21;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v22;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_2CECB0(62);
  v33._object = 0x80000000002DC280;
  v33._countAndFlagsBits = 0xD00000000000003CLL;
  sub_2CE350(v33);
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  sub_2CE350(v34);
  v23 = v31;
  v24 = v32;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v23;
  *(inited + 104) = v24;
  v25 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = a1;
  v27 = v30;
  v26[4] = a2;
  v26[5] = v27;
  v26[6] = a4;

  sub_3D150(v25, 0, sub_C7230, v26);
}

uint64_t sub_C4F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v37 = a3;
  v34 = a4;
  v35 = a2;
  v8 = sub_20410(&unk_3519A0, &qword_2D0980);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v32 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "AmbiguousShuffleFlow#handleDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v13 + 8))(v15, v12);
  v20 = *(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver + 24);
  v32[2] = *(v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver + 32);
  v32[1] = sub_35E0((v6 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver), v20);
  v32[0] = sub_2CBD50();
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_F3F4(a1, v11, &unk_3519A0, &qword_2D0980);
  v21 = v11;
  v22 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_14A58(v21, v25 + v22, &unk_3519A0, &qword_2D0980);
  *(v25 + v23) = v6;
  v26 = (v25 + v24);
  v27 = v35;
  v29 = v36;
  v28 = v37;
  *v26 = v34;
  v26[1] = v29;
  v30 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v27;
  v30[1] = v28;

  sub_2CBC50();

  return sub_30B8(v38, &qword_34E970, &qword_2D2910);
}

uint64_t sub_C529C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a8;
  v74 = a7;
  v92 = a6;
  v88 = a4;
  v89 = a5;
  v86 = a1;
  v87 = a3;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v84 = &v72 - v9;
  v10 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v10 - 8);
  v83 = &v72 - v11;
  v12 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v12 - 8);
  v82 = &v72 - v13;
  v81 = sub_2CCB30();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2CCAC0();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2CE000();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v85 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2C9EC0();
  v90 = *(v17 - 8);
  v91 = v17;
  __chkstk_darwin(v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  v26 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v26);
  v28 = (&v72 - v27);
  sub_2CCFB0();

  v29 = sub_2CCF80();
  sub_F3F4(v87, v28, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v29;
    v87 = v19;
    v30 = v88;
    v31 = *v28;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = v73;
    v33 = sub_3ED0(v73, static Logger.default);
    swift_beginAccess();
    v34 = v72;
    v35 = v85;
    (*(v72 + 16))(v85, v33, v32);
    swift_errorRetain();
    v36 = sub_2CDFE0();
    v37 = sub_2CE680();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v93 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v94 = sub_2CEEF0();
      v95 = v40;
      v41 = sub_2CE3C0();
      v43 = v34;
      v44 = sub_3F08(v41, v42, &v93);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_0, v36, v37, "AmbiguousShuffleFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v38, 0xCu);
      sub_306C(v39);

      (*(v43 + 8))(v85, v32);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
    }

    v48 = v30;
    v94 = v74;
    v95 = v75;

    v96._countAndFlagsBits = 95;
    v96._object = 0xE100000000000000;
    sub_2CE350(v96);
    v50 = v94;
    v49 = v95;
    swift_getErrorValue();
    v94 = sub_2CEEF0();
    v95 = v51;
    v52 = sub_2CE3C0();
    v54 = v53;
    v94 = v50;
    v95 = v49;

    v97._countAndFlagsBits = v52;
    v97._object = v54;
    sub_2CE350(v97);

    v55 = v77;
    v56 = v76;
    v57 = v79;
    (*(v77 + 104))(v76, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v79);
    v58 = v80;
    v59 = v78;
    v60 = v81;
    (*(v80 + 104))(v78, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v81);
    v85 = sub_2CCAE0();

    (*(v58 + 8))(v59, v60);
    (*(v55 + 8))(v56, v57);
    v88 = v31;
    sub_35E0((v48 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider), *(v48 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider + 24));
    v61 = enum case for ActivityType.failed(_:);
    v62 = sub_2C9C20();
    v63 = *(v62 - 8);
    v64 = v82;
    (*(v63 + 104))(v82, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = sub_2CA130();
    v66 = v83;
    (*(*(v65 - 8) + 56))(v83, 1, 1, v65);
    v67 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = v84;
    (*(v69 + 104))(v84, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);

    sub_2CB4E0();

    sub_30B8(v70, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
    v71 = v87;
    sub_2C9EB0();
    v89(v71);

    return (*(v90 + 8))(v71, v91);
  }

  else
  {
    sub_14A58(v28, v25, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v25, v23, &qword_34C6E8, &unk_2D0FF0);
    v45 = *&v23[*(v20 + 48)];
    sub_C5DD0(v23, v45);

    v46 = sub_2CA130();
    (*(*(v46 - 8) + 8))(v23, v46);
    sub_2C9EB0();
    v89(v19);

    (*(v90 + 8))(v19, v91);
    return sub_30B8(v25, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_C5DD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = sub_2CA130();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v31 = v16;
  v18(v15, a1);
  *&v15[*(v10 + 48)] = a2;
  v19 = qword_34BF58;
  v20 = a2;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v21, v6);
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v30 = v10;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "AmbiguousShuffleFlow#publishOutput Dialog successfully generated, responding and exiting...", v24, 2u);
    v10 = v30;
  }

  (*(v7 + 8))(v9, v6);
  v25 = sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider + 24));
  sub_F3F4(v15, v13, &qword_34C6E8, &unk_2D0FF0);
  v26 = *&v13[*(v10 + 48)];
  v27 = swift_allocObject();
  swift_weakInit();
  sub_1C4EB0(v13, v26, *v25, v27);

  sub_30B8(v15, &qword_34C6E8, &unk_2D0FF0);

  return (*(v17 + 8))(v13, v31);
}

uint64_t sub_C6128(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_2CE000();
  v75 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v6 - 8);
  v79 = &v68 - v7;
  v8 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v8 - 8);
  v78 = &v68 - v9;
  v10 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v10 - 8);
  v77 = &v68 - v11;
  v81 = sub_2CB970();
  v12 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CCB30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCAC0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, &v89, qword_34C798, &qword_2D0DA0);
  if ((v90 & 1) == 0)
  {
    v37 = v12;
    sub_F338(&v89, v86);
    (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v18);
    (*(v15 + 104))(v17, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v14);
    sub_2CCAE0();
    (*(v15 + 8))(v17, v14);
    (*(v19 + 8))(v21, v18);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_EEAC(Strong + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider, v83);

      v75 = v84;
      v39 = v79;
      v80 = v85;
      v74 = sub_35E0(v83, v84);
      v40 = v76;
      (*(v12 + 104))(v76, enum case for TypeOfIntent.acousticID(_:), v81);
      v41 = enum case for ActivityType.failed(_:);
      v42 = sub_2C9C20();
      v43 = *(v42 - 8);
      v44 = v77;
      (*(v43 + 104))(v77, v41, v42);
      (*(v43 + 56))(v44, 0, 1, v42);
      v45 = sub_2CA130();
      v46 = v78;
      (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
      v47 = enum case for SiriKitReliabilityCodes.genericError(_:);
      v48 = sub_2C98F0();
      v49 = *(v48 - 8);
      (*(v49 + 104))(v39, v47, v48);
      (*(v49 + 56))(v39, 0, 1, v48);
      sub_2CB4C0();

      sub_30B8(v39, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
      (*(v37 + 8))(v40, v81);
      sub_306C(v83);
    }

    else
    {
    }

    swift_beginAccess();
    v65 = swift_weakLoadStrong();
    if (v65)
    {
      sub_EEAC(v65 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher, v83);

      sub_35E0(v83, v84);
      sub_2CA010();
      sub_306C(v86);
      v66 = v83;
      return sub_306C(v66);
    }

LABEL_14:
    v66 = v86;
    return sub_306C(v66);
  }

  v73 = v18;
  v22 = v75;
  v74 = v14;
  v72 = v12;
  v80 = v89;
  if (qword_34BF60 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v3, qword_35F6A8);
  v24 = v22;
  (*(v22 + 16))(v5, v23, v3);
  swift_errorRetain();
  v25 = sub_2CDFE0();
  v26 = sub_2CE680();

  v71 = v26;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v70 = v5;
    v68 = v25;
    v28 = v27;
    v69 = swift_slowAlloc();
    v83[0] = v69;
    *v28 = 136315394;
    swift_getErrorValue();
    v86[0] = sub_2CEEF0();
    v86[1] = v29;
    v30 = sub_2CE3C0();
    v32 = sub_3F08(v30, v31, v83);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = sub_2CCCA0();
    v35 = sub_3F08(v33, v34, v83);

    *(v28 + 14) = v35;
    v36 = v68;
    _os_log_impl(&dword_0, v68, v71, "AmbiguousShuffleFlow#handleDialogResult failed to create output %s  %{public}s", v28, 0x16u);
    swift_arrayDestroy();

    (*(v24 + 8))(v70, v3);
  }

  else
  {

    (*(v24 + 8))(v5, v3);
  }

  v50 = v74;
  v51 = v73;
  (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.asf(_:), v73);
  (*(v15 + 104))(v17, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v50);
  swift_getErrorValue();
  sub_2CEEF0();
  sub_2CCAE0();

  (*(v15 + 8))(v17, v50);
  (*(v19 + 8))(v21, v51);
  swift_beginAccess();
  v52 = swift_weakLoadStrong();
  if (v52)
  {
    sub_EEAC(v52 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider, v86);

    v75 = v87;
    v82 = v88;
    v74 = sub_35E0(v86, v87);
    v53 = v72;
    v54 = v76;
    (*(v72 + 104))(v76, enum case for TypeOfIntent.acousticID(_:), v81);
    v55 = enum case for ActivityType.failed(_:);
    v56 = sub_2C9C20();
    v57 = *(v56 - 8);
    v58 = v77;
    (*(v57 + 104))(v77, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = sub_2CA130();
    v60 = v78;
    (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
    v61 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v79;
    (*(v63 + 104))(v79, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    sub_2CB4C0();

    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v58, &qword_34CB88, &unk_2D0D90);
    (*(v53 + 8))(v54, v81);
    goto LABEL_14;
  }
}

uint64_t sub_C6ED4()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_audioFlowProvider));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AmbiguousShuffleFlow(uint64_t a1)
{
  result = qword_34F118;
  if (!qword_34F118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C701C(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_C711C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AmbiguousShuffleFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_C7158(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = (v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_C529C(a1, a2, (v2 + v6), v9, v10, v11, v13, v14);
}

uint64_t sub_C7260(uint64_t a1, char a2)
{
  v5 = *(sub_2CA7B0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));

  return sub_C4270(a1, a2 & 1, v6, v7, v8, v9);
}

unint64_t sub_C72E8()
{
  result = qword_34CD00;
  if (!qword_34CD00)
  {
    sub_2CA7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD00);
  }

  return result;
}

uint64_t sub_C7340(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_C73C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v9 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, a1, a2, v8);
  result = (v7)(a3 + v9[9], 1, 1, v6);
  v11 = (a3 + v9[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a3 + v9[11]);
  *v12 = 0;
  v12[1] = 0;
  *(a3 + v9[12]) = 0;
  return result;
}

uint64_t sub_C749C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v4 - 8);
  v79 = &v64 - v5;
  v80 = sub_2CD490();
  v6 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v64 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v68 = &v64 - v10;
  __chkstk_darwin(v9);
  v73 = &v64 - v11;
  v12 = sub_2CA870();
  v76 = *(v12 - 8);
  v77 = v12;
  __chkstk_darwin(v12);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CA7B0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v66 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v65 = &v64 - v23;
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v27 = *(v19 + 16);
  v72 = v26;
  v71 = v19 + 16;
  v70 = v27;
  v27(v25, v26, v18);
  v28 = *(v15 + 16);
  v78 = a1;
  v28(v17, a1, v14);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  v81 = v18;
  v31 = v19;
  v32 = v30;
  v33 = os_log_type_enabled(v29, v30);
  v74 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v69 = a2;
    v36 = v35;
    v86[0] = v35;
    *v34 = 136315138;
    sub_CED0C(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v67 = v31;
    v37 = sub_2CEE70();
    v39 = v38;
    (*(v15 + 8))(v17, v14);
    v40 = sub_3F08(v37, v39, v86);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v29, v32, "TCCAcceptanceFlowStrategy#actionForInput input:%s", v34, 0xCu);
    sub_306C(v36);
    a2 = v69;

    v41 = v67;
    v42 = *(v67 + 8);
    v43 = v81;
    v42(v25, v81);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v42 = *(v31 + 8);
    v43 = v81;
    v42(v25, v81);
    v41 = v31;
  }

  v44 = v75;
  sub_2CA790();
  v45 = sub_D1D64(v44, &v84);
  (*(v76 + 8))(v44, v77, v45);
  v46 = v79;
  v47 = v80;
  if (v85)
  {
    sub_F338(&v84, v86);
    sub_35E0(v86, v86[3]);
    sub_2CD480();
    v48 = v74;
    if ((*(v74 + 48))(v46, 1, v47) == 1)
    {
      sub_30B8(v46, &qword_34CCE8, &unk_2D0E20);
LABEL_9:
      sub_2C9CE0();
      return sub_306C(v86);
    }

    v67 = v41;
    v69 = a2;
    (*(v48 + 32))(v73, v46, v47);
    v54 = *(v48 + 104);
    v54(v68, enum case for CommonAudio.Confirmation.cancel(_:), v47);
    sub_CED0C(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v84 == v82 && *(&v84 + 1) == v83)
    {
      v55 = 1;
    }

    else
    {
      v55 = sub_2CEEA0();
    }

    v56 = *(v74 + 8);
    v56(v68, v47);

    if ((v55 & 1) == 0)
    {
      v57 = v64;
      v54(v64, enum case for CommonAudio.Confirmation.no(_:), v47);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v84 == v82 && *(&v84 + 1) == v83)
      {
        v56(v57, v47);
      }

      else
      {
        v58 = sub_2CEEA0();
        v56(v57, v47);

        if ((v58 & 1) == 0)
        {
          v56(v73, v47);
          goto LABEL_9;
        }
      }
    }

    v59 = v65;
    v60 = v81;
    v70(v65, v72, v81);
    v61 = sub_2CDFE0();
    v62 = sub_2CE690();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "TCCAcceptanceFlowStrategy#actionForInput cancelled", v63, 2u);
    }

    v42(v59, v60);
    sub_2C9CD0();
    v56(v73, v47);
    return sub_306C(v86);
  }

  sub_30B8(&v84, &qword_34CCF0, &unk_2D1270);
  v49 = v66;
  v70(v66, v72, v43);
  v50 = sub_2CDFE0();
  v51 = sub_2CE690();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "TCCAcceptanceFlowStrategy#actionForInput received invalid NL intent", v52, 2u);
  }

  v42(v49, v43);
  return sub_2C9CF0();
}

uint64_t sub_C7EF0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v121 = a3;
  v122 = a2;
  v120 = sub_20410(&qword_34F2C0, &unk_2D3060);
  v5 = __chkstk_darwin(v120);
  v7 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v117 = &v100 - v8;
  v113 = sub_2CD490();
  v119 = *(v113 - 8);
  v9 = __chkstk_darwin(v113);
  v109 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v105 = &v100 - v11;
  v115 = sub_2C9900();
  v114 = *(v115 - 8);
  v12 = __chkstk_darwin(v115);
  v111 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v110 = &v100 - v15;
  v16 = __chkstk_darwin(v14);
  v104 = &v100 - v17;
  __chkstk_darwin(v16);
  v106 = &v100 - v18;
  v19 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v20 = __chkstk_darwin(v19 - 8);
  v112 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v100 - v22;
  v108 = sub_20410(qword_34F2C8, &unk_2D3070);
  v24 = __chkstk_darwin(v108);
  v116 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v107 = &v100 - v26;
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v118 = &v100 - v32;
  v33 = sub_2CA870();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CA790();
  v37 = sub_D1D64(v36, &v124);
  (*(v34 + 8))(v36, v33, v37);
  if (v125)
  {
    sub_F338(&v124, v126);
    v38 = *(v3 + 176);
    v39 = *(v3 + 184);
    sub_35E0((v4 + 152), *(v4 + 176));
    sub_28C0E4(v38, v39);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v40 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    v41 = v118;
    (*(v28 + 16))(v118, v40, v27);
    sub_EEAC(v126, &v124);
    v42 = sub_2CDFE0();
    v43 = sub_2CE690();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v115;
    v46 = v114;
    v47 = v113;
    if (!v44)
    {

      (*(v28 + 8))(v41, v27);
      sub_306C(&v124);
      v59 = v112;
      goto LABEL_24;
    }

    v103 = v43;
    v48 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v123 = v101;
    v102 = v48;
    *v48 = 136315138;
    sub_35E0(&v124, v125);
    sub_2CD480();
    v49 = v119;
    if ((*(v119 + 48))(v23, 1, v47) == 1)
    {
      sub_30B8(v23, &qword_34CCE8, &unk_2D0E20);
      v50 = sub_2CA360();
      (*(*(v50 - 8) + 56))(v107, 1, 1, v50);
      goto LABEL_22;
    }

    v60 = v105;
    (*(v49 + 16))(v105, v23, v47);
    v61 = (*(v49 + 88))(v60, v47);
    if (v61 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v62 = v106;
      (*(v46 + 104))(v106, enum case for SiriKitConfirmationState.confirmed(_:), v45);
    }

    else
    {
      v62 = v106;
      if (v61 == enum case for CommonAudio.Confirmation.no(_:))
      {
        v63 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if (v61 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v98 = enum case for CommonAudio.Confirmation.moreInfo(_:);
          v99 = v61;
          (*(v46 + 104))(v106, enum case for SiriKitConfirmationState.unset(_:), v45);
          v97 = v99 == v98;
          v62 = v106;
          if (!v97)
          {
            (*(v49 + 8))(v105, v47);
          }

          goto LABEL_20;
        }

        v63 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      (*(v46 + 104))(v106, *v63, v45);
    }

LABEL_20:
    (*(v49 + 8))(v23, v47);
    v64 = v104;
    (*(v46 + 32))(v104, v62, v45);
    v65 = (*(v46 + 88))(v64, v45);
    if (v65 != enum case for SiriKitConfirmationState.confirmed(_:))
    {
      v59 = v112;
      if (v65 == enum case for SiriKitConfirmationState.rejected(_:))
      {
        v83 = sub_2CA360();
        v84 = *(v83 - 8);
        v85 = v107;
        (*(v84 + 104))();
        (*(v84 + 56))(v85, 0, 1, v83);
      }

      else
      {
        v94 = sub_2CA360();
        (*(*(v94 - 8) + 56))(v107, 1, 1, v94);
        (*(v46 + 8))(v64, v45);
      }

      goto LABEL_23;
    }

    v66 = sub_2CA360();
    v67 = *(v66 - 8);
    v68 = v107;
    (*(v67 + 104))();
    (*(v67 + 56))(v68, 0, 1, v66);
LABEL_22:
    v59 = v112;
LABEL_23:
    v69 = v118;
    v70 = sub_2CE2A0();
    v72 = v71;
    sub_306C(&v124);
    v73 = sub_3F08(v70, v72, &v123);

    v74 = v102;
    *(v102 + 1) = v73;
    _os_log_impl(&dword_0, v42, v103, "TCCAcceptanceFlowStrategy#parseTCCConfirmationResponse %s", v74, 0xCu);
    sub_306C(v101);

    (*(v28 + 8))(v69, v27);
LABEL_24:
    sub_35E0(v126, v126[3]);
    sub_2CD480();
    v75 = v119;
    v76 = (*(v119 + 48))(v59, 1, v47);
    v77 = v116;
    if (v76 == 1)
    {
      sub_30B8(v59, &qword_34CCE8, &unk_2D0E20);
      v78 = sub_2CA360();
      (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
      goto LABEL_41;
    }

    v79 = v109;
    (*(v75 + 16))(v109, v59, v47);
    v80 = (*(v75 + 88))(v79, v47);
    if (v80 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v81 = v110;
      (*(v46 + 104))(v110, enum case for SiriKitConfirmationState.confirmed(_:), v45);
    }

    else
    {
      v81 = v110;
      if (v80 == enum case for CommonAudio.Confirmation.no(_:))
      {
        v82 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if (v80 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v95 = enum case for CommonAudio.Confirmation.moreInfo(_:);
          v96 = v80;
          (*(v46 + 104))(v110, enum case for SiriKitConfirmationState.unset(_:), v45);
          v97 = v96 == v95;
          v81 = v110;
          v75 = v119;
          if (!v97)
          {
            (*(v119 + 8))(v109, v47);
          }

          goto LABEL_35;
        }

        v82 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      (*(v46 + 104))(v110, *v82, v45);
    }

LABEL_35:
    (*(v75 + 8))(v59, v47);
    v86 = v111;
    (*(v46 + 32))(v111, v81, v45);
    v87 = (*(v46 + 88))(v86, v45);
    if (v87 == enum case for SiriKitConfirmationState.confirmed(_:))
    {
      v88 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      if (v87 != enum case for SiriKitConfirmationState.rejected(_:))
      {
        v92 = sub_2CA360();
        (*(*(v92 - 8) + 56))(v77, 1, 1, v92);
        (*(v46 + 8))(v111, v45);
        goto LABEL_41;
      }

      v88 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v89 = *v88;
    v90 = sub_2CA360();
    v91 = *(v90 - 8);
    (*(v91 + 104))(v77, v89, v90);
    (*(v91 + 56))(v77, 0, 1, v90);
LABEL_41:
    v93 = v117;
    sub_2CA750();
    swift_storeEnumTagMultiPayload();
    v122(v93);
    sub_30B8(v93, &qword_34F2C0, &unk_2D3060);
    return sub_306C(v126);
  }

  sub_30B8(&v124, &qword_34CCF0, &unk_2D1270);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v51 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  (*(v28 + 16))(v31, v51, v27);
  v52 = sub_2CDFE0();
  v53 = sub_2CE690();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "TCCAcceptanceFlowStrategy#parseTCCConfirmationResponse received invalid NL intent", v54, 2u);
  }

  (*(v28 + 8))(v31, v27);
  v55 = sub_2CB850();
  sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v56 = swift_allocError();
  (*(*(v55 - 8) + 104))(v57, enum case for PlaybackCode.ceGE23(_:), v55);
  *v7 = v56;
  swift_storeEnumTagMultiPayload();
  v122(v7);
  return sub_30B8(v7, &qword_34F2C0, &unk_2D3060);
}

void (*sub_C8FCC(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  v7 = sub_2CCF90();
  v9 = v8;
  v10 = sub_2CBE40();
  if (!v9)
  {

    goto LABEL_9;
  }

  if (v7 == v10 && v9 == v11)
  {

    goto LABEL_7;
  }

  v12 = sub_2CEEA0();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    *(v15 + 32) = v3;

    sub_2850FC(a1, sub_CED00, v15);
  }

LABEL_7:
  sub_35E0(v3 + 24, v3[27]);
  sub_2CBE40();
  sub_2CB960();

  swift_beginAccess();
  sub_F9A0((v3 + 9), v3[12]);
  result = sub_2CC4D0();
  if (!__OFADD__(*v14, 1))
  {
    ++*v14;
    result(v16, 0);
    swift_endAccess();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_C9190(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v39 = a3;
  v40 = a2;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_2CE000();
  v37 = *(v14 - 8);
  v38 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v17);
  v19 = (&v36 - v18);
  sub_F3F4(a1, &v36 - v18, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v38;
    v22 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    v23 = v37;
    (*(v37 + 16))(v16, v22, v21);
    swift_errorRetain();
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = sub_2CEEF0();
      v30 = sub_3F08(v28, v29, v41);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "TCCAcceptanceFlowStrategy#makeRejectedResponse error generating dialog: %{public}s", v26, 0xCu);
      sub_306C(v27);

      (*(v23 + 8))(v16, v38);
    }

    else
    {

      (*(v23 + 8))(v16, v21);
    }

    v35 = v40;
    v41[0] = v20;
    v42 = 1;
    swift_errorRetain();
    v35(v41);

    return sub_30B8(v41, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v19, v13);
    sub_35E0((v36 + 112), *(v36 + 136));
    sub_F3F4(v13, v11, &qword_34C6E8, &unk_2D0FF0);
    v31 = *&v11[*(v8 + 48)];
    v32 = sub_2CA000();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_1C077C(v11, v31, v7, _swiftEmptyArrayStorage, v40, v39);

    sub_30B8(v7, &unk_353020, &unk_2D0970);
    sub_30B8(v13, &qword_34C6E8, &unk_2D0FF0);
    v33 = sub_2CA130();
    return (*(*(v33 - 8) + 8))(v11, v33);
  }
}

uint64_t sub_C9694(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = a1;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse", v17, 2u);
    a1 = v21;
  }

  (*(v11 + 8))(v13, v10);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a2;
  v18[5] = a1;
  v18[6] = v5;

  v19 = a2;

  sub_CC448(a1, sub_CECF0, v18);
}

uint64_t sub_C98F0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v118 = a5;
  v123 = a4;
  v129 = a3;
  v130 = a2;
  v124 = *a6;
  v127 = sub_20410(&qword_34F2B8, &unk_2D3050);
  __chkstk_darwin(v127);
  v128 = (&v106 - v8);
  v116 = sub_2C9EF0();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v119 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2C8EC0();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  v13 = &v106 - v12;
  v121 = sub_2CA910();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v122 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2CE000();
  v125 = *(v126 - 8);
  v15 = __chkstk_darwin(v126);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v114 = &v106 - v19;
  v20 = __chkstk_darwin(v18);
  v110 = &v106 - v21;
  __chkstk_darwin(v20);
  v23 = &v106 - v22;
  v24 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v24 - 8);
  v26 = &v106 - v25;
  v27 = sub_2CA130();
  __chkstk_darwin(v27);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v32 = v31;
  sub_F3F4(v30, v26, &qword_34CB80, &unk_2D0B30);
  if ((*(v32 + 48))(v26, 1, v27) == 1)
  {
    sub_30B8(v26, &qword_34CB80, &unk_2D0B30);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = v126;
    v34 = sub_3ED0(v126, static Logger.default);
    swift_beginAccess();
    v35 = v125;
    (*(v125 + 16))(v23, v34, v33);
    v36 = sub_2CDFE0();
    v37 = sub_2CE680();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse unable to generate templating result", v38, 2u);
    }

    (*(v35 + 8))(v23, v33);
    v39 = sub_2CB850();
    sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v40 = swift_allocError();
    (*(*(v39 - 8) + 104))(v41, enum case for PlaybackCode.ceGE24(_:), v39);
    v42 = v128;
    *v128 = v40;
    swift_storeEnumTagMultiPayload();
    v130(v42);
    return sub_30B8(v42, &qword_34F2B8, &unk_2D3050);
  }

  v109 = v32;
  v44 = *(v32 + 32);
  v117 = v29;
  v44(v29, v26, v27);
  v132[0] = v123;
  v45 = v124[10];
  v46 = v123;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_F338(&v136, v135);
    sub_35E0(v135, v135[3]);
    v47 = sub_2CC180();
    if (v48)
    {
      v107 = v47;
      v108 = v48;
      v123 = v27;
      sub_2CB5B0();
      v49 = sub_2CA000();
      (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
      memset(v137, 0, sizeof(v137));
      v136 = 0u;
      v50 = v122;
      v51 = v117;
      sub_2C9DC0();
      sub_30B8(&v136, &qword_34CC80, &qword_2D1520);
      sub_30B8(v13, &unk_353020, &unk_2D0970);
      *&v136 = sub_2CCF90();
      *(&v136 + 1) = v52;
      v137[0] = v46;
      *&v137[1] = v133;
      v138 = v134;
      v139 = 0;
      v53 = v46;
      v54 = sub_234C04();

      if (v54)
      {
        sub_35E0((a6 + 24), *(a6 + 48));
        type metadata accessor for TCCAcceptanceFlowStrategy(0, v45, v124[11], v55);
        v56 = v50;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v58 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v59 = v111;
        sub_2CB570();
        sub_2CC620();

        (*(v112 + 8))(v59, v113);
        v60 = v121;
        v132[3] = v121;
        v132[4] = &protocol witness table for AceOutput;
        v61 = sub_F390(v132);
        (*(v120 + 16))(v61, v56, v60);
        v124 = v54;
        sub_2C9EE0();
        v62 = v126;
        v63 = v125;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v64 = sub_3ED0(v62, static Logger.default);
        swift_beginAccess();
        v65 = v114;
        (*(v63 + 16))(v114, v64, v62);
        v66 = v108;

        v67 = sub_2CDFE0();
        v68 = sub_2CE690();

        v69 = os_log_type_enabled(v67, v68);
        v70 = v109;
        if (v69)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v131 = v72;
          *v71 = 136315138;
          *(v71 + 4) = sub_3F08(v107, v66, &v131);
          _os_log_impl(&dword_0, v67, v68, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Sending handoff notification to assistant id: %s", v71, 0xCu);
          sub_306C(v72);
        }

        (*(v63 + 8))(v65, v62);
        v73 = v123;
        v74 = v117;
        v102 = v119;
        sub_2C9ED0();
        v103 = v115;
        v104 = v128;
        v105 = v116;
        (*(v115 + 16))(v128, v102, v116);
        swift_storeEnumTagMultiPayload();
        v130(v104);

        sub_30B8(v104, &qword_34F2B8, &unk_2D3050);
        (*(v103 + 8))(v102, v105);
        (*(v120 + 8))(v122, v121);
        (*(v70 + 8))(v74, v73);
      }

      else
      {

        v86 = v123;
        v87 = v126;
        v88 = v125;
        v89 = v121;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v90 = sub_3ED0(v87, static Logger.default);
        swift_beginAccess();
        v91 = v110;
        (*(v88 + 16))(v110, v90, v87);
        v92 = sub_2CDFE0();
        v93 = sub_2CE680();
        v94 = os_log_type_enabled(v92, v93);
        v95 = v109;
        v96 = v120;
        if (v94)
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_0, v92, v93, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Unable to create RSKE command", v97, 2u);
          v86 = v123;
        }

        (*(v88 + 8))(v91, v87);
        v98 = sub_2CB850();
        sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v99 = swift_allocError();
        (*(*(v98 - 8) + 104))(v100, enum case for PlaybackCode.ceGE26(_:), v98);
        v101 = v128;
        *v128 = v99;
        swift_storeEnumTagMultiPayload();
        v130(v101);
        sub_30B8(v101, &qword_34F2B8, &unk_2D3050);
        (*(v96 + 8))(v122, v89);
        (*(v95 + 8))(v51, v86);
      }

      return sub_306C(v135);
    }

    sub_306C(v135);
  }

  else
  {
    memset(v137, 0, sizeof(v137));
    v136 = 0u;
    sub_30B8(&v136, &qword_3530A0, &qword_2D1EF8);
  }

  v75 = v109;
  v76 = v126;
  v77 = v125;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v78 = sub_3ED0(v76, static Logger.default);
  swift_beginAccess();
  (*(v77 + 16))(v17, v78, v76);
  v79 = sub_2CDFE0();
  v80 = sub_2CE690();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_0, v79, v80, "TCCAcceptanceFlowStrategy#makeHandoffResponseForAuthenticationResponse Could not get companion assistant id for handoff notification", v81, 2u);
  }

  (*(v77 + 8))(v17, v76);
  v82 = sub_2CB850();
  sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v83 = swift_allocError();
  (*(*(v82 - 8) + 104))(v84, enum case for PlaybackCode.ceGE25(_:), v82);
  v85 = v128;
  *v128 = v83;
  swift_storeEnumTagMultiPayload();
  v130(v85);
  sub_30B8(v85, &qword_34F2B8, &unk_2D3050);
  return (*(v75 + 8))(v117, v27);
}

void sub_CAAA4(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v41 = a1;
  v5 = sub_2C8EC0();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v42 = *(v8 + 16);
  v43 = v14;
  v42(v13, v14, v7);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = v7;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "TCCAcceptanceFlowStrategy#makePromptForTCCAcceptance", v17, 2u);
    v7 = v40;
  }

  v18 = *(v8 + 8);
  v18(v13, v7);
  v57 = a2;
  v19 = a2;
  sub_20410(&unk_34FBF0, &qword_2D1EF0);
  if (swift_dynamicCast())
  {
    sub_F338(v59, v55);
    sub_35E0(v55, v56);
    if (sub_2CC140())
    {
      v42(v11, v43, v7);
      v20 = sub_2CDFE0();
      v21 = sub_2CE690();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "TCCAcceptanceFlowStrategy#makePromptForTCCAcceptance Adding TCC acceptance required for SiriForAirPlay request", v22, 2u);
      }

      v18(v11, v7);
      sub_35E0(v55, v56);
      sub_2CC130();
    }

    sub_306C(v55);
  }

  else
  {
    memset(v59, 0, 40);
    sub_30B8(v59, &qword_3530A0, &qword_2D1EF8);
  }

  v23 = v49;
  sub_35E0((v49 + 24), *(v49 + 48));
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = ObjCClassFromMetadata;
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass:ObjCClassFromMetadata];
  v27 = v44;
  sub_2CB570();
  v40 = sub_2CC620();
  v43 = v28;

  v29 = v46;
  v30 = *(v45 + 8);
  v30(v27, v46);
  sub_35E0((v23 + 24), *(v23 + 48));
  v31 = [v25 bundleForClass:v42];
  sub_2CB570();
  v32 = sub_2CC620();
  v34 = v33;

  v30(v27, v29);
  v59[0] = 0;
  *&v59[1] = v52;
  *&v59[17] = v53;
  *&v59[33] = *v54;
  *&v59[48] = *&v54[15];
  v60 = 2;
  v35 = sub_235B38();
  if (v35)
  {
    v36 = v35;
    v37 = v43;
    LOBYTE(v57) = 1;
    v58 = 2;
    v38 = sub_235B38();
    if (v38)
    {
      v39 = v38;
      sub_CE604(v41, v40, v37, v32, v34, v47, v48);

      return;
    }
  }

  else
  {
  }

  sub_CE5B0();
  v50[0] = swift_allocError();
  v51 = 1;
  v47(v50);
  sub_30B8(v50, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_CB148(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *, uint64_t), uint64_t a6, void (*a7)(char *, uint64_t), void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v111 = a8;
  v115 = a7;
  v114 = a6;
  v113 = a5;
  v112 = a4;
  v125 = a2;
  v126 = a3;
  v13 = sub_2CA000();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  __chkstk_darwin(v13);
  v118 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2CB260();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2CD300();
  v127 = *(v129 - 8);
  v16 = __chkstk_darwin(v129);
  v122 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v104 - v19;
  v116 = v21;
  __chkstk_darwin(v18);
  v23 = &v104 - v22;
  v123 = sub_2CE000();
  v128 = *(v123 - 8);
  v24 = __chkstk_darwin(v123);
  v121 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v124 = &v104 - v27;
  __chkstk_darwin(v26);
  v29 = &v104 - v28;
  v30 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v30 - 8);
  v32 = &v104 - v31;
  v34 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, a11, a12, v33);
  v35 = *(v34 + 36);
  v117 = a1;
  sub_F3F4(&a1[v35], v32, &qword_34C820, &unk_2D0A30);
  v36 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v36 - 8) + 48))(v32, 1, v36) == 1)
  {
    sub_30B8(v32, &qword_34C820, &unk_2D0A30);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v123;
    v38 = sub_3ED0(v123, static Logger.default);
    swift_beginAccess();
    v39 = v128;
    (*(v128 + 16))(v29, v38, v37);
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput error generating dialog", v42, 2u);
    }

    (*(v39 + 8))(v29, v37);
    v43 = *(v34 + 48);
    if (*&v117[v43])
    {
      v44 = *&v117[v43];
    }

    else
    {
      v102 = sub_2CB850();
      sub_CED0C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v44 = swift_allocError();
      (*(*(v102 - 8) + 104))(v103, enum case for PlaybackCode.ceGE92(_:), v102);
    }

    v130[0] = v44;
    v131 = 1;
    swift_errorRetain();
    v125(v130);
    return sub_30B8(v130, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v107 = v14;
    v106 = *&v32[*(v36 + 48)];
    v45 = sub_2CA130();
    (*(*(v45 - 8) + 8))(v32, v45);

    v46 = a9;
    v47 = v111;
    sub_2CD2F0();
    v48 = v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v49 = v123;
    v50 = sub_3ED0(v123, static Logger.default);
    swift_beginAccess();
    v51 = v128;
    v52 = *(v128 + 16);
    v112 = v50;
    v111 = (v128 + 16);
    v105 = v52;
    v52(v124, v50, v49);
    v53 = v127;
    v54 = v127 + 16;
    v55 = *(v127 + 16);
    v117 = v48;
    v56 = v129;
    v55(v20, v48, v129);
    v57 = sub_2CDFE0();
    v58 = sub_2CE690();
    v59 = os_log_type_enabled(v57, v58);
    v114 = v54;
    v113 = v55;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v132 = v61;
      *v60 = 136315138;
      v55(v122, v20, v56);
      v62 = sub_2CE2A0();
      v63 = v56;
      v64 = v62;
      v66 = v65;
      v115 = *(v127 + 8);
      v115(v20, v63);
      v67 = sub_3F08(v64, v66, &v132);

      *(v60 + 4) = v67;
      _os_log_impl(&dword_0, v57, v58, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput Created RF 2.0 Snippet: %s", v60, 0xCu);
      sub_306C(v61);

      v68 = v128;
    }

    else
    {

      v115 = *(v53 + 8);
      v115(v20, v56);
      v68 = v51;
    }

    v69 = *(v68 + 8);
    v69(v124, v49);
    v70 = v49;
    v71 = a10;
    v72 = sub_2CB460();
    v73 = v121;
    if (!v72)
    {
      sub_2CB180();
      v72 = sub_2CB170();
    }

    v74 = v72;
    v105(v73, v112, v70);

    v75 = sub_2CDFE0();
    v76 = sub_2CE660();

    v77 = os_log_type_enabled(v75, v76);
    v124 = v74;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v132 = v79;
      *v78 = 136315138;
      sub_2CB130();
      v80 = v108;
      sub_2CD3C0();

      v81 = sub_2CB200();
      v83 = v82;
      (*(v109 + 8))(v80, v110);
      v84 = sub_3F08(v81, v83, &v132);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_0, v75, v76, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput with responseMode = %s", v78, 0xCu);
      sub_306C(v79);
      v71 = a10;

      v85 = v121;
    }

    else
    {

      v85 = v73;
    }

    v69(v85, v70);
    v86 = v129;
    v87 = v107;
    v88 = v118;
    v89 = v119;
    v90 = v120;
    (*(v119 + 16))(v118, v71, v120);
    v91 = v122;
    v113(v122, v117, v86);
    v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v93 = (v87 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = v127;
    v96 = (*(v127 + 80) + v94 + 8) & ~*(v127 + 80);
    v97 = swift_allocObject();
    (*(v89 + 32))(v97 + v92, v88, v90);
    *(v97 + v93) = v124;
    v98 = v106;
    *(v97 + v94) = v106;
    v99 = v129;
    (*(v95 + 32))(v97 + v96, v91, v129);

    v100 = v98;
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();

    return (v115)(v117, v99);
  }
}

uint64_t sub_CBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_2C9B80();
  v5[12] = swift_task_alloc();
  v6 = sub_2CA630();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_CBE5C, 0, 0);
}

uint64_t sub_CBE5C(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v14 = *(v1 + 64);
  sub_2C9B30();
  v4 = swift_task_alloc();
  *(v4 + 16) = v14;
  *(v4 + 32) = v3;
  sub_2CA560();

  sub_2CA080();
  swift_allocObject();
  *(v1 + 128) = sub_2CA070();
  v5 = sub_2CD230();
  *(v1 + 40) = v5;
  *(v1 + 48) = sub_CED0C(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390((v1 + 16));
  v7 = sub_2CD300();
  (*(*(v7 - 8) + 16))(v6, v2, v7);
  (*(*(v5 - 8) + 104))(v6, enum case for SiriAudioSnippets.confirmation(_:), v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v8 = swift_allocObject();
  *(v1 + 136) = v8;
  *(v8 + 16) = xmmword_2D0770;
  *(v8 + 32) = v3;
  v15 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v9 = v3;
  v10 = swift_task_alloc();
  *(v1 + 144) = v10;
  *v10 = v1;
  v10[1] = sub_CC0B0;
  v11 = *(v1 + 120);
  v12 = *(v1 + 56);

  return v15(v12, v1 + 16, v8, v11);
}

uint64_t sub_CC0B0()
{
  v1 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_CC1F4, 0, 0);
}

uint64_t sub_CC1F4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_CC27C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2CB260();
  __chkstk_darwin(v6 - 8);
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2CA000();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  v12 = [a4 catId];
  sub_2CE270();

  sub_2CA590();
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_CC448(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_286C18(a1, sub_CE5A8, v6);
}

uint64_t sub_CC4DC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_2CE000();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  sub_F3F4(a1, &v38 - v17, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = v40;
    v21 = sub_3ED0(v40, static Logger.default);
    swift_beginAccess();
    v22 = v39;
    (*(v39 + 16))(v6, v21, v20);
    swift_errorRetain();
    v23 = sub_2CDFE0();
    v24 = sub_2CE680();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v19;
      v44 = v26;
      *v25 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v27 = sub_2CE2A0();
      v29 = sub_3F08(v27, v28, &v44);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "TCCAcceptanceFlowStrategy#continueOnCompanionDialog error generating dialog: %{public}s", v25, 0xCu);
      sub_306C(v26);

      (*(v22 + 8))(v6, v40);
    }

    else
    {

      (*(v22 + 8))(v6, v20);
    }

    v35 = v41;
    v36 = sub_2CA130();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    v35(v9);

    v33 = &qword_34CB80;
    v34 = &unk_2D0B30;
    v32 = v9;
  }

  else
  {
    sub_24BE0(v18, v15);
    sub_F3F4(v15, v13, &qword_34C6E8, &unk_2D0FF0);

    v30 = sub_2CA130();
    v31 = *(v30 - 8);
    (*(v31 + 32))(v9, v13, v30);
    (*(v31 + 56))(v9, 0, 1, v30);
    v41(v9);
    sub_30B8(v9, &qword_34CB80, &unk_2D0B30);
    v32 = v15;
    v33 = &qword_34C6E8;
    v34 = &unk_2D0FF0;
  }

  return sub_30B8(v32, v33, v34);
}

uint64_t sub_CC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, v9, v10, a4);
  v11 = swift_allocBox();
  sub_C73C0(v9, v10, v12);
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2D0E40;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a1;
  v14[4] = v11;
  *(v13 + 32) = sub_CE438;
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a1;
  v15[4] = v11;
  *(v13 + 48) = sub_CE48C;
  *(v13 + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_2CCC70();
}

uint64_t sub_CCBA8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = *(v6 + 80);
  *(v10 + 24) = *(v6 + 88);
  *(v10 + 32) = sub_CEEA8;
  *(v10 + 40) = v9;
  *(v10 + 48) = a4;

  sub_2857C8(a3, sub_CE578, v10);
}

uint64_t sub_CCCB0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a1;
  v83 = a3;
  v84 = a2;
  v8 = sub_2CE000();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = __chkstk_darwin(v8);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v70 - v11;
  v75 = sub_2C9DB0();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2CA210();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v14 - 8);
  v16 = &v70 - v15;
  v76 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v17 = *(v76 - 8);
  v18 = __chkstk_darwin(v76);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v70 - v21;
  v23 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v23);
  v25 = (&v70 - v24);
  v27 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, v79, a6, v26);
  v79 = a4;
  v28 = swift_projectBox();
  sub_F3F4(v80, v25, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v28;
    v29 = *v25;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = v82;
    v31 = sub_3ED0(v82, static Logger.default);
    swift_beginAccess();
    v32 = v81;
    v33 = v78;
    (*(v81 + 16))(v78, v31, v30);
    swift_errorRetain();
    v34 = sub_2CDFE0();
    v35 = sub_2CE680();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v27;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v86[0] = v38;
      *v37 = 136446210;
      v85 = v29;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v39 = sub_2CE2A0();
      v41 = sub_3F08(v39, v40, v86);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "TCCAcceptanceFlowStrategy#confirmDialogContent error generating dialog: %{public}s", v37, 0xCu);
      sub_306C(v38);

      v27 = v36;

      (*(v32 + 8))(v78, v30);
    }

    else
    {

      (*(v32 + 8))(v33, v30);
    }

    v53 = v80;
    swift_beginAccess();
    *(v53 + *(v27 + 48)) = v29;
  }

  else
  {
    sub_24BE0(v25, v22);
    sub_F3F4(v22, v16, &qword_34C6E8, &unk_2D0FF0);
    v42 = v76;
    (*(v17 + 56))(v16, 0, 1, v76);
    swift_beginAccess();
    v43 = v27;
    sub_CE4C8(v16, v28 + *(v27 + 36));
    sub_F3F4(v22, v20, &qword_34C6E8, &unk_2D0FF0);

    v44 = sub_2CA120();
    v45 = sub_2CA130();
    (*(*(v45 - 8) + 8))(v20, v45);
    if (*(v44 + 16))
    {
      v46 = v71;
      v47 = v70;
      v48 = v72;
      (*(v71 + 16))(v70, v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v72);

      v49 = v73;
      sub_2CA200();
      (*(v46 + 8))(v47, v48);
      v50 = sub_2C9DA0();
      v52 = v51;
      (*(v74 + 8))(v49, v75);
    }

    else
    {

      v50 = 0;
      v52 = 0xE000000000000000;
    }

    v56 = v81;
    v55 = v82;
    v57 = v77;
    swift_beginAccess();
    v58 = (v28 + *(v43 + 44));
    *v58 = v50;
    v58[1] = v52;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v59 = sub_3ED0(v55, static Logger.default);
    swift_beginAccess();
    (*(v56 + 16))(v57, v59, v55);

    v60 = sub_2CDFE0();
    v61 = sub_2CE690();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      swift_beginAccess();
      v64 = (v28 + *(v43 + 44));
      v65 = v64[1];
      if (v65)
      {
        v82 = *v64;
        sub_10C40();
        swift_allocError();
        *v66 = v82;
        v66[1] = v65;

        v67 = _swift_stdlib_bridgeErrorToNSError();
        v68 = v67;
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      *(v62 + 4) = v67;
      *v63 = v68;
      _os_log_impl(&dword_0, v60, v61, "TCCAcceptanceFlowStrategy#confirmDialogContent text for confirmation subtitle: %@", v62, 0xCu);
      sub_30B8(v63, &unk_34FC00, &unk_2D0150);
    }

    (*(v56 + 8))(v57, v55);
    v54 = sub_30B8(v22, &qword_34C6E8, &unk_2D0FF0);
  }

  return v84(v54);
}

uint64_t sub_CD5F0(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = *(v6 + 80);
  v10[3] = *(v6 + 88);
  v10[4] = sub_CE4A8;
  v10[5] = v9;
  v10[6] = a4;

  sub_28653C(a3, sub_CE4B0, v10);
}

uint64_t sub_CD6F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v83 = a3;
  v84 = a2;
  v80 = a1;
  v7 = sub_2CE000();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = __chkstk_darwin(v7);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v68 - v10;
  v74 = sub_2C9DB0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2CA210();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v75 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v16 = *(v75 - 8);
  v17 = __chkstk_darwin(v75);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v22);
  v24 = (&v68 - v23);
  v26 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, v78, v79, v25);
  v79 = a4;
  v27 = swift_projectBox();
  sub_F3F4(v80, v24, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v27;
    v28 = *v24;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = v82;
    v30 = sub_3ED0(v82, static Logger.default);
    swift_beginAccess();
    v31 = v81;
    v32 = v77;
    (*(v81 + 16))(v77, v30, v29);
    swift_errorRetain();
    v33 = sub_2CDFE0();
    v34 = sub_2CE680();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v26;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v86[0] = v37;
      *v36 = 136446210;
      v85 = v28;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v38 = sub_2CE2A0();
      v40 = sub_3F08(v38, v39, v86);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v33, v34, "TCCAcceptanceFlowStrategy#confirmDialogContent error generating dialog: %{public}s", v36, 0xCu);
      sub_306C(v37);

      v26 = v35;

      (*(v31 + 8))(v77, v29);
    }

    else
    {

      (*(v31 + 8))(v32, v29);
    }

    v51 = v80;
    swift_beginAccess();
    *(v51 + *(v26 + 48)) = v28;
  }

  else
  {
    sub_24BE0(v24, v21);
    sub_F3F4(v21, v15, &qword_34C6E8, &unk_2D0FF0);
    v41 = v75;
    (*(v16 + 56))(v15, 0, 1, v75);
    swift_beginAccess();
    sub_CE4C8(v15, v27);
    sub_F3F4(v21, v19, &qword_34C6E8, &unk_2D0FF0);

    v42 = sub_2CA120();
    v43 = sub_2CA130();
    (*(*(v43 - 8) + 8))(v19, v43);
    if (*(v42 + 16))
    {
      v44 = v70;
      v45 = v69;
      v46 = v71;
      (*(v70 + 16))(v69, v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v71);

      v47 = v72;
      sub_2CA200();
      (*(v44 + 8))(v45, v46);
      v48 = sub_2C9DA0();
      v50 = v49;
      (*(v73 + 8))(v47, v74);
    }

    else
    {

      v48 = 0;
      v50 = 0xE000000000000000;
    }

    v54 = v81;
    v53 = v82;
    v55 = v76;
    swift_beginAccess();
    v56 = (v27 + *(v26 + 40));
    *v56 = v48;
    v56[1] = v50;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v57 = sub_3ED0(v53, static Logger.default);
    swift_beginAccess();
    (*(v54 + 16))(v55, v57, v53);

    v58 = sub_2CDFE0();
    v59 = sub_2CE690();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      swift_beginAccess();
      v62 = (v27 + *(v26 + 40));
      v63 = v62[1];
      if (v63)
      {
        v82 = *v62;
        sub_10C40();
        swift_allocError();
        *v64 = v82;
        v64[1] = v63;

        v65 = _swift_stdlib_bridgeErrorToNSError();
        v66 = v65;
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      *(v60 + 4) = v65;
      *v61 = v66;
      _os_log_impl(&dword_0, v58, v59, "TCCAcceptanceFlowStrategy#confirmDialogContent text for confirmation title: %@", v60, 0xCu);
      sub_30B8(v61, &unk_34FC00, &unk_2D0150);
    }

    (*(v54 + 8))(v55, v53);
    v52 = sub_30B8(v21, &qword_34C6E8, &unk_2D0FF0);
  }

  return v84(v52);
}

uint64_t sub_CE034(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TCCAcceptanceFlowStrategy.ConfirmationDialogResponse(0, a4, a5, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  a1(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_CE150()
{

  sub_306C((v0 + 24));

  sub_306C((v0 + 72));
  sub_306C((v0 + 112));
  sub_306C((v0 + 152));
  sub_306C((v0 + 192));
  return v0;
}

uint64_t sub_CE1A0()
{
  sub_CE150();

  return swift_deallocClassInstance();
}

uint64_t sub_CE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = type metadata accessor for TCCAcceptanceFlowStrategy(0, *(a5 + 80), *(a5 + 88), a4);

  return a7(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_CE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for TCCAcceptanceFlowStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_CE444()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_CE4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C820, &unk_2D0A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE538()
{

  return _swift_deallocObject(v0, 56);
}

unint64_t sub_CE5B0()
{
  result = qword_34F2B0;
  if (!qword_34F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F2B0);
  }

  return result;
}

uint64_t sub_CE604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v50 = a7;
  v46 = a5;
  v44 = a4;
  v45 = a3;
  v49 = a1;
  v10 = *v7;
  v47 = sub_2CA000();
  v11 = *(v47 - 8);
  v12 = __chkstk_darwin(v47);
  v43 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = v13;
  __chkstk_darwin(v12);
  v48 = v42 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42[0] = a2;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "TCCAcceptanceFlowStrategy#createConfirmationViewOutput...", v22, 2u);
    a2 = v42[0];
  }

  (*(v16 + 8))(v18, v15);
  v55 = 0;
  v56 = 2;
  v23 = sub_235B38();
  if (v23)
  {
    v24 = v23;
    v53 = 1;
    v54 = 2;
    v25 = sub_235B38();
    if (v25)
    {
      v26 = v25;
      v27 = *(v10 + 80);
      v28 = *(v10 + 88);
      v29 = v48;
      sub_B422C(v48);
      v30 = v43;
      (*(v11 + 16))(v43, v29, v47);
      v31 = (*(v11 + 80) + 96) & ~*(v11 + 80);
      v32 = swift_allocObject();
      v33 = a6;
      v34 = v32;
      v32[2] = v27;
      v32[3] = v28;
      v32[4] = v33;
      v32[5] = v50;
      v32[6] = a2;
      v35 = v44;
      v32[7] = v45;
      v32[8] = v35;
      v32[9] = v46;
      v32[10] = v24;
      v32[11] = v26;
      v36 = v32 + v31;
      v37 = v47;
      (*(v11 + 32))(v36, v30, v47);

      v38 = v24;
      v39 = v26;
      sub_CC9DC(v49, sub_CEAEC, v34, v40);

      return (*(v11 + 8))(v48, v37);
    }
  }

  sub_CE5B0();
  v51[0] = swift_allocError();
  v52 = 1;
  a6(v51);
  return sub_30B8(v51, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_CEAEC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_2CA000() - 8);
  return sub_CB148(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), v1 + ((*(v5 + 80) + 96) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_CEB7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CA000() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2CD300() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_CBD68(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_CED0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_CED5C(uint64_t a1)
{
  sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
  if (v1 <= 0x3F)
  {
    sub_BF320();
    if (v2 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_CEE50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2DB30(a3, a4);
    v5 = sub_2CEB90();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_CEEB0(unint64_t a1, uint64_t a2, void *a3, void *a4, char *a5, char *a6)
{
  v7 = v6;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a4 code];
  if (_INAddMediaIntentResponseCodeFailureAlreadyInLibrary == v18)
  {
    v41 = a5;
    v19 = INUpdateMediaAffinityIntent.firstMediaItemType()();
    v20 = a6;
    if (v19 == &dword_0 + 2)
    {
      v21 = 0xE500000000000000;
      v22 = 0x6D75626C61;
    }

    else if (v19 == &dword_4 + 2)
    {
      v21 = 0xE700000000000000;
      v22 = 0x74736163646F70;
    }

    else
    {
      v22 = 0;
      v21 = 0xE000000000000000;
    }

    v44 = a1;

    v29 = sub_1E9600();
    v43 = &type metadata for String;
    *&v42 = v29;
    *(&v42 + 1) = v30;
    sub_270DC4(&v42, 0x656C746974, 0xE500000000000000, &v45);
    sub_30B8(&v45, &qword_34CEA0, &qword_2D0FC0);
    v43 = &type metadata for String;
    *&v42 = v22;
    *(&v42 + 1) = v21;
    sub_270DC4(&v42, 0x707954616964656DLL, 0xE900000000000065, &v45);
    sub_30B8(&v45, &qword_34CEA0, &qword_2D0FC0);
    v31 = [a3 mediaDestination];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 mediaDestinationType];

      v34 = v33 == &dword_0 + 2;
    }

    else
    {
      v34 = 0;
    }

    v43 = &type metadata for Bool;
    LOBYTE(v42) = v34;
    sub_270DC4(&v42, 0xD000000000000015, 0x80000000002DB710, &v45);
    sub_30B8(&v45, &qword_34CEA0, &qword_2D0FC0);
    v35 = sub_1E960C();
    v43 = &type metadata for String;
    *&v42 = v35;
    *(&v42 + 1) = v36;
    sub_270DC4(&v42, 0x7473696C79616C70, 0xED0000656C746954, &v45);
    sub_30B8(&v45, &qword_34CEA0, &qword_2D0FC0);
    v37 = v44;
    v46 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v47 = &off_338D38;
    *&v45 = a3;
    v38 = a3;
    sub_124608(v37, a2, &v45, v41, v20);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v17, v23, v14);
    v24 = sub_2CDFE0();
    v25 = sub_2CE690();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v7;
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "AddMediaDialogProvider#makeFailureHandlingIntentDialog", v26, 2u);
    }

    (*(v15 + 8))(v17, v14);
    v27 = sub_112C0(_swiftEmptyArrayStorage);
    v46 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v47 = &off_338D38;
    *&v45 = a3;
    v28 = a3;
    sub_3CAE0(v27, a2, &v45, a5, a6);
  }

  return sub_30B8(&v45, &qword_34C6C0, &qword_2D0710);
}

id sub_CF364(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, int *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v29 = a4;
  v30 = a1;
  v31 = a2;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = a9;
  v16 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = a8;
    v28 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136315138;
    v22 = v31;
    *(v20 + 4) = sub_3F08(v31, a3, v33);
    _os_log_impl(&dword_0, v17, v18, "AddMediaDialogProvider#makeUnsupportedDialog, parameterName: %s", v20, 0xCu);
    sub_306C(v21);

    a8 = v27;
    a5 = v28;

    (*(v13 + 8))(v15, v12);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v22 = v31;
  }

  v23 = sub_112C0(_swiftEmptyArrayStorage);
  if (v22 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (v24 = v23, (sub_2CEEA0() & 1) != 0))
  {

    return sub_D02B4(v30, a5, v29, a8, v32);
  }

  else if (v22 == 0xD000000000000010 && 0x80000000002D9DE0 == a3 || (sub_2CEEA0() & 1) != 0)
  {

    return sub_D1384(v30, a5, v29, a8, v32);
  }

  else
  {
    v33[3] = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
    v33[4] = &off_338D38;
    v33[0] = a5;
    v26 = a5;
    sub_129438(v24, v30, v33, a8, v32);

    return sub_30B8(v33, &qword_34C6C0, &qword_2D0710);
  }
}
uint64_t sub_1CF24E938(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)()))
{
  v51 = a6;
  v48 = a2;
  v49 = a5;
  v56 = a4;
  v53 = a3;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43[1] = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43[0] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v43 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v46 = *(a1 + 8);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v12 + 56))(v20, 1, 1, v11);
  sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v12 + 48);
  if (v24(v17, 1, v11) == 1)
  {
    v25 = v23;
    sub_1CF9E6048();
    if (v24(v17, 1, v11) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
  }

  v26 = v52;
  (*(v12 + 16))(v52, v14, v11);
  *&v26[*(v21 + 20)] = v23;
  v27 = &v26[*(v21 + 24)];
  *v27 = "SQLDB: Enumerate dataless containers";
  *(v27 + 1) = 36;
  v27[16] = 2;
  v28 = v23;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v12 + 8))(v14, v11);
  v29 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v43[-2] = v47;
  LOBYTE(v43[-1]) = v46;
  v31 = v50;
  v32 = (v51[3])(sub_1CF24EF74, v30);
  if (v31)
  {
LABEL_8:
    sub_1CF9E7458();
  }

  else
  {
    v33 = v32;
    v51 = v28;
    if ([v32 next])
    {
      do
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v33;
        v36 = [v35 longAtIndex_];
        if (v36 == 0x8000000000000000)
        {
          v38 = 2;
          v37 = 1;
        }

        else
        {
          v37 = v36;
          if (v36)
          {
            if (v36 < 0)
            {
              v37 = -v36;
              if (-v36 >> 32)
              {
                sub_1CF9E51B8();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF24D0AC();
                v41 = v43[0];
                v42 = v45;
                sub_1CF9E57D8();
                sub_1CF9E50D8();
                (*(v44 + 8))(v41, v42);
                swift_willThrow();

                objc_autoreleasePoolPop(v34);
                goto LABEL_8;
              }

              v38 = 0;
            }

            else
            {
              v38 = 1;
            }
          }

          else
          {
            v38 = 2;
          }
        }

        v54 = v37;
        v55 = v38;
        v53(&v54);
        objc_autoreleasePoolPop(v34);
      }

      while (([v35 next] & 1) != 0);
    }

    sub_1CF9E7458();
  }

  v39 = v52;
  sub_1CF9E6038();
  return sub_1CEFD5218(v39, type metadata accessor for Signpost);
}

unint64_t sub_1CF24EF90()
{
  result = qword_1EDEAA338;
  if (!qword_1EDEAA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA338);
  }

  return result;
}

uint64_t type metadata accessor for PendingIndexingItemRow(uint64_t a1)
{
  result = qword_1EDEA5438;
  if (!qword_1EDEA5438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1CF24F464@<Q0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v8 = *(v2 + 40);
  v9[0] = *(v2 + 16);
  v7 = v9[0];
  v9[1] = v8;
  v5 = *(type metadata accessor for ItemReconciliation(0, v9) - 8);
  sub_1CF2151CC(a1, *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), v7, *(&v7 + 1), v8, *(&v8 + 1), a2);
  return result;
}

unint64_t sub_1CF24F550()
{
  result = qword_1EDEA3398;
  if (!qword_1EDEA3398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C01D0, &unk_1CF9FF090);
    sub_1CEFCCCEC(&qword_1EDEA37C0, &qword_1EC4BE188, &qword_1CFA03800, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3398);
  }

  return result;
}

unint64_t sub_1CF24F600()
{
  result = qword_1EDEAC2B0;
  if (!qword_1EDEAC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2B0);
  }

  return result;
}

void sub_1CF24F75C(uint64_t a1)
{
  sub_1CF24F868(319, &qword_1EDEA8548, &unk_1EC4BE360, &qword_1CF9FE650);
  if (v1 <= 0x3F)
  {
    sub_1CF24F868(319, &qword_1EDEA8540, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (v2 <= 0x3F)
    {
      sub_1CF24F8BC(319, qword_1EDEA52A0, &type metadata for DecoratedReconciliation);
      if (v3 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEA3740, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CF24F868(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1CF9E75D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CF24F8BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF24F938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 888) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 888) = 0;
    }

    if (a2)
    {
      *(result + 464) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF24FAE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5C88();
  v10 = a1[3];
  v60[0] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](91, 0xE100000000000000);
  v11 = sub_1CF9E5C48();
  v12 = [a2 stringFromDate_];

  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x3A534F205DLL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v3[1], v3[2]);
  MEMORY[0x1D3868CC0](977421344, 0xE400000000000000);
  v23 = sub_1CF3B0B48();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v60[1] = v3[4];
  v61 = 114;
  v62 = 0xE100000000000000;
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = v62;
  MEMORY[0x1D3868CC0](v61, v62);
  v43, v44, v45, v46, v47, v48, v49, v50;
  MEMORY[0x1D3868CC0](978535968, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v3[5], v3[6]);
  MEMORY[0x1D3868CC0](978339360, 0xE400000000000000);
  MEMORY[0x1D3868CC0](v3[7], v3[8]);
  v51 = v64;
  sub_1CF4FB2BC(v63, v64, v10, v60[0]);
  v51, v52, v53, v54, v55, v56, v57, v58;
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CF24FDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA3C650);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF24FE58(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA3C790);
  v3 = sub_1CF9E6888();
  v4 = [a1 bindStringParameter_];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

uint64_t sub_1CF24FF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v109[2] = a7;
  v109[3] = a8;
  v109[1] = a6;
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_1CF9E7948();
  v113 = v110;
  v114 = v111;
  MEMORY[0x1D3868CC0](0xD000000000000072, 0x80000001CFA3C5D0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  v21 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v112 = MEMORY[0x1E69E6530];
  v110 = v21;
  v22 = sub_1CEFF8EA0(&v110);
  v24 = v23;
  sub_1CEFCCC44(&v110, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v24)
  {
LABEL_12:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  MEMORY[0x1D3868CC0](v22, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v32 = sub_1CF0757A0(a2, a3);
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v42 = [a1 bindUnsignedIntegerParameter_];
  v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v45 = v44;

  MEMORY[0x1D3868CC0](v43, v45);
  v45, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v53 = [a1 bindUnsignedLongParameter_];
  v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v56 = v55;

  MEMORY[0x1D3868CC0](v54, v56);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v64 = sub_1CF9E6888();
  v65 = [a1 bindStringParameter_];

  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v67;

  MEMORY[0x1D3868CC0](v66, v68);
  v68, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v76 = sub_1CF9E6888();
  v77 = [a1 bindStringParameter_];

  v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v80 = v79;

  MEMORY[0x1D3868CC0](v78, v80);
  v80, v81, v82, v83, v84, v85, v86, v87;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v88 = a10[1];
  if (v88)
  {

    v89 = sub_1CF9E6888();
    v88, v90, v91, v92, v93, v94, v95, v96;
  }

  else
  {
    v89 = 0;
  }

  v97 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v98 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v100 = v99;

  MEMORY[0x1D3868CC0](v98, v100);
  v100, v101, v102, v103, v104, v105, v106, v107;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v113;
}

unint64_t sub_1CF2503FC(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1CF9E6888();
  v11 = [a1 bindStringParameter_];

  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return 0xD000000000000028;
}

uint64_t sub_1CF2504D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = FPOSVersion();
  if (v8 && (v9 = v8, v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v12 = v11, v9, sub_1CF250A58(v10, v12, a1, a2, a3), v14 = v13, v12, v13, v15, v16, v17, v18, v19, v20, (v14 & 1) == 0))
  {
    sub_1CF9E5C88();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_1CF9E5CF8();
  v23 = *(*(v22 - 8) + 56);

  return v23(a4, v21, 1, v22);
}

uint64_t sub_1CF2505FC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

void sub_1CF25069C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = [a1 longAtIndex_];
  v4 = [a1 stringAtIndex_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v6;
  v23 = v5;

  v7 = [a1 unsignedIntAtIndex_];
  v8 = [a1 unsignedLongAtIndex_];
  v9 = [a1 stringAtIndex_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v11;
  v21 = v10;

  v12 = [a1 stringAtIndex_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  if ([a1 isNullAtIndex_])
  {

    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [a1 stringAtIndex_];
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v19;
  }

  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
}

void sub_1CF250904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15[2] = a1;
  v15[3] = a2;
  v7 = (*(a4 + 24))(sub_1CF250D78, v15, a3, a4);
  if (!v5)
  {
    v8 = v7;
    if ([v7 next])
    {
      sub_1CF25069C(v8, v16);
      v9 = v16[0];
      v10 = v16[1];
      v11 = v16[2];
      v12 = v16[3];
      v13 = v16[4];
      v14 = v17;
    }

    else
    {

      v14 = 0;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    *a5 = v9;
    *(a5 + 16) = v10;
    *(a5 + 32) = v11;
    *(a5 + 48) = v12;
    *(a5 + 64) = v13;
    *(a5 + 80) = v14;
  }
}

double sub_1CF2509E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1CF250904(4412225, 0xE300000000000000, a1, a2, v8);
  if (!v3)
  {
    v6 = v8[3];
    *(a3 + 32) = v8[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8[4];
    *(a3 + 80) = v9;
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
  }

  return result;
}

id sub_1CF250A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a1;
  v10[3] = a2;
  v7 = (*(a5 + 24))(sub_1CF250D70, v10, a4, a5);
  if (!v5)
  {
    v8 = v7;
    if ([v7 next])
    {
      v6 = [v8 longAtIndex_];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_1CF250B14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(sub_1CF2503E0, 0, a3);
  if (!v4)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v9 = sub_1CF9E6888();
    [v8 setDateFormat_];

    if ([v7 next])
    {
      v37 = v8;
      v38 = v7;
      do
      {
        v10 = objc_autoreleasePoolPush();
        v11 = v7;
        sub_1CF25069C(v11, v39);
        sub_1CF24FAE4(a2, v8);
        v12 = v41;
        if (v41)
        {
          v13 = v40;

          sub_1CF250D40(v39);
          v14 = a2[3];
          v42 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v14);
          sub_1CF9E7948();
          0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
          MEMORY[0x1D3868CC0](v13, v12);
          v12, v22, v23, v24, v25, v26, v27, v28;
          v29 = v14;
          v8 = v37;
          v7 = v38;
          sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA3C770, v29, v42);
          0x80000001CFA3C770, v30, v31, v32, v33, v34, v35, v36;
        }

        else
        {
          sub_1CF250D40(v39);
        }

        objc_autoreleasePoolPop(v10);
      }

      while (([v11 next] & 1) != 0);
    }
  }
}

void sub_1CF250D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF250904(4412225, 0xE300000000000000, a2, a3, &v49);
  if (!v3)
  {
    v46[0] = v49;
    v46[1] = v50;
    v46[3] = v52;
    v47 = v53;
    v46[2] = v51;
    v10 = v54;
    v48 = v54;
    if (v50)
    {
      v11 = *&v46[0];
      v12 = *(&v47 + 1);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v14 = v13;
      v15 = (*(v7 + 8))(v9, v6);
      v16 = v14 * 1000000000.0;
      if (COERCE__INT64(fabs(v14 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          if (!__OFSUB__(v16, v11))
          {
            if (v10)
            {
              *&v49 = 32;
              *(&v49 + 1) = 0xE100000000000000;
              MEMORY[0x1EEE9AC00](v15);
              *&v46[-1] = &v49;

              v20 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, &v46[-2], v12, v10, v19, v17, v18);
              sub_1CEFCCC44(v46, &qword_1EC4BEA68, &qword_1CF9FF910);
              if (*v20->tree)
              {
                isa = v20[1].super.isa;
                v29 = *v20[1]._anon_8;
                v30 = *v20[1].tree;
                v31 = *v20[1].tester;

                v20, v32, v33, v34, v35, v36, v37, v38;
                MEMORY[0x1D3868C10](isa, v29, v30, v31);
                v31, v39, v40, v41, v42, v43, v44, v45;
              }

              else
              {
                v20, v21, v22, v23, v24, v25, v26, v27;
              }
            }

            else
            {
              sub_1CEFCCC44(v46, &qword_1EC4BEA68, &qword_1CF9FF910);
            }

            return;
          }

LABEL_16:
          __break(1u);
          return;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_15;
    }
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1CF2510C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF251108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF25116C@<X0>(char *a1@<X8>)
{
  v54 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for VFSItem(0);
  v51 = v15[12];
  sub_1CEFCCBDC(v1 + v51, v8, &unk_1EC4BED30, &unk_1CFA00710);
  v53 = v3;
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v50 = v2;
    v16 = v5;
    sub_1CEFCCC44(v8, &unk_1EC4BED30, &unk_1CFA00710);
    v24 = v10;
  }

  else
  {
    v24 = v10;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v37 = *(v10 + 32);
      v37(v14, v8, v9);
      v38 = v54;
      v37(v54, v14, v9);
      return (*(v10 + 56))(v38, 0, 1, v9);
    }

    v50 = v2;
    v16 = v5;
    sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v25 = v1 + v15[9];
  v26 = *v25;
  v27 = (v1 + v15[14]);
  if (*(v27 + 4))
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27;
  }

  v29 = *(v25 + 8);
  0, v17, v18, v19, v20, v21, v22, v23;
  v64[0] = v26;
  v64[1] = 0;
  v67 = 0;
  v68 = 0;
  v30 = *(v1 + v15[7]);
  v65 = v28;
  v66 = v29;
  v31 = v15[13];
  v49 = v1;
  v32 = *(v1 + v31);
  v58 = v26;
  v59 = 0;
  v60 = v28;
  v61 = v29;
  v62 = 0;
  v63 = 0;
  v55 = -1;
  v33 = fpfs_openfdbyhandle();
  if (v33 < 0)
  {
    v35 = v55;
    v36 = MEMORY[0x1D38683F0]();
    if (v35 < 0)
    {
      LODWORD(v56[0]) = 0;
      BYTE4(v56[0]) = 1;
    }

    else
    {
      LODWORD(v56[0]) = v55;
      BYTE4(v56[0]) = 0;
    }

    v57 = 0;
    v47 = sub_1CF19BBE4(v36, v56);
    sub_1CF1969CC(v56);
    swift_willThrow();
    LODWORD(v56[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v64);

    v48 = *(v24 + 56);
    v48(v16, 1, 1, v9);
    sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
    return (v48)(v54, 1, 1, v9);
  }

  else
  {
    v34 = v33;
    sub_1CF19811C(v33, v64, v32, v30 == 1, v16);
    close(v34);
    sub_1CF255928(v64);
    v39 = *(v24 + 56);
    v39(v16, 0, 1, v9);
    v40 = v16;
    v41 = *(v24 + 32);
    v42 = v52;
    v41(v52, v40, v9);
    v43 = v51;
    v44 = v49;
    sub_1CEFCCC44(v49 + v51, &unk_1EC4BED30, &unk_1CFA00710);
    (*(v24 + 16))(v44 + v43, v42, v9);
    v39((v44 + v43), 0, 1, v9);
    (*(v53 + 56))(v44 + v43, 0, 1, v50);
    v45 = v54;
    v41(v54, v42, v9);
    return v39(v45, 0, 1, v9);
  }
}

uint64_t sub_1CF25174C(uint64_t a1, int a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v26 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](64, 0xE100000000000000);
    v5 = sub_1CF9E7F98();
    v7 = v6;
    MEMORY[0x1D3868CC0](v5);
    v7, v8, v9, v10, v11, v12, v13, v14;
    result = v26;
    if (a4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1CF9E7F98();
    if (a4)
    {
      return result;
    }
  }

  v27 = result;
  MEMORY[0x1D3868CC0](981103418, 0xE400000000000000);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  return v27;
}

uint64_t sub_1CF251860(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v12[3] = a5;
  v12[6] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAE0, &qword_1CF9FFB98);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255E20();
  sub_1CF9E82A8();
  v15 = 0;
  sub_1CF9E7F68();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_1CF9E7F58();
  v13 = 2;
  sub_1CF9E7E88();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF251A1C()
{
  v1 = 0x746E756F436E6567;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C6966;
  }
}

uint64_t sub_1CF251A6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF255B30(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF251A94(uint64_t a1)
{
  v2 = sub_1CF255E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF251AD0(uint64_t a1)
{
  v2 = sub_1CF255E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF251B0C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1CF251B24()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 8) == 0;
  }

  if (v1)
  {
    return *(v0 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF251B5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CF251BB4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF255C44(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

void sub_1CF251C28(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CF1DFE74(a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v3)
  {
    *a3 = v6;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12 & 1;
  }
}

unint64_t *sub_1CF251D40@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1CF251D58()
{
  v1 = 0x746E756F436E6567;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E726574746170;
  }
}

uint64_t sub_1CF251DB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF256380(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

unint64_t sub_1CF251DE0@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1CF251DF4(uint64_t a1)
{
  v2 = sub_1CF255EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF251E30(uint64_t a1)
{
  v2 = sub_1CF255EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF251E6C(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF251EBC(a1);
  return v2;
}

uint64_t *sub_1CF251EBC(void *a1)
{
  v3 = v1;
  v17 = *v1;
  v18 = v2;
  v5 = sub_1CF9E5CF8();
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAF8, &qword_1CF9FFBA8);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255EA4();
  v15 = v10;
  v11 = v18;
  sub_1CF9E8298();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = a1;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    v20 = 0;
    sub_1CF25529C(&qword_1EC4BEAC0, type metadata accessor for fpfs_tempfile_pattern_t, &protocol conformance descriptor for fpfs_tempfile_pattern_t);
    v12 = v15;
    sub_1CF9E7D88();
    *(v3 + 4) = v19[0];
    LOBYTE(v19[0]) = 1;
    *(v3 + 5) = sub_1CF9E7DD8();
    LOBYTE(v19[0]) = 2;
    sub_1CF25529C(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CF9E7D88();
    (*(v14 + 32))(v3 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v7, v5);
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v19);
    (*(v8 + 8))(v12, v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return v3;
}

uint64_t sub_1CF2522B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAE8, &qword_1CF9FFBA0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255EA4();
  sub_1CF9E82A8();
  LODWORD(v17[0]) = *(v2 + 16);
  v18 = 0;
  type metadata accessor for fpfs_tempfile_pattern_t(0);
  sub_1CF25529C(&qword_1EC4BEA90, type metadata accessor for fpfs_tempfile_pattern_t, &protocol conformance descriptor for fpfs_tempfile_pattern_t);
  v11 = v16;
  sub_1CF9E7F08();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v12 = v15;
  v16 = v4;
  LOBYTE(v17[0]) = 1;
  sub_1CF9E7F58();
  LOBYTE(v17[0]) = 2;
  sub_1CF9E5CF8();
  sub_1CF25529C(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  v14 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v12 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1CF252608(uint64_t a1)
{
  if (*a1 != _TtC18FileProviderDaemon23VFSTrackingContinuation)
  {
    return 0xD000000000000019;
  }

  if (*(v1 + 20) != *(a1 + 20))
  {
    return 0xD000000000000011;
  }

  sub_1CF9E5CF8();
  sub_1CF25529C(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);

  v2 = sub_1CF9E6868();

  if (v2)
  {
    return 0;
  }

  else
  {
    return 0x696D2D656D69746DLL;
  }
}

uint64_t sub_1CF2527A0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A706D743CLL, 0xE500000000000000);
  v1 = fpfs_tempfile_pattern_t.description.getter(*(v0 + 16));
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](0x6E756F636E656720, 0xEA00000000003A74);
  v22 = *(v0 + 20);
  v11 = sub_1CF9E7F98();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](980708640, 0xE400000000000000);
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return HIDWORD(v22);
}

uint64_t sub_1CF2528C4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
  v2 = sub_1CF9E5CF8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1CF25292C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
  v2 = sub_1CF9E5CF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2529F0(uint64_t a1)
{
  result = sub_1CF9E5CF8();
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

void sub_1CF252A90(uint64_t a1)
{
  type metadata accessor for ItemMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_1CF24F8BC(319, &qword_1EDEAEEE0, &type metadata for ItemNonSyncableAttributes);
    if (v2 <= 0x3F)
    {
      type metadata accessor for fpfs_tempfile_pattern_t(319);
      if (v3 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEAED08, MEMORY[0x1E69E72F0]);
        if (v4 <= 0x3F)
        {
          sub_1CF252BD0(319);
          if (v5 <= 0x3F)
          {
            sub_1CF24F8BC(319, &qword_1EDEAED00, MEMORY[0x1E69E7668]);
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

void sub_1CF252BD0(uint64_t a1)
{
  if (!qword_1EDEAFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAFE10);
    }
  }
}

unint64_t sub_1CF252C44(void *a1)
{
  a1[2] = sub_1CF1E10C4();
  a1[3] = sub_1CF1E1070();
  result = sub_1CF252C7C();
  a1[4] = result;
  return result;
}

unint64_t sub_1CF252C7C()
{
  result = qword_1EDEAE9A0;
  if (!qword_1EDEAE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE9A0);
  }

  return result;
}

uint64_t sub_1CF252CF4()
{
  v1 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 8))
  {
    return 0;
  }

  v4 = *(v0 + v1[10]);
  if (v4 <= 0xB)
  {
    if (((1 << v4) & 0xC8E) != 0 || ((1 << v4) & 0x370) != 0)
    {
      sub_1CF0015AC(v0, v3, type metadata accessor for VFSItem);
      type metadata accessor for VFSTrackingContinuation(0);
      v5 = swift_allocObject();
      *(v5 + 16) = *&v3[v1[10]];
      *(v5 + 20) = *&v3[v1[9] + 8];
      v6 = v1[7];
      v7 = v6 + *(type metadata accessor for ItemMetadata(0) + 32);
      v8 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
      v9 = sub_1CF9E5CF8();
      (*(*(v9 - 8) + 16))(v5 + v8, &v3[v7], v9);
      sub_1CF007B38(v3, type metadata accessor for VFSItem);
    }

    return v4;
  }

  type metadata accessor for fpfs_tempfile_pattern_t(0);
  v11[3] = v4;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF252F6C()
{
  v83 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + v1[7]);
  v9 = type metadata accessor for ItemMetadata(0);
  if (v8[*(v9 + 80)] != 1 || *v8 || (v8[*(v9 + 112)] & 1) != 0)
  {
    return 0;
  }

  v74 = MEMORY[0x1E69E7CC0];
  v17 = v0 + v1[9];
  v18 = *v17;
  v19 = v0 + v1[14];
  if (*(v19 + 4))
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  v21 = *(v17 + 8);
  0, v10, v11, v12, v13, v14, v15, v16;
  v77 = v18;
  v78 = 0;
  v79 = v20;
  v80 = v21;
  v81 = 0;
  v82 = 0;
  v73 = -1;
  v22 = fpfs_openfdbyhandle();
  if (v22 < 0)
  {
    v31 = v73;
    v32 = MEMORY[0x1D38683F0]();
    if (v31 < 0)
    {
      LODWORD(v75[0]) = 0;
      BYTE4(v75[0]) = 1;
    }

    else
    {
      LODWORD(v75[0]) = v73;
      BYTE4(v75[0]) = 0;
    }

    v76 = 0;
    v41 = sub_1CF19BBE4(v32, v75);
    sub_1CF1969CC(v75);
    swift_willThrow();
    0, v42, v43, v44, v45, v46, v47, v48;
    v49 = v41;
    LODWORD(v75[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0015AC(v0, v3, type metadata accessor for VFSItem);
    v51 = v41;
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v75[0] = v70;
      *v54 = 136315394;
      v55 = sub_1CF255338();
      v57 = v56;
      sub_1CF007B38(v3, type metadata accessor for VFSItem);
      v58 = sub_1CEFD0DF0(v55, v57, v75);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v54 + 4) = v58;
      *(v54 + 12) = 2112;
      swift_getErrorValue();
      v66 = Error.prettyDescription.getter(v71, v72);
      *(v54 + 14) = v66;
      v67 = v69;
      *v69 = v66;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "Unable to create extent map for %s : %@", v54, 0x16u);
      sub_1CEFCCC44(v67, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v67, -1, -1);
      v68 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1D386CDC0](v68, -1, -1);
      MEMORY[0x1D386CDC0](v54, -1, -1);
    }

    else
    {

      sub_1CF007B38(v3, type metadata accessor for VFSItem);
    }

    (*(v5 + 8))(v7, v4);
    result = v74;
    goto LABEL_18;
  }

  v30 = v22;
  0, v23, v24, v25, v26, v27, v28, v29;
  sub_1CF253424(v30, v0, &v74);
  close(v30);
  result = v74;
  if (!*v74->tree)
  {
LABEL_18:
    result, v33, v34, v35, v36, v37, v38, v39;
    return 0;
  }

  return result;
}

void sub_1CF253424(int a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester **a3)
{
  v7 = sub_1CF9E53C8();
  v134 = *(v7 - 8);
  v135 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v131 = *(v9 - 8);
  v132 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v128 - v13;
  v14 = a2 + *(type metadata accessor for VFSItem(0) + 28);
  v15 = *(v14 + *(type metadata accessor for ItemMetadata(0) + 104));
  v16 = lseek(a1, 0, 4);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v129 = v11;
    while (1)
    {
      v17 = lseek(a1, v16, 3);
      v22 = v17;
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v17 == v15)
      {
        v22 = v15;
        v3 = v16;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        return;
      }

      if (v17 < v16)
      {
        __break(1u);
        goto LABEL_40;
      }

      v23 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1CF1F6594(0, *v23->tree + 1, 1, v23, v25, v26, v27, v28);
        *a3 = v23;
      }

      v30 = *v23->tree;
      v29 = *v23->tester;
      if (v30 >= v29 >> 1)
      {
        v23 = sub_1CF1F6594((v29 > 1), v30 + 1, 1, v23, v25, v26, v27, v28);
        *a3 = v23;
      }

      *v23->tree = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 4) = v16;
      *(v31 + 5) = v22;
      v16 = lseek(a1, v22, 4);
      v3 = v22;
      if (v16 < 0)
      {
        goto LABEL_13;
      }
    }

    if (MEMORY[0x1D38683F0]())
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v41 = sub_1CF9E6138();
        if ((v41 & 0x100000000) != 0)
        {
          LODWORD(v136) = 22;
        }

        else
        {
          LODWORD(v136) = v41;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v42 = v133;
        v43 = v135;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v134 + 8))(v42, v43);
      }

      swift_willThrow();
      return;
    }

    v136 = 0;
    v137 = 0xE000000000000000;
    sub_1CF9E7948();
    v137, v86, v87, v88, v89, v90, v91, v92;
    v136 = 0xD00000000000001ALL;
    v137 = 0x80000001CFA2DF30;
    v138 = v22;
    v93 = sub_1CF9E7F98();
    v95 = v94;
    MEMORY[0x1D3868CC0](v93);
    v95, v96, v97, v98, v99, v100, v101, v102;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v103 = v136;
    v104 = v137;
    v105 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v106 = sub_1CF9E6108();
    v107 = sub_1CF9E72B8();
    v104, v108, v109, v110, v111, v112, v113, v114;
    if (os_log_type_enabled(v106, v107))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v136 = v116;
      *v115 = 136315650;
      v117 = sub_1CF9E7988();
      v119 = v118;
      v120 = sub_1CEFD0DF0(v117, v118, &v136);
      v119, v121, v122, v123, v124, v125, v126, v127;
      *(v115 + 4) = v120;
      *(v115 + 12) = 2048;
      *(v115 + 14) = 315;
      *(v115 + 22) = 2080;
      *(v115 + 24) = sub_1CEFD0DF0(v103, v104, &v136);
      _os_log_impl(&dword_1CEFC7000, v106, v107, "[ASSERT] ‼️  %s:%lu: %s", v115, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v116, -1, -1);
      MEMORY[0x1D386CDC0](v115, -1, -1);
    }

    (*(v131 + 8))(v129, v132);
    goto LABEL_48;
  }

  v3 = -1;
  v22 = v15;
LABEL_13:
  if (!MEMORY[0x1D38683F0]())
  {
    v136 = 0;
    v137 = 0xE000000000000000;
    sub_1CF9E7948();
    v137, v44, v45, v46, v47, v48, v49, v50;
    v136 = 0xD00000000000001ALL;
    v137 = 0x80000001CFA2DF30;
    v138 = v16;
    v51 = sub_1CF9E7F98();
    v53 = v52;
    MEMORY[0x1D3868CC0](v51);
    v53, v54, v55, v56, v57, v58, v59, v60;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v61 = v136;
    v62 = v137;
    v63 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v64 = sub_1CF9E6108();
    v65 = sub_1CF9E72B8();
    v62, v66, v67, v68, v69, v70, v71, v72;
    if (os_log_type_enabled(v64, v65))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v136 = v74;
      *v73 = 136315650;
      v75 = sub_1CF9E7988();
      v77 = v76;
      v78 = sub_1CEFD0DF0(v75, v76, &v136);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v73 + 4) = v78;
      *(v73 + 12) = 2048;
      *(v73 + 14) = 315;
      *(v73 + 22) = 2080;
      *(v73 + 24) = sub_1CEFD0DF0(v61, v62, &v136);
      _os_log_impl(&dword_1CEFC7000, v64, v65, "[ASSERT] ‼️  %s:%lu: %s", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v74, -1, -1);
      MEMORY[0x1D386CDC0](v73, -1, -1);
    }

    (*(v131 + 8))(v130, v132);
LABEL_48:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  if (MEMORY[0x1D38683F0]() == 9939394)
  {
    v16 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
  }

  else
  {
    MEMORY[0x1D38683F0]();
    v32 = sub_1CF9E6138();
    if ((v32 & 0x100000000) != 0)
    {
      LODWORD(v136) = 22;
    }

    else
    {
      LODWORD(v136) = v32;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v33 = v133;
    v34 = v135;
    sub_1CF9E57D8();
    v16 = sub_1CF9E53A8();
    (*(v134 + 8))(v33, v34);
  }

  swift_willThrow();
  v35 = v16;
  LODWORD(v136) = sub_1CF9E52A8();
  sub_1CF196978();
  v36 = sub_1CF9E5658();

  if (v36)
  {

    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_27:
      if (v3 == v22)
      {
        return;
      }

      if (v22 < v3)
      {
LABEL_40:
        __break(1u);
      }

      else
      {
        v16 = *a3;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v16;
        if (v37)
        {
LABEL_30:
          v39 = *(v16 + 16);
          v38 = *(v16 + 24);
          if (v39 >= v38 >> 1)
          {
            v16 = sub_1CF1F6594((v38 > 1), v39 + 1, 1, v16, v18, v19, v20, v21);
            *a3 = v16;
          }

          *(v16 + 16) = v39 + 1;
          v40 = (v16 + 16 * v39);
          *(v40 + 4) = v3;
          *(v40 + 5) = v22;
          return;
        }
      }

      v16 = sub_1CF1F6594(0, *(v16 + 16) + 1, 1, v16, v18, v19, v20, v21);
      *a3 = v16;
      goto LABEL_30;
    }
  }
}

uint64_t sub_1CF253D7C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 1701667182;
    v8 = 0x617461646174656DLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4449746E65726170;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5255646568636163;
    v2 = 0x4449656369766564;
    if (a1 != 9)
    {
      v2 = 0x4449636F64;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x56746E65746E6F63;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CF253EE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA70, &qword_1CF9FFB78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2551F4();
  sub_1CF9E82A8();
  v9 = *(v3 + 8);
  *&v68[0] = *v3;
  BYTE8(v68[0]) = v9;
  LOBYTE(v52) = 0;
  sub_1CF255248();
  sub_1CF9E7F08();
  if (!v2)
  {
    v10 = *(v3 + 24);
    *&v68[0] = *(v3 + 16);
    BYTE8(v68[0]) = v10;
    LOBYTE(v52) = 1;
    sub_1CF9E7F08();
    v11 = *(v3 + 40);
    *&v68[0] = *(v3 + 32);
    *(&v68[0] + 1) = v11;
    LOBYTE(v52) = 2;
    sub_1CF1E60E8();

    sub_1CF9E7F08();
    *(&v68[0] + 1), v12, v13, v14, v15, v16, v17, v18;
    v19 = type metadata accessor for VFSItem(0);
    v83[0] = 3;
    type metadata accessor for ItemMetadata(0);
    sub_1CF25529C(&qword_1EC4BEA80, type metadata accessor for ItemMetadata, &unk_1CFA0F9C8);
    sub_1CF9E7F08();
    v20 = (v3 + v19[8]);
    v21 = v20[13];
    v22 = v20[11];
    v79 = v20[12];
    v80 = v21;
    v23 = v20[13];
    v81 = v20[14];
    v24 = v20[9];
    v25 = v20[7];
    v75 = v20[8];
    v76 = v24;
    v26 = v20[9];
    v27 = v20[11];
    v77 = v20[10];
    v78 = v27;
    v28 = v20[5];
    v29 = v20[3];
    v71 = v20[4];
    v72 = v28;
    v30 = v20[5];
    v31 = v20[7];
    v73 = v20[6];
    v74 = v31;
    v32 = v20[1];
    v68[0] = *v20;
    v68[1] = v32;
    v33 = v20[3];
    v35 = *v20;
    v34 = v20[1];
    v69 = v20[2];
    v70 = v33;
    v64 = v79;
    v65 = v23;
    v66 = v20[14];
    v60 = v75;
    v61 = v26;
    v62 = v77;
    v63 = v22;
    v56 = v71;
    v57 = v30;
    v58 = v73;
    v59 = v25;
    v52 = v35;
    v53 = v34;
    v82 = *(v20 + 30);
    v67 = *(v20 + 30);
    v54 = v69;
    v55 = v29;
    v51 = 4;
    sub_1CEFCCBDC(v68, v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CF2552E4();
    sub_1CF9E7E68();
    v49[12] = v64;
    v49[13] = v65;
    v49[14] = v66;
    v50 = v67;
    v49[8] = v60;
    v49[9] = v61;
    v49[10] = v62;
    v49[11] = v63;
    v49[4] = v56;
    v49[5] = v57;
    v49[6] = v58;
    v49[7] = v59;
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v49[3] = v55;
    sub_1CEFCCC44(v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v36 = (v3 + v19[9]);
    v37 = *v36;
    v38 = *(v36 + 2);
    v39 = v36[2];
    LOBYTE(v36) = *(v36 + 24);
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v36;
    v44 = 5;
    sub_1CF1E1070();
    sub_1CF9E7F08();
    LODWORD(v45) = *(v3 + v19[10]);
    v44 = 6;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    sub_1CF25529C(&qword_1EC4BEA90, type metadata accessor for fpfs_tempfile_pattern_t, &protocol conformance descriptor for fpfs_tempfile_pattern_t);
    sub_1CF9E7F08();
    v40 = *(v3 + v19[11] + 4);
    LOBYTE(v45) = 7;
    v44 = v40;
    sub_1CF9E7E78();
    LOBYTE(v45) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF255A24(&qword_1EC4BEA98, &qword_1EC4BEAA0, MEMORY[0x1E6968FB8], MEMORY[0x1E69E7C70]);
    sub_1CF9E7E68();
    LOBYTE(v45) = 9;
    sub_1CF9E7F18();
    v41 = *(v3 + v19[14] + 4);
    LOBYTE(v45) = 10;
    v44 = v41;
    sub_1CF9E7E98();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF25453C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v43 - v4;
  v47 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAA8, &unk_1CF9FFB80);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 56);
  v76 = v12;
  v53 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CF2551F4();
  v50 = v9;
  v18 = v51;
  sub_1CF9E8298();
  if (v18)
  {
    v19 = v76;
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_1CEFCCC44(v19 + v53, &unk_1EC4BED30, &unk_1CFA00710);
  }

  else
  {
    v51 = v15;
    LOBYTE(v55) = 0;
    sub_1CF25597C();
    sub_1CF9E7D88();
    v20 = BYTE8(v60);
    v21 = v76;
    *v76 = v60;
    *(v21 + 8) = v20;
    LOBYTE(v55) = 1;
    sub_1CF9E7D88();
    v22 = BYTE8(v60);
    v21[2] = v60;
    *(v21 + 24) = v22;
    LOBYTE(v55) = 2;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v23 = *(&v60 + 1);
    v21[4] = v60;
    v21[5] = v23;
    LOBYTE(v60) = 3;
    sub_1CF25529C(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata, &unk_1CFA0FA40);
    sub_1CF9E7D88();
    sub_1CEFE4874(v6, v21 + v10[7]);
    v59 = 4;
    sub_1CF2559D0();
    v47 = 0;
    sub_1CF9E7CF8();
    v24 = v21 + v10[8];
    v25 = v73;
    *(v24 + 12) = v72;
    *(v24 + 13) = v25;
    *(v24 + 14) = v74;
    *(v24 + 30) = v75;
    v26 = v69;
    *(v24 + 8) = v68;
    *(v24 + 9) = v26;
    v27 = v71;
    *(v24 + 10) = v70;
    *(v24 + 11) = v27;
    v28 = v65;
    *(v24 + 4) = v64;
    *(v24 + 5) = v28;
    v29 = v67;
    *(v24 + 6) = v66;
    *(v24 + 7) = v29;
    v30 = v61;
    *v24 = v60;
    *(v24 + 1) = v30;
    v31 = v63;
    *(v24 + 2) = v62;
    *(v24 + 3) = v31;
    v54 = 5;
    sub_1CF1E10C4();
    sub_1CF9E7D88();
    v32 = v56;
    v33 = v57;
    v34 = v58;
    v35 = v21 + v10[9];
    *v35 = v55;
    *(v35 + 2) = v32;
    *(v35 + 2) = v33;
    v35[24] = v34;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    v54 = 6;
    sub_1CF25529C(&qword_1EC4BEAC0, type metadata accessor for fpfs_tempfile_pattern_t, &protocol conformance descriptor for fpfs_tempfile_pattern_t);
    sub_1CF9E7D88();
    v44 = v10;
    *(v21 + v10[10]) = v55;
    LOBYTE(v55) = 7;
    v36 = sub_1CF9E7D08();
    v37 = v21 + v44[11];
    *v37 = v36;
    v37[4] = BYTE4(v36) & 1;
    LOBYTE(v55) = 8;
    sub_1CF255A24(&qword_1EC4BEAC8, &unk_1EDEAB400, MEMORY[0x1E6968FD0], MEMORY[0x1E69E7C88]);
    v38 = v46;
    sub_1CF9E7CF8();
    sub_1CF255AC0(v38, v21 + v53);
    LOBYTE(v55) = 9;
    *(v76 + v10[13]) = sub_1CF9E7D98();
    LOBYTE(v55) = 10;
    v39 = sub_1CF9E7D28();
    (*(v48 + 8))(v50, v49);
    v40 = v76;
    v41 = v76 + v10[14];
    *v41 = v39;
    v41[4] = BYTE4(v39) & 1;
    sub_1CF0015AC(v40, v45, type metadata accessor for VFSItem);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_1CF007B38(v40, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF254E0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF2564A0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF254E40(uint64_t a1)
{
  v2 = sub_1CF2551F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF254E7C(uint64_t a1)
{
  v2 = sub_1CF2551F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF254EB8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void sub_1CF254ECC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

double sub_1CF254EE0@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

double sub_1CF254F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v7;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;

  return result;
}

uint64_t sub_1CF254F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[13];
  v5 = v3[11];
  v37 = v3[12];
  v38 = v4;
  v6 = v3[13];
  v39 = v3[14];
  v7 = v3[9];
  v9 = v3[7];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v10 = v3[9];
  v11 = v3[11];
  v35 = v3[10];
  v12 = v35;
  v36 = v11;
  v13 = v3[5];
  v15 = v3[3];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v16 = v3[5];
  v17 = v3[7];
  v31 = v3[6];
  v18 = v31;
  v32 = v17;
  v19 = v3[1];
  v26[0] = *v3;
  v26[1] = v19;
  v20 = v3[3];
  v22 = *v3;
  v21 = v3[1];
  v27 = v3[2];
  v23 = v27;
  v28 = v20;
  *(a2 + 192) = v37;
  *(a2 + 208) = v6;
  *(a2 + 224) = v3[14];
  *(a2 + 128) = v8;
  *(a2 + 144) = v10;
  *(a2 + 160) = v12;
  *(a2 + 176) = v5;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = v18;
  *(a2 + 112) = v9;
  *a2 = v22;
  *(a2 + 16) = v21;
  v40 = *(v3 + 30);
  *(a2 + 240) = *(v3 + 30);
  *(a2 + 32) = v23;
  *(a2 + 48) = v15;
  return sub_1CEFCCBDC(v26, v25, &qword_1EC4BECF0, &unk_1CF9FEEB0);
}

unint64_t sub_1CF255088()
{
  result = qword_1EDEAE990;
  if (!qword_1EDEAE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE990);
  }

  return result;
}

unint64_t sub_1CF2550E0()
{
  result = qword_1EDEAB740;
  if (!qword_1EDEAB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB740);
  }

  return result;
}

unint64_t sub_1CF255138()
{
  result = qword_1EDEAD980[0];
  if (!qword_1EDEAD980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD980);
  }

  return result;
}

uint64_t sub_1CF25519C(uint64_t a1)
{
  result = sub_1CF25529C(&qword_1EDEAEED0, type metadata accessor for VFSItem, &unk_1CF9FFAB0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF2551F4()
{
  result = qword_1EC4BEA78;
  if (!qword_1EC4BEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEA78);
  }

  return result;
}

unint64_t sub_1CF255248()
{
  result = qword_1EDEAB768[0];
  if (!qword_1EDEAB768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAB768);
  }

  return result;
}

uint64_t sub_1CF25529C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF2552E4()
{
  result = qword_1EC4BEA88;
  if (!qword_1EC4BEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEA88);
  }

  return result;
}

uint64_t sub_1CF255338()
{
  v1 = v0;
  v2 = type metadata accessor for VFSItem(0);
  v3 = v0 + *(v2 + 32);
  v4 = *(v3 + 208);
  v146[12] = *(v3 + 192);
  v146[13] = v4;
  v146[14] = *(v3 + 224);
  v147 = *(v3 + 240);
  v5 = *(v3 + 144);
  v146[8] = *(v3 + 128);
  v146[9] = v5;
  v6 = *(v3 + 176);
  v146[10] = *(v3 + 160);
  v146[11] = v6;
  v7 = *(v3 + 80);
  v146[4] = *(v3 + 64);
  v146[5] = v7;
  v8 = *(v3 + 112);
  v146[6] = *(v3 + 96);
  v146[7] = v8;
  v9 = *(v3 + 48);
  v146[2] = *(v3 + 32);
  v146[3] = v9;
  v10 = *(v3 + 16);
  v146[0] = *v3;
  v146[1] = v10;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v146) == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = ItemNonSyncableAttributes.description.getter();
    v15 = v14;
    MEMORY[0x1D3868CC0](v13);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v12 = 0xE800000000000000;
    v11 = 0x3A72747461736E20;
  }

  v23 = sub_1CF252CF4();
  v129 = v11;
  v130 = v12;
  if (v24 >> 62)
  {
    if (v24 >> 62 != 1)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      goto LABEL_10;
    }

    v25 = v23;
    sub_1CF07638C(v23, v24);
    v26 = 1886221352;
  }

  else
  {
    v25 = v23;
    sub_1CF07638C(v23, v24);
    v26 = 1852270888;
  }

  v131 = v26 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
  v27 = fpfs_tempfile_pattern_t.description.getter(v25);
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v38 = 0xE500000000000000;
  v37 = v131;
LABEL_10:
  sub_1CF9E7948();
  0xE000000000000000, v39, v40, v41, v42, v43, v44, v45;
  v46 = *(v1 + 8);
  v134 = *v1;
  LOBYTE(v135) = v46;
  v48 = VFSItemID.description.getter(v47);
  v50 = v49;
  MEMORY[0x1D3868CC0](v48);
  v50, v51, v52, v53, v54, v55, v56, v57;
  v58 = MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v59 = *(v1 + 24);
  v134 = v1[2];
  LOBYTE(v135) = v59;
  v60 = VFSItemID.description.getter(v58);
  v62 = v61;
  MEMORY[0x1D3868CC0](v60);
  v62, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v70 = sub_1CF9E6888();
  v71 = [v70 fp_obfuscatedFilename];

  v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v74 = v73;

  MEMORY[0x1D3868CC0](v72, v74);
  v74, v75, v76, v77, v78, v79, v80, v81;
  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v37, v38);
  v38, v82, v83, v84, v85, v86, v87, v88;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v89 = sub_1CF0720C8();
  v91 = v90;
  MEMORY[0x1D3868CC0](v89);
  v91, v92, v93, v94, v95, v96, v97, v98;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v99 = (v1 + *(v2 + 36));
  v100 = *v99;
  LODWORD(v71) = *(v99 + 2);
  v101 = v99[2];
  LOBYTE(v74) = *(v99 + 24);
  v102 = v1[2];
  v103 = *(v1 + 24);
  v105 = v1[4];
  v104 = v1[5];

  v132 = sub_1CF680064();
  v133 = v106;
  v134 = v100;
  v135 = v71;
  v136 = v101;
  v137 = v74;
  v138 = 0;
  v139 = v102;
  v140 = v103;
  v141 = v105;
  v142 = v104;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  sub_1CEFCCC44(&v134, &unk_1EC4BE330, &unk_1CF9FF010);
  MEMORY[0x1D3868CC0](v129, v130);
  v130, v107, v108, v109, v110, v111, v112, v113;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v132, v133);
  0xE300000000000000, v114, v115, v116, v117, v118, v119, v120;
  v133, v121, v122, v123, v124, v125, v126, v127;
  return 3828028;
}

uint64_t sub_1CF255768()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  *&xmmword_1EDEBBE48 = result;
  *(&xmmword_1EDEBBE48 + 1) = v1;
  return result;
}

uint64_t sub_1CF2557F8()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  qword_1EDEBB698 = result;
  unk_1EDEBB6A0 = v1;
  return result;
}

uint64_t sub_1CF255890()
{
  sub_1CEFE4E68();
  result = sub_1CF9E7668();
  qword_1EC4EBC98 = result;
  unk_1EC4EBCA0 = v1;
  return result;
}

unint64_t sub_1CF25597C()
{
  result = qword_1EDEAB750;
  if (!qword_1EDEAB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB750);
  }

  return result;
}

unint64_t sub_1CF2559D0()
{
  result = qword_1EC4BEAB8;
  if (!qword_1EC4BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAB8);
  }

  return result;
}

uint64_t sub_1CF255A24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF25529C(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF255AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF255B30(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x4449656C6966 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746E756F436E6567 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CF255C44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAD0, &qword_1CF9FFB90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1CF255E20();
  sub_1CF9E8298();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1CF9E7DE8();
    v11 = 1;
    sub_1CF9E7DD8();
    v10 = 2;
    sub_1CF9E7D18();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1CF255E20()
{
  result = qword_1EC4BEAD8;
  if (!qword_1EC4BEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAD8);
  }

  return result;
}

unint64_t sub_1CF255EA4()
{
  result = qword_1EC4BEAF0;
  if (!qword_1EC4BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEAF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VFSItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFSItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF25606C()
{
  result = qword_1EC4BEB00;
  if (!qword_1EC4BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB00);
  }

  return result;
}

unint64_t sub_1CF2560C4()
{
  result = qword_1EC4BEB08;
  if (!qword_1EC4BEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB08);
  }

  return result;
}

unint64_t sub_1CF25611C()
{
  result = qword_1EC4BEB10;
  if (!qword_1EC4BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB10);
  }

  return result;
}

unint64_t sub_1CF256174()
{
  result = qword_1EC4BEB18;
  if (!qword_1EC4BEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB18);
  }

  return result;
}

unint64_t sub_1CF2561CC()
{
  result = qword_1EC4BEB20;
  if (!qword_1EC4BEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB20);
  }

  return result;
}

unint64_t sub_1CF256224()
{
  result = qword_1EC4BEB28;
  if (!qword_1EC4BEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB28);
  }

  return result;
}

unint64_t sub_1CF25627C()
{
  result = qword_1EC4BEB30;
  if (!qword_1EC4BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB30);
  }

  return result;
}

unint64_t sub_1CF2562D4()
{
  result = qword_1EC4BEB38;
  if (!qword_1EC4BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB38);
  }

  return result;
}

unint64_t sub_1CF25632C()
{
  result = qword_1EC4BEB40;
  if (!qword_1EC4BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEB40);
  }

  return result;
}

uint64_t sub_1CF256380(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746E756F436E6567 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFA3C820 == a2)
  {
    a2, 0x80000001CFA3C820, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CF2564A0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v9 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = 0x80000001CFA3C8F0;
    if (a1 == 0xD000000000000015 && 0x80000001CFA3C8F0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = 0xEE006E6F69737265;
      if (a1 == 0x56746E65746E6F63 && a2 == 0xEE006E6F69737265 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 5;
      }

      else
      {
        v14 = 0x80000001CFA3C910;
        if (a1 == 0xD000000000000010 && 0x80000001CFA3C910 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else
        {
          v15 = 0x80000001CFA3C930;
          if (a1 == 0xD000000000000013 && 0x80000001CFA3C930 == a2 || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 7;
          }

          else if (a1 == 0x5255646568636163 && a2 == 0xE90000000000004CLL || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 8;
          }

          else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 9;
          }

          else if (a1 == 0x4449636F64 && a2 == 0xE500000000000000)
          {
            0xE500000000000000, v15, a3, a4, a5, a6, a7, a8;
            return 10;
          }

          else
          {
            v16 = sub_1CF9E8048();
            a2, v17, v18, v19, v20, v21, v22, v23;
            if (v16)
            {
              return 10;
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CF25682C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  sub_1CF053478(a2, v51);
  v8 = v52;
  if (v52)
  {
    v9 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(v51);
    if (v5 == v10 && v7 == v12)
    {
      v7, v13, v14, v15, v16, v17, v18, v19;
      v12, v43, v44, v45, v46, v47, v48, v49;
      v21 = 1;
    }

    else
    {
      v21 = sub_1CF9E8048();
      v7, v22, v23, v24, v25, v26, v27, v28;
      v12, v29, v30, v31, v32, v33, v34, v35;
    }
  }

  else
  {
    sub_1CEFCCC44(v51, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v7, v36, v37, v38, v39, v40, v41, v42;
    v21 = 0;
  }

  return v21 & 1;
}

void sub_1CF256970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF256AB4, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1CF257848(sub_1CF25A310);
    sub_1CEFD57E0(0, &unk_1EC4BEB58, 0x1E6967360);
    v11 = sub_1CF9E6D28();
    v10, v12, v13, v14, v15, v16, v17, v18;
    [a1 setItemsPendingReconciliation_];
  }
}

uint64_t sub_1CF256AB4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D7, 0x80000001CFA3CF70);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA3D050);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA3D070);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA3D090);
  return 0;
}

void sub_1CF256C14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void (*a5)(id, _OWORD *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v197 = a7;
  v198 = a8;
  v200 = a5;
  v201 = a6;
  v195 = a4;
  v203 = a9;
  v13 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E5268();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x1E6967360]) init];
  sub_1CEFE9AC4([a1 longAtIndex_], v204);
  if (!v9)
  {
    v191 = v19;
    v192 = v15;
    v194 = a3;
    v193 = a2;
    v196 = v20;
    v24 = *&v204[0];
    v199 = BYTE8(v204[0]);
    v202 = 0;
    if (BYTE8(v204[0]) != 2 || *&v204[0])
    {
      v22 = v196;
      v26 = v17;
      if (v199 == 2 && *&v204[0] == 1)
      {
        v25 = *MEMORY[0x1E6967280];
      }

      else
      {
        *&v204[0] = 0x2F73662F70665F5FLL;
        *(&v204[0] + 1) = 0xE800000000000000;
        v206 = v24;
        v207 = v199;
        v27 = VFSItemID.description.getter(v21);
        v29 = v28;
        MEMORY[0x1D3868CC0](v27);
        v29, v30, v31, v32, v33, v34, v35, v36;
        v37 = *(&v204[0] + 1);
        v25 = sub_1CF9E6888();
        v37, v38, v39, v40, v41, v42, v43, v44;
      }
    }

    else
    {
      v25 = *MEMORY[0x1E6967258];
      v22 = v196;
      v26 = v17;
    }

    [v22 setItemIdentifier_];

    [v22 setItemPendingReconciliationIsLockedInDB_];
    v45 = [a1 isNullAtIndex_];
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = [a1 integerAtIndex_];
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_14;
    }

    v54 = [a1 dataAtIndex_];
    v55 = sub_1CF9E5B88();
    v57 = v56;

    v58 = v202;
    sub_1CF4C2898(v55, v57);
    if (v58)
    {

      sub_1CEFE4714(v55, v57);
      v52 = 0;
      v202 = 0;
      v22 = v196;
    }

    else
    {
      v60 = v59;
      v202 = 0;
      sub_1CEFE4714(v55, v57);
      v22 = v196;
      v52 = v60;
      if (!v60)
      {
LABEL_14:
        sub_1CF9E5198();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v47 = v24;
        v48 = v46;
        v49 = v191;
        sub_1CF9E57D8();
        v50 = sub_1CF9E50D8();
        v51 = v49;
        v46 = v48;
        v24 = v47;
        v52 = v50;
        (*(v26 + 8))(v51, v16);
      }
    }

    if (!v45)
    {
      [v22 setItemPendingReconciliationJobSchedulingState_];
      v85 = sub_1CF043D7C(v46);
      if (v85 == 89)
      {
        v86 = -1;
      }

      else
      {
        v86 = qword_1CF9FFF10[v85];
      }

      v84 = v200;
      v23 = v203;
      [v22 setItemPendingReconciliationJobCode_];
      goto LABEL_55;
    }

    v61 = *(v193 + 24);
    *&v204[0] = v24;
    BYTE8(v204[0]) = v199;
    sub_1CF8DCAA0(v53);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1CF9FA450;
    *(v62 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA10, &qword_1CF9FADD8);
    v64 = v197;
    v63 = v198;
    v65 = v202;
    v66 = (*(*v61 + 312))(v204, v62, v194, v197, v198);
    if (v65)
    {

      v62, v74, v75, v76, v77, v78, v79, v80;
      v202 = 0;
      v23 = v203;
      v81 = v194;
    }

    else
    {
      v87 = v66;
      v202 = 0;
      v62, v67, v68, v69, v70, v71, v72, v73;
      if (v87 >> 62)
      {
        v95 = sub_1CF9E7818();
      }

      else
      {
        v95 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v203;
      v81 = v194;
      if (v95)
      {
        v190 = v24;
        if ((v87 & 0xC000000000000001) != 0)
        {
          v96 = MEMORY[0x1D3869C30](0, v87);
        }

        else
        {
          if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            MEMORY[0x1EEE9AC00](v95);
            *(&v189 - 2) = v23;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v189 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v96 = *(v87 + 32);
        }

        v104 = v52;
        v87, v97, v98, v99, v100, v101, v102, v103;
        [v22 setItemPendingReconciliationJobCode_];
        v105 = *(v96 + 96);
        v106 = *(v96 + 104);
        v107 = *(v96 + 112);
        sub_1CF03C530(v105, v106, *(v96 + 112));
        v108 = 0;
LABEL_37:
        v110 = v23;
        sub_1CF03C530(v105, v106, v107);
        sub_1CF201778(v105, v106, v107);
        v23 = *(v193 + 136);
        v95 = objc_sync_enter(v23);
        if (v95)
        {
          goto LABEL_79;
        }

        swift_beginAccess();
        v111 = v23[2];

        v112 = objc_sync_exit(v23);
        if (v112)
        {
          MEMORY[0x1EEE9AC00](v112);
          *(&v189 - 2) = v23;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v189 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        if (v108)
        {
          v205 = 0;
          memset(v204, 0, sizeof(v204));
        }

        else
        {
          swift_beginAccess();
          v112 = sub_1CF053478(v96 + 56, v204);
        }

        v120 = v202;
        if (v107 <= 1)
        {
          if (v107)
          {
            v111, v113, v114, v115, v116, v117, v118, v119;
            v121 = 0;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v112);
            *(&v189 - 2) = v204;
            sub_1CF7F7140(sub_1CF25A338, (&v189 - 4), v111, sub_1CF066914, 0);
            v123 = v122;
            v202 = v120;
            v111, v124, v125, v126, v127, v128, v129, v130;
            v121 = v123 & 1;
          }
        }

        else if (v107 == 2)
        {
          v111, v113, v114, v115, v116, v117, v118, v119;
          v121 = 2;
        }

        else if (v107 == 3)
        {
          v111, v113, v114, v115, v116, v117, v118, v119;
          v121 = 3;
        }

        else
        {
          v111, v113, v114, v115, v116, v117, v118, v119;
          if (v105 | v106)
          {
            v121 = 5;
          }

          else
          {
            v121 = 4;
          }
        }

        sub_1CEFCCC44(v204, &unk_1EC4C1BE0, &unk_1CF9FD400);
        v131 = v121;
        v22 = v196;
        [v196 setItemPendingReconciliationJobSchedulingState_];
        sub_1CF03D7A8(v105, v106, v107);

        v23 = v110;
        v84 = v200;
        v24 = v190;
        v52 = v104;
LABEL_55:
        if ([v22 itemPendingReconciliationJobCode] == 26)
        {
          if (v52)
          {
            *&v204[0] = v52;
            v132 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
            if (swift_dynamicCast())
            {
              v133 = v208;
              v134 = [v208 fp_protectionClassBehindError];
              if (v134)
              {
                v135 = v134;
                v136 = v24;
                v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v139 = v138;
                v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v147 = v140;
                if (v137 == v141 && v139 == v140)
                {
                  goto LABEL_61;
                }

                v155 = sub_1CF9E8048();
                v139, v156, v157, v158, v159, v160, v161, v162;
                v147, v163, v164, v165, v166, v167, v168, v169;
                if (v155)
                {
                  goto LABEL_66;
                }

                v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v139 = v173;
                v141 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v147 = v140;
                if (v172 == v141 && v139 == v140)
                {
LABEL_61:
                  v139, v140, v141, v142, v143, v144, v145, v146;
                  v147, v148, v149, v150, v151, v152, v153, v154;
LABEL_66:
                  v170 = v195;
                  if ([v195 numberOfItemsPendingReconciliation] < 1)
                  {

                    goto LABEL_70;
                  }

                  v95 = [v170 numberOfItemsPendingReconciliation];
                  v171 = v196;
                  if (!__OFSUB__(v95, 1))
                  {
                    [v170 setNumberOfItemsPendingReconciliation_];

LABEL_70:
                    v22 = 0;
                    goto LABEL_64;
                  }

                  goto LABEL_78;
                }

                v174 = sub_1CF9E8048();
                v139, v175, v176, v177, v178, v179, v180, v181;
                v147, v182, v183, v184, v185, v186, v187, v188;
                if (v174)
                {
                  goto LABEL_66;
                }

                v84 = v200;
                v22 = v196;
                v24 = v136;
              }

              else
              {
              }
            }
          }
        }

        *&v204[0] = v24;
        BYTE8(v204[0]) = v199;
        v84(v22, v204);

        goto LABEL_64;
      }

      v87, v88, v89, v90, v91, v92, v93, v94;
    }

    [v22 setItemPendingReconciliationJobCode_];
    *&v204[0] = v24;
    BYTE8(v204[0]) = v199;
    v82 = v202;
    v83 = (*(*v61 + 264))(v204, v81, v64, v63);
    if (v82)
    {

      v202 = 0;
LABEL_23:
      [v22 setItemPendingReconciliationJobCode_];
      [v22 setItemPendingReconciliationJobSchedulingState_];
      v84 = v200;
      goto LABEL_55;
    }

    v202 = 0;
    if (!v83)
    {
      goto LABEL_23;
    }

    v104 = v52;
    v190 = v24;
    v109 = v83;
    [v22 setItemPendingReconciliationJobCode_];
    v105 = *(v109 + 96);
    v106 = *(v109 + 104);
    v107 = *(v109 + 112);
    sub_1CF03C530(v105, v106, *(v109 + 112));

    v96 = 0;
    v108 = 1;
    goto LABEL_37;
  }

  v22 = 0;
  v23 = v203;
LABEL_64:
  *v23 = v22;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF257848(void (*a1)(id *__return_ptr))
{
  v4 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  if ([v1 next])
  {
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      a1(&v15);
      if (v2)
      {
        break;
      }

      if (v15)
      {
        v6 = v15;
        MEMORY[0x1D3868FA0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        v4 = v16;
      }

      objc_autoreleasePoolPop(v5);
      if (([v1 next] & 1) == 0)
      {
        return v4;
      }
    }

    objc_autoreleasePoolPop(v5);
    v4, v7, v8, v9, v10, v11, v12, v13;
  }

  return v4;
}

void sub_1CF25797C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF257AC0, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1CF257848(sub_1CF25A2A0);
    sub_1CEFD57E0(0, &qword_1EC4BEB50, 0x1E6967368);
    v11 = sub_1CF9E6D28();
    v10, v12, v13, v14, v15, v16, v17, v18;
    [a1 setItemsPendingScanningDisk_];
  }
}

uint64_t sub_1CF257AC0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA3CEB0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA3CF30);
  return 0;
}

void sub_1CF257B80(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void (*a4)(void *, uint64_t *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v159 = a5;
  v160 = a7;
  v168 = a6;
  v163 = a8;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v148[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = [objc_allocWithZone(MEMORY[0x1E6967368]) init];
  sub_1CEFE9AC4([a1 longAtIndex_], &v164);
  if (v8)
  {

    v19 = 0;
    v20 = v163;
    goto LABEL_51;
  }

  v158 = v14;
  v162 = a2;
  v153 = a1;
  v21 = v160;
  v154 = v16;
  v155 = v13;
  v22 = v164;
  v161 = v165;
  v157 = a4;
  if (v165 != 2 || v164)
  {
    v24 = v168;
    v19 = v17;
    if (v161 == 2 && v164 == 1)
    {
      v23 = *MEMORY[0x1E6967280];
    }

    else
    {
      v164 = 0x2F73662F70665F5FLL;
      v165 = 0xE800000000000000;
      v166 = v22;
      v167 = v161;
      v26 = VFSItemID.description.getter(v18);
      v28 = v27;
      MEMORY[0x1D3868CC0](v26);
      v28, v29, v30, v31, v32, v33, v34, v35;
      v36 = v165;
      v23 = sub_1CF9E6888();
      v36, v37, v38, v39, v40, v41, v42, v43;
    }

    v25 = v21;
  }

  else
  {
    v23 = *MEMORY[0x1E6967258];
    v24 = v168;
    v25 = v21;
    v19 = v17;
  }

  [v19 setItemIdentifier_];

  v44 = v162;
  v45 = v162[3];
  v160 = v22;
  v164 = v22;
  LOBYTE(v165) = v161;
  sub_1CF8DCAA0(v46);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1CF9FA450;
  *(v47 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  v48 = 0;
  v55 = (*(*v45 + 312))(&v164, v47, a3, v24, v25);
  v47, v56, v57, v58, v59, v60, v61, v62;
  if (v55 >> 62)
  {
    goto LABEL_92;
  }

  v70 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v71 = v160;
  if (v70)
  {
    goto LABEL_16;
  }

LABEL_93:
  v55, v63, v64, v65, v66, v67, v68, v69;
  [v19 setItemPendingScanningDiskEnumerationStatus_];
  v156 = 0;
LABEL_12:
  [v19 setItemPendingScanningDiskNumberOfChildrenPendingReconciliation_];
  [v19 setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation_];
  [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion_];
  [v19 setItemPendingScanningDiskNumberOfChildrenPendingRejection_];
  [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent_];
  v49 = [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncUp_];
  v50 = MEMORY[0x1EEE9AC00](v49);
  *&v148[-16] = v71;
  v148[-8] = v161;
  v51 = *(v25 + 24);
  v52 = v51(sub_1CF25A2FC, v50);
  v53 = v48;
  if (!v48)
  {
    v48 = v52;
    if ([v52 next])
    {
      do
      {
        v81 = objc_autoreleasePoolPush();
        sub_1CF258A48(v48, v19, v162, a3, v168, v25);
        objc_autoreleasePoolPop(v81);
      }

      while (([v48 next] & 1) != 0);
    }

    v162 = a3;
    [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion_];
    [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent_];
    [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDown_];
    v82 = [v153 stringAtIndex_];
    v83 = v82;
    if (!v82)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v85 = v84;
      v83 = sub_1CF9E6888();
      v85, v86, v87, v88, v89, v90, v91, v92;
    }

    v158 = v148;
    v93 = MEMORY[0x1EEE9AC00](v82);
    *&v148[-16] = v83;
    v25 = 0;
    v55 = v51(sub_1CF25A308, v93);
    v168 = v83;
    if (![v55 next])
    {
LABEL_45:

      v20 = v163;
      v102 = v157;
      v103 = v160;
      goto LABEL_50;
    }

    v44 = 13;
    while (1)
    {
      v95 = objc_autoreleasePoolPush();
      a3 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if (([v55 longAtIndex_] & 0xD) != 0)
      {
        v96 = [v19 itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion];
        if (__OFADD__(v96, 1))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v70 = sub_1CF9E7818();
          v71 = v160;
          if (!v70)
          {
            goto LABEL_93;
          }

LABEL_16:
          if ((v55 & 0xC000000000000001) == 0)
          {
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v72 = *(v55 + 32);

              goto LABEL_19;
            }

            __break(1u);
LABEL_96:
            MEMORY[0x1EEE9AC00](v70);
            *&v148[-16] = v55;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v148[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v72 = MEMORY[0x1D3869C30](0, v55);
LABEL_19:
          v55, v73, v74, v75, v76, v77, v78, v79;

          v80 = sub_1CEFEBAE8(1);
          v156 = v72;
          if (v48)
          {

            v48 = 0;
            goto LABEL_12;
          }

          v149 = v80;
          v114 = *(v72 + 96);
          v113 = *(v72 + 104);
          v115 = *(v72 + 112);
          v55 = *(v44 + 136);

          v152 = v114;
          v150 = v113;
          v151 = v115;
          sub_1CF03C530(v114, v113, v115);
          v70 = objc_sync_enter(v55);
          if (v70)
          {
            goto LABEL_96;
          }

          swift_beginAccess();
          v116 = *(v55 + 16);

          v117 = objc_sync_exit(v55);
          if (v117)
          {
            MEMORY[0x1EEE9AC00](v117);
            *&v148[-16] = v55;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v148[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          swift_beginAccess();
          v118 = sub_1CF053478(v72 + 56, &v164);
          if (v149 <= 1u)
          {
            if (v149)
            {
              goto LABEL_60;
            }

            v116, v119, v120, v121, v122, v123, v124, v125;
            v127 = v152;
            v128 = v150;
            v129 = v151;
LABEL_72:
            sub_1CF03D7A8(v127, v128, v129);
            v126 = 0;
            goto LABEL_73;
          }

          if (v149 == 2)
          {
            v116, v119, v120, v121, v122, v123, v124, v125;
            sub_1CF03D7A8(v152, v150, v151);
            v126 = 5;
            goto LABEL_73;
          }

          if (v149 != 3)
          {
            v116, v119, v120, v121, v122, v123, v124, v125;
            sub_1CF03D7A8(v152, v150, v151);
            v126 = -2;
            goto LABEL_73;
          }

LABEL_60:
          if (v151 <= 1)
          {
            if (!v151)
            {
              MEMORY[0x1EEE9AC00](v118);
              *&v148[-16] = &v164;
              sub_1CF7F7140(sub_1CF25A338, &v148[-32], v116, sub_1CF066914, 0);
              v131 = v130;
              v116, v132, v133, v134, v135, v136, v137, v138;
              sub_1CF03D7A8(v152, v150, 0);
              v126 = v131 & 1;
              goto LABEL_73;
            }

            v116, v119, v120, v121, v122, v123, v124, v125;
            v127 = v152;
            v128 = v150;
            v129 = 1;
            goto LABEL_72;
          }

          if (v151 == 2)
          {
            v116, v119, v120, v121, v122, v123, v124, v125;
            v126 = 2;
            sub_1CF03D7A8(v152, v150, 2u);
          }

          else if (v151 == 3)
          {
            v116, v119, v120, v121, v122, v123, v124, v125;
            v126 = 3;
            sub_1CF03D7A8(v152, v150, 3u);
          }

          else
          {
            v116, v119, v120, v121, v122, v123, v124, v125;
            if (v152 | v150)
            {
              v126 = 5;
            }

            else
            {
              v126 = 4;
            }
          }

LABEL_73:
          sub_1CEFCCC44(&v164, &unk_1EC4C1BE0, &unk_1CF9FD400);
          [v19 setItemPendingScanningDiskEnumerationStatus_];
          v140 = *(v72 + 96);
          v139 = *(v72 + 104);
          v141 = *(v72 + 112);
          sub_1CF03C530(v140, v139, *(v72 + 112));

          switch(v141)
          {
            case 0:
              v142 = v140;
              if (!v139)
              {
                v146 = 0;
                v147 = 0;
                break;
              }

              v143 = v139;
              v144 = 0;
              goto LABEL_82;
            case 1:
              if (!v140)
              {
                v142 = 0;
                v146 = v139;
                v147 = 1;
                break;
              }

              v142 = v140;
              v143 = v139;
              v144 = 1;
LABEL_82:
              sub_1CF03D7A8(v142, v143, v144);
              v145 = 1;
              goto LABEL_88;
            case 2:
              if (v140)
              {
                v142 = v140;
                v143 = v139;
                v144 = 2;
                goto LABEL_82;
              }

              v142 = 0;
              v146 = v139;
              v147 = 2;
              break;
            default:
              v142 = v140;
              v146 = v139;
              v147 = v141;
              break;
          }

          sub_1CF03D7A8(v142, v146, v147);
          v145 = 0;
LABEL_88:
          v71 = v160;
          [v19 setItemPendingScanningDiskHasMultiplePagesEnumeration_];

          goto LABEL_12;
        }

        [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion_];
      }

      v97 = [v55 longAtIndex_];
      v98 = [v55 longAtIndex_];
      v99 = [v55 longAtIndex_];
      if (v98)
      {
        v100 = 0;
      }

      else
      {
        v100 = v99 == 2;
      }

      if (!v100)
      {
        goto LABEL_42;
      }

      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      if ((qword_1EDEABDE8 & ~v97) != 0)
      {
LABEL_42:
        if ((v97 & 2) != 0)
        {
          v101 = [v19 itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent];
          if (__OFADD__(v101, 1))
          {
            goto LABEL_91;
          }

          [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent_];
LABEL_28:
          v94 = [v19 itemPendingScanningDiskNumberOfChildrenPendingSyncDown];
          if (__OFADD__(v94, 1))
          {
            goto LABEL_90;
          }

          [v19 setItemPendingScanningDiskNumberOfChildrenPendingSyncDown_];
          goto LABEL_30;
        }

        if (v97)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      objc_autoreleasePoolPop(v95);
      if (([v55 next] & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v54 = v158;
  v104 = fpfs_current_or_default_log();
  v105 = v154;
  sub_1CF9E6128();
  v106 = v48;
  v107 = sub_1CF9E6108();
  v108 = sub_1CF9E72A8();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v109 = 138412290;
    v111 = v53;
    v112 = _swift_stdlib_bridgeErrorToNSError();
    *(v109 + 4) = v112;
    *v110 = v112;
    _os_log_impl(&dword_1CEFC7000, v107, v108, "Failed gathering info for item pending scanning disk %@", v109, 0xCu);
    sub_1CEFCCC44(v110, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v110, -1, -1);
    MEMORY[0x1D386CDC0](v109, -1, -1);
  }

  else
  {
  }

  v20 = v163;
  v102 = v157;
  v103 = v160;
  (*(v54 + 1))(v105, v155);
LABEL_50:
  v164 = v103;
  LOBYTE(v165) = v161;
  v102(v19, &v164);
LABEL_51:
  *v20 = v19;
}

uint64_t sub_1CF25892C(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000E1, 0x80000001CFA3CD90);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3CE80);
  return v18;
}

uint64_t sub_1CF258A48(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (([a1 isNullAtIndex_] & 1) == 0)
  {
    v14 = sub_1CF1E0758(1);
    if (v6)
    {

      v7 = 0;
    }

    else if (!v14)
    {
      result = [a2 itemPendingScanningDiskNumberOfChildrenPendingReconciliation];
      v16 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_42:
        __break(1u);
        return result;
      }

      v17 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingReconciliation_;
      goto LABEL_7;
    }
  }

  result = [a2 itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation];
  v16 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = &selRef_setItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation_;
LABEL_7:
  [a2 *v17];
  v18 = [a1 longAtIndex_];
  if ((v18 & 0xD) == 0 || (v18 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  if ((~v18 & 0x82) != 0 || (*(a3 + 80) & 0x4000) == 0)
  {
LABEL_19:
    result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion];
    v20 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v21 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion_;
    goto LABEL_21;
  }

  v36 = v18;
  v37 = a6;
  v23 = [a1 stringAtIndex_];
  v24 = v23;
  if (!v23)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    v24 = sub_1CF9E6888();
    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  v38 = v24;
  v34 = sub_1CF033A74();
  v35 = sub_1CF5E1650(&v38, v34, a4, a5, v37);

  if (!v7)
  {

    LOBYTE(v18) = v36;
    if (v35)
    {
LABEL_11:
      if ((v18 & 0x40) == 0)
      {
LABEL_22:
        result = [a1 longAtIndex_];
        if ((result & 2) != 0)
        {
          result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent];
          if (__OFADD__(result, 1))
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          [a2 setItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent_];
        }

        else if (!result)
        {
          return result;
        }

        result = [a2 itemPendingScanningDiskNumberOfChildrenPendingSyncUp];
        if (!__OFADD__(result, 1))
        {
          return [a2 setItemPendingScanningDiskNumberOfChildrenPendingSyncUp_];
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      result = [a2 itemPendingScanningDiskNumberOfChildrenPendingRejection];
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = &selRef_setItemPendingScanningDiskNumberOfChildrenPendingRejection_;
LABEL_21:
      [a2 *v21];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1CF258D00(void *a1, uint64_t a2)
{
  v3 = sub_1CF9E6938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000F8, 0x80000001CFA3CC60);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  sub_1CF9E6918();
  v9 = sub_1CF9E68C8();
  v11 = v10;
  v8, v10, v12, v13, v14, v15, v16, v17;
  result = (*(v4 + 8))(v6, v3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1CF9E5B48();
    sub_1CEFE48D8(v9, v11);
    v20 = [a1 bindObjectParameter_];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;

    MEMORY[0x1D3868CC0](v21, v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3CD60);
    return v31[0];
  }

  return result;
}

void sub_1CF258EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(sub_1CF25902C, 0, a5, a6);
  if (!v6)
  {
    v9 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1CF257848(sub_1CF259EFC);
    sub_1CEFD57E0(0, &qword_1EC4BEB48, 0x1E6967370);
    v11 = sub_1CF9E6D28();
    v10, v12, v13, v14, v15, v16, v17, v18;
    [a1 setItemsPendingScanningProvider_];
  }
}

uint64_t sub_1CF25902C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA3CB70);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA3CC10);
  return 0;
}

void sub_1CF2590E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *, char ***)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v155 = a5;
  v156 = a4;
  v162 = a8;
  v161 = sub_1CF9E6118();
  v160 = *(v161 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v161).n128_u64[0];
  v159 = &v148[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = a1;
  v15 = [a1 stringAtIndex_];
  if (!v15)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    v15 = sub_1CF9E6888();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E6967370]) init];
  [v25 setItemIdentifier_];
  v26 = *(a2 + 24);
  v164 = v15;
  sub_1CF8DCAC4(v27);
  v28 = swift_allocObject();
  v157 = a2;
  v29 = v28;
  *(v28 + 16) = xmmword_1CF9FA450;
  *(v28 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  v30 = v163;
  v31 = (*(*v26 + 304))(&v164, v29, a3, a6, a7);
  if (!v30)
  {
    v55 = v31;
    v152 = v26;
    v56 = v15;
    v153 = a6;
    v163 = a7;
    v29, v32, v33, v34, v35, v36, v37, v38;
    v154 = a3;
    if (v55 >> 62)
    {
      goto LABEL_80;
    }

    for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
    {
      v65 = v158;
      v66 = v163;
      v67 = v153;
      v54 = v25;
      v68 = v56;
      if (i)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          goto LABEL_83;
        }

        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = *(v55 + 32);

          goto LABEL_15;
        }

        __break(1u);
LABEL_85:
        MEMORY[0x1EEE9AC00](i);
        v144 = &v148[-32];
        *&v148[-16] = v65;
        v145 = sub_1CF1C5288;
LABEL_88:
        fp_preconditionFailure(_:file:line:)(v145, v144, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v55, v57, v58, v59, v60, v61, v62, v63;
      [v25 setItemPendingScanningProviderEnumerationStatus_];
      *(&v151 + 1) = 0;
      v77 = v152;
LABEL_46:
      v164 = v68;
      v109 = (*(*v77 + 256))(&v164, v154, v67, v66);
      v114 = v109;
      if (!v109)
      {
        break;
      }

      if (([v65 longAtIndex_] & 0x10) == 0)
      {
        [v54 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];

        goto LABEL_48;
      }

      v120 = *(v114 + 96);
      v119 = *(v114 + 104);
      v121 = *(v114 + 112);
      v122 = *(v157 + 136);

      sub_1CF03C530(v120, v119, v121);
      v123 = objc_sync_enter(v122);
      if (v123)
      {
        MEMORY[0x1EEE9AC00](v123);
        v144 = &v148[-32];
        *&v148[-16] = v122;
        v145 = sub_1CF1C546C;
        goto LABEL_88;
      }

      swift_beginAccess();
      v124 = v122[2];

      v125 = objc_sync_exit(v122);
      if (v125)
      {
        MEMORY[0x1EEE9AC00](v125);
        v146 = &v148[-32];
        *&v148[-16] = v122;
        v147 = sub_1CF1C5468;
LABEL_90:
        fp_preconditionFailure(_:file:line:)(v147, v146, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      swift_beginAccess();
      sub_1CF053478(v114 + 56, &v164);

      if (v121 <= 1)
      {
        if (v121)
        {
          v124, v127, v128, v129, v130, v131, v132, v133;
          sub_1CF03D7A8(v120, v119, 1u);
          v134 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v126);
          *&v148[-16] = &v164;
          sub_1CF7F7140(sub_1CF25A280, &v148[-32], v124, sub_1CF066914, 0);
          v136 = v135;
          v124, v137, v138, v139, v140, v141, v142, v143;
          sub_1CF03D7A8(v120, v119, 0);
          v134 = v136 & 1;
        }
      }

      else if (v121 == 2)
      {
        v124, v127, v128, v129, v130, v131, v132, v133;
        v134 = 2;
        sub_1CF03D7A8(v120, v119, 2u);
      }

      else if (v121 == 3)
      {
        v124, v127, v128, v129, v130, v131, v132, v133;
        v134 = 3;
        sub_1CF03D7A8(v120, v119, 3u);
      }

      else
      {
        v124, v127, v128, v129, v130, v131, v132, v133;
        if (v120 | v119)
        {
          v134 = 5;
        }

        else
        {
          v134 = 4;
        }
      }

      sub_1CEFCCC44(&v164, &unk_1EC4C1BE0, &unk_1CF9FD400);
      [v54 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];

      v110 = v163;
LABEL_49:
      [v54 setItemPendingScanningProviderNumberOfChildren_];
      [v54 setItemPendingScanningProviderNumberOfChildrenPendingCreation_];
      v111 = [v54 setItemPendingScanningProviderNumberOfChildrenFailingCreation_];
      v112 = MEMORY[0x1EEE9AC00](v111);
      *&v148[-16] = v68;
      v113 = v110[3](sub_1CF25A278, v112);
      v67 = v113;
      v56 = &selRef_initWithTarget_;
      if (![v113 next])
      {
LABEL_64:
        sub_1CEFE9AC4([v158 longAtIndex_], &v164);
        v156(v54, &v164);

        goto LABEL_8;
      }

      v25 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      while (1)
      {
        v55 = objc_autoreleasePoolPush();
        v115 = [v54 itemPendingScanningProviderNumberOfChildren];
        if (__OFADD__(v115, 1))
        {
          break;
        }

        [v54 setItemPendingScanningProviderNumberOfChildren_];
        if ([v67 isNullAtIndex_])
        {
          if ([v67 isNullAtIndex_])
          {
            v116 = [v54 itemPendingScanningProviderNumberOfChildrenPendingCreation];
            v58 = v116 + 1;
            if (__OFADD__(v116, 1))
            {
              goto LABEL_82;
            }

            v117 = &selRef_setItemPendingScanningProviderNumberOfChildrenPendingCreation_;
          }

          else
          {
            v118 = [v54 itemPendingScanningProviderNumberOfChildrenFailingCreation];
            v58 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              v69 = MEMORY[0x1D3869C30](0, v55, v58);
LABEL_15:
              v55, v70, v71, v72, v73, v74, v75, v76;

              v78 = sub_1CEFEBAE8(1);
              v79 = v68;
              v81 = *(v69 + 96);
              v80 = *(v69 + 104);
              v82 = *(v69 + 112);
              v83 = v80 != 0;
              v84 = v81 != 0;
              v85 = v84;
              if (v82 != 2)
              {
                v85 = 0;
              }

              if (v82 != 1)
              {
                v84 = v85;
              }

              if (*(v69 + 112))
              {
                v83 = v84;
              }

              v149 = v83;
              v65 = *(v157 + 136);

              *&v151 = v81;
              *(&v151 + 1) = v80;
              sub_1CF03C530(v81, v80, v82);
              i = objc_sync_enter(v65);
              if (i)
              {
                goto LABEL_85;
              }

              swift_beginAccess();
              v150 = v65[2];

              v86 = objc_sync_exit(v65);
              if (v86)
              {
                MEMORY[0x1EEE9AC00](v86);
                v146 = &v148[-32];
                *&v148[-16] = v65;
                v147 = sub_1CF1C5290;
                goto LABEL_90;
              }

              swift_beginAccess();
              sub_1CF053478(v69 + 56, &v164);

              v68 = v79;
              if (v78 <= 1u)
              {
                v65 = v158;
                if (v78)
                {
                  goto LABEL_31;
                }

                v150, v88, v89, v90, v91, v92, v93, v94;
                v97 = *(&v151 + 1);
                v96 = v151;
                v98 = v82;
LABEL_43:
                sub_1CF03D7A8(v96, v97, v98);
                v95 = 0;
                goto LABEL_44;
              }

              v65 = v158;
              if (v78 == 2)
              {
                v150, v88, v89, v90, v91, v92, v93, v94;
                sub_1CF03D7A8(v151, *(&v151 + 1), v82);
                v95 = 5;
                goto LABEL_44;
              }

              if (v78 != 3)
              {
                v150, v88, v89, v90, v91, v92, v93, v94;
                sub_1CF03D7A8(v151, *(&v151 + 1), v82);
                v95 = -2;
                goto LABEL_44;
              }

LABEL_31:
              if (v82 <= 1)
              {
                if (v82)
                {
                  v150, v88, v89, v90, v91, v92, v93, v94;
                  v97 = *(&v151 + 1);
                  v96 = v151;
                  v98 = 1;
                  goto LABEL_43;
                }

                MEMORY[0x1EEE9AC00](v87);
                *&v148[-16] = &v164;
                v99 = v150;
                sub_1CF7F7140(sub_1CF25A338, &v148[-32], v150, sub_1CF066914, 0);
                v101 = v100;
                v99, v102, v103, v104, v105, v106, v107, v108;
                sub_1CF03D7A8(v151, *(&v151 + 1), 0);
                v95 = v101 & 1;
LABEL_44:
                v66 = v163;
                v77 = v152;
                goto LABEL_45;
              }

              if (v82 == 2)
              {
                v150, v88, v89, v90, v91, v92, v93, v94;
                v95 = 2;
                sub_1CF03D7A8(v151, *(&v151 + 1), 2u);
                goto LABEL_44;
              }

              if (v82 == 3)
              {
                v150, v88, v89, v90, v91, v92, v93, v94;
                v95 = 3;
                sub_1CF03D7A8(v151, *(&v151 + 1), 3u);
                goto LABEL_44;
              }

              v66 = v163;
              v77 = v152;
              v150, v88, v89, v90, v91, v92, v93, v94;
              if (v151 == 0)
              {
                v95 = 4;
              }

              else
              {
                v95 = 5;
              }

LABEL_45:
              sub_1CEFCCC44(&v164, &unk_1EC4C1BE0, &unk_1CF9FD400);
              [v54 setItemPendingScanningProviderEnumerationStatus_];
              [v54 setItemPendingScanningProviderHasMultiplePagesEnumeration_];
              *(&v151 + 1) = v69;

              goto LABEL_46;
            }

            v117 = &selRef_setItemPendingScanningProviderNumberOfChildrenFailingCreation_;
          }

          [v54 *v117];
        }

        objc_autoreleasePoolPop(v55);
        if (([v67 next] & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_80:
      ;
    }

    [v54 setItemPendingScanningProviderRemovalOfDatalessBitStatus_];
LABEL_48:
    v110 = v163;
    goto LABEL_49;
  }

  v29, v39, v40, v41, v42, v43, v44, v45;
  v46 = fpfs_current_or_default_log();
  v47 = v159;
  sub_1CF9E6128();
  v48 = v30;
  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E72A8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    swift_getErrorValue();
    v53 = Error.prettyDescription.getter(v165, v166);
    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&dword_1CEFC7000, v49, v50, "Error gathering telemetry for scanning provider %@", v51, 0xCu);
    sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v51, -1, -1);
  }

  else
  {
  }

  (*(v160 + 8))(v47, v161);
  v54 = 0;
LABEL_8:
  *v162 = v54;
}

uint64_t sub_1CF259F28(void *a1, uint64_t a2)
{
  v80 = a1;
  v2 = sub_1CF9E6938();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000105, 0x80000001CFA3C950);
  v81 = 5;
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v81 = 26;
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v81 = 1;
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3CA60);
  v81 = 8;
  v36 = sub_1CF9E7F98();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA3CAA0);
  v81 = 1;
  v46 = sub_1CF9E7F98();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000061, 0x80000001CFA3CAE0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v57 = v56;
  sub_1CF9E6918();
  v58 = sub_1CF9E68C8();
  v60 = v59;
  v57, v59, v61, v62, v63, v64, v65, v66;
  result = (*(v3 + 8))(v5, v2);
  if (v60 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v68 = sub_1CF9E5B48();
    sub_1CEFE48D8(v58, v60);
    v69 = [v80 bindObjectParameter_];

    v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v72 = v71;

    MEMORY[0x1D3868CC0](v70, v72);
    v72, v73, v74, v75, v76, v77, v78, v79;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3CB50);
    return v82;
  }

  return result;
}

void sub_1CF25A3A4(void (*a1)(void *__return_ptr, __int128 *, __n128))
{
  v4 = *(v1 + 4);
  if (v4 == 1)
  {
    memset(v18, 0, sizeof(v18));
    v19 = 256;
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = *(v1 + 3);
    v14 = *v1;
    v15 = v5;
    v16 = v6;
    v17 = v4;

    (a1)(v18, &v14);
    if (v2)
    {
      v17, v7, v8, v9, v10, v11, v12, v13;
      __break(1u);
    }

    else
    {
      v17, v7, v8, v9, v10, v11, v12, v13;
      HIBYTE(v19) = 0;
    }
  }
}

uint64_t sub_1CF25A464(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    v9 = *(sub_1CF9E5A58() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1CF25A5A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v26 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v26[1] = v1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1CF680CCC(0, v6, 0);
    v7 = v33;
    v32 = a1 + 56;
    v8 = sub_1CF9E77C8();
    v9 = 0;
    v27 = a1 + 64;
    v28 = v6;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v31 = *(a1 + 36);
      *v5 = *(*(a1 + 48) + 8 * v8);
      v5[8] = 1;
      *(v5 + 2) = 4;
      v5[24] = 1;
      swift_storeEnumTagMultiPayload();
      v33 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1CF680CCC((v12 > 1), v13 + 1, 1);
        v7 = v33;
      }

      *(v7 + 16) = v13 + 1;
      sub_1CEFE55D0(v5, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v13, &unk_1EC4BED40, &unk_1CFA00720);
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_22;
      }

      v19 = *(v32 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1CF0663D8(v8, v31, 0, v14, v15, v16, v17, v18);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1CF0663D8(v8, v31, 0, v14, v15, v16, v17, v18);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1CF25A894(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1CF9E7A48();
    for (i = (a3 + 32); ; ++i)
    {
      v12 = *i;
      v10 = v12;
      a1(&v13, &v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1CF9E7A18();
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      if (!--v6)
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1CF25A99C(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1CF680FE8(0, v4, 0);
    v5 = v19;
    v7 = *(sub_1CF9E5A58() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    while (1)
    {
      a1(v18, v8, &v17);
      if (v3)
      {
        break;
      }

      v11 = v18[0];
      v10 = v18[1];
      v19 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1CF680FE8((v12 > 1), v13 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_1CF25AAFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  *(v4 + 48) = 0;
  *(v4 + 64) = 0;
  if (a3)
  {
    swift_beginAccess();
    v9 = *(a3 + 24);
    v10 = *(a3 + 40);
    v11 = *(a3 + 44);
    v12 = *(a3 + 32);
    v43 = v12;
    *(v4 + 16) = *(a3 + 16);
    *(v4 + 24) = v9;
    *(v4 + 32) = v12;
    *(v4 + 40) = v10;
    *(v4 + 44) = v11;
    swift_beginAccess();
    *(v4 + 44) = 1;
    v13 = v43;
  }

  else
  {
    v13 = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 37) = 0;
  }

  v14 = *(a1 + 16);
  swift_beginAccess();
  *(v4 + 16) = v14;
  *(v4 + 56) = a2;
  v15 = *(a1 + 24);
  0, v16, v17, v18, v19, v20, v21, v22;
  v46 = v15;
  v47 = 0;
  v48 = 0;
  v49 = v13;
  v51 = 0;
  v50 = 0;
  v23 = fpfs_openfdbyhandle();
  if (v23 < 0)
  {
    v34 = MEMORY[0x1D38683F0]();
    LODWORD(v44[0]) = 0;
    BYTE4(v44[0]) = 1;
    v45 = 0;
    sub_1CF19BBE4(v34, v44);
    sub_1CF1969CC(v44);
    swift_willThrow();
    0, v35, v36, v37, v38, v39, v40, v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDA0, &unk_1CF9FDB50);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v23;
    0, v24, v25, v26, v27, v28, v29, v30;
    swift_beginAccess();
    *(v4 + 52) = v31;
    os_unfair_lock_lock((a1 + 56));
    v32 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 56));

    *(v4 + 60) = v32;
    v33 = *(v4 + 64);
    *(v4 + 64) = a4;
  }

  return v4;
}

void sub_1CF25AD70(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_1CF9E53C8();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CF9E6118();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v68 = *(v2 + 24);
  v6 = *(v2 + 56);
  swift_beginAccess();
  v7 = 0;
  while (v7 < v6)
  {
    v8 = swift_allocObject();
    v9 = v69;
    v10 = v70;
    v8[2] = v2;
    v8[3] = v9;
    v11 = v68;
    v8[4] = v10;
    v8[5] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CF2B1638;
    *(v12 + 24) = v8;
    v76 = sub_1CF1DBD5C;
    v77 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1CEFDB270;
    v75 = &block_descriptor_957;
    v13 = _Block_copy(&aBlock);

    swift_beginAccess();
    v14 = fpfs_fgetdirentries();
    swift_endAccess();
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
LABEL_20:
      aBlock = 0;
      v73 = 0xE000000000000000;
      sub_1CF9E7948();
      v73, v20, v21, v22, v23, v24, v25, v26;
      aBlock = 0xD00000000000001ALL;
      v73 = 0x80000001CFA2DF30;
      v71 = v14;
      v27 = sub_1CF9E7F98();
      v29 = v28;
      MEMORY[0x1D3868CC0](v27);
      v29, v30, v31, v32, v33, v34, v35, v36;
      MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
      v37 = aBlock;
      v38 = v73;
      v39 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v40 = sub_1CF9E6108();
      v41 = sub_1CF9E72B8();
      v38, v42, v43, v44, v45, v46, v47, v48;
      if (os_log_type_enabled(v40, v41))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock = v50;
        *v49 = 136315650;
        v51 = sub_1CF9E7988();
        v53 = v52;
        v54 = sub_1CEFD0DF0(v51, v52, &aBlock);
        v53, v55, v56, v57, v58, v59, v60, v61;
        *(v49 + 4) = v54;
        *(v49 + 12) = 2048;
        *(v49 + 14) = 315;
        *(v49 + 22) = 2080;
        *(v49 + 24) = sub_1CEFD0DF0(v37, v38, &aBlock);
        _os_log_impl(&dword_1CEFC7000, v40, v41, "[ASSERT] ‼️  %s:%lu: %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v50, -1, -1);
        MEMORY[0x1D386CDC0](v49, -1, -1);
      }

      (*(v63 + 8))(v62, v64);
      sub_1CF9E7B68();
      __break(1u);
      return;
    }

    if (v14 < 0)
    {
      if (MEMORY[0x1D38683F0](v15))
      {
        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        }

        else
        {
          MEMORY[0x1D38683F0]();
          v17 = sub_1CF9E6138();
          if ((v17 & 0x100000000) != 0)
          {
            LODWORD(aBlock) = 22;
          }

          else
          {
            LODWORD(aBlock) = v17;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v18 = v65;
          v19 = v67;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v66 + 8))(v18, v19);
        }

        swift_willThrow();
        return;
      }

      goto LABEL_20;
    }

    if (!v14)
    {
      *(v2 + 48) = 1;
      return;
    }

    v16 = __OFADD__(v7, v14);
    v7 += v14;
    if (v16)
    {
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1CF25B3B4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v22[1] = a5;
  v23 = a3;
  v24 = a4;
  v7 = sub_1CF9E6118();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v25 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E53C8();
  v22[2] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for VFSItem(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*a2 + 280);
  v28 = a1;
  v29 = a2;
  v19(a1, v16);
  v20 = v23;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  else
  {
    sub_1CEFE4C60(v13, v18, type metadata accessor for VFSItem);
    v20(v18);
    sub_1CEFE5888(v18, type metadata accessor for VFSItem);
  }

  return 0;
}

void sub_1CF25B904(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 144);
  v6 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA001F0;
  strcpy((inited + 32), "operationType");
  *(inited + 46) = -4864;
  *(inited + 48) = 0xD00000000000002ELL;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 56) = 0x80000001CFA3D820;
  *(inited + 72) = v8;
  *(inited + 80) = 0x657079546D657469;
  *(inited + 88) = 0xE800000000000000;
  type metadata accessor for fpfs_item_type(0);
  *(inited + 96) = v3;
  *(inited + 120) = v9;
  strcpy((inited + 128), "documentSize");
  v10 = MEMORY[0x1E69E7360];
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v4;
  *(inited + 168) = v10;
  strcpy((inited + 176), "physicalSize");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = v6;
  *(inited + 216) = v10;
  strcpy((inited + 224), "childItemCount");
  *(inited + 239) = -18;
  v11 = MEMORY[0x1E69E7668];
  *(inited + 240) = v5;
  *(inited + 264) = v11;
  *(inited + 272) = 0x6E756F436B6E696CLL;
  *(inited + 280) = 0xE900000000000074;
  *(inited + 312) = v11;
  *(inited + 288) = v5;
  v12 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v20 = *(v2 + 64);
  if (v20)
  {
    v21 = v20;
    sub_1CF7BA9CC(v12);
    v23 = v22;
    v12, v24, v25, v26, v27, v28, v29, v30;
    v31 = sub_1CF9E6618();
    v23, v32, v33, v34, v35, v36, v37, v38;
    v39 = sub_1CF9E57E8();
    [v21 postReportWithCategory:1 type:1 payload:v31 error:v39];
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

uint64_t sub_1CF25BB70()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6F4370756B6F6F6CLL, 0xEC0000003D746E75);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x756F436E61637320, 0xEB000000003D746ELL);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA3D470);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  type metadata accessor for VFSCounters(0);
  v30 = sub_1CF9E5C08();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

uint64_t sub_1CF25BD0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC330;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001CFA3D990;
  v4 = *(v0 + 2);
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 32) = 0x6F4370756B6F6F6CLL;
  *(v7 + 40) = 0xEB00000000746E75;
  v8 = *v0;
  *(v7 + 88) = v5;
  *(v7 + 56) = v3;
  *(v7 + 64) = v8;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  *(v9 + 32) = 0x6E756F436E616373;
  *(v9 + 40) = 0xE900000000000074;
  v10 = *(v0 + 1);
  *(v9 + 88) = v5;
  *(v9 + 56) = v3;
  *(v9 + 64) = v10;
  *(v1 + 120) = v6;
  *(v1 + 96) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA440;
  *(v11 + 56) = v3;
  *(v11 + 32) = 0x7461447465736572;
  *(v11 + 40) = 0xE900000000000065;
  v12 = *(type metadata accessor for VFSCounters(0) + 28);
  v13 = sub_1CF9E5CF8();
  *(v11 + 88) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 64));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, &v0[v12], v13);
  *(v1 + 152) = v6;
  *(v1 + 128) = v11;
  return v1;
}

uint64_t sub_1CF25BF24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEBF0, &qword_1CFA00658);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2A9490();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E7F68();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CF9E7F68();
    v8[13] = 2;
    sub_1CF9E7F68();
    type metadata accessor for VFSCounters(0);
    v8[12] = 3;
    sub_1CF9E5CF8();
    sub_1CF2A9448(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF25C160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1CF9E5CF8();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEBD8, &qword_1CFA00650);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for VFSCounters(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  v13 = *(v12 + 36);
  sub_1CF9E5CC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2A9490();
  v14 = v24;
  sub_1CF9E8298();
  if (!v14)
  {
    v24 = v13;
    v15 = v5;
    v28 = 0;
    v16 = v22;
    v17 = v23;
    *v11 = sub_1CF9E7DE8();
    v27 = 1;
    v11[1] = sub_1CF9E7DE8();
    v26 = 2;
    v11[2] = sub_1CF9E7DE8();
    v25 = 3;
    sub_1CF2A9448(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CF9E7D88();
    (*(v16 + 8))(v8, v17);
    (*(v20 + 40))(v11 + v24, v15, v3);
    sub_1CEFD90AC(v11, v21, type metadata accessor for VFSCounters);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CEFE5888(v11, type metadata accessor for VFSCounters);
}

unint64_t sub_1CF25C4C0()
{
  v1 = 0x6F4370756B6F6F6CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7461447465736572;
  }

  if (*v0)
  {
    v1 = 0x6E756F436E616373;
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

uint64_t sub_1CF25C54C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF2AAAA0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF25C574(uint64_t a1)
{
  v2 = sub_1CF2A9490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF25C5B0(uint64_t a1)
{
  v2 = sub_1CF2A9490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF25C620()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](v1);
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF25C684(uint64_t a1)
{
  MEMORY[0x1D386A4A0](*v1);

  return sub_1CF9E69C8();
}

uint64_t sub_1CF25C6D8(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](v2);
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF25C738(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048();
  }
}

uint64_t sub_1CF25C780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  sub_1CEFCCBDC(a1, &v20 - v9, &unk_1EC4BED40, &unk_1CFA00720);
  v11 = *(v3 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1CF1F6A90(0, *v11->tree + 1, 1, v11);
  }

  v13 = *v11->tree;
  v12 = *v11->tester;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1CF1F6A90((v12 > 1), v13 + 1, 1, v11);
  }

  *v11->tree = v13 + 1;
  result = sub_1CEFE55D0(v10, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, &unk_1EC4BED40, &unk_1CFA00720);
  *(v3 + 8) = v11;
  if (a2)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = *(v3 + 24);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CF1F6A6C(0, (*v16->tree + 1), 1, v16);
      v16 = result;
    }

    v18 = *v16->tree;
    v17 = *v16->tester;
    if (v18 >= v17 >> 1)
    {
      result = sub_1CF1F6A6C((v17 > 1), (v18 + 1), 1, v16);
      v16 = result;
    }

    *v16->tree = v18 + 1;
    v19 = v16 + 16 * v18;
    *(v19 + 4) = sub_1CF2B1738;
    *(v19 + 5) = v15;
    *(v3 + 24) = v16;
  }

  return result;
}

uint64_t sub_1CF25C998(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = a2 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = v3;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1CF25CA0C()
{
  v1 = v0;
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5648();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 152);
  if (v11 == 3)
  {
    v12 = v8;
    v13 = objc_sync_enter(v1);
    if (v13)
    {
      MEMORY[0x1EEE9AC00](v13);
      *(&v29 - 2) = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v14 = *(v1 + 160);

    v15 = objc_sync_exit(v1);
    if (v15)
    {
      MEMORY[0x1EEE9AC00](v15);
      *(&v29 - 2) = v1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    (*(v3 + 16))(v5, v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v17 = *MEMORY[0x1E695DE18];
    *(inited + 32) = *MEMORY[0x1E695DE18];
    v18 = v17;
    sub_1CEFF8A84(inited);
    v20 = v19;
    swift_setDeallocating();
    sub_1CEFE5888(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();
    (*(v3 + 8))(v5, v2);
    v20, v21, v22, v23, v24, v25, v26, v27;
    v11 = sub_1CF9E5608();
    (*(v7 + 8))(v10, v12);
    *(v1 + 152) = v11;
  }

  return v11;
}

uint64_t sub_1CF25CD54()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = v0[20];

  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF25CED0()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v4);
  v6[0] = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E7498();
  qword_1EDEBBD70 = result;
  return result;
}

uint64_t sub_1CF25D11C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v3;
}

fp_task_tracker *sub_1CF25D1E8(_TtC18FileProviderDaemon8FSTester *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11)
{
  v262 = a1;
  v12 = v11;
  v265 = a4;
  v227 = sub_1CF9E6118();
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE28, &unk_1CFA00840);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v221 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE30, &unk_1CFA03240);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v239 = &v221 - v22;
  v240 = sub_1CF9E7378();
  v245 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v221 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v228 = &v221 - v24;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE40, &qword_1CFA00858);
  v244 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v236 = &v221 - v25;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE48, &qword_1CFA00860);
  v231 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v241 = &v221 - v26;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE50, &qword_1CFA00868);
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v221 - v27;
  v243 = sub_1CF9E5A58();
  v28 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v30 = &v221 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v255 = &v221 - v32;
  *(v12 + 152) = 3;
  v264 = a6;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CF9E7818())
  {
    sub_1CF6F3CF4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CD0];
  }

  v242 = v28;
  v263 = a5;
  *(v12 + 192) = v33;
  *(v12 + 200) = sub_1CF4E2378(MEMORY[0x1E69E7CC0]);
  type metadata accessor for TaskTracker();
  v34 = swift_allocObject();
  result = fp_task_tracker_create("vfstree");
  if (!result)
  {
    goto LABEL_38;
  }

  *(v34 + 16) = result;
  *(v12 + 224) = v34;
  *(v12 + 288) = 0;
  swift_unknownObjectWeakInit();
  v250 = qword_1EDEBBE78;
  *(v12 + qword_1EDEBBE78) = 0;
  v252 = qword_1EDEBBE80;
  *(v12 + qword_1EDEBBE80) = 0;
  v36 = (v12 + qword_1EDEAFB30);
  *v36 = 0u;
  v36[1] = 0u;
  v36[2] = 0u;
  v254 = v36;
  *(v36 + 41) = 0u;
  v37 = v12 + qword_1EDEAFB38;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = v12 + qword_1EDEAFAF0;
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v251 = qword_1EDEAFB18;
  *(v12 + qword_1EDEAFB18) = 0;
  v39 = (v12 + qword_1EDEBBE70);
  type metadata accessor for VFSCounters(0);
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *v39 = 0;
  v253 = v39;
  sub_1CF9E5CC8();
  v248 = qword_1EDEAFAE0;
  *(v12 + qword_1EDEAFAE0) = 1;
  v40 = v12 + qword_1EDEAFAF8;
  v41 = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  *v40 = 0;
  *(v40 + 8) = v41;
  v249 = (v40 + 8);
  *(v12 + 176) = a8;
  *(v12 + 184) = a9;
  v42 = 0x1E83BC000;
  v260 = v30;
  if (a7)
  {
    v43 = a7;
  }

  else
  {
    v266 = 0;
    v44 = a3;
    if (qword_1EDEAE418 != -1)
    {
      swift_once();
    }

    v45 = qword_1EDEBBD70;
    v46 = objc_allocWithZone(FPFSChangeMonitor);
    v47 = v45;
    v48 = sub_1CF9E6888();
    v43 = [v46 initWithLabel:v48 workloop:v47 shouldWatchRoot:1];

    v42 = 0x1E83BC000uLL;
    a3 = v44;
    a7 = v266;
  }

  LODWORD(v259) = a10;
  *(v12 + 232) = v43;
  *&v267 = 0;
  *(&v267 + 1) = 0xE000000000000000;
  v256 = a7;
  sub_1CF9E7948();
  v49 = *(&v267 + 1);
  v51 = a2[2];
  v50 = a2[3];

  v49, v52, v53, v54, v55, v56, v57, v58;
  *&v267 = v51;
  *(&v267 + 1) = v50;
  MEMORY[0x1D3868CC0](0x657620646C6F203ALL, 0xEE00736E6F697372);
  v59 = *(&v267 + 1);
  if (qword_1EDEAE418 != -1)
  {
    swift_once();
  }

  v60 = qword_1EDEBBD70;
  v61 = objc_allocWithZone(*(v42 + 1728));
  v62 = v60;
  v63 = sub_1CF9E6888();
  v59, v64, v65, v66, v67, v68, v69, v70;
  v71 = [v61 initWithLabel:v63 workloop:v62 shouldWatchRoot:0];

  *(v12 + 248) = v71;
  *(v12 + 216) = [*(v12 + 232) delegationQueue];
  v72 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v12 + 208) = v72;
  [v72 setUnderlyingQueue_];
  [*(v12 + 208) setMaxConcurrentOperationCount_];
  v73 = sub_1CF9E5A18();
  v75 = v74;
  *&v267 = v73;
  *(&v267 + 1) = v74;

  MEMORY[0x1D3868CC0](0x6F7473626D6F742FLL, 0xEB000000002F656ELL);
  v75, v76, v77, v78, v79, v80, v81, v82;
  v83 = v267;
  type metadata accessor for DocumentTrackingTombstoneSlayer();
  v84 = swift_allocObject();
  *(v84 + 32) = 1;
  *(v84 + 34) = 0;
  *(v84 + 16) = v83;
  sub_1CF4D406C();
  *(v12 + 256) = v84;
  *(v12 + 264) = sub_1CF4E25A8(MEMORY[0x1E69E7CC0]);
  *(v12 + 272) = dispatch_group_create();
  v85 = qword_1EDEAFB40;
  swift_beginAccess();
  v270 = 0;
  v247 = v85;
  sub_1CF9E6268();
  swift_endAccess();
  v86 = qword_1EDEAFB48;
  swift_beginAccess();
  v270 = 0;
  v246 = v86;
  sub_1CF9E6268();
  swift_endAccess();
  *(v12 + 168) = a3;
  v87 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  LODWORD(v258) = *(v87 + 2);
  v257 = a3;
  v88 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v266 = a2;
  v89 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext);
  v90 = *(v88 + 1);
  LOBYTE(v61) = v88[24];
  v91 = v88[25];
  LOBYTE(v75) = v88[26];
  type metadata accessor for VFSLookupScope(0);
  v92 = swift_allocObject();
  *(v92 + 40) = 0;
  *(v92 + 48) = 1;
  v93 = *(v88 + 2);
  v94 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v92 + 64) = v89;
  *(v92 + 96) = v94;
  *(v92 + 56) = 0;
  *(v92 + 72) = v90;
  *(v92 + 80) = v93;
  *(v92 + 88) = v61;
  *(v92 + 89) = v91;
  *(v92 + 90) = v75;
  swift_retain_n();
  v95 = v257;
  v97 = v260;
  v96 = v261;
  v98 = v262;
  sub_1CF3658E0(v260, v262, v258, v259 & 1, &v267);
  if (v96)
  {
    v98, v99, v100, v101, v102, v103, v104, v105;

    sub_1CF2B9AAC(v92 + 64);

    sub_1CEFF7124(v263, v264);

    *(v92 + 96), v106, v107, v108, v109, v110, v111, v112;
    swift_deallocPartialClassInstance();

    *(v12 + 184), v113, v114, v115, v116, v117, v118, v119;
    *(v12 + 192), v120, v121, v122, v123, v124, v125, v126;
    *(v12 + 200), v127, v128, v129, v130, v131, v132, v133;

    *(v12 + 264), v134, v135, v136, v137, v138, v139, v140;

    sub_1CF02B994(v12 + 280);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
    (*(*(v141 - 8) + 8))(v12 + v247, v141);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
    (*(*(v142 - 8) + 8))(v12 + v246, v142);

    v143 = v254[1];
    v267 = *v254;
    v268 = v143;
    *v269 = v254[2];
    *&v269[9] = *(v254 + 41);
    sub_1CEFCCC44(&v267, &unk_1EC4BEDF0, &qword_1CFA00818);

    sub_1CEFE5888(v253, type metadata accessor for VFSCounters);
    sub_1CF00D644(*(v12 + v248));
    sub_1CEFCCC44(v249, &qword_1EC4BEC48, &unk_1CFA00690);
    type metadata accessor for VFSFileTree(0);
    swift_deallocPartialClassInstance();
    return v12;
  }

  v259 = v90;
  v254 = v95;
  v261 = 0;
  v144 = v267;
  v145 = v268;
  v258 = *(&v268 + 1);
  LODWORD(v257) = v269[0];
  v98, v99, v100, v101, v102, v103, v104, v105;
  v146 = v242;
  v147 = *(v242 + 32);
  v148 = v97;
  v149 = v243;
  result = v147(v255, v148, v243);
  *(v92 + 16) = v145;
  *(v92 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v144;
  if (!*(v144 + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = (*(v146 + 16))(v92 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v144 + ((*(v146 + 80) + 32) & ~*(v146 + 80)), v149);
  *(v92 + 32) = *(&v144 + 1);
  if (!*(*(&v144 + 1) + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v150 = *(*(&v144 + 1) + 32);

  *(v92 + 24) = v150;
  v147((v92 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v255, v149);
  *(v92 + 40) = v258;
  *(v92 + 48) = v257;
  *(v92 + 49) = 0;
  *(v92 + 50) = a11 & 1;
  *(v12 + 160) = v92;
  *(v12 + 240) = MEMORY[0x1E69E7CC0];
  v152 = v264;
  v151 = v265;
  *(v12 + qword_1EDEAFB20) = v265;
  v153 = v151;
  v154 = (v12 + qword_1EDEAFB08);
  v155 = v263;
  *v154 = v263;
  v154[1] = v152;
  v156 = objc_opt_self();
  v262 = v153;
  sub_1CF03C63C(v155, v152);

  v157 = [v156 defaultStore];
  v158 = [v157 softConcurrentOperationLimit];
  LODWORD(v155) = [v157 hardConcurrentOperationLimit];

  v159 = v155;
  type metadata accessor for JobLimit();
  v160 = swift_allocObject();
  v160[2] = 0;
  v160[3] = v158;
  v160[4] = v158;
  v160[5] = v159;
  v161 = [v156 defaultStore];
  v162 = [v161 softConcurrentContentUpdateLimit];
  LODWORD(v158) = [v161 hardConcurrentContentUpdateLimit];

  v163 = v158;
  v164 = swift_allocObject();
  v164[2] = 0;
  v164[3] = v162;
  v164[4] = v162;
  v164[5] = v163;
  v165 = [v156 defaultStore];
  v166 = [v165 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v162) = [v165 hardConcurrentMetadataOnlyUpdateLimit];

  v167 = v162;
  v168 = swift_allocObject();
  v168[2] = 0;
  v168[3] = v166;
  v168[4] = v166;
  v168[5] = v167;
  v169 = [v156 defaultStore];
  v170 = [v169 softConcurrentProvideFileLimit];
  LODWORD(v167) = [v169 hardConcurrentProvideFileLimit];

  v171 = v167;
  v172 = v266;
  v173 = swift_allocObject();
  v173[2] = 0;
  v173[3] = v170;
  v173[4] = v170;
  v173[5] = v171;
  *(v12 + 112) = 0;
  *(v12 + 144) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = 0;
  (*(*v12 + 520))();
  *(v12 + 136) = v172;
  *(v12 + 80) = v160;
  *(v12 + 88) = v164;
  *(v12 + 96) = v168;
  *(v12 + 104) = v173;
  type metadata accessor for OldVersionClonesEventsDelegate();
  v174 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v12 + qword_1EDEAFB18) = v174;

  v175 = v261;
  sub_1CF368510(v265);
  if (v175)
  {

    sub_1CEFF7124(v263, v264);

    return v12;
  }

  result = [*(v12 + 232) latency];
  v177 = v176 * 5000.0;
  if (v177 <= 100.0)
  {
    v177 = 100.0;
    goto LABEL_20;
  }

  if ((*&v177 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_20:
  if (v177 > -9.22337204e18)
  {
    v261 = 0;
    if (v177 < 9.22337204e18)
    {
      v178 = v177;
      v179 = qword_1EDEAFB40;
      swift_beginAccess();
      v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
      v260 = v179;
      v181 = v236;
      v259 = v180;
      sub_1CF9E6278();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
      v182 = v228;
      sub_1CF9E6278();
      swift_endAccess();
      v183 = MEMORY[0x1E695C068];
      v184 = sub_1CEFCCCEC(&qword_1EDEAB6E8, &qword_1EC4BEE40, &qword_1CFA00858, MEMORY[0x1E695C068]);
      sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850, v183);
      v185 = v237;
      v186 = v230;
      v258 = v184;
      sub_1CF9E62C8();
      (*(v229 + 8))(v182, v186);
      v187 = *(v244 + 8);
      v244 += 8;
      v257 = v187;
      (v187)(v181, v185);
      v188 = v238;
      v265 = v178;
      sub_1CF9E7358();
      *&v267 = *(v12 + 216);
      v189 = v267;
      v190 = sub_1CF9E7338();
      v191 = *(v190 - 8);
      v192 = *(v191 + 56);
      v193 = v239;
      v255 = v190;
      v253 = v192;
      v252 = v191 + 56;
      (v192)(v239, 1, 1);
      v194 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
      sub_1CEFCCCEC(&unk_1EDEAB710, &qword_1EC4BEE48, &qword_1CFA00860, MEMORY[0x1E695BC68]);
      v195 = sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v196 = v189;
      v197 = v233;
      v198 = v232;
      v251 = v194;
      v250 = v195;
      v199 = v241;
      sub_1CF9E62D8();
      sub_1CEFCCC44(v193, &unk_1EC4BEE30, &unk_1CFA03240);

      v200 = *(v245 + 8);
      v245 += 8;
      v249 = v200;
      v200(v188, v240);
      (*(v231 + 8))(v199, v198);
      swift_allocObject();
      swift_weakInit();
      sub_1CEFCCCEC(&qword_1EDEAB700, &unk_1EC4BEE50, &qword_1CFA00868, MEMORY[0x1E695BE50]);
      swift_retain_n();
      v201 = v235;
      v202 = sub_1CF9E62F8();

      (*(v234 + 8))(v197, v201);
      *(v12 + qword_1EDEBBE78) = v202;

      [*(v12 + 232) latency];
      if (v203 == 0.0)
      {
        v204 = 10 * v265;
        if ((v265 * 10) >> 64 == (10 * v265) >> 63)
        {
LABEL_26:
          swift_beginAccess();
          v205 = v236;
          sub_1CF9E6278();
          swift_endAccess();
          v206 = v238;
          v207 = v204;
          sub_1CF9E7358();
          *&v267 = *(v12 + 216);
          v208 = v267;
          v209 = v239;
          v253(v239, 1, 1, v255);
          v210 = v208;
          v211 = v222;
          v212 = v237;
          sub_1CF9E62D8();
          sub_1CEFCCC44(v209, &unk_1EC4BEE30, &unk_1CFA03240);

          v249(v206, v240);
          (v257)(v205, v212);
          swift_allocObject();
          swift_weakInit();

          sub_1CEFCCCEC(&qword_1EDEAB708, &qword_1EC4BEE28, &unk_1CFA00840, MEMORY[0x1E695BE50]);
          v213 = v224;
          v214 = sub_1CF9E62F8();

          (*(v223 + 8))(v211, v213);
          *(v12 + qword_1EDEBBE80) = v214;

          v215 = fpfs_current_or_default_log();
          v216 = v225;
          sub_1CF9E6128();
          v217 = sub_1CF9E6108();
          v218 = sub_1CF9E7288();
          if (os_log_type_enabled(v217, v218))
          {
            v219 = swift_slowAlloc();
            *v219 = 134218240;
            *(v219 + 4) = v265;
            *(v219 + 12) = 2048;
            *(v219 + 14) = v207;
            _os_log_impl(&dword_1CEFC7000, v217, v218, "idle stream timeouts: %ldms, long: %ldms", v219, 0x16u);
            MEMORY[0x1D386CDC0](v219, -1, -1);

            sub_1CEFF7124(v263, v264);
          }

          else
          {

            sub_1CEFF7124(v263, v264);
          }

          v220 = v262;

          (*(v226 + 8))(v216, v227);

          return v12;
        }

        __break(1u);
      }

      v204 = 60000;
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CF25EBC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v2 == v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      if (v3 == v18)
      {
        v6 = v5 + qword_1EDEAFB30;
        swift_beginAccess();
        if (*(v6 + 8) || [*(v5 + 232) hasBufferedEvents])
        {
          v7 = v5 + qword_1EDEAFAF0;
          *v7 = v2;
          *(v7 + 8) = v3;
          *(v7 + 16) = 0;
        }

        else
        {
          v8 = *(v5 + 16);
          if (v8)
          {
            v9 = *(v5 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_1CF9FA450;
            swift_storeEnumTagMultiPayload();

            v8(v10, MEMORY[0x1E69E7CC0], 0, 0);
            sub_1CEFF7124(v8, v9);
            v10, v11, v12, v13, v14, v15, v16, v17;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CF25EE10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v2 == v17)
    {
      v5 = v4 + qword_1EDEAFB30;
      swift_beginAccess();
      if (*(v5 + 8) || [*(v4 + 232) hasBufferedEvents])
      {
        v6 = v4 + qword_1EDEAFB38;
        *v6 = v2;
        *(v6 + 8) = 0;
      }

      else
      {
        v7 = *(v4 + 16);
        if (v7)
        {
          v8 = *(v4 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1CF9FA450;
          swift_storeEnumTagMultiPayload();

          v7(v9, MEMORY[0x1E69E7CC0], 0, 0);
          sub_1CEFF7124(v7, v8);
          v9, v10, v11, v12, v13, v14, v15, v16;
        }
      }
    }
  }

  return result;
}

void *sub_1CF25F010()
{
  v1 = qword_1EDEAFAE0;
  v2 = *(v0 + qword_1EDEAFAE0);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    v5 = *(v0 + qword_1EDEAFB08);
    if (v5)
    {
      v6 = v5();
      v3 = v6;
      if (v6)
      {
        sub_1CF25F0C0(v6, 0, 1);
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v4 + v1) = v3;
    v8 = v3;
    sub_1CF00D644(v7);
  }

  sub_1CF2B1FC4(v2);
  return v3;
}

void sub_1CF25F0C0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v4 + qword_1EDEAFB20);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 pathComponents];
    v11 = sub_1CF9E6D48();

    v12 = *v11->tree;
    v11, v13, v14, v15, v16, v17, v18, v19;
    if (v12 >= 2)
    {
      v8 = [v9 stringByDeletingLastPathComponent];
      if (!v8)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;
        v8 = sub_1CF9E6888();
        v21, v22, v23, v24, v25, v26, v27, v28;
      }
    }
  }

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v8;
  *(v30 + 32) = a2;
  *(v30 + 40) = a3 & 1;
  v33[4] = sub_1CF2B1FB4;
  v33[5] = v30;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1CF2D00A0;
  v33[3] = &block_descriptor_1423;
  v31 = _Block_copy(v33);
  v32 = v8;

  [a1 setModifyDecoratedPayloadHook:v31 forCategory:1];
  _Block_release(v31);
}

void sub_1CF25F284(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 112) & 1) == 0)
    {
      if (a5)
      {
        v12 = objc_opt_self();
        v13 = a5;
        v14 = [v12 defaultStore];
        v15 = [v14 dynamicErrorSampleRatePerProvider];

        v16 = sub_1CF9E6D48();
        sub_1CF51810C(v13, v16);
        v18 = v17;
        LOBYTE(v15) = v19;
        v16, v19, v20, v21, v22, v23, v24, v25;
        if (v15)
        {

          goto LABEL_9;
        }

        v26 = sub_1CF518B08(0x64uLL);

        if (__OFADD__(v26, 1))
        {
          __break(1u);
          return;
        }

        if (v18 >= (v26 + 1))
        {
          goto LABEL_9;
        }
      }

      [a3 removeAllObjects];
LABEL_16:

      return;
    }

LABEL_9:
    v27 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (a2)
    {
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v29 = [v32 fp_protectionClassBehindError];
        if (v29)
        {
          v30 = v29;
          [a3 __swift_setObject_forKeyedSubscript_];
          swift_unknownObjectRelease();
        }

        if ((a7 & 1) == 0)
        {
          v31 = sub_1CF9E7628();
          [a3 __swift_setObject_forKeyedSubscript_];

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_16;
  }
}

uint64_t sub_1CF25F590@<X0>(uint64_t a1@<X8>)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v15 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v4 = v1[20];

  v5 = objc_sync_exit(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v15 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v14, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v6 = objc_opt_self();
  v7 = *(v4 + 16);

  v8 = [v6 eventStreamUUIDForDevice_];
  if (v8)
  {
    v9 = v8;
    sub_1CF9E5D58();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_1CF9E5D98();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1CF25F72C(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v30) = a2;
  v5 = sub_1CF9E63D8();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(v3 + 216);
  v15 = *(v3 + 224);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v13, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v30 & 1;
  *(v18 + 32) = v3;
  v19 = v14;

  v20 = fpfs_current_log();
  v30 = *(v15 + 16);
  sub_1CEFCCBDC(v13, v10, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BE370, qword_1CFA01B30);
    v21 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v17 + 8))(v10, v16);
    v21 = sub_1CF9E63C8();
    (*(v28 + 8))(v7, v29);
  }

  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_1CF2B1F18;
  v22[4] = v18;
  v35 = sub_1CF2BA17C;
  v36 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1CEFCA444;
  v34 = &block_descriptor_1411;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  v35 = nullsub_1;
  v36 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1CEFCA444;
  v34 = &block_descriptor_1414;
  v25 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v30, v19, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v21, v23, v25);
  _Block_release(v25);
  _Block_release(v23);

  return sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF25FB1C(uint64_t a1, int a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEBB990;
  (*(v6 + 56))(v14, 1, 1, v5);
  v64 = a2;
  v63 = a1;
  v16 = sub_1CF953A9C(a1, a2 & 1);
  v18 = v17;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) == 1)
  {
    v20 = v15;
    sub_1CF9E6048();
    if (v19(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v21 = sub_1CF9E7478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v22 = swift_allocObject();
  v62 = xmmword_1CF9FA450;
  *(v22 + 16) = xmmword_1CF9FA450;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1CEFD51C4();
  *(v22 + 32) = v16;
  *(v22 + 40) = v18;
  sub_1CF9E6028(v21, &dword_1CEFC7000, v15, "Reset stream", 12, 2, v8, "%s", 2);
  v22, v23, v24, v25, v26, v27, v28, v29;
  (*(v6 + 8))(v8, v5);
  v18, v30, v31, v32, v33, v34, v35, v36;
  sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = *(v65 + 16);
  if (v37)
  {
    v38 = *(v65 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v62;
    v42 = v41 + v40;
    *v42 = 0;
    *(v42 + 8) = v63;
    *(v42 + 16) = v64 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v43 = *(type metadata accessor for SyncState(0) - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1CF9FA440;
    v47 = v46 + v45;

    *v47 = FSEventsGetCurrentEventId();
    *(v47 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1CF25F590(v47 + v44);
    swift_storeEnumTagMultiPayload();
    v37(v41, v46, 0, 0);
    sub_1CEFF7124(v37, v38);
    v41, v48, v49, v50, v51, v52, v53, v54;
    v46, v55, v56, v57, v58, v59, v60, v61;
  }
}

void (*sub_1CF26003C(uint64_t a1, uint64_t a2))(uint64_t *, void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    result(&v4, 0);
  }

  return result;
}

void sub_1CF2600E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - v5;
  v7 = *(v1 + 136);
  v8 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  if (!*(v7 + v8))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v9 = sub_1CF9E6A58();
  v11 = v10;
  strcpy(v53, "/oldVersions");
  BYTE5(v53[1]) = 0;
  HIWORD(v53[1]) = -5120;
  v54 = v9;
  v55 = v10;

  v54 = sub_1CF9E6B48();
  v55 = v12;
  sub_1CF9E6A28();
  v13 = v55;
  v52 = *(v2 + 248);
  v14 = sub_1CF9E6888();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  v51 = v53[0];
  sub_1CEFCCBDC(a1, v6, &unk_1EC4BEDE0, qword_1CF9FA390);
  v15 = sub_1CF9E5D98();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v6, 1, v15) != 1)
  {
    v17 = sub_1CF9E5D38();
    (*(v16 + 8))(v6, v15);
  }

  v18 = *(v2 + qword_1EDEAFB18);
  if (!v18)
  {
    goto LABEL_9;
  }

  v13, v19, v20, v21, v22, v23, v24, v25;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v53[1], v26, v27, v28, v29, v30, v31, v32;
  v53[0] = 0xD000000000000015;
  v53[1] = 0x80000001CFA3D930;
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v33, v34, v35, v36, v37, v38, v39;
  v40 = v53[1];
  v41 = sub_1CF9E6888();
  v40, v42, v43, v44, v45, v46, v47, v48;
  v49 = [v52 subscribeToEventsAtPath:v14 fd:0xFFFFFFFFLL sinceEventID:v51 streamUUID:v17 ignoreOwnEvents:0 delegate:v18 purpose:v41];

  swift_beginAccess();
  v50 = v49;
  MEMORY[0x1D3868FA0]();
  if (*((*(v2 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
}

uint64_t sub_1CF260470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a3;
  v6 = v5;
  v99 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E6118();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  sub_1CF25F590(&v86 - v16);
  v18 = sub_1CF9E5D98();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v89 = v19 + 48;
  v90 = v20;
  if (v20(v17, 1, v18) == 1)
  {
    v91 = v17;
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (os_log_type_enabled(v22, v23))
    {
      v87 = a4;
      v88 = a5;
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      if (objc_sync_enter(v6))
      {

        MEMORY[0x1EEE9AC00](v82);
        v83 = &v86 - 4;
        *(&v86 - 2) = v6;
        goto LABEL_42;
      }

      v86 = a2;
      v25 = v6;
      v26 = v6[20];

      if (objc_sync_exit(v25))
      {

        MEMORY[0x1EEE9AC00](v84);
        v85 = &v86 - 4;
        *(&v86 - 2) = v25;
        goto LABEL_44;
      }

      v27 = *(v26 + 16);

      *(v24 + 4) = v27;

      _os_log_impl(&dword_1CEFC7000, v22, v23, "Unable to retrieve FSEvent stream UUID for device %d", v24, 8u);
      MEMORY[0x1D386CDC0](v24, -1, -1);

      v6 = v25;
      a4 = v87;
      a5 = v88;
      a2 = v86;
    }

    else
    {
    }

    (*(v92 + 8))(v12, v93);
    v17 = v91;
  }

  ObjectType = swift_getObjectType();
  v29 = v95;
  v30 = v96;
  v31 = sub_1CF95F4C4(v96, ObjectType, a4, a2, a5);
  if (v29)
  {
LABEL_10:
    v38 = v17;
    return sub_1CEFCCC44(v38, &unk_1EC4BEDE0, qword_1CF9FA390);
  }

  v33 = a4;
  v34 = v6;
  v35 = a5;
  v36 = v32;
  v37 = v31;
  sub_1CF95F5EC(v30, ObjectType, v33, a2, v35, v94);
  if (v36)
  {
    v40 = v34;
    sub_1CF25F72C(0, 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    v37 = v98;
    v41 = v94;
    goto LABEL_20;
  }

  v41 = v94;
  v42 = v90;
  if (v90(v94, 1, v18) == 1)
  {
    v43 = 1;
LABEL_18:
    v40 = v34;
    sub_1CF25F72C(v43, 1);
    goto LABEL_20;
  }

  if (v42(v17, 1, v18) == 1)
  {
    v43 = 2;
    goto LABEL_18;
  }

  v40 = v34;
LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v37;

  sub_1CF9E62A8();
  v44 = objc_sync_enter(v40);
  if (v44)
  {
    MEMORY[0x1EEE9AC00](v44);
    v83 = &v86 - 4;
    *(&v86 - 2) = v40;
LABEL_42:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v83, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v45 = v40[20];

  v46 = objc_sync_exit(v40);
  if (v46)
  {
    MEMORY[0x1EEE9AC00](v46);
    v85 = &v86 - 4;
    *(&v86 - 2) = v40;
LABEL_44:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v85, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v91 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  MEMORY[0x1EEE9AC00](v47);
  *(&v86 - 6) = v49;
  *(&v86 - 5) = v48;
  *(&v86 - 4) = v41;
  *(&v86 - 3) = v45;
  *(&v86 - 2) = v40;
  v51 = sub_1CF25A464(sub_1CF2B1720, (&v86 - 8), v50);

  swift_beginAccess();
  v52 = v40[30];
  v40[30] = v51;
  v52, v53, v54, v55, v56, v57, v58, v59;
  sub_1CF2600E0(v41);
  v60 = v40[30];
  if (v60 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    if (!i)
    {
      break;
    }

    v69 = 0;
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1D3869C30](v69, v60);
      }

      else
      {
        if (v69 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v70 = *(&v60[1].super.isa + v69);
      }

      v71 = v70;
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v97 = 0;
      if (![v70 activateWithError_])
      {
        v74 = v97;
        v60, v75, v76, v77, v78, v79, v80, v81;
        sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFCCC44(v94, &unk_1EC4BEDE0, qword_1CF9FA390);
        v17 = v91;
        goto LABEL_10;
      }

      v73 = v97;

      ++v69;
      if (v72 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_34:
  v60, v62, v63, v64, v65, v66, v67, v68;
  sub_1CEFCCC44(v94, &unk_1EC4BEDE0, qword_1CF9FA390);
  v38 = v91;
  return sub_1CEFCCC44(v38, &unk_1EC4BEDE0, qword_1CF9FA390);
}

void sub_1CF260C6C()
{
  v1 = v0;
  v2 = *(v0 + 216);
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v34 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  sub_1CF9E6978();
  v34, v16, v17, v18, v19, v20, v21, v22;
  v23 = __fp_log_fork();

  v41 = v23;
  v42 = 0;
  v29[2] = v3;
  v29[3] = &v41;
  v29[4] = v2;
  v29[5] = "stopEventAggregation()";
  v29[6] = 22;
  v30 = 2;
  v31 = sub_1CF2B16D8;
  v32 = v1;
  v40 = 1;
  v39 = 0;
  v24 = swift_allocObject();
  v24[2] = &v40;
  v24[3] = sub_1CF2BA13C;
  v24[4] = v29;
  v24[5] = &v39;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF2BA170;
  *(v25 + 24) = v24;
  v37 = sub_1CF1C0B54;
  v38 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CEFFD02C;
  v36 = &block_descriptor_1056;
  v26 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v39)
  {
    if ((v40 & 1) == 0)
    {

      v27 = fpfs_adopt_log();

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  swift_willThrow();

  v28 = fpfs_adopt_log();
  __break(1u);
}

uint64_t sub_1CF260F2C(void *a1)
{
  a1[36] = 0;
  swift_unknownObjectWeakAssign();
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  sub_1CEFF7124(v2, v3);
  v4 = a1[6];
  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  return sub_1CEFF7124(v4, v5);
}

void sub_1CF260F7C()
{
  v1 = v0;
  v2 = *(v0 + 216);
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v34 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  sub_1CF9E6978();
  v34, v16, v17, v18, v19, v20, v21, v22;
  v23 = __fp_log_fork();

  v41 = v23;
  v42 = 0;
  v29[2] = v3;
  v29[3] = &v41;
  v29[4] = v2;
  v29[5] = "cancel()";
  v29[6] = 8;
  v30 = 2;
  v31 = sub_1CF2B16BC;
  v32 = v1;
  v40 = 1;
  v39 = 0;
  v24 = swift_allocObject();
  v24[2] = &v40;
  v24[3] = sub_1CF2BA13C;
  v24[4] = v29;
  v24[5] = &v39;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF2BA170;
  *(v25 + 24) = v24;
  v37 = sub_1CF1C0B54;
  v38 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CEFFD02C;
  v36 = &block_descriptor_1044;
  v26 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v39)
  {
    if ((v40 & 1) == 0)
    {

      v27 = fpfs_adopt_log();

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  swift_willThrow();

  v28 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF26123C(void *a1)
{
  swift_beginAccess();
  v3 = a1[24];
  v55 = v1;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_31;
  }

LABEL_2:

  v11 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v12 = a1[24];
    a1[24] = v11;
    v12, v4, v5, v6, v7, v8, v9, v10;
    v13 = sub_1CF4E2378(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v14 = a1[25];
    a1[25] = v13;
    v14, v15, v16, v17, v18, v19, v20, v21;
    if ((v3 & 0xC000000000000001) != 0)
    {
      sub_1CF9E7808();
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF2B1654(&unk_1EC4BEDB0, &unk_1EDEA3640, 0x1E696ABF8, MEMORY[0x1E69E81B8]);
      sub_1CF9E7038();
      v3 = v57;
      v22 = v58;
      v23 = v59;
      v24 = v60;
      v25 = v61;
    }

    else
    {
      v24 = 0;
      v26 = -1 << *(v3 + 32);
      v22 = v3 + 56;
      v23 = ~v26;
      v27 = -v26;
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v25 = v28 & *(v3 + 56);
    }

    v29 = (v23 + 64) >> 6;
    if (v3 < 0)
    {
      break;
    }

LABEL_10:
    v30 = v24;
    v31 = v25;
    v32 = v24;
    if (v25)
    {
LABEL_14:
      v33 = (v31 - 1) & v31;
      v34 = *(*(v3 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (v34)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        goto LABEL_20;
      }

      v31 = *(v22 + 8 * v32);
      ++v30;
      if (v31)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    if (!sub_1CF9E7818())
    {
      goto LABEL_2;
    }

    sub_1CF6F3CF4(MEMORY[0x1E69E7CC0]);
  }

  while (sub_1CF9E7838())
  {
    sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
    swift_dynamicCast();
    v34 = v56;
    v32 = v24;
    v33 = v25;
    if (!v56)
    {
      break;
    }

LABEL_18:
    [v34 cancel];

    v24 = v32;
    v25 = v33;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  sub_1CEFCB59C(v3);
  fp_task_tracker_cancel(*(a1[28] + 16));
  swift_beginAccess();
  v42 = a1[30];
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_22;
    }

LABEL_29:
    v54 = a1[30];
    a1[30] = MEMORY[0x1E69E7CC0];
    v54, v35, v36, v37, v38, v39, v40, v41;
    *(a1 + qword_1EDEBBE78) = 0;

    *(a1 + qword_1EDEBBE80) = 0;

    return;
  }

  v43 = sub_1CF9E7818();
  if (!v43)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (v43 >= 1)
  {

    for (i = 0; i != v43; ++i)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1D3869C30](i, v42);
      }

      else
      {
        v45 = *(&v42[1].super.isa + i);
      }

      v46 = v45;
      [v45 dispose];
    }

    v42, v47, v48, v49, v50, v51, v52, v53;
    goto LABEL_29;
  }

  __break(1u);
}

id sub_1CF2615EC()
{
  v1 = v0;
  fp_task_tracker_wait(*(*(v0 + 224) + 16));
  [*(v0 + 208) waitUntilAllOperationsAreFinished];
  swift_beginAccess();
  v2 = *(v0 + 264);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v11 = v10;
      sub_1CF9E7418();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v2, v12, v13, v14, v15, v16, v17, v18;
  v19 = *(v0 + 216);
  v20 = fpfs_current_log();
  v51 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v53 = v21;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v22 = sub_1CF9E7988();
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  sub_1CF9E6978();
  v53, v32, v33, v34, v35, v36, v37, v38;
  v39 = __fp_log_fork();

  v60 = v39;
  v61 = 0;
  MEMORY[0x1EEE9AC00](v40);
  v47[2] = v20;
  v47[3] = &v60;
  v47[4] = v19;
  v47[5] = "close()";
  v47[6] = 7;
  v48 = 2;
  v49 = nullsub_1;
  v50 = 0;
  v59 = 1;
  v58 = 0;
  v41 = swift_allocObject();
  v41[2] = &v59;
  v41[3] = sub_1CF2B1698;
  v41[4] = v47;
  v41[5] = &v58;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1CF2B16B0;
  *(v42 + 24) = v41;
  v56 = sub_1CEFFD054;
  v57 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1CEFFD02C;
  v55 = &block_descriptor_1032;
  v43 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v19, v43);
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v58)
  {
    goto LABEL_18;
  }

  if ((v59 & 1) == 0)
  {

    v44 = v51;
    v45 = fpfs_adopt_log();

    [*(v1 + 232) close];
    [*(v1 + 248) close];
    *(v1 + qword_1EDEAFB18) = 0;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_willThrow();

  result = fpfs_adopt_log();
  __break(1u);
  return result;
}

void sub_1CF261A18(uint64_t a1)
{
  v3 = v1;
  v270 = a1;
  v280[3] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v257 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v271 = &v257 - v8;
  v278 = sub_1CF9E5A58();
  v276 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v277 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v263 = &v257 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v269 = &v257 - v14;
  v15 = sub_1CF9E64A8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3[27];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v21 = v20;
  v22 = sub_1CF9E64D8();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v268 = v10;
  v23 = objc_sync_enter(v3);
  if (v23)
  {
    goto LABEL_71;
  }

  v24 = v3[20];

  v25 = objc_sync_exit(v3);
  v26 = v269;
  if (v25)
  {
LABEL_72:
    MEMORY[0x1EEE9AC00](v25);
    *(&v257 - 2) = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v257 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v27 = *(v24 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = v270;

  v30 = sub_1CF9E6108();
  v31 = sub_1CF9E7288();
  v27, v32, v33, v34, v35, v36, v37, v38;
  v29, v39, v40, v41, v42, v43, v44, v45;
  v266 = v31;
  v46 = os_log_type_enabled(v30, v31);
  v267 = v11;
  if (v46)
  {
    v259 = v30;
    v260 = v6;
    v47 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v280[0] = v258;
    v265 = v47;
    *v47 = 136315394;
    v48 = *v29->tree;
    v49 = MEMORY[0x1E69E7CC0];
    v264 = v3;
    v262 = v2;
    v261 = v27;
    if (v48)
    {
      v279 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v48, 0);
      v49 = v279;
      v50 = *(v276 + 16);
      v51 = v29 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
      v273 = *(v276 + 72);
      v274 = v50;
      v275 = (v276 + 16);
      v272 = (v276 + 8);
      do
      {
        v52 = v277;
        v53 = v278;
        (v274)(v277, v51, v278);
        v54 = sub_1CF9E5928();
        v55 = [v54 fp_shortDescription];

        v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v58 = v57;

        (*v272)(v52, v53);
        v279 = v49;
        v60 = *v49->tree;
        v59 = *v49->tester;
        if (v60 >= v59 >> 1)
        {
          sub_1CEFE95CC((v59 > 1), v60 + 1, 1);
          v49 = v279;
        }

        *v49->tree = v60 + 1;
        v61 = v49 + 16 * v60;
        *(v61 + 4) = v56;
        *(v61 + 5) = v58;
        v51 = v273 + v51;
        --v48;
      }

      while (v48);
      v3 = v264;
      v11 = v267;
      v72 = v268;
      v73 = v262;
      v27 = v261;
    }

    else
    {
      v73 = v2;
      v72 = v268;
    }

    v74 = MEMORY[0x1D3868FE0](v49, MEMORY[0x1E69E6158]);
    v76 = v75;
    v49, v75, v77, v78, v79, v80, v81, v82;
    v83 = sub_1CEFD0DF0(v74, v76, v280);
    v76, v84, v85, v86, v87, v88, v89, v90;
    v98 = v265;
    *(v265 + 1) = v83;
    *(v98 + 6) = 2080;
    v99 = *v27->tree;
    if (v99)
    {
      v279 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v99, 0);
      v100 = v279;
      v101 = *(v276 + 16);
      v102 = v27 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
      v274 = *(v276 + 72);
      v275 = v101;
      v276 += 16;
      v273 = (v276 - 8);
      do
      {
        v103 = v277;
        v104 = v278;
        v275(v277, v102, v278);
        v105 = sub_1CF9E5928();
        v106 = [v105 fp_shortDescription];

        v107 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v109 = v108;

        (*v273)(v103, v104);
        v279 = v100;
        v118 = *v100->tree;
        v117 = *v100->tester;
        if (v118 >= v117 >> 1)
        {
          sub_1CEFE95CC((v117 > 1), v118 + 1, 1);
          v100 = v279;
        }

        *v100->tree = v118 + 1;
        v119 = v100 + 16 * v118;
        *(v119 + 4) = v107;
        *(v119 + 5) = v109;
        v102 = v274 + v102;
        --v99;
      }

      while (v99);
      v261, v110, v111, v112, v113, v114, v115, v116;
      v3 = v264;
      v11 = v267;
      v72 = v268;
      v73 = v262;
    }

    else
    {
      v27, v91, v92, v93, v94, v95, v96, v97;
      v100 = MEMORY[0x1E69E7CC0];
    }

    v120 = MEMORY[0x1D3868FE0](v100, MEMORY[0x1E69E6158]);
    v122 = v121;
    v100, v121, v123, v124, v125, v126, v127, v128;
    v129 = sub_1CEFD0DF0(v120, v122, v280);
    v122, v130, v131, v132, v133, v134, v135, v136;
    v137 = v265;
    *(v265 + 14) = v129;
    v138 = v259;
    _os_log_impl(&dword_1CEFC7000, v259, v266, "starting to observe fsevent on %s (was %s)", v137, 0x16u);
    v139 = v258;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v139, -1, -1);
    MEMORY[0x1D386CDC0](v137, -1, -1);

    v69 = *(v11 + 8);
    v69(v269, v72);
    v6 = v260;
    v29 = v270;
  }

  else
  {

    v27, v62, v63, v64, v65, v66, v67, v68;
    v69 = *(v11 + 8);
    v70 = v26;
    v71 = v268;
    v69(v70, v268);
    v73 = v2;
    v72 = v71;
  }

  v23 = objc_sync_enter(v3);
  if (v23)
  {
LABEL_71:
    MEMORY[0x1EEE9AC00](v23);
    *(&v257 - 2) = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v257 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v25 = objc_sync_exit(v3);
  if (v25)
  {
    goto LABEL_72;
  }

  v22 = sub_1CF36A09C(v29, 1);
  v141 = v140;
  v143 = v142;

  if (v73)
  {
    return;
  }

  v274 = v143;
  if ((v141 & 1) == 0)
  {
    v274, v144, v145, v146, v147, v148, v149, v150;
    v159 = fpfs_current_or_default_log();
    v160 = v263;
    sub_1CF9E6128();
    v161 = sub_1CF9E6108();
    v162 = sub_1CF9E7298();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_1CEFC7000, v161, v162, "roots haven't changed", v163, 2u);
      MEMORY[0x1D386CDC0](v163, -1, -1);
    }

    else
    {
    }

    v69(v160, v72);
    return;
  }

  LODWORD(v272) = v141;

  sub_1CF2AAC1C(v151);

  sub_1CF368510(*(v3 + qword_1EDEAFB20));
  v164 = sub_1CF9E5D98();
  v165 = *(v164 - 8);
  v276 = *(v165 + 56);
  v277 = v164;
  v275 = (v165 + 56);
  (v276)(v271, 1, 1);
  swift_beginAccess();
  v173 = v3[30];
  v3[30] = MEMORY[0x1E69E7CC0];
  v278 = v173;
  v264 = v3;
  v273 = 0;
  if (v173 >> 62)
  {
LABEL_42:
    v174 = sub_1CF9E7818();
    v270 = v22;
    if (v174)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  v174 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v270 = v22;
  if (v174)
  {
LABEL_32:
    if (v174 < 1)
    {
      __break(1u);
    }

    v175 = 0;
    v176 = v278 & 0xC000000000000001;
    do
    {
      if (v176)
      {
        v180 = MEMORY[0x1D3869C30](v175, v278);
      }

      else
      {
        v180 = *(v278 + 8 * v175 + 32);
      }

      v181 = v180;
      v182 = [v180 eventStreamUUID];
      v183 = v6;
      if (v182)
      {
        v177 = v182;
        sub_1CF9E5D58();

        v178 = 0;
      }

      else
      {
        v178 = 1;
      }

      ++v175;
      v179 = v271;
      sub_1CEFCCC44(v271, &unk_1EC4BEDE0, qword_1CF9FA390);
      (v276)(v183, v178, 1, v277);
      sub_1CEFE55D0(v183, v179, &unk_1EC4BEDE0, qword_1CF9FA390);
      [v181 dispose];

      v6 = v183;
    }

    while (v174 != v175);
  }

LABEL_43:
  v278, v166, v167, v168, v169, v170, v171, v172;
  swift_getKeyPath();
  swift_getKeyPath();
  v184 = v264;
  sub_1CF9E6298();

  MEMORY[0x1EEE9AC00](v185);
  *(&v257 - 6) = v187;
  *(&v257 - 5) = v186;
  v188 = v271;
  *(&v257 - 4) = v271;
  *(&v257 - 3) = v189;
  *(&v257 - 2) = v184;
  v190 = v273;
  v192 = sub_1CF25A464(sub_1CF2B9F1C, (&v257 - 8), v191);
  v193 = v184[30];
  v184[30] = v192;
  v193, v194, v195, v196, v197, v198, v199, v200;
  sub_1CF2600E0(v188);
  v201 = v184[30];
  v273 = v190;
  if (v201 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    if (!i)
    {
      break;
    }

    v210 = 0;
    while (1)
    {
      if ((v201 & 0xC000000000000001) != 0)
      {
        v211 = MEMORY[0x1D3869C30](v210, v201);
      }

      else
      {
        if (v210 >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v211 = *(&v201[1].super.isa + v210);
      }

      v212 = v211;
      v213 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
        break;
      }

      v279 = 0;
      if (![v211 activateWithError_])
      {
        v235 = v279;
        v274, v236, v237, v238, v239, v240, v241, v242;
        v201, v243, v244, v245, v246, v247, v248, v249;
        sub_1CF9E57F8();

        swift_willThrow();

        goto LABEL_63;
      }

      v214 = v279;

      ++v210;
      if (v213 == i)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

LABEL_55:
  v201, v203, v204, v205, v206, v207, v208, v209;
  v215 = v264;
  if ((v272 & 0x100) != 0)
  {
    sub_1CF25F72C(4, 1);
  }

  v216 = v274;
  if (*v274->tree)
  {
    v217 = v215[2];
    if (v217)
    {
      v218 = v215[3];

      sub_1CF25A5A8(v216);
      v220 = v219;
      v216, v221, v222, v223, v224, v225, v226, v227;
      v217(v220, MEMORY[0x1E69E7CC0], 0, 0);
      v220, v228, v229, v230, v231, v232, v233, v234;
      sub_1CEFF7124(v217, v218);
    }

    else
    {

      v216, v250, v251, v252, v253, v254, v255, v256;
    }

LABEL_63:
    sub_1CEFCCC44(v271, &unk_1EC4BEDE0, qword_1CF9FA390);
  }

  else
  {
    sub_1CEFCCC44(v271, &unk_1EC4BEDE0, qword_1CF9FA390);

    v216, v152, v153, v154, v155, v156, v157, v158;
  }
}

void sub_1CF262924(char a1)
{
  v3 = v1;
  v5 = objc_sync_enter(v3);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v26 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = objc_sync_exit(v3);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v26 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v25, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v7 = sub_1CF367450(a1 & 1);

  if (!v2 && (v7 & 1) != 0)
  {
    v8 = v3[2];
    if (v8)
    {
      v9 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
      v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1CF9FA450;
      v13 = v12 + v11;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
      v15 = *(v14 + 48);
      v16 = *(v14 + 64);
      *v13 = 1;
      *(v13 + 8) = 2;
      v17 = type metadata accessor for VFSItem(0);
      (*(*(v17 - 8) + 56))(v13 + v15, 1, 1, v17);
      *(v13 + v16) = 0;
      swift_storeEnumTagMultiPayload();

      v8(v12, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v8, v9);
      v12, v18, v19, v20, v21, v22, v23, v24;
    }
  }
}

void sub_1CF262BC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  if (*(v2[33] + 16) && (sub_1CF7BF2C0(v5, v6), (v7 & 1) != 0))
  {
    sub_1CF2B1EB8(&v35);
  }

  else
  {
    flock_type = fpfs_get_flock_type();
    v9 = v2[6];
    if (v9)
    {
      v10 = flock_type;
      v11 = v2[7];
      *&v35 = v5;
      BYTE8(v35) = v6;

      v9(&v35, v10, 0);
      sub_1CEFF7124(v9, v11);
    }

    v12 = v3[27];
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v5;
    *(v14 + 32) = v6;
    *&v37 = sub_1CF2B1EAC;
    *(&v37 + 1) = v14;
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 1107296256;
    *&v36 = sub_1CEFCA444;
    *(&v36 + 1) = &block_descriptor_1386;
    v15 = _Block_copy(&v35);
    v16 = v12;

    v17 = fpfs_set_unlock_handler(v4, v16, v15);
    _Block_release(v15);

    if (v17)
    {
      v18 = v3[34];
      v19 = v17;
      dispatch_group_enter(v18);
      swift_beginAccess();
      v20 = v19;
      sub_1CF1C8D78(v17, v5, v6);
      swift_endAccess();
      sub_1CF2B1EB8(&v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      swift_allocError();
      *v21 = v35;
      v22 = v39;
      v24 = v36;
      v23 = v37;
      *(v21 + 48) = v38;
      *(v21 + 64) = v22;
      *(v21 + 16) = v24;
      *(v21 + 32) = v23;
      v26 = v41;
      v25 = v42;
      v27 = v40;
      *(v21 + 128) = v43;
      *(v21 + 96) = v26;
      *(v21 + 112) = v25;
      *(v21 + 80) = v27;
      swift_willThrow();

      return;
    }

    sub_1CF2B0C28(&v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  swift_allocError();
  *v28 = v35;
  v29 = v39;
  v31 = v36;
  v30 = v37;
  *(v28 + 48) = v38;
  *(v28 + 64) = v29;
  *(v28 + 16) = v31;
  *(v28 + 32) = v30;
  v33 = v41;
  v32 = v42;
  v34 = v40;
  *(v28 + 128) = v43;
  *(v28 + 96) = v33;
  *(v28 + 112) = v32;
  *(v28 + 80) = v34;
  swift_willThrow();
}

uint64_t sub_1CF262F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = sub_1CF1CE738(a2, a3);
    swift_endAccess();
    if (v7)
    {
      dispatch_group_leave(*(v6 + 272));
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      sub_1CF9E7418();
    }

    v8 = *(v6 + 48);
    if (v8)
    {
      v9 = *(v6 + 56);
      v10 = a2;
      v11 = a3;
      sub_1CF03C63C(v8, v9);
      v8(&v10, 3, 1);
      sub_1CEFF7124(v8, v9);
    }
  }

  return result;
}

void sub_1CF263024(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v105 = a3;
  v119 = *MEMORY[0x1E69E9840];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v104);
  v102 = (v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v96 = (v90 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v103 = (v90 - v14);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v99);
  v100 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v98 = (v90 - v18);
  v19 = *a1;
  v21 = *a2;
  v20 = a2[1];
  v17.n128_u64[0] = a2[2];
  v106 = v17;
  v22 = a2[3];
  v23 = a2[4];
  v24 = qword_1EDEBBE70;
  swift_beginAccess();
  v25 = *(v6 + v24);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v97 = a4;
  *(v6 + v24) = v27;

  v28 = objc_sync_enter(v6);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v90[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v90[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v29 = v23;
  LODWORD(v101) = v19;
  v30 = v6[20];

  v31 = objc_sync_exit(v6);
  if (v31)
  {
    MEMORY[0x1EEE9AC00](v31);
    v90[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v90[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v32 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v6[36];
  aBlock = v21;
  v114 = v20;
  v115 = v106.n128_u64[0];
  v116 = v22;
  v117 = v29;
  v35 = sub_1CEFDADE0(&aBlock, *(v30 + 16), 2129920);
  if (v5)
  {
    v29, v36, v37, v38, v39, v40, v41, v42;

    swift_unknownObjectRelease();
    return;
  }

  v94 = v32;
  v95 = Strong;
  v91 = v29;
  v90[1] = 0;
  if ((v101 - 1) >= 2)
  {
    v43 = v106.n128_u32[0];
    v44 = v106.n128_u32[0];
    if (v106.n128_u32[0])
    {
      LODWORD(v101) = 0;
      if (v105)
      {
        v45 = v35;
        v106.n128_u64[0] = 0;
        v21 = v43;
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if ((v105 & 1) == 0)
  {
    LODWORD(v101) = 1;
    v44 = v21;
LABEL_12:
    v45 = v35;
    v106.n128_u64[0] = *(v30 + 24);
    v21 = v44;
    goto LABEL_14;
  }

  LODWORD(v101) = 1;
  v45 = v35;
  v106.n128_u64[0] = 0;
LABEL_14:
  os_unfair_lock_lock((v30 + 56));
  v46 = *(v30 + 64);
  v47 = *(v30 + 72);
  v48 = *(v30 + 88);
  v93 = *(v30 + 89);
  LODWORD(v92) = *(v30 + 90);

  v49 = *(v30 + 80);
  os_unfair_lock_unlock((v30 + 56));
  v90[2] = v90;
  MEMORY[0x1EEE9AC00](v50);
  v90[-10] = v94;
  LODWORD(v90[-9]) = v45;
  v94 = v30;
  v51 = v95;
  v90[-8] = v30;
  v90[-7] = v51;
  v90[-6] = v34;
  LOBYTE(v90[-5]) = 2;
  v90[-4] = v105;
  v90[-3] = v21;
  LOBYTE(v90[-2]) = v101;
  v90[-1] = 0;
  v117 = v46;
  v118 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v114 = 1107296256;
  v115 = sub_1CEFDB088;
  v116 = &block_descriptor_1498;
  v52 = _Block_copy(&aBlock);
  v105 = v47;

  v101 = v52;
  v108 = v52;
  v109 = v49;
  v110 = v48;
  v111 = v93;
  v112 = v92;
  v92 = sub_1CEFDB034();
  v53 = swift_allocError();
  *v54 = 6;
  *(v54 + 8) = 0u;
  *(v54 + 24) = 0u;
  *(v54 + 40) = 19;
  v55 = v103;
  *v103 = v53;
  swift_storeEnumTagMultiPayload();
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = sub_1CF2B9F90;
  v56[4] = &v90[-12];
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1CF1DBD3C;
  *(v57 + 24) = v56;
  v117 = sub_1CF1DBD5C;
  v118 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v114 = 1107296256;
  v115 = sub_1CEFDB270;
  v116 = &block_descriptor_1509;
  v58 = _Block_copy(&aBlock);

  v93 = v45;
  v59 = fpfs_fgetfileattrs_detailed();
  _Block_release(v58);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    goto LABEL_31;
  }

  if (v59)
  {
    swift_getErrorValue();
    v60 = v107;
    v61 = swift_allocError();
    *v62 = 6;
    *(v62 + 8) = 0u;
    *(v62 + 24) = 0u;
    *(v62 + 40) = 19;
    v63 = v59;
    v64 = sub_1CF199074(v61, v60);

    v65 = v96;
    *v96 = v64;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v65, v55, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v66 = v102;
  sub_1CEFCCBDC(v55, v102, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v71 = v98;
    sub_1CEFE55D0(v66, v98, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v55, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v101);

    v72 = v100;
    v70 = v91;
    goto LABEL_21;
  }

  aBlock = *v66;
  v67 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v55, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v101);

  v68 = v67;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v69 = sub_1CF9E5658();

  v70 = v91;
  if (v69)
  {

    v71 = v98;
    *v98 = xmmword_1CF9FD940;
    *(v71 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v72 = v100;
LABEL_21:
    if ((v93 & 0x80000000) == 0)
    {
      close(v93);
    }

    swift_unknownObjectRelease();
    v70, v73, v74, v75, v76, v77, v78, v79;

    sub_1CEFE55D0(v71, v72, &unk_1EC4BE2F0, qword_1CFA04220);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CEFCCC44(v72, &unk_1EC4BE2F0, qword_1CFA04220);
      v80 = 1;
      v81 = v97;
    }

    else
    {
      v81 = v97;
      sub_1CEFE4C60(v72, v97, type metadata accessor for VFSItem);
      v80 = 0;
    }

    v82 = type metadata accessor for VFSItem(0);
    (*(*(v82 - 8) + 56))(v81, v80, 1, v82);
    return;
  }

  if ((v93 & 0x80000000) == 0)
  {
    close(v93);
  }

  swift_unknownObjectRelease();
  v70, v83, v84, v85, v86, v87, v88, v89;
}

void sub_1CF263ADC(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v93 = a3;
  LODWORD(v86) = a2;
  v105 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v84 = (v80 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v80 - v15);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v92);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = (v80 - v20);
  v21 = qword_1EDEBBE70;
  swift_beginAccess();
  v22 = *(v6 + v21);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  v90 = v18;
  *(v6 + v21) = v24;
  v25 = objc_sync_enter(v6);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v80[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v80[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v88 = v9;
  v85 = v11;
  v26 = v6[20];

  v27 = objc_sync_exit(v6);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v80[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v80[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = v6[36];
  0, v30, v31, v32, v33, v34, v35, v36;
  aBlock = a1;
  v102 = 0u;
  v103 = 0u;
  v37 = sub_1CEFDADE0(&aBlock, *(v26 + 16), 2129920);
  v45 = v5;
  v89 = a4;
  if (!v5)
  {
    v87 = v37;
    *(&v103 + 1), v38, v39, v40, v41, v42, v43, v44;
    v80[2] = 0;
    if (v93)
    {
      v83 = 0;
    }

    else
    {
      v83 = *(v26 + 24);
    }

    os_unfair_lock_lock((v26 + 56));
    v51 = *(v26 + 64);
    v50 = *(v26 + 72);
    v82 = *(v26 + 88);
    v52 = *(v26 + 89);
    v81 = *(v26 + 90);

    v53 = *(v26 + 80);
    os_unfair_lock_unlock((v26 + 56));
    v80[1] = v80;
    MEMORY[0x1EEE9AC00](v54);
    v80[-10] = v28;
    LODWORD(v80[-9]) = v87;
    v55 = Strong;
    v80[-8] = v26;
    v80[-7] = v55;
    v80[-6] = v29;
    LOBYTE(v80[-5]) = v86;
    v80[-4] = v93;
    v80[-3] = 0;
    LOBYTE(v80[-2]) = -1;
    v80[-1] = 0;
    *(&v103 + 1) = v51;
    v104 = v50;
    aBlock = MEMORY[0x1E69E9820];
    *&v102 = 1107296256;
    *(&v102 + 1) = sub_1CEFDB088;
    *&v103 = &block_descriptor_1366;
    v56 = _Block_copy(&aBlock);
    v93 = v50;

    v96 = v56;
    v97 = v53;
    v98 = v82;
    v99 = v52;
    v100 = v81;
    v86 = sub_1CEFDB034();
    v57 = swift_allocError();
    *v58 = 6;
    *(v58 + 8) = 0u;
    *(v58 + 24) = 0u;
    *(v58 + 40) = 19;
    *v16 = v57;
    swift_storeEnumTagMultiPayload();
    v59 = swift_allocObject();
    v59[2] = v16;
    v59[3] = sub_1CF2B9F90;
    v59[4] = &v80[-12];
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1CF1DBD3C;
    *(v60 + 24) = v59;
    *(&v103 + 1) = sub_1CF1DBD5C;
    v104 = v60;
    aBlock = MEMORY[0x1E69E9820];
    *&v102 = 1107296256;
    *(&v102 + 1) = sub_1CEFDB270;
    *&v103 = &block_descriptor_1377;
    v61 = _Block_copy(&aBlock);

    v62 = fpfs_fgetfileattrs_detailed();
    _Block_release(v61);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if ((v61 & 1) == 0)
    {
      if (v62)
      {
        swift_getErrorValue();
        v63 = v95;
        v64 = swift_allocError();
        v86 = v59;
        v65 = v16;
        v66 = v56;
        v67 = v64;
        *v68 = 6;
        *(v68 + 8) = 0u;
        *(v68 + 24) = 0u;
        *(v68 + 40) = 19;
        v69 = v62;
        v70 = sub_1CF199074(v67, v63);

        v71 = v67;
        v56 = v66;
        v16 = v65;

        v72 = v84;
        *v84 = v70;
        swift_storeEnumTagMultiPayload();
        sub_1CEFDA9E0(v72, v65, &qword_1EC4BE000, &unk_1CFA006A0);
      }

      v73 = v85;
      sub_1CEFCCBDC(v16, v85, &qword_1EC4BE000, &unk_1CFA006A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        aBlock = *v73;
        v45 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v16, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v56);

        v74 = v45;
        LODWORD(aBlock) = sub_1CF9E52A8();
        sub_1CF196978();
        v75 = sub_1CF9E5658();

        if ((v75 & 1) == 0)
        {
          if ((v87 & 0x80000000) == 0)
          {
            close(v87);
          }

          goto LABEL_6;
        }

        v48 = v91;
        *v91 = xmmword_1CF9FD940;
        *(v48 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v49 = v89;
      }

      else
      {

        v48 = v91;
        sub_1CEFE55D0(v73, v91, &unk_1EC4BE2F0, qword_1CFA04220);
        sub_1CEFCCC44(v16, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v56);

        v49 = v89;
      }

      if ((v87 & 0x80000000) == 0)
      {
        close(v87);
      }

      swift_unknownObjectRelease();
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
  }

  *(&v103 + 1), v38, v39, v40, v41, v42, v43, v44;
LABEL_6:
  v46 = v45;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v47 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v47 & 1) == 0)
  {
    return;
  }

  v48 = v91;
  *v91 = xmmword_1CF9FD930;
  *(v48 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v49 = v89;
LABEL_22:
  v76 = v48;
  v77 = v90;
  sub_1CEFE55D0(v76, v90, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v77, &unk_1EC4BE2F0, qword_1CFA04220);
    v78 = 1;
  }

  else
  {
    sub_1CEFE4C60(v77, v49, type metadata accessor for VFSItem);
    v78 = 0;
  }

  v79 = type metadata accessor for VFSItem(0);
  (*(*(v79 - 8) + 56))(v49, v78, 1, v79);
}

void sub_1CF26452C(int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v9 = a5;
  v80 = a4;
  LODWORD(v74) = a3;
  v93 = *MEMORY[0x1E69E9840];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v75);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = (v67 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v79 = (v67 - v16);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v78);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v77 = (v67 - v20);
  v21 = qword_1EDEBBE70;
  swift_beginAccess();
  v22 = *(v8 + v21);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_26;
  }

  v76 = v18;
  *(v8 + v21) = v24;
  v25 = objc_sync_enter(v8);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v67[-2] = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v67[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v73 = v12;
  v72 = v7;
  v26 = v8[20];

  v27 = objc_sync_exit(v8);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v67[-2] = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v67[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = v8[36];
  fpfs_openflags(v9);
  sub_1CF9E6978();
  v30 = openat_s();

  v82 = v30;
  if (v30 < 0)
  {
    v32 = MEMORY[0x1D38683F0](v31);
    v91 = 0;
    aBlock = 0u;
    v90 = 0u;
    LOBYTE(v92) = 19;
    v33 = sub_1CF19BBE4(v32, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    goto LABEL_18;
  }

  v68 = a6;
  if (v80)
  {
    v70 = 0;
  }

  else
  {
    v70 = *(v26 + 24);
  }

  os_unfair_lock_lock((v26 + 56));
  v34 = *(v26 + 64);
  v35 = *(v26 + 72);
  v69 = *(v26 + 88);
  v36 = *(v26 + 89);
  v37 = *(v26 + 90);

  v38 = *(v26 + 80);
  os_unfair_lock_unlock((v26 + 56));
  v67[1] = v67;
  MEMORY[0x1EEE9AC00](v39);
  v67[-10] = v28;
  LODWORD(v67[-9]) = v82;
  v40 = Strong;
  v67[-8] = v26;
  v67[-7] = v40;
  v67[-6] = v29;
  LOBYTE(v67[-5]) = v74;
  v67[-4] = v80;
  v67[-3] = 0;
  LOBYTE(v67[-2]) = -1;
  v67[-1] = 0;
  v91 = v34;
  v92 = v35;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v90 = sub_1CEFDB088;
  *(&v90 + 1) = &block_descriptor_1349;
  v41 = _Block_copy(&aBlock);
  v80 = v35;

  v74 = v41;
  v84 = v41;
  v85 = v38;
  v86 = v69;
  v87 = v36;
  v88 = v37;
  sub_1CEFDB034();
  v42 = swift_allocError();
  *v43 = 6;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  *(v43 + 40) = 19;
  v44 = v79;
  *v79 = v42;
  swift_storeEnumTagMultiPayload();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = sub_1CF2B9F90;
  v45[4] = &v67[-12];
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1CF1DBD3C;
  *(v46 + 24) = v45;
  v91 = sub_1CF1DBD5C;
  v92 = v46;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v90 = sub_1CEFDB270;
  *(&v90 + 1) = &block_descriptor_1360;
  v47 = _Block_copy(&aBlock);

  v48 = fpfs_fgetfileattrs_detailed();
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_26:
    __break(1u);
  }

  if (v48)
  {
    swift_getErrorValue();
    v49 = v83;
    v50 = swift_allocError();
    *v51 = 6;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 19;
    v52 = v48;
    v53 = sub_1CF199074(v50, v49);

    v54 = v71;
    *v71 = v53;
    v44 = v79;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v54, v44, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v55 = v73;
  sub_1CEFCCBDC(v44, v73, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a6 = v68;
  if (EnumCaseMultiPayload != 1)
  {

    v60 = v55;
    v59 = v77;
    sub_1CEFE55D0(v60, v77, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v44, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v74);

    goto LABEL_16;
  }

  *&aBlock = *v55;
  v33 = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v44, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v74);

  v57 = v33;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v58 = sub_1CF9E5658();

  if (v58)
  {

    v59 = v77;
    *v77 = xmmword_1CF9FD940;
    *(v59 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_16:
    close(v82);

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  close(v82);
LABEL_18:
  v61 = v33;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v62 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v62 & 1) == 0)
  {
    return;
  }

  v59 = v77;
  *v77 = xmmword_1CF9FD930;
  *(v59 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v63 = v59;
  v64 = v76;
  sub_1CEFE55D0(v63, v76, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BE2F0, qword_1CFA04220);
    v65 = 1;
  }

  else
  {
    sub_1CEFE4C60(v64, a6, type metadata accessor for VFSItem);
    v65 = 0;
  }

  v66 = type metadata accessor for VFSItem(0);
  (*(*(v66 - 8) + 56))(a6, v65, 1, v66);
}

void sub_1CF264F9C(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v7 = a3;
  v96 = a2;
  LODWORD(v89) = a1;
  v108 = *MEMORY[0x1E69E9840];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v90);
  v88 = (v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v82 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v94 = (v82 - v14);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v93);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = (v82 - v18);
  sub_1CF9E5A18();
  v20 = v19;
  v21 = qword_1EDEBBE70;
  swift_beginAccess();
  v22 = *(v6 + v21);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_26;
  }

  v91 = v16;
  *(v6 + v21) = v24;
  v25 = objc_sync_enter(v6);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v82[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v82[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v86 = v12;
  v87 = v5;
  v26 = v6[20];

  v27 = objc_sync_exit(v6);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v82[-2] = v6;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v82[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = v6[36];
  fpfs_openflags(v7);
  sub_1CF9E6978();
  v30 = openat_s();

  v95 = v30;
  if (v30 < 0)
  {
    v39 = MEMORY[0x1D38683F0](v31);
    v106 = 0;
    aBlock = 0u;
    v105 = 0u;
    LOBYTE(v107) = 19;
    v40 = sub_1CF19BBE4(v39, &aBlock);
    sub_1CF1969CC(&aBlock);
    swift_willThrow();
    v20, v41, v42, v43, v44, v45, v46, v47;
    goto LABEL_18;
  }

  v20, v32, v33, v34, v35, v36, v37, v38;
  v83 = a4;
  if (v96)
  {
    v85 = 0;
  }

  else
  {
    v85 = *(v26 + 24);
  }

  os_unfair_lock_lock((v26 + 56));
  v49 = *(v26 + 64);
  v48 = *(v26 + 72);
  v50 = *(v26 + 88);
  v51 = *(v26 + 89);
  v84 = *(v26 + 90);

  v52 = *(v26 + 80);
  os_unfair_lock_unlock((v26 + 56));
  v82[1] = v82;
  MEMORY[0x1EEE9AC00](v53);
  v82[-10] = v28;
  LODWORD(v82[-9]) = v95;
  v54 = Strong;
  v82[-8] = v26;
  v82[-7] = v54;
  v82[-6] = v29;
  LOBYTE(v82[-5]) = v89;
  v82[-4] = v96;
  v82[-3] = 0;
  LOBYTE(v82[-2]) = -1;
  v82[-1] = 0;
  v106 = v49;
  v107 = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v105 = sub_1CEFDB088;
  *(&v105 + 1) = &block_descriptor_1332;
  v55 = _Block_copy(&aBlock);
  v96 = v48;

  v89 = v55;
  v99 = v55;
  v100 = v52;
  v101 = v50;
  v102 = v51;
  v103 = v84;
  sub_1CEFDB034();
  v56 = swift_allocError();
  *v57 = 6;
  *(v57 + 8) = 0u;
  *(v57 + 24) = 0u;
  *(v57 + 40) = 19;
  v58 = v94;
  *v94 = v56;
  swift_storeEnumTagMultiPayload();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = sub_1CF2B9F90;
  v59[4] = &v82[-12];
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1CF1DBD3C;
  *(v60 + 24) = v59;
  v106 = sub_1CF1DBD5C;
  v107 = v60;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v105 = sub_1CEFDB270;
  *(&v105 + 1) = &block_descriptor_1343;
  v61 = _Block_copy(&aBlock);

  v62 = fpfs_fgetfileattrs_detailed();
  _Block_release(v61);
  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

  if (v61)
  {
LABEL_26:
    __break(1u);
  }

  if (v62)
  {
    swift_getErrorValue();
    v63 = v98;
    v64 = swift_allocError();
    *v65 = 6;
    *(v65 + 8) = 0u;
    *(v65 + 24) = 0u;
    *(v65 + 40) = 19;
    v66 = v62;
    v67 = sub_1CF199074(v64, v63);
    v58 = v94;
    v68 = v67;

    v69 = v86;
    *v86 = v68;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v69, v58, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v70 = v88;
  sub_1CEFCCBDC(v58, v88, &qword_1EC4BE000, &unk_1CFA006A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a4 = v83;
  if (EnumCaseMultiPayload != 1)
  {

    v75 = v70;
    v74 = v92;
    sub_1CEFE55D0(v75, v92, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v58, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v89);

    goto LABEL_16;
  }

  v40 = *v70;
  *&aBlock = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v58, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v89);

  v72 = v40;
  LODWORD(aBlock) = sub_1CF9E52A8();
  sub_1CF196978();
  v73 = sub_1CF9E5658();

  if (v73)
  {

    v74 = v92;
    *v92 = xmmword_1CF9FD940;
    *(v74 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_16:
    close(v95);

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  close(v95);
LABEL_18:
  v76 = v40;
  LODWORD(aBlock) = sub_1CF9E5328();
  sub_1CF196978();
  v77 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v77 & 1) == 0)
  {
    return;
  }

  v74 = v92;
  *v92 = xmmword_1CF9FD930;
  *(v74 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v78 = v74;
  v79 = v91;
  sub_1CEFE55D0(v78, v91, &unk_1EC4BE2F0, qword_1CFA04220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE2F0, qword_1CFA04220);
    v80 = 1;
  }

  else
  {
    sub_1CEFE4C60(v79, a4, type metadata accessor for VFSItem);
    v80 = 0;
  }

  v81 = type metadata accessor for VFSItem(0);
  (*(*(v81 - 8) + 56))(a4, v80, 1, v81);
}

void *sub_1CF265A2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = (*(a2 + 64))(&v11, a1, a2);
  if (v12)
  {
    v7 = 0;
    v8 = -1;
  }

  else
  {
    (*(a2 + 112))(v9, a1, a2);
    v10[2] = v9[2];
    v10[3] = v9[3];
    v10[4] = v9[4];
    v10[5] = v9[5];
    v10[0] = v9[0];
    v10[1] = v9[1];
    result = sub_1CEFCCC44(v10, &unk_1EC4BE330, &unk_1CF9FF010);
    v7 = *&v10[0];
    v8 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  return result;
}

void sub_1CF265B04(uint64_t a1, unint64_t a2, char a3, void (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  v41 = a4;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(v6 + 216);
  *v15 = v18;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v19 = v18;
  LOBYTE(v18) = sub_1CF9E64D8();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    if (!sub_1CF9E7818())
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v41(0, 0);
    return;
  }

LABEL_4:
  if (a3)
  {
    goto LABEL_17;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (*(v6 + 184))
  {
    v21 = sub_1CF9E6888();
    [v20 setPurposeIdentifier_];
  }

  swift_beginAccess();
  v22 = v20;
  sub_1CF6E96F4(v42, v22);
  swift_endAccess();

  if (v17 != 255)
  {
    swift_beginAccess();
    if (*(*(v6 + 200) + 16) && (sub_1CF7BF2C0(v16, v17), (v23 & 1) != 0))
    {
      v24 = sub_1CF25CE44(aBlock);
      v25 = sub_1CF598538(v42, v16, v17);
      if (*v26)
      {
        sub_1CF6E96F4(&v43, v22);
      }

      (v25)(v42, 0);
      (v24)(aBlock, 0);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = v22;
      v28 = v22;
      sub_1CF6F3CF4(inited);
      v30 = v29;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = *(v6 + 200);
      *(v6 + 200) = 0x8000000000000000;
      sub_1CF1D20C8(v30, v16, v17, isUniquelyReferenced_nonNull_native);
      *(v6 + 200) = v42[0];
      swift_endAccess();
    }
  }

  v32 = fpfs_current_log();
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v33 = sub_1CF9E6D28();
  v34 = *(v6 + 208);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v6;
  *(v35 + 32) = v22;
  *(v35 + 40) = v16;
  *(v35 + 48) = v17;
  *(v35 + 56) = v41;
  *(v35 + 64) = a5;
  aBlock[4] = sub_1CF2BA138;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_1326;
  v36 = _Block_copy(aBlock);
  v37 = v22;
  v38 = v34;
  v39 = v32;

  [v37 coordinateAccessWithIntents:v33 queue:v38 byAccessor:v36];
  _Block_release(v36);
}